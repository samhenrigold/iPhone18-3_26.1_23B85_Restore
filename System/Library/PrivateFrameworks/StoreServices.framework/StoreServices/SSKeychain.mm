@interface SSKeychain
- (SSKeychain)init;
- (void)_sendMessage:(id)message completionBlock:(id)block;
- (void)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block;
- (void)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block;
- (void)deleteKeychainTokensForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)getPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block;
- (void)keyCountForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)signData:(id)data context:(id)context completionBlock:(id)block;
- (void)signData:(id)data reason:(id)reason fallback:(id)fallback cancel:(id)cancel forAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)x509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateCerts:(BOOL)certs completionBlock:(id)block;
@end

@implementation SSKeychain

- (SSKeychain)init
{
  v11.receiver = self;
  v11.super_class = SSKeychain;
  v2 = [(SSKeychain *)&v11 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSKeychain.%p", v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v6;

    v8 = v2->_dispatchQueue;
    v9 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v8, v9);
  }

  return v2;
}

- (void)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v10) && _os_feature_enabled_impl())
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
      v25 = 136446210;
      v26 = "[SSKeychain createAttestationDataForAccountIdentifier:purpose:completionBlock:]";

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
  v23 = SSXPCCreateMessageDictionary(179);
  SSXPCDictionarySetObject(v23, "1", identifierCopy);

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v23, "2", v24);

  [(SSKeychain *)self _sendMessage:v23 completionBlock:blockCopy];
}

- (void)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v10) && _os_feature_enabled_impl())
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
      v29 = 136446210;
      v30 = "[SSKeychain createX509CertChainDataForAccountIdentifier:purpose:completionBlock:]";

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
  v23 = SSXPCCreateMessageDictionary(204);
  SSXPCDictionarySetObject(v23, "1", identifierCopy);

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v23, "2", v24);

  connection = self->_connection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__SSKeychain_createX509CertChainDataForAccountIdentifier_purpose_completionBlock___block_invoke;
  v27[3] = &unk_1E84ABEF0;
  v27[4] = self;
  v28 = blockCopy;
  v26 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v23 withReply:v27];
}

void __82__SSKeychain_createX509CertChainDataForAccountIdentifier_purpose_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SSKeychain_createX509CertChainDataForAccountIdentifier_purpose_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)deleteKeychainTokensForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
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
      v26 = 136446210;
      v27 = "[SSKeychain deleteKeychainTokensForAccountIdentifier:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(185);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = blockCopy;
  v23 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) isEqualToNumber:&unk_1F507A0A8];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (void)getPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v10) && _os_feature_enabled_impl())
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
      v25 = 136446210;
      v26 = "[SSKeychain getPublicKeyDataForAccountIdentifier:purpose:completionBlock:]";

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
  v23 = SSXPCCreateMessageDictionary(180);
  SSXPCDictionarySetObject(v23, "1", identifierCopy);

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v23, "2", v24);

  [(SSKeychain *)self _sendMessage:v23 completionBlock:blockCopy];
}

- (void)keyCountForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
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
      v26 = 136446210;
      v27 = "[SSKeychain keyCountForAccountIdentifier:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(202);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__SSKeychain_keyCountForAccountIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = blockCopy;
  v23 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __59__SSKeychain_keyCountForAccountIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    uint64 = 0;
    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SSKeychain_keyCountForAccountIdentifier_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v14 = v8;
    v15 = uint64;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)signData:(id)data reason:(id)reason fallback:(id)fallback cancel:(id)cancel forAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  cancelCopy = cancel;
  fallbackCopy = fallback;
  reasonCopy = reason;
  dataCopy = data;
  if (SSIsInternalBuild(dataCopy, v20) && _os_feature_enabled_impl())
  {
    v21 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      v34 = 136446210;
      v35 = "[SSKeychain signData:reason:fallback:cancel:forAccountIdentifier:completionBlock:]";

      if (!v26)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
      free(v26);
      SSFileLog(v21, @"%@", v27, v28, v29, v30, v31, v32, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v33 = SSXPCCreateMessageDictionary(181);
  SSXPCDictionarySetObject(v33, "1", dataCopy);

  SSXPCDictionarySetObject(v33, "2", reasonCopy);
  SSXPCDictionarySetObject(v33, "3", fallbackCopy);

  SSXPCDictionarySetObject(v33, "4", cancelCopy);
  SSXPCDictionarySetObject(v33, "5", identifierCopy);

  [(SSKeychain *)self _sendMessage:v33 completionBlock:blockCopy];
}

- (void)signData:(id)data context:(id)context completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  contextCopy = context;
  dataCopy = data;
  if (SSIsInternalBuild(dataCopy, v11) && _os_feature_enabled_impl())
  {
    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v25 = 136446210;
      v26 = "[SSKeychain signData:context:completionBlock:]";

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v24 = SSXPCCreateMessageDictionary(192);
  SSXPCDictionarySetObject(v24, "1", dataCopy);

  SSXPCDictionarySetObject(v24, "2", contextCopy);
  [(SSKeychain *)self _sendMessage:v24 completionBlock:blockCopy];
}

- (void)x509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateCerts:(BOOL)certs completionBlock:(id)block
{
  certsCopy = certs;
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v12) && _os_feature_enabled_impl())
  {
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v32 = 136446210;
      v33 = "[SSKeychain x509CertChainDataForAccountIdentifier:purpose:regenerateCerts:completionBlock:]";

      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v25 = SSXPCCreateMessageDictionary(205);
  SSXPCDictionarySetObject(v25, "1", identifierCopy);

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v25, "2", v26);

  v27 = [MEMORY[0x1E696AD98] numberWithBool:certsCopy];
  SSXPCDictionarySetObject(v25, "3", v27);

  connection = self->_connection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __92__SSKeychain_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_completionBlock___block_invoke;
  v30[3] = &unk_1E84ABEF0;
  v30[4] = self;
  v31 = blockCopy;
  v29 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v25 withReply:v30];
}

void __92__SSKeychain_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__SSKeychain_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)_sendMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SSKeychain__sendMessage_completionBlock___block_invoke;
  v9[3] = &unk_1E84ABEF0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __43__SSKeychain__sendMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SSKeychain__sendMessage_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

@end