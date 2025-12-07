@interface WFBuddyViewController
- (UISwitch)enableWAPISwitch;
- (WFBuddyViewController)init;
- (WFBuddyViewControllerDelegate)buddyDelegate;
- (WFNetworkListDelegate)listDelegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cellForNetworkRecord:(id)record tableView:(id)view indexPath:(id)path;
- (id)_debugSectionStringFromSections:(id)sections;
- (id)_nameOfSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_chooseOtherNetworkTapped:(id)tapped;
- (void)_enableWAPISwitchChanged:(id)changed;
- (void)_notifyBuddyWiFiPickerIsVisble:(BOOL)visble;
- (void)_refreshSections;
- (void)_updateCellsWithNewData:(id)data oldData:(id)oldData inSection:(int64_t)section;
- (void)networkListDelegateWillPresentAccessoryViewController:(id)controller;
- (void)powerStateDidChange:(BOOL)change;
- (void)refresh;
- (void)setCurrentNetwork:(id)network;
- (void)setCurrentNetworkScaledRSSI:(float)i;
- (void)setCurrentNetworkState:(int64_t)state;
- (void)setDeviceCapability:(int64_t)capability;
- (void)setNetworks:(id)networks;
- (void)setShowAdditionalSetupInfo:(BOOL)info;
- (void)setShowNetworkSettings:(BOOL)settings;
- (void)setSupportsCellularActivation:(BOOL)activation;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFBuddyViewController

- (WFBuddyViewController)init
{
  v3 = WFCurrentDeviceCapability(self);
  self->_deviceCapability = v3;
  IsChinaDevice = WFCapabilityIsChinaDevice(v3);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (IsChinaDevice)
  {
    v7 = @"kWFLocBuddyHeaderViewTitleCH";
  }

  else
  {
    v7 = @"kWFLocBuddyHeaderViewTitle";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v11.receiver = self;
  v11.super_class = WFBuddyViewController;
  v9 = [(OBTableWelcomeController *)&v11 initWithTitle:v8 detailText:0 icon:0 adoptTableViewScrollView:1];

  return v9;
}

- (void)viewDidLoad
{
  v41[2] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = WFBuddyViewController;
  [(OBTableWelcomeController *)&v40 viewDidLoad];
  v3 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_288322A20, 0}];
  sections = self->_sections;
  self->_sections = v3;

  self->_tableViewIsUpdating = 0;
  self->_networkResultsChangedWhileUIUpdates = 0;
  self->_tableReloadRequestQueued = 0;
  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = MEMORY[0x277D757B0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 nibWithNibName:@"WFBuddyNetworkListCell" bundle:v8];

  if (!v9)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v10, v12, "Missing WFBuddyNetworkListCell nib!", buf, 2u);
    }
  }

  [v6 registerNib:v9 forCellReuseIdentifier:@"WFBuddyNetworkListCell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFBuddyOtherNetworkCell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFBuddyWAPICell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkAlternativeCellIdentifier"];
  v14 = MEMORY[0x277D757B0];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v14 nibWithNibName:@"WFAdditionalSetupTableViewCell" bundle:v15];

  if (!v16)
  {
    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v17 && os_log_type_enabled(v17, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v17, v19, "Missing WFAdditionalSetupTableViewCell nib!", buf, 2u);
    }
  }

  [v6 registerNib:v16 forCellReuseIdentifier:@"WFBuddyAdditionalSetupCell"];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 _setDrawsSeparatorAtTopOfSections:1];
  view = [(WFBuddyViewController *)self view];
  [view addSubview:v6];

  [(OBTableWelcomeController *)self setTableView:v6];
  buttonTray = [(WFBuddyViewController *)self buttonTray];
  [buttonTray setHidden:1];

  [(WFBuddyViewController *)self setSupportsCellularActivation:0];
  listDelegate = [(WFBuddyViewController *)self listDelegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    listDelegate2 = [(WFBuddyViewController *)self listDelegate];
    [listDelegate2 setShouldShowDetailTapOnCurrentNetwork:0];
  }

  listDelegate3 = [(WFBuddyViewController *)self listDelegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    listDelegate4 = [(WFBuddyViewController *)self listDelegate];
    self->_deviceCapability = [listDelegate4 networkListViewControllerOverrideDeviceCapability:self];
  }

  v29 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 1" transitionDuration:0.01 transitionSpeed:1.0];
  v41[0] = v29;
  v30 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 2" transitionDuration:1.0 transitionSpeed:0.5];
  v41[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];

  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = [v32 URLForResource:@"WIFI" withExtension:@"ca"];

  v34 = objc_alloc(MEMORY[0x277D37600]);
  headerView = [(WFBuddyViewController *)self headerView];
  animationView = [headerView animationView];
  firstObject = [v31 firstObject];
  v38 = [v34 initWithUrlToPackage:v33 animationView:animationView animatedStates:v31 startAtFirstState:firstObject];
  [(WFBuddyViewController *)self setAnimationController:v38];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = WFBuddyViewController;
  [(OBTableWelcomeController *)&v9 viewWillAppear:appear];
  listDelegate = [(WFBuddyViewController *)self listDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    listDelegate2 = [(WFBuddyViewController *)self listDelegate];
    [listDelegate2 setShouldShowDetailTapOnCurrentNetwork:0];
  }

  [(WFBuddyViewController *)self _refreshSections];
  [(WFBuddyViewController *)self refresh];
  listDelegate3 = [(WFBuddyViewController *)self listDelegate];
  [listDelegate3 networkListViewControllerDidAppear:self];

  animationController = [(WFBuddyViewController *)self animationController];
  [animationController startAnimation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = WFBuddyViewController;
  [(OBBaseWelcomeController *)&v10 viewDidAppear:appear];
  self->_networkListVisible = 1;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    *v9 = 0;
    _os_log_impl(&dword_273FB9000, v4, v6, "Network list appears on screen", v9, 2u);
  }

  listDelegate = [(WFBuddyViewController *)self listDelegate];
  [listDelegate networkListViewControllerDidAppear:self];

  [(WFBuddyViewController *)self _notifyBuddyWiFiPickerIsVisble:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = WFBuddyViewController;
  [(OBBaseWelcomeController *)&v10 viewDidDisappear:disappear];
  self->_networkListVisible = 0;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    *v9 = 0;
    _os_log_impl(&dword_273FB9000, v4, v6, "Network list disappears from screen", v9, 2u);
  }

  listDelegate = [(WFBuddyViewController *)self listDelegate];
  [listDelegate networkListViewControllerDidDisappear:self];

  [(WFBuddyViewController *)self _notifyBuddyWiFiPickerIsVisble:0];
}

- (void)setShowNetworkSettings:(BOOL)settings
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_showNetworkSettings != settings)
  {
    settingsCopy = settings;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
    {
      v13 = 136315394;
      v14 = "[WFBuddyViewController setShowNetworkSettings:]";
      v15 = 1024;
      v16 = settingsCopy;
      _os_log_impl(&dword_273FB9000, v5, v7, "%s: showNetworkSettings %d", &v13, 0x12u);
    }

    self->_showNetworkSettings = settingsCopy;
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(3uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
    {
      v13 = 136315138;
      v14 = "[WFBuddyViewController setShowNetworkSettings:]";
      _os_log_impl(&dword_273FB9000, v9, v11, "%s: Calling [self refresh]", &v13, 0xCu);
    }

    [(WFBuddyViewController *)self refresh];
  }
}

- (void)setSupportsCellularActivation:(BOOL)activation
{
  activationCopy = activation;
  v24 = *MEMORY[0x277D85DE8];
  if (self->_supportsCellularActivation != activation || !self->_alternateSetupTitle || !self->_alternateSetupFooter)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
    {
      v20 = 136315394;
      v21 = "[WFBuddyViewController setSupportsCellularActivation:]";
      v22 = 1024;
      v23 = activationCopy;
      _os_log_impl(&dword_273FB9000, v5, v7, "%s: supports %d", &v20, 0x12u);
    }

    self->_supportsCellularActivation = activationCopy;
    IsChinaDevice = WFCapabilityIsChinaDevice([(WFBuddyViewController *)self deviceCapability]);
    supportsCellularActivation = self->_supportsCellularActivation;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"kWFLocBuddyUseCellularConnection";
    if (IsChinaDevice)
    {
      v13 = @"kWFLocBuddyUseCellularConnection_CH";
    }

    if (supportsCellularActivation)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"kWFLocBuddyConnectToTunes";
    }

    v15 = [v11 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    [(WFBuddyViewController *)self setAlternateSetupTitle:v15];
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
    {
      v20 = 136315138;
      v21 = "[WFBuddyViewController setSupportsCellularActivation:]";
      _os_log_impl(&dword_273FB9000, v16, v18, "%s: Calling [self refresh]", &v20, 0xCu);
    }

    [(WFBuddyViewController *)self refresh];
  }
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__WFBuddyViewController_setNetworks___block_invoke;
  v6[3] = &unk_279EC5588;
  v7 = networksCopy;
  selfCopy = self;
  v5 = networksCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __37__WFBuddyViewController_setNetworks___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__2;
  v56 = __Block_byref_object_dispose__2;
  v57 = &stru_288308678;
  v2 = *(a1 + 32);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __37__WFBuddyViewController_setNetworks___block_invoke_71;
  v51[3] = &unk_279EC6270;
  v51[4] = &v52;
  [v2 enumerateObjectsUsingBlock:v51];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 4 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = v53[5];
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_impl(&dword_273FB9000, v3, v5, "networks to be set: %@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) mutableCopy];
  v9 = [*(a1 + 40) currentNetwork];

  if (v9)
  {
    v10 = [*(a1 + 40) currentNetwork];
    [v8 addObject:v10];
  }

  v11 = [v8 adhocNetworks];
  v12 = v11;
  if (v11 && [v11 count])
  {
    [v8 minusSet:v12];
  }

  v13 = [v8 unconfiguredNetworks];
  v14 = v13;
  if (v13 && [v13 count])
  {
    [v8 minusSet:v14];
  }

  v15 = WFScanRecordDefaultSortCompartor();
  v42 = [*(*(a1 + 40) + 1320) copy];
  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(4uLL);
  v18 = v17;
  if (WFCurrentLogLevel(v17, v19) >= 4 && v16 && os_log_type_enabled(v16, v18))
  {
    v20 = *(*(a1 + 40) + 1277);
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&dword_273FB9000, v16, v18, "TableView is currently updating %d", buf, 8u);
  }

  if (*(*(a1 + 40) + 1277) == 1)
  {
    v21 = [v8 allObjects];
    v22 = [v21 sortedArrayUsingComparator:v15];
    v23 = *(a1 + 40);
    v24 = *(v23 + 1376);
    *(v23 + 1376) = v22;

    *(*(a1 + 40) + 1278) = 1;
  }

  else
  {
    v25 = [v8 allObjects];
    v41 = [v25 sortedArrayUsingComparator:v15];

    v26 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(4uLL);
    v28 = v27;
    if (WFCurrentLogLevel(v27, v29) >= 4 && v26)
    {
      v30 = v26;
      if (os_log_type_enabled(v30, v28))
      {
        v31 = [v42 count];
        v32 = [*(*(a1 + 40) + 1320) count];
        *buf = 134218240;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        _os_log_impl(&dword_273FB9000, v30, v28, "Set Networks from %lu to %lu", buf, 0x16u);
      }
    }

    v33 = [*(a1 + 40) tableView];
    v34 = [v33 _isInAWindow];

    if (v34)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v63 = __Block_byref_object_copy__2;
      v64 = __Block_byref_object_dispose__2;
      v65 = &stru_288308678;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __37__WFBuddyViewController_setNetworks___block_invoke_77;
      v50[3] = &unk_279EC55B0;
      v50[4] = buf;
      [v42 enumerateObjectsUsingBlock:v50];
      v44 = 0;
      v45 = &v44;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy__2;
      v48 = __Block_byref_object_dispose__2;
      v49 = &stru_288308678;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __37__WFBuddyViewController_setNetworks___block_invoke_2;
      v43[3] = &unk_279EC55B0;
      v43[4] = &v44;
      [v41 enumerateObjectsUsingBlock:v43];
      v35 = WFLogForCategory(0);
      v36 = OSLogForWFLogLevel(4uLL);
      v37 = v36;
      if (WFCurrentLogLevel(v36, v38) >= 4 && v35 && os_log_type_enabled(v35, v37))
      {
        v39 = *(*&buf[8] + 40);
        v40 = v45[5];
        *v58 = 138412546;
        v59 = v39;
        v60 = 2112;
        v61 = v40;
        _os_log_impl(&dword_273FB9000, v35, v37, "Old networks: %@\n New networks: %@", v58, 0x16u);
      }

      [*(a1 + 40) _updateCellsWithNewData:v41 oldData:v42 inSection:0];
      _Block_object_dispose(&v44, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  _Block_object_dispose(&v52, 8);
}

void __37__WFBuddyViewController_setNetworks___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __37__WFBuddyViewController_setNetworks___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __37__WFBuddyViewController_setNetworks___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)_updateCellsWithNewData:(id)data oldData:(id)oldData inSection:(int64_t)section
{
  v93 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  oldDataCopy = oldData;
  v50 = objc_opt_new();
  v46 = objc_opt_new();
  v44 = objc_opt_new();
  v47 = objc_opt_new();
  v51 = [oldDataCopy mutableCopy];
  v52 = [dataCopy mutableCopy];
  if ([oldDataCopy count] >= 2 && objc_msgSend(oldDataCopy, "count", v44, v46) >= 2)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [oldDataCopy objectAtIndexedSubscript:v9];
      ssid = [v10 ssid];
      v12 = v9 - 1;
      v13 = [oldDataCopy objectAtIndexedSubscript:v9 - 1];
      ssid2 = [v13 ssid];
      v15 = [ssid isEqualToString:ssid2];

      if (v15)
      {
        [v51 removeObjectAtIndex:v9 - v8++];
      }

      ++v9;
    }

    while ([oldDataCopy count] > (v12 + 2));
  }

  if ([dataCopy count] >= 2 && objc_msgSend(dataCopy, "count") >= 2)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = [dataCopy objectAtIndexedSubscript:v17];
      ssid3 = [v18 ssid];
      v20 = v17 - 1;
      v21 = [dataCopy objectAtIndexedSubscript:v17 - 1];
      ssid4 = [v21 ssid];
      v23 = [ssid3 isEqualToString:ssid4];

      if (v23)
      {
        [v52 removeObjectAtIndex:v17 - v16++];
      }

      ++v17;
    }

    while ([dataCopy count] > (v20 + 2));
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__2;
  v83 = __Block_byref_object_dispose__2;
  v84 = &stru_288308678;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke;
  v78[3] = &unk_279EC55B0;
  v78[4] = &v79;
  [v51 enumerateObjectsUsingBlock:v78];
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__2;
  v76 = __Block_byref_object_dispose__2;
  v77 = &stru_288308678;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2;
  v71[3] = &unk_279EC55B0;
  v71[4] = &v72;
  [v52 enumerateObjectsUsingBlock:v71];
  v24 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(3uLL);
  v26 = v25;
  if (WFCurrentLogLevel(v25, v27) >= 3 && v24 && os_log_type_enabled(v24, v26))
  {
    v28 = v80[5];
    v29 = v73[5];
    *buf = 138412546;
    v86 = v28;
    v87 = 2112;
    v88 = v29;
    _os_log_impl(&dword_273FB9000, v24, v26, "Old filtered networks: %@\n New filtered networks: %@", buf, 0x16u);
  }

  v30 = WFLogForCategory(0);
  v31 = OSLogForWFLogLevel(3uLL);
  v32 = v31;
  if (WFCurrentLogLevel(v31, v33) >= 3 && v30)
  {
    v34 = v30;
    if (os_log_type_enabled(v34, v32))
    {
      v35 = [oldDataCopy count];
      v36 = [v51 count];
      v37 = [dataCopy count];
      v38 = [v52 count];
      *buf = 134218752;
      v86 = v35;
      v87 = 2048;
      v88 = v36;
      v89 = 2048;
      v90 = v37;
      v91 = 2048;
      v92 = v38;
      _os_log_impl(&dword_273FB9000, v34, v32, "Old Network count: %lu, old filtered network count: %lu, new network count: %lu, new filtered network count: %lu", buf, 0x2Au);
    }
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_82;
  v69[3] = &unk_279EC55D8;
  v39 = v47;
  v70 = v39;
  [v51 enumerateObjectsUsingBlock:v69];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2_84;
  v64[3] = &unk_279EC5600;
  v40 = v39;
  v65 = v40;
  sectionCopy = section;
  v41 = v45;
  v66 = v41;
  v42 = v46;
  v67 = v42;
  [v52 enumerateObjectsUsingBlock:v64];
  if ([v40 count])
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_86;
    v60[3] = &unk_279EC5628;
    v61 = v40;
    v62 = v50;
    sectionCopy2 = section;
    [v61 enumerateKeysAndObjectsUsingBlock:v60];
  }

  if ([v50 count] || objc_msgSend(v42, "count") || objc_msgSend(v41, "count"))
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_88;
    v54[3] = &unk_279EC6298;
    v55 = v42;
    v56 = v41;
    v57 = v50;
    selfCopy = self;
    v59 = v52;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_89;
    v53[3] = &unk_279EC62C0;
    v53[4] = self;
    [tableView performBatchUpdates:v54 completion:v53];
  }

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v79, 8);
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_82(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 ssid];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setValue:v6 forKey:v7];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2_84(uint64_t a1, void *a2, uint64_t a3)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 ssid];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:v6];
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v11 inSection:{"integerValue"), *(a1 + 56)}];
      v13 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
      v14 = *(a1 + 40);
      v26[0] = v12;
      v26[1] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      [v14 addObject:v15];
    }

    [*(a1 + 32) removeObjectForKey:v6];
  }

  else
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
    {
      v22 = 138412546;
      v23 = v5;
      v24 = 2048;
      v25 = a3;
      _os_log_impl(&dword_273FB9000, v16, v18, "inserting %@ at indexpath:%lu, ", &v22, 0x16u);
    }

    v20 = *(a1 + 48);
    v21 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
    [v20 addObject:v21];
  }
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_86(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2048;
      v15 = [v4 longValue];
      _os_log_impl(&dword_273FB9000, v9, v7, "deleting %@ at indexpath:%lu", &v12, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v4 inSection:{"integerValue"), *(a1 + 48)}];
  [v10 addObject:v11];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_88(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2)
  {
    v6 = v2;
    if (os_log_type_enabled(v6, v4))
    {
      v7 = [a1[4] count];
      v8 = [a1[5] count];
      v9 = [a1[6] count];
      *buf = 136315906;
      v27 = "[WFBuddyViewController _updateCellsWithNewData:oldData:inSection:]_block_invoke";
      v28 = 2048;
      v29 = v7;
      v30 = 2048;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_273FB9000, v6, v4, "%s: tableView updating started - insert %lu move %lu delete %lu", buf, 0x2Au);
    }
  }

  *(a1[7] + 1277) = 1;
  v10 = [a1[7] tableView];
  [v10 deleteRowsAtIndexPaths:a1[6] withRowAnimation:0];

  v11 = [a1[7] tableView];
  [v11 insertRowsAtIndexPaths:a1[4] withRowAnimation:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = a1[5];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 objectAtIndexedSubscript:{0, v21}];
        v19 = [v17 objectAtIndexedSubscript:1];
        v20 = [a1[7] tableView];
        [v20 moveRowAtIndexPath:v18 toIndexPath:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  objc_storeStrong(a1[7] + 165, a1[8]);
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_89(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFBuddyViewController _updateCellsWithNewData:oldData:inSection:]_block_invoke";
    _os_log_impl(&dword_273FB9000, v2, v4, "%s: tableView updating finished", &buf, 0xCu);
  }

  *(*(a1 + 32) + 1277) = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = [*(a1 + 32) tableView];
    [v6 invalidateIntrinsicContentSize];

    v7 = [*(a1 + 32) tableView];
    [v7 updateConstraintsIfNeeded];

    v8 = [*(a1 + 32) tableView];
    [v8 layoutIfNeeded];
  }

  v9 = *(a1 + 32);
  if (*(v9 + 1278) == 1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v10 = MEMORY[0x277CBEB98];
    v11 = [*(v9 + 1376) copy];
    v29 = [v10 setWithArray:v11];

    v12 = *(a1 + 32);
    v13 = *(v12 + 1376);
    *(v12 + 1376) = MEMORY[0x277CBEBF8];

    *(*(a1 + 32) + 1278) = 0;
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(4uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) >= 4 && v14)
    {
      v18 = v14;
      if (os_log_type_enabled(v18, v16))
      {
        v19 = [*(*(&buf + 1) + 40) count];
        *v21 = 136315394;
        v22 = "[WFBuddyViewController _updateCellsWithNewData:oldData:inSection:]_block_invoke";
        v23 = 2048;
        v24 = v19;
        _os_log_impl(&dword_273FB9000, v18, v16, "%s: continuing with pending network update (count %lu)", v21, 0x16u);
      }
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_92;
    v20[3] = &unk_279EC5790;
    v20[4] = *(a1 + 32);
    v20[5] = &buf;
    dispatch_async(MEMORY[0x277D85CD0], v20);
    _Block_object_dispose(&buf, 8);
  }
}

- (void)setCurrentNetworkScaledRSSI:(float)i
{
  v24 = *MEMORY[0x277D85DE8];
  self->_currentNetworkScaledRSSI = i;
  sortedNetworks = [(WFBuddyViewController *)self sortedNetworks];
  v5 = [sortedNetworks count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      sortedNetworks2 = [(WFBuddyViewController *)self sortedNetworks];
      v8 = [sortedNetworks2 objectAtIndexedSubscript:v6];

      ssid = [v8 ssid];
      ssid2 = [(WFNetworkListRecord *)self->_currentNetwork ssid];
      v11 = [ssid isEqualToString:ssid2];

      if (v11)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = 0;
        break;
      }
    }

    v5 = v6;
  }

  sections = [(WFBuddyViewController *)self sections];
  v13 = [sections indexOfObject:&unk_288322A20];

  v14 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:v13];
  if (v14)
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) >= 4 && v15 && os_log_type_enabled(v15, v17))
    {
      *buf = 136315138;
      v23 = "[WFBuddyViewController setCurrentNetworkScaledRSSI:]";
      _os_log_impl(&dword_273FB9000, v15, v17, "%s: reloading current network index path", buf, 0xCu);
    }

    tableView = [(OBTableWelcomeController *)self tableView];
    v21 = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [tableView reloadRowsAtIndexPaths:v20 withRowAnimation:5];
  }
}

- (void)setCurrentNetwork:(id)network
{
  v13 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  objc_storeStrong(&self->_currentNetwork, network);
  [networkCopy scaledRSSI];
  self->_currentNetworkScaledRSSI = v6;
  self->_currentNetworkState = 0;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    v11 = 136315138;
    v12 = "[WFBuddyViewController setCurrentNetwork:]";
    _os_log_impl(&dword_273FB9000, v7, v9, "%s: Calling [self refresh]", &v11, 0xCu);
  }

  [(WFBuddyViewController *)self refresh];
}

- (void)setCurrentNetworkState:(int64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  self->_currentNetworkState = state;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315138;
    v9 = "[WFBuddyViewController setCurrentNetworkState:]";
    _os_log_impl(&dword_273FB9000, v4, v6, "%s: Calling [self refresh]", &v8, 0xCu);
  }

  [(WFBuddyViewController *)self refresh];
}

- (void)setDeviceCapability:(int64_t)capability
{
  if (self->_deviceCapability != capability)
  {
    self->_deviceCapability = capability;
    [(WFBuddyViewController *)self _refreshSections];
    alternateSetupTitle = self->_alternateSetupTitle;
    self->_alternateSetupTitle = 0;

    alternateSetupFooter = self->_alternateSetupFooter;
    self->_alternateSetupFooter = 0;

    supportsCellularActivation = self->_supportsCellularActivation;

    [(WFBuddyViewController *)self setSupportsCellularActivation:supportsCellularActivation];
  }
}

- (void)setShowAdditionalSetupInfo:(BOOL)info
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_showAdditionalSetupInfo != info)
  {
    infoCopy = info;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
    {
      v9 = 136315394;
      v10 = "[WFBuddyViewController setShowAdditionalSetupInfo:]";
      v11 = 1024;
      v12 = infoCopy;
      _os_log_impl(&dword_273FB9000, v5, v7, "%s: showAdditionalSetupInfo %d", &v9, 0x12u);
    }

    self->_showAdditionalSetupInfo = infoCopy;
    [(WFBuddyViewController *)self _refreshSections];
  }
}

- (void)refresh
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_273FB9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "buddy refresh tableView", "", buf, 2u);
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      tableViewIsUpdating = self->_tableViewIsUpdating;
      tableReloadRequestQueued = self->_tableReloadRequestQueued;
      *buf = 136315650;
      v18 = "[WFBuddyViewController refresh]";
      v19 = 1024;
      v20 = tableViewIsUpdating;
      v21 = 1024;
      v22 = tableReloadRequestQueued;
      _os_log_impl(&dword_273FB9000, v3, v5, "%s: _tableViewIsUpdating: %d _tableReloadRequestQueued: %d", buf, 0x18u);
    }

    if (self->_tableViewIsUpdating)
    {
      if (self->_tableReloadRequestQueued)
      {
        return;
      }

      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(3uLL);
      v11 = v10;
      if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
      {
        *buf = 136315138;
        v18 = "[WFBuddyViewController refresh]";
        _os_log_impl(&dword_273FB9000, v9, v11, "%s: Queueing a table reload request.", buf, 0xCu);
      }

      self->_tableReloadRequestQueued = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__WFBuddyViewController_refresh__block_invoke;
      block[3] = &unk_279EC5538;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      tableView = [(OBTableWelcomeController *)self tableView];
      [tableView reloadData];

      tableView2 = [(OBTableWelcomeController *)self tableView];
      [tableView2 setNeedsLayout];

      tableView3 = [(OBTableWelcomeController *)self tableView];
      [tableView3 layoutIfNeeded];
    }

    if (os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_273FB9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "buddy refresh tableView", "", buf, 2u);
    }
  }

  else
  {
    [(WFBuddyViewController *)self performSelectorOnMainThread:sel_refresh withObject:0 waitUntilDone:0];
  }
}

void *__32__WFBuddyViewController_refresh__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) refresh];
  *(*(a1 + 32) + 1279) = 0;
  return result;
}

- (void)_refreshSections
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_tableViewIsUpdating)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 136315138;
      v19 = "[WFBuddyViewController _refreshSections]";
      _os_log_impl(&dword_273FB9000, v3, v5, "%s: tried to refresh settings while table update is in progress, deferring until update is finished", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFBuddyViewController__refreshSections__block_invoke;
    block[3] = &unk_279EC5538;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = [MEMORY[0x277CBEB40] orderedSetWithObject:&unk_288322A20];
    if (WFCapabilityIsChinaDevice([(WFBuddyViewController *)self deviceCapability]) && [(WFBuddyViewController *)self deviceCapability]!= 4)
    {
      [v7 addObject:&unk_288322A38];
    }

    if ([(WFBuddyViewController *)self showAdditionalSetupInfo])
    {
      [v7 addObject:&unk_288322A50];
    }

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
    {
      v12 = v8;
      if (os_log_type_enabled(v12, v10))
      {
        sections = [(WFBuddyViewController *)self sections];
        v14 = [(WFBuddyViewController *)self _debugSectionStringFromSections:sections];
        v15 = [(WFBuddyViewController *)self _debugSectionStringFromSections:v7];
        *buf = 136315650;
        v19 = "[WFBuddyViewController _refreshSections]";
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_273FB9000, v12, v10, "%s: old sections [%@], new sections [%@]", buf, 0x20u);
      }
    }

    v16 = [MEMORY[0x277CBEB70] orderedSetWithOrderedSet:v7];
    [(WFBuddyViewController *)self setSections:v16];

    [(WFBuddyViewController *)self refresh];
  }
}

- (void)powerStateDidChange:(BOOL)change
{
  changeCopy = change;
  v13 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 136315394;
    v10 = "[WFBuddyViewController powerStateDidChange:]";
    v11 = 1024;
    v12 = changeCopy;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: state %d", &v9, 0x12u);
  }

  [(WFBuddyViewController *)self refresh];
}

- (void)networkListDelegateWillPresentAccessoryViewController:(id)controller
{
  v3 = MEMORY[0x277D75348];
  controllerCopy = controller;
  defaultBgColor = [v3 defaultBgColor];
  [controllerCopy setBackgroundColor:defaultBgColor];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFBuddyViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(WFBuddyViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:section];

  integerValue = [v7 integerValue];
  if ((integerValue - 1) >= 2)
  {
    if (integerValue)
    {
      v9 = 0;
    }

    else
    {
      sortedNetworks = [(WFBuddyViewController *)self sortedNetworks];
      v11 = [sortedNetworks count];

      v9 = v11 + [(WFBuddyViewController *)self showOtherNetwork];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v62 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  sections = [(WFBuddyViewController *)self sections];
  v10 = [sections count];

  if (section < v10)
  {
    sections2 = [(WFBuddyViewController *)self sections];
    v12 = [sections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    integerValue = [v12 integerValue];
    if (integerValue == 2)
    {
      v17 = [viewCopy dequeueReusableCellWithIdentifier:@"WFBuddyAdditionalSetupCell"];
      if (!v17)
      {
        v17 = [[WFAdditionalSetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WFBuddyAdditionalSetupCell"];
      }

      alternateSetupTitle = [(WFBuddyViewController *)self alternateSetupTitle];
      label = [(WFAdditionalSetupTableViewCell *)v17 label];
      [label setText:alternateSetupTitle];
    }

    else
    {
      if (integerValue != 1)
      {
        if (integerValue)
        {
          v17 = 0;
LABEL_28:
          v36 = v17;

          goto LABEL_29;
        }

        v14 = [pathCopy row];
        sortedNetworks = [(WFBuddyViewController *)self sortedNetworks];
        if (v14 == [sortedNetworks count])
        {
          showOtherNetwork = [(WFBuddyViewController *)self showOtherNetwork];

          if (showOtherNetwork)
          {
            v17 = [viewCopy dequeueReusableCellWithIdentifier:@"WFBuddyOtherNetworkCell"];
            if (!v17)
            {
              v17 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WFBuddyOtherNetworkCell"];
            }

            v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"kWFLocBuddyFooterViewTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
            textLabel = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [textLabel setText:v19];

            v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
            v22 = MEMORY[0x277D74300];
            [v21 pointSize];
            v23 = [v22 boldSystemFontOfSize:?];
            textLabel2 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [textLabel2 setFont:v23];

            defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
            textLabel3 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [textLabel3 setTextColor:defaultButtonColor];

            textLabel4 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [textLabel4 setNumberOfLines:0];

            goto LABEL_26;
          }
        }

        else
        {
        }

        sortedNetworks2 = [(WFBuddyViewController *)self sortedNetworks];
        v21 = [sortedNetworks2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        v17 = [(WFBuddyViewController *)self _cellForNetworkRecord:v21 tableView:viewCopy indexPath:pathCopy];
LABEL_26:

        [(WFAdditionalSetupTableViewCell *)v17 setSeparatorInset:0.0, 40.0, 0.0, 0.0];
        alternateSetupTitle = [MEMORY[0x277D75348] listPlatterBgColor];
        [(WFAdditionalSetupTableViewCell *)v17 setBackgroundColor:alternateSetupTitle];
        goto LABEL_27;
      }

      v17 = [viewCopy dequeueReusableCellWithIdentifier:@"WFBuddyWAPICell"];
      if (!v17)
      {
        v17 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WFBuddyWAPICell"];
      }

      textLabel5 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [textLabel5 setNumberOfLines:0];

      alternateSetupTitle2 = [(WFBuddyViewController *)self alternateSetupTitle];
      textLabel6 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [textLabel6 setText:alternateSetupTitle2];

      alternateSetupTitle = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v41 = MEMORY[0x277D74300];
      [alternateSetupTitle pointSize];
      v42 = [v41 boldSystemFontOfSize:?];
      textLabel7 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [textLabel7 setFont:v42];

      defaultButtonColor2 = [MEMORY[0x277D75348] defaultButtonColor];
      textLabel8 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [textLabel8 setTextColor:defaultButtonColor2];

      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = [v46 localizedStringForKey:@"kWFLocEnableWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel9 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [textLabel9 setText:v47];

      enableWAPISwitch = [(WFBuddyViewController *)self enableWAPISwitch];
      [(WFAdditionalSetupTableViewCell *)v17 setAccessoryView:enableWAPISwitch];

      listDelegate = [(WFBuddyViewController *)self listDelegate];
      v51 = [listDelegate networkListViewControllerWAPIEnabled:self];
      enableWAPISwitch2 = [(WFBuddyViewController *)self enableWAPISwitch];
      [enableWAPISwitch2 setOn:v51];

      label = [MEMORY[0x277D75348] listPlatterBgColor];
      [(WFAdditionalSetupTableViewCell *)v17 setBackgroundColor:label];
    }

LABEL_27:
    goto LABEL_28;
  }

  v28 = WFLogForCategory(0);
  v29 = OSLogForWFLogLevel(1uLL);
  v30 = v29;
  if (WFCurrentLogLevel(v29, v31) && v28)
  {
    v32 = v28;
    if (os_log_type_enabled(v32, v30))
    {
      section2 = [pathCopy section];
      sections3 = [(WFBuddyViewController *)self sections];
      v35 = [(WFBuddyViewController *)self _debugSectionStringFromSections:sections3];
      v56 = 136315650;
      v57 = "[WFBuddyViewController tableView:cellForRowAtIndexPath:]";
      v58 = 2048;
      v59 = section2;
      v60 = 2112;
      v61 = v35;
      _os_log_impl(&dword_273FB9000, v32, v30, "%s: requested section (%lu) is not in expected sections [%@], returning default cell", &v56, 0x20u);
    }
  }

  v36 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
LABEL_29:

  return v36;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v27[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sections = [(WFBuddyViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  integerValue = [v7 integerValue];
  if (integerValue)
  {
    if (integerValue == 2)
    {
      alternateSetupTitle = [(WFBuddyViewController *)self alternateSetupTitle];
    }

    else if (integerValue == 1)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      alternateSetupTitle = [v9 localizedStringForKey:@"kWFLocEnableWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    }

    else
    {
      alternateSetupTitle = 0;
    }

LABEL_12:
    v26[0] = *MEMORY[0x277D740C0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v27[0] = systemBlueColor;
    v26[1] = *MEMORY[0x277D740A8];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v27[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

    [alternateSetupTitle sizeWithAttributes:v21];
    v23 = v22;
    [@"A" sizeWithAttributes:v21];
    v18 = ceil(v23 + v24 * 2.0);

    goto LABEL_13;
  }

  v11 = [pathCopy row];
  sortedNetworks = [(WFBuddyViewController *)self sortedNetworks];
  v13 = [sortedNetworks count];

  if (v11 == v13)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    alternateSetupTitle = [v14 localizedStringForKey:@"kWFLocBuddyFooterViewTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    alternateSetupTitle = 0;
  }

  v15 = [pathCopy row];
  sortedNetworks2 = [(WFBuddyViewController *)self sortedNetworks];
  v17 = [sortedNetworks2 count];

  if (v15 >= v17)
  {
    goto LABEL_12;
  }

  v18 = *MEMORY[0x277D76F30];
LABEL_13:

  return v18;
}

- (id)_cellForNetworkRecord:(id)record tableView:(id)view indexPath:(id)path
{
  recordCopy = record;
  v9 = [view dequeueReusableCellWithIdentifier:@"WFBuddyNetworkListCell" forIndexPath:path];
  title = [recordCopy title];
  [v9 setTitle:title];

  [v9 setSubtitle:0];
  [v9 setPersonalHotspot:{objc_msgSend(recordCopy, "iOSHotspot")}];
  [v9 setSecure:{objc_msgSend(recordCopy, "isSecure")}];
  [recordCopy scaledRSSI];
  [v9 setBars:WFSignalBarsFromScaledRSSI(v11)];
  ssid = [recordCopy ssid];

  currentNetwork = [(WFBuddyViewController *)self currentNetwork];
  ssid2 = [currentNetwork ssid];
  v15 = [ssid isEqualToString:ssid2];

  if (v15)
  {
    [(WFBuddyViewController *)self currentNetworkScaledRSSI];
    [v9 setBars:WFSignalBarsFromScaledRSSI(v16)];
    [v9 setState:self->_currentNetworkState];
  }

  if ([(WFBuddyViewController *)self showNetworkSettings])
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  [v9 setAccessoryType:v17];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v19 = MEMORY[0x277D74300];
  [v18 pointSize];
  v20 = [v19 boldSystemFontOfSize:?];
  nameLabel = [v9 nameLabel];
  [nameLabel setFont:v20];

  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
  textLabel = [v9 textLabel];
  [textLabel setTextColor:defaultTextColor];

  v24 = v9;
  return v9;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    sortedNetworks = [(WFBuddyViewController *)self sortedNetworks];
    v6 = [sortedNetworks objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    listDelegate = [(WFBuddyViewController *)self listDelegate];
    [listDelegate networkListViewController:self showSettingsForNetwork:v6 context:1];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 1)
  {
    alternateSetupFooter = [(WFBuddyViewController *)self alternateSetupFooter];
    if (alternateSetupFooter)
    {
      v7 = alternateSetupFooter;
      showAdditionalSetupInfo = [(WFBuddyViewController *)self showAdditionalSetupInfo];

      if (showAdditionalSetupInfo)
      {
        alternateSetupFooter = [(WFBuddyViewController *)self alternateSetupFooter];
      }

      else
      {
        alternateSetupFooter = 0;
      }
    }
  }

  else
  {
    alternateSetupFooter = 0;
  }

  return alternateSetupFooter;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) >= 3 && v8 && os_log_type_enabled(v8, v10))
  {
    v22 = 136315394;
    v23 = "[WFBuddyViewController tableView:didSelectRowAtIndexPath:]";
    v24 = 2112;
    v25 = pathCopy;
    _os_log_impl(&dword_273FB9000, v8, v10, "%s: indexPath %@", &v22, 0x16u);
  }

  sections = [(WFBuddyViewController *)self sections];
  v13 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  integerValue = [v13 integerValue];
  if (integerValue == 2)
  {
    buddyDelegate = [(WFBuddyViewController *)self buddyDelegate];
    [buddyDelegate buddyViewControllerDidPressAlternateSetupButton:self];
  }

  else if (!integerValue)
  {
    v15 = [pathCopy row];
    sortedNetworks = [(WFBuddyViewController *)self sortedNetworks];
    v17 = [sortedNetworks count];

    if (v15 == v17)
    {
      [(WFBuddyViewController *)self _chooseOtherNetworkTapped:0];
    }

    else
    {
      sortedNetworks2 = [(WFBuddyViewController *)self sortedNetworks];
      v20 = [sortedNetworks2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      listDelegate = [(WFBuddyViewController *)self listDelegate];
      [listDelegate networkListViewController:self didTapRecord:v20];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  footerViewCopy = footerView;
  if (section == 1)
  {
    v14 = footerViewCopy;
    alternateSetupFooter = [(WFBuddyViewController *)self alternateSetupFooter];
    footerViewCopy = v14;
    if (alternateSetupFooter)
    {
      showAdditionalSetupInfo = [(WFBuddyViewController *)self showAdditionalSetupInfo];

      footerViewCopy = v14;
      if (showAdditionalSetupInfo)
      {
        v10 = MEMORY[0x277D75348];
        v11 = v14;
        altTextColor = [v10 altTextColor];
        textLabel = [v11 textLabel];

        [textLabel setTextColor:altTextColor];
        footerViewCopy = v14;
      }
    }
  }
}

- (void)_chooseOtherNetworkTapped:(id)tapped
{
  v14 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v10 = 136315394;
    v11 = "[WFBuddyViewController _chooseOtherNetworkTapped:]";
    v12 = 2112;
    v13 = tappedCopy;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: sender %@", &v10, 0x16u);
  }

  listDelegate = [(WFBuddyViewController *)self listDelegate];
  if (objc_opt_respondsToSelector())
  {
    [listDelegate networkListViewControllerDidTapOtherNetwork:self];
  }
}

- (void)_enableWAPISwitchChanged:(id)changed
{
  changedCopy = changed;
  listDelegate = [(WFBuddyViewController *)self listDelegate];
  isOn = [changedCopy isOn];

  [listDelegate networkListViewController:self setWAPIEnabled:isOn];
}

- (UISwitch)enableWAPISwitch
{
  enableWAPISwitch = self->_enableWAPISwitch;
  if (!enableWAPISwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_enableWAPISwitch;
    self->_enableWAPISwitch = v5;
    v7 = v5;

    [(UISwitch *)self->_enableWAPISwitch addTarget:self action:sel__enableWAPISwitchChanged_ forControlEvents:4096];
    enableWAPISwitch = self->_enableWAPISwitch;
  }

  return enableWAPISwitch;
}

- (void)_notifyBuddyWiFiPickerIsVisble:(BOOL)visble
{
  visbleCopy = visble;
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFBuddyViewController _notifyBuddyWiFiPickerIsVisble:]";
    v11 = 1024;
    v12 = visbleCopy;
    _os_log_impl(&dword_273FB9000, v4, v6, "%s: visible %d", &v9, 0x12u);
  }

  v8 = _notifyBuddyWiFiPickerIsVisble__token;
  if (_notifyBuddyWiFiPickerIsVisble__token != -1 || (notify_register_check("com.apple.airportsettingsvisible", &_notifyBuddyWiFiPickerIsVisble__token), v8 = _notifyBuddyWiFiPickerIsVisble__token, _notifyBuddyWiFiPickerIsVisble__token != -1))
  {
    notify_set_state(v8, visbleCopy);
    notify_post("com.apple.airportsettingsvisible");
  }
}

- (id)_nameOfSection:(int64_t)section
{
  if (section > 2)
  {
    return @"invalid section";
  }

  else
  {
    return off_279EC62E0[section];
  }
}

- (id)_debugSectionStringFromSections:(id)sections
{
  v20 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  string = [MEMORY[0x277CCAB68] string];
  v6 = [sectionsCopy count];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = sectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = -[WFBuddyViewController _nameOfSection:](self, "_nameOfSection:", [*(*(&v15 + 1) + 8 * i) integerValue]);
        [string appendFormat:@"%lu: %@", v10, v13, v15];

        if (v6 - 1 != v10)
        {
          [string appendString:{@", "}];
        }

        ++v10;
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return string;
}

- (WFBuddyViewControllerDelegate)buddyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyDelegate);

  return WeakRetained;
}

- (WFNetworkListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

@end