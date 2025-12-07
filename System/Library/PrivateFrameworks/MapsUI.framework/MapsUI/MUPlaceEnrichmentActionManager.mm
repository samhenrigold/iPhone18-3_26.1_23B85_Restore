@interface MUPlaceEnrichmentActionManager
- (MUExternalActionHandling)externalActionHandler;
- (MUPlaceCallToActionSectionControllerDelegate)callToActionDelegate;
- (MUPlaceEnrichmentActionManager)initWithPlaceActionManager:(id)manager mapItem:(id)item dataAvailability:(id)availability amsResultProvider:(id)provider callToActionDelegate:(id)delegate contextMenuDelegate:(id)menuDelegate externalActionHandler:(id)handler analyticsDelegate:(id)self0 onActionUpdate:(id)self1;
- (MUPlaceEnrichmentSectionAnalyticsDelegate)analyticsDelegate;
- (MUPlaceEnrichmentSectionContextMenuDelegate)contextMenuDelegate;
- (id)adamIDForAppCategory:(id)category;
- (id)supportedPlaceEnrichmentActions;
- (void)addExternalActionsAsSupportedActions:(id)actions;
- (void)addPhotoAction:(id)action;
- (void)configureWithEnrichmentDataProvider:(id)provider presentationOptions:(id)options;
- (void)contextMenuAction:(id)action;
- (void)directionsAction:(id)action;
- (void)getAppAction:(id)action;
- (void)layoutActionsUsingArguments:(id)arguments completion:(id)completion;
- (void)performActionUsingArguments:(id)arguments contextMenu:(id)menu completion:(id)completion;
- (void)ratePlaceAction:(id)action;
@end

@implementation MUPlaceEnrichmentActionManager

- (MUPlaceEnrichmentSectionAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (MUExternalActionHandling)externalActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_externalActionHandler);

  return WeakRetained;
}

- (MUPlaceEnrichmentSectionContextMenuDelegate)contextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextMenuDelegate);

  return WeakRetained;
}

- (MUPlaceCallToActionSectionControllerDelegate)callToActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callToActionDelegate);

  return WeakRetained;
}

- (void)addExternalActionsAsSupportedActions:(id)actions
{
  v37 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  mapItem = [(MUPlaceEnrichmentActionManager *)self mapItem];
  _externalActionLinks = [mapItem _externalActionLinks];

  enrichmentDataProvider = [(MUPlaceEnrichmentActionManager *)self enrichmentDataProvider];
  placeEnrichmentData = [enrichmentDataProvider placeEnrichmentData];
  enrichmentEntities = [placeEnrichmentData enrichmentEntities];
  firstObject = [enrichmentEntities firstObject];
  appAdamIds = [firstObject appAdamIds];

  v12 = [appAdamIds count];
  v13 = MEMORY[0x1E696AE18];
  if (v12)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke;
    v31[3] = &unk_1E8219EB0;
    v14 = appAdamIds;
    v32 = v14;
    v15 = [v13 predicateWithBlock:v31];
    v16 = [_externalActionLinks filteredArrayUsingPredicate:v15];

    v17 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v16;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "Filtered showcase external actions are: %@. Showcase app adamIDs: %@", buf, 0x16u);
    }

    v18 = v32;
  }

  else
  {
    v19 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_18731];
    v16 = [_externalActionLinks filteredArrayUsingPredicate:v19];

    v18 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&dword_1C5620000, v18, OS_LOG_TYPE_INFO, "Showcase external are: %@. These actions contain providers with no app adam id which is expected because these are not backed by an app store app.", buf, 0xCu);
    }
  }

  if ([v16 count] || (-[MUPlaceEnrichmentActionManager onActionUpdate](self, "onActionUpdate"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v20 = dispatch_group_create();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_33;
    v27[3] = &unk_1E8219F20;
    v28 = v20;
    v29 = actionsCopy;
    selfCopy = self;
    onActionUpdate = v20;
    [v16 enumerateObjectsUsingBlock:v27];
    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_38;
    v25[3] = &unk_1E8219F48;
    objc_copyWeak(&v26, buf);
    v25[4] = self;
    dispatch_group_notify(onActionUpdate, MEMORY[0x1E69E96A0], v25);
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);

    supportedActions = v28;
  }

  else
  {
    v24 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_INFO, "Showcase external actions are not applicable as no adam ids were found.", buf, 2u);
    }

    onActionUpdate = [(MUPlaceEnrichmentActionManager *)self onActionUpdate];
    supportedActions = [(MUPlaceEnrichmentActionManager *)self supportedActions];
    (onActionUpdate[2].isa)(onActionUpdate, supportedActions);
  }
}

uint64_t __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appAdamIds];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  v5 = [v3 intersectsSet:v4];

  return v5;
}

void __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = [v5 categoryId];

  if (v6)
  {
    v7 = [MUPlaceEnrichmentAction alloc];
    v26 = @"appCategory";
    v8 = [v5 categoryId];
    v27[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [(MUPlaceEnrichmentAction *)v7 initWithActionType:12 isValidated:0 mkActionType:0 metadata:v9];

    [*(a1 + 40) addObject:v10];
    v11 = [MUGroupedExternalActionController alloc];
    v12 = [*(a1 + 48) amsResultProvider];
    v13 = [*(a1 + 48) externalActionHandler];
    v14 = [*(a1 + 48) analyticsDelegate];
    v15 = [(MUGroupedExternalActionController *)v11 initWithGroupedExternalAction:v5 amsResultProvider:v12 supportsMultipleVendorSelection:0 actionHandler:v13 analyticsHandler:v14];

    [(MUGroupedExternalActionController *)v15 setSingleVendorAnalyticsTarget:201];
    [(MUGroupedExternalActionController *)v15 setMultipleVendorAnalyticsTarget:201];
    [(MUGroupedExternalActionController *)v15 setAnalyticsModuleType:5];
    [(MUGroupedExternalActionController *)v15 setSource:11];
    v16 = [*(a1 + 48) externalActionsControllers];
    [v16 addObject:v15];

    objc_initWeak(&location, *(a1 + 48));
    v17 = [*(a1 + 48) externalActionsControllers];
    v18 = [v17 objectAtIndex:a3];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_2;
    v20[3] = &unk_1E8219EF8;
    objc_copyWeak(v24, &location);
    v24[1] = a3;
    v21 = v5;
    v19 = v10;
    v22 = v19;
    v23 = *(a1 + 32);
    [v18 fetchProviderLockupsWithCompletion:v20];

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }
}

void __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_38(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained externalActionsPairs];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Fetched view models for all actions: %@", &v9, 0xCu);
    }

    v5 = [*(a1 + 32) onActionUpdate];

    if (v5)
    {
      v6 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Informing Enrichment section controller about external extensions validation.", &v9, 2u);
      }

      v7 = [*(a1 + 32) onActionUpdate];
      v8 = [*(a1 + 32) supportedActions];
      (v7)[2](v7, v8);
    }
  }
}

void __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_2(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v3 count])
    {
      v5 = [MUExternalActionPair alloc];
      v6 = [WeakRetained externalActionsControllers];
      v7 = [v6 objectAtIndex:*(a1 + 64)];
      v8 = [(MUExternalActionPair *)v5 initWithAction:v3 actionController:v7];

      v9 = [WeakRetained externalActionsPairs];
      v10 = [*(a1 + 32) categoryId];
      [v9 setObject:v8 forKey:v10];

      v11 = [WeakRetained supportedActions];
      [v11 removeObject:*(a1 + 40)];

      v12 = [MUPlaceEnrichmentAction alloc];
      v19 = @"appCategory";
      v13 = [*(a1 + 32) categoryId];
      v20[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = [(MUPlaceEnrichmentAction *)v12 initWithActionType:12 isValidated:1 mkActionType:0 metadata:v14];

      v16 = [WeakRetained supportedActions];
      [v16 addObject:v15];
    }

    else
    {
      v8 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        dispatch_group_leave(*(a1 + 48));
        goto LABEL_8;
      }

      v15 = [*(a1 + 32) actionName];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch lockups for action: %@", &v17, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_32(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [a2 actionProviders];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) appAdamId];
        v7 = [v6 length];

        if (!v7)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)contextMenuAction:(id)action
{
  actionCopy = action;
  v4 = [[MUPlaceEnrichmentAction alloc] initWithActionType:13 isValidated:1 mkActionType:0];
  [actionCopy addObject:v4];
}

- (void)getAppAction:(id)action
{
  actionCopy = action;
  dataAvailability = [(MUPlaceEnrichmentActionManager *)self dataAvailability];
  suportsOfficialApp = [dataAvailability suportsOfficialApp];

  if (suportsOfficialApp)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:14 isValidated:1 mkActionType:26];
    [actionCopy addObject:v6];
  }
}

- (void)addPhotoAction:(id)action
{
  actionCopy = action;
  v4 = MEMORY[0x1E696F2E8];
  mapItem = [(MUPlaceEnrichmentActionManager *)self mapItem];
  LODWORD(v4) = [v4 shouldShowPhotosCallToActionForMapItem:mapItem];

  if (v4)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:8 isValidated:1 mkActionType:9];
    [actionCopy addObject:v6];
  }
}

- (void)ratePlaceAction:(id)action
{
  actionCopy = action;
  v4 = MEMORY[0x1E696F2E8];
  mapItem = [(MUPlaceEnrichmentActionManager *)self mapItem];
  LODWORD(v4) = [v4 shouldShowRatingsCallToActionForMapItem:mapItem];

  if (v4)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:7 isValidated:1 mkActionType:0];
    [actionCopy addObject:v6];
  }
}

- (void)directionsAction:(id)action
{
  actionCopy = action;
  dataAvailability = [(MUPlaceEnrichmentActionManager *)self dataAvailability];
  canShowDirections = [dataAvailability canShowDirections];

  if (canShowDirections)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:1 isValidated:1 mkActionType:30];
    [actionCopy addObject:v6];
  }
}

- (void)layoutActionsUsingArguments:(id)arguments completion:(id)completion
{
  v45[1] = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  completionCopy = completion;
  v8 = argumentsCopy;
  v9 = v8;
  if (v8)
  {
    firstObject = [v8 firstObject];
    v11 = [firstObject objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "ERROR: Arguments is missing actionKey. Arguments: %@", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v13 = [firstObject objectForKeyedSubscript:@"actionType"];
    if (![v13 isEqualToString:@"MUPlaceEnrichmentActionManagerContextMenu"])
    {
      v17 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_ERROR, "ERROR: Trying it layout action that is not supported. Arguments: %@", buf, 0xCu);
      }

      goto LABEL_27;
    }

    v14 = [firstObject objectForKeyedSubscript:@"isValidated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [firstObject objectForKeyedSubscript:@"isValidated"];
      v16 = v15 != 0;
    }

    else
    {
      v16 = 0;
    }

    v18 = [firstObject objectForKeyedSubscript:@"boundingBox"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [firstObject objectForKeyedSubscript:@"boundingBox"];
      v20 = v19 != 0;
    }

    else
    {
      v20 = 0;
    }

    v21 = [firstObject objectForKeyedSubscript:@"accessibilityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [firstObject objectForKeyedSubscript:@"accessibilityLabel"];

      if (v16 && v20 && v22)
      {
        v17 = [firstObject objectForKeyedSubscript:@"boundingBox"];
        v23 = [firstObject objectForKeyedSubscript:@"accessibilityLabel"];
        contextMenuDelegate = [(MUPlaceEnrichmentActionManager *)self contextMenuDelegate];
        [contextMenuDelegate addContextMenuUsingBoundingBox:v17 accessibilityLabel:v23];

        v25 = [firstObject objectForKeyedSubscript:@"subActions"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [firstObject objectForKeyedSubscript:@"subActions"];

          if (!v26)
          {
LABEL_23:

LABEL_27:
LABEL_28:

            goto LABEL_29;
          }

          v25 = [firstObject objectForKeyedSubscript:@"subActions"];
          v27 = [MUPlaceEnrichmentAction alloc];
          v44 = @"subActions";
          v45[0] = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
          v29 = [(MUPlaceEnrichmentAction *)v27 initWithActionType:13 isValidated:1 mkActionType:0 metadata:v28];

          contextMenuDelegate2 = [(MUPlaceEnrichmentActionManager *)self contextMenuDelegate];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __73__MUPlaceEnrichmentActionManager_layoutActionsUsingArguments_completion___block_invoke;
          v34[3] = &unk_1E821A730;
          v35 = completionCopy;
          [contextMenuDelegate2 didLayoutContextMenu:v29 completion:v34];
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v17 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromBOOL();
      v32 = NSStringFromBOOL();
      v33 = NSStringFromBOOL();
      *buf = 138413058;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_ERROR, "ERROR: layout action arguments are not correct. isValidated:%@, boundingBoxValid:%@, accessibilityLabelValid:%@, \nArguments: %@", buf, 0x2Au);
    }

    goto LABEL_27;
  }

  firstObject = MUGetMUPlaceEnrichmentActionManagerLog();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = 0;
    _os_log_impl(&dword_1C5620000, firstObject, OS_LOG_TYPE_ERROR, "ERROR: missing top level arguments for layoutActions callback: %@", buf, 0xCu);
  }

LABEL_29:
}

uint64_t __73__MUPlaceEnrichmentActionManager_layoutActionsUsingArguments_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)performActionUsingArguments:(id)arguments contextMenu:(id)menu completion:(id)completion
{
  v133 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  menuCopy = menu;
  completionCopy = completion;
  v10 = MUGetMUPlaceEnrichmentActionManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = argumentsCopy;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "Performing action using arguments : %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v129 = 0x3032000000;
  v130 = __Block_byref_object_copy__18756;
  v131 = __Block_byref_object_dispose__18757;
  v132 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke;
  aBlock[3] = &unk_1E8219D98;
  v11 = completionCopy;
  v118 = v11;
  p_buf = &buf;
  v12 = _Block_copy(aBlock);
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__18756;
  v115 = __Block_byref_object_dispose__18757;
  v116 = 0;
  sourceView = [(MUPlaceEnrichmentActionManager *)self sourceView];
  traitCollection = [sourceView traitCollection];
  v15 = [traitCollection userInterfaceIdiom] == 0;

  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_9;
  v105[3] = &unk_1E8219DC0;
  v110 = v15;
  v16 = argumentsCopy;
  v108 = &v111;
  v109 = 13;
  v106 = v16;
  selfCopy = self;
  v17 = _Block_copy(v105);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_14;
  v103[3] = &unk_1E8219E10;
  v104 = v15;
  v103[5] = &v111;
  v103[6] = 13;
  v103[4] = self;
  v18 = _Block_copy(v103);
  supportedActions = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  v20 = [supportedActions count] == 0;

  if (v20)
  {
    v30 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v123) = 0;
      _os_log_impl(&dword_1C5620000, v30, OS_LOG_TYPE_ERROR, "ERROR: Performing action as no supported actions.", &v123, 2u);
    }

    v12[2](v12, 0);
  }

  else
  {
    v21 = [v16 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [v16 objectForKeyedSubscript:@"actionType"];
      supportedActions2 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_17;
      v100[3] = &unk_1E8219E38;
      v89 = v23;
      v101 = v89;
      v102 = &buf;
      v25 = [supportedActions2 objectsPassingTest:v100];

      v26 = *(*(&buf + 1) + 40);
      if (!v26)
      {
        analyticsDelegate = MUGetMUPlaceEnrichmentActionManagerLog();
        if (!os_log_type_enabled(analyticsDelegate, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          v31 = 0;
LABEL_18:

          v12[2](v12, v31);
          goto LABEL_27;
        }

        LODWORD(v123) = 138412290;
        *(&v123 + 4) = v16;
        v29 = "ERROR: Unsupported action invoked from Showcase %@";
LABEL_16:
        _os_log_impl(&dword_1C5620000, analyticsDelegate, OS_LOG_TYPE_ERROR, v29, &v123, 0xCu);
        goto LABEL_17;
      }

      actionType = [v26 actionType];
      if (actionType <= 6)
      {
        if ((actionType - 1) >= 6)
        {
          if (actionType)
          {
LABEL_27:

            goto LABEL_28;
          }

          analyticsDelegate = MUGetMUPlaceEnrichmentActionManagerLog();
          if (!os_log_type_enabled(analyticsDelegate, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          LODWORD(v123) = 138412290;
          *(&v123 + 4) = v16;
          v29 = "MUPlaceEnrichmentActionManagerUnknown action invoked from Showcase %@";
          goto LABEL_16;
        }

LABEL_21:
        v18[2](v18);
        v17[2](v17);
        v32 = [MEMORY[0x1E69A1B10] moduleFromModuleType:40];
        v33 = v112[5];
        if (v33)
        {
          sourceView2 = v33;
        }

        else
        {
          presentationOptions = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          sourceView2 = [presentationOptions sourceView];
        }

        if (menuCopy)
        {
          v36 = menuCopy;

          sourceView2 = v36;
        }

        v37 = *MEMORY[0x1E696F118];
        v126[0] = *MEMORY[0x1E696F108];
        v126[1] = v37;
        v127[0] = v32;
        v127[1] = sourceView2;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
        v39 = [MEMORY[0x1E696F308] actionItemWithType:{objc_msgSend(*(*(&buf + 1) + 40), "mkActionType")}];
        placeActionManager = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_21;
        v98[3] = &unk_1E821B860;
        v99 = v12;
        [placeActionManager performAction:v39 options:v38 completion:v98];

        goto LABEL_27;
      }

      if (actionType <= 8)
      {
        if (actionType == 7)
        {
          callToActionDelegate = [(MUPlaceEnrichmentActionManager *)self callToActionDelegate];
          presentationOptions2 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          [callToActionDelegate presentPOIEnrichmentWithPresentationOptions:presentationOptions2];

          analyticsDelegate = [(MUPlaceEnrichmentActionManager *)self analyticsDelegate];
          [analyticsDelegate didTapRatePlace];
        }

        else
        {
          v18[2](v18);
          v17[2](v17);
          v41 = v112[5];
          if (v41)
          {
            sourceView3 = v112[5];
          }

          else
          {
            supportedActions2 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
            sourceView3 = [supportedActions2 sourceView];
          }

          presentationOptions3 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          [presentationOptions3 setSourceView:sourceView3];

          if (!v41)
          {
          }

          callToActionDelegate2 = [(MUPlaceEnrichmentActionManager *)self callToActionDelegate];
          presentationOptions4 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          [callToActionDelegate2 presentAddPhotosWithPresentationOptions:presentationOptions4 entryPoint:0 originTarget:0];

          analyticsDelegate = [(MUPlaceEnrichmentActionManager *)self analyticsDelegate];
          [analyticsDelegate didTapAddPhoto];
        }

        v31 = 1;
        goto LABEL_18;
      }

      if ((actionType - 9) < 3)
      {
        goto LABEL_21;
      }

      if (actionType != 12)
      {
        goto LABEL_27;
      }

      *&v123 = 0;
      *(&v123 + 1) = &v123;
      v124 = 0x2020000000;
      v125 = 0;
      v43 = [v16 objectForKeyedSubscript:@"appCategory"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [v16 objectForKeyedSubscript:@"appCategory"];
        v45 = v44 == 0;
      }

      else
      {
        v45 = 1;
      }

      v48 = [v16 objectForKeyedSubscript:@"isValidated"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = [v16 objectForKeyedSubscript:@"isValidated"];
        v50 = v49 == 0;

        if (!v45 && !v50)
        {
          v88 = [v16 objectForKeyedSubscript:@"appCategory"];
          v51 = [v16 objectForKeyedSubscript:@"isValidated"];
          v52 = NSBOOLFromString();

          if (((v88 != 0) & v52) != 1)
          {
            v68 = MUGetMUPlaceEnrichmentActionManagerLog();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *v121 = 138412290;
              v122 = v16;
              _os_log_impl(&dword_1C5620000, v68, OS_LOG_TYPE_ERROR, "Action arguments not valid for External Action: %@", v121, 0xCu);
            }

            goto LABEL_83;
          }

          externalActionsPairs = [(MUPlaceEnrichmentActionManager *)self externalActionsPairs];
          v85 = [externalActionsPairs objectForKey:v88];

          v54 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = *(*(&buf + 1) + 40);
            *v121 = 138412290;
            v122 = v55;
            _os_log_impl(&dword_1C5620000, v54, OS_LOG_TYPE_DEBUG, "Opening external action for showcase: %@", v121, 0xCu);
          }

          enrichmentDataProvider = [(MUPlaceEnrichmentActionManager *)self enrichmentDataProvider];
          placeEnrichmentData = [enrichmentDataProvider placeEnrichmentData];
          enrichmentEntities = [placeEnrichmentData enrichmentEntities];
          firstObject = [enrichmentEntities firstObject];
          appAdamIds = [firstObject appAdamIds];

          v60 = [appAdamIds count];
          v61 = MUGetMUPlaceEnrichmentActionManagerLog();
          v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
          if (v60)
          {
            if (v62)
            {
              *v121 = 138412290;
              v122 = appAdamIds;
              _os_log_impl(&dword_1C5620000, v61, OS_LOG_TYPE_DEBUG, "AdamId's found were %@", v121, 0xCu);
            }

            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_22;
            v95[3] = &unk_1E8219E88;
            v96 = v85;
            v97 = &v123;
            [appAdamIds enumerateObjectsUsingBlock:v95];
            viewModels = v96;
          }

          else
          {
            if (v62)
            {
              *v121 = 0;
              _os_log_impl(&dword_1C5620000, v61, OS_LOG_TYPE_DEBUG, "No AdamIds were found which means that we need to execute a flexible action link.", v121, 2u);
            }

            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            viewModels = [v85 viewModels];
            v69 = [viewModels countByEnumeratingWithState:&v91 objects:v120 count:16];
            if (v69)
            {
              obj = viewModels;
              v70 = *v92;
              while (2)
              {
                for (i = 0; i != v69; ++i)
                {
                  if (*v92 != v70)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v72 = *(*(&v91 + 1) + 8 * i);
                  if ([v72 linkType] == 4)
                  {
                    v73 = MUGetMUPlaceEnrichmentActionManagerLog();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                    {
                      *v121 = 138412290;
                      v122 = v72;
                      _os_log_impl(&dword_1C5620000, v73, OS_LOG_TYPE_DEBUG, "Found a web link with view model %@", v121, 0xCu);
                    }

                    viewModels = obj;
                    v74 = objc_opt_new();
                    actionController = [v85 actionController];
                    [actionController openPartnerActionUsingViewModel:v72 withPresentationOptions:v74];

                    *(*(&v123 + 1) + 24) = 1;
                    goto LABEL_70;
                  }
                }

                v69 = [obj countByEnumeratingWithState:&v91 objects:v120 count:16];
                if (v69)
                {
                  continue;
                }

                break;
              }

              viewModels = obj;
            }
          }

LABEL_70:

          if (*(*(&v123 + 1) + 24))
          {
LABEL_82:

            v68 = v85;
LABEL_83:

            v64 = v88;
LABEL_84:

            v12[2](v12, *(*(&v123 + 1) + 24));
            _Block_object_dispose(&v123, 8);
            goto LABEL_27;
          }

          v76 = [appAdamIds count];
          v77 = MUGetMUPlaceEnrichmentActionManagerLog();
          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
          if (v76)
          {
            if (v78)
            {
              v79 = *(*(&buf + 1) + 40);
              *v121 = 138412290;
              v122 = v79;
              v80 = "Failed to invoke action: %@ as there are no view models with appAdamIDs that match the showcase specific appAdamIDs";
LABEL_76:
              _os_log_impl(&dword_1C5620000, v77, OS_LOG_TYPE_ERROR, v80, v121, 0xCu);
            }
          }

          else if (v78)
          {
            v81 = *(*(&buf + 1) + 40);
            *v121 = 138412290;
            v122 = v81;
            v80 = "Failed to invoke action: %@ as there are no view models with flexible action links";
            goto LABEL_76;
          }

          v82 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            viewModels2 = [v85 viewModels];
            *v121 = 138412290;
            v122 = viewModels2;
            _os_log_impl(&dword_1C5620000, v82, OS_LOG_TYPE_ERROR, "--> MapItem external action view models : %@", v121, 0xCu);
          }

          v84 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *v121 = 138412290;
            v122 = appAdamIds;
            _os_log_impl(&dword_1C5620000, v84, OS_LOG_TYPE_ERROR, "--> Showcase ordered appAdamIds: %@", v121, 0xCu);
          }

          goto LABEL_82;
        }
      }

      else
      {
      }

      v64 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *v121 = 138412290;
        v122 = v16;
        _os_log_impl(&dword_1C5620000, v64, OS_LOG_TYPE_ERROR, "Action arguments missing arguments needed to invoke external action: %@", v121, 0xCu);
      }

      goto LABEL_84;
    }
  }

LABEL_28:

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&buf, 8);
}

uint64_t __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v2 = result;
    v3 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*(*(v2 + 40) + 8) + 40);
      v5 = NSStringFromBOOL();
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Invoking completion handler for action: %@. Performed Action: (%@)", &v6, 0x16u);
    }

    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_9(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 64) & 1) == 0)
  {
    v25 = [*(a1 + 32) objectForKeyedSubscript:@"boundingBox"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [*(a1 + 32) objectForKeyedSubscript:@"boundingBox"];

      if (v2)
      {
        v3 = [*(a1 + 32) objectForKeyedSubscript:@"boundingBox"];
        v4 = [v3 objectForKeyedSubscript:@"xCoordinate"];
        [v4 doubleValue];
        v6 = v5;
        v7 = [v3 objectForKeyedSubscript:@"yCoordinate"];
        [v7 doubleValue];
        v9 = v8;
        v10 = [v3 objectForKeyedSubscript:@"width"];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v3 objectForKeyedSubscript:@"height"];
        [v13 doubleValue];
        v15 = v14;

        v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v9, v12, v15}];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        if (GEOConfigGetBOOL())
        {
          v19 = *(*(*(a1 + 48) + 8) + 40);
          v20 = [MEMORY[0x1E69DC888] redColor];
          [v19 setBackgroundColor:v20];

          [*(*(*(a1 + 48) + 8) + 40) setAlpha:0.1];
        }

        [*(*(*(a1 + 48) + 8) + 40) setUserInteractionEnabled:0];
        [*(*(*(a1 + 48) + 8) + 40) setTag:*(a1 + 56)];
        v21 = [*(a1 + 40) sourceView];
        [v21 addSubview:*(*(*(a1 + 48) + 8) + 40)];

        v22 = MUGetMUPlaceEnrichmentActionManagerLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v32.origin.x = v6;
          v32.origin.y = v9;
          v32.size.width = v12;
          v32.size.height = v15;
          v23 = NSStringFromCGRect(v32);
          v24 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138412546;
          v27 = v23;
          v28 = 2112;
          v29 = v24;
          _os_log_impl(&dword_1C5620000, v22, OS_LOG_TYPE_DEBUG, "Added a dummy view at: %@. View: %@", buf, 0x16u);
        }
      }
    }

    else
    {
    }
  }
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_14(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [*(a1 + 32) sourceView];
    v3 = [v2 subviews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2;
    v8[3] = &unk_1E8219DE8;
    v4 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v8[5] = v4;
    [v3 enumerateObjectsUsingBlock:v8];

    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_DEBUG, "Removed a dummy view at: %@", buf, 0xCu);
      }
    }
  }
}

uint64_t __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_17(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 actionType] - 1;
  if (v8 > 0xD)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E8219F68[v8];
  }

  v10 = [v7 isEqualToString:v9];
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }

  return v10;
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_22(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) viewModels];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2_23;
  v11[3] = &unk_1E8219E60;
  v12 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v11];
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2_23(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 appAdamId];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_DEBUG, "Showcase action will be executed using app adam ID: %@. View Model: %@", &v14, 0x16u);
    }

    v11 = objc_opt_new();
    v12 = [*(a1 + 40) actionController];
    [v12 openPartnerActionUsingViewModel:v6 withPresentationOptions:v11];

    v13 = *(a1 + 56);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    *v13 = 1;
  }
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 tag] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)adamIDForAppCategory:(id)category
{
  v14 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  externalActionsPairs = [(MUPlaceEnrichmentActionManager *)self externalActionsPairs];
  v6 = [externalActionsPairs objectForKey:categoryCopy];

  if (v6)
  {
    viewModels = [v6 viewModels];
    firstObject = [viewModels firstObject];
    appAdamId = [firstObject appAdamId];
  }

  else
  {
    v10 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = categoryCopy;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "No app adamID found for appCategory: %@", &v12, 0xCu);
    }

    appAdamId = 0;
  }

  return appAdamId;
}

- (void)configureWithEnrichmentDataProvider:(id)provider presentationOptions:(id)options
{
  v15 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  optionsCopy = options;
  v8 = MUGetMUPlaceEnrichmentActionManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = providerCopy;
    v13 = 2112;
    v14 = optionsCopy;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "Configuring enrichmentDataProvider: %@ and presentationOptions: %@", &v11, 0x16u);
  }

  [(MUPlaceEnrichmentActionManager *)self setEnrichmentDataProvider:providerCopy];
  [(MUPlaceEnrichmentActionManager *)self setPresentationOptions:optionsCopy];
  presentationOptions = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
  sourceView = [presentationOptions sourceView];
  [(MUPlaceEnrichmentActionManager *)self setSourceView:sourceView];
}

- (id)supportedPlaceEnrichmentActions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(MUPlaceEnrichmentActionManager *)self setSupportedActions:v3];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  placeActionManager = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
  v6 = [placeActionManager createRowActionsWithStyle:0];
  [v4 addObjectsFromArray:v6];

  placeActionManager2 = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
  createFooterActions = [placeActionManager2 createFooterActions];
  [v4 addObjectsFromArray:createFooterActions];

  placeActionManager3 = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
  createContactActions = [placeActionManager3 createContactActions];
  [v4 addObjectsFromArray:createContactActions];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__MUPlaceEnrichmentActionManager_supportedPlaceEnrichmentActions__block_invoke;
  v20[3] = &unk_1E8219D70;
  v20[4] = self;
  [v4 enumerateObjectsUsingBlock:v20];
  supportedActions = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self directionsAction:supportedActions];

  supportedActions2 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self ratePlaceAction:supportedActions2];

  supportedActions3 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self addPhotoAction:supportedActions3];

  supportedActions4 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self getAppAction:supportedActions4];

  supportedActions5 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self contextMenuAction:supportedActions5];

  supportedActions6 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self addExternalActionsAsSupportedActions:supportedActions6];

  supportedActions7 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  v18 = [supportedActions7 copy];

  return v18;
}

void __65__MUPlaceEnrichmentActionManager_supportedPlaceEnrichmentActions__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 type];
  if (v3 > 20)
  {
    if (v3 <= 41)
    {
      if (v3 != 21)
      {
        if (v3 == 22)
        {
LABEL_25:
          v4 = [MUPlaceEnrichmentAction alloc];
          v5 = 9;
          v6 = 22;
          goto LABEL_30;
        }

        if (v3 != 32)
        {
          goto LABEL_32;
        }

LABEL_18:
        v7 = [*(a1 + 32) dataAvailability];
        v8 = [v7 supportsReportAnIssue];

        if (!v8)
        {
          goto LABEL_32;
        }

        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 11;
        v6 = 32;
        goto LABEL_30;
      }
    }

    else
    {
      if ((v3 - 42) < 2)
      {
        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 7;
        v6 = 42;
        goto LABEL_30;
      }

      if ((v3 - 44) >= 2)
      {
        goto LABEL_32;
      }
    }

    v4 = [MUPlaceEnrichmentAction alloc];
    v5 = 5;
    v6 = 21;
    goto LABEL_30;
  }

  if (v3 > 9)
  {
    if (v3 > 12)
    {
      if (v3 == 13)
      {
        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 3;
        v6 = 13;
      }

      else
      {
        if (v3 != 16)
        {
          goto LABEL_32;
        }

        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 6;
        v6 = 16;
      }
    }

    else if (v3 == 10)
    {
      if (![v11 enabled])
      {
        goto LABEL_32;
      }

      v4 = [MUPlaceEnrichmentAction alloc];
      v5 = 2;
      v6 = 10;
    }

    else
    {
      if (v3 != 11)
      {
        goto LABEL_32;
      }

      v4 = [MUPlaceEnrichmentAction alloc];
      v5 = 4;
      v6 = 11;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_18;
  }

  if (v3 != 4)
  {
    if (v3 != 5)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v4 = [MUPlaceEnrichmentAction alloc];
  v5 = 10;
  v6 = 4;
LABEL_30:
  v9 = [(MUPlaceEnrichmentAction *)v4 initWithActionType:v5 isValidated:1 mkActionType:v6];
  if (v9)
  {
    v10 = [*(a1 + 32) supportedActions];
    [v10 addObject:v9];
  }

LABEL_32:
}

- (MUPlaceEnrichmentActionManager)initWithPlaceActionManager:(id)manager mapItem:(id)item dataAvailability:(id)availability amsResultProvider:(id)provider callToActionDelegate:(id)delegate contextMenuDelegate:(id)menuDelegate externalActionHandler:(id)handler analyticsDelegate:(id)self0 onActionUpdate:(id)self1
{
  managerCopy = manager;
  itemCopy = item;
  availabilityCopy = availability;
  providerCopy = provider;
  delegateCopy = delegate;
  menuDelegateCopy = menuDelegate;
  handlerCopy = handler;
  analyticsDelegateCopy = analyticsDelegate;
  updateCopy = update;
  v36.receiver = self;
  v36.super_class = MUPlaceEnrichmentActionManager;
  v23 = [(MUPlaceEnrichmentActionManager *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_placeActionManager, manager);
    objc_storeStrong(&v24->_mapItem, item);
    objc_storeStrong(&v24->_dataAvailability, availability);
    objc_storeStrong(&v24->_amsResultProvider, provider);
    objc_storeWeak(&v24->_callToActionDelegate, delegateCopy);
    objc_storeWeak(&v24->_contextMenuDelegate, menuDelegateCopy);
    objc_storeWeak(&v24->_externalActionHandler, handlerCopy);
    objc_storeWeak(&v24->_analyticsDelegate, analyticsDelegateCopy);
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    externalActionsPairs = v24->_externalActionsPairs;
    v24->_externalActionsPairs = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    externalActionsControllers = v24->_externalActionsControllers;
    v24->_externalActionsControllers = v27;

    v29 = _Block_copy(updateCopy);
    onActionUpdate = v24->_onActionUpdate;
    v24->_onActionUpdate = v29;
  }

  return v24;
}

@end