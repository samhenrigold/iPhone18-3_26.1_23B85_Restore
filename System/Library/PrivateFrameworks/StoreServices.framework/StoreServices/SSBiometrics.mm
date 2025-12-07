@interface SSBiometrics
- (SSBiometrics)init;
- (void)_sendMessage:(id)message withCompletionBlock:(id)block;
- (void)getAllCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block;
- (void)getCachedBiometricAuthenticationContextWithToken:(id)token evict:(BOOL)evict completionBlock:(id)block;
- (void)getCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block;
- (void)getConstraintsDictionaryForPurpose:(int64_t)purpose completion:(id)completion;
- (void)getCurrentACLVersionWithCompletion:(id)completion;
- (void)getIdentityMapCountWithCompletionBlock:(id)block;
- (void)getStateWithCompletionBlock:(id)block;
- (void)isIdentityMapValidForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)resetAccount:(id)account withCompletionBlock:(id)block;
- (void)resetWithCompletionBlock:(id)block;
- (void)saveIdentityMapForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)setAllowed:(BOOL)allowed completionBlock:(id)block;
- (void)setEnabled:(BOOL)enabled withAuthToken:(id)token completionBlock:(id)block;
- (void)setEnabled:(BOOL)enabled withCompletionBlock:(id)block;
- (void)tokenUpdateDidFinishWithLogKey:(id)key completion:(id)completion;
- (void)tokenUpdateShouldStartWithLogKey:(id)key completion:(id)completion;
- (void)tokenUpdateStateWithCompletionBlock:(id)block;
@end

@implementation SSBiometrics

- (SSBiometrics)init
{
  v11.receiver = self;
  v11.super_class = SSBiometrics;
  v2 = [(SSBiometrics *)&v11 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSBiometrics.%p", v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    v8 = v2->_clientQueue;
    v9 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v8, v9);
  }

  return v2;
}

- (void)getAllCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dCopy = d;
  tokenCopy = token;
  if (SSIsInternalBuild(tokenCopy, v13) && _os_feature_enabled_impl())
  {
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v31 = 136446210;
      v32 = "[SSBiometrics getAllCachedBiometricHTTPHeadersWithToken:accountID:evict:completionBlock:]";

      if (!v19)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog(v14, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v26 = SSXPCCreateMessageDictionary(203);
  SSXPCDictionarySetObject(v26, "1", tokenCopy);

  SSXPCDictionarySetObject(v26, "2", dCopy);
  xpc_dictionary_set_BOOL(v26, "3", evict);
  connection = self->_connection;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__SSBiometrics_getAllCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke;
  v29[3] = &unk_1E84ABEF0;
  v29[4] = self;
  v30 = blockCopy;
  v28 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v26 withReply:v29];
}

void __90__SSBiometrics_getAllCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = xpc_dictionary_get_value(v4, "2");
  v6 = [v11 initWithXPCEncoding:v12];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__SSBiometrics_getAllCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getCachedBiometricAuthenticationContextWithToken:(id)token evict:(BOOL)evict completionBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  tokenCopy = token;
  if (SSIsInternalBuild(tokenCopy, v10) && _os_feature_enabled_impl())
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v28 = 136446210;
      v29 = "[SSBiometrics getCachedBiometricAuthenticationContextWithToken:evict:completionBlock:]";

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v23 = SSXPCCreateMessageDictionary(195);
  SSXPCDictionarySetObject(v23, "1", tokenCopy);

  xpc_dictionary_set_BOOL(v23, "2", evict);
  connection = self->_connection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__SSBiometrics_getCachedBiometricAuthenticationContextWithToken_evict_completionBlock___block_invoke;
  v26[3] = &unk_1E84ABEF0;
  v26[4] = self;
  v27 = blockCopy;
  v25 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v23 withReply:v26];
}

void __87__SSBiometrics_getCachedBiometricAuthenticationContextWithToken_evict_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = [SSBiometricAuthenticationContext alloc];
  v11 = xpc_dictionary_get_value(v4, "0");
  v7 = [(SSBiometricAuthenticationContext *)v10 initWithXPCEncoding:v11];

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "1");
  v6 = [v12 initWithXPCEncoding:v13];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SSBiometrics_getCachedBiometricAuthenticationContextWithToken_evict_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v17 = v8;
    v15 = v7;
    v16 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dCopy = d;
  tokenCopy = token;
  if (SSIsInternalBuild(tokenCopy, v13) && _os_feature_enabled_impl())
  {
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v31 = 136446210;
      v32 = "[SSBiometrics getCachedBiometricHTTPHeadersWithToken:accountID:evict:completionBlock:]";

      if (!v19)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog(v14, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v26 = SSXPCCreateMessageDictionary(196);
  SSXPCDictionarySetObject(v26, "1", tokenCopy);

  SSXPCDictionarySetObject(v26, "2", dCopy);
  xpc_dictionary_set_BOOL(v26, "3", evict);
  connection = self->_connection;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __87__SSBiometrics_getCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke;
  v29[3] = &unk_1E84ABEF0;
  v29[4] = self;
  v30 = blockCopy;
  v28 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v26 withReply:v29];
}

void __87__SSBiometrics_getCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v13 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v13);
  v14 = objc_opt_class();
  v8 = SSXPCDictionaryCopyObjectWithClass(v4, "1", v14);
  v15 = objc_opt_class();
  v9 = SSXPCDictionaryCopyObjectWithClass(v4, "2", v15);
  v16 = objc_opt_class();
  v10 = SSXPCDictionaryCopyObjectWithClass(v4, "3", v16);
  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = xpc_dictionary_get_value(v4, "4");
  v6 = [v17 initWithXPCEncoding:v18];

LABEL_7:
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 8);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__SSBiometrics_getCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke_2;
    v19[3] = &unk_1E84B3360;
    v25 = v11;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v6;
    dispatch_async(v12, v19);
  }
}

- (void)getConstraintsDictionaryForPurpose:(int64_t)purpose completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SSIsInternalBuild(completionCopy, v7) && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v25 = 136446210;
      v26 = "[SSBiometrics getConstraintsDictionaryForPurpose:completion:]";

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(214);
  xpc_dictionary_set_BOOL(v20, "1", purpose == 0);
  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__SSBiometrics_getConstraintsDictionaryForPurpose_completion___block_invoke;
  v23[3] = &unk_1E84ABEF0;
  v23[4] = self;
  v24 = completionCopy;
  v22 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v23];
}

void __62__SSBiometrics_getConstraintsDictionaryForPurpose_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = xpc_dictionary_get_value(v4, "1");
  v6 = [v11 initWithXPCEncoding:v12];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SSBiometrics_getConstraintsDictionaryForPurpose_completion___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getCurrentACLVersionWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SSIsInternalBuild(completionCopy, v5) && _os_feature_enabled_impl())
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
      v23 = 136446210;
      v24 = "[SSBiometrics getCurrentACLVersionWithCompletion:]";

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
  v18 = SSXPCCreateMessageDictionary(213);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__SSBiometrics_getCurrentACLVersionWithCompletion___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = completionCopy;
  v20 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
}

void __51__SSBiometrics_getCurrentACLVersionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = xpc_dictionary_get_value(v4, "1");
  v6 = [v11 initWithXPCEncoding:v12];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SSBiometrics_getCurrentACLVersionWithCompletion___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getStateWithCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
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
      v23 = 136446210;
      v24 = "[SSBiometrics getStateWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(122);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__SSBiometrics_getStateWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = blockCopy;
  v20 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
}

void __44__SSBiometrics_getStateWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    int64 = 5;
    goto LABEL_7;
  }

  int64 = xpc_dictionary_get_int64(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SSBiometrics_getStateWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v14 = v8;
    v15 = int64;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)resetAccount:(id)account withCompletionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  accountCopy = account;
  if (SSIsInternalBuild(accountCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v22 = 136446210;
      v23 = "[SSBiometrics resetAccount:withCompletionBlock:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = SSXPCCreateMessageDictionary(125);
  SSXPCDictionarySetObject(v21, "1", accountCopy);

  [(SSBiometrics *)self _sendMessage:v21 withCompletionBlock:blockCopy];
}

- (void)resetWithCompletionBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
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
      v19 = 136446210;
      v20 = "[SSBiometrics resetWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(124);
  [(SSBiometrics *)self _sendMessage:v18 withCompletionBlock:blockCopy];
}

- (void)setEnabled:(BOOL)enabled withCompletionBlock:(id)block
{
  enabledCopy = enabled;
  v6 = MEMORY[0x1E695DEF0];
  blockCopy = block;
  data = [v6 data];
  [(SSBiometrics *)self setEnabled:enabledCopy withAuthToken:data completionBlock:blockCopy];
}

- (void)setEnabled:(BOOL)enabled withAuthToken:(id)token completionBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  tokenCopy = token;
  if (SSIsInternalBuild(tokenCopy, v10) && _os_feature_enabled_impl())
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v24 = 136446210;
      v25 = "[SSBiometrics setEnabled:withAuthToken:completionBlock:]";

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v23 = SSXPCCreateMessageDictionary(123);
  xpc_dictionary_set_BOOL(v23, "1", enabled);
  SSXPCDictionarySetCFObject(v23, "2", tokenCopy);

  [(SSBiometrics *)self _sendMessage:v23 withCompletionBlock:blockCopy];
}

- (void)setAllowed:(BOOL)allowed completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v7) && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v21 = 136446210;
      v22 = "[SSBiometrics setAllowed:completionBlock:]";

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(126);
  xpc_dictionary_set_BOOL(v20, "1", allowed);
  [(SSBiometrics *)self _sendMessage:v20 withCompletionBlock:blockCopy];
}

- (void)tokenUpdateDidFinishWithLogKey:(id)key completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyCopy = key;
  if (SSIsInternalBuild(keyCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v26 = 136446210;
      v27 = "[SSBiometrics tokenUpdateDidFinishWithLogKey:completion:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = SSXPCCreateMessageDictionary(206);
  SSXPCDictionarySetObject(v21, "1", keyCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__SSBiometrics_tokenUpdateDidFinishWithLogKey_completion___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = completionCopy;
  v23 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __58__SSBiometrics_tokenUpdateDidFinishWithLogKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    goto LABEL_7;
  }

  v9 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = xpc_dictionary_get_value(v4, "0");
  v6 = [v9 initWithXPCEncoding:v10];

LABEL_7:
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__SSBiometrics_tokenUpdateDidFinishWithLogKey_completion___block_invoke_2;
    v11[3] = &unk_1E84AC338;
    v13 = v7;
    v12 = v6;
    dispatch_async(v8, v11);
  }
}

- (void)tokenUpdateShouldStartWithLogKey:(id)key completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyCopy = key;
  if (SSIsInternalBuild(keyCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v26 = 136446210;
      v27 = "[SSBiometrics tokenUpdateShouldStartWithLogKey:completion:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = SSXPCCreateMessageDictionary(207);
  SSXPCDictionarySetObject(v21, "1", keyCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__SSBiometrics_tokenUpdateShouldStartWithLogKey_completion___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = completionCopy;
  v23 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __60__SSBiometrics_tokenUpdateShouldStartWithLogKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 1;
    goto LABEL_7;
  }

  v7 = xpc_dictionary_get_BOOL(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSBiometrics_tokenUpdateShouldStartWithLogKey_completion___block_invoke_2;
    block[3] = &unk_1E84B08A8;
    v14 = v8;
    v15 = v7;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)tokenUpdateStateWithCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
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
      v23 = 136446210;
      v24 = "[SSBiometrics tokenUpdateStateWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(208);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__SSBiometrics_tokenUpdateStateWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = blockCopy;
  v20 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
}

void __52__SSBiometrics_tokenUpdateStateWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    int64 = 0;
    goto LABEL_7;
  }

  int64 = xpc_dictionary_get_int64(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__SSBiometrics_tokenUpdateStateWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v14 = v8;
    v15 = int64;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getIdentityMapCountWithCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
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
      v23 = 136446210;
      v24 = "[SSBiometrics getIdentityMapCountWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(182);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__SSBiometrics_getIdentityMapCountWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = blockCopy;
  v20 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
}

void __55__SSBiometrics_getIdentityMapCountWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v11 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v7 = [(__CFDate *)v11 unsignedIntegerValue];

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "1");
  v6 = [v12 initWithXPCEncoding:v13];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SSBiometrics_getIdentityMapCountWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v16 = v8;
    v17 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)isIdentityMapValidForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v22 = 136446210;
      v23 = "[SSBiometrics isIdentityMapValidForAccountIdentifier:completionBlock:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = SSXPCCreateMessageDictionary(183);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  [(SSBiometrics *)self _sendMessage:v21 withCompletionBlock:blockCopy];
}

- (void)saveIdentityMapForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v22 = 136446210;
      v23 = "[SSBiometrics saveIdentityMapForAccountIdentifier:completionBlock:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = SSXPCCreateMessageDictionary(184);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  [(SSBiometrics *)self _sendMessage:v21 withCompletionBlock:blockCopy];
}

- (void)_sendMessage:(id)message withCompletionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SSBiometrics__sendMessage_withCompletionBlock___block_invoke;
  v9[3] = &unk_1E84ABEF0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __49__SSBiometrics__sendMessage_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v7 = xpc_dictionary_get_BOOL(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__SSBiometrics__sendMessage_withCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84B08A8;
    v14 = v8;
    v15 = v7;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

@end