@interface SSVCloudServiceCapabilitiesRequest
- (SSVCloudServiceCapabilitiesRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVCloudServiceCapabilitiesRequest

- (void)startWithResponseBlock:(id)block
{
  v44 = *MEMORY[0x1E69E9840];
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
      v38 = 136446210;
      v39 = "[SSVCloudServiceCapabilitiesRequest startWithResponseBlock:]";

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
  v18 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    LODWORD(v20) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v20) = shouldLog2;
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v20 = v20;
  }

  else
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_27;
  }

  v22 = objc_opt_class();
  v23 = *(&self->super._usesTaskCompletionAssertions + 1);
  v24 = MEMORY[0x1E696AF00];
  v25 = v22;
  callStackSymbols = [v24 callStackSymbols];
  v38 = 138543874;
  v39 = v22;
  v40 = 1024;
  v41 = v23;
  v42 = 2114;
  v43 = callStackSymbols;
  LODWORD(v35) = 28;
  v27 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 1, "%{public}@: Calling for capabilities. Allows privacy acknowledgement prompt: %{BOOL}d. callStack = %{public}@", &v38, v35);

  if (v27)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:4];
    free(v27);
    SSFileLog(v18, @"%@", v28, v29, v30, v31, v32, v33, oSLogObject2);
LABEL_27:
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __61__SSVCloudServiceCapabilitiesRequest_startWithResponseBlock___block_invoke;
  v36[3] = &unk_1E84ABEF0;
  v36[4] = self;
  v37 = blockCopy;
  v34 = blockCopy;
  [(SSRequest *)self _startWithMessageID:175 messageBlock:v36];
}

void __61__SSVCloudServiceCapabilitiesRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
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
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = xpc_dictionary_get_value(v4, "2");
        v6 = [v12 initWithXPCEncoding:v13];

        v14 = [SSVCloudServiceCapabilitiesResponse alloc];
        v15 = xpc_dictionary_get_value(v4, "3");
        v7 = [(SSVCloudServiceCapabilitiesResponse *)v14 initWithXPCEncoding:v15];

        goto LABEL_8;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
LABEL_8:
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SSVCloudServiceCapabilitiesRequest_startWithResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v9 = *(a1 + 40);
    v18 = v6;
    v19 = v9;
    v17 = v7;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__SSVCloudServiceCapabilitiesRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B2FC8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVCloudServiceCapabilitiesRequest *)self startWithResponseBlock:v6];
}

uint64_t __63__SSVCloudServiceCapabilitiesRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSVCloudServiceCapabilitiesRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSVCloudServiceCapabilitiesRequest;
    v6 = [(SSRequest *)&v8 init];
    if (v6)
    {
      *(&v6->super._usesTaskCompletionAssertions + 1) = xpc_dictionary_get_BOOL(v5, "0");
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
  xpc_dictionary_set_BOOL(v3, "0", *(&self->super._usesTaskCompletionAssertions + 1));
  return v3;
}

@end