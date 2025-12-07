@interface VTUIProximityEnrollmentSuccessView
- (VTUIProximityEnrollmentSuccessView)initWithFrame:(CGRect)frame;
- (void)_setupConstraintsToSize:(CGSize)size;
- (void)_setupContent;
- (void)_setupPhoneLandscapeConstraints;
- (void)_setupPortraitConstraints;
@end

@implementation VTUIProximityEnrollmentSuccessView

- (VTUIProximityEnrollmentSuccessView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v9.receiver = self;
  v9.super_class = VTUIProximityEnrollmentSuccessView;
  v5 = [(VTUIProximityEnrollmentSuccessView *)&v9 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    [(VTUIProximityEnrollmentSuccessView *)v5 _setupContent];
    [(VTUIProximityEnrollmentSuccessView *)v5 _setupConstraintsToSize:width, height];
  }

  return v5;
}

- (void)_setupContent
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[VTUIProximityEnrollmentSuccessView _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", buf, 0xCu);
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = languageCode;

  v7 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v7;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollmentSuccessView *)self addSubview:self->_containerView];
  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_titleLabel;
  proxHeaderFont = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v11 setFont:proxHeaderFont];

  v13 = self->_titleLabel;
  proxHeaderColor = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v13 setTextColor:proxHeaderColor];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v15 = self->_titleLabel;
  v16 = +[VTUIStringsHelper sharedStringsHelper];
  v17 = [v16 uiLocalizedStringForKey:@"TEXT_TITLE_READY"];
  [(UILabel *)v15 setText:v17];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_titleLabel];
  v18 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v18;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_dismissButton];
  v20 = objc_alloc(MEMORY[0x277D755E8]);
  siriIconImage = [(VTUIStyle *)self->_vtStyle siriIconImage];
  v22 = [v20 initWithImage:siriIconImage];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_orbImage, v22);
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_orbImage];
  if (![(VTUIStyle *)self->_vtStyle currentLocaleSupportsCompactVoiceTrigger])
  {
    v23 = MEMORY[0x277CCAB68];
    vtStyle = self->_vtStyle;
    v25 = @"PROX_TEXT_MAIN_READY";
    goto LABEL_7;
  }

  if ([(VTUIStyle *)self->_vtStyle proxAccessorySupportsCompactTrigger])
  {
    v23 = MEMORY[0x277CCAB68];
    vtStyle = self->_vtStyle;
    v25 = @"PROX_TEXT_MAIN_READY_MIXED";
LABEL_7:
    v26 = [(VTUIStyle *)vtStyle VTUIDeviceSpecificString:v25];
LABEL_8:
    v27 = v26;
    v28 = [v23 stringWithString:v26];
    goto LABEL_9;
  }

  audioAccessoryName = [(VTUIStyle *)self->_vtStyle audioAccessoryName];

  v23 = MEMORY[0x277CCAB68];
  v41 = self->_vtStyle;
  if (!audioAccessoryName)
  {
    v26 = [(VTUIStyle *)v41 proxHSDescription:@"PROX_TEXT_MAIN_READY_MIXED_UNSUPPORTED_ACCESSORY"];
    goto LABEL_8;
  }

  v27 = [(VTUIStyle *)v41 VTUIDeviceSpecificString:@"PROX_TEXT_MAIN_READY_MIXED_UNSUPPORTED_ACCESSORY"];
  audioAccessoryName2 = [(VTUIStyle *)self->_vtStyle audioAccessoryName];
  v28 = [v23 stringWithFormat:v27, audioAccessoryName2];

LABEL_9:
  if ([(VTUIStyle *)self->_vtStyle supportsSiriConversationsAndBargeIn])
  {
    v29 = +[VTUIStringsHelper sharedStringsHelper];
    v30 = [v29 uiLocalizedStringForKey:@"PROX_READY_SPEAK_FREELY_SUFFIX"];
    [v28 appendString:v30];
  }

  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v31;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = self->_subtitleLabel;
  proxSubtitleFont = [(VTUIStyle *)self->_vtStyle proxSubtitleFont];
  [(UILabel *)v33 setFont:proxSubtitleFont];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setText:v28];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_subtitleLabel];
  v35 = +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  continueButton = self->_continueButton;
  self->_continueButton = v35;

  [(VTUIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = self->_continueButton;
  v38 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
  [(VTUIButton *)v37 setTitle:v38 forState:0];

  titleLabel = [(VTUIButton *)self->_continueButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_continueButton];
}

- (void)_setupConstraintsToSize:(CGSize)size
{
  v4 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:size.width, size.height];
  [(UILabel *)self->_subtitleLabel setHidden:v4];
  if (v4)
  {

    [(VTUIProximityEnrollmentSuccessView *)self _setupPhoneLandscapeConstraints];
  }

  else
  {

    [(VTUIProximityEnrollmentSuccessView *)self _setupPortraitConstraints];
  }
}

- (void)_setupPortraitConstraints
{
  v92[3] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityEnrollmentSuccessView *)self safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v4 isDeviceIPad];

  containerView = self->_containerView;
  v82 = safeAreaLayoutGuide;
  if (isDeviceIPad)
  {
    centerYAnchor = [(VTUIProximityContainerView *)containerView centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v92[0] = v9;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v92[1] = v12;
    widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v14 = [widthAnchor constraintEqualToConstant:?];
    v92[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
    [array addObjectsFromArray:v15];
  }

  else
  {
    bottomAnchor = [(VTUIProximityContainerView *)containerView bottomAnchor];
    bottomAnchor2 = [(VTUIProximityEnrollmentSuccessView *)self bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v18];
    v91 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
    [array addObjectsFromArray:v20];

    centerYAnchor = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:?];
    v90[0] = v9;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-v21];
    v90[1] = v12;
    widthAnchor = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    [array addObjectsFromArray:widthAnchor];
  }

  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
  v81 = [heightAnchor constraintEqualToConstant:?];

  [array addObject:v81];
  widthAnchor2 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v69 = [widthAnchor2 constraintEqualToConstant:?];
  v89[0] = v69;
  heightAnchor2 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v23 = [heightAnchor2 constraintEqualToConstant:?];
  v89[1] = v23;
  centerXAnchor3 = [(UIImageView *)self->_orbImage centerXAnchor];
  centerXAnchor4 = [safeAreaLayoutGuide2 centerXAnchor];
  v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v89[2] = v26;
  topAnchor = [(UIImageView *)self->_orbImage topAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v89[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
  [array addObjectsFromArray:v30];

  centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor3 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v67 = [centerYAnchor3 constraintEqualToAnchor:topAnchor3 constant:?];
  v88[0] = v67;
  centerXAnchor5 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v33 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor constant:?];
  v88[1] = v33;
  widthAnchor3 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v35 = [widthAnchor3 constraintEqualToConstant:?];
  v88[2] = v35;
  heightAnchor3 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v37 = [heightAnchor3 constraintEqualToConstant:?];
  v88[3] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
  [array addObjectsFromArray:v38];

  topAnchor4 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor3 = [(UIImageView *)self->_orbImage bottomAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v71 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:?];
  v87[0] = v71;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v87[1] = v41;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v45 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v44];
  v87[2] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];
  [array addObjectsFromArray:v46];

  topAnchor5 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor4 = [(UILabel *)self->_titleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessSubtitle];
  v47 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4 constant:?];
  v86[0] = v47;
  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v86[1] = v50;
  trailingAnchor4 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor5 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v54 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v53];
  v86[2] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
  [array addObjectsFromArray:v55];

  leadingAnchor5 = [(VTUIButton *)self->_continueButton leadingAnchor];
  leadingAnchor6 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v72 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  v85[0] = v72;
  trailingAnchor6 = [(VTUIButton *)self->_continueButton trailingAnchor];
  trailingAnchor7 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v58 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v57];
  v85[1] = v58;
  bottomAnchor5 = [(VTUIButton *)self->_continueButton bottomAnchor];
  bottomAnchor6 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessFromBottom];
  v62 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v61];
  v85[2] = v62;
  heightAnchor4 = [(VTUIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v64 = [heightAnchor4 constraintEqualToConstant:?];
  v85[3] = v64;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:4];
  [array addObjectsFromArray:v65];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(VTUIProximityEnrollmentSuccessView *)self setViewConstraints:array];
}

- (void)_setupPhoneLandscapeConstraints
{
  v69[4] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityEnrollmentSuccessView *)self safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  array = [MEMORY[0x277CBEB18] array];
  centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v69[0] = v48;
  widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
  v3 = [widthAnchor constraintEqualToConstant:?];
  v69[1] = v3;
  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
  v5 = [heightAnchor constraintEqualToConstant:?];
  v69[2] = v5;
  bottomAnchor = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  bottomAnchor2 = [(VTUIProximityEnrollmentSuccessView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v8];
  v69[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
  [array addObjectsFromArray:v10];

  widthAnchor2 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v53 = [widthAnchor2 constraintEqualToConstant:?];
  v68[0] = v53;
  heightAnchor2 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v11 = [heightAnchor2 constraintEqualToConstant:?];
  v68[1] = v11;
  centerXAnchor3 = [(UIImageView *)self->_orbImage centerXAnchor];
  centerXAnchor4 = [safeAreaLayoutGuide2 centerXAnchor];
  v14 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v68[2] = v14;
  topAnchor = [(UIImageView *)self->_orbImage topAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v68[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
  [array addObjectsFromArray:v18];

  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessTitleLandscape];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  v67[0] = v19;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v67[1] = v22;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v25];
  v67[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
  [array addObjectsFromArray:v27];

  centerYAnchor = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor5 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v50 = [centerYAnchor constraintEqualToAnchor:topAnchor5 constant:?];
  v66[0] = v50;
  centerXAnchor5 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v30 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:?];
  v66[1] = v30;
  widthAnchor3 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v32 = [widthAnchor3 constraintEqualToConstant:?];
  v66[2] = v32;
  heightAnchor3 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v34 = [heightAnchor3 constraintEqualToConstant:?];
  v66[3] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
  [array addObjectsFromArray:v35];

  leadingAnchor3 = [(VTUIButton *)self->_continueButton leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v65[0] = v51;
  trailingAnchor4 = [(VTUIButton *)self->_continueButton trailingAnchor];
  trailingAnchor5 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v39 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v38];
  v65[1] = v39;
  bottomAnchor3 = [(VTUIButton *)self->_continueButton bottomAnchor];
  bottomAnchor4 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessFromBottomLandscape];
  v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v42];
  v65[2] = v43;
  heightAnchor4 = [(VTUIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v45 = [heightAnchor4 constraintEqualToConstant:?];
  v65[3] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
  [array addObjectsFromArray:v46];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

@end