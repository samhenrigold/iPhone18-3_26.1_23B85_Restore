@interface SSVApplicationCapabilitiesRequest
- (SSVApplicationCapabilitiesRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCapabilitiesResponseBlock:(id)block;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSVApplicationCapabilitiesRequest

- (void)startWithCapabilitiesResponseBlock:(id)block
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
      v22 = "[SSVApplicationCapabilitiesRequest startWithCapabilitiesResponseBlock:]";

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
  v19[2] = __72__SSVApplicationCapabilitiesRequest_startWithCapabilitiesResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:164 messageBlock:v19];
}

void __72__SSVApplicationCapabilitiesRequest_startWithCapabilitiesResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v7 = xpc_dictionary_get_BOOL(v4, "1");
        v6 = 0;
        if (v7)
        {
LABEL_10:
          v8 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __72__SSVApplicationCapabilitiesRequest_startWithCapabilitiesResponseBlock___block_invoke_2;
          block[3] = &unk_1E84B08A8;
          v9 = *(a1 + 40);
          v14 = v7;
          v12 = v6;
          v13 = v9;
          v10 = v6;
          dispatch_async(v8, block);

          goto LABEL_11;
        }

LABEL_8:
        if (!v6)
        {
          v6 = SSError(@"SSErrorDomain", 100, 0, 0);
        }

        goto LABEL_10;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _shutdownRequest];
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SSVApplicationCapabilitiesRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84AEC60;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVApplicationCapabilitiesRequest *)self startWithCapabilitiesResponseBlock:v6];
}

uint64_t __62__SSVApplicationCapabilitiesRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSVApplicationCapabilitiesRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v11.receiver = self;
    v11.super_class = SSVApplicationCapabilitiesRequest;
    v6 = [(SSRequest *)&v11 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      bundleID = v6->_bundleID;
      v6->_bundleID = v9;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_bundleID);
  return v3;
}

@end