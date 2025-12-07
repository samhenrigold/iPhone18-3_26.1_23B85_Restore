@interface PSUICarrierSpaceServicesController
- (BOOL)shouldShowMoreApps;
- (PSUICarrierSpaceServicesController)initWithNibName:(id)name bundle:(id)bundle;
- (id)primaryAppSpecifier;
- (id)specifiers;
- (void)carrierSpaceChanged;
- (void)launchMyAccountInSafari:(id)safari;
- (void)launchMyAccountInWebView:(id)view;
- (void)moreAppsTapped:(id)tapped;
- (void)simStatusChanged;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PSUICarrierSpaceServicesController

- (void)simStatusChanged
{
  v12 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PSUICarrierSpaceServicesController simStatusChanged]";
    v10 = 2112;
    v11 = 0x287737BB8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification %@", &v8, 0x16u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  isSIMMissing = [mEMORY[0x277D4D868] isSIMMissing];

  if (isSIMMissing)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    v7 = [WeakRetained popViewControllerAnimated:1];
  }
}

- (void)carrierSpaceChanged
{
  v8 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PSUICarrierSpaceServicesController carrierSpaceChanged]";
    v6 = 2112;
    v7 = 0x287737B98;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification: %@", &v4, 0x16u);
  }

  [(PSUICarrierSpaceServicesController *)self reloadSpecifiers];
}

- (PSUICarrierSpaceServicesController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = PSUICarrierSpaceServicesController;
  v4 = [(PSUICarrierSpaceServicesController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_simStatusChanged name:0x287737BB8 object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_carrierSpaceChanged name:0x287737B98 object:0];
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v18 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PSUICarrierSpaceServicesController viewDidAppear:]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = PSUICarrierSpaceServicesController;
  [(PSUICarrierSpaceServicesController *)&v9 viewDidAppear:appearCopy];
  v6 = @"com.apple.Preferences.CarrierSpaceServicesEvent";
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v7 = _MergedGlobals_1_5;
  v13 = _MergedGlobals_1_5;
  if (!_MergedGlobals_1_5)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v15 = __getAnalyticsSendEventSymbolLoc_block_invoke_4;
    v16 = &unk_279BA9F68;
    v17 = &v10;
    __getAnalyticsSendEventSymbolLoc_block_invoke_4(&buf);
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v7)
  {
    v8 = dlerror();
    abort_report_np("%s", v8);
    __break(1u);
  }

  v7(v6, MEMORY[0x277CBEC10]);
}

- (id)specifiers
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    getLogger = [(PSUICarrierSpaceServicesController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v47 = "[PSUICarrierSpaceServicesController specifiers]";
      _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "%s: loading carrier services specifiers", buf, 0xCu);
    }

    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARRIER_APP_GROUP"];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MORE_APPS_FROM_CARRIER_%@" value:&stru_287733598 table:@"CarrierSpaceServices"];
    v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    activeDataCarrierName = [v10 activeDataCarrierName];
    v12 = [v7 stringWithFormat:v9, activeDataCarrierName];

    v44 = v12;
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v13 setButtonAction:sel_moreAppsTapped_];
    [v13 setIdentifier:@"MORE_APPS_FROM_CARRIER"];
    v43 = v13;
    v45 = v6;
    v14 = [MEMORY[0x277CBEB18] arrayWithObjects:{v6, v13, 0}];
    v15 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D40128]];
    v16 = +[PSUICarrierServicesSpecifierCache sharedInstance];
    v17 = [v16 specifiers:v15];

    getLogger2 = [(PSUICarrierSpaceServicesController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      *buf = 136315394;
      v47 = "[PSUICarrierSpaceServicesController specifiers]";
      v48 = 2048;
      v49 = v19;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s detected %lu service code specifiers", buf, 0x16u);
    }

    v20 = [v14 specifierForID:@"MORE_APPS_FROM_CARRIER"];
    [v14 ps_insertObjectsFromArray:v17 afterObject:v20];

    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    activeDataSubscriptionContext = [mEMORY[0x277D4D868] activeDataSubscriptionContext];

    slotID = [v15 slotID];
    v42 = activeDataSubscriptionContext;
    if (slotID != [activeDataSubscriptionContext slotID])
    {
      v31 = v17;
      v32 = [v14 specifierForID:@"CARRIER_APP_GROUP"];
      [v14 removeObject:v32];

      v25 = [v14 specifierForID:@"MORE_APPS_FROM_CARRIER"];
      [v14 removeObject:v25];
LABEL_21:

      v34 = MEMORY[0x277CCACA8];
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"%@_CARRIER_SERVICES" value:&stru_287733598 table:@"CarrierSpaceServices"];
      v37 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
      v38 = [v37 carrierName:v15];
      v39 = [v34 stringWithFormat:v36, v38];
      [(PSUICarrierSpaceServicesController *)self setTitle:v39];

      [MEMORY[0x277D4D878] logSpecifiers:v14 origin:@"[PSUICarrierSpaceServicesController specifiers] end"];
      v40 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v14;

      v4 = *(&self->super.super.super.super.super.isa + v3);
      goto LABEL_22;
    }

    v24 = [v14 specifierForID:@"MY_ACCOUNT"];
    v25 = v24;
    if (v24)
    {
      [v24 setHostController:self];
    }

    primaryAppSpecifier = [(PSUICarrierSpaceServicesController *)self primaryAppSpecifier];
    getLogger3 = [(PSUICarrierSpaceServicesController *)self getLogger];
    v28 = os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT);
    if (primaryAppSpecifier)
    {
      if (v28)
      {
        *buf = 136315138;
        v47 = "[PSUICarrierSpaceServicesController specifiers]";
        _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "%s carrier app provided: adding app install cell", buf, 0xCu);
      }

      v29 = [v14 specifierForID:@"CARRIER_APP_GROUP"];
      [v14 ps_insertObject:primaryAppSpecifier afterObject:v29];

      if ([(PSUICarrierSpaceServicesController *)self shouldShowMoreApps])
      {
        goto LABEL_20;
      }

      getLogger4 = [(PSUICarrierSpaceServicesController *)self getLogger];
      if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v47 = "[PSUICarrierSpaceServicesController specifiers]";
        _os_log_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEFAULT, "%s carrier more apps URL not provided: hiding More Apps button", buf, 0xCu);
      }
    }

    else
    {
      if (v28)
      {
        *buf = 136315138;
        v47 = "[PSUICarrierSpaceServicesController specifiers]";
        _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "%s carrier app not provided: hiding app install cell and More Apps button", buf, 0xCu);
      }

      getLogger4 = [v14 specifierForID:@"CARRIER_APP_GROUP"];
      [v14 removeObject:getLogger4];
    }

    v33 = [v14 specifierForID:@"MORE_APPS_FROM_CARRIER"];
    [v14 removeObject:v33];

LABEL_20:
    v31 = v17;

    goto LABEL_21;
  }

LABEL_22:

  return v4;
}

- (id)primaryAppSpecifier
{
  v3 = +[PSUICarrierSpaceManager sharedManager];
  carrierAppInstallController = [v3 carrierAppInstallController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke;
  v7[3] = &unk_279BAA468;
  v7[4] = self;
  v5 = [carrierAppInstallController specifierWithDescriptionParameters:0 completion:v7];

  return v5;
}

void __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke_2;
  v2[3] = &unk_279BAAAF0;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

id *__57__PSUICarrierSpaceServicesController_primaryAppSpecifier__block_invoke_2(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] reloadSpecifiers];
  }

  return result;
}

- (void)launchMyAccountInWebView:(id)view
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [view propertyForKey:@"MY_ACCOUNT_URL"];
  getLogger = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Launch my account in web view pressed: %@", &v10, 0xCu);
  }

  v6 = [[PSUICarrierSpaceMyAccountWebViewController alloc] initWithURLString:v4];
  myAccountWebViewController = self->_myAccountWebViewController;
  self->_myAccountWebViewController = v6;

  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_myAccountWebViewController];
  navCon = self->_navCon;
  self->_navCon = v8;

  [(PSUICarrierSpaceServicesController *)self presentViewController:self->_navCon animated:1 completion:0];
}

- (void)launchMyAccountInSafari:(id)safari
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [safari propertyForKey:@"MY_ACCOUNT_URL"];
  v6 = [v4 URLWithString:v5];

  getLogger = [(PSUICarrierSpaceServicesController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Launch my account in safari pressed: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D76620];
  v9 = objc_opt_new();
  [v8 openURL:v6 options:v9 completionHandler:0];
}

- (BOOL)shouldShowMoreApps
{
  v2 = +[PSUICarrierSpaceManager sharedManager];
  carrierAppInstallController = [v2 carrierAppInstallController];
  moreAppsAvailable = [carrierAppInstallController moreAppsAvailable];

  return moreAppsAvailable;
}

- (void)moreAppsTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[PSUICarrierSpaceManager sharedManager];
  carrierAppInstallController = [v5 carrierAppInstallController];
  [carrierAppInstallController moreAppsButtonTapped:tappedCopy];
}

@end