@interface AMSUIContentImageFetchOperation
- (AMSUIContentImageFetchOperation)initWithURL:(id)l;
- (void)_fallbackWithURL:(id)l;
- (void)main;
@end

@implementation AMSUIContentImageFetchOperation

- (AMSUIContentImageFetchOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = AMSUIContentImageFetchOperation;
  v6 = [(AMSUIContentImageFetchOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageURL, l);
  }

  return v7;
}

- (void)main
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc(MEMORY[0x1E696AF20]);
  imageURL = [(AMSUIContentImageFetchOperation *)self imageURL];
  v6 = [v4 initWithURL:imageURL resolvingAgainstBaseURL:0];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  queryItems = [v6 queryItems];
  v8 = [queryItems countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(queryItems);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        value = [v12 value];
        if (value)
        {
          name = [v12 name];
          [v3 setObject:value forKey:name];
        }
      }

      v9 = [queryItems countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v9);
  }

  v15 = [v3 objectForKey:@"fallbackURL"];
  stringByRemovingPercentEncoding = [v15 stringByRemovingPercentEncoding];

  if (stringByRemovingPercentEncoding)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:stringByRemovingPercentEncoding];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v3 objectForKey:@"app"];
  if (v18)
  {
    v19 = [v3 objectForKey:@"cacheKey"];
    if (v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E698C8D8]);
      v21 = [v3 objectForKey:@"version"];
      v22 = [v20 contentInfoForApp:v18 cacheKey:v19 version:v21];

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __39__AMSUIContentImageFetchOperation_main__block_invoke;
      v38[3] = &unk_1E7F24990;
      v38[4] = self;
      v23 = v17;
      v39 = v23;
      [v22 addErrorBlock:v38];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __39__AMSUIContentImageFetchOperation_main__block_invoke_15;
      v36[3] = &unk_1E7F249D8;
      v36[4] = self;
      v37 = v23;
      [v22 addSuccessBlock:v36];
    }

    else
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v33 = v31;
        AMSLogKey();
        v32 = v35 = v6;
        *buf = 138543618;
        v45 = v31;
        v46 = 2114;
        v47 = v32;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Missing content cache key", buf, 0x16u);

        v6 = v35;
      }

      [(AMSUIContentImageFetchOperation *)self _fallbackWithURL:v17];
    }
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v34 = v6;
      v27 = v26;
      v28 = AMSLogKey();
      *buf = 138543618;
      v45 = v26;
      v46 = 2114;
      v47 = v28;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Missing application identifier", buf, 0x16u);

      v6 = v34;
    }

    [(AMSUIContentImageFetchOperation *)self _fallbackWithURL:v17];
  }
}

void __39__AMSUIContentImageFetchOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get content info: %{public}@", &v9, 0x20u);
  }

  [*(a1 + 32) _fallbackWithURL:*(a1 + 40)];
}

void __39__AMSUIContentImageFetchOperation_main__block_invoke_15(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = [v3 allKeys];
    v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_4];
    v6 = [v5 lastObject];

    v7 = [v3 objectForKey:v6];
    v8 = [v7 path];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:v8];
      if (v9)
      {
        v10 = v9;
        [*(a1 + 32) _finishWithImage:v9 error:0];

LABEL_11:
        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v11)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = AMSLogKey();
        v16 = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = v15;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load image: %{public}@", &v16, 0x20u);
      }
    }

    [*(a1 + 32) _fallbackWithURL:*(a1 + 40)];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_fallbackWithURL:(id)l
{
  lCopy = l;
  fallbackBlock = [(AMSUIContentImageFetchOperation *)self fallbackBlock];
  v6 = fallbackBlock;
  if (lCopy && fallbackBlock && ((*(fallbackBlock + 16))(fallbackBlock, lCopy), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__AMSUIContentImageFetchOperation__fallbackWithURL___block_invoke;
    v9[3] = &unk_1E7F24A00;
    v9[4] = self;
    [v7 addFinishBlock:v9];
  }

  else
  {
    v8 = AMSError();
    [(AMSUIAssetFetchOperation *)self _finishWithImage:0 error:v8];
  }
}

@end