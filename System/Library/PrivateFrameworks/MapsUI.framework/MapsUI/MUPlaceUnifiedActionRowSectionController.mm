@interface MUPlaceUnifiedActionRowSectionController
- (MUOfflineMapProvider)offlineMapProvider;
- (MUPlaceUnifiedActionRowSectionController)initWithMapItem:(id)item configuration:(id)configuration;
- (MUPlaceUnifiedActionRowSectionControllerDelegate)actionDelegate;
- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options;
- (id)leadingActionBarItem;
- (id)menuActionBarItems;
- (id)menuElementForActionItem:(id)item;
- (id)menuForActionItem:(id)item;
- (id)trailingActionBarItems;
- (int)analyticsModuleTypeForAction:(int)action presentationOptions:(id)options;
- (void)_buildButtonLayout;
- (void)_createSectionView;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)_updateActions:(id)actions;
- (void)_updateHasContent;
- (void)actionsRowView:(id)view didPresentMenuForViewModel:(id)model presentationOptions:(id)options;
- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options;
- (void)setOfflineFeatureDiscoveryView:(id)view;
- (void)setOfflineMapProvider:(id)provider;
- (void)setSecondaryActionButtonController:(id)controller;
@end

@implementation MUPlaceUnifiedActionRowSectionController

- (MUOfflineMapProvider)offlineMapProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);

  return WeakRetained;
}

- (MUPlaceUnifiedActionRowSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)menuActionBarItems
{
  if (objc_opt_respondsToSelector())
  {
    menuActionBarItems = [(MUGroupedActionsRowView *)self->_actionsRowView menuActionBarItems];
  }

  else
  {
    menuActionBarItems = 0;
  }

  return menuActionBarItems;
}

- (id)trailingActionBarItems
{
  if (objc_opt_respondsToSelector())
  {
    trailingActionBarItems = [(MUGroupedActionsRowView *)self->_actionsRowView trailingActionBarItems];
  }

  else
  {
    trailingActionBarItems = 0;
  }

  return trailingActionBarItems;
}

- (id)leadingActionBarItem
{
  if (objc_opt_respondsToSelector())
  {
    leadingActionBarItem = [(MUGroupedActionsRowView *)self->_actionsRowView leadingActionBarItem];
  }

  else
  {
    leadingActionBarItem = 0;
  }

  return leadingActionBarItem;
}

- (void)_updateActions:(id)actions
{
  v26 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (([(NSArray *)self->_actionItemViewModels isEqual:actionsCopy]& 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_actionItemViewModels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v10++) removeObserver:self];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_actionItemViewModels, actions);
    [(MUGroupedActionsRowView *)self->_actionsRowView setViewModels:actionsCopy];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_actionItemViewModels;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) addObserver:{self, v16}];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(MUPlaceUnifiedActionRowSectionController *)self _updateHasContent];
  }
}

- (void)setOfflineFeatureDiscoveryView:(id)view
{
  viewCopy = view;
  if (self->_offlineFeatureDiscoveryView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_offlineFeatureDiscoveryView, view);
    layoutBuilder = [(MUPlaceUnifiedActionRowSectionController *)self layoutBuilder];
    downloadOfflineViewModel = [layoutBuilder downloadOfflineViewModel];

    [downloadOfflineViewModel setFeatureDiscoveryView:self->_offlineFeatureDiscoveryView];
    viewCopy = v8;
  }
}

- (void)setOfflineMapProvider:(id)provider
{
  objc_storeWeak(&self->_offlineMapProvider, provider);

  [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
}

- (void)setSecondaryActionButtonController:(id)controller
{
  controllerCopy = controller;
  configuration = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  secondaryActionButtonController = [configuration secondaryActionButtonController];

  v6 = controllerCopy;
  if (secondaryActionButtonController != controllerCopy)
  {
    configuration2 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    [configuration2 setSecondaryActionButtonController:controllerCopy];

    configuration3 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    buttonModuleConfiguration = [configuration3 buttonModuleConfiguration];

    v6 = controllerCopy;
    if (!buttonModuleConfiguration)
    {
      [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
      v6 = controllerCopy;
    }
  }
}

- (void)_buildButtonLayout
{
  layoutBuilder = [(MUPlaceUnifiedActionRowSectionController *)self layoutBuilder];
  buildButtonLayout = [layoutBuilder buildButtonLayout];

  [(MUPlaceUnifiedActionRowSectionController *)self _updateActions:buildButtonLayout];
}

- (void)actionsRowView:(id)view didPresentMenuForViewModel:(id)model presentationOptions:(id)options
{
  modelCopy = model;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = modelCopy;
    if ([optionsCopy isForActionBar])
    {
      v9 = 6112;
    }

    else
    {
      v9 = 209;
    }

    externalActionMenuRevealButtons = [v8 externalActionMenuRevealButtons];
    if ([optionsCopy isForActionBarMoreMenu])
    {
      v11 = @"SECONDARY";
    }

    else if ([optionsCopy isForActionBar])
    {
      v11 = @"PRIMARY";
    }

    else
    {
      v11 = 0;
    }

    [(MUPlaceSectionController *)self captureInfoCardPartnerAction:v9 eventValue:0 sharedStateButtonList:externalActionMenuRevealButtons presentationOptions:optionsCopy classification:v11];
  }
}

- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options
{
  v37[5] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  configuration = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isForActionBar = 1;
  }

  else
  {
    isForActionBar = [optionsCopy isForActionBar];
  }

  v11 = [(MUPlaceUnifiedActionRowSectionController *)self analyticsModuleForAction:0 presentationOptions:optionsCopy];
  if (isForActionBar)
  {
    v12 = [MEMORY[0x1E69A1B10] moduleFromModuleType:46];

    v11 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36[0] = *MEMORY[0x1E696F118];
    sourceView = [optionsCopy sourceView];
    v14 = *MEMORY[0x1E696F108];
    v37[0] = sourceView;
    v37[1] = v11;
    v15 = *MEMORY[0x1E696F100];
    v36[1] = v14;
    v36[2] = v15;
    v37[2] = MEMORY[0x1E695E110];
    v36[3] = *MEMORY[0x1E696F0F0];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:isForActionBar];
    v37[3] = v16;
    v36[4] = *MEMORY[0x1E696F0F8];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isForActionBarMoreMenu")}];
    v37[4] = v17;
    actionDelegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:5];

    configuration2 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    actionManager = [configuration2 actionManager];
    actionRowItem = [modelCopy actionRowItem];
    resolvedActionItem = [actionRowItem resolvedActionItem];
    [actionManager performAction:resolvedActionItem options:actionDelegate completion:0];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    actionDelegate = [(MUPlaceUnifiedActionRowSectionController *)self actionDelegate];
    configuration3 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    [actionDelegate sectionController:self didSelectPrimaryButtonType:objc_msgSend(configuration3 options:{"primaryButtonType"), optionsCopy}];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34[0] = *MEMORY[0x1E696F118];
    v24 = modelCopy;
    sourceView2 = [optionsCopy sourceView];
    v26 = *MEMORY[0x1E696F108];
    v35[0] = sourceView2;
    v35[1] = v11;
    v27 = *MEMORY[0x1E696F100];
    v34[1] = v26;
    v34[2] = v27;
    v35[2] = MEMORY[0x1E695E110];
    v34[3] = *MEMORY[0x1E696F0F0];
    v28 = [MEMORY[0x1E696AD98] numberWithBool:isForActionBar];
    v35[3] = v28;
    v34[4] = *MEMORY[0x1E696F0F8];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isForActionBarMoreMenu")}];
    v35[4] = v29;
    actionDelegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:5];

    v30 = MEMORY[0x1E696F308];
    actionItemType = [v24 actionItemType];

    configuration3 = [v30 actionItemWithType:actionItemType];
    configuration4 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    actionManager2 = [configuration4 actionManager];
    [actionManager2 performAction:configuration3 options:actionDelegate completion:0];

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [modelCopy performSingleVendorSelectionActionWithPresentationOptions:optionsCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [modelCopy performWithPresentationOptions:optionsCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  actionDelegate = [(MUPlaceUnifiedActionRowSectionController *)self actionDelegate];
  [actionDelegate sectionControllerDidSelectViewContactButton:self];
LABEL_12:

LABEL_13:
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  v28 = *MEMORY[0x1E69E9840];
  moduleCopy = module;
  v5 = objc_alloc_init(MEMORY[0x1E69A24E0]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_actionItemViewModels;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        analyticsButtonValues = [*(*(&v22 + 1) + 8 * v11) analyticsButtonValues];
        [v6 _mapsui_addObjectsFromArrayIfNotNil:analyticsButtonValues];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v5 addButtons:{*(*(&v18 + 1) + 8 * v17++), v18}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }

  if ([v13 count])
  {
    [moduleCopy setUnifiedActionRow:v5];
  }
}

- (int)analyticsModuleTypeForAction:(int)action presentationOptions:(id)options
{
  if ([options isForActionBar])
  {
    return 46;
  }

  else
  {
    return 39;
  }
}

- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options
{
  v4 = MEMORY[0x1E69A1B10];
  v5 = [(MUPlaceUnifiedActionRowSectionController *)self analyticsModuleTypeForAction:*&action presentationOptions:options];

  return [v4 moduleFromModuleType:v5];
}

- (void)_updateHasContent
{
  hasContent = [(MUGroupedActionsRowView *)self->_actionsRowView hasContent];
  if (self->_hasContent != hasContent)
  {
    self->_hasContent = hasContent;
    delegate = [(MUPlaceSectionController *)self delegate];
    [delegate placeSectionControllerDidUpdateContent:self];
  }
}

- (id)menuElementForActionItem:(id)item
{
  itemCopy = item;
  configuration = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  actionRowMenuProvider = [configuration actionRowMenuProvider];
  v7 = [actionRowMenuProvider menuElementForActionItem:itemCopy];

  return v7;
}

- (id)menuForActionItem:(id)item
{
  v3 = [(MUPlaceUnifiedActionRowSectionController *)self menuElementForActionItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_createSectionView
{
  v12 = +[MUGroupedActionsRowViewConfiguration defaultConfiguration];
  [v12 setUseVibrancy:{+[MUInfoCardStyle hasExternallyProvidedTintColor](MUInfoCardStyle, "hasExternallyProvidedTintColor")}];
  v3 = [[MUGroupedActionsRowView alloc] initWithConfiguration:v12];
  actionsRowView = self->_actionsRowView;
  self->_actionsRowView = v3;

  [(MUGroupedActionsRowView *)self->_actionsRowView setPreservesSuperviewLayoutMargins:0];
  [(MUGroupedActionsRowView *)self->_actionsRowView setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(MUGroupedActionsRowView *)self->_actionsRowView setDelegate:self];
  [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
  v5 = [MUPlaceSectionView insetButtonSectionViewforContentView:self->_actionsRowView];
  sectionView = self->_sectionView;
  self->_sectionView = v5;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A1A78]];

  if ((v9 & 1) == 0)
  {
    v10 = +[MUPlaceholderGridCache unretainedInstance];
    placeholderGridCache = self->_placeholderGridCache;
    self->_placeholderGridCache = v10;

    [(MUPlaceholderGridCache *)self->_placeholderGridCache loadPlaceholderGridImages];
  }
}

- (MUPlaceUnifiedActionRowSectionController)initWithMapItem:(id)item configuration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = MUPlaceUnifiedActionRowSectionController;
  v8 = [(MUPlaceSectionController *)&v15 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }

    objc_storeStrong(&v8->_configuration, configuration);
    v10 = [[MUPlaceUnifiedActionRowLayoutBuilder alloc] initWithConfiguration:v8->_configuration delegate:v8];
    layoutBuilder = v8->_layoutBuilder;
    v8->_layoutBuilder = v10;

    [(MUPlaceUnifiedActionRowSectionController *)v8 _buildButtonLayout];
    [(MUPlaceUnifiedActionRowSectionController *)v8 _createSectionView];
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }
  }

  return v8;
}

@end