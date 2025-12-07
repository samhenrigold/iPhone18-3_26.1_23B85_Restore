@interface MUPlaceHoursSectionView
- (MUPlaceHoursSectionView)initWithSectionViewConfiguration:(id)configuration;
- (MUPlaceHoursSectionViewDelegate)expandDelegate;
- (void)_performExpansion;
- (void)_recalculateStackingIfNeeded;
- (void)_setupViews;
- (void)expandableHoursViewDidExpand:(id)expand;
- (void)layoutSubviews;
- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index;
@end

@implementation MUPlaceHoursSectionView

- (MUPlaceHoursSectionViewDelegate)expandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandDelegate);

  return WeakRetained;
}

- (void)expandableHoursViewDidExpand:(id)expand
{
  expandCopy = expand;
  hoursConfiguration = [expandCopy hoursConfiguration];
  expandDelegate = [(MUPlaceHoursSectionView *)self expandDelegate];
  isExpanded = [expandCopy isExpanded];

  [expandDelegate hoursSectionView:self didExpand:isExpanded forConfiguration:hoursConfiguration];
}

- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index
{
  if (self->_moreRowView == row)
  {
    [(MUPlaceHoursSectionView *)self _performExpansion];
  }
}

- (void)_recalculateStackingIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_hoursViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        [(MUPlaceHoursSectionView *)self bounds];
        if ([v7 shouldStackForProposedWidth:CGRectGetWidth(v24)])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_hoursViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * j) setStacked:{v4, v13}];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUPlaceHoursSectionView;
  [(MUPlaceHoursSectionView *)&v4 layoutSubviews];
  [(MUPlaceHoursSectionView *)self _recalculateStackingIfNeeded];
  v3.receiver = self;
  v3.super_class = MUPlaceHoursSectionView;
  [(MUPlaceHoursSectionView *)&v3 layoutSubviews];
}

- (void)_performExpansion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MUPlaceHoursSectionView__performExpansion__block_invoke;
  v5[3] = &unk_1E821BAC8;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MUPlaceHoursSectionView__performExpansion__block_invoke_2;
  v3[3] = &unk_1E8219D10;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v5 animations:v3 completion:0.200000003];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__MUPlaceHoursSectionView__performExpansion__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [WeakRetained arrangedSubviews];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) setHidden:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [v2[58] setHidden:1];
  }
}

void __44__MUPlaceHoursSectionView__performExpansion__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained removeArrangedSubview:WeakRetained[58]];
    WeakRetained = v2;
  }
}

- (void)_setupViews
{
  v75[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  placeHours = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration placeHours];

  v68 = v3;
  if (placeHours)
  {
    placeHours2 = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration placeHours];
    v65 = [MUHoursSummaryViewModel viewModelForBusinessConfiguration:placeHours2 showHoursAndOpenState:1];

    v6 = [[MUHoursSummaryView alloc] initWithViewModel:v65];
    [(MUHoursSummaryView *)v6 setDirectionalLayoutMargins:15.0, 20.0, 15.0, 20.0];
    v7 = [MUPlaceSectionRowView alloc];
    v8 = [(MUPlaceSectionRowView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MUHoursSummaryView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceSectionRowView *)v8 addSubview:v6];
    v53 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(MUHoursSummaryView *)v6 leadingAnchor];
    leadingAnchor2 = [(MUPlaceSectionRowView *)v8 leadingAnchor];
    v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v75[0] = v59;
    trailingAnchor = [(MUHoursSummaryView *)v6 trailingAnchor];
    trailingAnchor2 = [(MUPlaceSectionRowView *)v8 trailingAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v75[1] = v52;
    topAnchor = [(MUHoursSummaryView *)v6 topAnchor];
    topAnchor2 = [(MUPlaceSectionRowView *)v8 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[2] = v10;
    bottomAnchor = [(MUHoursSummaryView *)v6 bottomAnchor];
    bottomAnchor2 = [(MUPlaceSectionRowView *)v8 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v75[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];
    [v53 activateConstraints:v14];

    objc_storeStrong(&self->_hoursSummaryView, v8);
    if (([v65 openingHoursOptions] & 0x181) == 0)
    {
      v15 = [MUExpandableHoursView alloc];
      placeHours3 = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration placeHours];
      v17 = [(MUExpandableHoursView *)v15 initWithBusinessHoursConfiguration:placeHours3];

      [(MUExpandableHoursView *)v17 setExpanded:1];
      [(MUExpandableHoursView *)v17 setDirectionalLayoutMargins:15.0, 20.0, 15.0, 20.0];
      [(MUExpandableHoursView *)v17 setDelegate:self];
      [v68 addObject:v17];
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  serviceHoursList = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration serviceHoursList];
  v19 = [serviceHoursList countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = *v70;
    do
    {
      v24 = 0;
      v66 = v22;
      do
      {
        if (*v70 != v23)
        {
          objc_enumerationMutation(serviceHoursList);
        }

        v25 = [[MUExpandableHoursView alloc] initWithBusinessHoursConfiguration:*(*(&v69 + 1) + 8 * v24)];
        [(MUExpandableHoursView *)v25 setDirectionalLayoutMargins:15.0, 20.0, 15.0, 20.0];
        [(MUExpandableHoursView *)v25 setDelegate:self];
        [v68 addObject:v25];
        if (v22 >= [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration numberOfInlineServiceHours])
        {
          v21 = 1;
          [(MUExpandableHoursView *)v25 setHidden:1];
        }

        ++v22;

        ++v24;
      }

      while (v20 != v24);
      v22 = v66 + v20;
      v20 = [serviceHoursList countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v26 = v68;
  lastObject = [v68 lastObject];
  v28 = lastObject;
  if (lastObject)
  {
    [lastObject directionalLayoutMargins];
    [v28 setDirectionalLayoutMargins:?];
  }

  v29 = [v68 copy];
  hoursViews = self->_hoursViews;
  self->_hoursViews = v29;

  if (v21)
  {
    v31 = [MUInfoCardStyle labelForProminence:0];
    moreLabel = self->_moreLabel;
    self->_moreLabel = v31;

    [(MULabelViewProtocol *)self->_moreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _MULocalizedStringFromThisBundle(@"More [Hours]");
    v33 = v67 = v28;
    [(MULabelViewProtocol *)self->_moreLabel setText:v33];

    v34 = +[MUInfoCardStyle tintColor];
    [(MULabelViewProtocol *)self->_moreLabel setTextColor:v34];

    v35 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
    [(MULabelViewProtocol *)self->_moreLabel setFont:v35];

    [(MULabelViewProtocol *)self->_moreLabel setAdjustsFontForContentSizeCategory:1];
    v36 = [MUPlaceSectionRowView alloc];
    v37 = [(MUPlaceSectionRowView *)v36 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MUPlaceSectionRowView *)v37 setHandlesHighlighting:1];
    [(MUPlaceSectionRowView *)v37 addSubview:self->_moreLabel];
    v58 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(MULabelViewProtocol *)self->_moreLabel leadingAnchor];
    leadingAnchor4 = [(MUPlaceSectionRowView *)v37 leadingAnchor];
    v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
    v73[0] = v62;
    trailingAnchor3 = [(MULabelViewProtocol *)self->_moreLabel trailingAnchor];
    trailingAnchor4 = [(MUPlaceSectionRowView *)v37 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
    v73[1] = v38;
    topAnchor3 = [(MULabelViewProtocol *)self->_moreLabel topAnchor];
    topAnchor4 = [(MUPlaceSectionRowView *)v37 topAnchor];
    v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
    v73[2] = v41;
    bottomAnchor3 = [(MULabelViewProtocol *)self->_moreLabel bottomAnchor];
    bottomAnchor4 = [(MUPlaceSectionRowView *)v37 bottomAnchor];
    v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v73[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [v58 activateConstraints:v45];

    moreRowView = self->_moreRowView;
    self->_moreRowView = v37;
    v47 = v37;
    v28 = v67;
    v48 = v47;

    v26 = v68;
    [v68 addObject:v48];
  }

  hoursSummaryView = self->_hoursSummaryView;
  if (hoursSummaryView)
  {
    [v26 insertObject:hoursSummaryView atIndex:0];
  }

  v50 = [v26 copy];
  [(MUPlaceVerticalCardContainerView *)self setRowViews:v50];
}

- (MUPlaceHoursSectionView)initWithSectionViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MUPlaceHoursSectionView;
  v6 = [(MUPlaceVerticalCardContainerView *)&v9 initWithShowsSeparators:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionViewConfiguration, configuration);
    [(MUPlaceHoursSectionView *)v7 _setupViews];
    [(MUPlaceVerticalCardContainerView *)v7 setDelegate:v7];
  }

  return v7;
}

@end