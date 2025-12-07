@interface VTUIVoiceSelectionProximityView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (VTUIVoiceSelectionProximityView)initWithTitle:(id)title allowsRandomVoiceSelection:(BOOL)selection forSelectionStyle:(int64_t)style;
- (void)_setupConstraintsToSize:(CGSize)size;
- (void)_setupContentWithTitle:(id)title;
- (void)setContentView:(id)view;
- (void)setShouldHideCompactBackgroundCardView:(BOOL)view;
@end

@implementation VTUIVoiceSelectionProximityView

- (VTUIVoiceSelectionProximityView)initWithTitle:(id)title allowsRandomVoiceSelection:(BOOL)selection forSelectionStyle:(int64_t)style
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = VTUIVoiceSelectionProximityView;
  v9 = [(VTUIVoiceSelectionProximityView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v9)
  {
    v10 = +[VTUIStyle sharedStyle];
    vtStyle = v9->_vtStyle;
    v9->_vtStyle = v10;

    v9->_allowsRandomVoiceSelection = selection;
    v9->_selectionStyle = style;
    v9->_isHidingCompactBackgroundCardView = 0;
    [(VTUIVoiceSelectionProximityView *)v9 _setupContentWithTitle:titleCopy];
    [(VTUIVoiceSelectionProximityView *)v9 _setupConstraintsToSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(VTUIVoiceSelectionProximityView *)v9 setBackgroundColor:clearColor];
  }

  return v9;
}

- (void)_setupContentWithTitle:(id)title
{
  v40 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 136315138;
    v39 = "[VTUIVoiceSelectionProximityView _setupContentWithTitle:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Setup content", &v38, 0xCu);
  }

  v6 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v6;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIVoiceSelectionProximityView *)self addSubview:self->_containerView];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  siriIconImage = [(VTUIStyle *)self->_vtStyle siriIconImage];
  v10 = [v8 initWithImage:siriIconImage];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_orbImage, v10);
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_orbImage];
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setNumberOfLines:3];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_titleLabel;
  vtStyle = self->_vtStyle;
  if (self->_selectionStyle == 1)
  {
    pRXheaderFont = [(VTUIStyle *)vtStyle PRXheaderFont];
    [(UILabel *)v13 setFont:pRXheaderFont];

    v16 = self->_titleLabel;
    [(VTUIStyle *)self->_vtStyle PRXheaderColor];
  }

  else
  {
    proxHeaderFont = [(VTUIStyle *)vtStyle proxHeaderFont];
    [(UILabel *)v13 setFont:proxHeaderFont];

    v16 = self->_titleLabel;
    [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  }
  v18 = ;
  [(UILabel *)v16 setTextColor:v18];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setText:titleCopy];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_titleLabel];
  v19 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v19;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_dismissButton];
  v21 = objc_alloc_init(MEMORY[0x277D75D18]);
  footerView = self->_footerView;
  self->_footerView = v21;

  [(UIView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIVoiceSelectionProximityView *)self addSubview:self->_footerView];
  if (self->_selectionStyle == 1)
  {
    +[VTUIButton _vtuiProximityButtonWithPRXStyle];
  }

  else
  {
    +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  }
  v23 = ;
  continueButton = self->_continueButton;
  self->_continueButton = v23;

  [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_continueButton;
  v26 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
  [(UIButton *)v25 setTitle:v26 forState:0];

  titleLabel = [(UIButton *)self->_continueButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [(UIView *)self->_footerView addSubview:self->_continueButton];
  if (self->_allowsRandomVoiceSelection)
  {
    v28 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
    chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
    self->_chooseRandomVoiceButton = v28;

    titleLabel2 = [(UIButton *)self->_chooseRandomVoiceButton titleLabel];
    proxCancelFont = [(VTUIStyle *)self->_vtStyle proxCancelFont];
    [titleLabel2 setFont:proxCancelFont];

    [(UIButton *)self->_chooseRandomVoiceButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = self->_chooseRandomVoiceButton;
    v33 = self->_vtStyle;
    if (self->_selectionStyle == 1)
    {
      homeAppTintColor = [(VTUIStyle *)v33 homeAppTintColor];
      [(UIButton *)v32 setTintColor:homeAppTintColor];

      v32 = self->_chooseRandomVoiceButton;
      v33 = self->_vtStyle;
      v35 = @"BUTTON_CHOOSE_FOR_ME_CAPITALIZED";
    }

    else
    {
      v35 = @"BUTTON_CHOOSE_FOR_ME";
    }

    v36 = [(VTUIStyle *)v33 VTUIDeviceSpecificString:v35];
    [(UIButton *)v32 setTitle:v36 forState:0];

    titleLabel3 = [(UIButton *)self->_chooseRandomVoiceButton titleLabel];
    [titleLabel3 setNumberOfLines:0];

    [(UIView *)self->_footerView addSubview:self->_chooseRandomVoiceButton];
  }
}

- (void)setContentView:(id)view
{
  v26[4] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_contentView, view);
  viewCopy = view;
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_contentView];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIView *)self->_footerView topAnchor];
  bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
  v7 = +[VTUIStyle sharedStyle];
  [v7 proxBottomPaddingVoiceSelectionOptions];
  v19 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];

  LODWORD(v8) = 1132068864;
  [v19 setPriority:v8];
  v20 = MEMORY[0x277CCAAD0];
  topAnchor2 = [(UIView *)self->_contentView topAnchor];
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  v23 = +[VTUIStyle sharedStyle];
  [v23 proxTopPaddingVoiceSelectionOptions];
  v21 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:?];
  v26[0] = v21;
  leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
  safeAreaLayoutGuide = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v26[1] = v12;
  trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v16];
  v26[2] = v17;
  v26[3] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v20 activateConstraints:v18];
}

- (void)_setupConstraintsToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v177[3] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIVoiceSelectionProximityView *)self safeAreaLayoutGuide];
  array = [MEMORY[0x277CBEB18] array];
  height = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  v8 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v8 isDeviceIPad];

  containerView = self->_containerView;
  v163 = array;
  v151 = safeAreaLayoutGuide;
  if (isDeviceIPad)
  {
    centerYAnchor = [(VTUIProximityContainerView *)containerView centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v177[0] = v12;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v177[1] = v15;
    widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v17 = [widthAnchor constraintEqualToConstant:?];
    v177[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:3];
    [v163 addObjectsFromArray:v18];

    array = v163;
    v19 = height;
    if (!height)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  bottomAnchor = [(VTUIProximityContainerView *)containerView bottomAnchor];
  bottomAnchor2 = [(VTUIVoiceSelectionProximityView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v22];
  v176 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  [array addObjectsFromArray:v24];

  v25 = self->_containerView;
  if (height)
  {
    centerXAnchor3 = [(VTUIProximityContainerView *)v25 centerXAnchor];
    centerXAnchor4 = [safeAreaLayoutGuide centerXAnchor];
    v28 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v175[0] = v28;
    widthAnchor2 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v30 = [widthAnchor2 constraintEqualToConstant:?];
    v175[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
    [array addObjectsFromArray:v31];

    v19 = height;
    goto LABEL_6;
  }

  leadingAnchor = [(VTUIProximityContainerView *)v25 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v174[0] = v34;
  trailingAnchor = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v37];
  v174[1] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:2];
  [array addObjectsFromArray:v39];

  v19 = 0;
LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v40 = v32;
  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v42 = [heightAnchor constraintGreaterThanOrEqualToConstant:v40];

  v150 = v42;
  [array addObject:v42];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  vtStyle = self->_vtStyle;
  if (v19)
  {
    [(VTUIStyle *)vtStyle proxTitleTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)vtStyle proxTrailing];
  }

  v46 = v45;
  firstBaselineAnchor = [(UIImageView *)self->_orbImage firstBaselineAnchor];
  topAnchor = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageOffsetFromTopEnrollment];
  v142 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  v173[0] = v142;
  centerXAnchor5 = [(UIImageView *)self->_orbImage centerXAnchor];
  centerXAnchor6 = [(VTUIVoiceSelectionProximityView *)self centerXAnchor];
  [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v49 = v162 = safeAreaLayoutGuide2;
  v173[1] = v49;
  widthAnchor3 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v51 = [widthAnchor3 constraintEqualToConstant:?];
  v173[2] = v51;
  heightAnchor2 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v53 = [heightAnchor2 constraintEqualToConstant:?];
  v173[3] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:4];
  [v163 addObjectsFromArray:v54];

  topAnchor2 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor3 = [(UIImageView *)self->_orbImage bottomAnchor];
  [(VTUIStyle *)self->_vtStyle titleOffsetFromOrbImage];
  v56 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:?];
  v172[0] = v56;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [v162 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v172[1] = v59;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor4 = [v162 trailingAnchor];
  v62 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v46];
  v172[2] = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:3];
  [v163 addObjectsFromArray:v63];

  selectionStyle = self->_selectionStyle;
  centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor3 = [v162 topAnchor];
  v67 = self->_vtStyle;
  v154 = centerYAnchor3;
  if (selectionStyle == 1)
  {
    [(VTUIStyle *)v67 PRXdismissButtonMargin];
    v68 = [centerYAnchor3 constraintEqualToAnchor:topAnchor3 constant:?];
    v171[0] = v68;
    centerXAnchor7 = [(UIButton *)self->_dismissButton centerXAnchor];
    trailingAnchor5 = [v162 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle PRXdismissButtonMargin];
    v72 = [centerXAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:-v71];
    v171[1] = v72;
    v73 = v171;
  }

  else
  {
    [(VTUIStyle *)v67 proxTrainingDismissButtonVerticalPaddingTop];
    v68 = [centerYAnchor3 constraintEqualToAnchor:topAnchor3 constant:?];
    v170[0] = v68;
    centerXAnchor7 = [(UIButton *)self->_dismissButton centerXAnchor];
    trailingAnchor5 = [v162 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
    v72 = [centerXAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:?];
    v170[1] = v72;
    v73 = v170;
  }

  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  [v163 addObjectsFromArray:v74];

  widthAnchor4 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v76 = [widthAnchor4 constraintEqualToConstant:?];
  v169[0] = v76;
  heightAnchor3 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v78 = [heightAnchor3 constraintEqualToConstant:?];
  v169[1] = v78;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
  [v163 addObjectsFromArray:v79];

  topAnchor4 = [(UIView *)self->_footerView topAnchor];
  topAnchor5 = [(UIButton *)self->_continueButton topAnchor];
  v139 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v168[0] = v139;
  bottomAnchor4 = [(UIView *)self->_footerView bottomAnchor];
  bottomAnchor5 = [v162 bottomAnchor];
  v80 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v168[1] = v80;
  leadingAnchor5 = [(UIView *)self->_footerView leadingAnchor];
  leadingAnchor6 = [v162 leadingAnchor];
  v83 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v168[2] = v83;
  trailingAnchor6 = [(UIView *)self->_footerView trailingAnchor];
  trailingAnchor7 = [v162 trailingAnchor];
  v86 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v168[3] = v86;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:4];
  [v163 addObjectsFromArray:v87];

  v88 = self->_vtStyle;
  if (height)
  {
    [(VTUIStyle *)v88 proxLeadingLandscape];
    v90 = v89;
    [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)v88 proxLeading];
    v90 = v92;
    [(VTUIStyle *)self->_vtStyle proxTrailing];
  }

  v93 = v91;
  heightAnchor4 = [(UIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v147 = [heightAnchor4 constraintEqualToConstant:?];
  v167[0] = v147;
  leadingAnchor7 = [(UIButton *)self->_continueButton leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_footerView leadingAnchor];
  v96 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v90];
  v167[1] = v96;
  trailingAnchor8 = [(UIButton *)self->_continueButton trailingAnchor];
  trailingAnchor9 = [(UIView *)self->_footerView trailingAnchor];
  v99 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v93];
  v167[2] = v99;
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:3];
  [v163 addObjectsFromArray:v100];

  if (self->_allowsRandomVoiceSelection)
  {
    v101 = +[VTUIFeatureFlags isNaturalUIEnabled];
    chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
    if (v101)
    {
      topAnchor6 = [(UIButton *)chooseRandomVoiceButton topAnchor];
      bottomAnchor6 = [(UIButton *)self->_continueButton bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingNotNowButtonVerticalPaddingTop];
      v148 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6 constant:?];
      v166[0] = v148;
      bottomAnchor7 = [(UIButton *)self->_chooseRandomVoiceButton bottomAnchor];
      bottomAnchor8 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
      v144 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v105];
      v166[1] = v144;
      leadingAnchor9 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      leadingAnchor10 = [(UIButton *)self->_continueButton leadingAnchor];
      v134 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      v166[2] = v134;
      trailingAnchor10 = [(UIButton *)self->_chooseRandomVoiceButton trailingAnchor];
      trailingAnchor11 = [(UIButton *)self->_continueButton trailingAnchor];
      v128 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
      v166[3] = v128;
      heightAnchor5 = [(UIButton *)self->_chooseRandomVoiceButton heightAnchor];
      [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
      v106 = [heightAnchor5 constraintEqualToConstant:?];
      v166[4] = v106;
      bottomAnchor9 = [(UIButton *)self->_continueButton bottomAnchor];
      topAnchor7 = [(UIButton *)self->_chooseRandomVoiceButton topAnchor];
      [(VTUIStyle *)self->_vtStyle proxChooseForMeTopPaddingFromContinueButton];
      v110 = [bottomAnchor9 constraintEqualToAnchor:topAnchor7 constant:-v109];
      v166[5] = v110;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:6];
      v112 = v163;
      [v163 addObjectsFromArray:v111];

      v113 = v148;
      bottomAnchor12 = bottomAnchor6;

      v115 = leadingAnchor9;
    }

    else
    {
      firstBaselineAnchor2 = [(UIButton *)chooseRandomVoiceButton firstBaselineAnchor];
      bottomAnchor10 = [(UIButton *)self->_continueButton bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
      v149 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor10 constant:?];
      v165[0] = v149;
      bottomAnchor7 = [(UIButton *)self->_chooseRandomVoiceButton firstBaselineAnchor];
      bottomAnchor8 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
      v144 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v117];
      v165[1] = v144;
      leadingAnchor11 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      leadingAnchor12 = [(UIButton *)self->_continueButton leadingAnchor];
      v132 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
      v165[2] = v132;
      trailingAnchor12 = [(UIButton *)self->_chooseRandomVoiceButton trailingAnchor];
      trailingAnchor13 = [(UIButton *)self->_continueButton trailingAnchor];
      v119 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
      v165[3] = v119;
      bottomAnchor11 = [(UIButton *)self->_continueButton bottomAnchor];
      topAnchor8 = [(UIButton *)self->_chooseRandomVoiceButton topAnchor];
      [(VTUIStyle *)self->_vtStyle proxChooseForMeTopPaddingFromContinueButton];
      v123 = [bottomAnchor11 constraintEqualToAnchor:topAnchor8 constant:-v122];
      v165[4] = v123;
      v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:5];
      v112 = v163;
      [v163 addObjectsFromArray:v124];

      v113 = v149;
      topAnchor6 = firstBaselineAnchor2;

      bottomAnchor12 = bottomAnchor10;
      v115 = leadingAnchor11;
    }
  }

  else
  {
    topAnchor6 = [(UIButton *)self->_continueButton bottomAnchor];
    bottomAnchor12 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxPaddingFromBottom];
    v113 = [topAnchor6 constraintEqualToAnchor:bottomAnchor12 constant:-v116];
    v164 = v113;
    bottomAnchor7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
    [v163 addObjectsFromArray:bottomAnchor7];
    v112 = v163;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v112];
  v125 = [MEMORY[0x277CBEA60] arrayWithArray:v112];
  constraints = self->_constraints;
  self->_constraints = v125;
}

- (void)setShouldHideCompactBackgroundCardView:(BOOL)view
{
  viewCopy = view;
  containerView = self->_containerView;
  if (view)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    v7 = 1;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] whiteColor];
    v7 = 0;
  }

  [(VTUIProximityContainerView *)containerView setBackgroundColor:clearColor];

  [(UIButton *)self->_dismissButton setHidden:viewCopy];
  self->_isHidingCompactBackgroundCardView = v7;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_contentView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v4 = v3;
  v6 = v5;
  [(VTUIStyle *)self->_vtStyle proxTopPaddingVoiceSelectionOptions];
  v8 = v6 + v7;
  [(VTUIStyle *)self->_vtStyle proxBottomPaddingVoiceSelectionOptions];
  v10 = v8 + v9;
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v12 = v10 + v11;
  [(VTUIStyle *)self->_vtStyle orbImageOffsetFromTopEnrollment];
  v14 = v12 + v13;
  [(VTUIStyle *)self->_vtStyle titleOffsetFromOrb];
  v16 = v14 + v15;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v18 = v16 + v17;
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v20 = v18 + v19;
  vtStyle = self->_vtStyle;
  if (self->_allowsRandomVoiceSelection)
  {
    [(VTUIStyle *)vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v23 = v20 + v22;
    [(VTUIStyle *)self->_vtStyle proxChooseForMeTopPaddingFromContinueButton];
    v25 = v23 + v24;
    [(UIButton *)self->_chooseRandomVoiceButton intrinsicContentSize];
    v27 = v25 + v26;
  }

  else
  {
    [(VTUIStyle *)vtStyle proxPaddingFromBottom];
    v27 = v20 + v28;
  }

  v29 = v4;
  result.height = v27;
  result.width = v29;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if (!self->_isHidingCompactBackgroundCardView)
  {
    v13.receiver = self;
    v13.super_class = VTUIVoiceSelectionProximityView;
    v10 = [(VTUIVoiceSelectionProximityView *)&v13 pointInside:eventCopy withEvent:x, y];
LABEL_6:
    v9 = v10;
    goto LABEL_7;
  }

  footerView = self->_footerView;
  [(VTUIVoiceSelectionProximityView *)self convertPoint:footerView toView:x, y];
  if (![(UIView *)footerView pointInside:eventCopy withEvent:?])
  {
    contentView = self->_contentView;
    [(VTUIVoiceSelectionProximityView *)self convertPoint:contentView toView:x, y];
    v10 = [(UIView *)contentView pointInside:eventCopy withEvent:?];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

@end