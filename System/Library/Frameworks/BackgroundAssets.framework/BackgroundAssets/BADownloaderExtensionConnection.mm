@interface BADownloaderExtensionConnection
- (BADownloaderExtension)principalObject;
- (BADownloaderExtensionConnection)initWithPrincipalObject:(id)object;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (id)acquireWakeAssertion;
- (uint64_t)_markPurgeableWithFileURL:(void *)l error:;
- (void)backgroundDownload:(id)download failedWithError:(id)error completionHandler:(id)handler;
- (void)backgroundDownload:(id)download finishedWithSandboxToken:(id)token completionHandler:(id)handler;
- (void)downloadsForRequest:(int64_t)request manifestURL:(id)l manifestToken:(id)token extensionInfo:(id)info completionHandler:(id)handler;
- (void)extensionWillTerminate;
- (void)receivedAuthenticationChallenge:(id)challenge download:(id)download completionHandler:(id)handler;
- (void)setPrincipalObject:(id)object;
@end

@implementation BADownloaderExtensionConnection

- (BADownloaderExtensionConnection)initWithPrincipalObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = BADownloaderExtensionConnection;
  v5 = [(BADownloaderExtensionConnection *)&v14 init];
  if (v5)
  {
    v6 = +[BADownloadManager sharedManager];
    [(BADownloadManager *)v6 setExtensionConnection:v5];

    v7 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v10 = [v7 stringWithFormat:@"%@.work-queue", bundleIdentifier];

    v11 = dispatch_queue_create([v10 UTF8String], 0);
    objc_setProperty_atomic(v5, v12, v11, 32);

    [(BADownloaderExtensionConnection *)v5 setPrincipalObject:objectCopy];
  }

  return v5;
}

- (BADownloaderExtension)principalObject
{
  if ([objc_opt_class() conformsToProtocol:&unk_2849E2B90])
  {
    extensionWrapper = [(BADownloaderExtensionConnection *)self extensionWrapper];
  }

  else
  {
    extensionWrapper = self->_principalObject;
  }

  return extensionWrapper;
}

- (void)setPrincipalObject:(id)object
{
  objectCopy = object;
  objc_storeStrong(&self->_principalObject, object);
  if ([objc_opt_class() conformsToProtocol:&unk_2849E2B90])
  {
    v5 = [[BAManagedDownloaderExtensionWrapper alloc] initWithWrappedExtension:objectCopy];
    [(BADownloaderExtensionConnection *)self setExtensionWrapper:v5];
  }

  else
  {
    [(BADownloaderExtensionConnection *)self setExtensionWrapper:0];
  }
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) UTF8String];
  if (sandbox_extension_consume() != -1)
  {
    v2 = +[BADownloadManager sharedManager];
    [(BADownloadManager *)v2 setScheduleLocked:?];

    v3 = [MEMORY[0x277CBEB98] set];
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(v1 + 48) downloadsForRequest:*(v1 + 72) manifestURL:*(v1 + 40) extensionInfo:*(v1 + 56)];

      v3 = v4;
    }

    sandbox_extension_release();
    if (!v3)
    {
      goto LABEL_27;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = *v43;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v1 = *(v1 + 64);
          v14 = [MEMORY[0x277CBEB98] set];
          (*(v1 + 16))(v1, 0, v14);

          v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v15)
          {
            __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
          }

          __break(0xB001u);
LABEL_24:
          v1 = *(v1 + 64);
          v23 = [MEMORY[0x277CBEB98] set];
          (*(v1 + 16))(v1, 0, v23);

          v24 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v24)
          {
            __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
          }

          __break(0xB001u);
LABEL_27:
          v32 = *(v1 + 64);
          v33 = [MEMORY[0x277CBEB98] set];
          (*(v32 + 16))(v32, 0, v33);

          v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v34)
          {
            __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_3(v34, v35, v36, v37, v38, v39, v40, v41);
          }

          __break(0xB001u);
        }

        if ((*(v1 + 72) - 1) >= 2 && [v10 necessity] == 1)
        {
          goto LABEL_24;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v7)
      {
LABEL_16:

        (*(*(v1 + 64) + 16))();
        v11 = +[BADownloadManager sharedManager];
        [(BADownloadManager *)v11 setScheduleLocked:?];

        goto LABEL_20;
      }
    }
  }

  v12 = BASystemLogObject(-1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_4(v1, v12);
  }

  v13 = *(v1 + 64);
  v5 = [MEMORY[0x277CBEB98] set];
  (*(v13 + 16))(v13, 0, v5);
LABEL_20:
}

uint64_t __94__BADownloaderExtensionConnection_receivedAuthenticationChallenge_download_completionHandler___block_invoke(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    return [v2 backgroundDownload:v3 didReceiveChallenge:v4 completionHandler:v5];
  }

  else
  {
    v7 = *(a1[7] + 16);

    return v7();
  }
}

- (void)extensionWillTerminate
{
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (objc_opt_respondsToSelector())
  {
    [principalObject extensionWillTerminate];
  }
}

uint64_t __88__BADownloaderExtensionConnection_backgroundDownload_failedWithError_completionHandler___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) backgroundDownload:*(a1 + 40) failedWithError:*(a1 + 48)];
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  if (sandbox_extension_consume() != -1)
  {
    v2 = *(a1 + 40);
    v29 = 0;
    v30 = 0;
    v3 = [v2 cloneDownloadToFinalDestinationURL:&v30 error:&v29];
    v4 = v30;
    v5 = v29;
    v6 = *(a1 + 40);
    if ((v3 & 1) == 0)
    {
      [(BADownload *)v6 setInternalState:?];
      v20 = objc_opt_respondsToSelector();
      if (v20)
      {
        v20 = [*(a1 + 48) backgroundDownload:*(a1 + 40) failedWithError:v5];
      }

      v16 = BAClientLogObject(v20);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_31;
    }

    if (([(BADownload *)v6 isForManagedAssetPack]& 1) == 0)
    {
      v7 = *(a1 + 56);
      v28 = v5;
      v8 = [(BADownloaderExtensionConnection *)v7 _markPurgeableWithFileURL:v4 error:&v28];
      v9 = v28;

      if ((v8 & 1) == 0)
      {
        v21 = BAClientLogObject(v10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_2();
        }

        [(BADownload *)*(a1 + 40) setInternalState:?];
        v22 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = 0;
        v23 = [v22 removeItemAtURL:v4 error:&v27];
        v16 = v27;

        if ((v23 & 1) == 0)
        {
          v25 = BAClientLogObject(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_3();
          }
        }

        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 48) backgroundDownload:*(a1 + 40) failedWithError:v9];
        }

        v5 = v9;
        goto LABEL_31;
      }

      v5 = v9;
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) backgroundDownload:*(a1 + 40) finishedWithFileURL:v4];
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v4 path];
    v13 = [v11 fileExistsAtPath:v12];

    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v15 = [v14 removeItemAtURL:v4 error:&v26];
    v16 = v26;

    if ((v15 & 1) == 0)
    {
      v18 = BAClientLogObject(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_4();
      }
    }

LABEL_31:

LABEL_32:
    sandbox_extension_release();
    (*(*(a1 + 64) + 16))();

    goto LABEL_33;
  }

  v19 = BASystemLogObject(-1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_5(a1, v19);
  }

  v4 = NSErrorWithBAErrorCode(-108);
  [(BADownload *)*(a1 + 40) setInternalState:?];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) backgroundDownload:*(a1 + 40) failedWithError:v4];
  }

  (*(*(a1 + 64) + 16))();
LABEL_33:
}

- (uint64_t)_markPurgeableWithFileURL:(void *)l error:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    [v5 fileSystemRepresentation];
    Property = objc_getProperty(self, v7, 48, 1);
    if (Property)
    {
      objc_msgSend_auditToken(Property);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v9 = sandbox_extension_issue_file_to_process();
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      free(v9);
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      *&v18 = 0;
      *(&v18 + 1) = &v18;
      *&v19 = 0x3032000000;
      *(&v19 + 1) = __Block_byref_object_copy__119;
      v20 = __Block_byref_object_dispose__120;
      v21 = 0;
      v12 = objc_getProperty(self, v11, 48, 1);
      v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_122];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke_123;
      v17[3] = &unk_278A0CFA0;
      v17[4] = &v22;
      v17[5] = &v18;
      [v13 markPurgeableWithFileURL:v6 sandboxToken:v10 reply:v17];

      if (l)
      {
        *l = *(*(&v18 + 1) + 40);
      }

      LOBYTE(self) = *(v23 + 24);
      _Block_object_dispose(&v18, 8);

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      if (!l)
      {
        LOBYTE(self) = 0;
        goto LABEL_12;
      }

      v14 = MEMORY[0x277CCA9B8];
      self = *__error();
      v26 = @"FileURL";
      v27[0] = v6;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v10 = [v14 errorWithDomain:*MEMORY[0x277CCA5B8] code:self userInfo:v15];

      NSErrorWithBAErrorDomainCodeUnderlying(@"BAErrorDomain", -107, v10);
      *l = LOBYTE(self) = 0;
    }
  }

LABEL_12:

  return self & 1;
}

- (id)acquireWakeAssertion
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  v2 = [(BADownloaderExtensionConnection *)self synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = dispatch_block_create(0, &__block_literal_global_111);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_2;
  v6[3] = &unk_278A0CF78;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [v3 incrementWakeAssertionWithReply:v6];
  v4 = _Block_copy(v10[5]);

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BAClientLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_cold_1(v2);
  }
}

void __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_3;
  block[3] = &unk_278A0CF50;
  v6 = *(a1 + 32);
  v2 = dispatch_block_create(0, block);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BAClientLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke_cold_1(v2);
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  v26[4] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849DEC78];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  objc_opt_class();
  [OUTLINED_FUNCTION_7() setWithObjects:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v7 = MEMORY[0x277CBEB98];
  objc_opt_class();
  [OUTLINED_FUNCTION_7() setWithObjects:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v11 forSelector:sel_receivedAuthenticationChallenge_download_completionHandler_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v16 = MEMORY[0x277CBEB98];
  objc_opt_class();
  [OUTLINED_FUNCTION_7() setWithObjects:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  objc_claimAutoreleasedReturnValue();
  v17 = [OUTLINED_FUNCTION_6() setWithArray:?];
  [v4 setClasses:v17 forSelector:sel_backgroundDownload_failedWithError_completionHandler_ argumentIndex:0 ofReply:0];

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  objc_claimAutoreleasedReturnValue();
  v18 = [OUTLINED_FUNCTION_6() setWithArray:?];
  [v4 setClasses:v18 forSelector:sel_backgroundDownload_finishedWithSandboxToken_completionHandler_ argumentIndex:0 ofReply:0];

  v24 = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  objc_claimAutoreleasedReturnValue();
  v19 = [OUTLINED_FUNCTION_6() setWithArray:?];
  [v4 setClasses:v19 forSelector:sel_backgroundDownload_finishedWithSandboxToken_completionHandler_ argumentIndex:1 ofReply:0];

  v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849E2B30];
  [connectionCopy setExportedInterface:v4];
  [connectionCopy setRemoteObjectInterface:v20];
  [connectionCopy setExportedObject:self];
  if (self)
  {
    objc_setProperty_atomic(self, v21, connectionCopy, 48);
  }

  [connectionCopy resume];

  return 1;
}

- (void)downloadsForRequest:(int64_t)request manifestURL:(id)l manifestToken:(id)token extensionInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  tokenCopy = token;
  infoCopy = info;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    self = objc_getProperty(self, v16, 32, 1);
  }

  OUTLINED_FUNCTION_0();
  v23[1] = 3221225472;
  v23[2] = __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke;
  v23[3] = &unk_278A0CE98;
  v24 = tokenCopy;
  v25 = lCopy;
  v28 = handlerCopy;
  requestCopy = request;
  v26 = principalObject;
  v27 = infoCopy;
  v18 = infoCopy;
  v19 = principalObject;
  v20 = handlerCopy;
  v21 = lCopy;
  v22 = tokenCopy;
  dispatch_async(&self->super.super, v23);
}

- (void)receivedAuthenticationChallenge:(id)challenge download:(id)download completionHandler:(id)handler
{
  challengeCopy = challenge;
  downloadCopy = download;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    self = objc_getProperty(self, v11, 32, 1);
  }

  OUTLINED_FUNCTION_0();
  v17[1] = 3221225472;
  v17[2] = __94__BADownloaderExtensionConnection_receivedAuthenticationChallenge_download_completionHandler___block_invoke;
  v17[3] = &unk_278A0CEC0;
  v18 = principalObject;
  v19 = downloadCopy;
  v20 = challengeCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = challengeCopy;
  v15 = downloadCopy;
  v16 = principalObject;
  dispatch_async(&self->super.super, v17);
}

- (void)backgroundDownload:(id)download failedWithError:(id)error completionHandler:(id)handler
{
  downloadCopy = download;
  errorCopy = error;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    self = objc_getProperty(self, v11, 32, 1);
  }

  OUTLINED_FUNCTION_0();
  v17[1] = 3221225472;
  v17[2] = __88__BADownloaderExtensionConnection_backgroundDownload_failedWithError_completionHandler___block_invoke;
  v17[3] = &unk_278A0CEC0;
  v18 = principalObject;
  v19 = downloadCopy;
  v20 = errorCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = errorCopy;
  v15 = downloadCopy;
  v16 = principalObject;
  dispatch_async(&self->super.super, v17);
}

- (void)backgroundDownload:(id)download finishedWithSandboxToken:(id)token completionHandler:(id)handler
{
  downloadCopy = download;
  tokenCopy = token;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    Property = objc_getProperty(self, v11, 32, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke;
  block[3] = &unk_278A0CEE8;
  v19 = tokenCopy;
  v20 = downloadCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v21 = principalObject;
  v14 = handlerCopy;
  v15 = principalObject;
  v16 = downloadCopy;
  v17 = tokenCopy;
  dispatch_async(Property, block);
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_236E28000, a2, OS_LOG_TYPE_ERROR, "Manifest of %{public}@ finished but sandbox_extension_consume() failed.", &v3, 0xCu);
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  [OUTLINED_FUNCTION_10(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v3, v4, "Download %{public}@ failed to be cloned after download. Error:%{public}@", v5, v6, v7, v8);
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  [OUTLINED_FUNCTION_10(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v3, v4, "Download %{public}@ failed to mark cloned file as purgeable. Error:%{public}@", v5, v6, v7, v8);
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_11();
  [OUTLINED_FUNCTION_10(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v3, v4, "Download %{public}@ failed to remove cloned file failing to be marked as purgeable. Error:%{public}@", v5, v6, v7, v8);
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_11();
  [OUTLINED_FUNCTION_10(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v3, v4, "Download %{public}@ failed to remove cloned file after the client serviced the download. Error:%{public}@", v5, v6, v7, v8);
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_236E28000, a2, OS_LOG_TYPE_ERROR, "Download  %{public}@ finished but sandbox_extension_consume() failed.", &v3, 0xCu);
}

void __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136446466;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, v8);
}

void __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136446466;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, v8);
}

@end