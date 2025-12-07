@interface SSSoftwareLibrary
- (SSSoftwareLibrary)init;
- (void)_getItemsWithMessage:(id)message completionBlock:(id)block;
- (void)_sendDemotionMessage:(id)message completionBlock:(id)block;
- (void)demoteApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block;
- (void)getLibraryItemForBundleIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)getLibraryItemsForITunesStoreItemIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)getRemovableSytemApplicationsWithCompletionBlock:(id)block;
- (void)hasDemotedApplicationsWithCompletionBlock:(id)block;
- (void)isInstalledApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block;
- (void)isRemovedSystemApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block;
- (void)playableApplicationsWithBundleIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)refreshReceiptsWithCompletionBlock:(id)block;
- (void)restoreAllDemotedApplicationsWithOptions:(id)options completionBlock:(id)block;
- (void)restoreDemotedApplicationWithBundleIdentifier:(id)identifier options:(id)options completionBlock:(id)block;
@end

@implementation SSSoftwareLibrary

- (SSSoftwareLibrary)init
{
  v6.receiver = self;
  v6.super_class = SSSoftwareLibrary;
  v2 = [(SSSoftwareLibrary *)&v6 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)demoteApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block
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
      v23 = "[SSSoftwareLibrary demoteApplicationWithBundleIdentifier:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(161);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  [(SSSoftwareLibrary *)self _sendDemotionMessage:v21 completionBlock:blockCopy];
}

- (void)getLibraryItemForBundleIdentifiers:(id)identifiers completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifiersCopy = identifiers;
  if (SSIsInternalBuild(identifiersCopy, v8) && _os_feature_enabled_impl())
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
      v23 = "[SSSoftwareLibrary getLibraryItemForBundleIdentifiers:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(89);
  SSXPCDictionarySetObject(v21, "1", identifiersCopy);

  [(SSSoftwareLibrary *)self _getItemsWithMessage:v21 completionBlock:blockCopy];
}

- (void)getLibraryItemsForITunesStoreItemIdentifiers:(id)identifiers completionBlock:(id)block
{
  blockCopy = block;
  identifiersCopy = identifiers;
  v8 = SSXPCCreateMessageDictionary(89);
  SSXPCDictionarySetObject(v8, "2", identifiersCopy);

  [(SSSoftwareLibrary *)self _getItemsWithMessage:v8 completionBlock:blockCopy];
}

- (void)getRemovableSytemApplicationsWithCompletionBlock:(id)block
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
      v19 = 136446210;
      v20 = "[SSSoftwareLibrary getRemovableSytemApplicationsWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(172);
  [(SSSoftwareLibrary *)self _getItemsWithMessage:v18 completionBlock:blockCopy];
}

- (void)hasDemotedApplicationsWithCompletionBlock:(id)block
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
      v24 = "[SSSoftwareLibrary hasDemotedApplicationsWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(169);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__SSSoftwareLibrary_hasDemotedApplicationsWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84AE2D8;
  v22 = blockCopy;
  v20 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
}

void __63__SSSoftwareLibrary_hasDemotedApplicationsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_get_BOOL(xdict, "1");
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (void)isInstalledApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block
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
      v26 = 136446210;
      v27 = "[SSSoftwareLibrary isInstalledApplicationWithBundleIdentifier:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(167);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__SSSoftwareLibrary_isInstalledApplicationWithBundleIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v23 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __80__SSSoftwareLibrary_isInstalledApplicationWithBundleIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_get_BOOL(xdict, "0");
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (void)isRemovedSystemApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block
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
      v27 = "[SSSoftwareLibrary isRemovedSystemApplicationWithBundleIdentifier:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(168);
  SSXPCDictionarySetObject(v21, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__SSSoftwareLibrary_isRemovedSystemApplicationWithBundleIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v23 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __84__SSSoftwareLibrary_isRemovedSystemApplicationWithBundleIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_get_BOOL(xdict, "0");
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (void)playableApplicationsWithBundleIdentifiers:(id)identifiers completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifiersCopy = identifiers;
  if (SSIsInternalBuild(identifiersCopy, v8) && _os_feature_enabled_impl())
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
      v27 = "[SSSoftwareLibrary playableApplicationsWithBundleIdentifiers:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(186);
  SSXPCDictionarySetObject(v21, "1", identifiersCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__SSSoftwareLibrary_playableApplicationsWithBundleIdentifiers_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v23 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v24];
}

void __79__SSSoftwareLibrary_playableApplicationsWithBundleIdentifiers_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
  xdict = v3;
  if (v4)
  {
    v5 = 121;
LABEL_10:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_11;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v7 = SSXPCDictionaryCopyCFObjectWithClass(xdict, "1", v8);
  v9 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = xpc_dictionary_get_value(xdict, "2");
  v6 = [v9 initWithXPCEncoding:v10];

LABEL_11:
  (*(*(a1 + 32) + 16))();
}

- (void)refreshReceiptsWithCompletionBlock:(id)block
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
      v24 = "[SSSoftwareLibrary refreshReceiptsWithCompletionBlock:]";

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
  v18 = SSXPCCreateMessageDictionary(117);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__SSSoftwareLibrary_refreshReceiptsWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84AE2D8;
  v22 = blockCopy;
  v20 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
}

void __56__SSSoftwareLibrary_refreshReceiptsWithCompletionBlock___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 32))
  {
    v3 = xpc_dictionary_get_value(xdict, "1");
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:v3];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)restoreAllDemotedApplicationsWithOptions:(id)options completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  optionsCopy = options;
  if (SSIsInternalBuild(optionsCopy, v8) && _os_feature_enabled_impl())
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
      v23 = "[SSSoftwareLibrary restoreAllDemotedApplicationsWithOptions:completionBlock:]";

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
  v21 = SSXPCCreateMessageDictionary(162);
  SSXPCDictionarySetObject(v21, "2", optionsCopy);

  [(SSSoftwareLibrary *)self _sendDemotionMessage:v21 completionBlock:blockCopy];
}

- (void)restoreDemotedApplicationWithBundleIdentifier:(id)identifier options:(id)options completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  optionsCopy = options;
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v11) && _os_feature_enabled_impl())
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
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
      v26 = "[SSSoftwareLibrary restoreDemotedApplicationWithBundleIdentifier:options:completionBlock:]";

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
  v24 = SSXPCCreateMessageDictionary(162);
  SSXPCDictionarySetObject(v24, "1", identifierCopy);

  SSXPCDictionarySetObject(v24, "2", optionsCopy);
  [(SSSoftwareLibrary *)self _sendDemotionMessage:v24 completionBlock:blockCopy];
}

- (void)_getItemsWithMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke;
  v9[3] = &unk_1E84AE2D8;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18])
  {
    v6 = 121;
LABEL_10:
    v7 = SSError(@"SSErrorDomain", v6, 0, 0);
    v8 = 0;
    goto LABEL_11;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v6 = 111;
    goto LABEL_10;
  }

  v9 = xpc_dictionary_get_value(v4, "1");
  v10 = v9;
  if (v9 && MEMORY[0x1DA6E0380](v9) == MEMORY[0x1E69E9E50])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke_2;
    applier[3] = &unk_1E84AC3D8;
    v8 = v11;
    v15 = v8;
    xpc_array_apply(v10, applier);
  }

  else
  {
    v8 = 0;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "2");
  v7 = [v12 initWithXPCEncoding:v13];

LABEL_11:
  (*(*(a1 + 32) + 16))();
}

uint64_t __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SSSoftwareLibraryItem alloc] initWithXPCEncoding:v4];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

- (void)_sendDemotionMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SSSoftwareLibrary__sendDemotionMessage_completionBlock___block_invoke;
  v9[3] = &unk_1E84AE2D8;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __58__SSSoftwareLibrary__sendDemotionMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v7 = objc_alloc(MEMORY[0x1E696ABC0]);
        v8 = xpc_dictionary_get_value(xdict, "2");
        v6 = [v7 initWithXPCEncoding:v8];

        xpc_dictionary_get_BOOL(xdict, "1");
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

@end