@interface MUPersonalGuidesSectionController
- (MUPersonalGuidesSectionController)initWithMapItem:(id)item collectionViewProvider:(id)provider;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (void)_setupSectionView;
- (void)reloadCollectionsAnimated:(BOOL)animated;
- (void)setActive:(BOOL)active;
- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index;
@end

@implementation MUPersonalGuidesSectionController

- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index
{
  v20 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSDictionary *)self->_collectionViews allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [(NSDictionary *)self->_wrappedSectionViewsByIdentifier objectForKeyedSubscript:v12];

        if (v13 == rowCopy)
        {
          [(MUPlaceSectionController *)self captureInfoCardAction:0 eventValue:0 feedbackType:0];
          WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
          [WeakRetained collectionIdentifierSelected:v12];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    v4 = [MUPlaceSectionHeaderViewModel alloc];
    v5 = _MULocalizedStringFromThisBundle(@"In Your Guides [Placecard]");
    v6 = [(MUPlaceSectionHeaderViewModel *)v4 initWithTitleString:v5];
    v7 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v6;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)reloadCollectionsAnimated:(BOOL)animated
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  collectionViews = [WeakRetained collectionViews];

  if ([collectionViews count])
  {
    v7 = MEMORY[0x1E695DFD8];
    allValues = [collectionViews allValues];
    v9 = [v7 setWithArray:allValues];

    v4 = v9;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v11 = selfCopy->_collectionViews;
  if ([(NSDictionary *)selfCopy->_collectionViews count])
  {
    v12 = MEMORY[0x1E695DFD8];
    allValues2 = [(NSDictionary *)v11 allValues];
    v14 = [v12 setWithArray:allValues2];

    v10 = v14;
  }

  if ([v4 isEqualToSet:v10])
  {
    v15 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_INFO, "MUPersonalGuidesSectionController:  Not updating personal guides as incoming == current", buf, 2u);
    }
  }

  else
  {
    v43 = v11;
    v44 = v10;
    v46 = v4;
    v16 = [collectionViews copy];
    collectionViews = selfCopy->_collectionViews;
    selfCopy->_collectionViews = v16;

    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    if (IsMacCatalyst)
    {
      v19 = 8.0;
    }

    else
    {
      v19 = 0.0;
    }

    if (IsMacCatalyst)
    {
      v20 = 16.0;
    }

    else
    {
      v20 = 0.0;
    }

    v45 = collectionViews;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(collectionViews, "count")}];
    v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{4 * -[NSObject count](v15, "count")}];
    v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = [(NSDictionary *)selfCopy->_collectionViews allKeys];
    v53 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v53)
    {
      v48 = *v62;
      v21 = *MEMORY[0x1E695F058];
      v22 = *(MEMORY[0x1E695F058] + 8);
      v23 = *(MEMORY[0x1E695F058] + 16);
      v24 = *(MEMORY[0x1E695F058] + 24);
      v49 = v15;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v62 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v61 + 1) + 8 * i);
          v26 = [(NSDictionary *)selfCopy->_collectionViews objectForKeyedSubscript:?];
          v27 = [[MUPlaceSectionRowView alloc] initWithFrame:v21, v22, v23, v24];
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(MUPlaceSectionRowView *)v27 setAccessibilityIdentifier:@"PersonalGuide"];
          [(MUPlaceSectionRowView *)v27 addSubview:v26];
          topAnchor = [v26 topAnchor];
          topAnchor2 = [(MUPlaceSectionRowView *)v27 topAnchor];
          v57 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v19];
          v66[0] = v57;
          bottomAnchor = [v26 bottomAnchor];
          bottomAnchor2 = [(MUPlaceSectionRowView *)v27 bottomAnchor];
          v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v19];
          v66[1] = v54;
          leadingAnchor = [v26 leadingAnchor];
          leadingAnchor2 = [(MUPlaceSectionRowView *)v27 leadingAnchor];
          v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v20];
          v66[2] = v30;
          trailingAnchor = [v26 trailingAnchor];
          trailingAnchor2 = [(MUPlaceSectionRowView *)v27 trailingAnchor];
          v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v20];
          v66[3] = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
          [v51 addObjectsFromArray:v34];

          [v50 setObject:v27 forKey:v60];
          v15 = v49;
          [v49 addObject:v27];
        }

        v53 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v53);
    }

    v35 = [v50 copy];
    wrappedSectionViewsByIdentifier = selfCopy->_wrappedSectionViewsByIdentifier;
    selfCopy->_wrappedSectionViewsByIdentifier = v35;

    v37 = MEMORY[0x1E696ACD8];
    v38 = [v51 copy];
    [v37 activateConstraints:v38];

    containerView = selfCopy->_containerView;
    v40 = [v15 copy];
    [(MUPlaceVerticalCardContainerView *)containerView setRowViews:v40];

    v41 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v41, OS_LOG_TYPE_INFO, "MUPersonalGuidesSectionController: Detected change in user collections and telling parent to update content", buf, 2u);
    }

    delegate = [(MUPlaceSectionController *)selfCopy delegate];
    [delegate placeSectionControllerDidUpdateContent:selfCopy];

    collectionViews = v45;
    v4 = v46;
    v11 = v43;
    v10 = v44;
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active == active)
  {
    if (!self->_active)
    {
      return;
    }
  }

  else
  {
    self->_active = active;
    if (!active)
    {
      return;
    }
  }

  v4 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerActivate", "", buf, 2u);
  }

  [(MUPersonalGuidesSectionController *)self reloadCollectionsAnimated:1];
  v5 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerActivate", "", v6, 2u);
  }
}

- (void)_setupSectionView
{
  v9 = +[MUPlaceVerticalCardConfiguration separatorConfiguration];
  v3 = [[MUPlaceVerticalCardContainerView alloc] initWithConfiguration:v9];
  containerView = self->_containerView;
  self->_containerView = v3;

  [(MUPlaceVerticalCardContainerView *)self->_containerView setDelegate:self];
  [(MUPlaceVerticalCardContainerView *)self->_containerView setAccessibilityIdentifier:@"PersonalGuidesContainer"];
  v5 = self->_containerView;
  sectionHeaderViewModel = [(MUPersonalGuidesSectionController *)self sectionHeaderViewModel];
  v7 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v5 sectionHeaderViewModel:sectionHeaderViewModel sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v7;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
}

- (MUPersonalGuidesSectionController)initWithMapItem:(id)item collectionViewProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = MUPersonalGuidesSectionController;
  v7 = [(MUPlaceSectionController *)&v12 initWithMapItem:item];
  if (v7)
  {
    v8 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerInit", "", v11, 2u);
    }

    objc_storeWeak(&v7->_viewProvider, providerCopy);
    [(MUPersonalGuidesSectionController *)v7 _setupSectionView];
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerInit", "", v11, 2u);
    }
  }

  return v7;
}

@end