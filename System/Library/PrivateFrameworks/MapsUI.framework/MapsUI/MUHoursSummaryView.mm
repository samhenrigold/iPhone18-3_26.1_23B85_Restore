@interface MUHoursSummaryView
- (MUHoursSummaryView)initWithViewModel:(id)model;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateExpandButton;
- (void)expandButtonTapped:(BOOL)tapped;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation MUHoursSummaryView

- (void)_updateAppearance
{
  [(UIImageView *)self->_expansionIndicator setHidden:[(MUHoursSummaryViewModel *)self->_viewModel hideChevron]];
  showHoursAndOpenState = [(MUHoursSummaryViewModel *)self->_viewModel showHoursAndOpenState];
  viewModel = self->_viewModel;
  if (showHoursAndOpenState)
  {
    openStateColor = [(MUHoursSummaryViewModel *)viewModel openStateColor];
    [(MULabelViewProtocol *)self->_openStateLabel setTextColor:openStateColor];

    openStateText = [(MUHoursSummaryViewModel *)self->_viewModel openStateText];
    [(MULabelViewProtocol *)self->_openStateLabel setText:openStateText];

    if ([(MUHoursSummaryViewModel *)self->_viewModel showHoursInSummary])
    {
      hoursLabel = self->_hoursLabel;

      [(MULabelViewProtocol *)hoursLabel setAttributedText:0];
      return;
    }

    buildDefaultPlacecardHoursString = [(MUHoursSummaryViewModel *)self->_viewModel buildDefaultPlacecardHoursString];
    [(MULabelViewProtocol *)self->_hoursLabel setAttributedText:buildDefaultPlacecardHoursString];
  }

  else
  {
    buildDefaultPlacecardHoursString = [(MUHoursSummaryViewModel *)viewModel titleText];
    [(MULabelViewProtocol *)self->_titleLabel setText:buildDefaultPlacecardHoursString];
  }
}

- (void)_updateExpandButton
{
  if (self->_expanded)
  {
    v2 = @"chevron.up";
  }

  else
  {
    v2 = @"chevron.down";
  }

  expansionIndicator = self->_expansionIndicator;
  v4 = MEMORY[0x1E69DCAB8];
  v5 = MEMORY[0x1E69DCAD8];
  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDD40];
  v8 = v2;
  v11 = [v6 preferredFontForTextStyle:v7];
  v9 = [v5 configurationWithFont:v11 scale:1];
  v10 = [v4 systemImageNamed:v8 withConfiguration:v9];

  [(UIImageView *)expansionIndicator setImage:v10];
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(MUHoursSummaryView *)self _updateExpandButton];
  }
}

- (void)expandButtonTapped:(BOOL)tapped
{
  tappedCopy = tapped;
  self->_expanded ^= 1u;
  [(MUHoursSummaryView *)self _updateExpandButton];
  actionHandler = [(MUHoursSummaryView *)self actionHandler];

  if (actionHandler && tappedCopy)
  {
    actionHandler2 = [(MUHoursSummaryView *)self actionHandler];
    actionHandler2[2]();
  }
}

- (void)_setupConstraints
{
  v70[11] = *MEMORY[0x1E69E9840];
  showHoursAndOpenState = [(MUHoursSummaryViewModel *)self->_viewModel showHoursAndOpenState];
  v57 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
  layoutMarginsGuide = [(MUHoursSummaryView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v8 = v7;
  if (showHoursAndOpenState)
  {
    v70[0] = v7;
    bottomAnchor = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    layoutMarginsGuide2 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v66 = [bottomAnchor constraintEqualToAnchor:?];
    v70[1] = v66;
    leadingAnchor = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    layoutMarginsGuide3 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [layoutMarginsGuide3 leadingAnchor];
    v63 = v65 = leadingAnchor;
    v62 = [leadingAnchor constraintEqualToAnchor:?];
    v70[2] = v62;
    trailingAnchor = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    layoutMarginsGuide4 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [layoutMarginsGuide4 trailingAnchor];
    v59 = v61 = trailingAnchor;
    v58 = [trailingAnchor constraintEqualToAnchor:?];
    v70[3] = v58;
    leadingAnchor2 = [(MULabelViewProtocol *)self->_openStateLabel leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    v56 = leadingAnchor2;
    v54 = [leadingAnchor2 constraintEqualToAnchor:?];
    v70[4] = v54;
    topAnchor3 = [(MULabelViewProtocol *)self->_openStateLabel topAnchor];
    topAnchor4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
    v53 = topAnchor3;
    v51 = [topAnchor3 constraintEqualToAnchor:?];
    v70[5] = v51;
    bottomAnchor3 = [(MULabelViewProtocol *)self->_openStateLabel bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v50 = bottomAnchor3;
    v48 = [bottomAnchor3 constraintEqualToAnchor:?];
    v70[6] = v48;
    trailingAnchor2 = [(MULabelViewProtocol *)self->_openStateLabel trailingAnchor];
    leadingAnchor4 = [(MULabelViewProtocol *)self->_hoursLabel leadingAnchor];
    v47 = trailingAnchor2;
    v45 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:?];
    v70[7] = v45;
    topAnchor5 = [(MULabelViewProtocol *)self->_hoursLabel topAnchor];
    topAnchor6 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
    v44 = topAnchor5;
    v42 = [topAnchor5 constraintEqualToAnchor:?];
    v70[8] = v42;
    trailingAnchor3 = [(MULabelViewProtocol *)self->_hoursLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    v41 = trailingAnchor3;
    layoutMarginsGuide5 = [trailingAnchor3 constraintEqualToAnchor:?];
    v70[9] = layoutMarginsGuide5;
    bottomAnchor5 = [(MULabelViewProtocol *)self->_hoursLabel bottomAnchor];
    bottomAnchor6 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    trailingAnchor7 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v70[10] = trailingAnchor7;
    layoutMarginsGuide6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:11];
    [v57 activateConstraints:layoutMarginsGuide6];
  }

  else
  {
    v69[0] = v7;
    bottomAnchor7 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    layoutMarginsGuide2 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v66 = [bottomAnchor7 constraintEqualToAnchor:?];
    v69[1] = v66;
    leadingAnchor5 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    layoutMarginsGuide3 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [layoutMarginsGuide3 leadingAnchor];
    v63 = v65 = leadingAnchor5;
    v62 = [leadingAnchor5 constraintEqualToAnchor:?];
    v69[2] = v62;
    trailingAnchor5 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    layoutMarginsGuide4 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [layoutMarginsGuide4 trailingAnchor];
    v59 = v61 = trailingAnchor5;
    v58 = [trailingAnchor5 constraintEqualToAnchor:?];
    v69[3] = v58;
    topAnchor7 = [(MULabelViewProtocol *)self->_titleLabel topAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
    v56 = topAnchor7;
    v54 = [topAnchor7 constraintEqualToAnchor:?];
    v69[4] = v54;
    leadingAnchor6 = [(MULabelViewProtocol *)self->_titleLabel leadingAnchor];
    topAnchor4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    v53 = leadingAnchor6;
    v51 = [leadingAnchor6 constraintEqualToAnchor:?];
    v69[5] = v51;
    trailingAnchor6 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
    bottomAnchor4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    v50 = trailingAnchor6;
    v48 = [trailingAnchor6 constraintEqualToAnchor:?];
    v69[6] = v48;
    bottomAnchor8 = [(MULabelViewProtocol *)self->_titleLabel bottomAnchor];
    leadingAnchor4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v47 = bottomAnchor8;
    v45 = [bottomAnchor8 constraintEqualToAnchor:?];
    v69[7] = v45;
    topAnchor8 = [(UIImageView *)self->_expansionIndicator topAnchor];
    topAnchor6 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [topAnchor6 topAnchor];
    v42 = v44 = topAnchor8;
    v41 = [topAnchor8 constraintEqualToAnchor:?];
    v69[8] = v41;
    bottomAnchor9 = [(UIImageView *)self->_expansionIndicator bottomAnchor];
    layoutMarginsGuide5 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    bottomAnchor10 = [layoutMarginsGuide5 bottomAnchor];
    trailingAnchor4 = bottomAnchor9;
    bottomAnchor6 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10];
    v69[9] = bottomAnchor6;
    trailingAnchor7 = [(UIImageView *)self->_expansionIndicator trailingAnchor];
    layoutMarginsGuide6 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    trailingAnchor8 = [layoutMarginsGuide6 trailingAnchor];
    v31 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v69[10] = v31;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:11];
    v32 = v8;
    v33 = topAnchor2;
    v34 = layoutMarginsGuide;
    v36 = v35 = topAnchor;
    [v57 activateConstraints:v36];

    topAnchor = v35;
    layoutMarginsGuide = v34;
    topAnchor2 = v33;
    v8 = v32;
    bottomAnchor = bottomAnchor7;

    bottomAnchor5 = bottomAnchor10;
  }
}

- (void)_setupSubviews
{
  v36[1] = *MEMORY[0x1E69E9840];
  [(MUHoursSummaryView *)self setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
  [(MUHoursSummaryView *)self setInsetsLayoutMarginsFromSafeArea:0];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  summaryStackLayoutGuide = self->_summaryStackLayoutGuide;
  self->_summaryStackLayoutGuide = v3;

  [(MUHoursSummaryView *)self addLayoutGuide:self->_summaryStackLayoutGuide];
  v5 = [MUInfoCardStyle vibrantLabelForProminence:1];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = *MEMORY[0x1E69DB970];
  v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v9];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(MULabelViewProtocol *)self->_titleLabel setTextColor:secondaryLabelColor];

  [(MULabelViewProtocol *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"HoursSummaryTitle"];
  v11 = [MUInfoCardStyle labelForProminence:0];
  hoursLabel = self->_hoursLabel;
  self->_hoursLabel = v11;

  [(MULabelViewProtocol *)self->_hoursLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_hoursLabel setNumberOfLines:0];
  [(MULabelViewProtocol *)self->_hoursLabel setAdjustsFontForContentSizeCategory:1];
  [(MULabelViewProtocol *)self->_hoursLabel setAccessibilityIdentifier:@"HoursSummaryHours"];
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  p_openStateLabel = &self->_openStateLabel;
  openStateLabel = self->_openStateLabel;
  self->_openStateLabel = _mapsui_defaultLabel;

  [(MULabelViewProtocol *)self->_openStateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_openStateLabel setAdjustsFontForContentSizeCategory:1];
  v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v7 weight:v8];
  [(MULabelViewProtocol *)self->_openStateLabel setFont:v16];

  v17 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  expansionIndicator = self->_expansionIndicator;
  self->_expansionIndicator = v18;

  [(UIImageView *)self->_expansionIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_expansionIndicator _setOverrideUserInterfaceRenderingMode:2];
  v20 = MEMORY[0x1E69DCAD8];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v22 = [v20 configurationWithFont:v21 scale:1];
  [(UIImageView *)self->_expansionIndicator setPreferredSymbolConfiguration:v22];

  v23 = self->_expansionIndicator;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v23 setTintColor:tertiaryLabelColor];

  LODWORD(v25) = 1148846080;
  [(UIImageView *)self->_expansionIndicator setContentHuggingPriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(UIImageView *)self->_expansionIndicator setContentHuggingPriority:1 forAxis:v26];
  v27 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v27;

  [(MUHoursSummaryView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel_expandButtonTapped];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel_expandButtonTapped];
  [(MUHoursSummaryView *)self _updateExpandButton];
  if ([(MUHoursSummaryViewModel *)self->_viewModel showHoursAndOpenState])
  {
    [(MUHoursSummaryView *)self addSubview:self->_hoursLabel];
    [*p_openStateLabel setAccessibilityIdentifier:@"HoursSummaryOpenState"];
  }

  else
  {
    [(MUHoursSummaryView *)self addSubview:self->_titleLabel];
    p_openStateLabel = &self->_expansionIndicator;
  }

  [(MUHoursSummaryView *)self addSubview:*p_openStateLabel];
  v29 = objc_opt_self();
  v36[0] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v31 = [(MUHoursSummaryView *)self registerForTraitChanges:v30 withAction:sel__updateForPlatterAvailability];

  v32 = objc_opt_self();
  v35 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v34 = [(MUHoursSummaryView *)self registerForTraitChanges:v33 withAction:sel__contentSizeDidChange];
}

- (MUHoursSummaryView)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = MUHoursSummaryView;
  v6 = [(MUHoursSummaryView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_expanded = 0;
    objc_storeStrong(&v6->_viewModel, model);
    [(MUHoursSummaryView *)v7 setAccessibilityIdentifier:@"HoursSummary"];
    [(MUHoursSummaryView *)v7 _setupSubviews];
    [(MUHoursSummaryView *)v7 _setupConstraints];
    [(MUHoursSummaryView *)v7 _updateAppearance];
  }

  return v7;
}

@end