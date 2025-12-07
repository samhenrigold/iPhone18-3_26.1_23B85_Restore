@interface APBaseShieldView
- (APBaseShieldView)initWithApplication:(id)application;
- (APBaseShieldView)initWithConfig:(id)config;
- (APBaseShieldView)initWithLocalizedApplicationName:(id)name useHiddenStyle:(BOOL)style needEmergencyCallButton:(BOOL)button;
- (APBaseShieldViewDelegate)delegate;
- (id)accessibilityElements;
- (void)dealloc;
- (void)emergencyCallHostViewControllerDidDismiss:(id)dismiss;
- (void)emergencyTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setShieldStyle:(unint64_t)style;
- (void)unlockTapped:(id)tapped;
@end

@implementation APBaseShieldView

- (APBaseShieldView)initWithApplication:(id)application
{
  applicationCopy = application;
  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v17 = 0;
  v7 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v17];
  v8 = v17;

  if (v7)
  {
    localizedName = [v7 localizedName];
  }

  else
  {
    v11 = APUIDefaultFrameworkLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [APBaseShieldView initWithApplication:applicationCopy];
    }

    localizedName = [applicationCopy bundleIdentifier];
  }

  v12 = localizedName;
  shieldedApplication = self->_shieldedApplication;
  self->_shieldedApplication = applicationCopy;
  v14 = applicationCopy;

  v15 = -[APBaseShieldView initWithLocalizedApplicationName:useHiddenStyle:needEmergencyCallButton:](self, "initWithLocalizedApplicationName:useHiddenStyle:needEmergencyCallButton:", v12, [v14 isHidden], applicationRequiresEmergencyCallButton(v14));
  return v15;
}

- (APBaseShieldView)initWithConfig:(id)config
{
  configCopy = config;
  localizedName = [configCopy localizedName];
  if (localizedName)
  {
    localizedName2 = localizedName;
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69635F8]);
    application = [configCopy application];
    bundleIdentifier = [application bundleIdentifier];
    v26 = 0;
    v11 = [v8 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v26];
    v7 = v26;

    if (v11)
    {
      localizedName2 = [v11 localizedName];
    }

    else
    {
      v13 = APUIDefaultFrameworkLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [APBaseShieldView initWithConfig:configCopy];
      }

      application2 = [configCopy application];
      localizedName2 = [application2 bundleIdentifier];
    }
  }

  application3 = [configCopy application];
  isHidden = [application3 isHidden];

  application4 = [configCopy application];
  v18 = applicationRequiresEmergencyCallButton(application4);

  application5 = [configCopy application];
  shieldedApplication = self->_shieldedApplication;
  self->_shieldedApplication = application5;

  v21 = [(APBaseShieldView *)self initWithLocalizedApplicationName:localizedName2 useHiddenStyle:isHidden needEmergencyCallButton:v18];
  if (v21)
  {
    outlet = [configCopy outlet];
    outlet = v21->_outlet;
    v21->_outlet = outlet;

    [(APSystemAppOutlet *)v21->_outlet addShield:v21];
    delegate = [configCopy delegate];
    objc_storeWeak(&v21->_delegate, delegate);
  }

  return v21;
}

- (APBaseShieldView)initWithLocalizedApplicationName:(id)name useHiddenStyle:(BOOL)style needEmergencyCallButton:(BOOL)button
{
  buttonCopy = button;
  styleCopy = style;
  v156[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = [(APBaseShieldView *)self init];
  v10 = v9;
  if (v9)
  {
    v144 = buttonCopy;
    v151 = nameCopy;
    v9->_shieldStyle = 0;
    v11 = objc_alloc(MEMORY[0x1E69DD298]);
    v12 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v13 = [v11 initWithEffect:v12];
    visualEffectView = v10->_visualEffectView;
    v10->_visualEffectView = v13;

    [(UIVisualEffectView *)v10->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(APBaseShieldView *)v10 addSubview:v10->_visualEffectView];
    v152 = styleCopy;
    [(UIVisualEffectView *)v10->_visualEffectView setHidden:styleCopy];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v10->_label;
    v10->_label = v15;

    v17 = v10->_label;
    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB978]];
    v20 = [defaultMetrics scaledFontForFont:v19];
    [(UILabel *)v17 setFont:v20];

    v21 = APGetPreferredAuthenticationMechanism();
    if ((v21 - 1) >= 3)
    {
      v23 = APUIDefaultFrameworkLog(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [APBaseShieldView initWithLocalizedApplicationName:useHiddenStyle:needEmergencyCallButton:];
      }

      v22 = 0;
    }

    else
    {
      v22 = off_1E7A420B8[v21 - 1];
    }

    if (v152)
    {
      v24 = [(__CFString *)v22 stringByAppendingString:@"APP"];
      v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v151 = [v25 localizedStringForKey:v24 value:&stru_1F2485CF8 table:@"Localizable"];
    }

    else
    {
      v27 = [(__CFString *)v22 stringByAppendingString:@"X"];
      v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v25 = [v28 localizedStringForKey:v27 value:&stru_1F2485CF8 table:@"Localizable"];

      v151 = [MEMORY[0x1E696AEC0] stringWithFormat:v25, v151];
    }

    v29 = [v151 rangeOfString:@"\n"];
    v30 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_2];
    v31 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_41];
    v32 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v151];
    v153 = v32;
    v149 = v30;
    v150 = v151;
    v148 = v31;
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v32;
      v34 = APUIDefaultFrameworkLog(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [APBaseShieldView initWithLocalizedApplicationName:useHiddenStyle:needEmergencyCallButton:];
      }

      v35 = *MEMORY[0x1E69DB650];
      v36 = [v151 length];
      v37 = v33;
      v38 = v35;
      v39 = v30;
      v40 = 0;
    }

    else
    {
      v41 = v31;
      v42 = *MEMORY[0x1E69DB650];
      [v32 addAttribute:*MEMORY[0x1E69DB650] value:v30 range:{0, v29}];
      v36 = [v151 length] - v29;
      v37 = v153;
      v38 = v42;
      v39 = v41;
      v33 = v153;
      v40 = v29;
    }

    [v37 addAttribute:v38 value:v39 range:{v40, v36}];
    [(UILabel *)v10->_label setAttributedText:v33];
    [(UILabel *)v10->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_label setNumberOfLines:0];
    [(UILabel *)v10->_label setAccessibilityIdentifier:@"appProtectionShieldLabelIdentifier"];
    [(UILabel *)v10->_label setTextAlignment:1];
    v43 = v10->_label;
    v44 = *MEMORY[0x1E69DDDC0];
    v45 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
    [(UILabel *)v43 setFont:v45];

    [(APBaseShieldView *)v10 addSubview:v10->_label];
    [(APBaseShieldView *)v10 setAccessibilityIdentifier:@"appProtectionShieldIdentifier"];
    v46 = [objc_alloc(MEMORY[0x1E69DC608]) initWithAccessibilityContainer:v10];
    labelsElement = v10->_labelsElement;
    v10->_labelsElement = v46;

    v48 = v10->_labelsElement;
    v49 = MEMORY[0x1E696AEC0];
    accessibilityLabel = [(UILabel *)v10->_label accessibilityLabel];
    v51 = [v49 stringWithFormat:@"%@", accessibilityLabel];
    [(UIAccessibilityElement *)v48 setAccessibilityLabel:v51];

    v155 = *MEMORY[0x1E69DB648];
    defaultMetrics2 = [MEMORY[0x1E69DCA40] defaultMetrics];
    v53 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v44];
    v54 = [defaultMetrics2 scaledFontForFont:v53];
    v156[0] = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:&v155 count:1];

    v56 = MEMORY[0x1E696AEC0];
    v57 = APGetPreferredAuthenticationMechanismLocKey();
    v58 = [v56 stringWithFormat:@"TRY_%@_AGAIN", v57];
    v59 = APUILocStr(v58);

    v60 = objc_alloc(MEMORY[0x1E696AAB0]);
    v61 = MEMORY[0x1E696AEC0];
    v62 = APGetPreferredAuthenticationMechanismLocalizedDescription();
    v146 = v59;
    v63 = [v61 stringWithFormat:v59, v62];
    v147 = v55;
    v64 = [v60 initWithString:v63 attributes:v55];

    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    if (_os_feature_enabled_impl())
    {
      glassButtonConfiguration = [MEMORY[0x1E69DC740] glassButtonConfiguration];

      filledButtonConfiguration = glassButtonConfiguration;
    }

    [filledButtonConfiguration setButtonSize:3];
    v67 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_63];
    [filledButtonConfiguration setBaseForegroundColor:v67];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [filledButtonConfiguration setBaseBackgroundColor:clearColor];

    [filledButtonConfiguration setAttributedTitle:v64];
    v69 = objc_alloc(MEMORY[0x1E69DD298]);
    v70 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v71 = [v69 initWithEffect:v70];

    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v142 = v71;
    [clearConfiguration setCustomView:v71];
    v141 = clearConfiguration;
    [filledButtonConfiguration setBackground:clearConfiguration];
    background = [filledButtonConfiguration background];
    [background setCornerRadius:28.0];

    v74 = [MEMORY[0x1E69DC738] buttonWithType:0];
    unlockButton = v10->_unlockButton;
    v10->_unlockButton = v74;

    v143 = filledButtonConfiguration;
    [(UIButton *)v10->_unlockButton setConfiguration:filledButtonConfiguration];
    [(UIButton *)v10->_unlockButton addTarget:v10 action:sel_unlockTapped_ forControlEvents:0x2000];
    [(UIButton *)v10->_unlockButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v10->_unlockButton setHidden:1];
    [(UIButton *)v10->_unlockButton setAccessibilityIdentifier:@"appProtectionShieldUnlockButton"];
    [(APBaseShieldView *)v10 addSubview:v10->_unlockButton];
    if (v10->_shieldStyle == 1)
    {
      [(UILabel *)v10->_label setHidden:1];
      [(UIButton *)v10->_unlockButton setHidden:0];
    }

    v76 = [MEMORY[0x1E69DC738] buttonWithType:1];
    emergencyCallButton = v10->_emergencyCallButton;
    v10->_emergencyCallButton = v76;

    [(UIButton *)v10->_emergencyCallButton addTarget:v10 action:sel_emergencyTapped_ forControlEvents:0x2000];
    v78 = v10->_emergencyCallButton;
    v79 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v80 = [v79 localizedStringForKey:@"EMERGENCY_CALL" value:&stru_1F2485CF8 table:@"Localizable"];
    [(UIButton *)v78 setTitle:v80 forState:0];

    v81 = v10->_emergencyCallButton;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIButton *)v81 setTitleColor:labelColor forState:0];

    [(UIButton *)v10->_emergencyCallButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v10->_emergencyCallButton setHidden:!v144];
    [(APBaseShieldView *)v10 addSubview:v10->_emergencyCallButton];
    v83 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(APBaseShieldView *)v10 addLayoutGuide:v83];
    topAnchor = [v83 topAnchor];
    topAnchor2 = [(APBaseShieldView *)v10 topAnchor];
    v137 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v154[0] = v137;
    heightAnchor = [v83 heightAnchor];
    heightAnchor2 = [(APBaseShieldView *)v10 heightAnchor];
    v134 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.45];
    v154[1] = v134;
    topAnchor3 = [(UILabel *)v10->_label topAnchor];
    v140 = v83;
    bottomAnchor = [v83 bottomAnchor];
    v131 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v154[2] = v131;
    centerXAnchor = [(UILabel *)v10->_label centerXAnchor];
    centerXAnchor2 = [(APBaseShieldView *)v10 centerXAnchor];
    v128 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v154[3] = v128;
    widthAnchor = [(UILabel *)v10->_label widthAnchor];
    widthAnchor2 = [(APBaseShieldView *)v10 widthAnchor];
    v125 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v154[4] = v125;
    topAnchor4 = [(UIVisualEffectView *)v10->_visualEffectView topAnchor];
    topAnchor5 = [(APBaseShieldView *)v10 topAnchor];
    v122 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v154[5] = v122;
    bottomAnchor2 = [(UIVisualEffectView *)v10->_visualEffectView bottomAnchor];
    bottomAnchor3 = [(APBaseShieldView *)v10 bottomAnchor];
    v119 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v154[6] = v119;
    leadingAnchor = [(UIVisualEffectView *)v10->_visualEffectView leadingAnchor];
    leadingAnchor2 = [(APBaseShieldView *)v10 leadingAnchor];
    v116 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v154[7] = v116;
    trailingAnchor = [(UIVisualEffectView *)v10->_visualEffectView trailingAnchor];
    trailingAnchor2 = [(APBaseShieldView *)v10 trailingAnchor];
    v113 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v154[8] = v113;
    centerXAnchor3 = [(UIButton *)v10->_unlockButton centerXAnchor];
    centerXAnchor4 = [(APBaseShieldView *)v10 centerXAnchor];
    v110 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v154[9] = v110;
    centerYAnchor = [(UIButton *)v10->_unlockButton centerYAnchor];
    centerYAnchor2 = [(APBaseShieldView *)v10 centerYAnchor];
    v107 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v154[10] = v107;
    widthAnchor3 = [(UIButton *)v10->_unlockButton widthAnchor];
    widthAnchor4 = [(APBaseShieldView *)v10 widthAnchor];
    v145 = v64;
    [v64 size];
    v104 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.0 constant:v84 + 70.0];
    LODWORD(v85) = 1144750080;
    [v104 setPriority:v85];
    v154[11] = v104;
    widthAnchor5 = [(UIButton *)v10->_unlockButton widthAnchor];
    safeAreaLayoutGuide = [(APBaseShieldView *)v10 safeAreaLayoutGuide];
    widthAnchor6 = [safeAreaLayoutGuide widthAnchor];
    v100 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6];
    v154[12] = v100;
    heightAnchor3 = [(UIButton *)v10->_unlockButton heightAnchor];
    safeAreaLayoutGuide2 = [(APBaseShieldView *)v10 safeAreaLayoutGuide];
    heightAnchor4 = [safeAreaLayoutGuide2 heightAnchor];
    v86 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4];
    v154[13] = v86;
    bottomAnchor4 = [(UIButton *)v10->_emergencyCallButton bottomAnchor];
    safeAreaLayoutGuide3 = [(APBaseShieldView *)v10 safeAreaLayoutGuide];
    bottomAnchor5 = [safeAreaLayoutGuide3 bottomAnchor];
    v90 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-30.0];
    v154[14] = v90;
    centerXAnchor5 = [(UIButton *)v10->_emergencyCallButton centerXAnchor];
    centerXAnchor6 = [(APBaseShieldView *)v10 centerXAnchor];
    v93 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v154[15] = v93;
    v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:16];

    [MEMORY[0x1E696ACD8] activateConstraints:v94];
    if (v152)
    {
      v95 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_80];
      [(APBaseShieldView *)v10 setBackgroundColor:v95];
    }

    nameCopy = v151;
  }

  return v10;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] darkGrayColor];
  }
  v2 = ;

  return v2;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] grayColor];
  }
  v2 = ;

  return v2;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke_61(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] darkGrayColor];
  }
  v2 = ;

  return v2;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke_2_78(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

- (id)accessibilityElements
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_shieldStyle)
  {
    unlockButton = self->_unlockButton;
    p_unlockButton = &unlockButton;
  }

  else
  {
    v8[0] = self->_labelsElement;
    p_unlockButton = v8;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_unlockButton count:1];
  if (([(UIButton *)self->_emergencyCallButton isHidden]& 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:self->_emergencyCallButton];

    v4 = v5;
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = APBaseShieldView;
  [(APBaseShieldView *)&v4 layoutSubviews];
  label = self->_label;
  [(UILabel *)label bounds];
  [(UILabel *)label convertRect:self toView:?];
  [(UIAccessibilityElement *)self->_labelsElement setAccessibilityFrameInContainerSpace:?];
}

- (void)unlockTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shieldViewUnlockButtonPressed:self];
}

- (void)emergencyCallHostViewControllerDidDismiss:(id)dismiss
{
  if (self->_emergencyVC == dismiss)
  {
    self->_emergencyVC = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)emergencyTapped:(id)tapped
{
  mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
  [mEMORY[0x1E698B0D8] abortOngoingAuthWithCompletion:&__block_literal_global_86];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__APBaseShieldView_emergencyTapped___block_invoke_88;
  v5[3] = &unk_1E7A42048;
  v5[4] = self;
  [(SBUIEmergencyCallHostViewController *)APEmergencyCallHostViewController requestEmergencyCallControllerWithCompletion:v5];
}

void __36__APBaseShieldView_emergencyTapped___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 || (a2 & 1) == 0)
  {
    v6 = APUIDefaultFrameworkLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __36__APBaseShieldView_emergencyTapped___block_invoke_cold_1();
    }
  }
}

void __36__APBaseShieldView_emergencyTapped___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  if (*(v6 + 456))
  {
    v7 = APUIDefaultFrameworkLog(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __36__APBaseShieldView_emergencyTapped___block_invoke_88_cold_1();
    }
  }

  v8 = v4;
  [v8 setDelegate:*v5];
  v9 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:*v5];
  v10 = v9;
  if (v9)
  {
    [v9 presentViewController:v8 animated:1 completion:0];
    v11 = *v5;
    v12 = v8;
    v13 = *(v11 + 456);
    *(v11 + 456) = v12;
  }

  else
  {
    v13 = APUIDefaultFrameworkLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __36__APBaseShieldView_emergencyTapped___block_invoke_88_cold_2();
    }
  }
}

- (void)setShieldStyle:(unint64_t)style
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = APUIDefaultFrameworkLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(APApplication *)self->_shieldedApplication bundleIdentifier];
    *buf = 134218242;
    *&buf[4] = style;
    *&buf[12] = 2112;
    *&buf[14] = bundleIdentifier;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "APBaseShieldView setShieldStyle:%lu for %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    selfCopy = self;
    v8 = MEMORY[0x1E69DD250];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __performTransition_block_invoke;
    v14 = &unk_1E7A42098;
    v15 = selfCopy;
    styleCopy = style;
    v9 = selfCopy;
    [v8 transitionWithView:v9 duration:5242880 options:buf animations:0 completion:0.2];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__APBaseShieldView_setShieldStyle___block_invoke;
    block[3] = &unk_1E7A42070;
    objc_copyWeak(v11, &location);
    v11[1] = style;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v11);
  }

  self->_shieldStyle = style;
  objc_destroyWeak(&location);
}

void __35__APBaseShieldView_setShieldStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __performTransition_block_invoke;
  v6[3] = &unk_1E7A42098;
  v7 = WeakRetained;
  v8 = v3;
  v5 = WeakRetained;
  [v4 transitionWithView:v5 duration:5242880 options:v6 animations:0 completion:0.2];
}

- (void)dealloc
{
  [(APSystemAppOutlet *)self->_outlet removeShield:self];
  v3.receiver = self;
  v3.super_class = APBaseShieldView;
  [(APBaseShieldView *)&v3 dealloc];
}

- (APBaseShieldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithApplication:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1AEA18000, v2, v3, "making shield view, could not find record for %@: %@", v4, v5, v6, v7);
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 application];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1AEA18000, v3, v4, "making shield view without localized name, could not find record for %@: %@", v5, v6, v7, v8);
}

@end