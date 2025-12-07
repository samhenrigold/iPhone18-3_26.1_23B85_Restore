@interface SLDCloudDocsService
+ (id)sharedService;
- (BOOL)_connection:(id)_connection hasPermissionForFileURL:(id)l;
- (BOOL)_fileURLHasFileProvider:(id)provider error:(id *)error;
- (NSArray)highlights;
- (NSCache)urlToCollaborationHighlightCache;
- (SLDCloudDocsService)init;
- (int64_t)_acquireSandboxHandleData:(id)data ForFileProviderDocumentURL:(id)l clientConnection:(id)connection error:(id *)error;
- (void)_releaseSandboxHandle:(int64_t)handle;
- (void)fetchHighlights;
- (void)generateURLToCollaborationHighlightCache;
- (void)getCollaborationHighlightForShareURL:(id)l fileURL:(id)rL sandboxTokenData:(id)data reply:(id)reply;
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterDidAddHighlights:(id)highlights;
- (void)setHighlights:(id)highlights;
- (void)setUrlToCollaborationHighlightCache:(id)cache;
- (void)shareURLForFileURL:(id)l sandboxTokenData:(id)data reply:(id)reply;
@end

@implementation SLDCloudDocsService

+ (id)sharedService
{
  if (sharedService_onceToken_1 != -1)
  {
    +[SLDCloudDocsService sharedService];
  }

  v3 = sharedService_sService_1;

  return v3;
}

- (SLDCloudDocsService)init
{
  v9.receiver = self;
  v9.super_class = SLDCloudDocsService;
  v2 = [(SLDRemoteRenderingService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.sociallaterd.cloudDocsHighlightsCache", v3);
    cloudDocsAccessQueue = v2->_cloudDocsAccessQueue;
    v2->_cloudDocsAccessQueue = v4;

    v6 = objc_alloc_init(SLHighlightCenter);
    [(SLDCloudDocsService *)v2 setHighlightCenter:v6];

    highlightCenter = [(SLDCloudDocsService *)v2 highlightCenter];
    [highlightCenter setDelegate:v2];

    [(SLDCloudDocsService *)v2 fetchHighlights];
  }

  return v2;
}

uint64_t __36__SLDCloudDocsService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCloudDocsService);
  v1 = sharedService_sService_1;
  sharedService_sService_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)shareURLForFileURL:(id)l sandboxTokenData:(id)data reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dataCopy = data;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v12 = SLDaemonLogHandle(currentConnection);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[SLDCloudDocsService shareURLForFileURL:sandboxTokenData:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    *&buf[22] = 2112;
    v31 = dataCopy;
    _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_DEFAULT, "%s fileURL: %@ sandboxTokenData: %@", buf, 0x20u);
  }

  if (lCopy && dataCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v14 = [(SLDCloudDocsService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:lCopy clientConnection:currentConnection error:&v29];
    v15 = v29;
    v16 = v15;
    v31 = v14;
    if (*(*&buf[8] + 24) == -1)
    {
      if (!v15)
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:1 userInfo:0];
      }

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CFAED8]);
      identifier = [*MEMORY[0x277CE1E90] identifier];
      v19 = [v17 initWithFileURL:lCopy documentType:identifier];

      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke;
      v25 = &unk_278926478;
      selfCopy = self;
      v28 = buf;
      v27 = replyCopy;
      [v19 setCopyShareURLCompletionBlock:&v22];
      v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v20 setMaxConcurrentOperationCount:{1, v22, v23, v24, v25, selfCopy}];
      [v20 addOperation:v19];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = SLDaemonLogHandle(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      *&buf[22] = 2112;
      v31 = dataCopy;
      _os_log_error_impl(&dword_231772000, v21, OS_LOG_TYPE_ERROR, "[SLDCloudDocsService: %p] invalid fileURL/sandboxTokenData passed in: %@, %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, 0);
  }
}

void __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _releaseSandboxHandle:*(*(*(a1 + 48) + 8) + 24)];
  if (!v5 || v6)
  {
    v9 = SLDaemonLogHandle(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke_cold_1((a1 + 32), v6, v9);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = SLURLMinusFragmentForCKURLs(v5);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getCollaborationHighlightForShareURL:(id)l fileURL:(id)rL sandboxTokenData:(id)data reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v15 = SLDaemonLogHandle(currentConnection);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    selfCopy = "[SLDCloudDocsService getCollaborationHighlightForShareURL:fileURL:sandboxTokenData:reply:]";
    v34 = 2112;
    v35 = lCopy;
    v36 = 2112;
    v37 = rLCopy;
    v38 = 2112;
    v39 = dataCopy;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "%s shareURL: %@ fileURL: %@ sandboxTokenData: %@", buf, 0x2Au);
  }

  if (rLCopy && lCopy && dataCopy)
  {
    v17 = SLURLMinusFragmentForCKURLs(lCopy);
    v31 = 0;
    v18 = [(SLDCloudDocsService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:rLCopy clientConnection:currentConnection error:&v31];
    v19 = v31;
    v20 = v19;
    if (v18 == -1)
    {
      if (!v19)
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:1 userInfo:0];
      }

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v30 = currentConnection;
      v21 = v17;
      highlightCenter = [(SLDCloudDocsService *)self highlightCenter];
      highlights = [highlightCenter highlights];
      v24 = [highlights count];

      if (v24)
      {
        urlToCollaborationHighlightCache = [(SLDCloudDocsService *)self urlToCollaborationHighlightCache];
        v17 = v21;
        v27 = [urlToCollaborationHighlightCache objectForKey:v21];

        (replyCopy)[2](replyCopy, v27);
      }

      else
      {
        v29 = SLDaemonLogHandle(v25);
        v17 = v21;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [SLDCloudDocsService getCollaborationHighlightForShareURL:fileURL:sandboxTokenData:reply:];
        }

        replyCopy[2](replyCopy, 0);
      }

      currentConnection = v30;
    }
  }

  else
  {
    v28 = SLDaemonLogHandle(v16);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v34 = 2112;
      v35 = lCopy;
      v36 = 2112;
      v37 = rLCopy;
      v38 = 2112;
      v39 = dataCopy;
      _os_log_error_impl(&dword_231772000, v28, OS_LOG_TYPE_ERROR, "[SLDCloudDocsService: %p] invalid shareURL/fileURL/sandboxTokenData passed in: %@, %@, %@", buf, 0x2Au);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (NSArray)highlights
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SLDCloudDocsService_highlights__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cloudDocsAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setHighlights:(id)highlights
{
  highlightsCopy = highlights;
  highlights = [(SLDCloudDocsService *)self highlights];
  v6 = [highlightsCopy isEqualToArray:highlights];

  if ((v6 & 1) == 0)
  {
    cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__SLDCloudDocsService_setHighlights___block_invoke;
    v8[3] = &unk_278925CF0;
    v8[4] = self;
    v9 = highlightsCopy;
    dispatch_barrier_async(cloudDocsAccessQueue, v8);
  }
}

- (NSCache)urlToCollaborationHighlightCache
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SLDCloudDocsService_urlToCollaborationHighlightCache__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cloudDocsAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setUrlToCollaborationHighlightCache:(id)cache
{
  cacheCopy = cache;
  urlToCollaborationHighlightCache = [(SLDCloudDocsService *)self urlToCollaborationHighlightCache];
  v6 = [cacheCopy isEqual:urlToCollaborationHighlightCache];

  if ((v6 & 1) == 0)
  {
    cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SLDCloudDocsService_setUrlToCollaborationHighlightCache___block_invoke;
    v8[3] = &unk_278925CF0;
    v8[4] = self;
    v9 = cacheCopy;
    dispatch_barrier_async(cloudDocsAccessQueue, v8);
  }
}

- (void)generateURLToCollaborationHighlightCache
{
  v23 = *MEMORY[0x277D85DE8];
  urlToCollaborationHighlightCache = [(SLDCloudDocsService *)self urlToCollaborationHighlightCache];
  allObjects = [urlToCollaborationHighlightCache allObjects];
  v5 = [allObjects count];

  highlights = [(SLDCloudDocsService *)self highlights];
  v7 = [highlights count];

  if (v5 != v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    highlights2 = [(SLDCloudDocsService *)self highlights];
    v10 = [highlights2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(highlights2);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            resourceURL = [v15 resourceURL];
            v17 = SLURLMinusFragmentForCKURLs(resourceURL);
            [v8 setObject:v15 forKey:v17];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [highlights2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(SLDCloudDocsService *)self setUrlToCollaborationHighlightCache:v8];
  }
}

- (void)fetchHighlights
{
  highlightCenter = [(SLDCloudDocsService *)self highlightCenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SLDCloudDocsService_fetchHighlights__block_invoke;
  v4[3] = &unk_2789264A0;
  v4[4] = self;
  [highlightCenter fetchHighlights:v4];
}

void __38__SLDCloudDocsService_fetchHighlights__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setHighlights:a2];
    v3 = *(a1 + 32);

    [v3 generateURLToCollaborationHighlightCache];
  }

  else
  {
    v4 = SLDaemonLogHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__SLDCloudDocsService_fetchHighlights__block_invoke_cold_1(a1, v4);
    }
  }
}

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SLDaemonLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[%p] Handling highlightCenter:didRemoveHighlights: delegate callback", &v6, 0xCu);
  }

  [(NSCache *)self->_urlToCollaborationHighlightCache removeAllObjects];
  [(SLDCloudDocsService *)self fetchHighlights];
}

- (void)highlightCenterDidAddHighlights:(id)highlights
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SLDaemonLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "[%p] Handling highlightCenterDidAddHighlights: delegate callback", &v5, 0xCu);
  }

  [(NSCache *)self->_urlToCollaborationHighlightCache removeAllObjects];
  [(SLDCloudDocsService *)self fetchHighlights];
}

- (int64_t)_acquireSandboxHandleData:(id)data ForFileProviderDocumentURL:(id)l clientConnection:(id)connection error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  connectionCopy = connection;
  if (![dataCopy length])
  {
    v14 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

    goto LABEL_7;
  }

  buf[0] = 0;
  v13 = [dataCopy getBytes:buf range:{objc_msgSend(dataCopy, "length") - 1, 1}];
  if (buf[0])
  {
    v14 = SLDaemonLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

LABEL_7:

LABEL_8:
    v16 = SLDaemonLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:2 userInfo:0];
    }

LABEL_12:
    v17 = -1;
    goto LABEL_13;
  }

  [dataCopy bytes];
  v15 = sandbox_extension_consume();
  if (v15 == -1)
  {
    goto LABEL_8;
  }

  v17 = v15;
  v19 = [(SLDCloudDocsService *)self _connection:connectionCopy hasPermissionForFileURL:lCopy];
  if ((v19 & 1) == 0)
  {
    v24 = SLDaemonLogHandle(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v28 = 2112;
      v29 = lCopy;
      v30 = 2112;
      v31 = connectionCopy;
      _os_log_error_impl(&dword_231772000, v24, OS_LOG_TYPE_ERROR, "[%p] _acquireSandboxHandleData: acquired a sandbox handle for a file (%@), but the xpc connection (%@) does not have permission to access the file. Releasing sandbox handle.", buf, 0x20u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:4 userInfo:0];
    }

    [(SLDCloudDocsService *)self _releaseSandboxHandle:v17];
    goto LABEL_12;
  }

  v25 = 0;
  v20 = [(SLDCloudDocsService *)self _fileURLHasFileProvider:lCopy error:&v25];
  v21 = v25;
  v22 = SLDaemonLogHandle(v21);
  v23 = v22;
  if (!v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v28 = 2112;
      v29 = lCopy;
      v30 = 2112;
      v31 = v21;
      _os_log_error_impl(&dword_231772000, v23, OS_LOG_TYPE_ERROR, "[%p] _acquireSandboxHandleData: acquired a sandbox handle for a file (%@), but could not find a valid FPItem for that file. This file might not be managed by a FileProvider. Releasing sandbox handle. FileProvider error: %@", buf, 0x20u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:3 userInfo:0];
    }

    [(SLDCloudDocsService *)self _releaseSandboxHandle:v17];

    goto LABEL_12;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v28 = 2048;
    v29 = v17;
    v30 = 2112;
    v31 = lCopy;
    _os_log_impl(&dword_231772000, v23, OS_LOG_TYPE_DEFAULT, "[%p] _acquireSandboxHandleData: acquired a new handle: %lld for file: %@", buf, 0x20u);
  }

LABEL_13:
  return v17;
}

- (BOOL)_fileURLHasFileProvider:(id)provider error:(id *)error
{
  v5 = MEMORY[0x277CC6408];
  providerCopy = provider;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager itemForURL:providerCopy error:error];

  return v8 != 0;
}

- (BOOL)_connection:(id)_connection hasPermissionForFileURL:(id)l
{
  _connectionCopy = _connection;
  lCopy = l;
  if (_connectionCopy && (objc_msgSend_auditToken(_connectionCopy), [lCopy isFileURL]) && (objc_msgSend(lCopy, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    objc_msgSend_auditToken(_connectionCopy);
    path = [lCopy path];
    [path fileSystemRepresentation];
    v10 = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_releaseSandboxHandle:(int64_t)handle
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = sandbox_extension_release();
  v6 = v5;
  v7 = SLDaemonLogHandle(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SLDCloudDocsService *)self _releaseSandboxHandle:handle, v8];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    selfCopy = self;
    v11 = 2048;
    handleCopy = handle;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "[%p] _releaseSandboxHandle: released handle: %lld", &v9, 0x16u);
  }
}

void __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "[SLDCloudDocsService: %p] failed to get url with error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __38__SLDCloudDocsService_fetchHighlights__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[%p] fetchHighlights: failed to fetch highlights", &v3, 0xCu);
}

- (void)_releaseSandboxHandle:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2048;
  HIWORD(v3) = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "[%p] _releaseSandboxHandle: unable to release sandbox extension handle: %lld. Sandbox extensions are a limited resource and this should be investigated!", v3, *(&v3 + 1));
}

@end