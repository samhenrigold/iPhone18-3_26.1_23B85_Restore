@interface VTUIVoiceSelectionView
- (VTUIVoiceSelectionView)initWithAllowsRandomVoiceSelection:(BOOL)selection showContinueButton:(BOOL)button;
- (id)footerView;
- (void)_setupButtons;
- (void)tintColorDidChange;
@end

@implementation VTUIVoiceSelectionView

- (VTUIVoiceSelectionView)initWithAllowsRandomVoiceSelection:(BOOL)selection showContinueButton:(BOOL)button
{
  v11.receiver = self;
  v11.super_class = VTUIVoiceSelectionView;
  v6 = [(VTUIVoiceSelectionView *)&v11 init];
  if (v6)
  {
    v7 = +[VTUIStyle sharedStyle];
    [v7 setIsFloatingWithReducedWidth:1];

    v6->_allowsRandomSelection = selection;
    v6->_shouldShowContinueButton = button;
    [(VTUIVoiceSelectionView *)v6 _setupButtons];
    [(VTUIEnrollmentBaseView *)v6 setShowsVerticalScrollIndicator:0];
    if (!v6->_shouldShowContinueButton && !v6->_allowsRandomSelection)
    {
      backdropView = [(VTUIEnrollmentBaseView *)v6 backdropView];
      [backdropView setHidden:1];

      footerView = [(VTUIVoiceSelectionView *)v6 footerView];
      [footerView setUserInteractionEnabled:0];
    }
  }

  return v6;
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = VTUIVoiceSelectionView;
  [(VTUIVoiceSelectionView *)&v8 tintColorDidChange];
  continueButton = self->_continueButton;
  tintColor = [(VTUIVoiceSelectionView *)self tintColor];
  v5 = [VTUIButton vtuiBackgroundButtonImageWithColor:tintColor];
  [(UIButton *)continueButton setBackgroundImage:v5 forState:0];

  chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
  tintColor2 = [(VTUIVoiceSelectionView *)self tintColor];
  [(UIButton *)chooseRandomVoiceButton setTitleColor:tintColor2 forState:0];
}

- (id)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_footerView;
    self->_footerView = v4;

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)_setupButtons
{
  v92[4] = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  footerView = [(VTUIVoiceSelectionView *)self footerView];
  [footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v85 = footerView;
  v86 = v3;
  if (self->_shouldShowContinueButton)
  {
    v5 = +[VTUIButton _vtuiButtonWithPrimaryStyleForNormalAndDisabledState];
    continueButton = self->_continueButton;
    self->_continueButton = v5;

    v7 = self->_continueButton;
    v8 = [v3 VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
    [(UIButton *)v7 setTitle:v8 forState:0];

    if (+[VTUIFeatureFlags isNaturalUIEnabled])
    {
      v9 = self->_continueButton;
      [v3 primaryButtonHeight];
      [(UIButton *)v9 _setCornerRadius:v10 * 0.5];
      _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
      [(UIButton *)self->_continueButton setConfiguration:_tintedGlassButtonConfiguration];
    }

    [footerView addSubview:self->_continueButton];
    [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    if (+[VTUIFeatureFlags isNaturalUIEnabled](VTUIFeatureFlags, "isNaturalUIEnabled") && (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isIpad], v12, (v13 & 1) == 0))
    {
      v76 = MEMORY[0x277CCAAD0];
      topAnchor = [(UIButton *)self->_continueButton topAnchor];
      topAnchor2 = [footerView topAnchor];
      [v3 continueButtonOffset];
      v80 = topAnchor2;
      v82 = topAnchor;
      v78 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      v92[0] = v78;
      leadingAnchor = [(UIButton *)self->_continueButton leadingAnchor];
      leadingAnchor2 = [(VTUIVoiceSelectionView *)self leadingAnchor];
      v77 = leadingAnchor;
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:38.0];
      v19 = v28 = v3;
      v92[1] = v19;
      trailingAnchor = [(UIButton *)self->_continueButton trailingAnchor];
      trailingAnchor2 = [(VTUIVoiceSelectionView *)self trailingAnchor];
      heightAnchor2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-38.0];
      v92[2] = heightAnchor2;
      heightAnchor = [(UIButton *)self->_continueButton heightAnchor];
      [v28 primaryButtonHeight];
      v24 = [heightAnchor constraintEqualToConstant:?];
      v92[3] = v24;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
      [v76 activateConstraints:v29];
    }

    else
    {
      topAnchor3 = [(UIButton *)self->_continueButton topAnchor];
      topAnchor4 = [footerView topAnchor];
      [v3 continueButtonOffset];
      v80 = topAnchor4;
      v82 = topAnchor3;
      v78 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
      v91[0] = v78;
      centerXAnchor = [(UIButton *)self->_continueButton centerXAnchor];
      leadingAnchor2 = [footerView centerXAnchor];
      v77 = centerXAnchor;
      [centerXAnchor constraintEqualToAnchor:leadingAnchor2];
      v19 = v18 = v3;
      v91[1] = v19;
      trailingAnchor = [(UIButton *)self->_continueButton widthAnchor];
      [v18 footerButtonMaximumWidth];
      trailingAnchor2 = [trailingAnchor constraintEqualToConstant:?];
      v91[2] = trailingAnchor2;
      heightAnchor2 = [(UIButton *)self->_continueButton heightAnchor];
      [v18 primaryButtonHeight];
      heightAnchor = [heightAnchor2 constraintEqualToConstant:?];
      v91[3] = heightAnchor;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:4];
      [v75 activateConstraints:v24];
    }

    allowsRandomSelection = self->_allowsRandomSelection;
    v31 = MEMORY[0x277CCAAD0];
    bottomAnchor = [(UIButton *)self->_continueButton bottomAnchor];
    footerView = v85;
    bottomAnchor2 = [v85 bottomAnchor];
    v3 = v86;
    if (allowsRandomSelection)
    {
      [v86 continueButtonFromBottomTwoButtons];
      v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v34];
      v89 = v35;
      v36 = &v89;
    }

    else
    {
      [v86 continueButtonFromBottom];
      v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v37];
      v90 = v35;
      v36 = &v90;
    }

    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v31 activateConstraints:v38];
  }

  if (self->_allowsRandomSelection)
  {
    v39 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
    chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
    self->_chooseRandomVoiceButton = v39;

    [(UIButton *)self->_chooseRandomVoiceButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = self->_chooseRandomVoiceButton;
    v42 = [v3 VTUIDeviceSpecificString:@"BUTTON_CHOOSE_FOR_ME"];
    [(UIButton *)v41 setTitle:v42 forState:0];

    [footerView addSubview:self->_chooseRandomVoiceButton];
    topAnchor5 = [(UIButton *)self->_chooseRandomVoiceButton topAnchor];
    topAnchor6 = [footerView topAnchor];
    [v3 continueButtonOffset];
    v45 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:?];

    if (self->_shouldShowContinueButton)
    {
      leadingAnchor3 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      leadingAnchor4 = [(UIButton *)self->_continueButton leadingAnchor];
      v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

      v45 = v48;
    }

    v84 = v45;
    if (+[VTUIFeatureFlags isNaturalUIEnabled](VTUIFeatureFlags, "isNaturalUIEnabled") && (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 isIpad], v49, (v50 & 1) == 0))
    {
      v79 = MEMORY[0x277CCAAD0];
      v88[0] = v45;
      leadingAnchor5 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      leadingAnchor6 = [(VTUIVoiceSelectionView *)self leadingAnchor];
      v83 = leadingAnchor5;
      bottomAnchor5 = [leadingAnchor5 constraintEqualToAnchor:38.0 constant:?];
      v88[1] = bottomAnchor5;
      trailingAnchor3 = [(UIButton *)self->_chooseRandomVoiceButton trailingAnchor];
      [(VTUIVoiceSelectionView *)self trailingAnchor];
      v56 = v64 = v3;
      [trailingAnchor3 constraintEqualToAnchor:v56 constant:-38.0];
      v59 = v65 = footerView;
      v88[2] = v59;
      bottomAnchor3 = [(UIButton *)self->_chooseRandomVoiceButton bottomAnchor];
      bottomAnchor4 = [v65 bottomAnchor];
      [v64 footerSkipButtonBaselineFromBottom];
      v62 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v66];
      v88[3] = v62;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
      [v79 activateConstraints:v67];
    }

    else
    {
      v51 = MEMORY[0x277CCAAD0];
      v87[0] = v45;
      widthAnchor = [(UIButton *)self->_chooseRandomVoiceButton widthAnchor];
      [v3 footerButtonMaximumWidth];
      v83 = widthAnchor;
      leadingAnchor6 = [widthAnchor constraintEqualToConstant:?];
      v87[1] = leadingAnchor6;
      bottomAnchor5 = [(UIButton *)self->_chooseRandomVoiceButton bottomAnchor];
      trailingAnchor3 = [footerView bottomAnchor];
      [v3 footerSkipButtonBaselineFromBottom];
      v56 = [bottomAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:-v55];
      v87[2] = v56;
      centerXAnchor2 = [(UIButton *)self->_chooseRandomVoiceButton centerXAnchor];
      v58 = footerView;
      v59 = centerXAnchor2;
      bottomAnchor3 = [v58 centerXAnchor];
      bottomAnchor4 = [v59 constraintEqualToAnchor:bottomAnchor3];
      v87[3] = bottomAnchor4;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:4];
      [v51 activateConstraints:v62];
    }

    v3 = v86;
    if (+[VTUIFeatureFlags isNaturalUIEnabled])
    {
      v68 = self->_chooseRandomVoiceButton;
      systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
      [(UIButton *)v68 setBackgroundColor:systemGray6Color];

      v70 = self->_chooseRandomVoiceButton;
      [v86 primaryButtonHeight];
      [(UIButton *)v70 _setCornerRadius:v71 * 0.5];
      heightAnchor3 = [(UIButton *)self->_chooseRandomVoiceButton heightAnchor];
      [v86 primaryButtonHeight];
      v73 = [heightAnchor3 constraintEqualToConstant:?];
      [v73 setActive:1];

      _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
      [(UIButton *)self->_chooseRandomVoiceButton setConfiguration:_glassButtonConfiguration];
    }

    footerView = v85;
  }
}

@end