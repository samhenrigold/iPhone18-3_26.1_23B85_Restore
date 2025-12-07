@interface SYContentItemPreviewManager
+ (void)_loadPreviewForAppContentItem:(id)item completion:(id)completion;
+ (void)_loadPreviewMetadataForItem:(id)item fullDetail:(BOOL)detail completion:(id)completion;
+ (void)_loadPreviewUsingLPForItem:(id)item fullDetail:(BOOL)detail completion:(id)completion;
+ (void)loadPreviewDataForItems:(id)items fullDetail:(BOOL)detail didFinishLoadingPreviewHandler:(id)handler;
@end

@implementation SYContentItemPreviewManager

+ (void)loadPreviewDataForItems:(id)items fullDetail:(BOOL)detail didFinishLoadingPreviewHandler:(id)handler
{
  detailCopy = detail;
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [itemsCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = os_log_create("com.apple.synapse", "ContentItemManager");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v24 = v14;
          v25 = 1024;
          v26 = detailCopy;
          _os_log_debug_impl(&dword_225901000, v15, OS_LOG_TYPE_DEBUG, "Start loading preview for item: %@, fullDetail: %d", buf, 0x12u);
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke;
        v16[3] = &unk_27856B328;
        v18 = detailCopy;
        v16[4] = v14;
        v17 = handlerCopy;
        [self _loadPreviewMetadataForItem:v14 fullDetail:detailCopy completion:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [itemsCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }
}

void __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2;
  v7[3] = &unk_27856B300;
  v11 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setLinkPreviewMetadata:? loadLevel:?];
    v2 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2_cold_1((a1 + 40), (a1 + 56), v2);
    }
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SYContentItemLinkPreviewDidFinishLoading" object:*(a1 + 40)];
}

+ (void)_loadPreviewMetadataForItem:(id)item fullDetail:(BOOL)detail completion:(id)completion
{
  detailCopy = detail;
  itemCopy = item;
  completionCopy = completion;
  itemURL = [itemCopy itemURL];
  if (([itemURL _lp_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(itemURL, "isFileURL"))
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__SYContentItemPreviewManager__loadPreviewMetadataForItem_fullDetail_completion___block_invoke;
    v11[3] = &unk_27856B350;
    objc_copyWeak(&v14, &location);
    v12 = itemCopy;
    v13 = completionCopy;
    [self _loadPreviewUsingLPForItem:v12 fullDetail:detailCopy completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [self _loadPreviewForAppContentItem:itemCopy completion:completionCopy];
  }
}

void __81__SYContentItemPreviewManager__loadPreviewMetadataForItem_fullDetail_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _loadPreviewForAppContentItem:*(a1 + 32) completion:*(a1 + 40)];
  }
}

+ (void)_loadPreviewUsingLPForItem:(id)item fullDetail:(BOOL)detail completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  itemURL = [itemCopy itemURL];
  if (!itemURL)
  {
    [SYContentItemPreviewManager _loadPreviewUsingLPForItem:a2 fullDetail:self completion:?];
  }

  if (SYIsDeviceLocked())
  {
    v12 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = itemCopy;
      _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Device is locked, skipping LP preview for item: %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke;
    v13[3] = &unk_27856B300;
    detailCopy = detail;
    v14 = itemURL;
    v15 = itemCopy;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

void __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getLPMetadataProviderClass_softClass;
  v13 = getLPMetadataProviderClass_softClass;
  if (!getLPMetadataProviderClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getLPMetadataProviderClass_block_invoke;
    v9[3] = &unk_27856B3C8;
    v9[4] = &v10;
    __getLPMetadataProviderClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = objc_alloc_init(v2);
  [v4 _setShouldDownloadMediaSubresources:*(a1 + 56)];
  [v4 _setShouldDownloadImageSubresources:*(a1 + 56)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2;
  v6[3] = &unk_27856B378;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v4 startFetchingMetadataForURL:v5 completionHandler:v6];
}

void __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) displayTitle];

    if (v7)
    {
      v8 = [*(a1 + 32) displayTitle];
      [v5 setTitle:v8];
    }

    v9 = [v5 dataRepresentation];
  }

  else
  {
    v10 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2_cold_1(a1);
    }

    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_loadPreviewForAppContentItem:(id)item completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  if (SYIsDeviceLocked())
  {
    v7 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = itemCopy;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Device is locked, skipping icon preview for item: %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    sourceIdentifier = [itemCopy sourceIdentifier];
    v9 = sourceIdentifier;
    if (sourceIdentifier && ([sourceIdentifier isEqualToString:@"com.apple.synapse.itemSourceID.web"] & 1) == 0)
    {
      v11 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v9];
      if (v11)
      {
        v12 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B1F8]];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke;
        v14[3] = &unk_27856B3A0;
        v15 = itemCopy;
        v16 = v9;
        v17 = completionCopy;
        [v11 getImageForImageDescriptor:v12 completion:v14];
      }

      else
      {
        v13 = os_log_create("com.apple.synapse", "ContentItemManager");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SYContentItemPreviewManager _loadPreviewForAppContentItem:itemCopy completion:?];
        }

        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v10 = os_log_create("com.apple.synapse", "ContentItemManager");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SYContentItemPreviewManager _loadPreviewForAppContentItem:itemCopy completion:?];
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

void __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 size], v5 > 0.0) && (objc_msgSend(v4, "size"), v6 > 0.0))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v7 = getLPLinkMetadataClass_softClass;
    v28 = getLPLinkMetadataClass_softClass;
    if (!getLPLinkMetadataClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getLPLinkMetadataClass_block_invoke;
      v23 = &unk_27856B3C8;
      v24 = &v25;
      __getLPLinkMetadataClass_block_invoke(&v20);
      v7 = v26[3];
    }

    v8 = v7;
    _Block_object_dispose(&v25, 8);
    v9 = objc_alloc_init(v7);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v10 = getUIImageClass_softClass;
    v28 = getUIImageClass_softClass;
    if (!getUIImageClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getUIImageClass_block_invoke;
      v23 = &unk_27856B3C8;
      v24 = &v25;
      __getUIImageClass_block_invoke(&v20);
      v10 = v26[3];
    }

    v11 = v10;
    _Block_object_dispose(&v25, 8);
    v12 = [v10 imageWithCGImage:{objc_msgSend(v4, "CGImage")}];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v13 = getLPImageClass_softClass;
    v28 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getLPImageClass_block_invoke;
      v23 = &unk_27856B3C8;
      v24 = &v25;
      __getLPImageClass_block_invoke(&v20);
      v13 = v26[3];
    }

    v14 = v13;
    _Block_object_dispose(&v25, 8);
    v15 = [[v13 alloc] initWithPlatformImage:v12];
    [v9 setIcon:v15];

    v16 = [*(a1 + 32) displayTitle];
    [v9 setTitle:v16];

    v17 = [*(a1 + 32) itemURL];
    [v9 setOriginalURL:v17];

    v18 = [*(a1 + 32) itemURL];
    [v9 setURL:v18];

    v19 = [v9 dataRepresentation];
  }

  else
  {
    v12 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke_cold_1(a1, v12);
    }

    v19 = 0;
    v9 = v12;
  }

  (*(*(a1 + 48) + 16))();
}

void __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2_cold_1(uint64_t *a1, unsigned __int8 *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_225901000, log, OS_LOG_TYPE_DEBUG, "Finished loading preview for item: %@, fullDetail: %d", &v5, 0x12u);
}

+ (void)_loadPreviewUsingLPForItem:(uint64_t)a1 fullDetail:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYContentItemPreviewManager.m" lineNumber:93 description:@"itemURL cannot be nil"];
}

void __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) itemIdentifier];
  v3 = [v2 UUIDString];
  v9 = [*(a1 + 32) sourceIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

+ (void)_loadPreviewForAppContentItem:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 itemIdentifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)_loadPreviewForAppContentItem:(void *)a1 completion:.cold.2(void *a1)
{
  v1 = [a1 itemIdentifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) itemIdentifier];
  v5 = [v4 UUIDString];
  v6 = *(a1 + 40);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Error requesting icon image for item %@ (%@)", &v7, 0x16u);
}

@end