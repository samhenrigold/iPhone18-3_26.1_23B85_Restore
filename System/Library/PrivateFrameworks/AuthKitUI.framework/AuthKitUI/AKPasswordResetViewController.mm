@interface AKPasswordResetViewController
- (AKPasswordResetViewController)initWithImageProvider:(id)provider;
- (AKPasswordResetViewControllerDelegate)delegate;
- (UIButton)closeButton;
- (UIButton)helpSomeoneElseButton;
- (UIButton)resetMyPasswordButton;
- (UIImageView)keyIconImageView;
- (UIImageView)profilePictureImageView;
- (UILabel)screenSummaryLabel;
- (UILabel)screenTitleLabel;
- (UILabel)serviceNameLabel;
- (UIScrollView)contentScrollView;
- (UIStackView)contentView;
- (UIView)footerView;
- (UIView)titleView;
- (id)_helpSomeonElseButtonTitle;
- (id)_helpSomeoneElseButtonConfiguration;
- (id)_resetMyPasswordButtonConfiguration;
- (id)_resetMyPasswordButtonTitle;
- (void)_applyLocalization;
- (void)_applyStyle;
- (void)_loadProfilePicture;
- (void)_setupSubviews;
- (void)_startLoading;
- (void)didSelectClose:(id)close;
- (void)didSelectHelpSomeoneElse:(id)else;
- (void)didSelectResetMyPassword:(id)password;
- (void)stopLoading;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKPasswordResetViewController

- (AKPasswordResetViewController)initWithImageProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = selfCopy;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  selfCopy = 0;
  v7.receiver = v5;
  v7.super_class = AKPasswordResetViewController;
  selfCopy = [(AKPasswordResetViewController *)&v7 initWithNibName:@"AKPasswordResetViewController" bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](v6);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_imageProvider, location[0]);
  }

  v4 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKPasswordResetViewController;
  [(AKPasswordResetViewController *)&v2 viewDidLoad];
  [(AKPasswordResetViewController *)selfCopy _setupSubviews];
  [(AKPasswordResetViewController *)selfCopy _applyStyle];
  [(AKPasswordResetViewController *)selfCopy _applyLocalization];
  [(AKPasswordResetViewController *)selfCopy _loadProfilePicture];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = AKPasswordResetViewController;
  [(AKPasswordResetViewController *)&v13 viewDidLayoutSubviews];
  footerView = [(AKPasswordResetViewController *)selfCopy footerView];
  [(UIView *)footerView frame];
  UIEdgeInsetsMake();
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  MEMORY[0x277D82BD8](footerView);
  contentScrollView = [(AKPasswordResetViewController *)selfCopy contentScrollView];
  [(UIScrollView *)contentScrollView setContentInset:v9, v10, v11, v12];
  MEMORY[0x277D82BD8](contentScrollView);
  contentScrollView2 = [(AKPasswordResetViewController *)selfCopy contentScrollView];
  [(UIScrollView *)contentScrollView2 setScrollIndicatorInsets:v9, v10, v11, v12];
  MEMORY[0x277D82BD8](contentScrollView2);
}

- (void)_setupSubviews
{
  v19 = objc_alloc(MEMORY[0x277D751E0]);
  titleView = [(AKPasswordResetViewController *)self titleView];
  v21 = [v19 initWithCustomView:?];
  navigationItem = [(AKPasswordResetViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v21];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](v21);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isAuthKitSolariumFeatureEnabled)
  {
    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_didSelectClose_];
    navigationItem2 = [(AKPasswordResetViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v17];
    MEMORY[0x277D82BD8](navigationItem2);
    closeButton = [(AKPasswordResetViewController *)self closeButton];
    [(UIButton *)closeButton setHidden:1];
    v2 = MEMORY[0x277D82BD8](closeButton).n128_u64[0];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D751E0]);
    closeButton2 = [(AKPasswordResetViewController *)self closeButton];
    v14 = [v12 initWithCustomView:?];
    navigationItem3 = [(AKPasswordResetViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v14];
    MEMORY[0x277D82BD8](navigationItem3);
    MEMORY[0x277D82BD8](v14);
    v2 = MEMORY[0x277D82BD8](closeButton2).n128_u64[0];
  }

  profilePictureImageView = [(AKPasswordResetViewController *)self profilePictureImageView];
  [(UIImageView *)profilePictureImageView frame];
  v4 = v3 / 2.0;
  profilePictureImageView2 = [(AKPasswordResetViewController *)self profilePictureImageView];
  layer = [(UIImageView *)profilePictureImageView2 layer];
  [layer setCornerRadius:v4];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](profilePictureImageView2);
  profilePictureImageView3 = [(AKPasswordResetViewController *)self profilePictureImageView];
  layer2 = [(UIImageView *)profilePictureImageView3 layer];
  [layer2 setMasksToBounds:1];
  MEMORY[0x277D82BD8](layer2);
  contentScrollView = [(AKPasswordResetViewController *)self contentScrollView];
  [(UIScrollView *)contentScrollView setAccessibilityIdentifier:@"SCROLL_VIEW"];
  contentView = [(AKPasswordResetViewController *)self contentView];
  [(UIStackView *)contentView setAccessibilityIdentifier:@"SCROLL_VIEW_CONTENT_VIEW"];
  MEMORY[0x277D82BD8](contentView);
}

- (void)_applyLocalization
{
  selfCopy = self;
  v39[1] = a2;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SERVICE_TITLE_REBRAND" value:? table:?];
  serviceNameLabel = [(AKPasswordResetViewController *)selfCopy serviceNameLabel];
  [(UILabel *)serviceNameLabel setText:v8];
  MEMORY[0x277D82BD8](serviceNameLabel);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SCREEN_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  screenTitleLabel = [(AKPasswordResetViewController *)selfCopy screenTitleLabel];
  [(UILabel *)screenTitleLabel setText:v11];
  MEMORY[0x277D82BD8](screenTitleLabel);
  MEMORY[0x277D82BD8](v11);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v39[0] = [mEMORY[0x277CF0130] primaryAuthKitAccount];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0130]).n128_u64[0];
  v14 = MEMORY[0x277CF0300];
  username = [v39[0] username];
  v38 = [v14 formattedUsernameFromUsername:?];
  MEMORY[0x277D82BD8](username);
  v37 = objc_alloc_init(MEMORY[0x277CCAC00]);
  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  v16 = [mEMORY[0x277CF0130]2 familyNameForAccount:v39[0]];
  [v37 setFamilyName:?];
  MEMORY[0x277D82BD8](v16);
  mEMORY[0x277CF0130]3 = [MEMORY[0x277CF0130] sharedInstance];
  v18 = [mEMORY[0x277CF0130]3 givenNameForAccount:v39[0]];
  [v37 setGivenName:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](mEMORY[0x277CF0130]3);
  v36 = objc_alloc_init(MEMORY[0x277CCAC08]);
  v35 = [v36 stringFromPersonNameComponents:v37];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v20 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SCREEN_SUMMARY" value:&stru_28358EF68 table:@"Localizable"];
  *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v24 = MEMORY[0x277CCACA8];
  v23 = v34;
  v21 = v35;
  v22 = v38;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  localizedModel = [currentDevice localizedModel];
  v33 = [v24 stringWithFormat:v23, v21, v22, localizedModel];
  MEMORY[0x277D82BD8](localizedModel);
  *&v4 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  v27 = v33;
  screenSummaryLabel = [(AKPasswordResetViewController *)selfCopy screenSummaryLabel];
  [(UILabel *)screenSummaryLabel setText:v27];
  *&v5 = MEMORY[0x277D82BD8](screenSummaryLabel).n128_u64[0];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  _resetMyPasswordButtonTitle = [(AKPasswordResetViewController *)selfCopy _resetMyPasswordButtonTitle];
  [UIButton setTitle:resetMyPasswordButton forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](_resetMyPasswordButtonTitle);
  *&v6 = MEMORY[0x277D82BD8](resetMyPasswordButton).n128_u64[0];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  _helpSomeonElseButtonTitle = [(AKPasswordResetViewController *)selfCopy _helpSomeonElseButtonTitle];
  [UIButton setTitle:helpSomeoneElseButton forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](_helpSomeonElseButtonTitle);
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(v39, 0);
}

- (id)_resetMyPasswordButtonTitle
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_CURRENT_USER_ACTION_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_helpSomeonElseButtonTitle
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SOMEONE_ELSE_ACTION_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)_applyStyle
{
  selfCopy = self;
  location[5] = a2;
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AKPasswordResetViewController *)selfCopy view];
  [view setBackgroundColor:systemBackgroundColor];
  MEMORY[0x277D82BD8](view);
  keyIconImageView = [(AKPasswordResetViewController *)selfCopy keyIconImageView];
  [(UIImageView *)keyIconImageView frame];
  location[1] = v2;
  location[2] = v3;
  location[3] = v4;
  location[4] = v5;
  v24 = *&v4 / 2.0;
  keyIconImageView2 = [(AKPasswordResetViewController *)selfCopy keyIconImageView];
  layer = [(UIImageView *)keyIconImageView2 layer];
  [layer setCornerRadius:v24];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](keyIconImageView2);
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  keyIconImageView3 = [(AKPasswordResetViewController *)selfCopy keyIconImageView];
  [(UIImageView *)keyIconImageView3 setBackgroundColor:systemBackgroundColor2];
  MEMORY[0x277D82BD8](keyIconImageView3);
  v31 = +[AKPasswordResetAppearance serviceNameFont];
  serviceNameLabel = [(AKPasswordResetViewController *)selfCopy serviceNameLabel];
  [(UILabel *)serviceNameLabel setFont:v31];
  MEMORY[0x277D82BD8](serviceNameLabel);
  serviceNameLabel2 = [(AKPasswordResetViewController *)selfCopy serviceNameLabel];
  [(UILabel *)serviceNameLabel2 setAdjustsFontForContentSizeCategory:0];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v21 = +[AKPasswordResetAppearance closeButtonConfiguration];
    closeButton = [(AKPasswordResetViewController *)selfCopy closeButton];
    [(UIButton *)closeButton setConfiguration:v21];
    MEMORY[0x277D82BD8](closeButton);
    v6 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  v17 = +[AKPasswordResetAppearance screenTitleFont];
  screenTitleLabel = [(AKPasswordResetViewController *)selfCopy screenTitleLabel];
  [(UILabel *)screenTitleLabel setFont:v17];
  MEMORY[0x277D82BD8](screenTitleLabel);
  v19 = +[AKPasswordResetAppearance screenSummaryFont];
  screenSummaryLabel = [(AKPasswordResetViewController *)selfCopy screenSummaryLabel];
  [(UILabel *)screenSummaryLabel setFont:v19];
  MEMORY[0x277D82BD8](screenSummaryLabel);
  MEMORY[0x277D82BD8](v19);
  objc_initWeak(location, selfCopy);
  _resetMyPasswordButtonConfiguration = [(AKPasswordResetViewController *)selfCopy _resetMyPasswordButtonConfiguration];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setConfiguration:_resetMyPasswordButtonConfiguration];
  MEMORY[0x277D82BD8](resetMyPasswordButton);
  *&v7 = MEMORY[0x277D82BD8](_resetMyPasswordButtonConfiguration).n128_u64[0];
  resetMyPasswordButton2 = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __44__AKPasswordResetViewController__applyStyle__block_invoke;
  v45 = &unk_2784A5D98;
  objc_copyWeak(v46, location);
  [(UIButton *)resetMyPasswordButton2 setConfigurationUpdateHandler:&v41];
  *&v8 = MEMORY[0x277D82BD8](resetMyPasswordButton2).n128_u64[0];
  _helpSomeoneElseButtonConfiguration = [(AKPasswordResetViewController *)selfCopy _helpSomeoneElseButtonConfiguration];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setConfiguration:_helpSomeoneElseButtonConfiguration];
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  *&v9 = MEMORY[0x277D82BD8](_helpSomeoneElseButtonConfiguration).n128_u64[0];
  helpSomeoneElseButton2 = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  v35 = MEMORY[0x277D85DD0];
  v36 = -1073741824;
  v37 = 0;
  v38 = __44__AKPasswordResetViewController__applyStyle__block_invoke_2;
  v39 = &unk_2784A5D98;
  objc_copyWeak(&v40, location);
  [(UIButton *)helpSomeoneElseButton2 setConfigurationUpdateHandler:&v35];
  MEMORY[0x277D82BD8](helpSomeoneElseButton2);
  objc_destroyWeak(&v40);
  objc_destroyWeak(v46);
  objc_destroyWeak(location);
}

void __44__AKPasswordResetViewController__applyStyle__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  if (v5[0])
  {
    v4 = [location[0] configuration];
    [v4 setShowsActivityIndicator:{objc_msgSend(v5[0], "showResetMyPasswordButtonLoading")}];
    if ([v5[0] showResetMyPasswordButtonLoading])
    {
      [v4 setTitle:0];
    }

    else
    {
      v2 = [v5[0] _resetMyPasswordButtonTitle];
      [v4 setTitle:?];
      MEMORY[0x277D82BD8](v2);
    }

    [location[0] setConfiguration:v4];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

void __44__AKPasswordResetViewController__applyStyle__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  if (v5[0])
  {
    v4 = [location[0] configuration];
    [v4 setShowsActivityIndicator:{objc_msgSend(v5[0], "showHelpSomeoneElseButtonLoading")}];
    if ([v5[0] showHelpSomeoneElseButtonLoading])
    {
      [v4 setTitle:0];
    }

    else
    {
      v2 = [v5[0] _helpSomeonElseButtonTitle];
      [v4 setTitle:?];
      MEMORY[0x277D82BD8](v2);
    }

    [location[0] setConfiguration:v4];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectClose:(id)close
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, close);
  delegate = [(AKPasswordResetViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_222379000, log, type, "User selected close in password reset options screen", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    [delegate passwordResetControllerDidSelectClose:selfCopy];
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v3 = v9;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_222379000, v3, v4, "Password reset option controller's delegate didn't implement to close event.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectResetMyPassword:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, password);
  [(AKPasswordResetViewController *)selfCopy setShowResetMyPasswordButtonLoading:1];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setNeedsUpdateConfiguration];
  *&v3 = MEMORY[0x277D82BD8](resetMyPasswordButton).n128_u64[0];
  [(AKPasswordResetViewController *)selfCopy _startLoading];
  delegate = [(AKPasswordResetViewController *)selfCopy delegate];
  [(AKPasswordResetViewControllerDelegate *)delegate passwordResetControllerDidSelectPrimaryUser:selfCopy];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (void)didSelectHelpSomeoneElse:(id)else
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, else);
  [(AKPasswordResetViewController *)selfCopy setShowHelpSomeoneElseButtonLoading:1];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setNeedsUpdateConfiguration];
  *&v3 = MEMORY[0x277D82BD8](helpSomeoneElseButton).n128_u64[0];
  [(AKPasswordResetViewController *)selfCopy _startLoading];
  delegate = [(AKPasswordResetViewController *)selfCopy delegate];
  [(AKPasswordResetViewControllerDelegate *)delegate passwordResetControllerDidSelectOtherUser:selfCopy];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (void)_loadProfilePicture
{
  selfCopy = self;
  v13[1] = a2;
  imageProvider = [(AKPasswordResetViewController *)self imageProvider];
  v13[0] = [(AKProfileImageProviding *)imageProvider profilePictureForAccountOwner];
  *&v2 = MEMORY[0x277D82BD8](imageProvider).n128_u64[0];
  if (v13[0])
  {
    profilePictureImageView = [(AKPasswordResetViewController *)selfCopy profilePictureImageView];
    [(UIImageView *)profilePictureImageView setImage:v13[0]];
    MEMORY[0x277D82BD8](profilePictureImageView);
  }

  else
  {
    objc_initWeak(&location, selfCopy);
    imageProvider2 = [(AKPasswordResetViewController *)selfCopy imageProvider];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __52__AKPasswordResetViewController__loadProfilePicture__block_invoke;
    v10 = &unk_2784A5DE8;
    objc_copyWeak(&v11, &location);
    [(AKProfileImageProviding *)imageProvider2 profilePictureForAccountOwnerWithCompletion:&v6];
    MEMORY[0x277D82BD8](imageProvider2);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  objc_storeStrong(v13, 0);
}

void __52__AKPasswordResetViewController__loadProfilePicture__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__AKPasswordResetViewController__loadProfilePicture__block_invoke_2;
  v12 = &unk_2784A5DC0;
  objc_copyWeak(v14, a1 + 4);
  v13 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __52__AKPasswordResetViewController__loadProfilePicture__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0] && *(a1 + 32))
  {
    v1 = *(a1 + 32);
    v2 = [location[0] profilePictureImageView];
    [v2 setImage:v1];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (id)_resetMyPasswordButtonConfiguration
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v2 = 4;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v2 = 3;
  }

  v12[1] = v2;
  [filledButtonConfiguration setCornerStyle:{v2, MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_f64[0]}];
  [filledButtonConfiguration setImagePadding:6.0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __68__AKPasswordResetViewController__resetMyPasswordButtonConfiguration__block_invoke;
  v11 = &unk_2784A5E10;
  objc_copyWeak(v12, location);
  [filledButtonConfiguration setTitleTextAttributesTransformer:&v7];
  v4 = MEMORY[0x277D82BE0](filledButtonConfiguration);
  objc_destroyWeak(v12);
  objc_storeStrong(&filledButtonConfiguration, 0);
  objc_destroyWeak(location);

  return v4;
}

id __68__AKPasswordResetViewController__resetMyPasswordButtonConfiguration__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v10[0] = [location[0] mutableCopy];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    if ([WeakRetained showResetMyPasswordButtonLoading] & 1) != 0 || (objc_msgSend(WeakRetained, "showHelpSomeoneElseButtonLoading"))
    {
      v7 = [MEMORY[0x277D75348] systemGrayColor];
      [v10[0] setObject:? forKeyedSubscript:?];
      v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    }

    else
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
      [v10[0] setObject:? forKeyedSubscript:?];
      v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    }

    v5 = +[AKPasswordResetAppearance actionButtonFont];
    [v10[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v5);
  }

  v4 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_helpSomeoneElseButtonConfiguration
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  [plainButtonConfiguration setImagePadding:6.0];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__AKPasswordResetViewController__helpSomeoneElseButtonConfiguration__block_invoke;
  v8 = &unk_2784A5E10;
  objc_copyWeak(v9, location);
  [plainButtonConfiguration setTitleTextAttributesTransformer:&v4];
  v3 = MEMORY[0x277D82BE0](plainButtonConfiguration);
  objc_destroyWeak(v9);
  objc_storeStrong(&plainButtonConfiguration, 0);
  objc_destroyWeak(location);

  return v3;
}

id __68__AKPasswordResetViewController__helpSomeoneElseButtonConfiguration__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v10[0] = [location[0] mutableCopy];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    if ([WeakRetained showResetMyPasswordButtonLoading] & 1) != 0 || (objc_msgSend(WeakRetained, "showHelpSomeoneElseButtonLoading"))
    {
      v7 = [MEMORY[0x277D75348] systemGrayColor];
      [v10[0] setObject:? forKeyedSubscript:?];
      v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    }

    else
    {
      v6 = [MEMORY[0x277D75348] systemBlueColor];
      [v10[0] setObject:? forKeyedSubscript:?];
      v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    }

    v5 = +[AKPasswordResetAppearance actionButtonFont];
    [v10[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v5);
  }

  v4 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_startLoading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = location[0];
    v13 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_222379000, v12, v13, "Started loading state in password reset options screen", v14, 2u);
  }

  objc_storeStrong(location, 0);
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setEnabled:0];
  *&v2 = MEMORY[0x277D82BD8](resetMyPasswordButton).n128_u64[0];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setEnabled:0];
  *&v3 = MEMORY[0x277D82BD8](helpSomeoneElseButton).n128_u64[0];
  closeButton = [(AKPasswordResetViewController *)selfCopy closeButton];
  [(UIButton *)closeButton setHidden:1];
  *&v4 = MEMORY[0x277D82BD8](closeButton).n128_u64[0];
  navigationItem = [(AKPasswordResetViewController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setHidden:1];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  *&v5 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
  view = [(AKPasswordResetViewController *)selfCopy view];
  [view setUserInteractionEnabled:0];
  MEMORY[0x277D82BD8](view);
}

- (void)stopLoading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = location[0];
    v18 = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_impl(&dword_222379000, v17, v18, "Stopped loading state in password reset options screen", v19, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKPasswordResetViewController *)selfCopy setShowResetMyPasswordButtonLoading:0];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setNeedsUpdateConfiguration];
  *&v2 = MEMORY[0x277D82BD8](resetMyPasswordButton).n128_u64[0];
  [(AKPasswordResetViewController *)selfCopy setShowHelpSomeoneElseButtonLoading:0, v2];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setNeedsUpdateConfiguration];
  *&v3 = MEMORY[0x277D82BD8](helpSomeoneElseButton).n128_u64[0];
  resetMyPasswordButton2 = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton2 setEnabled:1];
  *&v4 = MEMORY[0x277D82BD8](resetMyPasswordButton2).n128_u64[0];
  helpSomeoneElseButton2 = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton2 setEnabled:1];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  closeButton = [(AKPasswordResetViewController *)selfCopy closeButton];
  [(UIButton *)closeButton setHidden:isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](closeButton);
  *&v5 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  navigationItem = [(AKPasswordResetViewController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setHidden:0];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  *&v6 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
  view = [(AKPasswordResetViewController *)selfCopy view];
  [view setUserInteractionEnabled:1];
  MEMORY[0x277D82BD8](view);
}

- (AKPasswordResetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)titleView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleView);

  return WeakRetained;
}

- (UILabel)serviceNameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceNameLabel);

  return WeakRetained;
}

- (UIButton)closeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  return WeakRetained;
}

- (UIScrollView)contentScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);

  return WeakRetained;
}

- (UIStackView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (UIImageView)profilePictureImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_profilePictureImageView);

  return WeakRetained;
}

- (UIImageView)keyIconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_keyIconImageView);

  return WeakRetained;
}

- (UILabel)screenTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_screenTitleLabel);

  return WeakRetained;
}

- (UILabel)screenSummaryLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_screenSummaryLabel);

  return WeakRetained;
}

- (UIView)footerView
{
  WeakRetained = objc_loadWeakRetained(&self->_footerView);

  return WeakRetained;
}

- (UIButton)resetMyPasswordButton
{
  WeakRetained = objc_loadWeakRetained(&self->_resetMyPasswordButton);

  return WeakRetained;
}

- (UIButton)helpSomeoneElseButton
{
  WeakRetained = objc_loadWeakRetained(&self->_helpSomeoneElseButton);

  return WeakRetained;
}

@end