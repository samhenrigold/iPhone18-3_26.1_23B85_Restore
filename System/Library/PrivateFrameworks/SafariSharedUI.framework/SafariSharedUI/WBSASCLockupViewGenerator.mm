@interface WBSASCLockupViewGenerator
+ (id)_lockupContextForLockupViewType:(int64_t)type;
+ (id)_lockupViewGroupForLockupViewType:(int64_t)type;
+ (id)cloudLockupViewGroup;
+ (id)importLockupViewGroup;
+ (id)recommendationsLockupViewGroup;
+ (id)sharedGenerator;
- (id)productDetailsPresentationContextForLockupView:(id)view;
- (void)_allLockupViewRequestsCompleted;
- (void)_lockupViewRequestedCompleted:(id)completed loadedSuccessfully:(BOOL)successfully;
- (void)generateLockupViewsForAvailableApps:(id)apps lockupViewType:(int64_t)type maintainRequestedOrderOfApps:(BOOL)ofApps completionHandler:(id)handler;
- (void)getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:(id)handler;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
- (void)lockupViewDidBeginRequest:(id)request;
- (void)lockupViewDidFinishRequest:(id)request;
@end

@implementation WBSASCLockupViewGenerator

+ (id)sharedGenerator
{
  if (+[WBSASCLockupViewGenerator sharedGenerator]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator sharedGenerator];
  }

  v3 = +[WBSASCLockupViewGenerator sharedGenerator]::sharedGenerator;

  return v3;
}

void __44__WBSASCLockupViewGenerator_sharedGenerator__block_invoke()
{
  v0 = objc_alloc_init(WBSASCLockupViewGenerator);
  v1 = +[WBSASCLockupViewGenerator sharedGenerator]::sharedGenerator;
  +[WBSASCLockupViewGenerator sharedGenerator]::sharedGenerator = v0;
}

+ (id)cloudLockupViewGroup
{
  if (+[WBSASCLockupViewGenerator cloudLockupViewGroup]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator cloudLockupViewGroup];
  }

  v3 = +[WBSASCLockupViewGenerator cloudLockupViewGroup]::group;

  return v3;
}

void __49__WBSASCLockupViewGenerator_cloudLockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"ExtensionLockups"];
  v1 = +[WBSASCLockupViewGenerator cloudLockupViewGroup]::group;
  +[WBSASCLockupViewGenerator cloudLockupViewGroup]::group = v0;
}

+ (id)importLockupViewGroup
{
  if (+[WBSASCLockupViewGenerator importLockupViewGroup]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator importLockupViewGroup];
  }

  v3 = +[WBSASCLockupViewGenerator importLockupViewGroup]::group;

  return v3;
}

void __50__WBSASCLockupViewGenerator_importLockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"ExtensionImportLockups"];
  v1 = +[WBSASCLockupViewGenerator importLockupViewGroup]::group;
  +[WBSASCLockupViewGenerator importLockupViewGroup]::group = v0;
}

+ (id)recommendationsLockupViewGroup
{
  if (+[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator recommendationsLockupViewGroup];
  }

  v3 = +[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::group;

  return v3;
}

void __59__WBSASCLockupViewGenerator_recommendationsLockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"RecommendedExtensionLockups"];
  v1 = +[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::group;
  +[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::group = v0;
}

- (void)generateLockupViewsForAvailableApps:(id)apps lockupViewType:(int64_t)type maintainRequestedOrderOfApps:(BOOL)ofApps completionHandler:(id)handler
{
  appsCopy = apps;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke;
  block[3] = &unk_1E82833B8;
  block[4] = self;
  v15 = appsCopy;
  ofAppsCopy = ofApps;
  v16 = handlerCopy;
  typeCopy = type;
  v12 = appsCopy;
  v13 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) || ![*(a1 + 40) count])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    *(*(a1 + 32) + 40) = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;

    if (*(*(a1 + 32) + 40) == 1)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      if ([*(a1 + 40) count])
      {
        v8 = 0;
        do
        {
          v9 = [*(a1 + 40) objectAtIndexedSubscript:v8];
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          v11 = *(*(a1 + 32) + 48);
          v12 = [v9 adamID];
          [v11 setObject:v10 forKeyedSubscript:v12];

          ++v8;
        }

        while (v8 < [*(a1 + 40) count]);
      }
    }

    v13 = [*(a1 + 48) copy];
    v15 = a1 + 32;
    v14 = *(a1 + 32);
    v16 = *(v14 + 8);
    *(v14 + 8) = v13;

    v17 = [MEMORY[0x1E695DF70] array];
    v18 = *(*(a1 + 32) + 24);
    *(*v15 + 24) = v17;

    v19 = [MEMORY[0x1E695DF70] array];
    v20 = *(*(a1 + 32) + 16);
    *(*v15 + 16) = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    v22 = *(*(a1 + 32) + 32);
    *(*v15 + 32) = v21;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = *(a1 + 40);
    v23 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v23)
    {
      v49 = *v58;
      v48 = *MEMORY[0x1E698B370];
      v47 = *MEMORY[0x1E698B340];
      v45 = *MEMORY[0x1E698B360];
      v24 = MEMORY[0x1E695F058];
      do
      {
        v50 = v23;
        for (i = 0; i != v50; ++i)
        {
          if (*v58 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v57 + 1) + 8 * i);
          v27 = [objc_alloc(MEMORY[0x1E698B3C8]) initWithFrame:{*v24, v24[1], v24[2], v24[3]}];
          [v27 setSize:v48];
          [v27 setDelegate:*(a1 + 32)];
          v28 = [objc_opt_class() _lockupContextForLockupViewType:*(a1 + 56)];
          v29 = [objc_opt_class() _lockupViewGroupForLockupViewType:*(a1 + 56)];
          [v27 setGroup:v29];

          [*(*(a1 + 32) + 16) addObject:v27];
          v30 = [v26 platformSpecificBundleID];
          if (v30)
          {
            v31 = [v27 group];
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_33;
            v51[3] = &unk_1E8283390;
            v32 = v30;
            v52 = v32;
            v53 = v27;
            v33 = v28;
            v34 = *(a1 + 32);
            v54 = v33;
            v55 = v34;
            v56 = v26;
            [v31 _lockupRequestForBundleID:v32 withContext:v47 completionBlock:v51];

            v35 = v52;
          }

          else
          {
            v36 = objc_alloc(MEMORY[0x1E698B398]);
            v37 = [v26 adamID];
            v35 = [v36 initWithStringValue:v37];

            v38 = objc_alloc(MEMORY[0x1E698B3C0]);
            LOBYTE(v37) = objc_opt_respondsToSelector();
            v39 = v38;
            v40 = v39;
            if (v37)
            {
              v41 = [v39 _initWithID:v35 kind:v45 context:v28 clientID:@"SafariExtensions" enableAppDistribution:1];
            }

            else
            {
              v41 = [v39 _initWithID:v35 kind:v45 context:v28 clientID:@"SafariExtensions"];
            }

            [v27 setRequest:v41];

            v44 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v42, v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *buf = 138478083;
              v62 = v35;
              v63 = 2113;
              v64 = v27;
              _os_log_impl(&dword_1C6968000, v44, OS_LOG_TYPE_INFO, "Adam ID %{private}@ created lockup view %{private}@", buf, 0x16u);
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v23);
    }
  }
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2;
  block[3] = &unk_1E8283368;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v20 = 138478083;
      v21 = v6;
      v22 = 2113;
      v23 = v7;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Bundle identifier %{private}@ created lockup view %{private}@", &v20, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x1E698B3C0]);
    v9 = objc_opt_respondsToSelector();
    v10 = v8;
    [*(a1 + 32) id];
    if (v9)
      v11 = {;
      v12 = [*(a1 + 32) kind];
      v13 = [v10 _initWithID:v11 kind:v12 context:*(a1 + 56) clientID:@"SafariExtensions" enableAppDistribution:1];
    }

    else
      v11 = {;
      v12 = [*(a1 + 32) kind];
      v13 = [v10 _initWithID:v11 kind:v12 context:*(a1 + 56) clientID:@"SafariExtensions"];
    }

    [*(a1 + 48) setRequest:v13];

    v17 = [*(a1 + 72) requiredTeamID];
    v18 = *(*(a1 + 64) + 32);
    v19 = [*(a1 + 48) request];
    [v18 setObject:v17 forKeyedSubscript:v19];
  }

  else
  {
    v14 = v4;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 80) safari_privacyPreservingDescription];
      __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2_cold_1(v15, v16, &v20, v14);
    }

    [*(a1 + 64) _lockupViewRequestedCompleted:*(a1 + 48) loadedSuccessfully:0];
  }
}

+ (id)_lockupContextForLockupViewType:(int64_t)type
{
  if (!type)
  {
    v4 = MEMORY[0x1E698B340];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (type == 1)
  {
    v4 = MEMORY[0x1E698B348];
    goto LABEL_5;
  }

  v5 = @"noPrice";

  return v5;
}

+ (id)_lockupViewGroupForLockupViewType:(int64_t)type
{
  if (type == 2)
  {
    recommendationsLockupViewGroup = [objc_opt_class() recommendationsLockupViewGroup];
  }

  else if (type == 1)
  {
    recommendationsLockupViewGroup = [objc_opt_class() importLockupViewGroup];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    recommendationsLockupViewGroup = [objc_opt_class() cloudLockupViewGroup];
  }

  a2 = recommendationsLockupViewGroup;
LABEL_8:

  return a2;
}

- (void)_lockupViewRequestedCompleted:(id)completed loadedSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  completedCopy = completed;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (successfullyCopy)
  {
    [(NSMutableArray *)self->_succesfullyLoadedLockupViews addObject:completedCopy];
  }

  [(NSMutableArray *)self->_lockupViewsPendingLoad removeObject:completedCopy];
  if (![(NSMutableArray *)self->_lockupViewsPendingLoad count])
  {
    [(WBSASCLockupViewGenerator *)self _allLockupViewRequestsCompleted];
  }
}

- (void)_allLockupViewRequestsCompleted
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [self->_pendingGenerateLockupViewsCompletionHandler copy];
  pendingGenerateLockupViewsCompletionHandler = self->_pendingGenerateLockupViewsCompletionHandler;
  self->_pendingGenerateLockupViewsCompletionHandler = 0;

  if (v3)
  {
    succesfullyLoadedLockupViews = self->_succesfullyLoadedLockupViews;
    if (self->_maintainRequestedOrderOfApps)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__WBSASCLockupViewGenerator__allLockupViewRequestsCompleted__block_invoke;
      v10[3] = &unk_1E82833E0;
      v10[4] = self;
      v6 = [(NSMutableArray *)succesfullyLoadedLockupViews sortedArrayUsingComparator:v10];
    }

    else
    {
      v6 = [(NSMutableArray *)succesfullyLoadedLockupViews sortedArrayUsingComparator:&__block_literal_global_37];
    }

    v7 = v6;
    v3[2](v3, v6);
    lockupViewsPendingLoad = self->_lockupViewsPendingLoad;
    self->_lockupViewsPendingLoad = 0;

    v9 = self->_succesfullyLoadedLockupViews;
    self->_succesfullyLoadedLockupViews = 0;
  }
}

uint64_t __60__WBSASCLockupViewGenerator__allLockupViewRequestsCompleted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  v7 = [a2 lockup];
  v8 = [v7 id];
  v9 = [v8 stringValue];
  v10 = [v6 objectForKeyedSubscript:v9];
  v11 = *(*(a1 + 32) + 48);
  v12 = [v5 lockup];
  v13 = [v12 id];
  v14 = [v13 stringValue];
  v15 = [v11 objectForKeyedSubscript:v14];
  v16 = [v10 compare:v15];

  return v16;
}

uint64_t __60__WBSASCLockupViewGenerator__allLockupViewRequestsCompleted__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lockup];
  v6 = [v5 title];
  v7 = [v4 lockup];
  v8 = [v7 title];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(NSArray *)self->_cachedRecommendedAppsWithExtensions count])
  {
    handlerCopy[2](handlerCopy, self->_cachedRecommendedAppsWithExtensions);
  }

  else
  {
    v5 = MEMORY[0x1E698C7D8];
    bagSubProfile = [MEMORY[0x1E698C9E0] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v8 = [v5 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v9 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:5 clientIdentifier:@"com.apple.MobileSafari.Extensions" clientVersion:@"1" bag:v8];
    v22[0] = @"1377753262";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v9 setItemIdentifiers:v10];

    v21 = @"canvas";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v9 setIncludedResultKeys:v11];

    perform = [v9 perform];
    if (perform)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke;
      v15[3] = &unk_1E8283478;
      selfCopy = self;
      v20 = handlerCopy;
      v16 = @"relationships";
      v17 = @"canvas";
      v18 = @"data";
      [perform addFinishBlock:v15];
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(0, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [WBSASCLockupViewGenerator getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:v14];
      }

      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
    }
  }
}

void __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v4 = a3;
  v35 = v4;
  if (v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v35 safari_privacyPreservingDescription];
      __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_cold_1(v7, buf, v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_56;
    block[3] = &unk_1E8283428;
    v52 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v8 = v52;
  }

  else
  {
    v39 = [MEMORY[0x1E695DF70] array];
    v9 = [v36 responseDataItems];
    if (v9)
    {
      v10 = [v36 responseDataItems];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [v36 responseDataItems];
        v13 = [v12 firstObject];

        v14 = [v13 safari_dictionaryForKey:*(a1 + 32)];
        v15 = [v14 safari_dictionaryForKey:*(a1 + 40)];
        v16 = [v15 safari_arrayForKey:*(a1 + 48)];

        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v47 = 0u;
        obj = v16;
        v17 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v17)
        {
          v18 = 0;
          v19 = *v48;
LABEL_9:
          v20 = 0;
          while (1)
          {
            if (*v48 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v47 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
              v23 = [v22 safari_dictionaryForKey:*(a1 + 32)];
              v24 = [v23 safari_dictionaryForKey:@"contents"];
              v25 = [v24 safari_arrayForKey:*(a1 + 48)];

              LOBYTE(v24) = [v25 count] == 0;
              v18 = v25;
              if ((v24 & 1) == 0)
              {
                break;
              }
            }

            if (v17 == ++v20)
            {
              v17 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
              v25 = v18;
              if (v17)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        else
        {
          v25 = 0;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v27)
        {
          v28 = *v44;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v44 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v43 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v30;
                v32 = [v31 safari_stringForKey:@"id"];
                if (v32)
                {
                  v33 = [[WBSAvailableAppWithExtension alloc] initWithAdamID:v32 platformSpecificBundleID:0];
                  [v39 addObject:v33];
                }
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v27);
        }
      }
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_2;
    v40[3] = &unk_1E8283450;
    v34 = *(a1 + 64);
    v40[4] = *(a1 + 56);
    v41 = v39;
    v42 = v34;
    v8 = v39;
    dispatch_async(MEMORY[0x1E69E96A0], v40);
  }
}

uint64_t __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)lockupViewDidBeginRequest:(id)request
{
  v8 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(requestCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = requestCopy;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Started loading lockup view: %{private}@", &v6, 0xCu);
  }
}

- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  viewCopy = view;
  stateCopy = state;
  blockCopy = block;
  group = [viewCopy group];
  recommendationsLockupViewGroup = [objc_opt_class() recommendationsLockupViewGroup];
  v12 = [group isEqual:recommendationsLockupViewGroup];

  if ((v12 & 1) != 0 && (*MEMORY[0x1E698B2A0] != stateCopy ? (v13 = *MEMORY[0x1E698B2C0] == stateCopy) : (v13 = 1), v13))
  {
    [viewCopy presentProductDetailsViewController];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SafariSharedUI.Extensions.WBSAMSSafariErrorDomain" code:1 userInfo:0];
    blockCopy[2](blockCopy, v14);
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WBSASCLockupViewGenerator_lockupViewDidFinishRequest___block_invoke;
  v6[3] = &unk_1E8282EA0;
  v7 = requestCopy;
  selfCopy = self;
  v5 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__WBSASCLockupViewGenerator_lockupViewDidFinishRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v14 = 138477827;
    v15 = v4;
    _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_INFO, "Succeeded loading lockup view: %{private}@", &v14, 0xCu);
  }

  v5 = [*(a1 + 32) request];
  v6 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v5];
  [*(*(a1 + 40) + 32) removeObjectForKey:v5];
  if (!v6)
  {
    v9 = 0;
LABEL_10:
    [*(a1 + 40) _lockupViewRequestedCompleted:*(a1 + 32) loadedSuccessfully:1];
    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  v8 = [v7 lockup];
  v9 = [v8 contentProviderTeamID];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v6 isEqualToString:v9];
  if (v10)
  {
    goto LABEL_10;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138478339;
    v15 = v6;
    v16 = 2113;
    v17 = v9;
    v18 = 2113;
    v19 = v13;
    _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Hiding lockup view due to team ID mismatch (required team ID: %{private}@ vs computed team ID: %{private}@): %{private}@", &v14, 0x20u);
  }

  [*(a1 + 40) _lockupViewRequestedCompleted:*(a1 + 32) loadedSuccessfully:0];
LABEL_11:
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke;
  block[3] = &unk_1E8282EF0;
  v11 = errorCopy;
  v12 = viewCopy;
  selfCopy = self;
  v8 = viewCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke(id *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [a1[4] safari_privacyPreservingDescription];
    __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke_cold_1(v4, a1, v8, v3);
  }

  v5 = *(a1[6] + 4);
  v6 = [a1[5] request];
  [v5 removeObjectForKey:v6];

  return [a1[6] _lockupViewRequestedCompleted:a1[5] loadedSuccessfully:0];
}

- (id)productDetailsPresentationContextForLockupView:(id)view
{
  viewCopy = view;
  group = [viewCopy group];
  importLockupViewGroup = [objc_opt_class() importLockupViewGroup];
  v6 = [group isEqual:importLockupViewGroup];

  if (v6)
  {
    defaultPresentationContext = [objc_alloc(MEMORY[0x1E698B3B8]) initWithPresentationStyle:1];
  }

  else
  {
    defaultPresentationContext = [MEMORY[0x1E698B3B8] defaultPresentationContext];
  }

  v8 = defaultPresentationContext;

  return v8;
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to generate lockup request for %{private}@ with error: %{public}@", buf, 0x16u);
}

void __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to fetch extensions from App Store editorial content: %{public}@", buf, 0xCu);
}

void __56__WBSASCLockupViewGenerator_lockupViewDidFinishRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Error computing content provider team ID for lockup view: %{private}@, exception: %{private}@", &v3, 0x16u);
}

void __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 40);
  *buf = 138543619;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed loading lockup view with error: %{public}@ - lockup view: %{private}@", buf, 0x16u);
}

@end