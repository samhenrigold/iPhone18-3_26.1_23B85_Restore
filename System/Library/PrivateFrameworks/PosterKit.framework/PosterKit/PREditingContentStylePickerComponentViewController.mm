@interface PREditingContentStylePickerComponentViewController
- (BOOL)shouldShowContentStyleItems;
- (PREditingContentStylePickerComponentViewController)init;
- (PREditingContentStylePickerComponentViewController)initWithConfiguration:(id)configuration role:(id)role;
- (PREditingContentStylePickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)coordinatorForStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle fromDataSource:(id)source;
- (void)_didSelectContentStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle;
- (void)colorSliderDidUpdateVariation:(id)variation;
- (void)contentStyleItemsViewController:(id)controller didSelectContentStyleCoordinator:(id)coordinator;
- (void)contentStyleItemsViewControllerDidUpdateEstimatedSize:(id)size;
- (void)loadItemsViewControllerIfNeeded;
- (void)loadView;
- (void)setContentsLuminance:(double)luminance;
- (void)updateEditingContentStyleItemsWithGlassSelectionEnabled:(BOOL)enabled;
- (void)updateSliderVisibility:(BOOL)visibility;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingContentStylePickerComponentViewController

- (PREditingContentStylePickerComponentViewController)initWithConfiguration:(id)configuration role:(id)role
{
  configurationCopy = configuration;
  roleCopy = role;
  v12.receiver = self;
  v12.super_class = PREditingContentStylePickerComponentViewController;
  v9 = [(PREditingContentStylePickerComponentViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_role, role);
  }

  return v10;
}

- (PREditingContentStylePickerComponentViewController)init
{
  v3 = objc_alloc_init(PREditorContentStylePickerConfiguration);
  v4 = [(PREditingContentStylePickerComponentViewController *)self initWithConfiguration:v3 role:@"PRPosterRoleLockScreen"];

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PREditingContentStylePickerComponentViewController;
  [(PREditingContentStylePickerComponentViewController *)&v14 viewDidLayoutSubviews];
  itemStyleControl = self->_itemStyleControl;
  if (itemStyleControl)
  {
    view = [(PREditingContentStylePickerComponentViewController *)self view];
    [view bounds];
    [(PUIStylePickerSegmentedControl *)itemStyleControl calculatedWidthForAvailableWidth:v5];
    v7 = v6;

    itemStyleControlWidthConstraint = self->_itemStyleControlWidthConstraint;
    if (!itemStyleControlWidthConstraint)
    {
      widthAnchor = [(PUIStylePickerSegmentedControl *)self->_itemStyleControl widthAnchor];
      v10 = [widthAnchor constraintEqualToConstant:v7];
      v11 = self->_itemStyleControlWidthConstraint;
      self->_itemStyleControlWidthConstraint = v10;

      v12 = MEMORY[0x1E696ACD8];
      v15[0] = self->_itemStyleControlWidthConstraint;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v12 activateConstraints:v13];

      itemStyleControlWidthConstraint = self->_itemStyleControlWidthConstraint;
    }

    [(NSLayoutConstraint *)itemStyleControlWidthConstraint setConstant:v7];
  }
}

- (void)loadItemsViewControllerIfNeeded
{
  if (!self->_itemsViewController)
  {
    v13 = [[PREditingContentStyleItemsDataSource alloc] initWithConfiguration:self->_configuration includesSuggestedStyle:1 delegate:self];
    objc_storeStrong(&self->_dataSource, v13);
    if (-[PREditorContentStylePickerConfiguration isForTitleStylePicker](self->_configuration, "isForTitleStylePicker") && ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v6 = [(PREditingContentStyleItemsViewController *)[PREditingContentStyleItemsScrollableStackViewController alloc] initWithDataSource:v13 configuration:self->_configuration];
      [(PREditingContentStyleItemsViewController *)v6 setDelegate:self];
    }

    else
    {
      v5 = [[PREditingContentStyleItemsViewController alloc] initWithDataSource:v13 configuration:self->_configuration];
      [(PREditingContentStyleItemsViewController *)v5 setDelegate:self];
      v6 = v5;
      if ([(PREditorContentStylePickerConfiguration *)self->_configuration colorWellDisplayMode]== 2)
      {
        colorWellView = [(PREditingContentStyleItemsViewController *)v6 colorWellView];
        colorWellView = self->_colorWellView;
        self->_colorWellView = colorWellView;
        v9 = colorWellView;

        colorWell = [(PUIColorWellView *)v9 colorWell];
        colorWell = self->_colorWell;
        self->_colorWell = colorWell;
      }
    }

    [(PREditingContentStyleItemsViewController *)v6 setContentsLuminance:self->_contentsLuminance];
    itemsViewController = self->_itemsViewController;
    self->_itemsViewController = &v6->super;
  }
}

- (void)loadView
{
  v95[2] = *MEMORY[0x1E69E9840];
  v85 = objc_alloc_init(MEMORY[0x1E69DD250]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v85 setBackgroundColor:clearColor];

  if (self->_showsHeader)
  {
    v78 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v4 = PRBundle(v78);
    v5 = [v4 localizedStringForKey:@"COLOR_HEADING" value:&stru_1F1C13D90 table:@"PosterKit"];
    [v78 setText:v5];

    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    [v78 setFont:v6];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v78 setTextColor:labelColor];

    [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v85 addSubview:v78];
  }

  else
  {
    v78 = 0;
  }

  [(PREditingContentStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  itemsViewController = [(PREditingContentStylePickerComponentViewController *)self itemsViewController];
  view = [itemsViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:view];
  selectedContentStyleCoordinator = [itemsViewController selectedContentStyleCoordinator];
  v8 = [(PREditingContentStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_379];

  if (!selectedContentStyleCoordinator)
  {
    delegate = [(PREditingContentStylePickerComponentViewController *)self delegate];
    style = [0 style];
    [delegate contentStylePickerComponentViewController:self didSelectStyle:style isSuggestedStyle:objc_msgSend(0 userSelected:{"isSuggested"), 0}];
  }

  if (v8)
  {
    v11 = [PREditingVariationSlider alloc];
    identifier = [(PREditorContentStylePickerConfiguration *)self->_configuration identifier];
    v13 = [(PREditingVariationSlider *)v11 initWithStyleCoordinator:selectedContentStyleCoordinator contextIdentifier:identifier];

    v83 = v13;
    [(PREditingVariationSlider *)v13 addTarget:self action:sel_colorSliderDidUpdateVariation_ forControlEvents:4096];
    selectedContentStyleCoordinator2 = [itemsViewController selectedContentStyleCoordinator];
    style2 = [selectedContentStyleCoordinator2 style];
    allowsVariation = [style2 allowsVariation];

    if ((allowsVariation & 1) == 0)
    {
      [(PREditingVariationSlider *)v83 setHidden:1];
    }

    stylePalette = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
    -[PREditingVariationSlider setApplyVariationOnGlass:](v83, "setApplyVariationOnGlass:", [stylePalette displayingGlassStyles]);

    objc_storeStrong(&self->_sliderView, v83);
    [array addObject:v83];
  }

  else
  {
    v83 = 0;
  }

  style3 = [selectedContentStyleCoordinator style];
  if ([style3 conformsToProtocol:&unk_1F1C8ED30])
  {
    style4 = [selectedContentStyleCoordinator style];
    v20 = [style4 supportsGlassAppearance] ^ 1;
  }

  else
  {
    v20 = 1;
  }

  if (PUIFeatureEnabled() && PUIFeatureEnabled())
  {
    role = [(PREditingContentStylePickerComponentViewController *)self role];
    v22 = [role isEqual:@"PRPosterRoleLockScreen"];

    if (v22)
    {
      inited = objc_initWeak(&location, self);
      v24 = MEMORY[0x1E69DC628];
      v25 = PRBundle(inited);
      v26 = [v25 localizedStringForKey:@"TIME_STYLE_SELECTOR_GLASS" value:&stru_1F1C13D90 table:@"PosterKit"];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_2;
      v88[3] = &unk_1E7843448;
      objc_copyWeak(&v89, &location);
      v81 = [v24 actionWithTitle:v26 image:0 identifier:0 handler:v88];

      v27 = MEMORY[0x1E69DC628];
      v29 = PRBundle(v28);
      v30 = [v29 localizedStringForKey:@"TIME_STYLE_SELECTOR_SOLID" value:&stru_1F1C13D90 table:@"PosterKit"];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_3;
      v86[3] = &unk_1E7843448;
      objc_copyWeak(&v87, &location);
      v31 = [v27 actionWithTitle:v30 image:0 identifier:0 handler:v86];

      v32 = objc_alloc(MEMORY[0x1E69C5648]);
      v95[0] = v81;
      v95[1] = v31;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
      v34 = [v32 initWithFrame:v33 actions:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      itemStyleControl = self->_itemStyleControl;
      self->_itemStyleControl = v34;

      [(PUIStylePickerSegmentedControl *)self->_itemStyleControl setSelectedSegmentIndex:v20];
      [(PUIStylePickerSegmentedControl *)self->_itemStyleControl setTranslatesAutoresizingMaskIntoConstraints:0];
      v36 = self->_itemStyleControl;
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      [(PUIStylePickerSegmentedControl *)v36 setBackgroundColor:clearColor2];

      [array addObject:self->_itemStyleControl];
      objc_destroyWeak(&v87);

      objc_destroyWeak(&v89);
      objc_destroyWeak(&location);
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v38 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  [v38 setAxis:1];
  [v38 setAlignment:3];
  [v38 setSpacing:24.0];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [v38 setBackgroundColor:clearColor3];

  objc_storeStrong(&self->_verticalStack, v38);
  [v85 addSubview:v38];
  [(PREditingContentStylePickerComponentViewController *)self addChildViewController:itemsViewController];
  [(PREditingContentStylePickerComponentViewController *)self setView:v85];
  [itemsViewController didMoveToParentViewController:self];
  array2 = [MEMORY[0x1E695DF70] array];
  if (v22)
  {
    heightAnchor = [(PUIStylePickerSegmentedControl *)self->_itemStyleControl heightAnchor];
    [MEMORY[0x1E69C5648] defaultHeight];
    v41 = [heightAnchor constraintEqualToConstant:?];
    [array2 addObject:v41];
  }

  if (self->_showsHeader)
  {
    leadingAnchor = [v78 leadingAnchor];
    leadingAnchor2 = [v85 leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v94[0] = v44;
    topAnchor = [v78 topAnchor];
    topAnchor2 = [v85 topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v94[1] = v46;
    topAnchor3 = [v38 topAnchor];
    bottomAnchor = [v78 bottomAnchor];
    v49 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
    v94[2] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
    [array2 addObjectsFromArray:v50];
  }

  else
  {
    leadingAnchor = [v38 topAnchor];
    leadingAnchor2 = [v85 topAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v93 = v44;
    topAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    [array2 addObjectsFromArray:topAnchor];
  }

  if (v83)
  {
    heightAnchor2 = [(PREditingVariationSlider *)v83 heightAnchor];
    +[PREditingVariationSlider defaultHeight];
    v52 = [heightAnchor2 constraintEqualToConstant:?];
    v92[0] = v52;
    leadingAnchor3 = [(PREditingVariationSlider *)v83 leadingAnchor];
    leadingAnchor4 = [v38 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:36.0];
    v92[1] = v55;
    trailingAnchor = [(PREditingVariationSlider *)v83 trailingAnchor];
    trailingAnchor2 = [v38 trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-36.0];
    v92[2] = v58;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:3];
    [array2 addObjectsFromArray:v59];
  }

  leadingAnchor5 = [view leadingAnchor];
  leadingAnchor6 = [v38 leadingAnchor];
  v73 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v91[0] = v73;
  trailingAnchor3 = [view trailingAnchor];
  trailingAnchor4 = [v38 trailingAnchor];
  v70 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v91[1] = v70;
  leadingAnchor7 = [v38 leadingAnchor];
  leadingAnchor8 = [v85 leadingAnchor];
  v61 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v91[2] = v61;
  trailingAnchor5 = [v38 trailingAnchor];
  trailingAnchor6 = [v85 trailingAnchor];
  v64 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v91[3] = v64;
  bottomAnchor2 = [v38 bottomAnchor];
  bottomAnchor3 = [v85 bottomAnchor];
  v67 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v91[4] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:5];
  [array2 addObjectsFromArray:v68];

  [MEMORY[0x1E696ACD8] activateConstraints:array2];
}

uint64_t __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

void __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateEditingContentStyleItemsWithGlassSelectionEnabled:1];
}

void __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateEditingContentStyleItemsWithGlassSelectionEnabled:0];
}

- (BOOL)shouldShowContentStyleItems
{
  itemsViewController = [(PREditingContentStylePickerComponentViewController *)self itemsViewController];
  configuration = [itemsViewController configuration];
  stylePalette = [configuration stylePalette];
  styles = [stylePalette styles];
  v6 = [styles count];

  return v6 < 2;
}

- (void)setContentsLuminance:(double)luminance
{
  self->_contentsLuminance = luminance;
  if ([(PREditingContentStylePickerComponentViewController *)self isViewLoaded])
  {
    itemsViewController = self->_itemsViewController;

    [(PREditingContentStyleItemsViewController *)itemsViewController setContentsLuminance:luminance];
  }
}

- (double)estimatedHeight
{
  [(PREditingContentStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  [(PREditingContentStyleItemsViewController *)self->_itemsViewController estimatedHeight];
  v4 = v3;
  if (self->_sliderView)
  {
    selectedContentStyleCoordinator = [(PREditingContentStyleItemsViewController *)self->_itemsViewController selectedContentStyleCoordinator];
    style = [selectedContentStyleCoordinator style];
    if ([style allowsVariation])
    {
      shouldShowContentStyleItems = [(PREditingContentStylePickerComponentViewController *)self shouldShowContentStyleItems];

      if (!shouldShowContentStyleItems)
      {
        v4 = v4 + 58.0;
      }
    }

    else
    {
    }
  }

  result = v4 + 44.0;
  if (!self->_itemStyleControl)
  {
    return v4;
  }

  return result;
}

- (void)contentStyleItemsViewController:(id)controller didSelectContentStyleCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  style = [coordinatorCopy style];
  allowsVariation = [style allowsVariation];

  v8 = [(PREditingContentStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_449];

  if (v8 && allowsVariation == [(PREditingVariationSlider *)self->_sliderView isHidden])
  {
    [(PREditingContentStylePickerComponentViewController *)self updateSliderVisibility:allowsVariation];
  }

  [(PREditingVariationSlider *)self->_sliderView setStyleCoordinator:coordinatorCopy];
  style2 = [coordinatorCopy style];
  isSuggested = [coordinatorCopy isSuggested];

  [(PREditingContentStylePickerComponentViewController *)self _didSelectContentStyle:style2 isSuggestedStyle:isSuggested];
}

uint64_t __119__PREditingContentStylePickerComponentViewController_contentStyleItemsViewController_didSelectContentStyleCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

- (void)contentStyleItemsViewControllerDidUpdateEstimatedSize:(id)size
{
  delegate = [(PREditingContentStylePickerComponentViewController *)self delegate];
  [delegate contentStylePickerComponentViewControllerDidChangeHeight:self];
}

- (void)updateSliderVisibility:(BOOL)visibility
{
  [(PREditingVariationSlider *)self->_sliderView setHidden:!visibility];
  delegate = [(PREditingContentStylePickerComponentViewController *)self delegate];
  [delegate contentStylePickerComponentViewControllerDidChangeHeight:self];
}

- (void)_didSelectContentStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle
{
  suggestedStyleCopy = suggestedStyle;
  styleCopy = style;
  delegate = [(PREditingContentStylePickerComponentViewController *)self delegate];
  [delegate contentStylePickerComponentViewController:self didSelectStyle:styleCopy isSuggestedStyle:suggestedStyleCopy userSelected:1];
}

- (void)colorSliderDidUpdateVariation:(id)variation
{
  selectedContentStyleCoordinator = [(PREditingContentStyleItemsViewController *)self->_itemsViewController selectedContentStyleCoordinator];
  if (selectedContentStyleCoordinator)
  {
    v6 = selectedContentStyleCoordinator;
    style = [selectedContentStyleCoordinator style];
    -[PREditingContentStylePickerComponentViewController _didSelectContentStyle:isSuggestedStyle:](self, "_didSelectContentStyle:isSuggestedStyle:", style, [v6 isSuggested]);

    selectedContentStyleCoordinator = v6;
  }
}

- (id)coordinatorForStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle fromDataSource:(id)source
{
  suggestedStyleCopy = suggestedStyle;
  styleCopy = style;
  delegate = [(PREditingContentStylePickerComponentViewController *)self delegate];
  v9 = [delegate contentStylePickerComponentViewController:self coordinatorForStyle:styleCopy isSuggested:suggestedStyleCopy];

  return v9;
}

- (void)updateEditingContentStyleItemsWithGlassSelectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v74 = *MEMORY[0x1E69E9840];
  selectedContentStyleCoordinator = [(PREditingContentStyleItemsViewController *)self->_itemsViewController selectedContentStyleCoordinator];
  style = [selectedContentStyleCoordinator style];

  suggestedStyle = [(PREditorContentStylePickerConfiguration *)selfCopy->_configuration suggestedStyle];
  v54 = enabledCopy;
  if (enabledCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  if (suggestedStyle)
  {
    v8 = suggestedStyle;
    if ([suggestedStyle conformsToProtocol:&unk_1F1C8ED30])
    {
      v9 = [v8 copyWithPreferredMaterial:v7];

      v60 = v9;
    }

    else
    {
      v60 = v8;
    }
  }

  else
  {
    v60 = 0;
  }

  v10 = 0.0;
  if ([style allowsVariation])
  {
    [style variation];
    v10 = v11;
  }

  v12 = [(PREditorContentStylePickerConfiguration *)selfCopy->_configuration copy];
  stylePalette = [v12 stylePalette];
  v13 = [stylePalette withPreferredMaterialType:v7];
  [v12 setStylePalette:v13];
  v14 = style;
  v58 = v13;
  v59 = v12;
  if (!style)
  {
    if (!v60)
    {
      goto LABEL_49;
    }

    firstObject5 = 0;
    goto LABEL_28;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  styles = [v13 styles];
  v16 = [styles countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v16)
  {
    v17 = v16;
    v55 = selfCopy;
    v18 = *v68;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(styles);
        }

        v20 = *(*(&v67 + 1) + 8 * i);
        type = [v20 type];
        if (type == [v14 type])
        {
          colors = [v20 colors];
          firstObject = [colors firstObject];
          colors2 = [v14 colors];
          firstObject2 = [colors2 firstObject];
          v26 = [firstObject isEqual:firstObject2];

          v14 = style;
          if (v26)
          {
            firstObject5 = v20;
            goto LABEL_25;
          }
        }
      }

      v17 = [styles countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    firstObject5 = 0;
LABEL_25:
    selfCopy = v55;
    v13 = v58;
  }

  else
  {
    firstObject5 = 0;
  }

  v12 = v59;
  if (v60)
  {
LABEL_28:
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v71 = v60;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    styles2 = [v13 styles];
    v30 = [v28 arrayByAddingObjectsFromArray:styles2];

    v31 = [v30 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v31)
    {
      v32 = v31;
      v53 = firstObject5;
      v56 = selfCopy;
      v33 = *v64;
      v34 = v60;
      while (2)
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v63 + 1) + 8 * j);
          type2 = [v36 type];
          if (type2 == [v34 type])
          {
            colors3 = [v36 colors];
            firstObject3 = [colors3 firstObject];
            colors4 = [v14 colors];
            firstObject4 = [colors4 firstObject];
            v42 = [firstObject3 isEqual:firstObject4];

            v14 = style;
            v34 = v60;

            if (v42)
            {
              v43 = v36;
              goto LABEL_39;
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }

      v43 = 0;
LABEL_39:
      selfCopy = v56;
      v12 = v59;
      firstObject5 = v53;
    }

    else
    {
      v43 = 0;
    }

    if (firstObject5)
    {
      v13 = v58;
LABEL_45:
      v62 = v43;
      if ([v14 allowsVariation])
      {
        v44 = [firstObject5 copyWithVariation:v10];

        firstObject5 = v44;
      }

      goto LABEL_53;
    }

    v13 = v58;
    if (v43)
    {
      firstObject5 = v43;
      v62 = firstObject5;
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (firstObject5)
  {
    v43 = 0;
    goto LABEL_45;
  }

LABEL_49:
  if (!v54 || ([v13 styles], v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "bs_firstObjectPassingTest:", &__block_literal_global_452), firstObject5 = objc_claimAutoreleasedReturnValue(), v45, !firstObject5))
  {
    styles3 = [v13 styles];
    firstObject5 = [styles3 firstObject];
  }

  v62 = 0;
LABEL_53:
  [v12 setSelectedStyle:firstObject5];
  [v12 setSuggestedStyle:v60];
  v47 = [[PREditingContentStyleItemsDataSource alloc] initWithConfiguration:v12 includesSuggestedStyle:1 delegate:selfCopy];
  dataSource = selfCopy->_dataSource;
  selfCopy->_dataSource = v47;

  objc_storeStrong(&selfCopy->_configuration, v12);
  [(PREditingContentStyleItemsViewController *)selfCopy->_itemsViewController updateDataSource:selfCopy->_dataSource configuration:selfCopy->_configuration];
  sliderView = selfCopy->_sliderView;
  stylePalette2 = [(PREditorContentStylePickerConfiguration *)selfCopy->_configuration stylePalette];
  -[PREditingVariationSlider setApplyVariationOnGlass:](sliderView, "setApplyVariationOnGlass:", [stylePalette2 displayingGlassStyles]);

  selectedContentStyleCoordinator2 = [(PREditingContentStyleItemsViewController *)selfCopy->_itemsViewController selectedContentStyleCoordinator];
  style2 = [selectedContentStyleCoordinator2 style];

  if (style2)
  {
    [(PREditingVariationSlider *)selfCopy->_sliderView setVariation:v10];
  }
}

- (PREditingContentStylePickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end