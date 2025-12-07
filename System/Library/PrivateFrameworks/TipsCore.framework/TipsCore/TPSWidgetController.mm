@interface TPSWidgetController
- (TPSDocument)preferredDocument;
- (TPSWidgetController)init;
- (TPSWidgetControllerDelegate)delegate;
- (double)timeSinceOSInstallDate;
- (id)cacheFileURLForAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager;
- (void)attemptWidgetUpdateWith:(id)with;
- (void)dealloc;
- (void)fetchAssetForAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager completionHandler:(id)handler;
- (void)fetchWidgetAssetsForDocument:(id)document preferCacheIfAvailable:(BOOL)available completionHandler:(id)handler;
- (void)setPreferredDocument:(id)document;
- (void)updatePreferredWidget:(id)widget completionHandler:(id)handler;
- (void)updateSessionMapValue:(id)value forKey:(id)key;
- (void)updateWidgetDocumentWithDocumentsMap:(id)map documentsDeliveryInfoMap:(id)infoMap deliveryInfoMap:(id)deliveryInfoMap preferHardwareWelcome:(BOOL)welcome completionHandler:(id)handler;
- (void)widgetAssetsForDocument:(id)document preferCacheIfAvailable:(BOOL)available userInterfaceStyle:(int64_t)style completionHandler:(id)handler;
@end

@implementation TPSWidgetController

- (void)dealloc
{
  [(NSMutableDictionary *)self->_assetURLSessionMap removeAllObjects];
  v3.receiver = self;
  v3.super_class = TPSWidgetController;
  [(TPSWidgetController *)&v3 dealloc];
}

- (TPSWidgetController)init
{
  v6.receiver = self;
  v6.super_class = TPSWidgetController;
  v2 = [(TPSWidgetController *)&v6 init];
  +[TPSPersonaUtilities _adoptPersonaForContainerLookupIfNeeded];
  if (v2)
  {
    *&v2->_documentLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    assetURLSessionMap = v2->_assetURLSessionMap;
    v2->_assetURLSessionMap = dictionary;
  }

  return v2;
}

- (TPSDocument)preferredDocument
{
  os_unfair_lock_lock(&self->_documentLock);
  preferredDocument = self->_preferredDocument;
  if (!preferredDocument)
  {
    v4 = +[TPSCommonDefines sharedInstance];
    appGroupDefaults = [v4 appGroupDefaults];

    v6 = [TPSSecureArchivingUtilities unarchivedObjectOfClass:objc_opt_class() forKey:@"TPSWidgetDocument" userDefaults:appGroupDefaults];
    v7 = self->_preferredDocument;
    self->_preferredDocument = v6;

    preferredDocument = self->_preferredDocument;
  }

  v8 = [(TPSDocument *)preferredDocument copy];
  os_unfair_lock_unlock(&self->_documentLock);

  return v8;
}

- (void)setPreferredDocument:(id)document
{
  documentCopy = document;
  os_unfair_lock_lock(&self->_documentLock);
  v4 = [documentCopy copy];
  preferredDocument = self->_preferredDocument;
  self->_preferredDocument = v4;

  v6 = +[TPSCommonDefines sharedInstance];
  appGroupDefaults = [v6 appGroupDefaults];

  [TPSSecureArchivingUtilities archivedDataWithRootObject:documentCopy forKey:@"TPSWidgetDocument" userDefaults:appGroupDefaults];
  os_unfair_lock_unlock(&self->_documentLock);
}

- (void)updateSessionMapValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  os_unfair_lock_lock(&self->_urlSessionLock);
  assetURLSessionMap = [(TPSWidgetController *)self assetURLSessionMap];
  [assetURLSessionMap setObject:valueCopy forKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_urlSessionLock);
}

- (void)attemptWidgetUpdateWith:(id)with
{
  withCopy = with;
  if (+[TPSCommonDefines isInternalBuild])
  {
    if ([withCopy hasWidgetContent])
    {
      v5 = +[TPSLogger widget];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [TPSWidgetController attemptWidgetUpdateWith:withCopy];
      }

      [(TPSWidgetController *)self updatePreferredWidget:withCopy completionHandler:0];
    }

    else
    {
      v6 = +[TPSLogger widget];
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (withCopy)
      {
        if (v7)
        {
          [TPSWidgetController attemptWidgetUpdateWith:];
        }
      }

      else if (v7)
      {
        [TPSWidgetController attemptWidgetUpdateWith:];
      }
    }
  }
}

- (void)updateWidgetDocumentWithDocumentsMap:(id)map documentsDeliveryInfoMap:(id)infoMap deliveryInfoMap:(id)deliveryInfoMap preferHardwareWelcome:(BOOL)welcome completionHandler:(id)handler
{
  v70 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  infoMapCopy = infoMap;
  deliveryInfoMapCopy = deliveryInfoMap;
  handlerCopy = handler;
  v46 = mapCopy;
  v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(mapCopy, "count")}];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__1;
  v62[4] = __Block_byref_object_dispose__1;
  v12 = [standardUserDefaults objectForKey:@"TPSWidgetShownTips"];
  v13 = MEMORY[0x1E695DF70];
  if (v12)
  {
    v14 = [standardUserDefaults objectForKey:@"TPSWidgetShownTips"];
    array = [v13 arrayWithArray:v14];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v15 = +[TPSDefaultsManager widgetDocument];
  if (v15)
  {
    v16 = [v46 objectForKeyedSubscript:v15];
    if ([v16 hasWidgetContent])
    {
      v17 = +[TPSLogger widget];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v16 identifier];
        widgetContent = [v16 widgetContent];
        titleContent = [widgetContent titleContent];
        *buf = 138412546;
        v67 = identifier;
        v68 = 2112;
        v69 = titleContent;
        _os_log_debug_impl(&dword_1C00A7000, v17, OS_LOG_TYPE_DEBUG, "Found override widget content (%@). TitleContent: %@", buf, 0x16u);
      }

      [v44 addObject:v16];
    }

    else
    {
      if (v16)
      {
        v18 = +[TPSLogger widget];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [TPSWidgetController updateWidgetDocumentWithDocumentsMap:documentsDeliveryInfoMap:deliveryInfoMap:preferHardwareWelcome:completionHandler:];
        }
      }

      else
      {
        v18 = +[TPSLogger widget];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [TPSWidgetController updateWidgetDocumentWithDocumentsMap:documentsDeliveryInfoMap:deliveryInfoMap:preferHardwareWelcome:completionHandler:];
        }
      }
    }
  }

  else
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke;
    v57[3] = &unk_1E81020A0;
    v57[4] = self;
    v60 = v62;
    v58 = v43;
    welcomeCopy = welcome;
    v59 = v44;
    [v46 enumerateKeysAndObjectsUsingBlock:v57];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"widgetContent" ascending:0];
  v20 = MEMORY[0x1E695DF70];
  v65 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v22 = [v44 sortedArrayUsingDescriptors:v21];
  v23 = [v20 arrayWithArray:v22];

  v64 = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v42 = [v43 sortedArrayUsingDescriptors:v24];

  [v23 addObjectsFromArray:v42];
  v25 = [v23 count];
  if (v25)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke_26;
    aBlock[3] = &unk_1E81020F0;
    v26 = v23;
    v53 = v26;
    selfCopy = self;
    v55 = infoMapCopy;
    v56 = deliveryInfoMapCopy;
    v27 = _Block_copy(aBlock);
    v28 = 0;
    while (v28 < [v26 count])
    {
      v29 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v28, v25 - v28}];
      v30 = v27[2](v27, v29);
      if (!v30)
      {
        v31 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v28}];
        v30 = v27[2](v27, v31);
      }

      v32 = [v26 indexOfObject:v30];

      v28 = v32 + 1;
      if (v30)
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke_3;
        v47[3] = &unk_1E8102118;
        v50 = handlerCopy;
        v51 = v62;
        v33 = v30;
        v48 = v33;
        v49 = standardUserDefaults;
        [(TPSWidgetController *)self updatePreferredWidget:v33 completionHandler:v47];

        goto LABEL_28;
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_28:
  }

  else
  {
    v34 = +[TPSLogger widget];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C00A7000, v34, OS_LOG_TYPE_DEFAULT, "No suitable widget tip found", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }

  _Block_object_dispose(v62, 8);
}

void __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if ([v11 hasWidgetContent])
  {
    [*(a1 + 32) timeSinceOSInstallDate];
    v5 = v4;
    v6 = *&TPSAcceptableWelcomeTimeframe;
    if (![v11 isWelcome] || v5 < v6)
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = [v11 identifier];
      if ([v7 containsObject:v8])
      {
        v9 = [v11 isWelcome];

        if ((v9 & 1) == 0)
        {
          v10 = 40;
LABEL_15:
          [*(a1 + v10) addObject:v11];
          goto LABEL_16;
        }
      }

      else
      {
      }

      if (![v11 isWelcome] || ((objc_msgSend(v11, "isSwitcherWelcome") & 1) != 0 || objc_msgSend(v11, "isSoftwareWelcome")) && !*(a1 + 64) || objc_msgSend(v11, "isHardwareWelcome") && *(a1 + 64) == 1)
      {
        v10 = 48;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

id __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke_2;
  v11[3] = &unk_1E81020C8;
  v14 = &v15;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v10 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v10;
  v13 = v7;
  [v3 enumerateIndexesUsingBlock:v11];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(*(a1 + 64) + 8) + 40) notification];

  if (v8)
  {
    v9 = [*(a1 + 40) delegate];
    v10 = [v9 widgetController:*(a1 + 40) validForDocument:*(*(*(a1 + 64) + 8) + 40) documentDeliveryInfoMap:*(a1 + 48) deliveryInfoMap:*(a1 + 56)];

    if ((v10 & 1) == 0)
    {
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }
  }

  *a3 = *(*(*(a1 + 64) + 8) + 40) != 0;
}

void __141__TPSWidgetController_updateWidgetDocumentWithDocumentsMap_documentsDeliveryInfoMap_deliveryInfoMap_preferHardwareWelcome_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v19 = a2;
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = [*(a1 + 32) identifier];
    LODWORD(v12) = [v12 containsObject:v13];

    if (v12)
    {
      v14 = [MEMORY[0x1E695DF70] array];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = [*(a1 + 32) identifier];
    [v17 addObject:v18];

    [*(a1 + 40) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:@"TPSWidgetShownTips"];
    [*(a1 + 40) synchronize];
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
}

- (void)updatePreferredWidget:(id)widget completionHandler:(id)handler
{
  widgetCopy = widget;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke;
  v10[3] = &unk_1E8102168;
  v8 = handlerCopy;
  v12 = v8;
  objc_copyWeak(&v13, &location);
  v9 = widgetCopy;
  v11 = v9;
  [(TPSWidgetController *)self fetchWidgetAssetsForDocument:v9 preferCacheIfAvailable:0 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke_2;
  v13[3] = &unk_1E8102140;
  v14 = v9;
  v18 = a1[5];
  v10 = v9;
  objc_copyWeak(&v19, a1 + 6);
  v15 = a1[4];
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v19);
}

void __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && [TPSNetworkPathMonitor isNetworkError:?])
  {
    v2 = +[TPSLogger widget];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke_2_cold_1();
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0, 0, *(a1 + 32));
    }

    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setPreferredDocument:*(a1 + 40)];
  v5 = [*(a1 + 40) widgetContent];
  v6 = [v5 hasAssets];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 56);
  if (!*(a1 + 48))
  {
    v9 = +[TPSLogger default];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v10)
      {
        __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke_2_cold_3();
      }

      v8 = @"widgetDocumentAssetErrorLight";
    }

    else
    {
      if (v10)
      {
        __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke_2_cold_4();
      }

      v8 = @"widgetDocumentAssetErrorBoth";
    }

    goto LABEL_21;
  }

  if (!v7)
  {
    v9 = +[TPSLogger default];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63__TPSWidgetController_updatePreferredWidget_completionHandler___block_invoke_2_cold_2();
    }

    v8 = @"widgetDocumentAssetErrorDark";
LABEL_21:

    goto LABEL_22;
  }

LABEL_10:
  v8 = 0;
LABEL_22:
  v11 = [*(a1 + 40) identifier];
  v12 = [*(a1 + 40) correlationID];
  v13 = [TPSAnalyticsEventContentRetrieved eventWithTipID:v11 correlationID:v12 serviceError:v8];
  [v13 log];

  v14 = +[TPSLogger widget];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) identifier];
    v16 = [*(a1 + 40) widgetContent];
    v17 = [v16 titleContent];
    v23 = 138412546;
    v24 = v15;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_1C00A7000, v14, OS_LOG_TYPE_DEFAULT, "Reloading timeline with preferred document (%@). TitleContent: %@", &v23, 0x16u);
  }

  v18 = objc_alloc(MEMORY[0x1E6994360]);
  v19 = +[TPSCommonDefines clientBundleIdentifier];
  v20 = [v18 initWithExtensionBundleIdentifier:@"com.apple.tips.TipsSwift" kind:v19];

  v21 = [v20 reloadTimelineWithReason:@"client update"];
  v22 = *(a1 + 64);
  if (v22)
  {
    (*(v22 + 16))(v22, *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  }
}

- (void)widgetAssetsForDocument:(id)document preferCacheIfAvailable:(BOOL)available userInterfaceStyle:(int64_t)style completionHandler:(id)handler
{
  availableCopy = available;
  v29 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  handlerCopy = handler;
  widgetContent = [documentCopy widgetContent];
  assets = [widgetContent assets];

  language = [documentCopy language];
  if (!availableCopy)
  {
    goto LABEL_8;
  }

  assetFileInfoManager = [documentCopy assetFileInfoManager];
  v16 = [(TPSWidgetController *)self cacheFileURLForAssets:assets language:language userInterfaceStyle:style assetFileInfoManager:assetFileInfoManager];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v16 path];
  v19 = [defaultManager fileExistsAtPath:path];

  if ((v19 & 1) == 0)
  {

    goto LABEL_8;
  }

  if (!v16)
  {
LABEL_8:
    assetFileInfoManager2 = [documentCopy assetFileInfoManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__TPSWidgetController_widgetAssetsForDocument_preferCacheIfAvailable_userInterfaceStyle_completionHandler___block_invoke;
    v22[3] = &unk_1E8102190;
    styleCopy = style;
    v23 = handlerCopy;
    [(TPSWidgetController *)self fetchAssetForAssets:assets language:language userInterfaceStyle:style assetFileInfoManager:assetFileInfoManager2 completionHandler:v22];

    v16 = v23;
    goto LABEL_9;
  }

  v20 = +[TPSLogger widget];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    styleCopy2 = style;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_1C00A7000, v20, OS_LOG_TYPE_DEFAULT, "Asset with interface %ld found in cache %@", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, v16, 0);
LABEL_9:
}

void __107__TPSWidgetController_widgetAssetsForDocument_preferCacheIfAvailable_userInterfaceStyle_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[TPSLogger widget];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = 134218242;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C00A7000, v7, OS_LOG_TYPE_DEFAULT, "Asset with interface %ld fetched and stored at %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchWidgetAssetsForDocument:(id)document preferCacheIfAvailable:(BOOL)available completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  handlerCopy = handler;
  widgetContent = [documentCopy widgetContent];
  assets = [widgetContent assets];

  if (assets)
  {
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = __Block_byref_object_copy__1;
    v49[4] = __Block_byref_object_dispose__1;
    v50 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = __Block_byref_object_copy__1;
    v47[4] = __Block_byref_object_dispose__1;
    v48 = 0;
    v12 = +[TPSLogger widget];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [assets debugDescription];
      [TPSWidgetController fetchWidgetAssetsForDocument:v13 preferCacheIfAvailable:buf completionHandler:v12];
    }

    objc_initWeak(&location, self);
    v14 = [TPSAsyncBlockOperation alloc];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke;
    v41[3] = &unk_1E81021E0;
    objc_copyWeak(&v44, &location);
    v15 = documentCopy;
    availableCopy = available;
    v42 = v15;
    v43 = v49;
    v16 = [(TPSAsyncBlockOperation *)v14 initWithAsyncBlock:v41];
    v17 = [TPSAsyncBlockOperation alloc];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_3;
    v36[3] = &unk_1E81021E0;
    objc_copyWeak(&v39, &location);
    v18 = v15;
    availableCopy2 = available;
    v37 = v18;
    v38 = v47;
    v19 = [(TPSAsyncBlockOperation *)v17 initWithAsyncBlock:v36];
    v20 = MEMORY[0x1E696AAE0];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_5;
    v30 = &unk_1E8102208;
    v21 = v16;
    v31 = v21;
    v22 = v19;
    v32 = v22;
    v33 = handlerCopy;
    v34 = v49;
    v35 = v47;
    v23 = [v20 blockOperationWithBlock:&v27];
    [v23 addDependency:{v21, v27, v28, v29, v30}];
    [v23 addDependency:v22];
    v24 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v24 setMaxConcurrentOperationCount:4];
    [v24 setSuspended:1];
    [v24 addOperation:v21];
    [v24 addOperation:v22];
    [v24 addOperation:v23];
    [v24 setSuspended:0];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
    _Block_object_dispose(v47, 8);

    _Block_object_dispose(v49, 8);
  }

  else
  {
    v25 = +[TPSLogger widget];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [TPSWidgetController fetchWidgetAssetsForDocument:documentCopy preferCacheIfAvailable:? completionHandler:?];
    }

    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.tips.TPSWidgetController" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);
  }
}

void __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_2;
  v9[3] = &unk_1E81021B8;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [WeakRetained widgetAssetsForDocument:v7 preferCacheIfAvailable:v5 userInterfaceStyle:0 completionHandler:v9];
}

void __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  (*(*(a1 + 32) + 16))();
}

void __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_4;
  v9[3] = &unk_1E81021B8;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v8 = v3;
  [WeakRetained widgetAssetsForDocument:v7 preferCacheIfAvailable:v5 userInterfaceStyle:1 completionHandler:v9];
}

void __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  (*(*(a1 + 32) + 16))();
}

void __93__TPSWidgetController_fetchWidgetAssetsForDocument_preferCacheIfAvailable_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 40) error];
  }

  v5 = v4;

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAssetForAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  languageCopy = language;
  managerCopy = manager;
  handlerCopy = handler;
  v28 = assetsCopy;
  v16 = [[TPSAssetsConfiguration alloc] initWithAssets:assetsCopy language:languageCopy userInterfaceStyle:style assetFileInfoManager:managerCopy];
  v17 = [(TPSAssetsConfiguration *)v16 cacheIdentifierForType:0];
  v18 = [TPSContentURLController assetPathFromAssetConfiguration:v16 type:0];
  objc_initWeak(&location, self);
  if (v18)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = +[TPSLogger widget];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [TPSWidgetController fetchAssetForAssets:language:userInterfaceStyle:assetFileInfoManager:completionHandler:];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.tips.TPSWidgetController" code:2 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v21);
  }

  else
  {
    v22 = +[TPSLogger widget];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v18;
      _os_log_impl(&dword_1C00A7000, v22, OS_LOG_TYPE_DEFAULT, "widget asset path: %@", buf, 0xCu);
    }

    v24 = +[TPSAssetCacheController sharedInstance];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __110__TPSWidgetController_fetchAssetForAssets_language_userInterfaceStyle_assetFileInfoManager_completionHandler___block_invoke;
    v29[3] = &unk_1E8102230;
    objc_copyWeak(&v32, &location);
    v25 = *MEMORY[0x1E696A9C0];
    v26 = v17;
    v30 = v26;
    v31 = handlerCopy;
    LODWORD(v27) = v25;
    v21 = [v24 formattedDataForPath:v18 identifier:v26 attributionIdentifier:0 priority:v29 completionHandler:v27];

    [(TPSWidgetController *)self updateSessionMapValue:v21 forKey:v26];
    objc_destroyWeak(&v32);
  }

  objc_destroyWeak(&location);
}

void __110__TPSWidgetController_fetchAssetForAssets_language_userInterfaceStyle_assetFileInfoManager_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a3;
  v10 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateSessionMapValue:0 forKey:*(a1 + 32)];
  }

  v13 = +[TPSLogger widget];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __110__TPSWidgetController_fetchAssetForAssets_language_userInterfaceStyle_assetFileInfoManager_completionHandler___block_invoke_cold_1(v9);
  }

  if (v10)
  {
    v14 = +[TPSLogger widget];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __110__TPSWidgetController_fetchAssetForAssets_language_userInterfaceStyle_assetFileInfoManager_completionHandler___block_invoke_cold_2(v10, v14);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)cacheFileURLForAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager
{
  managerCopy = manager;
  languageCopy = language;
  assetsCopy = assets;
  v12 = [[TPSAssetsConfiguration alloc] initWithAssets:assetsCopy language:languageCopy userInterfaceStyle:style assetFileInfoManager:managerCopy];

  v13 = [(TPSAssetsConfiguration *)v12 cacheIdentifierForType:0];
  v14 = +[TPSAssetCacheController sharedInstance];
  v15 = [v14 cacheFileURLForIdentifier:v13];

  return v15;
}

- (double)timeSinceOSInstallDate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"TPSWelcomeNotificationStartDate"];
  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5;
  }

  else
  {
    v6 = *&TPSAcceptableWelcomeTimeframe;
  }

  return v6;
}

- (TPSWidgetControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)attemptWidgetUpdateWith:(void *)a1 .cold.3(void *a1)
{
  v2 = [a1 identifier];
  v3 = [a1 widgetContent];
  v9 = [v3 titleContent];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)fetchWidgetAssetsForDocument:(void *)a1 preferCacheIfAvailable:(uint8_t *)buf completionHandler:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "Asset available %@", buf, 0xCu);
}

- (void)fetchWidgetAssetsForDocument:(void *)a1 preferCacheIfAvailable:completionHandler:.cold.2(void *a1)
{
  v6 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __110__TPSWidgetController_fetchAssetForAssets_language_userInterfaceStyle_assetFileInfoManager_completionHandler___block_invoke_cold_1(void *a1)
{
  v6 = [a1 absoluteString];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __110__TPSWidgetController_fetchAssetForAssets_language_userInterfaceStyle_assetFileInfoManager_completionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "widget asset error: %@", &v2, 0xCu);
}

@end