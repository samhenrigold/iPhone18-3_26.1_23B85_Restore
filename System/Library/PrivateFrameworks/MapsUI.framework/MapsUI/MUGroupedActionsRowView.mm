@interface MUGroupedActionsRowView
+ (id)presentationOptionsForSourceView:(id)view isForActionBar:(BOOL)bar;
- (BOOL)hasContent;
- (MUGroupedActionsRowView)initWithConfiguration:(id)configuration;
- (MUPlaceCardActionsRowViewDelegate)delegate;
- (NSArray)actionButtons;
- (NSArray)menuActionBarItems;
- (id)itemViewForViewModel:(id)model;
- (id)viewModelForItemView:(id)view;
- (int64_t)preferredOrientation;
- (void)_setupStackLayout;
- (void)_updateLayoutIfNeeded;
- (void)actionRowItemPresentedMenu:(id)menu isForActionBar:(BOOL)bar actionBarMoreMenu:(BOOL)moreMenu;
- (void)actionRowItemSelected:(id)selected isForActionBar:(BOOL)bar actionBarMoreMenu:(BOOL)menu;
- (void)actionRowItemViewModelDidSelect:(id)select;
- (void)actionRowItemViewModelDidUpdate:(id)update;
- (void)createActionViews;
- (void)didMoveToWindow;
- (void)setViewModels:(id)models;
@end

@implementation MUGroupedActionsRowView

- (MUPlaceCardActionsRowViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)menuActionBarItems
{
  if ([(MUGroupedActionsRowView *)self hasContent])
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = [[MUPlaceActionBarTypeCustom alloc] initWithSymbolName:&stru_1F44CA030 text:&stru_1F44CA030];
    v5 = [[MUPlaceActionBarItem alloc] initWithType:v4 axID:&stru_1F44CA030];
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __45__MUGroupedActionsRowView_menuActionBarItems__block_invoke;
    v10 = &unk_1E8218DF8;
    objc_copyWeak(&v11, &location);
    [(MUPlaceActionBarItem *)v5 addMenuProvider:&v7];
    [array addObject:{v5, v7, v8, v9, v10}];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    array = 0;
  }

  return array;
}

id __45__MUGroupedActionsRowView_menuActionBarItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v28 = a3;
  v30 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v31 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v44 = 0u;
    obj = WeakRetained[52];
    v5 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v5)
    {
      v33 = *v45;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v44 + 1) + 8 * i);
          v8 = [WeakRetained viewModelForItemView:v7];
          if (([v8 isHidden] & 1) == 0)
          {
            v9 = [v8 symbolName];
            if ([v9 hasSuffix:@".fill"])
            {
              v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 5}];

              v9 = v10;
            }

            if ([v7 showsMenuAsPrimaryAction])
            {
              objc_initWeak(&location, v7);
              v11 = MEMORY[0x1E69DC928];
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v38[2] = __45__MUGroupedActionsRowView_menuActionBarItems__block_invoke_2;
              v38[3] = &unk_1E8218D70;
              objc_copyWeak(&v41, &location);
              objc_copyWeak(&v42, (v30 + 32));
              v39 = v29;
              v40 = v28;
              v12 = [v11 elementWithUncachedProvider:v38];
              v13 = MEMORY[0x1E69DCC60];
              v14 = [v8 titleText];
              v15 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:v9];
              v48 = v12;
              v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
              v17 = [v13 menuWithTitle:v14 image:v15 identifier:0 options:0 children:v16];

              v18 = [v8 accessibilityIdentifier];
              v19 = [v18 stringByAppendingString:@"MenuAction"];
              [v17 setAccessibilityIdentifier:v19];

              [v31 addObject:v17];
              objc_destroyWeak(&v42);
              objc_destroyWeak(&v41);
              objc_destroyWeak(&location);
            }

            else
            {
              objc_initWeak(&location, v7);
              v20 = MEMORY[0x1E69DC628];
              v21 = [v8 titleText];
              v22 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:v9];
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __45__MUGroupedActionsRowView_menuActionBarItems__block_invoke_3;
              v35[3] = &unk_1E8218D98;
              objc_copyWeak(&v36, &location);
              objc_copyWeak(&v37, (v30 + 32));
              v23 = [v20 actionWithTitle:v21 image:v22 identifier:0 handler:v35];

              if (([v8 isEnabled] & 1) == 0)
              {
                [v23 setAttributes:1];
              }

              v24 = [v8 accessibilityIdentifier];
              v25 = [v24 stringByAppendingString:@"MenuAction"];
              [v23 setAccessibilityIdentifier:v25];

              [v31 addObject:v23];
              objc_destroyWeak(&v37);
              objc_destroyWeak(&v36);
              objc_destroyWeak(&location);
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v5);
    }

    v26 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F44CA030 image:0 identifier:0 options:1 children:v31];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __45__MUGroupedActionsRowView_menuActionBarItems__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    if (v5)
    {
      v6 = [WeakRetained _menuProvider];
      v7 = v6[2](v6, *(a1 + 32), *(a1 + 40));

      [v5 actionRowItemPresentedMenu:WeakRetained isForActionBar:1 actionBarMoreMenu:1];
      v9[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      v3[2](v3, v8);
    }
  }
}

void __45__MUGroupedActionsRowView_menuActionBarItems__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = v3;
    if (v3)
    {
      [v3 actionRowItemSelected:v5 isForActionBar:1 actionBarMoreMenu:1];
    }

    WeakRetained = v5;
  }
}

- (BOOL)hasContent
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_viewModels;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) isHidden])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)actionRowItemPresentedMenu:(id)menu isForActionBar:(BOOL)bar actionBarMoreMenu:(BOOL)moreMenu
{
  moreMenuCopy = moreMenu;
  barCopy = bar;
  menuCopy = menu;
  delegate = [(MUGroupedActionsRowView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MUGroupedActionsRowView *)self viewModelForItemView:menuCopy];
    if (v10)
    {
      v11 = objc_alloc_init(MUPresentationOptions);
      [(MUPresentationOptions *)v11 setIsForActionBar:barCopy];
      [(MUPresentationOptions *)v11 setIsForActionBarMoreMenu:moreMenuCopy];
      delegate2 = [(MUGroupedActionsRowView *)self delegate];
      [delegate2 actionsRowView:self didPresentMenuForViewModel:v10 presentationOptions:v11];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)actionRowItemSelected:(id)selected isForActionBar:(BOOL)bar actionBarMoreMenu:(BOOL)menu
{
  menuCopy = menu;
  barCopy = bar;
  selectedCopy = selected;
  v11 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v11 setSourceView:selectedCopy];
  [selectedCopy frame];
  [(MUPresentationOptions *)v11 setSourceRect:?];
  [(MUPresentationOptions *)v11 setIsForActionBar:barCopy];
  [(MUPresentationOptions *)v11 setIsForActionBarMoreMenu:menuCopy];
  v9 = [(MUGroupedActionsRowView *)self viewModelForItemView:selectedCopy];

  if (v9)
  {
    delegate = [(MUGroupedActionsRowView *)self delegate];
    [delegate actionsRowView:self didSelectViewModel:v9 presentationOptions:v11];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MUGroupedActionsRowView;
  [(MUGroupedActionsRowView *)&v3 didMoveToWindow];
  [(MUGroupedActionsRowView *)self _updateLayoutIfNeeded];
}

- (void)_updateLayoutIfNeeded
{
  v52 = *MEMORY[0x1E69E9840];
  style = [(MUGroupedActionsRowViewConfiguration *)self->_configuration style];
  if (style == 1)
  {
    v4 = 4.0;
  }

  else
  {
    if (style)
    {
      goto LABEL_6;
    }

    v4 = 8.0;
  }

  [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup setSpacing:v4];
LABEL_6:
  [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup setAxis:[(MUGroupedActionsRowView *)self preferredOrientation]];
  [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup setDistribution:[(MUGroupedActionsRowView *)self preferredDistribution]];
  preferredOrientation = [(MUGroupedActionsRowView *)self preferredOrientation];
  if (preferredOrientation)
  {
    v6 = preferredOrientation == 1;
  }

  else
  {
    v6 = [(NSArray *)self->_actionButtons count]< 3;
  }

  [(MUFeatureDiscoveryAnnotationView *)self->_featureDiscoveryView removeFromSuperview];
  featureDiscoveryView = self->_featureDiscoveryView;
  self->_featureDiscoveryView = 0;

  array = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = self->_actionButtons;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [(MUGroupedActionsRowView *)self viewModelForItemView:v13];
        if ([v14 isHidden])
        {
          [v13 removeFromSuperview];
        }

        else
        {
          [(MUGroupedActionsRowView *)self addSubview:v13];
          [array addObject:v13];
        }

        featureDiscoveryView = [v14 featureDiscoveryView];
        if (featureDiscoveryView)
        {
          v16 = self->_featureDiscoveryView;

          if (!v16)
          {
            featureDiscoveryView2 = [v14 featureDiscoveryView];
            v18 = self->_featureDiscoveryView;
            self->_featureDiscoveryView = featureDiscoveryView2;

            [(MUFeatureDiscoveryAnnotationView *)self->_featureDiscoveryView setTranslatesAutoresizingMaskIntoConstraints:0];
            [(MUFeatureDiscoveryAnnotationView *)self->_featureDiscoveryView setShowBubbleIndicator:1];
            [(MUFeatureDiscoveryAnnotationView *)self->_featureDiscoveryView setSourceView:v13];
            [(MUGroupedActionsRowView *)self addSubview:self->_featureDiscoveryView];
          }
        }

        [v13 setCornerStyle:v6];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v10);
  }

  [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup setArrangedLayoutItems:array];
  v19 = MEMORY[0x1E696ACD8];
  containerStackLayout = self->_containerStackLayout;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&containerStackLayout count:1];
  [v19 _mapsui_deactivateLayouts:v20];

  if (self->_featureDiscoveryView)
  {
    layoutMarginsGuide2 = [[MUCompositionalStackLayoutGroup alloc] initWithIdentifier:@"content" axis:1];
    [(MUCompositionalStackLayoutGroup *)layoutMarginsGuide2 setSpacing:20.0];
    v22 = self->_featureDiscoveryView;
    v49[0] = self->_buttonLayoutGroup;
    v49[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [(MUCompositionalStackLayoutGroup *)layoutMarginsGuide2 setArrangedLayoutItems:v23];

    v24 = [MUCompositionalStackLayout alloc];
    layoutMarginsGuide = [(MUGroupedActionsRowView *)self layoutMarginsGuide];
    v26 = [(MUCompositionalStackLayout *)v24 initWithContainer:layoutMarginsGuide group:layoutMarginsGuide2];
    v27 = self->_containerStackLayout;
    self->_containerStackLayout = v26;
  }

  else
  {
    v28 = [MUCompositionalStackLayout alloc];
    layoutMarginsGuide2 = [(MUGroupedActionsRowView *)self layoutMarginsGuide];
    v29 = [(MUCompositionalStackLayout *)v28 initWithContainer:layoutMarginsGuide2 group:self->_buttonLayoutGroup];
    layoutMarginsGuide = self->_containerStackLayout;
    self->_containerStackLayout = v29;
  }

  v30 = MEMORY[0x1E696ACD8];
  v48 = self->_containerStackLayout;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  [v30 _mapsui_activateLayouts:v31];

  axis = [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup axis];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = self->_actionButtons;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v40;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v39 + 1) + 8 * j) setFullWidthMode:axis == 1];
      }

      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v35);
  }
}

- (id)viewModelForItemView:(id)view
{
  v4 = [(NSArray *)self->_actionButtons indexOfObject:view];
  if (v4 >= [(NSArray *)self->_viewModels count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_viewModels objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)itemViewForViewModel:(id)model
{
  v4 = [(NSArray *)self->_viewModels indexOfObject:model];
  if (v4 >= [(NSArray *)self->_actionButtons count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_actionButtons objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)actionRowItemViewModelDidSelect:(id)select
{
  selectCopy = select;
  v6 = [(MUGroupedActionsRowView *)self itemViewForViewModel:selectCopy];
  isForActionBar = [selectCopy isForActionBar];

  [(MUGroupedActionsRowView *)self actionRowItemSelected:v6 isForActionBar:isForActionBar actionBarMoreMenu:0];
}

- (void)actionRowItemViewModelDidUpdate:(id)update
{
  updateCopy = update;
  v5 = [(MUGroupedActionsRowView *)self itemViewForViewModel:updateCopy];
  if (v5)
  {
    [v5 setEnabled:{objc_msgSend(updateCopy, "isEnabled")}];
    titleText = [updateCopy titleText];
    [v5 setTitleText:titleText];

    symbolName = [updateCopy symbolName];
    [v5 setGlyphName:symbolName];

    accessoryView = [updateCopy accessoryView];
    [v5 setAccessoryView:accessoryView];

    [v5 setTitleUsesMonospacedNumbersFont:{objc_msgSend(updateCopy, "titleUsesMonospacedNumbersFont")}];
    accessibilityIdentifier = [updateCopy accessibilityIdentifier];
    v10 = [@"ActionRowItemType" stringByAppendingString:accessibilityIdentifier];
    [v5 setAccessibilityIdentifier:v10];

    titleText2 = [updateCopy titleText];
    [v5 setAccessibilityLabel:titleText2];

    objc_initWeak(&location, v5);
    objc_initWeak(&from, updateCopy);
    v12 = +[MUGroupedActionsRowView presentationOptionsForSourceView:isForActionBar:](MUGroupedActionsRowView, "presentationOptionsForSourceView:isForActionBar:", v5, [updateCopy isForActionBar]);
    v13 = [updateCopy buildMenuWithPresentationOptions:v12];

    if (v13)
    {
      [v5 setShowsMenuAsPrimaryAction:1];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __59__MUGroupedActionsRowView_actionRowItemViewModelDidUpdate___block_invoke;
      v21 = &unk_1E8218D48;
      objc_copyWeak(&v22, &location);
      objc_copyWeak(&v23, &from);
      [v5 _setMenuProvider:&v18];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
    }

    if (![MUInfoCardStyle hasExternallyProvidedTintColor:v18])
    {
      preferredTintColor = [updateCopy preferredTintColor];

      if (preferredTintColor)
      {
        preferredTintColor2 = [updateCopy preferredTintColor];
        [v5 setTintColor:preferredTintColor2];
      }

      preferredBackgroundColor = [updateCopy preferredBackgroundColor];

      if (preferredBackgroundColor)
      {
        preferredBackgroundColor2 = [updateCopy preferredBackgroundColor];
        [v5 setContentBackgroundColor:preferredBackgroundColor2];
      }
    }

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

id __59__MUGroupedActionsRowView_actionRowItemViewModelDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    if (v5)
    {
      v6 = WeakRetained;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v3;

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v6 = v7;
      }

      else
      {
        isKindOfClass = 0;
      }

      v10 = [MUGroupedActionsRowView presentationOptionsForSourceView:v6 isForActionBar:isKindOfClass & 1];
      v9 = [v5 buildMenuWithPresentationOptions:v10];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)preferredOrientation
{
  traitCollection = [(MUGroupedActionsRowView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)createActionViews
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSArray *)self->_actionButtons makeObjectsPerformSelector:sel_removeFromSuperview];
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_viewModels count])
  {
    v4 = 0;
    do
    {
      v5 = [[MUActionRowItemView alloc] initWithStyle:[(MUGroupedActionsRowViewConfiguration *)self->_configuration style] useVibrancy:[(MUGroupedActionsRowViewConfiguration *)self->_configuration useVibrancy]];
      tintColor = [(MUGroupedActionsRowViewConfiguration *)self->_configuration tintColor];
      [(MUActionRowItemView *)v5 setTintColor:tintColor];

      itemBackgroundColor = [(MUGroupedActionsRowViewConfiguration *)self->_configuration itemBackgroundColor];
      [(MUActionRowItemView *)v5 setContentBackgroundColor:itemBackgroundColor];

      itemHighlightColor = [(MUGroupedActionsRowViewConfiguration *)self->_configuration itemHighlightColor];
      [(MUActionRowItemView *)v5 setHighlightedBackgroundColor:itemHighlightColor];

      [(MUActionRowItemView *)v5 setDelegate:self];
      [array addObject:v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_viewModels count]);
  }

  objc_storeStrong(&self->_actionButtons, array);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_viewModels;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(MUGroupedActionsRowView *)self actionRowItemViewModelDidUpdate:*(*(&v14 + 1) + 8 * v13++), v14];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(MUGroupedActionsRowView *)self _updateLayoutIfNeeded];
}

- (NSArray)actionButtons
{
  v2 = [(NSArray *)self->_actionButtons copy];

  return v2;
}

- (void)setViewModels:(id)models
{
  v28 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  if (([(NSArray *)self->_viewModels isEqual:modelsCopy]& 1) == 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_viewModels;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v22 + 1) + 8 * v9++) removeObserver:self];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    v10 = [modelsCopy copy];
    viewModels = self->_viewModels;
    self->_viewModels = v10;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_viewModels;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * v16++) addObserver:{self, v18}];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [(MUGroupedActionsRowView *)self createActionViews];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:self];
  }
}

- (void)_setupStackLayout
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [[MUCompositionalStackLayoutGroup alloc] initWithIdentifier:@"buttons" axis:[(MUGroupedActionsRowView *)self preferredOrientation]];
  buttonLayoutGroup = self->_buttonLayoutGroup;
  self->_buttonLayoutGroup = v3;

  [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup setSpacing:10.0];
  LODWORD(v5) = 1112276992;
  [(MUCompositionalStackLayoutGroup *)self->_buttonLayoutGroup setAlignmentFittingSizePriority:v5];
  v6 = [MUCompositionalStackLayout alloc];
  layoutMarginsGuide = [(MUGroupedActionsRowView *)self layoutMarginsGuide];
  v8 = [(MUCompositionalStackLayout *)v6 initWithContainer:layoutMarginsGuide group:self->_buttonLayoutGroup];
  containerStackLayout = self->_containerStackLayout;
  self->_containerStackLayout = v8;

  v10 = MEMORY[0x1E696ACD8];
  v16[0] = self->_containerStackLayout;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v10 _mapsui_activateLayouts:v11];

  [(MUGroupedActionsRowView *)self _updateLayoutIfNeeded];
  v12 = objc_opt_self();
  v15 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v14 = [(MUGroupedActionsRowView *)self registerForTraitChanges:v13 withAction:sel__updateLayoutIfNeeded];
}

- (MUGroupedActionsRowView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MUGroupedActionsRowView;
  v6 = [(MUGroupedActionsRowView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    [(MUGroupedActionsRowView *)v7 _setupStackLayout];
  }

  return v7;
}

+ (id)presentationOptionsForSourceView:(id)view isForActionBar:(BOOL)bar
{
  barCopy = bar;
  viewCopy = view;
  v6 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v6 setSourceView:viewCopy];
  contextMenuInteraction = [viewCopy contextMenuInteraction];

  [(MUPresentationOptions *)v6 setContextMenuInteraction:contextMenuInteraction];
  [(MUPresentationOptions *)v6 setIsForActionBar:barCopy];

  return v6;
}

@end