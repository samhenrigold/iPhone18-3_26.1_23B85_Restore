@interface BRShareOperation
- (BOOL)shouldUseDirectConnection;
- (BRShareOperation)init;
- (BRShareOperation)initWithDirectConnection;
- (BRShareOperation)initWithItemIdentifier:(id)identifier;
- (BRShareOperation)initWithShare:(id)share;
- (BRShareOperation)initWithURL:(id)l;
- (id)remoteLegacyObject;
- (id)remoteObject;
- (void)remoteLegacyObject;
@end

@implementation BRShareOperation

- (BRShareOperation)init
{
  v11 = *MEMORY[0x1E69E9840];
  abc_report_panic_with_signature(@"BRShareOperation must be initialized with a URL");
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BRShareOperation must be initialized with a URL"];
  v3 = brc_bread_crumbs("[BRShareOperation init]", 204);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = brc_append_system_info_to_message(v2);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_fault_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v7, 0x16u);
  }

  brc_append_system_info_to_message(v2);
  uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRShareOperation init]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/operations/BRShareOperations.m", 204, uTF8String);
}

- (BRShareOperation)initWithShare:(id)share
{
  v16 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v5 = br_shareAssociatedURL(shareCopy);
  if (!v5)
  {
    if (BRShareProcessShouldUseDirectConnection())
    {
      v6 = brc_bread_crumbs("[BRShareOperation initWithShare:]", 212);
      v7 = brc_default_log(1, 0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [BRShareOperation initWithShare:];
      }
    }

    else
    {
      v6 = brc_bread_crumbs("[BRShareOperation initWithShare:]", 214);
      v7 = brc_default_log(0, 0);
      if (os_log_type_enabled(v7, 0x90u))
      {
        v10 = 138412802;
        selfCopy = self;
        v12 = 2112;
        v13 = shareCopy;
        v14 = 2112;
        v15 = v6;
        _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] %@ initialized with CKShare %@ that wasn't returned by BRShareCopyShareOperation. Falling back to default connection.%@", &v10, 0x20u);
      }
    }
  }

  v8 = [(BRShareOperation *)self initWithURL:v5];

  return v8;
}

- (BRShareOperation)initWithDirectConnection
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(BRShareOperation *)self initWithURL:0];
  if (v2)
  {
    v3 = brc_bread_crumbs("[BRShareOperation initWithDirectConnection]", 223);
    v4 = brc_default_log(1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = v2;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ initialized without share/url, but using default connection%@", &v6, 0x16u);
    }
  }

  return v2;
}

- (BRShareOperation)initWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BRShareOperation;
  v6 = [(BROperation *)&v13 init];
  if (v6)
  {
    v7 = brc_bread_crumbs("[BRShareOperation initWithItemIdentifier:]", 231);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRShareOperation initWithItemIdentifier:];
    }

    objc_storeStrong(&v6->_itemID, identifier);
    v9 = +[BRDaemonConnection defaultConnection];
    remoteObjectProxy = [v9 remoteObjectProxy];
    remoteObject = v6->_remoteObject;
    v6->_remoteObject = remoteObjectProxy;
  }

  return v6;
}

- (BRShareOperation)initWithURL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v32.receiver = self;
  v32.super_class = BRShareOperation;
  v5 = [(BROperation *)&v32 init];
  if (!v5)
  {
LABEL_15:
    v21 = v5;
    goto LABEL_16;
  }

  v6 = brc_bread_crumbs("[BRShareOperation initWithURL:]", 241);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRShareOperation initWithURL:];
  }

  v31 = 0;
  [lCopy getResourceValue:&v31 forKey:@"FPOriginalDocumentURL" error:0];
  v8 = v31;
  if (v8)
  {
    v9 = brc_bread_crumbs("[BRShareOperation initWithURL:]", 245);
    v10 = brc_default_log(1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v34 = lCopy;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] originalURL found on %@: %@%@", buf, 0x20u);
    }

    v11 = v8;
    lCopy = v11;
  }

  filePathURL = [lCopy filePathURL];
  v13 = *(v5 + 41);
  *(v5 + 41) = filePathURL;

  if (!lCopy || *(v5 + 41))
  {
    v14 = dispatch_group_create();
    v15 = *(v5 + 37);
    *(v5 + 37) = v14;

    ShouldUseDirectConnection = BRShareProcessShouldUseDirectConnection();
    if (!lCopy || ShouldUseDirectConnection)
    {
      v18 = +[BRDaemonConnection defaultConnection];
      remoteObjectProxy = [v18 remoteObjectProxy];
      v20 = *(v5 + 40);
      *(v5 + 40) = remoteObjectProxy;
    }

    else
    {
      dispatch_group_enter(*(v5 + 37));
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __32__BRShareOperation_initWithURL___block_invoke;
      v28[3] = &unk_1E7A14C58;
      v29 = v5;
      v30 = lCopy;
      [defaultManager getFileProviderServicesForItemAtURL:v30 completionHandler:v28];

      v18 = v29;
    }

    goto LABEL_15;
  }

  v23 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"url" value:lCopy];
  v24 = *(v5 + 38);
  *(v5 + 38) = v23;

  v25 = brc_bread_crumbs("[BRShareOperation initWithURL:]", 251);
  v26 = brc_default_log(0, 0);
  if (os_log_type_enabled(v26, 0x90u))
  {
    [BRShareOperation initWithURL:];
  }

  v27 = v5;
LABEL_16:

  return v5;
}

void __32__BRShareOperation_initWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if ([v6 br_isFileProviderErrorCode:-1005] && (objc_msgSend(v7, "userInfo"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKeyedSubscript:", *MEMORY[0x1E69671B0]), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = [*(a1 + 40) path];
      v16 = [v14 brc_errorNotInCloud:v15];
      v17 = *(a1 + 32);
      v18 = *(v17 + 304);
      *(v17 + 304) = v16;

      v19 = *(*(a1 + 32) + 304);
      v20 = brc_bread_crumbs("[BRShareOperation initWithURL:]_block_invoke", 267);
      v21 = brc_default_log(0, 0);
      if (os_log_type_enabled(v21, 0x90u))
      {
        v22 = *(a1 + 40);
        *buf = 138412802;
        v31 = v22;
        v32 = 2112;
        v33 = v19;
        v34 = 2112;
        v35 = v20;
        _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] failed to get services for url %@ (%@)%@", buf, 0x20u);
      }
    }

    else
    {
      v20 = brc_bread_crumbs("[BRShareOperation initWithURL:]_block_invoke", 269);
      v21 = brc_default_log(0, 0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v25 = *(a1 + 40);
        *buf = 138412802;
        v31 = v25;
        v32 = 2112;
        v33 = v7;
        v34 = 2112;
        v35 = v20;
        _os_log_fault_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_FAULT, "[CRIT] failed to get services for url %@ (%@)%@", buf, 0x20u);
      }

      v19 = v7;
    }

    dispatch_group_leave(*(*(a1 + 32) + 296));
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:@"com.apple.CloudDocs.private.SharingOperation"];
    v9 = *(a1 + 32);
    v10 = *(v9 + 312);
    *(v9 + 312) = v8;

    v11 = *(*(a1 + 32) + 312);
    if (v11)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __32__BRShareOperation_initWithURL___block_invoke_53;
      v26[3] = &unk_1E7A14C30;
      v27 = *(a1 + 40);
      v28 = 0;
      v29 = *(a1 + 32);
      [v11 getFileProviderConnectionWithCompletionHandler:v26];
    }

    else
    {
      v23 = brc_bread_crumbs("[BRShareOperation initWithURL:]_block_invoke", 276);
      v24 = brc_default_log(0, 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        __32__BRShareOperation_initWithURL___block_invoke_cold_1();
      }

      dispatch_group_leave(*(*(a1 + 32) + 296));
    }
  }
}

void __32__BRShareOperation_initWithURL___block_invoke_53(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    v14 = brc_bread_crumbs("[BRShareOperation initWithURL:]_block_invoke", 282);
    v15 = brc_default_log(0, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __32__BRShareOperation_initWithURL___block_invoke_53_cold_1();
    }

    v11 = a1 + 48;
  }

  else
  {
    v7 = BRCXPCSharingOperationInterface(v5);
    [v6 setRemoteObjectInterface:v7];

    v8 = brc_bread_crumbs("[BRShareOperation initWithURL:]_block_invoke", 287);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_INFO, "[INFO] got sharing service proxy%@", &v16, 0xCu);
    }

    v10 = [v6 remoteObjectProxy];
    v12 = *(a1 + 48);
    v11 = a1 + 48;
    v13 = *(v12 + 320);
    *(v12 + 320) = v10;

    [v6 resume];
  }

  dispatch_group_leave(*(*v11 + 296));
}

- (id)remoteObject
{
  serviceGroup = self->_serviceGroup;
  if (serviceGroup)
  {
    dispatch_group_wait(serviceGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  remoteObject = self->_remoteObject;
  if (remoteObject)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__BRShareOperation_remoteObject__block_invoke;
    v10[3] = &unk_1E7A14830;
    v10[4] = self;
    v5 = [(BRShareOperationProtocol *)remoteObject remoteObjectProxyWithErrorHandler:v10];
  }

  else
  {
    initError = self->_initError;
    if (initError)
    {
      v7 = initError;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    }

    v8 = v7;
    v5 = [(FPXPCAutomaticErrorProxy *)[BRXPCAutomaticErrorProxy alloc] initWithConnection:0 protocol:&unk_1F240B1E8 orError:v7 name:@"broken sharing service proxy" requestPid:0];
  }

  return v5;
}

- (BOOL)shouldUseDirectConnection
{
  itemID = [(BRShareOperation *)self itemID];
  if (itemID)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BRShareOperation *)self url];
    v4 = v5 == 0;
  }

  return v4;
}

- (id)remoteLegacyObject
{
  v3 = brc_bread_crumbs("[BRShareOperation remoteLegacyObject]", 336);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [BRShareOperation remoteLegacyObject];
  }

  v5 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_remoteLegacyObject];
  [(BROperation *)self completedWithResult:0 error:v5];

  return 0;
}

- (void)initWithShare:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithItemIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithURL:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithURL:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = v0;
  _os_log_error_impl(&dword_1AE2A9000, v1, 0x90u, "[ERROR] failed to fetch full file path url for %@%@", v2, 0x16u);
}

void __32__BRShareOperation_initWithURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_1();
  v4 = *MEMORY[0x1E69E9840];
  v2 = [v1 allKeys];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] services didn't contain sharing service (contained %@)%@", v3, 0x16u);
}

void __32__BRShareOperation_initWithURL___block_invoke_53_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_fault_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_FAULT, "[CRIT] failed to get sharing service connection for url %@ (%@)%@", v4, 0x20u);
}

- (void)remoteLegacyObject
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Asking for Legacy object when FPFS is enabled%@", v1, 0xCu);
}

@end