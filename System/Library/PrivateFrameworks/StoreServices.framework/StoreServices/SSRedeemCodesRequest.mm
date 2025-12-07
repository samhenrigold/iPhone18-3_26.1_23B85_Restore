@interface SSRedeemCodesRequest
- (NSArray)redeemCodes;
- (SSAuthenticationContext)authenticationContext;
- (SSRedeemCodesRequest)initWithRedeemCodes:(id)codes;
- (SSRedeemCodesRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)setAuthenticationContext:(id)context;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithRedeemResponseBlock:(id)block;
@end

@implementation SSRedeemCodesRequest

- (SSRedeemCodesRequest)initWithRedeemCodes:(id)codes
{
  v6.receiver = self;
  v6.super_class = SSRedeemCodesRequest;
  v4 = [(SSRequest *)&v6 init];
  if (v4)
  {
    v4->_redeemCodes = [codes copy];
    v4->_headless = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRedeemCodesRequest;
  [(SSRequest *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__47;
  v10 = __Block_byref_object_dispose__47;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSRedeemCodesRequest_authenticationContext__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __45__SSRedeemCodesRequest_authenticationContext__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)redeemCodes
{
  v2 = self->_redeemCodes;

  return v2;
}

- (void)setAuthenticationContext:(id)context
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSRedeemCodesRequest_setAuthenticationContext___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = context;
  dispatch_sync(dispatchQueue, v4);
}

void *__49__SSRedeemCodesRequest_setAuthenticationContext___block_invoke(void *result)
{
  v1 = *(result[4] + 96);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 96) = result;
  }

  return result;
}

- (void)startWithRedeemResponseBlock:(id)block
{
  v44 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v38 = 136446210;
      v39 = "[SSRedeemCodesRequest startWithRedeemResponseBlock:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  if (![(SSRedeemCodesRequest *)self logCorrelationKey])
  {
    [(SSRedeemCodesRequest *)self setLogCorrelationKey:AMSGenerateLogCorrelationKey()];
  }

  v19 = +[SSLogConfig sharedConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog2;
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (v21)
  {
    v23 = objc_opt_class();
    logCorrelationKey = [(SSRedeemCodesRequest *)self logCorrelationKey];
    redeemCodes = [(SSRedeemCodesRequest *)self redeemCodes];
    v38 = 138543874;
    v39 = v23;
    v40 = 2114;
    v41 = logCorrelationKey;
    v42 = 2112;
    v43 = redeemCodes;
    LODWORD(v36) = 32;
    v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "%{public}@: [%{public}@] Starting redeem operation for codes: %@", &v38, v36);
    if (v26)
    {
      v27 = v26;
      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
      free(v27);
      SSFileLog(v19, @"%@", v29, v30, v31, v32, v33, v34, v28);
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_23);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke_2;
  v37[3] = &unk_1E84AF748;
  v37[5] = global_queue;
  v37[6] = block;
  v37[4] = self;
  [(SSRequest *)self _startWithMessageID:91 messageBlock:v37];
}

uint64_t __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"SSVNetworkingDidStartNotification" object:0];
}

void __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = SSError(@"SSErrorDomain", 121, 0, 0);
      v5 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      v5 = [[SSRedeemCodesResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
    }

    v6 = +[SSLogConfig sharedConfig];
    v7 = v6;
    if (v4)
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        LODWORD(v9) = v8 | 2;
      }

      else
      {
        LODWORD(v9) = v8;
      }

      v10 = [v7 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v9 = v9;
      }

      else
      {
        v9 &= 2u;
      }

      if (!v9)
      {
        goto LABEL_28;
      }

      v11 = objc_opt_class();
      v12 = [*(a1 + 32) logCorrelationKey];
      *v27 = 138543874;
      *&v27[4] = v11;
      *&v27[12] = 2114;
      *&v27[14] = v12;
      *&v27[22] = 2114;
      v28 = AMSLogableError();
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v10, 16, "%{public}@: [%{public}@] Redeem failed with error = %{public}@", v27, 32, *v27, *&v27[8], v28);
    }

    else
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v14 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        LODWORD(v15) = v14 | 2;
      }

      else
      {
        LODWORD(v15) = v14;
      }

      v16 = [v7 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v15;
      }

      else
      {
        v15 &= 2u;
      }

      if (!v15)
      {
        goto LABEL_28;
      }

      v17 = objc_opt_class();
      v18 = [*(a1 + 32) logCorrelationKey];
      *v27 = 138543618;
      *&v27[4] = v17;
      *&v27[12] = 2114;
      *&v27[14] = v18;
      v13 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1D48BA000, v16, 0, "%{public}@: [%{public}@] Redeem finished with a response.", v27, 22, *v27, *&v27[8], v28);
    }

    if (v13)
    {
      v19 = v13;
      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v19);
      SSFileLog(v7, @"%@", v21, v22, v23, v24, v25, v26, v20);
    }

LABEL_28:
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) _shutdownRequest];
  dispatch_async(*(a1 + 40), &__block_literal_global_17);
}

uint64_t __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke_15()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"SSVNetworkingDidStopNotification" object:0];
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SSRedeemCodesRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84B1818;
  v3[4] = block;
  [(SSRedeemCodesRequest *)self startWithRedeemResponseBlock:v3];
}

uint64_t __49__SSRedeemCodesRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSRedeemCodesRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSRedeemCodesRequest;
    v5 = [(SSRequest *)&v10 init];
    if (v5)
    {
      v5->_authenticationContext = [[SSAuthenticationContext alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "0")];
      v7 = objc_opt_class();
      v5->_redeemCodes = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1", v7);
      v5->_headless = xpc_dictionary_get_BOOL(encoding, "2");
      v5->_cameraRecognized = xpc_dictionary_get_BOOL(encoding, "3");
      v8 = objc_opt_class();
      v5->_logCorrelationKey = SSXPCDictionaryCopyCFObjectWithClass(encoding, "4", v8);
      v9 = objc_opt_class();
      v5->_params = SSXPCDictionaryCopyCFObjectWithClass(encoding, "5", v9);
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
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_authenticationContext);
  SSXPCDictionarySetCFObject(v3, "1", self->_redeemCodes);
  xpc_dictionary_set_BOOL(v3, "2", self->_headless);
  xpc_dictionary_set_BOOL(v3, "3", self->_cameraRecognized);
  SSXPCDictionarySetCFObject(v3, "4", self->_logCorrelationKey);
  SSXPCDictionarySetCFObject(v3, "5", self->_params);
  return v3;
}

@end