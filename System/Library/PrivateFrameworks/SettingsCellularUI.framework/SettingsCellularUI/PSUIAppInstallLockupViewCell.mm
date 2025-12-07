@interface PSUIAppInstallLockupViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PSUIAppInstallLockupViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)presentingViewControllerForLockupView:(id)view;
- (void)_setupView;
- (void)installButtonAction;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidBeginRequest:(id)request;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)lockupViewFailed:(id)failed;
- (void)openButtonAction;
- (void)updateConstraints;
@end

@implementation PSUIAppInstallLockupViewCell

- (PSUIAppInstallLockupViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v38 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = PSUIAppInstallLockupViewCell;
  v9 = [(PSTableCell *)&v27 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"PSUIAppOpenURL"];
    openAppURL = v9->_openAppURL;
    v9->_openAppURL = v10;

    v12 = [specifierCopy propertyForKey:@"PSUIAppId"];
    appId = v9->_appId;
    v9->_appId = v12;

    v14 = [specifierCopy propertyForKey:@"PSUIAnalyticsEventForApp"];
    analyticsEventForApp = v9->_analyticsEventForApp;
    v9->_analyticsEventForApp = v14;

    v16 = [specifierCopy propertyForKey:@"PSUIAnalyticsEventDetailsCode"];
    analyticsEventDetailsCode = v9->_analyticsEventDetailsCode;
    v9->_analyticsEventDetailsCode = v16;

    v18 = [specifierCopy propertyForKey:@"PSUIAnalyticsEventDetailsSubCode"];
    analyticsEventDetailsSubCode = v9->_analyticsEventDetailsSubCode;
    v9->_analyticsEventDetailsSubCode = v18;

    if (!v9->_analyticsEventDetailsCode)
    {
      v9->_analyticsEventDetailsCode = &unk_287749170;
      v20 = v9->_analyticsEventDetailsSubCode;
      v9->_analyticsEventDetailsSubCode = &unk_287749188;
    }

    [(PSUIAppInstallLockupViewCell *)v9 _setupView];
    getLogger = [(PSUIAppInstallLockupViewCell *)v9 getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v9->_appId;
      v23 = v9->_analyticsEventForApp;
      v24 = v9->_analyticsEventDetailsCode;
      v25 = v9->_analyticsEventDetailsSubCode;
      *buf = 136316162;
      v29 = "[PSUIAppInstallLockupViewCell initWithStyle:reuseIdentifier:specifier:]";
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s appId:%@ AnalyticsEvent:[%@, Code=%@, SubCode=%@]", buf, 0x34u);
    }
  }

  return v9;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PSUIAppInstallLockupViewCell;
  [(PSTableCell *)&v14 layoutSubviews];
  [(PSUIAppInstallLockupViewCell *)self setNeedsUpdateConstraints];
  [(PSTableCell *)self setCellEnabled:1];
  contentView = [(PSUIAppInstallLockupViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  lockupView = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView setFrame:{v5, v7, v9, v11}];

  lockupView2 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView2 setLayoutMargins:{8.0, 15.0, 8.0, 12.0}];
}

- (void)updateConstraints
{
  v21[3] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCAAD0];
  contentView = [(PSUIAppInstallLockupViewCell *)self contentView];
  leadingAnchor = [contentView leadingAnchor];
  lockupView = [(PSUIAppInstallLockupViewCell *)self lockupView];
  leadingAnchor2 = [lockupView leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v15;
  contentView2 = [(PSUIAppInstallLockupViewCell *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  lockupView2 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  trailingAnchor2 = [lockupView2 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v5;
  contentView3 = [(PSUIAppInstallLockupViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  lockupView3 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  topAnchor2 = [lockupView3 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v13 activateConstraints:v11];

  v20.receiver = self;
  v20.super_class = PSUIAppInstallLockupViewCell;
  [(PSUIAppInstallLockupViewCell *)&v20 updateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  lockupView = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_setupView
{
  v3 = objc_alloc(MEMORY[0x277CEC298]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(PSUIAppInstallLockupViewCell *)self setLockupView:v4];

  lockupView = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView setDelegate:self];

  lockupView2 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = *MEMORY[0x277CEC248];
  lockupView3 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView3 setLockupSize:v7];

  v14 = [objc_alloc(MEMORY[0x277CEC258]) initWithStringValue:self->_appId];
  v9 = objc_alloc(MEMORY[0x277CEC290]);
  v10 = [v9 _initWithID:v14 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC218] clientID:@"SettingsView"];
  lockupView4 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [lockupView4 setRequest:v10];

  contentView = [(PSUIAppInstallLockupViewCell *)self contentView];
  lockupView5 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [contentView addSubview:lockupView5];

  [(PSUIAppInstallLockupViewCell *)self layoutSubviews];
}

- (void)openButtonAction
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  openAppURL = self->_openAppURL;
  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v6 = [(NSString *)openAppURL stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  v7 = [v3 URLWithString:v6];

  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PSUIAppInstallLockupViewCell openButtonAction]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s for URL: %@", buf, 0x16u);
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __48__PSUIAppInstallLockupViewCell_openButtonAction__block_invoke;
  v17 = &unk_279BAA7F8;
  selfCopy = self;
  v10 = v7;
  v19 = v10;
  [mEMORY[0x277D75128] openURL:v10 options:MEMORY[0x277CBEC10] completionHandler:&v14];

  analyticsEventForApp = self->_analyticsEventForApp;
  if (analyticsEventForApp)
  {
    v20[0] = 0x2877399F8;
    v20[1] = 0x287739A18;
    analyticsEventDetailsCode = self->_analyticsEventDetailsCode;
    v21[0] = @"OpenSupportApp";
    v21[1] = analyticsEventDetailsCode;
    v20[2] = 0x287739A38;
    v21[2] = self->_analyticsEventDetailsSubCode;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:{3, v14, v15, v16, v17, selfCopy}];
    PSAnalyticsSendEvent_0(analyticsEventForApp, v13);
  }
}

void __48__PSUIAppInstallLockupViewCell_openButtonAction__block_invoke(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2658DE000, v3, OS_LOG_TYPE_ERROR, "Could not open URL: %@!!", &v5, 0xCu);
    }
  }
}

- (void)installButtonAction
{
  v16 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    appId = self->_appId;
    *buf = 136315650;
    v11 = "[PSUIAppInstallLockupViewCell installButtonAction]";
    v12 = 2112;
    v13 = appId;
    v14 = 1024;
    v15 = installButtonAction_installStarted;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s appId:%@ installStarted=%d", buf, 0x1Cu);
  }

  analyticsEventForApp = self->_analyticsEventForApp;
  if (analyticsEventForApp && (installButtonAction_installStarted & 1) == 0)
  {
    v8[0] = 0x2877399F8;
    v8[1] = 0x287739A18;
    analyticsEventDetailsCode = self->_analyticsEventDetailsCode;
    v9[0] = @"InstallSupportApp";
    v9[1] = analyticsEventDetailsCode;
    v8[2] = 0x287739A38;
    v9[2] = self->_analyticsEventDetailsSubCode;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    PSAnalyticsSendEvent_0(analyticsEventForApp, v7);
  }

  installButtonAction_installStarted = 1;
}

- (void)lockupViewFailed:(id)failed
{
  v4 = *MEMORY[0x277D3FCE0];
  failedCopy = failed;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  [WeakRetained handleLockupViewFailure:failedCopy];
}

- (void)lockupViewDidBeginRequest:(id)request
{
  v6 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PSUIAppInstallLockupViewCell lockupViewDidBeginRequest:]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }
}

- (void)lockupViewDidFinishRequest:(id)request
{
  v6 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PSUIAppInstallLockupViewCell lockupViewDidFinishRequest:]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUIAppInstallLockupViewCell lockupView:didFailRequestWithError:]";
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s with error: %@", &v7, 0x16u);
  }

  [(PSUIAppInstallLockupViewCell *)self lockupViewFailed:errorCopy];
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  changeCopy = change;
  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[PSUIAppInstallLockupViewCell lockupView:appStateDidChange:]";
    v20 = 2112;
    v21 = changeCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (([changeCopy isEqual:*MEMORY[0x277CEC1A0]] & 1) != 0 || objc_msgSend(changeCopy, "isEqual:", *MEMORY[0x277CEC1A8]))
  {
    v9 = MEMORY[0x277CEC2B0];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OPEN" value:&stru_287733598 table:@"AppInstallCell"];
    v12 = [v9 textMetadataWithTitle:v11 subtitle:0];

    v13 = objc_alloc(MEMORY[0x277CEC278]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__PSUIAppInstallLockupViewCell_lockupView_appStateDidChange___block_invoke;
    v17[3] = &unk_279BA9D58;
    v17[4] = self;
    v14 = [v13 initWithMetadata:v12 action:v17];
    lockup = [viewCopy lockup];
    v16 = [lockup lockupWithOffer:v14];
    [viewCopy setLockup:v16];
  }

  else if ([changeCopy isEqual:*MEMORY[0x277CEC198]])
  {
    [(PSUIAppInstallLockupViewCell *)self installButtonAction];
  }
}

- (id)presentingViewControllerForLockupView:(id)view
{
  v7 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUIAppInstallLockupViewCell presentingViewControllerForLockupView:]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  return 0;
}

@end