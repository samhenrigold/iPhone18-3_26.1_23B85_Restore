@interface SSVClaimApplicationsRequest
- (SSVClaimApplicationsRequest)initWithClaimStyle:(int64_t)style;
- (SSVClaimApplicationsRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVClaimApplicationsRequest

- (SSVClaimApplicationsRequest)initWithClaimStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = SSVClaimApplicationsRequest;
  result = [(SSRequest *)&v5 init];
  if (result)
  {
    result->_claimStyle = style;
  }

  return result;
}

- (void)startWithResponseBlock:(id)block
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
      v22 = "[SSVClaimApplicationsRequest startWithResponseBlock:]";

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
  v19[2] = __54__SSVClaimApplicationsRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:138 messageBlock:v19];
}

void __54__SSVClaimApplicationsRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v9 = SSError(@"SSErrorDomain", 121, 0, 0);
      v6 = 0;
      v10 = 0;
    }

    else
    {
      v5 = objc_opt_class();
      v6 = SSXPCDictionaryCopyCFObjectWithClass(v4, "3", v5);
      v7 = objc_alloc(MEMORY[0x1E696ABC0]);
      v8 = xpc_dictionary_get_value(v4, "2");
      v9 = [v7 initWithXPCEncoding:v8];

      v10 = xpc_dictionary_get_BOOL(v4, "1");
      if (v10)
      {
LABEL_8:
        v11 = dispatch_get_global_queue(0, 0);
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __54__SSVClaimApplicationsRequest_startWithResponseBlock___block_invoke_2;
        v18 = &unk_1E84AD020;
        v12 = *(a1 + 40);
        v20 = v9;
        v21 = v12;
        v22 = v10;
        v19 = v6;
        v13 = v9;
        v14 = v6;
        dispatch_async(v11, &v15);

        goto LABEL_9;
      }
    }

    if (!v9)
    {
      v9 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    goto LABEL_8;
  }

LABEL_9:
  [*(a1 + 32) _shutdownRequest];
}

- (SSVClaimApplicationsRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSVClaimApplicationsRequest;
    v6 = [(SSRequest *)&v8 init];
    if (v6)
    {
      v6->_claimStyle = xpc_dictionary_get_int64(v5, "0");
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
  xpc_dictionary_set_int64(v3, "0", self->_claimStyle);
  return v3;
}

@end