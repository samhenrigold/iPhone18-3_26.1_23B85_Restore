@interface MADEmbeddingStoreService
+ (BOOL)isEntitledForInProcessAccess;
+ (id)sharedService;
+ (void)configureServerInterface:(id)interface;
- (MADEmbeddingStoreService)init;
- (id)connection;
- (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l options:(id)options error:(id *)error;
- (id)initInternal;
- (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l options:(id)options error:(id *)error;
- (void)checkSandboxExtensionForPhotoLibraryURL:(id)l error:(id *)error;
- (void)dealloc;
- (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error;
@end

@implementation MADEmbeddingStoreService

- (MADEmbeddingStoreService)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStoreService init] unavialable; please call [MADEmbeddingStoreService service]", v4, 2u);
  }

  return 0;
}

- (id)initInternal
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MADEmbeddingStoreService;
  v2 = [(MADEmbeddingStoreService *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MADEmbeddingStoreService.connectionQueue", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;

    v5 = dispatch_queue_create("MADEmbeddingStoreService.sandboxQueue", 0);
    sandboxQueue = v2->_sandboxQueue;
    v2->_sandboxQueue = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sandboxHandles = v2->_sandboxHandles;
    v2->_sandboxHandles = dictionary;

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (([processName isEqualToString:@"mediaanalysisd"] & 1) != 0 || objc_msgSend(processName, "isEqualToString:", @"mediaanalysisd-service"))
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = processName;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADEmbeddingStoreService] calling service from MAD daemon (%@)", buf, 0xCu);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = processName;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADEmbeddingStoreService] calling service from client process (%@), using read-only vector database", buf, 0xCu);
      }

      v11 = +[MADVectorDatabaseManager sharedManager];
      [v11 setReadOnly:1];
    }
  }

  return v2;
}

+ (id)sharedService
{
  if (+[MADEmbeddingStoreService sharedService]::once != -1)
  {
    +[MADEmbeddingStoreService sharedService];
  }

  v3 = +[MADEmbeddingStoreService sharedService]::instance;

  return v3;
}

void __41__MADEmbeddingStoreService_sharedService__block_invoke()
{
  v0 = [[MADEmbeddingStoreService alloc] initInternal];
  v1 = +[MADEmbeddingStoreService sharedService]::instance;
  +[MADEmbeddingStoreService sharedService]::instance = v0;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_sandboxHandles allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v6) longLongValue];
        sandbox_extension_release();
        ++v6;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v7.receiver = self;
  v7.super_class = MADEmbeddingStoreService;
  [(MADEmbeddingStoreService *)&v7 dealloc];
}

+ (void)configureServerInterface:(id)interface
{
  v19[2] = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  v4 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v6 = [v4 setWithArray:v5];
  [interfaceCopy setClasses:v6 forSelector:sel_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_reply_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v9 = [v7 setWithArray:v8];
  [interfaceCopy setClasses:v9 forSelector:sel_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_reply_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v10 setWithArray:v11];
  [interfaceCopy setClasses:v12 forSelector:sel_searchWithEmbeddings_photoLibraryURL_options_reply_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v15 = [v13 setWithArray:{v14, v16[0]}];
  [interfaceCopy setClasses:v15 forSelector:sel_searchWithEmbeddings_photoLibraryURL_options_reply_ argumentIndex:0 ofReply:1];
}

- (id)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  connectionQueue = self->_connectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MADEmbeddingStoreService_connection__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__MADEmbeddingStoreService_connection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [objc_opt_class() serviceName];
    v5 = [v3 initWithMachServiceName:v4 options:0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(*(a1 + 32) + 16);
    v9 = [[MADEmbeddingStoreServiceProxy alloc] initWithService:*(a1 + 32)];
    [v8 setExportedObject:v9];

    v10 = *(*(a1 + 32) + 16);
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49CEA80];
    [v10 setExportedInterface:v11];

    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19D90];
    [objc_opt_class() configureServerInterface:v12];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v12];
    [*(*(a1 + 32) + 16) setInterruptionHandler:&__block_literal_global_238];
    objc_initWeak(&location, *(a1 + 32));
    v13 = *(*(a1 + 32) + 16);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __38__MADEmbeddingStoreService_connection__block_invoke_239;
    v17 = &unk_1E834D098;
    objc_copyWeak(&v18, &location);
    [v13 setInvalidationHandler:&v14];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void __38__MADEmbeddingStoreService_connection__block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __38__MADEmbeddingStoreService_connection__block_invoke_2_cold_1();
  }
}

void __38__MADEmbeddingStoreService_connection__block_invoke_239(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __38__MADEmbeddingStoreService_connection__block_invoke_239_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MADEmbeddingStoreService_connection__block_invoke_240;
    block[3] = &unk_1E834BDC0;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __38__MADEmbeddingStoreService_connection__block_invoke_240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

+ (BOOL)isEntitledForInProcessAccess
{
  if (+[MADEmbeddingStoreService isEntitledForInProcessAccess]::onceToken != -1)
  {
    +[MADEmbeddingStoreService isEntitledForInProcessAccess];
  }

  return +[MADEmbeddingStoreService isEntitledForInProcessAccess]::entitled;
}

const void **__56__MADEmbeddingStoreService_isEntitledForInProcessAccess__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  v6 = v0;
  if (v0)
  {
    v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.mediaanalysisd.datamanagement.embedding", 0);
    *cf1 = v1;
    v3 = v1 && (v2 = CFGetTypeID(v1), v2 == CFBooleanGetTypeID()) && CFEqual(*cf1, *MEMORY[0x1E695E4D0]) != 0;
    +[MADEmbeddingStoreService isEntitledForInProcessAccess]::entitled = v3;
    CF<__CVBuffer *>::~CF(cf1);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    if (+[MADEmbeddingStoreService isEntitledForInProcessAccess]::entitled)
    {
      v4 = "entitled";
    }

    else
    {
      v4 = "NOT entitled";
    }

    *cf1 = 136315138;
    *&cf1[4] = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Process is %s to access embedding store in-process", cf1, 0xCu);
  }

  return CF<__CVBuffer *>::~CF(&v6);
}

- (void)checkSandboxExtensionForPhotoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  sandboxQueue = self->_sandboxQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MADEmbeddingStoreService_checkSandboxExtensionForPhotoLibraryURL_error___block_invoke;
  block[3] = &unk_1E834D7D0;
  block[4] = self;
  v10 = lCopy;
  errorCopy = error;
  v8 = lCopy;
  dispatch_sync(sandboxQueue, block);
}

void __74__MADEmbeddingStoreService_checkSandboxExtensionForPhotoLibraryURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (!v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__20;
    v19 = __Block_byref_object_dispose__20;
    v20 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = -1;
    v3 = [*(a1 + 32) connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__MADEmbeddingStoreService_checkSandboxExtensionForPhotoLibraryURL_error___block_invoke_2;
    v10[3] = &unk_1E834CCA0;
    v10[4] = &v15;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__MADEmbeddingStoreService_checkSandboxExtensionForPhotoLibraryURL_error___block_invoke_249;
    v9[3] = &unk_1E834D7A8;
    v9[4] = &v15;
    v9[5] = &v11;
    [v4 requestEmbeddingStoreSandboxExtensionWithPhotoLibraryURL:v5 reply:v9];

    v6 = v16[5];
    if (v6)
    {
      **(a1 + 48) = v6;
    }

    else
    {
      v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

      if (!v7)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v12[3]];
        [*(*(a1 + 32) + 32) setObject:v8 forKeyedSubscript:*(a1 + 40)];
      }
    }

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }
}

void __74__MADEmbeddingStoreService_checkSandboxExtensionForPhotoLibraryURL_error___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStoreService] Error connecting to embedding store service - %@", &v7, 0xCu);
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __74__MADEmbeddingStoreService_checkSandboxExtensionForPhotoLibraryURL_error___block_invoke_249(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = [v6 copy];
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    [v5 UTF8String];
    *(*(*(a1 + 40) + 8) + 24) = sandbox_extension_consume();
    if ((*(*(*(a1 + 40) + 8) + 24) & 0x8000000000000000) != 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStoreService] Failed to consume EmbeddingStore directory sandbox extension", v17, 2u);
      }

      v8 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStoreService] Failed to consume EmbeddingStore directory sandbox extension"];
      v19[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v11 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

- (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  optionsCopy = options;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__20;
  v60 = __Block_byref_object_dispose__20;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__20;
  v54 = __Block_byref_object_dispose__20;
  v55 = 0;
  if (lCopy)
  {
    systemPhotoLibraryURL = lCopy;
  }

  else
  {
    systemPhotoLibraryURL = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v14 = systemPhotoLibraryURL;
  if (![objc_opt_class() isEntitledForInProcessAccess])
  {
    v19 = MediaAnalysisLogLevel();
    if (v19 >= 5)
    {
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v20 = [dsCopy count];
        *buf = 67109120;
        v63 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADEmbeddingStoreService] Performing XPC embedding fetching for %u assets", buf, 8u);
      }
    }

    v21 = VCPSignPostLog(v19);
    v22 = os_signpost_id_generate(v21);

    v24 = VCPSignPostLog(v23);
    v25 = v24;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADEmbeddingStore_XPCFetch", "", buf, 2u);
    }

    connection = [(MADEmbeddingStoreService *)self connection];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __88__MADEmbeddingStoreService_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke;
    v47[3] = &unk_1E834CCA0;
    v47[4] = &v56;
    v27 = [connection synchronousRemoteObjectProxyWithErrorHandler:v47];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __88__MADEmbeddingStoreService_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke_259;
    v46[3] = &unk_1E834C890;
    v46[4] = &v50;
    v46[5] = &v56;
    [v27 fetchEmbeddingsWithAssetUUIDs:dsCopy photoLibraryURL:v14 options:optionsCopy reply:v46];

    v29 = VCPSignPostLog(v28);
    v30 = v29;
    if (v22 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v31 = "MADEmbeddingStore_XPCFetch";
    v32 = v30;
    v33 = v22;
    goto LABEL_26;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v15 = [dsCopy count];
    *buf = 67109120;
    v63 = v15;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADEmbeddingStoreService] Performing in-process embedding fetching for %u assets", buf, 8u);
  }

  v16 = (v57 + 5);
  obj = v57[5];
  [(MADEmbeddingStoreService *)self checkSandboxExtensionForPhotoLibraryURL:v14 error:&obj];
  objc_storeStrong(v16, obj);
  v17 = v57[5];
  if (v17)
  {
    v18 = 0;
    if (error)
    {
      *error = v17;
    }

    goto LABEL_31;
  }

  v34 = VCPSignPostLog(0);
  v35 = os_signpost_id_generate(v34);

  v37 = VCPSignPostLog(v36);
  v38 = v37;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "MADEmbeddingStore_InProcessFetch", "", buf, 2u);
  }

  v39 = (v57 + 5);
  v48 = v57[5];
  v40 = [MADEmbeddingStore fetchEmbeddingsWithAssetUUIDs:dsCopy photoLibraryURL:v14 options:optionsCopy error:&v48];
  objc_storeStrong(v39, v48);
  v41 = v51[5];
  v51[5] = v40;

  v43 = VCPSignPostLog(v42);
  v30 = v43;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    v31 = "MADEmbeddingStore_InProcessFetch";
    v32 = v30;
    v33 = v35;
LABEL_26:
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v33, v31, "", buf, 2u);
  }

LABEL_27:

  if (error)
  {
    v44 = v57[5];
    if (v44)
    {
      *error = v44;
    }
  }

  v18 = v51[5];
LABEL_31:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v18;
}

void __88__MADEmbeddingStoreService_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStoreService] Error connecting to embedding store service - %@", &v7, 0xCu);
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __88__MADEmbeddingStoreService_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = [v6 copy];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  lCopy = l;
  optionsCopy = options;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__20;
  v60 = __Block_byref_object_dispose__20;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__20;
  v54 = __Block_byref_object_dispose__20;
  v55 = 0;
  if (lCopy)
  {
    systemPhotoLibraryURL = lCopy;
  }

  else
  {
    systemPhotoLibraryURL = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v14 = systemPhotoLibraryURL;
  if (![objc_opt_class() isEntitledForInProcessAccess])
  {
    v19 = MediaAnalysisLogLevel();
    if (v19 >= 5)
    {
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v20 = [embeddingsCopy count];
        *buf = 134217984;
        v63 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADEmbeddingStoreService] XPC search with %llu embeddings", buf, 0xCu);
      }
    }

    v21 = VCPSignPostLog(v19);
    v22 = os_signpost_id_generate(v21);

    v24 = VCPSignPostLog(v23);
    v25 = v24;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADEmbeddingStore_XPCSearch", "", buf, 2u);
    }

    connection = [(MADEmbeddingStoreService *)self connection];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __79__MADEmbeddingStoreService_searchWithEmbeddings_photoLibraryURL_options_error___block_invoke;
    v47[3] = &unk_1E834CCA0;
    v47[4] = &v56;
    v27 = [connection synchronousRemoteObjectProxyWithErrorHandler:v47];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __79__MADEmbeddingStoreService_searchWithEmbeddings_photoLibraryURL_options_error___block_invoke_263;
    v46[3] = &unk_1E834D7F8;
    v46[4] = &v50;
    v46[5] = &v56;
    [v27 searchWithEmbeddings:embeddingsCopy photoLibraryURL:v14 options:optionsCopy reply:v46];

    v29 = VCPSignPostLog(v28);
    v30 = v29;
    if (v22 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v31 = "MADEmbeddingStore_XPCSearch";
    v32 = v30;
    v33 = v22;
    goto LABEL_26;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v15 = [embeddingsCopy count];
    *buf = 134217984;
    v63 = v15;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADEmbeddingStoreService] In-process search with %llu embeddings", buf, 0xCu);
  }

  v16 = (v57 + 5);
  obj = v57[5];
  [(MADEmbeddingStoreService *)self checkSandboxExtensionForPhotoLibraryURL:v14 error:&obj];
  objc_storeStrong(v16, obj);
  v17 = v57[5];
  if (v17)
  {
    v18 = 0;
    if (error)
    {
      *error = v17;
    }

    goto LABEL_31;
  }

  v34 = VCPSignPostLog(0);
  v35 = os_signpost_id_generate(v34);

  v37 = VCPSignPostLog(v36);
  v38 = v37;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "MADEmbeddingStore_InProcessSearch", "", buf, 2u);
  }

  v39 = (v57 + 5);
  v48 = v57[5];
  v40 = [MADEmbeddingStore searchWithEmbeddings:embeddingsCopy photoLibraryURL:v14 options:optionsCopy error:&v48];
  objc_storeStrong(v39, v48);
  v41 = v51[5];
  v51[5] = v40;

  v43 = VCPSignPostLog(v42);
  v30 = v43;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    v31 = "MADEmbeddingStore_InProcessSearch";
    v32 = v30;
    v33 = v35;
LABEL_26:
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v33, v31, "", buf, 2u);
  }

LABEL_27:

  if (error)
  {
    v44 = v57[5];
    if (v44)
    {
      *error = v44;
    }
  }

  v18 = v51[5];
LABEL_31:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v18;
}

void __79__MADEmbeddingStoreService_searchWithEmbeddings_photoLibraryURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStoreService] Error connecting to embedding store service - %@", &v7, 0xCu);
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __79__MADEmbeddingStoreService_searchWithEmbeddings_photoLibraryURL_options_error___block_invoke_263(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = [v6 copy];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = lCopy;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__20;
  v44 = __Block_byref_object_dispose__20;
  v45 = 0;
  if (lCopy)
  {
    systemPhotoLibraryURL = lCopy;
  }

  else
  {
    systemPhotoLibraryURL = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v11 = systemPhotoLibraryURL;
  isEntitledForInProcessAccess = [objc_opt_class() isEntitledForInProcessAccess];
  if (isEntitledForInProcessAccess)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      limitCopy = limit;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADEmbeddingStoreService] In-process prewarm with concurrencyLimit %u", buf, 8u);
    }

    v13 = (v41 + 5);
    obj = v41[5];
    [(MADEmbeddingStoreService *)self checkSandboxExtensionForPhotoLibraryURL:v11 error:&obj];
    objc_storeStrong(v13, obj);
    v14 = v41[5];
    if (v14)
    {
      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v28 = VCPSignPostLog(0);
    v29 = os_signpost_id_generate(v28);

    v31 = VCPSignPostLog(v30);
    v32 = v31;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v29, "MADEmbeddingStore_InProcessPrewarm", "", buf, 2u);
    }

    v33 = (v41 + 5);
    v38 = v41[5];
    [MADEmbeddingStore prewarmSearchWithConcurrencyLimit:limit photoLibraryURL:v9 error:&v38];
    objc_storeStrong(v33, v38);
    v35 = VCPSignPostLog(v34);
    v24 = v35;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      v25 = "MADEmbeddingStore_InProcessPrewarm";
      v26 = v24;
      v27 = v29;
      goto LABEL_23;
    }
  }

  else
  {
    v15 = VCPSignPostLog(isEntitledForInProcessAccess);
    v16 = os_signpost_id_generate(v15);

    v18 = VCPSignPostLog(v17);
    v19 = v18;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MADEmbeddingStore_XPCPrewarm", "", buf, 2u);
    }

    connection = [(MADEmbeddingStoreService *)self connection];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __84__MADEmbeddingStoreService_prewarmSearchWithConcurrencyLimit_photoLibraryURL_error___block_invoke;
    v37[3] = &unk_1E834CCA0;
    v37[4] = &v40;
    v21 = [connection synchronousRemoteObjectProxyWithErrorHandler:v37];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __84__MADEmbeddingStoreService_prewarmSearchWithConcurrencyLimit_photoLibraryURL_error___block_invoke_267;
    v36[3] = &unk_1E834CCA0;
    v36[4] = &v40;
    [v21 prewarmSearchWithConcurrencyLimit:limit photoLibraryURL:v11 reply:v36];

    v23 = VCPSignPostLog(v22);
    v24 = v23;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      v25 = "MADEmbeddingStore_XPCPrewarm";
      v26 = v24;
      v27 = v16;
LABEL_23:
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v27, v25, "", buf, 2u);
    }
  }

  if (error)
  {
    v14 = v41[5];
    if (v14)
    {
LABEL_26:
      *error = v14;
    }
  }

LABEL_27:

  _Block_object_dispose(&v40, 8);
}

void __84__MADEmbeddingStoreService_prewarmSearchWithConcurrencyLimit_photoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStoreService] Error connecting to embedding store service - %@", &v7, 0xCu);
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __84__MADEmbeddingStoreService_prewarmSearchWithConcurrencyLimit_photoLibraryURL_error___block_invoke_267(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end