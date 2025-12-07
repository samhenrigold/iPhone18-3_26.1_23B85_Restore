@interface SSPurchaseIntentActionRequest
- (SSPurchaseIntentActionRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSPurchaseIntentActionRequest

- (void)startWithCompletionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v5) && _os_feature_enabled_impl())
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v21 = 136446210;
      v22 = "[SSPurchaseIntentActionRequest startWithCompletionBlock:]";

      if (!v11)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__SSPurchaseIntentActionRequest_startWithCompletionBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:198 messageBlock:v19];
}

void __58__SSPurchaseIntentActionRequest_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "1");
      v7 = [v5 initWithXPCEncoding:v6];
    }

    v8 = dispatch_get_global_queue(0, 0);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __58__SSPurchaseIntentActionRequest_startWithCompletionBlock___block_invoke_2;
    v14 = &unk_1E84AC338;
    v9 = *(a1 + 40);
    v15 = v7;
    v16 = v9;
    v10 = v7;
    dispatch_async(v8, &v11);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SSPurchaseIntentActionRequest_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

void __48__SSPurchaseIntentActionRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "appBundleId", *(*(a1 + 40) + 96));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 104);

  xpc_dictionary_set_int64(v2, "action", v3);
}

- (SSPurchaseIntentActionRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v11.receiver = self;
    v11.super_class = SSPurchaseIntentActionRequest;
    v6 = [(SSRequest *)&v11 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "appBundleId", v8);
      appBundleId = v6->_appBundleId;
      v6->_appBundleId = v9;

      v6->_action = xpc_dictionary_get_int64(v5, "action");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end