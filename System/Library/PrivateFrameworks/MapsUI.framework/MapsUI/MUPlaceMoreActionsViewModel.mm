@interface MUPlaceMoreActionsViewModel
- (MUPlaceMoreActionsViewModel)initWithGroupedExternalActions:(id)actions promotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes menuActionProvider:(id)provider amsResultProvider:(id)resultProvider iconCache:(id)cache analyticsModuleType:(int64_t)type singleVendorAnalyticsTarget:(int)self0 multipleVendorAnalyticsTarget:(int)self1 appleMediaServicesSource:(int64_t)self2 externalActionHandler:(id)self3 analyticsHandler:(id)self4;
- (id)_allExternalActionMenuRevealButtons;
- (id)analyticsButtonValues;
- (id)buildMenuWithPresentationOptions:(id)options;
@end

@implementation MUPlaceMoreActionsViewModel

- (id)_allExternalActionMenuRevealButtons
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_externalActionMenuHelpers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        actionController = [*(*(&v23 + 1) + 8 * i) actionController];
        externalAction = [actionController externalAction];
        v11 = MUExternalActionRevealedAnalyticsModuleButtonsForAction(externalAction);

        if ([v11 count] >= 2)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v19 + 1) + 8 * j) setIsGroup:1];
              }

              v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }
        }

        [v3 _mapsui_addObjectsFromArrayIfNotNil:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)analyticsButtonValues
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _allExternalActionMenuRevealButtons = [(MUPlaceMoreActionsViewModel *)self _allExternalActionMenuRevealButtons];
  [v3 _mapsui_addObjectsFromArrayIfNotNil:_allExternalActionMenuRevealButtons];
  v5 = MUMap(self->_promotedSystemActionTypes, &__block_literal_global_10160);
  [v3 _mapsui_addObjectsFromArrayIfNotNil:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) setIsGroup:{1, v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v6 copy];

  return v11;
}

uint64_t __52__MUPlaceMoreActionsViewModel_analyticsButtonValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = MURevealedButtonModuleTypeForActionType([a2 integerValue]);
  v3 = MEMORY[0x1E69A24B0];

  return [v3 moduleButtonForType:v2];
}

- (id)buildMenuWithPresentationOptions:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = self->_externalActionMenuHelpers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        actionController = [v9 actionController];
        externalAction = [actionController externalAction];
        actionProviders = [externalAction actionProviders];
        v13 = [actionProviders count];

        if (v13 == 1)
        {
          symbolName = [v9 buildMenuElementsWithPresentationOptions:optionsCopy];
          [v28 addObjectsFromArray:symbolName];
        }

        else
        {
          symbolName = [v9 symbolName];
          v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:symbolName shape:0 fill:0];
          if (!v15)
          {
            v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:symbolName];
          }

          v16 = MEMORY[0x1E69DCC60];
          actionName = [v9 actionName];
          actionName2 = [v9 actionName];
          v19 = [v9 buildMenuElementsWithPresentationOptions:optionsCopy];
          v20 = [v16 menuWithTitle:actionName image:v15 identifier:actionName2 options:0 children:v19];

          [v28 addObject:v20];
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_menuProvider);
  v22 = [WeakRetained createHeaderButtonsMenuWithPromotedSystemActionTypes:selfCopy->_promotedSystemActionTypes excludedSystemActionTypes:selfCopy->_excludedSystemActionTypes presentationOptions:optionsCopy];

  children = [v22 children];
  [v28 addObjectsFromArray:children];

  v24 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F44CA030 image:0 identifier:@"Parent" options:1 children:v28];

  return v24;
}

- (MUPlaceMoreActionsViewModel)initWithGroupedExternalActions:(id)actions promotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes menuActionProvider:(id)provider amsResultProvider:(id)resultProvider iconCache:(id)cache analyticsModuleType:(int64_t)type singleVendorAnalyticsTarget:(int)self0 multipleVendorAnalyticsTarget:(int)self1 appleMediaServicesSource:(int64_t)self2 externalActionHandler:(id)self3 analyticsHandler:(id)self4
{
  v54 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  providerCopy = provider;
  resultProviderCopy = resultProvider;
  cacheCopy = cache;
  handlerCopy = handler;
  analyticsHandlerCopy = analyticsHandler;
  v52.receiver = self;
  v52.super_class = MUPlaceMoreActionsViewModel;
  v24 = [(MUActionRowItemViewModel *)&v52 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_menuProvider, providerCopy);
    v26 = [typesCopy copy];
    promotedSystemActionTypes = v25->_promotedSystemActionTypes;
    v25->_promotedSystemActionTypes = v26;

    v28 = [actionTypesCopy copy];
    excludedSystemActionTypes = v25->_excludedSystemActionTypes;
    v41 = v25;
    v25->_excludedSystemActionTypes = v28;

    v42 = actionsCopy;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v30 = actionsCopy;
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v49;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v49 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v48 + 1) + 8 * i);
          if ([v35 possiblyHasSupportedIntegrations])
          {
            v36 = [[MUGroupedExternalActionController alloc] initWithGroupedExternalAction:v35 amsResultProvider:resultProviderCopy supportsMultipleVendorSelection:1 actionHandler:handlerCopy analyticsHandler:analyticsHandlerCopy];
            [(MUGroupedExternalActionController *)v36 setMultipleVendorAnalyticsTarget:analyticsTarget];
            [(MUGroupedExternalActionController *)v36 setSingleVendorAnalyticsTarget:target];
            [(MUGroupedExternalActionController *)v36 setAnalyticsModuleType:type];
            [(MUGroupedExternalActionController *)v36 setSource:source];
            v37 = [[MUPlaceExternalActionMenuHelper alloc] initWithExternalActionController:v36 iconCache:cacheCopy];
            [(MUPlaceExternalActionMenuHelper *)v37 setIsQuickAction:1];
            [v43 addObject:v37];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v32);
    }

    v38 = [v43 copy];
    v25 = v41;
    externalActionMenuHelpers = v41->_externalActionMenuHelpers;
    v41->_externalActionMenuHelpers = v38;

    actionsCopy = v42;
  }

  return v25;
}

@end