@interface FCRecordFieldURLProtocol
+ (BOOL)canHandleURL:(id)l;
+ (BOOL)canHandleURLWithComponents:(id)components;
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
+ (id)URLForRecordID:(id)d fieldName:(id)name;
+ (void)setupWithArticleDatabase:(id)database;
+ (void)unregister;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation FCRecordFieldURLProtocol

+ (void)setupWithArticleDatabase:(id)database
{
  v18 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record field URL protocol requires a non-nil database"];
    v10 = 136315906;
    v11 = "+[FCRecordFieldURLProtocol setupWithArticleDatabase:]";
    v12 = 2080;
    v13 = "FCRecordFieldURLProtocol.m";
    v14 = 1024;
    v15 = 36;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&s_database);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = NSClassFromString(&cfstr_Xctest.isa);

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record field URL protocol has already been setup"];
      v10 = 136315906;
      v11 = "+[FCRecordFieldURLProtocol setupWithArticleDatabase:]";
      v12 = 2080;
      v13 = "FCRecordFieldURLProtocol.m";
      v14 = 1024;
      v15 = 37;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
    }
  }

  objc_storeWeak(&s_database, databaseCopy);
  [MEMORY[0x1E695AC60] registerClass:self];
}

+ (void)unregister
{
  WeakRetained = objc_loadWeakRetained(&s_database);

  if (WeakRetained)
  {
    objc_storeWeak(&s_database, 0);
    v4 = MEMORY[0x1E695AC60];

    [v4 unregisterClass:self];
  }
}

+ (id)URLForRecordID:(id)d fieldName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&s_database);
  if (WeakRetained)
  {
  }

  else if (!NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't construct a URL without a database"];
    v14 = 136315906;
    v15 = "+[FCRecordFieldURLProtocol URLForRecordID:fieldName:]";
    v16 = 2080;
    v17 = "FCRecordFieldURLProtocol.m";
    v18 = 1024;
    v19 = 56;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v14, 0x26u);
  }

  v8 = objc_loadWeakRetained(&s_database);

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v9 setScheme:@"https"];
    [v9 setHost:@"news-record"];
    v10 = [@"/" stringByAppendingString:dCopy];
    v11 = [v10 stringByAppendingPathComponent:nameCopy];
    [v9 setPath:v11];

    v8 = [v9 URL];
  }

  return v8;
}

+ (BOOL)canHandleURL:(id)l
{
  host = [l host];
  v4 = [host isEqualToString:@"news-record"];

  return v4;
}

+ (BOOL)canHandleURLWithComponents:(id)components
{
  host = [components host];
  v4 = [host isEqualToString:@"news-record"];

  return v4;
}

+ (BOOL)canInitWithRequest:(id)request
{
  v4 = [request URL];
  LOBYTE(self) = [self canHandleURL:v4];

  return self;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  requestCopy = request;
  v6 = [equivalent URL];
  v7 = [requestCopy URL];

  LOBYTE(requestCopy) = [v6 isEqual:v7];
  return requestCopy;
}

- (void)startLoading
{
  v34[1] = *MEMORY[0x1E69E9840];
  fetchOperation = [(FCRecordFieldURLProtocol *)self fetchOperation];

  if (fetchOperation && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have a fetch operation yet"];
    *buf = 136315906;
    *&buf[4] = "[FCRecordFieldURLProtocol startLoading]";
    *&buf[12] = 2080;
    *&buf[14] = "FCRecordFieldURLProtocol.m";
    *&buf[22] = 1024;
    LODWORD(v31) = 99;
    WORD2(v31) = 2114;
    *(&v31 + 6) = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  request = [(NSURLProtocol *)self request];
  v5 = [request URL];

  pathComponents = [v5 pathComponents];
  if ([pathComponents count] <= 2)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke;
    v29[3] = &unk_1E7C36EA0;
    v29[4] = self;
    __40__FCRecordFieldURLProtocol_startLoading__block_invoke(v29);
  }

  else
  {
    pathComponents2 = [v5 pathComponents];
    v8 = [pathComponents2 objectAtIndexedSubscript:1];

    v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v8];
    pathComponents3 = [v5 pathComponents];
    v11 = [pathComponents3 objectAtIndexedSubscript:2];

    v12 = objc_alloc_init(FCCKContentFetchOperation);
    WeakRetained = objc_loadWeakRetained(&s_database);
    [(FCCKContentFetchOperation *)v12 setDatabase:?];

    v34[0] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v14, v15, 384);
    }

    v33 = v11;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v16, v17, 400);
    }

    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v31 = __Block_byref_object_copy__31;
    *(&v31 + 1) = __Block_byref_object_dispose__31;
    v32 = 0;
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_34;
    newValue[3] = &unk_1E7C39CA8;
    newValue[4] = buf;
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v18, newValue, 416);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_2;
    v22[3] = &unk_1E7C3F610;
    objc_copyWeak(&v26, &location);
    v25 = buf;
    v19 = v11;
    v23 = v19;
    v24 = v5;
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v20, v22, 424);
    }

    [(FCRecordFieldURLProtocol *)self setFetchOperation:v12];
    [(FCOperation *)v12 start];

    objc_destroyWeak(&v26);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
  }
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol has invalid path."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [v6 fetchOperation];
    v8 = [v7 isCancelled];

    if ((v8 & 1) == 0)
    {
      if (v3)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_5;
        v38[3] = &unk_1E7C36C58;
        v39 = v6;
        v40 = v3;
        __40__FCRecordFieldURLProtocol_startLoading__block_invoke_5(v38);

        v9 = v39;
      }

      else
      {
        v10 = *(*(*(a1 + 48) + 8) + 40);
        if (v10)
        {
          v9 = v10;
          v11 = [v9 objectForKeyedSubscript:*(a1 + 32)];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [MEMORY[0x1E696AF20] componentsWithString:v13];
              if (v14)
              {
                v15 = v14;
                v16 = objc_loadWeakRetained(&s_database);
                v17 = [v16 shouldUseSecureConnectionForCKAssetURLs];

                if (v17)
                {
                  [v15 setScheme:@"https"];
                }

                v18 = objc_loadWeakRetained(&s_database);
                [v18 updateAssetURLHostIfNeededWithComponents:v15];

                v19 = [v15 URL];
                if (v19)
                {
                  v20 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:v19];
                  v21 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:v19 MIMEType:0 expectedContentLength:0 textEncodingName:0];
                  [v6 client];
                  v22 = v29 = v19;
                  [v22 URLProtocol:v6 wasRedirectedToRequest:v20 redirectResponse:v21];

                  v19 = v29;
                }

                else
                {
                  v30[0] = MEMORY[0x1E69E9820];
                  v30[1] = 3221225472;
                  v30[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_9;
                  v30[3] = &unk_1E7C36EA0;
                  v31 = v6;
                  __40__FCRecordFieldURLProtocol_startLoading__block_invoke_9(v30);
                }
              }

              else
              {
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v32[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_8;
                v32[3] = &unk_1E7C36EA0;
                v33 = v6;
                __40__FCRecordFieldURLProtocol_startLoading__block_invoke_8(v32);
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v13;
                if ([v23 fc_isGzipped])
                {
                  v24 = [v23 fc_gzipInflate];

                  v23 = v24;
                }

                v25 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:*(a1 + 40) MIMEType:@"application/octet-stream" expectedContentLength:objc_msgSend(v23 textEncodingName:{"length"), 0}];
                v26 = [v6 client];
                [v26 URLProtocol:v6 didReceiveResponse:v25 cacheStoragePolicy:2];

                v27 = [v6 client];
                [v27 URLProtocol:v6 didLoadData:v23];

                v28 = [v6 client];
                [v28 URLProtocolDidFinishLoading:v6];
              }
            }
          }

          else
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_7;
            v34[3] = &unk_1E7C36EA0;
            v35 = v6;
            __40__FCRecordFieldURLProtocol_startLoading__block_invoke_7(v34);
            v13 = v35;
          }
        }

        else
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_6;
          v36[3] = &unk_1E7C36EA0;
          v37 = v6;
          __40__FCRecordFieldURLProtocol_startLoading__block_invoke_6(v36);

          v9 = 0;
        }
      }
    }
  }
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_6(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing requested record."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_7(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing requested field."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_8(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing valid URL components."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_9(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing valid URL."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

- (void)stopLoading
{
  fetchOperation = [(FCRecordFieldURLProtocol *)self fetchOperation];
  isFinished = [fetchOperation isFinished];

  if ((isFinished & 1) == 0)
  {
    fetchOperation2 = [(FCRecordFieldURLProtocol *)self fetchOperation];
    [fetchOperation2 cancel];
  }
}

@end