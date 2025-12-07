@interface SFCollaborationFileMetadataLoader
- (SFCollaborationFileMetadataLoader)initWithFileURL:(id)l;
- (void)_loadCompletedWithCollaborationMetadata:(id)metadata error:(id)error;
- (void)_loadMetadata;
- (void)loadMetadataWithCompletionHandler:(id)handler;
- (void)presentedItemUbiquityDidChange;
@end

@implementation SFCollaborationFileMetadataLoader

- (SFCollaborationFileMetadataLoader)initWithFileURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = SFCollaborationFileMetadataLoader;
  v5 = [(SFCollaborationFileMetadataLoader *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    presentedItemURL = v5->_presentedItemURL;
    v5->_presentedItemURL = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    presentedItemOperationQueue = v5->_presentedItemOperationQueue;
    v5->_presentedItemOperationQueue = v8;

    [(NSOperationQueue *)v5->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    v5->_waitingForUbiquityChange = 0;
  }

  return v5;
}

- (void)loadMetadataWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  defaultManager = [getFPItemManagerClass() defaultManager];
  presentedItemURL = [(SFCollaborationFileMetadataLoader *)self presentedItemURL];
  v16 = 0;
  v7 = [defaultManager itemForURL:presentedItemURL error:&v16];
  v8 = v16;

  if (v7)
  {
    v10 = SharedWithYouCoreLibrary();
    if (v10 && (v11 = SharedWithYouCoreLibrary(), (v10 = dlsym(v11, "SWCollaborationMetadataForDocumentURL")) != 0))
    {
      [(SFCollaborationFileMetadataLoader *)self setLoadCompletionHandler:handlerCopy];
      if ([v7 isKnownByTheProvider])
      {
        [(SFCollaborationFileMetadataLoader *)self _loadMetadata];
      }

      else
      {
        v14 = share_sheet_log([(SFCollaborationFileMetadataLoader *)self setWaitingForUbiquityChange:1]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          presentedItemURL2 = [(SFCollaborationFileMetadataLoader *)self presentedItemURL];
          *buf = 138412290;
          v18 = presentedItemURL2;
          _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Collaboration: waiting to load metadata until document is synced with iCloud for documentURL:%@", buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = share_sheet_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SFCollaborationFileMetadataLoader loadMetadataWithCompletionHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    v13 = share_sheet_log(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationFileMetadataLoader loadMetadataWithCompletionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v8);
  }
}

- (void)presentedItemUbiquityDidChange
{
  presentedItemURL = [self presentedItemURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_loadMetadata
{
  objc_initWeak(location, self);
  presentedItemURL = [(SFCollaborationFileMetadataLoader *)self presentedItemURL];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __50__SFCollaborationFileMetadataLoader__loadMetadata__block_invoke;
  v14 = &unk_1E788E2D8;
  objc_copyWeak(&v15, location);
  v4 = presentedItemURL;
  v5 = &v11;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr;
  v21 = getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr;
  if (!getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr)
  {
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __getSWCollaborationMetadataForDocumentURLSymbolLoc_block_invoke;
    location[4] = &unk_1E788A938;
    v17 = &v18;
    v7 = SharedWithYouCoreLibrary();
    v8 = dlsym(v7, "SWCollaborationMetadataForDocumentURL");
    *(v17[1] + 24) = v8;
    getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr = *(v17[1] + 24);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v6)
  {
    v6(v4, v5);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_SWCollaborationMetadataForDocumentURL(NSURL *__strong, void (^__strong)(_SWCollaborationMetadata * _Nullable __strong, NSError * _Nullable __strong))"}];
    [currentHandler handleFailureInFunction:v10 file:@"SFCollaborationUtilities.m" lineNumber:143 description:{@"%s", dlerror(), v11, v12, v13, v14}];

    __break(1u);
  }
}

void __50__SFCollaborationFileMetadataLoader__loadMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadCompletedWithCollaborationMetadata:v6 error:v5];
}

- (void)_loadCompletedWithCollaborationMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    v9 = share_sheet_log(errorCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationFileMetadataLoader _loadCompletedWithCollaborationMetadata:error:];
    }
  }

  loadCompletionHandler = [(SFCollaborationFileMetadataLoader *)self loadCompletionHandler];
  [(SFCollaborationFileMetadataLoader *)self setLoadCompletionHandler:0];
  (loadCompletionHandler)[2](loadCompletionHandler, metadataCopy, v8);
}

- (void)loadMetadataWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadMetadataWithCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3_6();
  v1 = [v0 presentedItemURL];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_loadCompletedWithCollaborationMetadata:error:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v1 = [v0 presentedItemURL];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end