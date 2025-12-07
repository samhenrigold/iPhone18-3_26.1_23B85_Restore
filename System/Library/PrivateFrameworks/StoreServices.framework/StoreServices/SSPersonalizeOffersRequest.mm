@interface SSPersonalizeOffersRequest
- (BOOL)start;
- (NSArray)items;
- (SSPersonalizeOffersRequest)initWithItems:(id)items;
- (SSPersonalizeOffersRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithPersonalizedResponseBlock:(id)block;
@end

@implementation SSPersonalizeOffersRequest

- (SSPersonalizeOffersRequest)initWithItems:(id)items
{
  v6.receiver = self;
  v6.super_class = SSPersonalizeOffersRequest;
  v4 = [(SSRequest *)&v6 init];
  if (v4)
  {
    v4->_items = [items copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPersonalizeOffersRequest;
  [(SSRequest *)&v3 dealloc];
}

- (NSArray)items
{
  v2 = self->_items;

  return v2;
}

- (void)startWithPersonalizedResponseBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v20 = 136446210;
      v21 = "[SSPersonalizeOffersRequest startWithPersonalizedResponseBlock:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__SSPersonalizeOffersRequest_startWithPersonalizedResponseBlock___block_invoke;
  v19[3] = &unk_1E84AC760;
  v19[4] = self;
  v19[5] = block;
  [(SSRequest *)self _startWithMessageID:55 messageBlock:v19];
}

uint64_t __65__SSPersonalizeOffersRequest_startWithPersonalizedResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v6 = 121;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      v5 = [[SSPersonalizeOffersResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
      if (v5 | v4)
      {
        v7 = v5;
        if (v5)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v26 = v2;
          v9 = *(*(v2 + 32) + 96);
          v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v29;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v28 + 1) + 8 * i);
                v15 = [objc_msgSend(v14 "ITunesStoreIdentifier")];
                if (v15 && (v16 = [v7 actionParametersForItemIdentifier:v15]) != 0)
                {
                  v17 = v16;
                  v18 = -[SSItem initWithItemDictionary:]([SSItem alloc], "initWithItemDictionary:", [v14 rawItemDictionary]);
                  v19 = [(SSItem *)v18 defaultItemOffer];
                  [(SSItemOffer *)v19 setBuyParameters:v17];
                  v20 = [(SSItem *)v18 itemKind];
                  v21 = [v7 priceDisplayForItemType:v20];
                  if (v21)
                  {
                    [(SSItemOffer *)v19 setPriceDisplay:v21];
                  }

                  v22 = [v7 actionDisplayNameForItemType:v20];
                  [(SSItemOffer *)v19 setActionDisplayName:v22];
                  [(SSItemOffer *)v19 setOneTapOffer:v22 == 0];
                  [v8 addObject:v18];
                }

                else
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v11);
          }

          [v7 _setPersonalizedItems:v8];

          v2 = v26;
        }

        goto LABEL_22;
      }

      v6 = 100;
    }

    v4 = SSError(@"SSErrorDomain", v6, 0, 0);
    v7 = 0;
LABEL_22:
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SSPersonalizeOffersRequest_startWithPersonalizedResponseBlock___block_invoke_2;
    block[3] = &unk_1E84AD618;
    v24 = *(v2 + 40);
    block[5] = v4;
    block[6] = v24;
    block[4] = v7;
    dispatch_async(global_queue, block);
  }

  return [*(v2 + 32) _shutdownRequest];
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SSPersonalizeOffersRequest_start__block_invoke;
  v3[3] = &unk_1E84B0B98;
  v3[4] = self;
  [(SSPersonalizeOffersRequest *)self startWithPersonalizedResponseBlock:v3];
  return 1;
}

void __35__SSPersonalizeOffersRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSPersonalizeOffersRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __35__SSPersonalizeOffersRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 personalizeOffersRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(a1 + 32);

      return [v2 requestDidFinish:v4];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v2 request:v5 didFailWithError:v6];
    }
  }

  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__SSPersonalizeOffersRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84B0BC0;
  v3[4] = block;
  [(SSPersonalizeOffersRequest *)self startWithPersonalizedResponseBlock:v3];
}

uint64_t __55__SSPersonalizeOffersRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSPersonalizeOffersRequest)initWithXPCEncoding:(id)encoding
{
  v22 = *MEMORY[0x1E69E9840];
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v5 = [(SSRequest *)self init];
    if (v5)
    {
      v7 = objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "50", v7);
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [(__CFDate *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v17 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[SSItem alloc] initWithItemDictionary:v14];
              if (v15)
              {
                v16 = v15;
                [v9 addObject:v15];
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [(__CFDate *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      v5->_items = [v9 copy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = self->_items;
  v6 = [(NSArray *)items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(items);
        }

        rawItemDictionary = [*(*(&v12 + 1) + 8 * v9) rawItemDictionary];
        if (rawItemDictionary)
        {
          [(__CFString *)v4 addObject:rawItemDictionary];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)items countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  SSXPCDictionarySetCFObject(v3, "50", v4);

  return v3;
}

@end