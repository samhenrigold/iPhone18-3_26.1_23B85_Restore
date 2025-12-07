@interface MUPlaceExternalActionMenuHelper
- (MUPlaceExternalActionMenuHelper)initWithExternalActionController:(id)controller iconCache:(id)cache;
- (NSString)actionName;
- (NSString)symbolName;
- (id)_buildMenuElementForViewModel:(id)model presentationOptions:(id)options isSingleProvider:(BOOL)provider;
- (id)_buildMenuItemViewModelWithCachedImageForViewModel:(id)model isSingleProvider:(BOOL)provider;
- (id)buildMenuElementsWithPresentationOptions:(id)options;
- (unint64_t)_imageVariantForViewModel:(id)model isSingleProvider:(BOOL)provider;
- (void)_downloadImageWithURL:(id)l variant:(unint64_t)variant uniqueIdentifier:(id)identifier completion:(id)completion;
- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)delegate completion:(id)completion;
@end

@implementation MUPlaceExternalActionMenuHelper

- (NSString)symbolName
{
  externalAction = [(MUGroupedExternalActionController *)self->_resolver externalAction];
  symbolName = [externalAction symbolName];

  return symbolName;
}

- (NSString)actionName
{
  externalAction = [(MUGroupedExternalActionController *)self->_resolver externalAction];
  actionName = [externalAction actionName];

  return actionName;
}

- (void)_downloadImageWithURL:(id)l variant:(unint64_t)variant uniqueIdentifier:(id)identifier completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v15 = v14;

  v16 = objc_alloc_init(MUAppLockupImageMetrics);
  [(MUAppLockupImageMetrics *)v16 setFrameSize:40.0, 40.0];
  [(MUAppLockupImageMetrics *)v16 setScale:v15];
  [(MUAppLockupImageMetrics *)v16 setVariant:variant];
  v17 = [[MUAppLockupImage alloc] initWithRemoteURL:lCopy metrics:v16];
  [(NSMutableDictionary *)self->_lockupImagesByIdentifiers setObject:v17 forKeyedSubscript:identifierCopy];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__MUPlaceExternalActionMenuHelper__downloadImageWithURL_variant_uniqueIdentifier_completion___block_invoke;
  v21[3] = &unk_1E82197D0;
  objc_copyWeak(&v25, &location);
  v18 = v17;
  v22 = v18;
  v19 = identifierCopy;
  v23 = v19;
  v20 = completionCopy;
  v24 = v20;
  [(MUAppLockupImage *)v18 loadImageWithCompletion:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __93__MUPlaceExternalActionMenuHelper__downloadImageWithURL_variant_uniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v7 = WeakRetained;
    v4 = [*(a1 + 32) cachedImage];
    [v3 setObject:v4 forKey:*(a1 + 40)];

    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) cachedImage];
    (*(v5 + 16))(v5, v6, 0);

    WeakRetained = v7;
  }
}

- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)delegate completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  resolver = self->_resolver;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke;
  v11[3] = &unk_1E82182D0;
  v12 = delegateCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = delegateCopy;
  v10 = completionCopy;
  [(MUGroupedExternalActionController *)resolver fetchProviderLockupsWithCompletion:v11];
}

void __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch vendor link models with error %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [v5 count];
    v10 = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v5;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      v28 = *v40;
      do
      {
        v14 = 0;
        v29 = v12;
        do
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v39 + 1) + 8 * v14);
          dispatch_group_enter(v10);
          v16 = [*(a1 + 32) _buildMenuItemViewModelWithCachedImageForViewModel:v15 isSingleProvider:v9 == 1];
          [v16 setUpdateDelegate:*(a1 + 40)];
          [v8 addObject:v16];
          v17 = [v16 image];

          if (v17)
          {
            dispatch_group_leave(v10);
          }

          else
          {
            v31 = [*(a1 + 32) _imageVariantForViewModel:v15 isSingleProvider:v9 == 1];
            v18 = v8;
            v19 = *(a1 + 32);
            v20 = [v15 artworkURL];
            [v15 uniqueIdentifier];
            v21 = a1;
            v23 = v22 = v9;
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_23;
            v36[3] = &unk_1E82182A8;
            v36[4] = v15;
            v37 = v10;
            v38 = v16;
            v24 = v19;
            v8 = v18;
            v13 = v28;
            [v24 _downloadImageWithURL:v20 variant:v31 uniqueIdentifier:v23 completion:v36];

            v9 = v22;
            a1 = v21;

            v12 = v29;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v12);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_24;
    block[3] = &unk_1E821B8D8;
    v25 = *(a1 + 48);
    v34 = 0;
    v35 = v25;
    v33 = v8;
    v26 = v8;
    dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

    v6 = 0;
    v5 = v27;
  }
}

void __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_23(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) artworkURL];
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to download artwork url %@ for model %@ with error %@", &v10, 0x20u);
    }
  }

  else
  {
    [*(a1 + 48) setImage:a2];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

- (id)_buildMenuElementForViewModel:(id)model presentationOptions:(id)options isSingleProvider:(BOOL)provider
{
  providerCopy = provider;
  modelCopy = model;
  optionsCopy = options;
  v10 = [(MUPlaceExternalActionMenuHelper *)self _buildMenuItemViewModelWithCachedImageForViewModel:modelCopy isSingleProvider:providerCopy];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69DC628];
  title = [v10 title];
  image = [v10 image];
  uniqueIdentifier = [modelCopy uniqueIdentifier];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke;
  v31[3] = &unk_1E8218720;
  objc_copyWeak(&v34, &location);
  v15 = modelCopy;
  v32 = v15;
  v16 = optionsCopy;
  v33 = v16;
  v17 = [v11 actionWithTitle:title image:image identifier:uniqueIdentifier handler:v31];

  linkTypeString = [v15 linkTypeString];
  v19 = [linkTypeString stringByAppendingString:@"ExternalPartnerMenuAction"];
  [v17 setAccessibilityIdentifier:v19];

  image2 = [v10 image];

  if (!image2)
  {
    artworkURL = [v15 artworkURL];
    v22 = [(MUPlaceExternalActionMenuHelper *)self _imageVariantForViewModel:v15 isSingleProvider:providerCopy];
    uniqueIdentifier2 = [v15 uniqueIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_2;
    v26[3] = &unk_1E8218280;
    v24 = artworkURL;
    v27 = v24;
    v28 = v15;
    v29 = v16;
    objc_copyWeak(&v30, &location);
    [(MUPlaceExternalActionMenuHelper *)self _downloadImageWithURL:v24 variant:v22 uniqueIdentifier:uniqueIdentifier2 completion:v26];

    objc_destroyWeak(&v30);
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  return v17;
}

void __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] openPartnerActionUsingViewModel:*(a1 + 32) withPresentationOptions:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) uniqueIdentifier];
      *buf = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_ERROR, "Failed to download artwork url %@ for model %@ with error %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = [*(a1 + 48) contextMenuInteraction];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_20;
    v12[3] = &unk_1E8218258;
    objc_copyWeak(&v14, (a1 + 56));
    v13 = *(a1 + 40);
    [v8 updateVisibleMenuWithBlock:v12];

    objc_destroyWeak(&v14);
  }
}

id __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_20(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v3;
    v4 = [v3 _mapsui_allChildren];
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 identifier];
            v12 = [WeakRetained[1] objectForKeyedSubscript:v11];
            if (v12)
            {
              v13 = v12;
              v14 = [*(v22 + 32) uniqueIdentifier];
              v15 = [v11 isEqual:v14];

              if (v15)
              {
                v16 = MUGetMUPlaceExternalActionMenuHelperLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  v17 = [*(v22 + 32) uniqueIdentifier];
                  *buf = 138412290;
                  v29 = v17;
                  _os_log_impl(&dword_1C5620000, v16, OS_LOG_TYPE_INFO, "Updating image for view model %@", buf, 0xCu);
                }

                v18 = [WeakRetained[1] objectForKeyedSubscript:v11];
                [v10 setImage:v18];

                goto LABEL_17;
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v3 = v21;
  }

  v19 = [v3 copy];

  return v19;
}

- (unint64_t)_imageVariantForViewModel:(id)model isSingleProvider:(BOOL)provider
{
  if (!provider)
  {
    return 1;
  }

  if ([model linkType] == 1)
  {
    return 2;
  }

  return 1;
}

- (id)_buildMenuItemViewModelWithCachedImageForViewModel:(id)model isSingleProvider:(BOOL)provider
{
  modelCopy = model;
  artworkURL = [modelCopy artworkURL];
  iconCache = self->_iconCache;
  uniqueIdentifier = [modelCopy uniqueIdentifier];
  v10 = [(MUTimeExpirableLRUCache *)iconCache objectForKeyedSubscript:uniqueIdentifier];

  if (provider)
  {
    [(MUPlaceExternalActionMenuHelper *)self actionName];
  }

  else
  {
    [modelCopy appShortName];
  }
  v11 = ;
  if (!artworkURL)
  {
    fallbackSymbolName = [modelCopy fallbackSymbolName];

    if (fallbackSymbolName)
    {
      v13 = MEMORY[0x1E69DCAB8];
      fallbackSymbolName2 = [modelCopy fallbackSymbolName];
      v15 = [v13 _systemImageNamed:fallbackSymbolName2 variant:0];

      v10 = v15;
    }
  }

  v16 = [[MUVendorLinkMenuItemViewModel alloc] initWithTitle:v11 image:v10 vendorLinkViewModel:modelCopy];

  return v16;
}

- (id)buildMenuElementsWithPresentationOptions:(id)options
{
  v14[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC928];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke;
  v10[3] = &unk_1E8218230;
  objc_copyWeak(&v12, &location);
  v6 = optionsCopy;
  v11 = v6;
  v7 = [v5 elementWithProvider:v10];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_opt_new();
    [v5 setIsQuickAction:{objc_msgSend(WeakRetained, "isQuickAction")}];
    [v5 setIsActionBar:{objc_msgSend(*(a1 + 32), "isForActionBar")}];
    [WeakRetained[3] captureGroupedMenuRevealAnalyticsIfNeededWithEnvironment:v5];
    v6 = WeakRetained[3];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_2;
    v7[3] = &unk_1E821A848;
    v9 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = *(a1 + 32);
    [v6 fetchProviderLockupsWithCompletion:v7];

    objc_destroyWeak(&v10);
  }
}

void __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch vendor link models with error %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_8;
      v14[3] = &unk_1E8218208;
      v14[4] = WeakRetained;
      v15 = *(a1 + 32);
      v16 = v5;
      v10 = MUMap(v16, v14);
      v11 = v9[5];
      v9[5] = v10;

      v12 = *(a1 + 40);
      v13 = [v9[5] copy];
      (*(v12 + 16))(v12, v13);
    }
  }
}

id __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_8(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v2 _buildMenuElementForViewModel:v5 presentationOptions:v3 isSingleProvider:{objc_msgSend(v4, "count") == 1}];

  return v6;
}

- (MUPlaceExternalActionMenuHelper)initWithExternalActionController:(id)controller iconCache:(id)cache
{
  controllerCopy = controller;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = MUPlaceExternalActionMenuHelper;
  v9 = [(MUPlaceExternalActionMenuHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_iconCache, cache);
    objc_storeStrong(&v10->_resolver, controller);
  }

  return v10;
}

@end