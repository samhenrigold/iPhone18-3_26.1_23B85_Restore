@interface MUFooterActionsSectionController
- (MUFooterActionsSectionController)initWithActionManager:(id)manager;
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (NSArray)sectionViews;
- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options;
- (id)infoCardChildPossibleActions;
- (id)revealedAnalyticsModule;
- (void)_setupFooterView;
- (void)reloadData;
@end

@implementation MUFooterActionsSectionController

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)revealedAnalyticsModule
{
  v2 = MEMORY[0x1E69A24A8];
  v3 = [(MUFooterActionsSectionController *)self analyticsModuleTypeForAction:0 presentationOptions:0];

  return [v2 moduleWithType:v3];
}

- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options
{
  v4 = MEMORY[0x1E69A1B10];
  v5 = [(MUFooterActionsSectionController *)self analyticsModuleTypeForAction:*&action presentationOptions:options];

  return [v4 moduleFromModuleType:v5];
}

- (id)infoCardChildPossibleActions
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_footerActions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        resolvedActionItem = [*(*(&v14 + 1) + 8 * i) resolvedActionItem];
        type = [resolvedActionItem type];

        v11 = type - 1;
        if (type - 1) <= 0x11 && ((0x201F9u >> v11))
        {
          [array addObject:qword_1E821A580[v11]];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [array copy];

  return v12;
}

- (void)reloadData
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);
  createFooterActions = [WeakRetained createFooterActions];
  footerActions = self->_footerActions;
  self->_footerActions = createFooterActions;

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_footerActions, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_footerActions;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [[MUActionItemCellModel alloc] initWithActionItem:v10];
        objc_initWeak(&location, self);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __46__MUFooterActionsSectionController_reloadData__block_invoke;
        v14[3] = &unk_1E821A560;
        objc_copyWeak(&v15, &location);
        v14[4] = v10;
        [(MUActionItemCellModel *)v11 setActionBlock:v14];
        [v6 addObject:v11];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [v6 copy];
  [(MUActionGroupSectionView *)self->_footerView setViewModels:v12];
}

void __46__MUFooterActionsSectionController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 2);
    v7 = [*(a1 + 32) resolvedActionItem];
    v8 = *MEMORY[0x1E696F118];
    v13[0] = v3;
    v9 = *MEMORY[0x1E696F108];
    v12[0] = v8;
    v12[1] = v9;
    v10 = [v5 analyticsModuleForAction:0 presentationOptions:0];
    v13[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [v6 performAction:v7 options:v11 completion:0];
  }
}

- (NSArray)sectionViews
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_sectionView;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_setupFooterView
{
  v7 = +[MUInfoCardStyle preferredVerticalCardConfiguration];
  [v7 setShowSeparators:0];
  v3 = [[MUActionGroupSectionView alloc] initWithConfiguration:v7];
  footerView = self->_footerView;
  self->_footerView = v3;

  [(MUStackView *)self->_footerView setSpacing:8.0];
  v5 = [MUPlaceSectionView insetButtonSectionViewforContentView:self->_footerView];
  sectionView = self->_sectionView;
  self->_sectionView = v5;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUFooterActionsSectionController *)self reloadData];
}

- (MUFooterActionsSectionController)initWithActionManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = MUFooterActionsSectionController;
  v5 = [(MUFooterActionsSectionController *)&v10 init];
  if (v5)
  {
    v6 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v6))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceFooterActionsSectionControllerInit", "", v9, 2u);
    }

    objc_storeWeak(&v5->_actionManager, managerCopy);
    [(MUFooterActionsSectionController *)v5 _setupFooterView];
    v7 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v7))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceFooterActionsSectionControllerInit", "", v9, 2u);
    }
  }

  return v5;
}

@end