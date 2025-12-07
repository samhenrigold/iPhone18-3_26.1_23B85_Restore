@interface WFAirportViewController
- (BOOL)_isChinaDevice;
- (BOOL)_refreshATJShownStateIfChanged;
- (BOOL)_shouldContinueUpdateNetworkList;
- (BOOL)showDiagnosticsCell;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (NSString)powerOffLocationWarning;
- (NSString)userAutoJoinDisabledWarning;
- (WFAirportViewController)init;
- (WFAirportViewControllerDelegate)listDelegate;
- (WFNetworkListRecord)joiningHotspot;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_askToJoinFooterString;
- (id)_askToJoinFooterStringForMode:(int64_t)mode;
- (id)_askToJoinStateStringForATJMode:(int64_t)mode;
- (id)_currentNetworkCell;
- (id)_currentNetworkCellIndexPath;
- (id)_defaultSectionsForEditing;
- (id)_defaultSectionsForPowerState:(BOOL)state;
- (id)_getAutoHotspotOptionText:(int64_t)text;
- (id)_indexPathForNetworkName:(id)name;
- (id)_nameOfSection:(unint64_t)section;
- (id)_passcodePromptForViewingKnownNetworksIsChinaDevice:(BOOL)device;
- (id)_sectionNameAtIndex:(unint64_t)index;
- (id)_sortedProfilesFromSet:(id)set;
- (id)_tableCellForKnownNetwork:(id)network tableView:(id)view indexPath:(id)path extraLeadingPadding:(BOOL)padding;
- (id)_tableCellForNetwork:(id)network tableView:(id)view indexPath:(id)path;
- (id)_touchIDPromptForKnownNetworksIsChinaDevice:(BOOL)device;
- (id)_wifiKnownNetworkContextOptionsIsChinaDevice:(BOOL)device;
- (id)headerIdentifierForSectionType:(unint64_t)type;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)_askToJoinMode;
- (int64_t)_askToJoinModeFromString:(id)string;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_sectionTypeAtSection:(int64_t)section;
- (unint64_t)powerState;
- (void)_adjustNavigationItemsForEditingMode;
- (void)_currentNetworkCellIndexPath;
- (void)_dumpSections;
- (void)_enableWAPISwitchChanged:(id)changed;
- (void)_loadEditButton;
- (void)_powerSwitchChanged:(id)changed;
- (void)_processPendingCurrentNetworkUpdate;
- (void)_promptAuthToViewKnownNetworkList;
- (void)_promptToJoinAdhoc:(id)adhoc;
- (void)_pushAskToJoinModeSelectionViewController;
- (void)_pushAutoInstantHotspotOptionSelectionViewController;
- (void)_reloadCurrentNetworkCell;
- (void)_reloadPowerSection;
- (void)_reloadSectionForHotspotChange;
- (void)_removeScreenProtector;
- (void)_submitDeletion;
- (void)_transitionToKnownNetworksList;
- (void)_transitionToScanList;
- (void)_updateAskToJoinMode:(int64_t)mode;
- (void)_updateCellsWithNewData:(id)data oldData:(id)oldData inSection:(unint64_t)section insertSection:(BOOL)insertSection datasourceSection:(unint64_t)datasourceSection;
- (void)_updateKnownNetworksDoneButtonForEditability;
- (void)_updateNetworkRestrictionHeader;
- (void)cancelEditing;
- (void)editKnownNetworks;
- (void)finishEditing;
- (void)knownNetworksDidBecomeActive;
- (void)knownNetworksWillEnterForeground;
- (void)knownNetworksWillResignActive;
- (void)loadView;
- (void)managedAppleIDStateChange:(BOOL)change;
- (void)powerModificationStateDidChange:(BOOL)change;
- (void)powerStateDidChange:(BOOL)change;
- (void)powerStateDidChangeToggle:(unint64_t)toggle;
- (void)promptConfirmAlert;
- (void)refresh;
- (void)refreshKnownNetworksUpdateTableView:(BOOL)view;
- (void)reloadCellsForNetworkNames:(id)names;
- (void)scrollToAirportCell:(unint64_t)cell;
- (void)setAskToJoinMode:(int64_t)mode;
- (void)setAutoInstantHotspotJoinOption:(int64_t)option;
- (void)setCurrentNetwork:(id)network;
- (void)setCurrentNetwork:(id)network previousNetwork:(id)previousNetwork reason:(unint64_t)reason;
- (void)setCurrentNetworkScaledRSSI:(float)i;
- (void)setCurrentNetworkState:(int64_t)state;
- (void)setCurrentNetworkSubtitle:(id)subtitle;
- (void)setDeviceCapability:(int64_t)capability;
- (void)setNetworks:(id)networks;
- (void)setScanning:(BOOL)scanning;
- (void)setUserAutoJoinEnabled:(BOOL)enabled;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAutoInstantHotspotSetting:(int64_t)setting;
- (void)updateViewsForNetworks:(id)networks;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation WFAirportViewController

- (WFAirportViewController)init
{
  if (WFShouldUseInsetTableView())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v14.receiver = self;
  v14.super_class = WFAirportViewController;
  v4 = [(WFAirportViewController *)&v14 initWithStyle:v3];
  if (v4 && (v5 = dispatch_queue_create(0, 0), internalQueue = v4->_internalQueue, v4->_internalQueue = v5, internalQueue, v4->_internalQueue))
  {
    orderedSet = [MEMORY[0x277CBEB70] orderedSet];
    sections = v4->_sections;
    v4->_sections = orderedSet;

    v4->_showOtherNetwork = 1;
    v4->_userAutoJoinEnabled = 1;
    v4->_currentNetworkScaledRSSI = 1.0;
    v4->_askToJoinShown = [(WFAirportViewController *)v4 _askToJoinShouldBeVisible];
    listDelegate = [(WFAirportViewController *)v4 listDelegate];
    v4->_disablePowerModification = [listDelegate networkListViewControllerPowerModificationDisabled:v4];

    listDelegate2 = [(WFAirportViewController *)v4 listDelegate];
    v4->_isManagedAppleID = [listDelegate2 networkListViewControllerIsManagedAppleID:v4];

    v4->_isInEditingMode = 0;
    v4->_tableViewIsUpdating = 0;
    v4->_networkResultsChangedWhileUIUpdates = 0;
    v11 = +[WFNetworkRowConfig settingsNetworkRowConfig];
    currentNetworkRowConfig = v4->_currentNetworkRowConfig;
    v4->_currentNetworkRowConfig = v11;

    v4->_isUsingSwiftList = 0;
    v4->_isAuthenticating = 0;
    v4->_usePlacardCell = _os_feature_enabled_impl();
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = WFAirportViewController;
  [(WFInsetTableViewController *)&v33 loadView];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D757B0] nibWithNibName:@"WFNetworkListCell" bundle:v3];
  tableView = [(WFAirportViewController *)self tableView];
  [tableView registerNib:v4 forCellReuseIdentifier:@"WFNetworkCell"];

  v6 = [MEMORY[0x277D757B0] nibWithNibName:@"WFHotspotCell" bundle:v3];
  tableView2 = [(WFAirportViewController *)self tableView];
  [tableView2 registerNib:v6 forCellReuseIdentifier:@"WFHotspotCell"];

  tableView3 = [(WFAirportViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFWiFiPlacardCell"];

  tableView4 = [(WFAirportViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFOtherNetworkCell"];

  tableView5 = [(WFAirportViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFPowerCell"];

  tableView6 = [(WFAirportViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFUnconfiguredNetworkCell"];

  tableView7 = [(WFAirportViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFDiagnosticsCell"];

  tableView8 = [(WFAirportViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkDataUsageCellIdentifier"];

  tableView9 = [(WFAirportViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkWAPICellIdentifier"];

  tableView10 = [(WFAirportViewController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFNetworkKnownNetworksCellIdentifier"];

  tableView11 = [(WFAirportViewController *)self tableView];
  [tableView11 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkEditableNetworksListCellIdentifier"];

  tableView12 = [(WFAirportViewController *)self tableView];
  [tableView12 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkProfileNetworksListCellIdentifier"];

  tableView13 = [(WFAirportViewController *)self tableView];
  [tableView13 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkAlternativeCellIdentifier"];

  tableView14 = [(WFAirportViewController *)self tableView];
  [tableView14 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableKnownHeaderIdentifier"];

  tableView15 = [(WFAirportViewController *)self tableView];
  [tableView15 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableInfraHeaderIdentifier"];

  tableView16 = [(WFAirportViewController *)self tableView];
  [tableView16 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTablePopularHeaderIdentifier"];

  tableView17 = [(WFAirportViewController *)self tableView];
  [tableView17 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableAdhocHeaderIdentifier"];

  tableView18 = [(WFAirportViewController *)self tableView];
  [tableView18 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableEditableHeaderIdentifier"];

  tableView19 = [(WFAirportViewController *)self tableView];
  [tableView19 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableManagedHeaderIdentifier"];

  tableView20 = [(WFAirportViewController *)self tableView];
  [tableView20 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableUnconfiguredHeaderIdentifier"];

  v26 = *MEMORY[0x277D76F30];
  tableView21 = [(WFAirportViewController *)self tableView];
  [tableView21 setRowHeight:v26];

  tableView22 = [(WFAirportViewController *)self tableView];
  [tableView22 setEstimatedRowHeight:v26];

  tableView23 = [(WFAirportViewController *)self tableView];
  [tableView23 setEstimatedSectionFooterHeight:0.0];

  tableView24 = [(WFAirportViewController *)self tableView];
  [tableView24 setEstimatedSectionHeaderHeight:44.0];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WFAirportViewController_loadView__block_invoke;
  block[3] = &unk_279EC5538;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __35__WFAirportViewController_loadView__block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) listDelegate];
  [*(a1 + 32) setShowDiagnostics:{objc_msgSend(v10, "airportSettingsViewControllerShouldShowDiagnosticsMode:", *(a1 + 32))}];
  [*(a1 + 32) setShowKnownNetworks:{objc_msgSend(v10, "airportSettingsViewControllerShouldShowKnownNetworks:", *(a1 + 32))}];
  [*(a1 + 32) setShowNANUI:{objc_msgSend(v10, "airportSettingsViewControllerShouldShowNANUI:", *(a1 + 32))}];
  v2 = [*(a1 + 32) _defaultSectionsForPowerState:{objc_msgSend(*(a1 + 32), "powered")}];
  [*(a1 + 32) setSections:v2];

  if ([*(a1 + 32) showKnownNetworks])
  {
    v3 = [*(a1 + 32) sections];
    v4 = [v3 mutableCopy];

    [v4 addObject:&unk_288322420];
    [*(a1 + 32) setSections:v4];
  }

  v5 = [*(a1 + 32) listDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [*(a1 + 32) listDelegate];
    *(*(a1 + 32) + 1096) = [v8 networkListViewControllerOverrideDeviceCapability:*(a1 + 32)];
  }

  else
  {
    *(*(a1 + 32) + 1096) = WFCurrentDeviceCapability(v7);
  }

  [*(a1 + 32) _loadEditButton];
  v9 = [*(a1 + 32) tableView];
  [v9 reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFAirportViewController;
  [(WFAirportViewController *)&v5 viewWillAppear:appear];
  [(WFAirportViewController *)self refresh];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate networkListViewControllerDidAppear:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = WFAirportViewController;
  [(WFAirportViewController *)&v5 viewDidDisappear:disappear];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate networkListViewControllerDidDisappear:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WFAirportViewController;
  [(WFAirportViewController *)&v3 viewDidLoad];
  [(WFAirportViewController *)self _updateNetworkRestrictionHeader];
}

- (void)willMoveToParentViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = WFAirportViewController;
  [(WFAirportViewController *)&v9 willMoveToParentViewController:?];
  if (!controller)
  {
    parentViewController = [(WFAirportViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setTitleView:0];

    navigationItem2 = [(WFAirportViewController *)self navigationItem];
    [navigationItem2 setTitleView:0];

    navigationItem3 = [(WFAirportViewController *)self navigationItem];
    [navigationItem3 setBackButtonTitle:0];
  }
}

- (void)setDeviceCapability:(int64_t)capability
{
  v12 = *MEMORY[0x277D85DE8];
  self->_deviceCapability = capability;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      v9 = WFStringFromDeviceCapability(capability);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_273FB9000, v8, v6, "Device Capability: %@", &v10, 0xCu);
    }
  }
}

- (BOOL)showDiagnosticsCell
{
  if ([(WFAirportViewController *)self showDiagnostics])
  {
    return 1;
  }

  return [(WFAirportViewController *)self showNANUI];
}

- (void)setCurrentNetworkState:(int64_t)state
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    joiningHotspot = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && joiningHotspot && os_log_type_enabled(joiningHotspot, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, joiningHotspot, v7, "Not setting current network state for current network in edit mode", buf, 2u);
    }
  }

  else
  {
    if (self->_currentNetworkState == state)
    {
      return;
    }

    self->_currentNetworkState = state;
    listDelegate = [(WFAirportViewController *)self listDelegate];
    v10 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];

    currentNetworkRowConfig = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig setConnectionState:state];

    currentNetworkRowConfig2 = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig2 setProblematicConnection:v10];

    joiningHotspot = [(WFAirportViewController *)self joiningHotspot];
    if (joiningHotspot)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) >= 3 && v13 && os_log_type_enabled(v13, v15))
      {
        *buf = 136315394;
        v25 = "[WFAirportViewController setCurrentNetworkState:]";
        v26 = 2112;
        v27 = joiningHotspot;
        _os_log_impl(&dword_273FB9000, v13, v15, "%s: joining hotspot %@", buf, 0x16u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__WFAirportViewController_setCurrentNetworkState___block_invoke;
      block[3] = &unk_279EC5538;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    _currentNetworkCell = [(WFAirportViewController *)self _currentNetworkCell];
    v18 = _currentNetworkCell;
    if (_currentNetworkCell)
    {
      [_currentNetworkCell setConnectionError:v10];
      [v18 setState:self->_currentNetworkState];
    }

    else
    {
      v19 = WFLogForCategory(0);
      v20 = OSLogForWFLogLevel(3uLL);
      v21 = v20;
      if (WFCurrentLogLevel(v20, v22) >= 3 && v19 && os_log_type_enabled(v19, v21))
      {
        *buf = 136315138;
        v25 = "[WFAirportViewController setCurrentNetworkState:]";
        _os_log_impl(&dword_273FB9000, v19, v21, "%s: nil currentNetwork cell", buf, 0xCu);
      }
    }
  }
}

- (void)setCurrentNetworkScaledRSSI:(float)i
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_273FB9000, v5, v7, "Not setting RSSI for current network in edit mode", &v19, 2u);
    }
  }

  else
  {
    if (self->_currentNetworkScaledRSSI == i)
    {
      return;
    }

    self->_currentNetworkScaledRSSI = i;
    listDelegate = [(WFAirportViewController *)self listDelegate];
    v10 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];

    v11 = WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI);
    currentNetworkRowConfig = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig setSignalBars:v11];

    currentNetworkRowConfig2 = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig2 setProblematicConnection:v10];

    _currentNetworkCell = [(WFAirportViewController *)self _currentNetworkCell];
    v5 = _currentNetworkCell;
    if (_currentNetworkCell)
    {
      if (v10)
      {
        [_currentNetworkCell setConnectionError:1];
      }

      else
      {
        [_currentNetworkCell setConnectionError:0];
        [v5 setBars:WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI)];
      }
    }

    else
    {
      v15 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(3uLL);
      v17 = v16;
      if (WFCurrentLogLevel(v16, v18) >= 3 && v15 && os_log_type_enabled(v15, v17))
      {
        v19 = 136315138;
        v20 = "[WFAirportViewController setCurrentNetworkScaledRSSI:]";
        _os_log_impl(&dword_273FB9000, v15, v17, "%s: nil currentNetwork cell", &v19, 0xCu);
      }
    }
  }
}

- (void)setCurrentNetwork:(id)network
{
  networkCopy = network;
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      *v9 = 0;
      _os_log_impl(&dword_273FB9000, v5, v7, "Not updating current network in edit mode", v9, 2u);
    }
  }

  else
  {
    [(WFAirportViewController *)self setCurrentNetwork:networkCopy previousNetwork:0 reason:0];
  }
}

- (void)setCurrentNetwork:(id)network previousNetwork:(id)previousNetwork reason:(unint64_t)reason
{
  networkCopy = network;
  previousNetworkCopy = previousNetwork;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke;
  v13[3] = &unk_279EC5560;
  v13[4] = self;
  v14 = networkCopy;
  v15 = previousNetworkCopy;
  reasonCopy = reason;
  v11 = previousNetworkCopy;
  v12 = networkCopy;
  dispatch_sync(internalQueue, v13);
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke(uint64_t a1)
{
  *&v270[11] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) joiningHotspot];
  if (v4)
  {
    [*(a1 + 32) setJoiningHotspot:0];
    v5 = WFLogForCategory(0);
    v1 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel(v1, v6) >= 3 && v5)
    {
      v2 = v5;
      if (os_log_type_enabled(v2, v1))
      {
        *buf = 136315394;
        v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v266 = 2112;
        *v267 = v4;
        _os_log_impl(&dword_273FB9000, v2, v1, "%s: joining hotspot %@, clearing and resetting state", buf, 0x16u);
      }
    }

    [*(a1 + 32) _reloadSectionForHotspotChange];
  }

  v7 = [*(a1 + 32) currentNetwork];
  if (v7 && *(a1 + 40))
  {
    v1 = [*(a1 + 32) currentNetwork];
    if ([v1 isEqual:*(a1 + 40)])
    {
      v2 = [*(a1 + 32) currentNetwork];
      v8 = [v2 canBeDisplayedAsCurrent];
      if (v8 == [*(a1 + 40) canBeDisplayedAsCurrent])
      {

        goto LABEL_47;
      }

      v9 = 1;
      v10 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = [*(a1 + 32) currentNetwork];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 40) == 0;
  }

  if (v9)
  {

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v10)
  {
LABEL_23:

    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_47:
    v16 = WFLogForCategory(0);
    v45 = OSLogForWFLogLevel(1uLL);
    v46 = v45;
    if (WFCurrentLogLevel(v45, v47) && v16)
    {
      v16 = v16;
      if (os_log_type_enabled(v16, v46))
      {
        v48 = [*(a1 + 32) currentNetwork];
        v49 = [*(a1 + 32) currentNetwork];
        v50 = [v49 hash];
        *buf = 136315650;
        v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v266 = 2112;
        *v267 = v48;
        *&v267[8] = 2048;
        v268 = v50;
        _os_log_impl(&dword_273FB9000, v16, v46, "%s: no change to current network (%@ - %lu)", buf, 0x20u);
      }
    }

    goto LABEL_52;
  }

LABEL_20:

  if (v12)
  {
    goto LABEL_47;
  }

LABEL_24:
  v13 = [*(a1 + 32) _refreshATJShownStateIfChanged];
  v14 = [*(a1 + 32) powered];
  v15 = *(a1 + 32);
  if (*(v15 + 1058) == 1)
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel(v17, v18) || !v16 || !os_log_type_enabled(v16, v17))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v19 = "Trying to set current network in editing mode, discard operation.";
    v20 = v16;
    v21 = v17;
    v22 = 2;
LABEL_39:
    _os_log_impl(&dword_273FB9000, v20, v21, v19, buf, v22);
LABEL_52:

    goto LABEL_53;
  }

  v23 = v14;
  v24 = *(v15 + 1056);
  v16 = WFLogForCategory(0);
  if (v24 == 1)
  {
    v25 = OSLogForWFLogLevel(3uLL);
    v26 = v25;
    if (WFCurrentLogLevel(v25, v27) >= 3 && v16)
    {
      v28 = v16;
      if (os_log_type_enabled(v28, v26))
      {
        v29 = *(a1 + 40);
        v30 = [*(a1 + 32) currentNetwork];
        *buf = 138412546;
        v265 = v29;
        v266 = 2112;
        *v267 = v30;
        _os_log_impl(&dword_273FB9000, v28, v26, "table view update in progress, pending network update to '%@' current network='%@'", buf, 0x16u);
      }
    }

    v31 = [[WFPendingNetworkUpdate alloc] initWithNetwork:*(a1 + 40)];
    v32 = *(a1 + 32);
    v33 = *(v32 + 1216);
    *(v32 + 1216) = v31;

    v16 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel(v34, v35) || !v16 || !os_log_type_enabled(v16, v34))
    {
      goto LABEL_52;
    }

    v36 = *(*(a1 + 32) + 1216);
    *buf = 136315394;
    v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    v266 = 2112;
    *v267 = v36;
    v19 = "%s: pending network update initialized %@";
    v20 = v16;
    v21 = v34;
    v22 = 22;
    goto LABEL_39;
  }

  v37 = OSLogForWFLogLevel(1uLL);
  v38 = v37;
  v259 = v23;
  if (WFCurrentLogLevel(v37, v39) && v16)
  {
    v40 = v16;
    if (os_log_type_enabled(v40, v38))
    {
      v258 = v13;
      v41 = [*(a1 + 48) ssid];
      v42 = [*(a1 + 40) ssid];
      v43 = *(a1 + 56);
      if (v43)
      {
        if (v43 == 1)
        {
          v44 = @"user initiated";
        }

        else
        {
          v51 = WFLogForCategory(0);
          v52 = OSLogForWFLogLevel(1uLL);
          type = v52;
          if (WFCurrentLogLevel(v52, v53) && v51 && os_log_type_enabled(v51, type))
          {
            *buf = 136315394;
            v265 = "__WFNetworkListNetworkChangeReasonToString";
            v266 = 2048;
            *v267 = v43;
            _os_log_impl(&dword_273FB9000, v51, type, "%s: %lu is invalid WFNetworkListNetworkChangeReason", buf, 0x16u);
          }

          v44 = 0;
          v23 = v259;
        }
      }

      else
      {
        v44 = @"automatic";
      }

      *buf = 136316162;
      v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v266 = 2112;
      *v267 = v41;
      *&v267[8] = 2112;
      v268 = v42;
      v269 = 1024;
      *v270 = v23;
      v270[2] = 2112;
      *&v270[3] = v44;
      _os_log_impl(&dword_273FB9000, v40, v38, "%s: old: %@ new: %@ powered: %d reason: %@", buf, 0x30u);

      v13 = v258;
    }
  }

  v54 = [*(a1 + 32) tableView];
  [v54 beginUpdates];

  v55 = *(a1 + 40);
  if (v55)
  {
    if ([v55 isAdhoc])
    {
      v56 = [*(a1 + 32) adhocNetworks];

      if (!v56)
      {
        __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_5();
        goto LABEL_141;
      }

      v57 = [*(a1 + 32) adhocNetworks];
      v58 = &unk_288322438;
    }

    else if ([*(a1 + 40) isUnconfiguredAccessory])
    {
      v62 = [*(a1 + 32) unconfiguredNetworks];

      if (!v62)
      {
        __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_4();
        goto LABEL_141;
      }

      v57 = [*(a1 + 32) unconfiguredNetworks];
      v58 = &unk_288322450;
    }

    else if ([*(a1 + 40) isPopular])
    {
      v63 = [*(a1 + 32) popularNetworks];

      if (!v63)
      {
        __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_3();
        goto LABEL_141;
      }

      v57 = [*(a1 + 32) popularNetworks];
      v58 = &unk_288322468;
    }

    else
    {
      v64 = [*(a1 + 40) isKnown];
      v65 = *(a1 + 32);
      if (v64)
      {
        v66 = [v65 knownNetworks];

        if (!v66)
        {
          __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_2();
          goto LABEL_141;
        }

        v57 = [*(a1 + 32) knownNetworks];
        v58 = &unk_288322480;
      }

      else
      {
        v67 = [v65 infraNetworks];

        if (!v67)
        {
          __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_1();
          goto LABEL_141;
        }

        v57 = [*(a1 + 32) infraNetworks];
        v58 = &unk_288322498;
      }
    }

    v68 = v13;
    v69 = [v57 indexOfObject:*(a1 + 40)];

    v70 = [*(a1 + 32) sections];
    v71 = [v70 indexOfObject:v58];

    v16 = WFLogForCategory(0);
    if (v71 == 0x7FFFFFFFFFFFFFFFLL || v69 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v82 = OSLogForWFLogLevel(1uLL);
      v83 = v82;
      if (WFCurrentLogLevel(v82, v84) && v16)
      {
        v85 = v16;
        if (os_log_type_enabled(v85, v83))
        {
          v86 = *(a1 + 40);
          *buf = 136315906;
          v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v266 = 2114;
          *v267 = v86;
          *&v267[8] = 2050;
          v268 = v71;
          v269 = 2050;
          *v270 = v69;
          _os_log_impl(&dword_273FB9000, v85, v83, "%s: can't find new current network in data %{public}@ (%{public}lu,%{public}lu)", buf, 0x2Au);
        }
      }

      [*(a1 + 32) _dumpSections];
    }

    else
    {
      v72 = OSLogForWFLogLevel(3uLL);
      v73 = v72;
      if (WFCurrentLogLevel(v72, v74) >= 3 && v16)
      {
        v75 = v16;
        if (os_log_type_enabled(v75, v73))
        {
          v76 = [*(a1 + 32) _nameOfSection:v71];
          *buf = 136315906;
          v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v266 = 2112;
          *v267 = v76;
          *&v267[8] = 2048;
          v268 = v71;
          v269 = 2048;
          *v270 = v69;
          _os_log_impl(&dword_273FB9000, v75, v73, "%s: removing from section %@ (%lu) at row %lu", buf, 0x2Au);
        }
      }

      v77 = [*(a1 + 32) pendingNetworks];
      v16 = [v77 mutableCopy];

      [v16 removeObject:*(a1 + 40)];
      objc_storeStrong((*(a1 + 32) + 1224), v16);
      if (*(*(a1 + 32) + 1056) == 1)
      {
        v78 = WFLogForCategory(0);
        v79 = OSLogForWFLogLevel(3uLL);
        v80 = v79;
        if (WFCurrentLogLevel(v79, v81) >= 3 && v78 && os_log_type_enabled(v78, v80))
        {
          *buf = 0;
          _os_log_impl(&dword_273FB9000, v78, v80, "table is updating while setting the current network", buf, 2u);
        }

        *(*(a1 + 32) + 1057) = 1;
        goto LABEL_52;
      }

      if ([*(a1 + 40) isAdhoc])
      {
        v87 = WFLogForCategory(0);
        v88 = OSLogForWFLogLevel(3uLL);
        v89 = v88;
        if (WFCurrentLogLevel(v88, v90) >= 3 && v87)
        {
          v91 = v87;
          if (os_log_type_enabled(v91, v89))
          {
            *buf = 136315138;
            v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            _os_log_impl(&dword_273FB9000, v91, v89, "%s: removing from adhoc", buf, 0xCu);
          }
        }

        v92 = [*(a1 + 32) adhocNetworks];
        v93 = [v92 mutableCopy];

        v94 = [*(a1 + 32) adhocNetworks];
        v95 = [v94 mutableCopy];

        [v93 removeObject:*(a1 + 40)];
        v96 = *(a1 + 32);
        v97 = [v96 sections];
        v98 = [v97 indexOfObject:&unk_288322438];
        v99 = v96;
        v100 = v93;
        v101 = v95;
        v102 = 4;
      }

      else if ([*(a1 + 40) isUnconfiguredAccessory])
      {
        v103 = WFLogForCategory(0);
        v104 = OSLogForWFLogLevel(3uLL);
        v105 = v104;
        if (WFCurrentLogLevel(v104, v106) >= 3 && v103)
        {
          v107 = v103;
          if (os_log_type_enabled(v107, v105))
          {
            *buf = 136315138;
            v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            _os_log_impl(&dword_273FB9000, v107, v105, "%s: removing from accessory", buf, 0xCu);
          }
        }

        v108 = [*(a1 + 32) unconfiguredNetworks];
        v93 = [v108 mutableCopy];

        v109 = [*(a1 + 32) unconfiguredNetworks];
        v95 = [v109 mutableCopy];

        [v93 removeObject:*(a1 + 40)];
        v110 = *(a1 + 32);
        v97 = [v110 sections];
        v98 = [v97 indexOfObject:&unk_288322450];
        v99 = v110;
        v100 = v93;
        v101 = v95;
        v102 = 5;
      }

      else if ([*(a1 + 40) isPopular])
      {
        v111 = WFLogForCategory(0);
        v112 = OSLogForWFLogLevel(3uLL);
        v113 = v112;
        if (WFCurrentLogLevel(v112, v114) >= 3 && v111)
        {
          v115 = v111;
          if (os_log_type_enabled(v115, v113))
          {
            *buf = 136315138;
            v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            _os_log_impl(&dword_273FB9000, v115, v113, "%s: removing from popular", buf, 0xCu);
          }
        }

        v116 = [*(a1 + 32) popularNetworks];
        v93 = [v116 mutableCopy];

        v117 = [*(a1 + 32) popularNetworks];
        v95 = [v117 mutableCopy];

        [v93 removeObject:*(a1 + 40)];
        v118 = *(a1 + 32);
        v97 = [v118 sections];
        v98 = [v97 indexOfObject:&unk_288322468];
        v99 = v118;
        v100 = v93;
        v101 = v95;
        v102 = 2;
      }

      else
      {
        v119 = [*(a1 + 40) isKnown];
        v120 = WFLogForCategory(0);
        v121 = OSLogForWFLogLevel(3uLL);
        v122 = v121;
        v125 = WFCurrentLogLevel(v121, v123) > 2 && v120 != 0;
        if (v119)
        {
          if (v125)
          {
            v126 = v120;
            if (os_log_type_enabled(v126, v122))
            {
              *buf = 136315138;
              v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
              _os_log_impl(&dword_273FB9000, v126, v122, "%s: removing from known", buf, 0xCu);
            }
          }

          v127 = [*(a1 + 32) knownNetworks];
          v93 = [v127 mutableCopy];

          v128 = [*(a1 + 32) knownNetworks];
          v95 = [v128 mutableCopy];

          [v93 removeObject:*(a1 + 40)];
          v129 = *(a1 + 32);
          v97 = [v129 sections];
          v98 = [v97 indexOfObject:&unk_288322480];
          v99 = v129;
          v100 = v93;
          v101 = v95;
          v102 = 1;
        }

        else
        {
          if (v125)
          {
            v130 = v120;
            if (os_log_type_enabled(v130, v122))
            {
              *buf = 136315138;
              v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
              _os_log_impl(&dword_273FB9000, v130, v122, "%s: removing from infra", buf, 0xCu);
            }
          }

          v131 = [*(a1 + 32) infraNetworks];
          v93 = [v131 mutableCopy];

          v132 = [*(a1 + 32) infraNetworks];
          v95 = [v132 mutableCopy];

          [v93 removeObject:*(a1 + 40)];
          v133 = *(a1 + 32);
          v97 = [v133 sections];
          v98 = [v97 indexOfObject:&unk_288322498];
          v99 = v133;
          v100 = v93;
          v101 = v95;
          v102 = 3;
        }
      }

      [v99 _updateCellsWithNewData:v100 oldData:v101 inSection:v98 insertSection:0 datasourceSection:v102];
    }

    v13 = v68;
  }

  else
  {
    v16 = WFLogForCategory(0);
    v59 = OSLogForWFLogLevel(1uLL);
    v60 = v59;
    if (WFCurrentLogLevel(v59, v61) && v16 && os_log_type_enabled(v16, v60))
    {
      *buf = 136315138;
      v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v16, v60, "%s: current network is nil", buf, 0xCu);
    }
  }

LABEL_141:
  v134 = *(a1 + 32);
  v135 = 0x280933000uLL;
  if (!v259)
  {
    if (*(v134 + 1059))
    {
      goto LABEL_229;
    }

    if (*(a1 + 40))
    {
      goto LABEL_229;
    }

    v138 = *(v134 + 1072);
    if (!v138 || ![v138 canBeDisplayedAsCurrent])
    {
      goto LABEL_229;
    }

    if ([*(a1 + 32) showDiagnosticsCell])
    {
      v139 = 2;
    }

    else
    {
      v139 = 1;
    }

    v140 = [*(a1 + 32) rowCountWithPlacardCell:v139];
    v141 = [*(a1 + 32) sections];
    v142 = [v141 indexOfObject:&unk_2883224B0];

    v143 = WFLogForCategory(0);
    v144 = OSLogForWFLogLevel(1uLL);
    v145 = v144;
    if (WFCurrentLogLevel(v144, v146) && v143)
    {
      v147 = v13;
      v148 = v143;
      if (os_log_type_enabled(v148, v145))
      {
        v149 = [*(a1 + 32) _nameOfSection:v142];
        *buf = 136315906;
        v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v266 = 2112;
        *v267 = v149;
        *&v267[8] = 2048;
        v268 = v142;
        v269 = 2048;
        *v270 = v140;
        _os_log_impl(&dword_273FB9000, v148, v145, "%s: not powered, removing current network cell at section: %@ (%lu) row: %lu", buf, 0x2Au);
      }

      v13 = v147;
      v135 = 0x280933000;
    }

    if (v142 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v249 = [MEMORY[0x277CCAA70] indexPathForRow:v140 inSection:v142];
      v250 = [*(a1 + 32) tableView];
      v251 = [v250 cellForRowAtIndexPath:v249];

      if (v251)
      {
        v252 = [*(a1 + 32) tableView];
        v260 = v249;
        v253 = [MEMORY[0x277CBEA60] arrayWithObjects:&v260 count:1];
        [v252 deleteRowsAtIndexPaths:v253 withRowAnimation:100];
      }

      else
      {
        v252 = WFLogForCategory(0);
        v254 = OSLogForWFLogLevel(1uLL);
        v255 = v254;
        if (WFCurrentLogLevel(v254, v256) && v252 && os_log_type_enabled(v252, v255))
        {
          *buf = 136315138;
          v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          _os_log_impl(&dword_273FB9000, v252, v255, "%s: Tried to delete current network row when not it wasn't visible", buf, 0xCu);
        }
      }

      goto LABEL_229;
    }

    v150 = WFLogForCategory(0);
    v151 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel(v151, v152) || !v150 || !os_log_type_enabled(v150, v151))
    {
      goto LABEL_226;
    }

    *buf = 136315138;
    v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    v153 = v150;
    v154 = v151;
    goto LABEL_178;
  }

  if (*(v134 + 1059))
  {
    goto LABEL_179;
  }

  v136 = [v134 currentNetwork];
  if (!v136 && ([*(a1 + 40) canBeDisplayedAsCurrent] & 1) != 0)
  {
    goto LABEL_290;
  }

  v137 = [*(a1 + 32) currentNetwork];
  if ([v137 canBeDisplayedAsCurrent])
  {

    goto LABEL_179;
  }

  v16 = [*(a1 + 40) canBeDisplayedAsCurrent];

  if (v16)
  {
LABEL_290:
    if ([*(a1 + 32) showDiagnosticsCell])
    {
      v155 = 2;
    }

    else
    {
      v155 = 1;
    }

    v156 = [*(a1 + 32) rowCountWithPlacardCell:v155];
    v157 = [*(a1 + 32) sections];
    v158 = [v157 indexOfObject:&unk_2883224B0];

    v150 = WFLogForCategory(0);
    v159 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel(v159, v160))
    {
      v161 = v150 == 0;
    }

    else
    {
      v161 = 1;
    }

    v162 = !v161;
    if (v158 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v162)
      {
        v165 = v13;
        v166 = v150;
        if (os_log_type_enabled(v166, v159))
        {
          v167 = [*(a1 + 32) _nameOfSection:v158];
          *buf = 136315906;
          v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v266 = 2112;
          *v267 = v167;
          *&v267[8] = 2048;
          v268 = v158;
          v269 = 2048;
          *v270 = v156;
          _os_log_impl(&dword_273FB9000, v166, v159, "%s: inserting into section: %@ (%lu) row: %lu", buf, 0x2Au);
        }

        v13 = v165;
        v135 = 0x280933000;
      }

      v168 = [*(a1 + 32) tableView];
      v169 = [MEMORY[0x277CCAA70] indexPathForRow:v156 inSection:v158];
      v263 = v169;
      v170 = [MEMORY[0x277CBEA60] arrayWithObjects:&v263 count:1];
      [v168 insertRowsAtIndexPaths:v170 withRowAnimation:3];
      goto LABEL_228;
    }

    if (!v162 || !os_log_type_enabled(v150, v159))
    {
      goto LABEL_226;
    }

    *buf = 136315138;
    v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    v153 = v150;
    v154 = v159;
LABEL_178:
    _os_log_impl(&dword_273FB9000, v153, v154, "%s: WFAirportSectionPower section not found", buf, 0xCu);
LABEL_226:

    [*(a1 + 32) _dumpSections];
    goto LABEL_229;
  }

LABEL_179:
  v163 = *(a1 + 32);
  if (v163[1059])
  {
    goto LABEL_209;
  }

  v164 = *(a1 + 40);
  if (v164)
  {
    if (([*(a1 + 40) canBeDisplayedAsCurrent] & 1) == 0)
    {
LABEL_192:
      v171 = [*(a1 + 32) currentNetwork];
      v172 = [v171 canBeDisplayedAsCurrent];

      if (v164)
      {
        if (v172)
        {
          goto LABEL_194;
        }
      }

      else
      {

        if (v172)
        {
          goto LABEL_194;
        }
      }
    }

LABEL_209:
    if ((*(*(a1 + 32) + 1059) & 1) != 0 || ![*(a1 + 40) canBeDisplayedAsCurrent])
    {
      goto LABEL_229;
    }

    if ([*(a1 + 32) showDiagnosticsCell])
    {
      v191 = 2;
    }

    else
    {
      v191 = 1;
    }

    v192 = [*(a1 + 32) rowCountWithPlacardCell:v191];
    v193 = [*(a1 + 32) sections];
    v194 = [v193 indexOfObject:&unk_2883224B0];

    v195 = WFLogForCategory(0);
    v196 = OSLogForWFLogLevel(1uLL);
    v197 = v196;
    if (WFCurrentLogLevel(v196, v198) && v195)
    {
      v199 = v13;
      v200 = v195;
      if (os_log_type_enabled(v200, v197))
      {
        v201 = [*(a1 + 32) _nameOfSection:v194];
        *buf = 136315906;
        v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v266 = 2112;
        *v267 = v201;
        *&v267[8] = 2048;
        v268 = v194;
        v269 = 2048;
        *v270 = v192;
        _os_log_impl(&dword_273FB9000, v200, v197, "%s: reloading at section: %@ (%lu) row: %lu", buf, 0x2Au);
      }

      v13 = v199;
      v135 = 0x280933000uLL;
    }

    if (v194 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v150 = WFLogForCategory(0);
      v202 = OSLogForWFLogLevel(1uLL);
      v185 = v202;
      if (!WFCurrentLogLevel(v202, v203) || !v150)
      {
        goto LABEL_226;
      }

      v187 = v150;
      if (!os_log_type_enabled(v187, v185))
      {
        goto LABEL_225;
      }

      *buf = 136315138;
      v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
LABEL_224:
      _os_log_impl(&dword_273FB9000, v187, v185, "%s: WFAirportSectionPower section not found", buf, 0xCu);
LABEL_225:

      goto LABEL_226;
    }

    v168 = [*(a1 + 32) tableView];
    v169 = [MEMORY[0x277CCAA70] indexPathForRow:v192 inSection:v194];
    v261 = v169;
    v170 = [MEMORY[0x277CBEA60] arrayWithObjects:&v261 count:1];
    [v168 reloadRowsAtIndexPaths:v170 withRowAnimation:100];
LABEL_228:

    [*(a1 + 32) setUserAutoJoinEnabled:1];
    goto LABEL_229;
  }

  v16 = [v163 currentNetwork];
  if (![v16 canBeDisplayedAsCurrent])
  {
    if (([*(a1 + 40) canBeDisplayedAsCurrent] & 1) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_209;
  }

LABEL_194:
  if ([*(a1 + 32) showDiagnosticsCell])
  {
    v173 = 2;
  }

  else
  {
    v173 = 1;
  }

  v174 = [*(a1 + 32) rowCountWithPlacardCell:v173];
  v175 = [*(a1 + 32) sections];
  v176 = [v175 indexOfObject:&unk_2883224B0];

  v177 = WFLogForCategory(0);
  v178 = OSLogForWFLogLevel(1uLL);
  v179 = v178;
  if (WFCurrentLogLevel(v178, v180) && v177)
  {
    v181 = v13;
    v182 = v177;
    if (os_log_type_enabled(v182, v179))
    {
      v183 = [*(a1 + 32) _nameOfSection:v176];
      *buf = 136315906;
      v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v266 = 2112;
      *v267 = v183;
      *&v267[8] = 2048;
      v268 = v176;
      v269 = 2048;
      *v270 = v174;
      _os_log_impl(&dword_273FB9000, v182, v179, "%s: removing from section: %@ (%lu) row: %lu", buf, 0x2Au);
    }

    v13 = v181;
    v135 = 0x280933000;
  }

  if (v176 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v150 = WFLogForCategory(0);
    v184 = OSLogForWFLogLevel(1uLL);
    v185 = v184;
    if (!WFCurrentLogLevel(v184, v186) || !v150)
    {
      goto LABEL_226;
    }

    v187 = v150;
    if (!os_log_type_enabled(v187, v185))
    {
      goto LABEL_225;
    }

    *buf = 136315138;
    v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    goto LABEL_224;
  }

  v188 = [*(a1 + 32) tableView];
  v189 = [MEMORY[0x277CCAA70] indexPathForRow:v174 inSection:v176];
  v262 = v189;
  v190 = [MEMORY[0x277CBEA60] arrayWithObjects:&v262 count:1];
  [v188 deleteRowsAtIndexPaths:v190 withRowAnimation:100];

LABEL_229:
  v204 = WFLogForCategory(0);
  v205 = OSLogForWFLogLevel(1uLL);
  v206 = v205;
  if (WFCurrentLogLevel(v205, v207) && v204)
  {
    v208 = v204;
    if (os_log_type_enabled(v208, v206))
    {
      v209 = [*(a1 + 32) askToJoinShown];
      *buf = 136315650;
      v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v266 = 1024;
      *v267 = v13;
      *&v267[4] = 1024;
      *&v267[6] = v209;
      _os_log_impl(&dword_273FB9000, v208, v206, "%s: atjShownStateDidChange %d askToJoinShown %d", buf, 0x18u);
    }
  }

  v210 = *(a1 + 32);
  if ((v210[1059] & 1) == 0 && ((v13 ^ 1) & 1) == 0)
  {
    v211 = [v210 sections];
    v212 = [v211 mutableCopy];

    if ([*(a1 + 32) askToJoinShown])
    {
      [v212 addObject:&unk_2883224C8];
      [*(a1 + 32) setSections:v212];
      v213 = [v212 indexOfObject:&unk_2883224C8];
      if (v213 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_261;
      }

      v214 = v213;
      if (v213 >= [*(*(a1 + 32) + 1128) count])
      {
        goto LABEL_261;
      }

      v215 = WFLogForCategory(0);
      v216 = OSLogForWFLogLevel(4uLL);
      v217 = v216;
      if (WFCurrentLogLevel(v216, v218) >= 4 && v215)
      {
        v219 = v215;
        if (os_log_type_enabled(v219, v217))
        {
          *buf = 136315394;
          v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v266 = 2048;
          *v267 = v214;
          _os_log_impl(&dword_273FB9000, v219, v217, "%s: inserting section at %lu", buf, 0x16u);
        }
      }

      v220 = [*(a1 + 32) tableView];
      v221 = [MEMORY[0x277CCAA78] indexSetWithIndex:v214];
      [v220 insertSections:v221 withRowAnimation:3];
    }

    else
    {
      v222 = *(a1 + 32);
      if (v222[1059])
      {
LABEL_261:

        v210 = *(a1 + 32);
        goto LABEL_262;
      }

      v223 = [v222 sections];
      v224 = [v223 indexOfObject:&unk_2883224C8];

      [v212 removeObject:&unk_2883224C8];
      [*(a1 + 32) setSections:v212];
      if (v224 == 0x7FFFFFFFFFFFFFFFLL || ([*(a1 + 32) sections], v225 = objc_claimAutoreleasedReturnValue(), v226 = objc_msgSend(v225, "count"), v225, v224 >= v226))
      {
        v220 = WFLogForCategory(0);
        v232 = OSLogForWFLogLevel(4uLL);
        v233 = v232;
        if (WFCurrentLogLevel(v232, v234) < 4 || !v220)
        {
          goto LABEL_260;
        }

        v221 = v220;
        if (os_log_type_enabled(v221, v233))
        {
          *buf = 0;
          _os_log_impl(&dword_273FB9000, v221, v233, "ATJ seciton is already deleted", buf, 2u);
        }

        v220 = v221;
      }

      else
      {
        v227 = WFLogForCategory(0);
        v228 = OSLogForWFLogLevel(4uLL);
        v229 = v228;
        if (WFCurrentLogLevel(v228, v230) >= 4 && v227)
        {
          v231 = v227;
          if (os_log_type_enabled(v231, v229))
          {
            *buf = 136315394;
            v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            v266 = 2048;
            *v267 = v224;
            _os_log_impl(&dword_273FB9000, v231, v229, "%s: removing section at %lu", buf, 0x16u);
          }
        }

        v220 = [*(a1 + 32) tableView];
        v221 = [MEMORY[0x277CCAA78] indexSetWithIndex:v224];
        [v220 deleteSections:v221 withRowAnimation:0];
      }
    }

LABEL_260:
    goto LABEL_261;
  }

LABEL_262:
  objc_storeStrong(&v210[*(v135 + 3432)], *(a1 + 40));
  v235 = WFLogForCategory(0);
  v236 = OSLogForWFLogLevel(1uLL);
  v237 = v236;
  if (WFCurrentLogLevel(v236, v238) && v235)
  {
    v239 = v235;
    if (os_log_type_enabled(v239, v237))
    {
      v240 = *(a1 + 40);
      v241 = [v240 hash];
      *buf = 136315650;
      v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v266 = 2112;
      *v267 = v240;
      *&v267[8] = 2048;
      v268 = v241;
      _os_log_impl(&dword_273FB9000, v239, v237, "%s: currentNetwork %@ (%lu)", buf, 0x20u);
    }
  }

  v242 = [*(a1 + 32) tableView];
  [v242 endUpdates];

  if (*(a1 + 56) == 1)
  {
    if (*(*(a1 + 32) + 1059))
    {
      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      [v16 postNotificationName:@"networkListScrollToTopNotification" object:0];
    }

    else
    {
      v243 = WFLogForCategory(0);
      v244 = OSLogForWFLogLevel(4uLL);
      v245 = v244;
      if (WFCurrentLogLevel(v244, v246) >= 4 && v243)
      {
        v247 = v243;
        if (os_log_type_enabled(v247, v245))
        {
          *buf = 136315138;
          v265 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          _os_log_impl(&dword_273FB9000, v247, v245, "%s: scrolling to top", buf, 0xCu);
        }
      }

      v16 = [*(a1 + 32) tableView];
      v248 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      [v16 scrollToRowAtIndexPath:v248 atScrollPosition:1 animated:1];
    }

    goto LABEL_52;
  }

LABEL_53:
}

- (void)setCurrentNetworkSubtitle:(id)subtitle
{
  v27 = *MEMORY[0x277D85DE8];
  subtitleCopy = subtitle;
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_273FB9000, v5, v7, "Not setting current network subtitle in edit mode", &v25, 2u);
    }

LABEL_26:

    goto LABEL_27;
  }

  currentNetworkSubtitle = self->_currentNetworkSubtitle;
  if (currentNetworkSubtitle != subtitleCopy)
  {
    if (subtitleCopy)
    {
      v10 = [(NSString *)subtitleCopy copy];
      currentNetworkSubtitle = self->_currentNetworkSubtitle;
    }

    else
    {
      v10 = 0;
    }

    self->_currentNetworkSubtitle = v10;

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      v25 = 138412290;
      v26 = subtitleCopy;
      _os_log_impl(&dword_273FB9000, v11, v13, "Setting current network subtitle: %@", &v25, 0xCu);
    }

    currentNetworkRowConfig = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig setSubtitle:subtitleCopy];

    _currentNetworkCell = [(WFAirportViewController *)self _currentNetworkCell];
    v5 = _currentNetworkCell;
    if (_currentNetworkCell)
    {
      if (self->_currentNetworkSubtitle)
      {
        [_currentNetworkCell setSubtitle:?];
      }

      else
      {
        currentNetwork = [(WFAirportViewController *)self currentNetwork];
        subtitle = [currentNetwork subtitle];
        [v5 setSubtitle:subtitle];
      }

      listDelegate = [(WFAirportViewController *)self listDelegate];
      v24 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];

      if (v24)
      {
        [v5 setConnectionError:1];
      }

      else
      {
        [v5 setConnectionError:0];
        [v5 setBars:WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI)];
      }
    }

    else
    {
      v17 = WFLogForCategory(0);
      v18 = OSLogForWFLogLevel(3uLL);
      v19 = v18;
      if (WFCurrentLogLevel(v18, v20) >= 3 && v17 && os_log_type_enabled(v17, v19))
      {
        v25 = 136315138;
        v26 = "[WFAirportViewController setCurrentNetworkSubtitle:]";
        _os_log_impl(&dword_273FB9000, v17, v19, "%s: nil currentNetwork cell", &v25, 0xCu);
      }
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)setScanning:(BOOL)scanning
{
  scanningCopy = scanning;
  chooseNetworkHeader = [(WFAirportViewController *)self chooseNetworkHeader];
  animating = [chooseNetworkHeader animating];

  if (animating != scanningCopy)
  {
    chooseNetworkHeader2 = [(WFAirportViewController *)self chooseNetworkHeader];
    [chooseNetworkHeader2 setAnimating:scanningCopy];
  }
}

- (BOOL)_refreshATJShownStateIfChanged
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v4 = [listDelegate airportSettingsViewControllerAskToJoinMode:self] != -1;
  askToJoinShown = self->_askToJoinShown;
  if (askToJoinShown != v4)
  {
    self->_askToJoinShown = [listDelegate airportSettingsViewControllerAskToJoinMode:self] != -1;
  }

  return askToJoinShown != v4;
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WFAirportViewController_setNetworks___block_invoke;
  v7[3] = &unk_279EC5588;
  v7[4] = self;
  v8 = networksCopy;
  v6 = networksCopy;
  dispatch_sync(internalQueue, v7);
}

void __39__WFAirportViewController_setNetworks___block_invoke(uint64_t a1)
{
  v307 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) powered] & 1) == 0)
  {
    v2 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(2uLL);
    v4 = v7;
    if (WFCurrentLogLevel(v7, v8) < 2 || !v2 || !os_log_type_enabled(v2, v4))
    {
      goto LABEL_228;
    }

    *buf = 0;
    v6 = "Tried to set networks while powered off...";
LABEL_11:
    _os_log_impl(&dword_273FB9000, v2, v4, v6, buf, 2u);
LABEL_228:

    return;
  }

  if ([*(a1 + 32) isInEditingMode])
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    v4 = v3;
    if (!WFCurrentLogLevel(v3, v5) || !v2 || !os_log_type_enabled(v2, v4))
    {
      goto LABEL_228;
    }

    *buf = 0;
    v6 = "In Editing mode, not updating table";
    goto LABEL_11;
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = *(a1 + 40);
    v9 = [v2 copy];
    [*(a1 + 32) setAllNetworks:v9];

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        v15 = [*(a1 + 32) currentNetwork];
        *buf = 136315394;
        v302 = "[WFAirportViewController setNetworks:]_block_invoke";
        v303 = 2112;
        v304 = v15;
        _os_log_impl(&dword_273FB9000, v14, v12, "%s: current network: %@", buf, 0x16u);
      }
    }

    v16 = [*(a1 + 32) currentNetwork];
    if (v16)
    {
      v17 = v16;
      v18 = [*(a1 + 32) currentNetwork];
      v19 = [v18 canBeDisplayedAsCurrent];

      if ((v19 & 1) == 0)
      {
        v20 = [MEMORY[0x277CBEB58] setWithSet:v2];
        v21 = [*(a1 + 32) currentNetwork];
        [v20 addObject:v21];

        v2 = v20;
      }
    }

    objc_storeStrong((*(a1 + 32) + 1224), v2);
    v22 = [v2 knownNetworks];
    if ([v22 count])
    {
      v23 = WFLogForCategory(0);
      v24 = OSLogForWFLogLevel(4uLL);
      v25 = v24;
      if (WFCurrentLogLevel(v24, v26) >= 4 && v23)
      {
        v27 = v23;
        if (os_log_type_enabled(v27, v25))
        {
          v28 = [v22 count];
          *buf = 136315394;
          v302 = "[WFAirportViewController setNetworks:]_block_invoke";
          v303 = 2048;
          v304 = v28;
          _os_log_impl(&dword_273FB9000, v27, v25, "%s: known network count: %lu", buf, 0x16u);
        }
      }

      v29 = [v22 allObjects];
      v30 = WFScanRecordAlphaSortCompartor();
      v31 = [v29 sortedArrayUsingComparator:v30];

      if (([v31 isEqualToArray:*(*(a1 + 32) + 1168)] & 1) == 0)
      {
        v50 = *(a1 + 32);
        if (*(v50 + 1056) == 1)
        {
          objc_storeStrong((v50 + 1224), v2);
          *(*(a1 + 32) + 1057) = 1;
        }

        else
        {
          v51 = WFLogForCategory(0);
          v52 = OSLogForWFLogLevel(3uLL);
          v53 = v52;
          if (WFCurrentLogLevel(v52, v54) >= 3 && v51 && os_log_type_enabled(v51, v53))
          {
            *buf = 136315394;
            v302 = "[WFAirportViewController setNetworks:]_block_invoke";
            v303 = 2112;
            v304 = v22;
            _os_log_impl(&dword_273FB9000, v51, v53, "%s: known networks %@", buf, 0x16u);
          }

          v55 = [*(a1 + 32) sections];
          v56 = [v55 containsObject:&unk_288322480];

          if ((v56 & 1) == 0)
          {
            v288 = v22;
            v57 = [*(a1 + 32) sections];
            v58 = [v57 mutableCopy];

            v59 = [v58 indexOfObject:&unk_2883224B0];
            if (v59 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v60 = 0;
            }

            else
            {
              v60 = v59 + 1;
            }

            [v58 insertObject:&unk_288322480 atIndex:v60];
            [*(a1 + 32) setSections:v58];
            v61 = WFLogForCategory(0);
            v62 = OSLogForWFLogLevel(3uLL);
            v63 = v62;
            if (WFCurrentLogLevel(v62, v64) >= 3 && v61)
            {
              *type = v31;
              v65 = v61;
              if (os_log_type_enabled(v65, v63))
              {
                v66 = [*(a1 + 32) _nameOfSection:1];
                *buf = 136315650;
                v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                v303 = 2112;
                v304 = v66;
                v305 = 2048;
                v306 = v60;
                _os_log_impl(&dword_273FB9000, v65, v63, "%s: inserting section %@ (at index %lu)", buf, 0x20u);
              }

              v31 = *type;
            }

            v22 = v288;
          }

          v67 = [*(*(a1 + 32) + 1168) copy];
          v68 = *(a1 + 32);
          v69 = [v68 sections];
          [v68 _updateCellsWithNewData:v31 oldData:v67 inSection:objc_msgSend(v69 insertSection:"indexOfObject:" datasourceSection:{&unk_288322480), v56 ^ 1u, 1}];
        }

        goto LABEL_227;
      }

      v32 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(4uLL);
      v34 = v33;
      if (WFCurrentLogLevel(v33, v35) >= 4 && v32)
      {
        v36 = v32;
        if (os_log_type_enabled(v36, v34))
        {
          v37 = [*(*(a1 + 32) + 1168) count];
          *buf = 136315394;
          v302 = "[WFAirportViewController setNetworks:]_block_invoke";
          v303 = 2048;
          v304 = v37;
          _os_log_impl(&dword_273FB9000, v36, v34, "%s: no change to known (count: %lu)", buf, 0x16u);
        }
      }
    }

    else
    {
      v40 = *(a1 + 32);
      v41 = *(v40 + 1168);
      if (!v41)
      {
        goto LABEL_69;
      }

      *(v40 + 1168) = 0;

      v42 = [*(a1 + 32) sections];
      v31 = [v42 mutableCopy];

      v43 = [v31 indexOfObject:&unk_288322480];
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = WFLogForCategory(0);
        v45 = OSLogForWFLogLevel(3uLL);
        v46 = v45;
        if (WFCurrentLogLevel(v45, v47) >= 3 && v44)
        {
          v48 = v44;
          if (os_log_type_enabled(v48, v46))
          {
            v49 = [*(a1 + 32) _nameOfSection:1];
            *buf = 136315394;
            v302 = "[WFAirportViewController setNetworks:]_block_invoke";
            v303 = 2112;
            v304 = v49;
            _os_log_impl(&dword_273FB9000, v48, v46, "%s: %@ section does not exist in sections", buf, 0x16u);
          }
        }

        [*(a1 + 32) _dumpSections];
      }

      else
      {
        v70 = v43;
        [v31 removeObject:&unk_288322480];
        [*(a1 + 32) setSections:v31];
        v71 = [*(a1 + 32) tableView];
        v72 = [MEMORY[0x277CCAA78] indexSetWithIndex:v70];
        [v71 deleteSections:v72 withRowAnimation:0];

        v73 = WFLogForCategory(0);
        v74 = OSLogForWFLogLevel(3uLL);
        v75 = v74;
        if (WFCurrentLogLevel(v74, v76) >= 3 && v73)
        {
          v77 = v73;
          if (os_log_type_enabled(v77, v75))
          {
            v78 = [*(a1 + 32) _nameOfSection:1];
            *buf = 136315650;
            v302 = "[WFAirportViewController setNetworks:]_block_invoke";
            v303 = 2112;
            v304 = v78;
            v305 = 2048;
            v306 = v70;
            _os_log_impl(&dword_273FB9000, v77, v75, "%s: removing section %@ (index %lu)", buf, 0x20u);
          }
        }
      }
    }

LABEL_69:
    v31 = [v2 popularNetworks];
    if ([v31 count])
    {
      v79 = WFLogForCategory(0);
      v80 = OSLogForWFLogLevel(4uLL);
      v81 = v80;
      if (WFCurrentLogLevel(v80, v82) >= 4 && v79)
      {
        v83 = v79;
        if (os_log_type_enabled(v83, v81))
        {
          v84 = [v31 count];
          *buf = 136315394;
          v302 = "[WFAirportViewController setNetworks:]_block_invoke";
          v303 = 2048;
          v304 = v84;
          _os_log_impl(&dword_273FB9000, v83, v81, "%s: popular network count: %lu", buf, 0x16u);
        }
      }

      v85 = [v31 allObjects];
      v86 = WFScanRecordAlphaSortCompartor();
      v87 = [v85 sortedArrayUsingComparator:v86];

      v88 = v87;
      if (([v87 isEqualToArray:*(*(a1 + 32) + 1160)] & 1) == 0)
      {
        v105 = *(a1 + 32);
        if (*(v105 + 1056) == 1)
        {
          objc_storeStrong((v105 + 1224), v2);
          *(*(a1 + 32) + 1057) = 1;
        }

        else
        {
          v106 = WFLogForCategory(0);
          v107 = OSLogForWFLogLevel(3uLL);
          v108 = v107;
          if (WFCurrentLogLevel(v107, v109) >= 3 && v106 && os_log_type_enabled(v106, v108))
          {
            *buf = 136315394;
            v302 = "[WFAirportViewController setNetworks:]_block_invoke";
            v303 = 2112;
            v304 = v31;
            _os_log_impl(&dword_273FB9000, v106, v108, "%s: popular networks %@", buf, 0x16u);
          }

          v110 = [*(a1 + 32) sections];
          v111 = [v110 containsObject:&unk_288322468];

          if ((v111 & 1) == 0)
          {
            v289 = v22;
            v112 = [*(a1 + 32) sections];
            v113 = [v112 mutableCopy];

            v114 = [v113 indexOfObject:&unk_288322480];
            if (v114 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v115 = [v113 indexOfObject:&unk_288322498];
            }

            else
            {
              v115 = v114 + 1;
            }

            [v113 insertObject:&unk_288322468 atIndex:v115];
            [*(a1 + 32) setSections:v113];
            v258 = WFLogForCategory(0);
            v259 = OSLogForWFLogLevel(3uLL);
            v260 = v259;
            if (WFCurrentLogLevel(v259, v261) >= 3 && v258)
            {
              v262 = v258;
              v263 = v260;
              v264 = v262;
              typed = v263;
              if (os_log_type_enabled(v262, v263))
              {
                v287 = [*(a1 + 32) _nameOfSection:2];
                *buf = 136315650;
                v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                v303 = 2112;
                v304 = v287;
                v305 = 1024;
                LODWORD(v306) = v115;
                _os_log_impl(&dword_273FB9000, v264, typed, "%s: inserting section %@ (at index %d)", buf, 0x1Cu);
              }
            }

            v22 = v289;
          }

          v265 = [*(*(a1 + 32) + 1160) copy];
          v266 = *(a1 + 32);
          v267 = [v266 sections];
          [v266 _updateCellsWithNewData:v88 oldData:v265 inSection:objc_msgSend(v267 insertSection:"indexOfObject:" datasourceSection:{&unk_288322468), v111 ^ 1u, 2}];
        }

        goto LABEL_226;
      }

      v89 = WFLogForCategory(0);
      v90 = OSLogForWFLogLevel(4uLL);
      v91 = v90;
      if (WFCurrentLogLevel(v90, v92) >= 4 && v89)
      {
        v93 = v89;
        if (os_log_type_enabled(v93, v91))
        {
          v94 = [*(*(a1 + 32) + 1160) count];
          *buf = 136315394;
          v302 = "[WFAirportViewController setNetworks:]_block_invoke";
          v303 = 2048;
          v304 = v94;
          _os_log_impl(&dword_273FB9000, v93, v91, "%s: no change to popular (count: %lu)", buf, 0x16u);
        }
      }
    }

    else
    {
      v95 = *(a1 + 32);
      v96 = *(v95 + 1160);
      if (!v96)
      {
        goto LABEL_106;
      }

      *(v95 + 1160) = 0;

      v97 = [*(a1 + 32) sections];
      v88 = [v97 mutableCopy];

      v98 = [v88 indexOfObject:&unk_288322468];
      if (v98 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v99 = WFLogForCategory(0);
        v100 = OSLogForWFLogLevel(3uLL);
        v101 = v100;
        if (WFCurrentLogLevel(v100, v102) >= 3 && v99)
        {
          v103 = v99;
          if (os_log_type_enabled(v103, v101))
          {
            v104 = [*(a1 + 32) _nameOfSection:2];
            *buf = 136315394;
            v302 = "[WFAirportViewController setNetworks:]_block_invoke";
            v303 = 2112;
            v304 = v104;
            _os_log_impl(&dword_273FB9000, v103, v101, "%s: %@ section does not exist in sections", buf, 0x16u);
          }
        }

        [*(a1 + 32) _dumpSections];
      }

      else
      {
        v116 = v98;
        [v88 removeObject:&unk_288322468];
        [*(a1 + 32) setSections:v88];
        v117 = [*(a1 + 32) tableView];
        v118 = [MEMORY[0x277CCAA78] indexSetWithIndex:v116];
        [v117 deleteSections:v118 withRowAnimation:0];

        v119 = WFLogForCategory(0);
        v120 = OSLogForWFLogLevel(3uLL);
        v121 = v120;
        if (WFCurrentLogLevel(v120, v122) >= 3 && v119)
        {
          v123 = v119;
          if (os_log_type_enabled(v123, v121))
          {
            [*(a1 + 32) _nameOfSection:2];
            v125 = v124 = v22;
            *buf = 136315650;
            v302 = "[WFAirportViewController setNetworks:]_block_invoke";
            v303 = 2112;
            v304 = v125;
            v305 = 1024;
            LODWORD(v306) = v116;
            _os_log_impl(&dword_273FB9000, v123, v121, "%s: removing section %@ (index %d)", buf, 0x1Cu);

            v22 = v124;
          }
        }
      }
    }

LABEL_106:
    v88 = [v2 infrastructureNetworks];
    v126 = [*(a1 + 32) sections];
    v127 = [v126 indexOfObject:&unk_288322498];

    if ([v88 count])
    {
      v128 = WFLogForCategory(0);
      v129 = OSLogForWFLogLevel(4uLL);
      v130 = v129;
      if (WFCurrentLogLevel(v129, v131) >= 4 && v128)
      {
        v132 = v128;
        if (os_log_type_enabled(v132, v130))
        {
          v133 = [v88 count];
          *buf = 136315394;
          v302 = "[WFAirportViewController setNetworks:]_block_invoke";
          v303 = 2048;
          v304 = v133;
          _os_log_impl(&dword_273FB9000, v132, v130, "%s: infraNetworks network count: %lu", buf, 0x16u);
        }
      }

      v134 = [v88 allObjects];
      v135 = WFScanRecordAlphaSortCompartor();
      v136 = [v134 sortedArrayUsingComparator:v135];

      if (([v136 isEqualToArray:*(*(a1 + 32) + 1152)] & 1) == 0)
      {
        v181 = *(a1 + 32);
        if (*(v181 + 1056) == 1)
        {
          objc_storeStrong((v181 + 1224), v2);
          *(*(a1 + 32) + 1057) = 1;
        }

        else
        {
          v195 = [*(v181 + 1152) copy];
          [*(a1 + 32) _updateCellsWithNewData:v136 oldData:v195 inSection:v127 insertSection:0 datasourceSection:3];
        }

        goto LABEL_225;
      }

      v137 = WFLogForCategory(0);
      v138 = OSLogForWFLogLevel(3uLL);
      v139 = v138;
      if (WFCurrentLogLevel(v138, v140) >= 3 && v137 && os_log_type_enabled(v137, v139))
      {
        *buf = 0;
        _os_log_impl(&dword_273FB9000, v137, v139, "No change to infra section", buf, 2u);
      }
    }

    else
    {
      if (!*(*(a1 + 32) + 1152))
      {
LABEL_131:
        v163 = *(a1 + 32);
        if (*(v163 + 1048) == 1)
        {
          v164 = [*(v163 + 1152) count];
          if (v127 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v165 = [MEMORY[0x277CCAA70] indexPathForRow:v164 inSection:v127];
            v166 = [*(a1 + 32) tableView];
            v300 = v165;
            v167 = [MEMORY[0x277CBEA60] arrayWithObjects:&v300 count:1];
            [v166 reloadRowsAtIndexPaths:v167 withRowAnimation:5];
          }
        }

        v136 = [v2 adhocNetworks];
        if ([v136 count])
        {
          v168 = WFLogForCategory(0);
          v169 = OSLogForWFLogLevel(4uLL);
          v170 = v169;
          if (WFCurrentLogLevel(v169, v171) >= 4 && v168)
          {
            v172 = v168;
            if (os_log_type_enabled(v172, v170))
            {
              v173 = [v136 count];
              *buf = 136315394;
              v302 = "[WFAirportViewController setNetworks:]_block_invoke";
              v303 = 2048;
              v304 = v173;
              _os_log_impl(&dword_273FB9000, v172, v170, "%s: adhoc network count: %lu", buf, 0x16u);
            }
          }

          v174 = [v136 allObjects];
          v175 = WFScanRecordAlphaSortCompartor();
          v176 = [v174 sortedArrayUsingComparator:v175];

          if (([v176 isEqualToArray:*(*(a1 + 32) + 1176)] & 1) == 0)
          {
            v194 = *(a1 + 32);
            if (*(v194 + 1056) == 1)
            {
              objc_storeStrong((v194 + 1224), v2);
              *(*(a1 + 32) + 1057) = 1;
            }

            else
            {
              v291 = v22;
              v196 = [*(v194 + 1176) copy];
              v197 = [*(a1 + 32) sections];
              v198 = [v197 containsObject:&unk_288322438];

              if ((v198 & 1) == 0)
              {
                v283 = v88;
                *typea = v31;
                v199 = [*(a1 + 32) sections];
                v200 = [v199 mutableCopy];

                v201 = [v200 indexOfObject:&unk_288322498];
                v202 = v201;
                [v200 insertObject:&unk_288322438 atIndex:v201 + 1];
                [*(a1 + 32) setSections:v200];
                v203 = WFLogForCategory(0);
                v204 = OSLogForWFLogLevel(3uLL);
                v205 = v204;
                if (WFCurrentLogLevel(v204, v206) >= 3 && v203)
                {
                  log = v203;
                  if (os_log_type_enabled(log, v205))
                  {
                    v207 = [*(a1 + 32) _nameOfSection:4];
                    v208 = v202;
                    v209 = v207;
                    *buf = 136315650;
                    v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                    v303 = 2112;
                    v304 = v207;
                    v305 = 1024;
                    LODWORD(v306) = v208 + 1;
                    _os_log_impl(&dword_273FB9000, log, v205, "%s: inserting section %@ (at index %d)", buf, 0x1Cu);
                  }
                }

                v31 = *typea;
                v88 = v283;
              }

              v210 = [*(a1 + 32) sections];
              v211 = [v210 indexOfObject:&unk_288322438];

              [*(a1 + 32) _updateCellsWithNewData:v176 oldData:v196 inSection:v211 insertSection:v198 ^ 1u datasourceSection:4];
              v22 = v291;
            }

            goto LABEL_224;
          }

          v177 = WFLogForCategory(0);
          v178 = OSLogForWFLogLevel(4uLL);
          v179 = v178;
          if (WFCurrentLogLevel(v178, v180) >= 4 && v177 && os_log_type_enabled(v177, v179))
          {
            *buf = 0;
            _os_log_impl(&dword_273FB9000, v177, v179, "No change to adhoc section", buf, 2u);
          }
        }

        else
        {
          v182 = *(a1 + 32);
          v183 = *(v182 + 1176);
          if (!v183)
          {
            goto LABEL_174;
          }

          v184 = v22;
          *(v182 + 1176) = 0;

          v185 = [*(a1 + 32) sections];
          v176 = [v185 mutableCopy];

          v186 = [v176 indexOfObject:&unk_288322438];
          if (v186 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v187 = WFLogForCategory(0);
            v188 = OSLogForWFLogLevel(3uLL);
            v189 = v188;
            if (WFCurrentLogLevel(v188, v190) >= 3 && v187)
            {
              v191 = v187;
              if (os_log_type_enabled(v191, v189))
              {
                [*(a1 + 32) _nameOfSection:4];
                v282 = v88;
                v193 = v192 = v31;
                *buf = 136315394;
                v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                v303 = 2112;
                v304 = v193;
                _os_log_impl(&dword_273FB9000, v191, v189, "%s: %@ section does not exist in sections", buf, 0x16u);

                v31 = v192;
                v88 = v282;
              }
            }

            [*(a1 + 32) _dumpSections];
            v22 = v184;
          }

          else
          {
            v212 = v186;
            v284 = v88;
            v213 = v31;
            [v176 removeObject:&unk_288322438];
            [*(a1 + 32) setSections:v176];
            v214 = [*(a1 + 32) tableView];
            v215 = [MEMORY[0x277CCAA78] indexSetWithIndex:v212];
            [v214 deleteSections:v215 withRowAnimation:0];

            v216 = WFLogForCategory(0);
            v217 = OSLogForWFLogLevel(3uLL);
            v218 = v217;
            if (WFCurrentLogLevel(v217, v219) >= 3 && v216)
            {
              v220 = v216;
              if (os_log_type_enabled(v220, v218))
              {
                v292 = [*(a1 + 32) _nameOfSection:4];
                *buf = 136315650;
                v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                v303 = 2112;
                v304 = v292;
                v305 = 1024;
                LODWORD(v306) = v212;
                _os_log_impl(&dword_273FB9000, v220, v218, "%s: removing section %@ (index %d)", buf, 0x1Cu);
              }
            }

            v22 = v184;
            v31 = v213;
            v88 = v284;
          }
        }

LABEL_174:
        v176 = [v2 unconfiguredNetworks];
        if ([v176 count])
        {
          v221 = v22;
          v222 = WFLogForCategory(0);
          v223 = OSLogForWFLogLevel(4uLL);
          v224 = v223;
          if (WFCurrentLogLevel(v223, v225) >= 4 && v222)
          {
            v226 = v222;
            if (os_log_type_enabled(v226, v224))
            {
              v227 = [v176 count];
              *buf = 136315394;
              v302 = "[WFAirportViewController setNetworks:]_block_invoke";
              v303 = 2048;
              v304 = v227;
              _os_log_impl(&dword_273FB9000, v226, v224, "%s: unconfigured network count: %lu", buf, 0x16u);
            }
          }

          v228 = [v176 allObjects];
          v229 = WFScanRecordAlphaSortCompartor();
          v230 = [v228 sortedArrayUsingComparator:v229];

          if (([v230 isEqualToArray:*(*(a1 + 32) + 1184)] & 1) == 0)
          {
            v245 = *(a1 + 32);
            if (*(v245 + 1056) == 1)
            {
              objc_storeStrong((v245 + 1224), v2);
              *(*(a1 + 32) + 1057) = 1;
            }

            else
            {
              v293 = [*(v245 + 1184) copy];
              v246 = [*(a1 + 32) sections];
              v247 = [v246 containsObject:&unk_288322450];

              loga = v247;
              if ((v247 & 1) == 0)
              {
                v286 = v88;
                *typec = v31;
                v248 = [*(a1 + 32) sections];
                v249 = [v248 mutableCopy];

                v250 = [v249 indexOfObject:&unk_288322438];
                if (v250 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v250 = [v249 indexOfObject:&unk_288322498];
                }

                [v249 insertObject:&unk_288322450 atIndex:v250 + 1];
                [*(a1 + 32) setSections:v249];
                v251 = WFLogForCategory(0);
                v252 = OSLogForWFLogLevel(3uLL);
                v253 = v252;
                if (WFCurrentLogLevel(v252, v254) >= 3 && v251)
                {
                  v277 = v251;
                  v255 = v251;
                  if (os_log_type_enabled(v255, v253))
                  {
                    v276 = [*(a1 + 32) _nameOfSection:5];
                    *buf = 136315650;
                    v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                    v303 = 2112;
                    v304 = v276;
                    v305 = 1024;
                    LODWORD(v306) = v250;
                    _os_log_impl(&dword_273FB9000, v255, v253, "%s: inserting section %@ (at index %d)", buf, 0x1Cu);
                  }

                  v251 = v277;
                }

                v31 = *typec;
                v88 = v286;
              }

              v256 = [*(a1 + 32) sections];
              v257 = [v256 indexOfObject:&unk_288322450];

              [*(a1 + 32) _updateCellsWithNewData:v230 oldData:v293 inSection:v257 insertSection:loga ^ 1u datasourceSection:5];
            }

            v22 = v221;
            goto LABEL_224;
          }

          v231 = WFLogForCategory(0);
          v232 = OSLogForWFLogLevel(4uLL);
          v233 = v232;
          if (WFCurrentLogLevel(v232, v234) >= 4 && v231 && os_log_type_enabled(v231, v233))
          {
            *buf = 0;
            _os_log_impl(&dword_273FB9000, v231, v233, "No change to unconfigured section", buf, 2u);
          }
        }

        else
        {
          v235 = *(a1 + 32);
          v236 = *(v235 + 1184);
          if (!v236)
          {
LABEL_223:
            [*(a1 + 32) _processPendingCurrentNetworkUpdate];
LABEL_224:

LABEL_225:
LABEL_226:

LABEL_227:
            goto LABEL_228;
          }

          v285 = v88;
          *typeb = v31;
          v221 = v22;
          *(v235 + 1184) = 0;

          v237 = [*(a1 + 32) sections];
          v230 = [v237 mutableCopy];

          v238 = [v230 indexOfObject:&unk_288322450];
          if (v238 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v239 = WFLogForCategory(0);
            v240 = OSLogForWFLogLevel(3uLL);
            v241 = v240;
            if (WFCurrentLogLevel(v240, v242) >= 3 && v239)
            {
              v243 = v239;
              if (os_log_type_enabled(v243, v241))
              {
                v244 = [*(a1 + 32) _nameOfSection:5];
                *buf = 136315394;
                v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                v303 = 2112;
                v304 = v244;
                _os_log_impl(&dword_273FB9000, v243, v241, "%s: %@ section does not exist in sections", buf, 0x16u);
              }
            }

            [*(a1 + 32) _dumpSections];
          }

          else
          {
            v268 = v238;
            [v230 removeObject:&unk_288322450];
            [*(a1 + 32) setSections:v230];
            v269 = [*(a1 + 32) tableView];
            v270 = [MEMORY[0x277CCAA78] indexSetWithIndex:v268];
            [v269 deleteSections:v270 withRowAnimation:0];

            v271 = WFLogForCategory(0);
            v272 = OSLogForWFLogLevel(3uLL);
            v273 = v272;
            if (WFCurrentLogLevel(v272, v274) >= 3 && v271)
            {
              v275 = v271;
              if (os_log_type_enabled(v275, v273))
              {
                v294 = [*(a1 + 32) _nameOfSection:5];
                *buf = 136315650;
                v302 = "[WFAirportViewController setNetworks:]_block_invoke";
                v303 = 2112;
                v304 = v294;
                v305 = 1024;
                LODWORD(v306) = v268;
                _os_log_impl(&dword_273FB9000, v275, v273, "%s: removing section %@ (index %d)", buf, 0x1Cu);
              }
            }
          }

          v31 = *typeb;
          v88 = v285;
        }

        v22 = v221;
        goto LABEL_223;
      }

      v290 = v22;
      v136 = [MEMORY[0x277CBEB18] array];
      for (i = 0; i < [*(*(a1 + 32) + 1152) count]; ++i)
      {
        v142 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:v127];
        [v136 addObject:v142];
      }

      v143 = *(a1 + 32);
      if ((v143[1048] & 1) == 0)
      {
        v144 = [v143 tableView];
        v280 = [v144 numberOfRowsInSection:v127];
        v145 = [v136 count];
        v146 = v136;
        v147 = v2;
        v148 = v88;
        v149 = v31;
        v150 = v145;

        v151 = v280 <= v150;
        v31 = v149;
        v88 = v148;
        v2 = v147;
        v136 = v146;
        if (!v151)
        {
          v152 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:v127];
          [v146 addObject:v152];
        }
      }

      v153 = WFLogForCategory(0);
      v154 = OSLogForWFLogLevel(4uLL);
      v155 = v154;
      if (WFCurrentLogLevel(v154, v156) >= 4 && v153)
      {
        v157 = v153;
        if (os_log_type_enabled(v157, v155))
        {
          [*(a1 + 32) _nameOfSection:3];
          v281 = v88;
          v159 = v158 = v31;
          v160 = [v136 count];
          *buf = 138412546;
          v302 = v159;
          v303 = 2048;
          v304 = v160;
          _os_log_impl(&dword_273FB9000, v157, v155, "Section %@- Deleting %lu rows", buf, 0x16u);

          v31 = v158;
          v88 = v281;
        }
      }

      v161 = *(a1 + 32);
      v162 = *(v161 + 1152);
      *(v161 + 1152) = 0;

      v137 = [*(a1 + 32) tableView];
      [v137 deleteRowsAtIndexPaths:v136 withRowAnimation:0];
      v22 = v290;
    }

    goto LABEL_131;
  }

  v38 = *(a1 + 32);
  v39 = *(a1 + 40);

  [v38 performSelectorOnMainThread:sel_setNetworks_ withObject:v39 waitUntilDone:0];
}

- (void)_updateCellsWithNewData:(id)data oldData:(id)oldData inSection:(unint64_t)section insertSection:(BOOL)insertSection datasourceSection:(unint64_t)datasourceSection
{
  insertSectionCopy = insertSection;
  v106 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  oldDataCopy = oldData;
  if (insertSectionCopy)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(4uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 4 && v11)
    {
      v15 = v11;
      if (os_log_type_enabled(v15, v13))
      {
        v16 = [(WFAirportViewController *)self _sectionNameAtIndex:section];
        *buf = 136315650;
        *&buf[4] = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]";
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2048;
        sectionCopy = section;
        _os_log_impl(&dword_273FB9000, v15, v13, "%s: inserting section %@ at index %lu", buf, 0x20u);
      }
    }

    tableView = [(WFAirportViewController *)self tableView];
    v18 = [MEMORY[0x277CCAA78] indexSetWithIndex:section];
    [tableView insertSections:v18 withRowAnimation:0];
  }

  v63 = [oldDataCopy mutableCopy];
  obj = [dataCopy mutableCopy];
  if ([oldDataCopy count] >= 2 && objc_msgSend(oldDataCopy, "count") >= 2)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = [oldDataCopy objectAtIndexedSubscript:v20];
      ssid = [v21 ssid];
      v23 = v20 - 1;
      v24 = [oldDataCopy objectAtIndexedSubscript:v20 - 1];
      ssid2 = [v24 ssid];
      v26 = [ssid isEqualToString:ssid2];

      if (v26)
      {
        [v63 removeObjectAtIndex:v20 - v19++];
      }

      ++v20;
    }

    while ([oldDataCopy count] > (v23 + 2));
  }

  if ([dataCopy count] >= 2 && objc_msgSend(dataCopy, "count") >= 2)
  {
    v27 = 0;
    v28 = 1;
    do
    {
      v29 = [dataCopy objectAtIndexedSubscript:v28];
      ssid3 = [v29 ssid];
      v31 = v28 - 1;
      v32 = [dataCopy objectAtIndexedSubscript:v28 - 1];
      ssid4 = [v32 ssid];
      v34 = [ssid3 isEqualToString:ssid4];

      if (v34)
      {
        [obj removeObjectAtIndex:v28 - v27++];
      }

      ++v28;
    }

    while ([dataCopy count] > (v31 + 2));
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  sectionCopy = __Block_byref_object_copy__0;
  v104 = __Block_byref_object_dispose__0;
  v105 = &stru_288308678;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke;
  v93[3] = &unk_279EC55B0;
  v93[4] = buf;
  [v63 enumerateObjectsUsingBlock:v93];
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__0;
  v91 = __Block_byref_object_dispose__0;
  v92 = &stru_288308678;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2;
  v86[3] = &unk_279EC55B0;
  v86[4] = &v87;
  [obj enumerateObjectsUsingBlock:v86];
  v35 = WFLogForCategory(0);
  v36 = OSLogForWFLogLevel(4uLL);
  v37 = v36;
  if (WFCurrentLogLevel(v36, v38) >= 4 && v35 && os_log_type_enabled(v35, v37))
  {
    v39 = *(*&buf[8] + 40);
    v40 = v88[5];
    *v94 = 138412546;
    v95 = v39;
    v96 = 2112;
    v97 = v40;
    _os_log_impl(&dword_273FB9000, v35, v37, "Old filtered networks: %@\n New filtered networks: %@", v94, 0x16u);
  }

  v41 = WFLogForCategory(0);
  v42 = OSLogForWFLogLevel(4uLL);
  v43 = v42;
  if (WFCurrentLogLevel(v42, v44) >= 4 && v41)
  {
    v45 = v41;
    if (os_log_type_enabled(v45, v43))
    {
      v46 = [oldDataCopy count];
      v47 = [v63 count];
      v48 = [dataCopy count];
      v49 = [obj count];
      *v94 = 134218752;
      v95 = v46;
      v96 = 2048;
      v97 = v47;
      v98 = 2048;
      v99 = v48;
      v100 = 2048;
      v101 = v49;
      _os_log_impl(&dword_273FB9000, v45, v43, "Old Network count: %lu, old filtered network count: %lu, new network count: %lu, new filtered network count: %lu", v94, 0x2Au);
    }
  }

  v50 = objc_opt_new();
  v51 = objc_opt_new();
  v52 = objc_opt_new();
  v53 = objc_opt_new();
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_128;
  v84[3] = &unk_279EC55D8;
  v54 = v53;
  v85 = v54;
  [v63 enumerateObjectsUsingBlock:v84];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_133;
  v79[3] = &unk_279EC5600;
  v55 = v54;
  v80 = v55;
  sectionCopy2 = section;
  v56 = v52;
  v81 = v56;
  v57 = v51;
  v82 = v57;
  [obj enumerateObjectsUsingBlock:v79];
  if ([v55 count])
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_3;
    v75[3] = &unk_279EC5628;
    v76 = v55;
    v77 = v50;
    sectionCopy3 = section;
    [v76 enumerateKeysAndObjectsUsingBlock:v75];
  }

  if ([v50 count] || objc_msgSend(v57, "count") || objc_msgSend(v56, "count"))
  {
    tableView2 = [(WFAirportViewController *)self tableView];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_4;
    v66[3] = &unk_279EC5650;
    v66[4] = self;
    v73 = v60;
    v67 = v57;
    v68 = v56;
    v69 = v50;
    v70 = obj;
    sectionCopy4 = section;
    v71 = oldDataCopy;
    v72 = dataCopy;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_138;
    v65[3] = &unk_279EC5678;
    v65[4] = self;
    v65[5] = v60;
    [tableView2 performBatchUpdates:v66 completion:v65];
  }

  else if (v60 <= 2)
  {
    if (v60 == 1)
    {
      objc_storeStrong(&self->_knownNetworks, obj);
    }

    else if (v60 == 2)
    {
      objc_storeStrong(&self->_popularNetworks, obj);
    }
  }

  else
  {
    switch(v60)
    {
      case 5:
        objc_storeStrong(&self->_unconfiguredNetworks, obj);
        break;
      case 4:
        objc_storeStrong(&self->_adhocNetworks, obj);
        break;
      case 3:
        objc_storeStrong(&self->_infraNetworks, obj);
        break;
    }
  }

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(buf, 8);
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_128(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a2, "uniqueIdentifier")];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setValue:v6 forKey:v7];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_133(uint64_t a1, void *a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a2, "uniqueIdentifier")];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"integerValue"), *(a1 + 56)}];
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
      v13 = *(a1 + 40);
      v17[0] = v11;
      v17[1] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      [v13 addObject:v14];
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
    [v15 addObject:v16];
  }
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v5 inSection:{"integerValue"), *(a1 + 48)}];
  [v3 addObject:v4];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_4(uint64_t a1)
{
  v108 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2)
  {
    v6 = v2;
    if (os_log_type_enabled(v6, v4))
    {
      v7 = [*(a1 + 32) _nameOfSection:*(a1 + 88)];
      v8 = *(a1 + 88);
      v9 = [*(a1 + 40) count];
      v10 = [*(a1 + 48) count];
      v11 = [*(a1 + 56) count];
      *buf = 136316418;
      *&buf[4] = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke_4";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2048;
      v104 = v8;
      *v105 = 2048;
      *&v105[2] = v9;
      *&v105[10] = 2048;
      *&v105[12] = v10;
      v106 = 2048;
      v107 = v11;
      _os_log_impl(&dword_273FB9000, v6, v4, "%s: tableView updating started for section %@ (%lu) - insert %lu move %lu delete %lu", buf, 0x3Eu);
    }
  }

  *(*(a1 + 32) + 1056) = 1;
  v12 = *(a1 + 88);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      objc_storeStrong((*(a1 + 32) + 1152), *(a1 + 64));
      v16 = [*(a1 + 32) chooseNetworkHeader];
      v17 = [v16 title];
      v18 = [*(*(a1 + 32) + 1240) isEqualToString:v17];
      if ((v18 & 1) == 0)
      {
        v25 = [v17 copy];
        v26 = *(a1 + 32);
        v27 = *(v26 + 1240);
        *(v26 + 1240) = v25;

        v28 = [*(a1 + 32) tableView];
        v29 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(a1 + 96)];
        [v28 _reloadSectionHeaderFooters:v29 withRowAnimation:100];
      }

      goto LABEL_23;
    }

    if (v12 != 4)
    {
      if (v12 == 5)
      {
        objc_storeStrong((*(a1 + 32) + 1184), *(a1 + 64));
        v13 = *(a1 + 32);
        v14 = [v13 tableView];
        v15 = [*(a1 + 32) sections];
        v16 = [v13 tableView:v14 viewForHeaderInSection:{objc_msgSend(v15, "indexOfObject:", &unk_288322450)}];

        v17 = [v16 title];
        v18 = [*(*(a1 + 32) + 1248) isEqualToString:v17];
        if ((v18 & 1) == 0)
        {
          v19 = [v17 copy];
          v20 = *(a1 + 32);
          v21 = *(v20 + 1248);
          *(v20 + 1248) = v19;
        }

LABEL_23:

        v31 = v18 ^ 1;
        goto LABEL_24;
      }

      goto LABEL_52;
    }

    v22 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = 1176;
LABEL_20:
    v30 = v22;
    v31 = 0;
    v16 = *(v23 + v24);
    *(v23 + v24) = v30;
    goto LABEL_24;
  }

  if (v12 == 1)
  {
    objc_storeStrong((*(a1 + 32) + 1168), *(a1 + 64));
    v32 = *(a1 + 32);
    v33 = [v32 tableView];
    v34 = [*(a1 + 32) sections];
    v16 = [v32 tableView:v33 viewForHeaderInSection:{objc_msgSend(v34, "indexOfObject:", &unk_288322480)}];

    v17 = [v16 title];
    v18 = [*(*(a1 + 32) + 1232) isEqualToString:v17];
    if ((v18 & 1) == 0)
    {
      v35 = [v17 copy];
      v36 = *(a1 + 32);
      v37 = *(v36 + 1232);
      *(v36 + 1232) = v35;
    }

    goto LABEL_23;
  }

  if (v12 == 2)
  {
    v22 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = 1160;
    goto LABEL_20;
  }

LABEL_52:
  v16 = WFLogForCategory(0);
  v80 = OSLogForWFLogLevel(1uLL);
  v81 = v80;
  v31 = 0;
  if (WFCurrentLogLevel(v80, v82) && v16)
  {
    if (os_log_type_enabled(v16, v81))
    {
      *buf = 136315138;
      *&buf[4] = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v16, v81, "%s: unexpected section update", buf, 0xCu);
    }

    v31 = 0;
  }

LABEL_24:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v104 = __Block_byref_object_copy__0;
  *v105 = __Block_byref_object_dispose__0;
  *&v105[8] = &stru_288308678;
  v38 = *(a1 + 72);
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_136;
  v94[3] = &unk_279EC55B0;
  v94[4] = buf;
  [v38 enumerateObjectsUsingBlock:v94];
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__0;
  v92 = __Block_byref_object_dispose__0;
  v93 = &stru_288308678;
  v39 = *(a1 + 80);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_137;
  v87[3] = &unk_279EC55B0;
  v87[4] = &v88;
  [v39 enumerateObjectsUsingBlock:v87];
  v40 = WFLogForCategory(0);
  v41 = OSLogForWFLogLevel(4uLL);
  v42 = v41;
  if (WFCurrentLogLevel(v41, v43) >= 4 && v40 && os_log_type_enabled(v40, v42))
  {
    v44 = *(*&buf[8] + 40);
    v45 = v89[5];
    *v96 = 138412546;
    v97 = v44;
    v98 = 2112;
    v99 = v45;
    _os_log_impl(&dword_273FB9000, v40, v42, "Old networks: %@\n New networks: %@", v96, 0x16u);
  }

  v46 = [*(a1 + 32) tableView];
  [v46 deleteRowsAtIndexPaths:*(a1 + 56) withRowAnimation:0];

  v47 = [*(a1 + 32) tableView];
  [v47 insertRowsAtIndexPaths:*(a1 + 40) withRowAnimation:0];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v48 = *(a1 + 48);
  v49 = [v48 countByEnumeratingWithState:&v83 objects:v102 count:16];
  if (v49)
  {
    v50 = *v84;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v84 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = *(*(&v83 + 1) + 8 * i);
        v53 = [v52 objectAtIndexedSubscript:{0, v83}];
        v54 = [v52 objectAtIndexedSubscript:1];
        v55 = [*(a1 + 32) tableView];
        [v55 moveRowAtIndexPath:v53 toIndexPath:v54];
      }

      v49 = [v48 countByEnumeratingWithState:&v83 objects:v102 count:16];
    }

    while (v49);
  }

  v56 = *(a1 + 32);
  if ((v56[1048] & 1) == 0)
  {
    v57 = *(a1 + 96);
    v58 = [v56 sections];
    if (v57 == [v58 indexOfObject:&unk_288322498])
    {
      v59 = [*(a1 + 32) tableView];
      v60 = [v59 numberOfRowsInSection:*(a1 + 96)];
      LODWORD(v60) = v60 > [*(*(a1 + 32) + 1152) count];

      if (!v60)
      {
        goto LABEL_44;
      }

      v61 = [*(a1 + 32) tableView];
      v62 = [v61 numberOfRowsInSection:*(a1 + 96)];

      v63 = WFLogForCategory(0);
      v64 = OSLogForWFLogLevel(3uLL);
      v65 = v64;
      v67 = v62 - 1;
      if (WFCurrentLogLevel(v64, v66) >= 3 && v63 && os_log_type_enabled(v63, v65))
      {
        v68 = *(a1 + 96);
        *v96 = 136315650;
        v97 = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
        v98 = 2048;
        v99 = v67;
        v100 = 2048;
        v101 = v68;
        _os_log_impl(&dword_273FB9000, v63, v65, "%s: deleting other network row at row: %lu section: %lu", v96, 0x20u);
      }

      v58 = [*(a1 + 32) tableView];
      v69 = [MEMORY[0x277CCAA70] indexPathForRow:v67 inSection:*(a1 + 96)];
      v95 = v69;
      v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
      [v58 deleteRowsAtIndexPaths:v70 withRowAnimation:0];
    }
  }

LABEL_44:
  if (v31)
  {
    v71 = WFLogForCategory(0);
    v72 = OSLogForWFLogLevel(4uLL);
    v73 = v72;
    if (WFCurrentLogLevel(v72, v74) >= 4 && v71)
    {
      v75 = v71;
      if (os_log_type_enabled(v75, v73))
      {
        v76 = [*(a1 + 32) _sectionNameAtIndex:*(a1 + 96)];
        v77 = *(a1 + 96);
        *v96 = 136315650;
        v97 = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
        v98 = 2112;
        v99 = v76;
        v100 = 2048;
        v101 = v77;
        _os_log_impl(&dword_273FB9000, v75, v73, "%s: reloading header at section %@ (%lu)", v96, 0x20u);
      }
    }

    v78 = [*(a1 + 32) tableView];
    v79 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(a1 + 96)];
    [v78 _reloadSectionHeaderFooters:v79 withRowAnimation:100];
  }

  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(buf, 8);
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_136(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_137(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_138(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2)
  {
    v6 = v2;
    if (os_log_type_enabled(v6, v4))
    {
      v7 = [*(a1 + 32) _nameOfSection:*(a1 + 40)];
      v8 = *(a1 + 40);
      *buf = 136315650;
      v25 = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
      v26 = 2112;
      v27 = v7;
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_273FB9000, v6, v4, "%s: tableView updating finished for section %@ (%lu)", buf, 0x20u);
    }
  }

  *(*(a1 + 32) + 1056) = 0;
  v9 = [*(a1 + 32) _shouldContinueUpdateNetworkList];
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = [v10[153] copy];
    v12 = objc_opt_new();
    v13 = *(a1 + 32);
    v14 = *(v13 + 1224);
    *(v13 + 1224) = v12;

    *(*(a1 + 32) + 1057) = 0;
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) >= 4 && v15)
    {
      v19 = v15;
      if (os_log_type_enabled(v19, v17))
      {
        v20 = [v11 count];
        *buf = 134217984;
        v25 = v20;
        _os_log_impl(&dword_273FB9000, v19, v17, "continuing with pending network update (count %lu)", buf, 0xCu);
      }
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_140;
    v22[3] = &unk_279EC5588;
    v22[4] = *(a1 + 32);
    v23 = v11;
    v21 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }

  else
  {
    [v10 _processPendingCurrentNetworkUpdate];
  }
}

- (BOOL)_shouldContinueUpdateNetworkList
{
  sections = [(WFAirportViewController *)self sections];
  v4 = [sections containsObject:&unk_288322480];
  v5 = v4 ^ ([(NSArray *)self->_knownNetworks count]!= 0);

  sections2 = [(WFAirportViewController *)self sections];
  v7 = [sections2 containsObject:&unk_288322468];
  v8 = [(NSArray *)self->_popularNetworks count];

  sections3 = [(WFAirportViewController *)self sections];
  v10 = [sections3 containsObject:&unk_288322498];
  v11 = [(NSArray *)self->_infraNetworks count]!= 0;

  sections4 = [(WFAirportViewController *)self sections];
  v13 = [sections4 containsObject:&unk_288322438];
  v14 = [(NSArray *)self->_unconfiguredNetworks count]!= 0;

  v15 = 1;
  if ((v5 & 1) == 0 && ((v7 ^ (v8 != 0)) & 1) == 0 && ((v10 ^ v11) & 1) == 0 && ((v13 ^ v14) & 1) == 0)
  {
    return self->_networkResultsChangedWhileUIUpdates;
  }

  return v15;
}

- (void)refresh
{
  if (![(WFAirportViewController *)self isInEditingMode])
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__WFAirportViewController_refresh__block_invoke;
    block[3] = &unk_279EC5538;
    block[4] = self;
    dispatch_sync(internalQueue, block);
  }
}

void __34__WFAirportViewController_refresh__block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) listDelegate];
  [*(a1 + 32) setShowDiagnostics:{objc_msgSend(v14, "airportSettingsViewControllerShouldShowDiagnosticsMode:", *(a1 + 32))}];
  [*(a1 + 32) setShowNANUI:{objc_msgSend(v14, "airportSettingsViewControllerShouldShowNANUI:", *(a1 + 32))}];
  [*(a1 + 32) setShowKnownNetworks:{objc_msgSend(v14, "airportSettingsViewControllerShouldShowKnownNetworks:", *(a1 + 32))}];
  if (([*(a1 + 32) isInEditingMode] & 1) == 0)
  {
    if ([*(a1 + 32) showKnownNetworks])
    {
      v2 = [*(a1 + 32) sections];
      v3 = [v2 containsObject:&unk_288322420];

      if ((v3 & 1) == 0)
      {
        v8 = [*(a1 + 32) sections];
        v7 = [v8 mutableCopy];

        [v7 addObject:&unk_288322420];
        goto LABEL_8;
      }
    }
  }

  if (([*(a1 + 32) showKnownNetworks] & 1) == 0)
  {
    v4 = [*(a1 + 32) sections];
    v5 = [v4 containsObject:&unk_288322420];

    if (v5)
    {
      v6 = [*(a1 + 32) sections];
      v7 = [v6 mutableCopy];

      [v7 removeObject:&unk_288322450];
LABEL_8:
      [*(a1 + 32) setSections:v7];
    }
  }

  if ([*(a1 + 32) _refreshATJShownStateIfChanged])
  {
    v9 = [*(a1 + 32) sections];
    v10 = [v9 mutableCopy];

    if ([*(a1 + 32) askToJoinShown])
    {
      [v10 addObject:&unk_2883224C8];
    }

    else
    {
      [v10 removeObject:&unk_2883224C8];
    }

    [*(a1 + 32) setSections:v10];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (([v14 networkListViewControllerNetworkRestrictionActive:*(a1 + 32)] & 1) != 0 || objc_msgSend(v14, "networkListViewControllerIsManagedAppleID:", *(a1 + 32))))
  {
    v11 = [*(a1 + 32) sections];
    v12 = [v11 mutableCopy];

    [v12 removeObject:&unk_2883224E0];
    [*(a1 + 32) setSections:v12];
  }

  [*(a1 + 32) performSelectorOnMainThread:sel__updateNetworkRestrictionHeader withObject:0 waitUntilDone:1];
  v13 = [*(a1 + 32) tableView];
  [v13 reloadData];
}

- (void)powerStateDidChange:(BOOL)change
{
  v5 = [(WFAirportViewController *)self _defaultSectionsForPowerState:?];
  [(WFAirportViewController *)self setSections:v5];

  if (!change)
  {
    infraNetworks = self->_infraNetworks;
    self->_infraNetworks = 0;

    adhocNetworks = self->_adhocNetworks;
    self->_adhocNetworks = 0;

    unconfiguredNetworks = self->_unconfiguredNetworks;
    self->_unconfiguredNetworks = 0;

    popularNetworks = self->_popularNetworks;
    self->_popularNetworks = 0;

    knownNetworks = self->_knownNetworks;
    self->_knownNetworks = 0;

    currentNetwork = self->_currentNetwork;
    self->_currentNetwork = 0;

    self->_currentNetworkState = 0;
    currentNetworkSubtitle = self->_currentNetworkSubtitle;
    self->_currentNetworkSubtitle = 0;
  }

  [(WFAirportViewController *)self refresh];
}

- (void)powerStateDidChangeToggle:(unint64_t)toggle
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(WFAirportViewController *)self _defaultSectionsForPowerState:toggle == 1];
  [(WFAirportViewController *)self setSections:v5];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
  {
    v10 = v6;
    if (os_log_type_enabled(v10, v8))
    {
      v11 = WFPowerStateToggleToString(toggle);
      v23 = 136315394;
      v24 = "[WFAirportViewController powerStateDidChangeToggle:]";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_273FB9000, v10, v8, "%s: power state is now %@", &v23, 0x16u);
    }
  }

  if ((toggle & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    infraNetworks = self->_infraNetworks;
    self->_infraNetworks = 0;

    adhocNetworks = self->_adhocNetworks;
    self->_adhocNetworks = 0;

    unconfiguredNetworks = self->_unconfiguredNetworks;
    self->_unconfiguredNetworks = 0;

    popularNetworks = self->_popularNetworks;
    self->_popularNetworks = 0;

    knownNetworks = self->_knownNetworks;
    self->_knownNetworks = 0;

    currentNetwork = self->_currentNetwork;
    self->_currentNetwork = 0;

    self->_currentNetworkState = 0;
    currentNetworkSubtitle = self->_currentNetworkSubtitle;
    self->_currentNetworkSubtitle = 0;

    pendingNetworks = self->_pendingNetworks;
    self->_pendingNetworks = 0;

    pendingCurrentNetworkUpdate = self->_pendingCurrentNetworkUpdate;
    self->_pendingCurrentNetworkUpdate = 0;

    v21 = +[WFNetworkRowConfig settingsNetworkRowConfig];
    currentNetworkRowConfig = self->_currentNetworkRowConfig;
    self->_currentNetworkRowConfig = v21;

    [(WFNetworkRowConfig *)self->_currentNetworkRowConfig setSubtitle:0];
  }

  [(WFAirportViewController *)self refresh];
}

- (unint64_t)powerState
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v4 = [listDelegate networkListViewControllerCurrentPowerStateToggle:self];

  return v4;
}

- (void)powerModificationStateDidChange:(BOOL)change
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_disablePowerModification == change)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      v7 = 136315138;
      v8 = "[WFAirportViewController powerModificationStateDidChange:]";
      _os_log_impl(&dword_273FB9000, v3, v5, "%s: No change", &v7, 0xCu);
    }
  }

  else
  {
    self->_disablePowerModification = change;

    [(WFAirportViewController *)self _reloadPowerSection];
  }
}

- (void)managedAppleIDStateChange:(BOOL)change
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_isManagedAppleID == change)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      v7 = 136315138;
      v8 = "[WFAirportViewController managedAppleIDStateChange:]";
      _os_log_impl(&dword_273FB9000, v3, v5, "%s: No change", &v7, 0xCu);
    }
  }

  else
  {
    self->_isManagedAppleID = change;

    [(WFAirportViewController *)self refresh];
  }
}

- (void)reloadCellsForNetworkNames:(id)names
{
  v4 = MEMORY[0x277CBEB58];
  namesCopy = names;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__WFAirportViewController_reloadCellsForNetworkNames___block_invoke;
  v13 = &unk_279EC56A0;
  selfCopy = self;
  v15 = v6;
  v7 = v6;
  [namesCopy enumerateObjectsUsingBlock:&v10];

  v8 = [(WFAirportViewController *)self tableView:v10];
  allObjects = [v7 allObjects];
  [v8 reloadRowsAtIndexPaths:allObjects withRowAnimation:5];
}

void __54__WFAirportViewController_reloadCellsForNetworkNames___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _indexPathForNetworkName:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_273FB9000, v5, v7, "Cannot find indexpath for network: %@", &v9, 0xCu);
    }
  }
}

- (void)scrollToAirportCell:(unint64_t)cell
{
  if (cell - 1 <= 2)
  {
    v5 = qword_279EC5870[cell - 1];
    v6 = MEMORY[0x277CCAA70];
    sections = [(WFAirportViewController *)self sections];
    v9 = [v6 indexPathForRow:0 inSection:{objc_msgSend(sections, "indexOfObject:", v5)}];

    tableView = [(WFAirportViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:1];
  }
}

- (id)_indexPathForNetworkName:(id)name
{
  nameCopy = name;
  currentNetwork = [(WFAirportViewController *)self currentNetwork];
  ssid = [currentNetwork ssid];
  v7 = [ssid isEqualToString:nameCopy];

  if (v7)
  {
    sections = [(WFAirportViewController *)self sections];
    v9 = [sections indexOfObject:&unk_2883224B0];

    v10 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v9];
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    knownNetworks = [(WFAirportViewController *)self knownNetworks];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__WFAirportViewController__indexPathForNetworkName___block_invoke;
    v32[3] = &unk_279EC56C8;
    v12 = nameCopy;
    v33 = v12;
    v34 = &v35;
    [knownNetworks enumerateObjectsUsingBlock:v32];

    if (v36[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      popularNetworks = [(WFAirportViewController *)self popularNetworks];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __52__WFAirportViewController__indexPathForNetworkName___block_invoke_2;
      v29[3] = &unk_279EC56C8;
      v14 = v12;
      v30 = v14;
      v31 = &v35;
      [popularNetworks enumerateObjectsUsingBlock:v29];

      if (v36[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        infraNetworks = [(WFAirportViewController *)self infraNetworks];
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __52__WFAirportViewController__indexPathForNetworkName___block_invoke_3;
        v26 = &unk_279EC56C8;
        v27 = v14;
        v28 = &v35;
        [infraNetworks enumerateObjectsUsingBlock:&v23];

        if (v36[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = 0;
        }

        else
        {
          v20 = [(WFAirportViewController *)self sections:v23];
          v21 = [v20 indexOfObject:&unk_288322498];

          v10 = [MEMORY[0x277CCAA70] indexPathForRow:v36[3] inSection:v21];
        }
      }

      else
      {
        sections2 = [(WFAirportViewController *)self sections];
        v19 = [sections2 indexOfObject:&unk_288322468];

        v10 = [MEMORY[0x277CCAA70] indexPathForRow:v36[3] inSection:v19];
      }
    }

    else
    {
      sections3 = [(WFAirportViewController *)self sections];
      v17 = [sections3 indexOfObject:&unk_288322480];

      v10 = [MEMORY[0x277CCAA70] indexPathForRow:v36[3] inSection:v17];
    }

    _Block_object_dispose(&v35, 8);
  }

  return v10;
}

void __52__WFAirportViewController__indexPathForNetworkName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ssid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void __52__WFAirportViewController__indexPathForNetworkName___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ssid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void __52__WFAirportViewController__indexPathForNetworkName___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ssid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (void)updateViewsForNetworks:(id)networks
{
  v21 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
    {
      *buf = 136315394;
      v18 = "[WFAirportViewController updateViewsForNetworks:]";
      v19 = 2112;
      v20 = networksCopy;
      _os_log_impl(&dword_273FB9000, v5, v7, "%s: updating views for %@", buf, 0x16u);
    }

    if (networksCopy)
    {
      internalQueue = self->_internalQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__WFAirportViewController_updateViewsForNetworks___block_invoke;
      v14[3] = &unk_279EC5588;
      v15 = networksCopy;
      selfCopy = self;
      dispatch_sync(internalQueue, v14);
    }

    else
    {
      v10 = WFLogForCategory(0);
      v11 = OSLogForWFLogLevel(3uLL);
      v12 = v11;
      if (WFCurrentLogLevel(v11, v13) >= 3 && v10 && os_log_type_enabled(v10, v12))
      {
        *buf = 136315138;
        v18 = "[WFAirportViewController updateViewsForNetworks:]";
        _os_log_impl(&dword_273FB9000, v10, v12, "%s: nil networks", buf, 0xCu);
      }
    }
  }

  else
  {
    [(WFAirportViewController *)self performSelectorOnMainThread:sel_updateViewsForNetworks_ withObject:networksCopy waitUntilDone:0];
  }
}

void __50__WFAirportViewController_updateViewsForNetworks___block_invoke(uint64_t a1)
{
  v111 = *MEMORY[0x277D85DE8];
  v85 = [MEMORY[0x277CBEB18] array];
  v2 = [*(a1 + 32) infrastructureNetworks];
  v3 = [*(a1 + 40) sections];
  v4 = [v3 indexOfObject:&unk_288322498];

  v5 = [*(a1 + 40) infraNetworks];
  v86 = a1;
  v84 = v2;
  if (v5 && (v6 = v5, v7 = [v2 count], v6, v7))
  {
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 3 && v8 && os_log_type_enabled(v8, v10))
      {
        *buf = 136315138;
        v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
        _os_log_impl(&dword_273FB9000, v8, v10, "%s: infra section is not found", buf, 0xCu);
      }

      [*(a1 + 40) _dumpSections];
    }

    else
    {
      v16 = [*(a1 + 40) infraNetworks];
      v17 = [v16 mutableCopy];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v18 = v2;
      v19 = [v18 countByEnumeratingWithState:&v96 objects:v110 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v97;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v97 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v96 + 1) + 8 * i);
            v24 = [*(a1 + 40) infraNetworks];
            v25 = [v24 indexOfObject:v23];

            if (v25 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = WFLogForCategory(0);
              v27 = OSLogForWFLogLevel(3uLL);
              v28 = v27;
              if (WFCurrentLogLevel(v27, v29) >= 3 && v26 && os_log_type_enabled(v26, v28))
              {
                *buf = 136315394;
                v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
                v102 = 2112;
                v103 = v23;
                _os_log_impl(&dword_273FB9000, v26, v28, "%s: unknown row for record %@", buf, 0x16u);
              }
            }

            else
            {
              v30 = [MEMORY[0x277CCAA70] indexPathForRow:v25 inSection:v4];
              [v85 addObject:v30];

              [v17 replaceObjectAtIndex:v25 withObject:v23];
            }

            a1 = v86;
          }

          v20 = [v18 countByEnumeratingWithState:&v96 objects:v110 count:16];
        }

        while (v20);
      }

      [*(a1 + 40) setInfraNetworks:v17];
    }
  }

  else
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) >= 3 && v12 && os_log_type_enabled(v12, v14))
    {
      *buf = 136315138;
      v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v12, v14, "%s: no infra networks", buf, 0xCu);
    }
  }

  v31 = [*(a1 + 32) knownNetworks];
  v32 = [*(a1 + 40) sections];
  v33 = [v32 indexOfObject:&unk_288322480];

  v34 = [*(a1 + 40) knownNetworks];
  v82 = v31;
  if (v34 && (v35 = v34, v36 = [v31 count], v35, v36))
  {
    if (v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = WFLogForCategory(0);
      v38 = OSLogForWFLogLevel(3uLL);
      v39 = v38;
      if (WFCurrentLogLevel(v38, v40) >= 3 && v37 && os_log_type_enabled(v37, v39))
      {
        *buf = 136315138;
        v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
        _os_log_impl(&dword_273FB9000, v37, v39, "%s: known section is not found", buf, 0xCu);
      }

      [*(a1 + 40) _dumpSections];
    }

    else
    {
      v45 = [*(a1 + 40) knownNetworks];
      v46 = [v45 mutableCopy];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v47 = v31;
      v48 = [v47 countByEnumeratingWithState:&v92 objects:v109 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v93;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v93 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v92 + 1) + 8 * j);
            v53 = [*(v86 + 40) knownNetworks];
            v54 = [v53 indexOfObject:v52];

            if (v54 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v55 = WFLogForCategory(0);
              v56 = OSLogForWFLogLevel(3uLL);
              v57 = v56;
              if (WFCurrentLogLevel(v56, v58) >= 3 && v55 && os_log_type_enabled(v55, v57))
              {
                *buf = 136315394;
                v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
                v102 = 2112;
                v103 = v52;
                _os_log_impl(&dword_273FB9000, v55, v57, "%s: unknown row for record %@", buf, 0x16u);
              }
            }

            else
            {
              v59 = [MEMORY[0x277CCAA70] indexPathForRow:v54 inSection:v33];
              [v85 addObject:v59];

              [v46 replaceObjectAtIndex:v54 withObject:v52];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v92 objects:v109 count:16];
        }

        while (v49);
      }

      a1 = v86;
      [*(v86 + 40) setKnownNetworks:v46];
    }
  }

  else
  {
    v41 = WFLogForCategory(0);
    v42 = OSLogForWFLogLevel(3uLL);
    v43 = v42;
    if (WFCurrentLogLevel(v42, v44) >= 3 && v41 && os_log_type_enabled(v41, v43))
    {
      *buf = 136315138;
      v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v41, v43, "%s: no knownNetworks networks", buf, 0xCu);
    }
  }

  if ([v85 count])
  {
    v60 = WFLogForCategory(0);
    v61 = OSLogForWFLogLevel(3uLL);
    v62 = v61;
    if (WFCurrentLogLevel(v61, v63) >= 3 && v60 && os_log_type_enabled(v60, v62))
    {
      *buf = 136315394;
      v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
      v102 = 2112;
      v103 = v85;
      _os_log_impl(&dword_273FB9000, v60, v62, "%s: updating paths='%@'", buf, 0x16u);
    }

    v64 = [*(a1 + 40) tableView];
    [v64 reloadRowsAtIndexPaths:v85 withRowAnimation:5];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = *(a1 + 32);
  v65 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v89;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v89 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v88 + 1) + 8 * k);
        v70 = [*(a1 + 40) currentNetwork];
        if ([v69 isEqual:v70])
        {
          v71 = [*(*(a1 + 40) + 1072) title];
          v72 = [v69 title];
          v73 = [v71 isEqualToString:v72];

          if ((v73 & 1) == 0)
          {
            v74 = WFLogForCategory(0);
            v75 = OSLogForWFLogLevel(3uLL);
            v76 = v75;
            if (WFCurrentLogLevel(v75, v77) >= 3 && v74)
            {
              v78 = v74;
              if (os_log_type_enabled(v78, v76))
              {
                v79 = [*(*(a1 + 40) + 1072) title];
                v80 = [v69 title];
                *buf = 136315906;
                v101 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
                v102 = 2112;
                v103 = v79;
                v104 = 2112;
                v105 = v80;
                v106 = 2112;
                v107 = v69;
                _os_log_impl(&dword_273FB9000, v78, v76, "%s: updating current network view (title='%@' -> '%@' with ='%@'", buf, 0x2Au);

                a1 = v86;
              }
            }

            objc_storeStrong((*(a1 + 40) + 1072), v69);
            v81 = [*(a1 + 40) currentNetworkRowConfig];
            [v81 setNetwork:v69];

            [*(a1 + 40) _reloadCurrentNetworkCell];
          }
        }

        else
        {
        }
      }

      v66 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
    }

    while (v66);
  }
}

- (void)setAskToJoinMode:(int64_t)mode
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v22 = 136315394;
    v23 = "[WFAirportViewController setAskToJoinMode:]";
    v24 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: setting atj mode to %ld", &v22, 0x16u);
  }

  sections = [(WFAirportViewController *)self sections];
  v10 = [sections indexOfObject:&unk_2883224C8];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      v22 = 136315138;
      v23 = "[WFAirportViewController setAskToJoinMode:]";
      _os_log_impl(&dword_273FB9000, v11, v13, "%s: unable to find WFAirportSectionAskToJoin in sections", &v22, 0xCu);
    }

    [(WFAirportViewController *)self _dumpSections];
  }

  else
  {
    tableView = [(WFAirportViewController *)self tableView];
    v16 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v10];
    v17 = [tableView cellForRowAtIndexPath:v16];

    if (v17)
    {
      v18 = [(WFAirportViewController *)self _askToJoinStateStringForATJMode:mode];
      detailTextLabel = [v17 detailTextLabel];
      [detailTextLabel setText:v18];
    }

    tableView2 = [(WFAirportViewController *)self tableView];
    v21 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
    [tableView2 _reloadSectionHeaderFooters:v21 withRowAnimation:5];
  }
}

- (void)setAutoInstantHotspotJoinOption:(int64_t)option
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v24 = 136315394;
    v25 = "[WFAirportViewController setAutoInstantHotspotJoinOption:]";
    v26 = 2048;
    optionCopy = option;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: setting auto hotspot option to %ld", &v24, 0x16u);
  }

  sections = [(WFAirportViewController *)self sections];
  v10 = [sections indexOfObject:&unk_2883224E0];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      v24 = 136315138;
      v25 = "[WFAirportViewController setAutoInstantHotspotJoinOption:]";
      _os_log_impl(&dword_273FB9000, v11, v13, "%s: unable to find WFAirportSectionAutoInstantHotspot in sections", &v24, 0xCu);
    }

    [(WFAirportViewController *)self _dumpSections];
  }

  else
  {
    tableView = [(WFAirportViewController *)self tableView];
    v16 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v10];
    v17 = [tableView cellForRowAtIndexPath:v16];

    if (v17)
    {
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [(WFAirportViewController *)self _getAutoHotspotOptionText:option];
      v20 = [v18 localizedStringForKey:v19 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      detailTextLabel = [v17 detailTextLabel];
      [detailTextLabel setText:v20];
    }

    tableView2 = [(WFAirportViewController *)self tableView];
    v23 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
    [tableView2 _reloadSectionHeaderFooters:v23 withRowAnimation:5];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFAirportViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  showOtherNetwork = 0;
  if (v5 > 5)
  {
    if (v5 <= 9)
    {
      v7 = 1;
      if (v5 != 8)
      {
        v7 = v5 == 9;
      }

      if ((v5 - 6) >= 2)
      {
        return v7;
      }

      else
      {
        return 1;
      }
    }

    switch(v5)
    {
      case 10:
        return 1;
      case 11:
        v9 = 1256;
        goto LABEL_29;
      case 12:
        v9 = 1264;
        goto LABEL_29;
    }

    return showOtherNetwork;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      showOtherNetwork = self->_showOtherNetwork;
      if ([(NSArray *)self->_infraNetworks count])
      {
        showOtherNetwork += [(NSArray *)self->_infraNetworks count];
      }

      return showOtherNetwork;
    }

    if (v5 == 4)
    {
      v10 = 1176;
    }

    else
    {
      v10 = 1184;
    }

    if ([*(&self->super.super.super.super.super.isa + v10) count])
    {
      v15 = *(&self->super.super.super.super.super.isa + v10);
      goto LABEL_33;
    }

    return 0;
  }

  if (!v5)
  {
    showOtherNetwork = [(WFAirportViewController *)self rowCountWithPlacardCell:1];
    currentNetwork = [(WFAirportViewController *)self currentNetwork];
    if (currentNetwork)
    {
      v12 = currentNetwork;
      currentNetwork2 = [(WFAirportViewController *)self currentNetwork];
      if ([currentNetwork2 canBeDisplayedAsCurrent])
      {
        powered = [(WFAirportViewController *)self powered];

        showOtherNetwork += powered;
      }

      else
      {
      }
    }

    if ([(WFAirportViewController *)self showDiagnosticsCell])
    {
      showOtherNetwork += [(WFAirportViewController *)self powered];
    }

    return showOtherNetwork;
  }

  if (v5 == 1)
  {
    v9 = 1168;
    goto LABEL_29;
  }

  if (v5 != 2)
  {
    return showOtherNetwork;
  }

  v9 = 1160;
LABEL_29:
  v15 = *(&self->super.super.super.super.super.isa + v9);
LABEL_33:

  return [v15 count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v79 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v9 = -[WFAirportViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  v10 = [pathCopy row];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  switch(v9)
  {
    case 0uLL:
      v12 = 0;
      if ([(WFAirportViewController *)self usePlacardCell]&& !v10)
      {
        v12 = [viewCopy dequeueReusableCellWithIdentifier:@"WFWiFiPlacardCell"];
      }

      if (v10 == [(WFAirportViewController *)self rowCountWithPlacardCell:0])
      {
        v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFPowerCell"];

        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if ([(WFAirportViewController *)self _isChinaDevice])
        {
          v15 = @"kWFLocWiFiPowerTitleCH";
        }

        else
        {
          v15 = @"kWFLocWiFiPowerTitle";
        }

        v16 = [v14 localizedStringForKey:v15 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel = [v13 textLabel];
        [textLabel setText:v16];

        v18 = objc_alloc(MEMORY[0x277D75AE8]);
        defaultContentConfiguration = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        [defaultContentConfiguration addTarget:self action:sel__powerSwitchChanged_ forControlEvents:4096];
        powerState = [(WFAirportViewController *)self powerState];
        v21 = WFLogForCategory(0);
        v22 = OSLogForWFLogLevel(3uLL);
        v23 = v22;
        if (WFCurrentLogLevel(v22, v24) >= 3 && v21)
        {
          v25 = v21;
          if (os_log_type_enabled(v25, v23))
          {
            v74 = WFPowerStateToggleToString(powerState);
            *buf = 136315394;
            v76 = "[WFAirportViewController tableView:cellForRowAtIndexPath:]";
            v77 = 2112;
            v78 = v74;
            _os_log_impl(&dword_273FB9000, v25, v23, "%s: set power state UI to %@", buf, 0x16u);
          }
        }

        if (powerState == 3)
        {
          [defaultContentConfiguration setEnabled:0];
          v61 = 0;
          goto LABEL_59;
        }

        if (powerState != 2)
        {
          [defaultContentConfiguration setEnabled:{-[WFAirportViewController disablePowerModification](self, "disablePowerModification") ^ 1}];
          powered = [(WFAirportViewController *)self powered];
          goto LABEL_58;
        }

        v26 = v13;

        goto LABEL_63;
      }

      if (v10 == [(WFAirportViewController *)self rowCountWithPlacardCell:1]&& [(WFAirportViewController *)self showDiagnosticsCell])
      {
        v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFDiagnosticsCell"];

        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = v31;
        v33 = @"kWFLocWiFiDiagnosticsTitle";
        goto LABEL_38;
      }

      v58 = [(WFAirportViewController *)self rowCountWithPlacardCell:1];
      if (v10 == v58)
      {
        currentNetwork = [(WFAirportViewController *)self currentNetwork];
        if (currentNetwork)
        {
          v73 = currentNetwork;
          currentNetwork2 = [(WFAirportViewController *)self currentNetwork];
          if ([currentNetwork2 canBeDisplayedAsCurrent] && !-[WFAirportViewController showDiagnosticsCell](self, "showDiagnosticsCell"))
          {

            goto LABEL_84;
          }

          v60 = 1;
        }

        else
        {
          v60 = 0;
          v73 = 0;
        }
      }

      else
      {
        v60 = 0;
      }

      if (v10 != [(WFAirportViewController *)self rowCountWithPlacardCell:2])
      {
        showDiagnosticsCell = 0;
        if (!v60)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      v72 = v60;
      currentNetwork3 = [(WFAirportViewController *)self currentNetwork];
      if (currentNetwork3)
      {
        v64 = currentNetwork3;
        v71 = currentNetwork2;
        currentNetwork4 = [(WFAirportViewController *)self currentNetwork];
        if ([currentNetwork4 canBeDisplayedAsCurrent])
        {
          showDiagnosticsCell = [(WFAirportViewController *)self showDiagnosticsCell];
        }

        else
        {

          showDiagnosticsCell = 0;
        }

        currentNetwork2 = v71;
      }

      else
      {
        showDiagnosticsCell = 0;
      }

      if (v72)
      {
LABEL_72:
      }

LABEL_73:
      if (v10 == v58)
      {

        if (showDiagnosticsCell)
        {
          goto LABEL_84;
        }

LABEL_77:
        v13 = v12;
        goto LABEL_62;
      }

      if (!showDiagnosticsCell)
      {
        goto LABEL_77;
      }

LABEL_84:
      currentNetwork5 = [(WFAirportViewController *)self currentNetwork];
      if (listDelegate)
      {
        v67 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];
      }

      else
      {
        v67 = 0;
      }

      currentNetworkSubtitle = [(WFAirportViewController *)self currentNetworkSubtitle];

      if (currentNetworkSubtitle)
      {
        [(WFAirportViewController *)self currentNetworkSubtitle];
      }

      else
      {
        [currentNetwork5 subtitle];
      }
      v69 = ;
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkCell" forIndexPath:pathCopy];
      title = [currentNetwork5 title];
      [v13 setTitle:title];

      [v13 setSubtitle:v69];
      [v13 setSecure:{objc_msgSend(currentNetwork5, "isSecure")}];
      [v13 setConnectionError:v67];
      if ((v67 & 1) == 0)
      {
        [v13 setBars:WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI)];
      }

      [v13 setState:self->_currentNetworkState];
      [v13 setPersonalHotspot:{objc_msgSend(currentNetwork5, "iOSHotspot")}];
      [v13 setAccessoryType:4];

LABEL_20:
LABEL_62:
      v26 = v13;
LABEL_63:

      return v26;
    case 1uLL:
      v28 = 1168;
      goto LABEL_31;
    case 2uLL:
      v28 = 1160;
      goto LABEL_31;
    case 3uLL:
      infraNetworks = self->_infraNetworks;
      if (!infraNetworks || v10 == [(NSArray *)infraNetworks count]&& self->_showOtherNetwork)
      {
        v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFOtherNetworkCell"];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = [v35 localizedStringForKey:@"kWFLocOtherNetworkTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel2 = [v13 textLabel];
        [textLabel2 setText:v36];

LABEL_35:
      }

      else
      {
        v44 = self->_infraNetworks;
LABEL_32:
        defaultContentConfiguration = [(NSArray *)v44 objectAtIndex:v10];
        v27 = [(WFAirportViewController *)self _tableCellForNetwork:defaultContentConfiguration tableView:viewCopy indexPath:pathCopy];
LABEL_33:
        v13 = v27;
LABEL_61:
      }

      goto LABEL_62;
    case 4uLL:
      v28 = 1176;
LABEL_31:
      v44 = *(&self->super.super.super.super.super.isa + v28);
      goto LABEL_32;
    case 5uLL:
      v35 = [(NSArray *)self->_unconfiguredNetworks objectAtIndex:v10];
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFUnconfiguredNetworkCell" forIndexPath:pathCopy];
      title2 = [v35 title];
      textLabel3 = [v13 textLabel];
      [textLabel3 setText:title2];

      [v13 setAccessoryType:1];
      goto LABEL_35;
    case 6uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFNetworkDataUsageCellIdentifier"];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = v31;
      v33 = @"kWFLocDataUsageTitle";
      goto LABEL_38;
    case 7uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFNetworkWAPICellIdentifier"];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"kWFLocEnableWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel4 = [v13 textLabel];
      [textLabel4 setText:v39];

      textLabel5 = [v13 textLabel];
      [textLabel5 setNumberOfLines:0];

      v42 = objc_alloc(MEMORY[0x277D75AE8]);
      defaultContentConfiguration = [v42 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [defaultContentConfiguration addTarget:self action:sel__enableWAPISwitchChanged_ forControlEvents:4096];
      if (listDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        powered = [listDelegate networkListViewControllerWAPIEnabled:self];
LABEL_58:
        v61 = powered;
LABEL_59:
        [defaultContentConfiguration setOn:v61];
      }

      [v13 setAccessoryView:defaultContentConfiguration];
      [v13 setSelectionStyle:0];
      goto LABEL_61;
    case 8uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFAskToJoinCell"];
      if (!v13)
      {
        v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFAskToJoinCell"];
      }

      defaultContentConfiguration = [v13 defaultContentConfiguration];
      v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = [v55 localizedStringForKey:@"kWFLocAskToJoinTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [defaultContentConfiguration setText:v56];

      v57 = [(WFAirportViewController *)self _askToJoinStateStringForATJMode:[(WFAirportViewController *)self _askToJoinMode]];
      [defaultContentConfiguration setSecondaryText:v57];

      goto LABEL_45;
    case 9uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkKnownNetworksCellIdentifier"];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = v31;
      v33 = @"kWFLocKnownNetworksTitle";
LABEL_38:
      v47 = [v31 localizedStringForKey:v33 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel6 = [v13 textLabel];
      [textLabel6 setText:v47];

      [v13 setAccessoryType:1];
      goto LABEL_62;
    case 0xAuLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFAutoInstantHotspotCell"];
      if (!v13)
      {
        v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFAutoInstantHotspotCell"];
      }

      defaultContentConfiguration = [v13 defaultContentConfiguration];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"kWFLocAutoInstantHotspotTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [defaultContentConfiguration setText:v50];

      v51 = [listDelegate networkListViewControllerAutoInstantHotspotOption:self];
      v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v53 = [(WFAirportViewController *)self _getAutoHotspotOptionText:v51];
      v54 = [v52 localizedStringForKey:v53 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [defaultContentConfiguration setSecondaryText:v54];

LABEL_45:
      [v13 setContentConfiguration:defaultContentConfiguration];
      [v13 setAccessoryType:1];
      goto LABEL_61;
    case 0xBuLL:
      defaultContentConfiguration = [(NSMutableArray *)self->_editableKnownNetworks objectAtIndex:v10];
      v27 = [(WFAirportViewController *)self _tableCellForKnownNetwork:defaultContentConfiguration tableView:viewCopy indexPath:pathCopy extraLeadingPadding:0];
      goto LABEL_33;
    case 0xCuLL:
      managedKnownNetworks = [(WFAirportViewController *)self managedKnownNetworks];
      currentNetwork5 = [managedKnownNetworks objectAtIndex:v10];

      v13 = [(WFAirportViewController *)self _tableCellForKnownNetwork:currentNetwork5 tableView:viewCopy indexPath:pathCopy extraLeadingPadding:1];
      goto LABEL_20;
    default:
      v13 = 0;
      goto LABEL_62;
  }
}

- (id)_tableCellForKnownNetwork:(id)network tableView:(id)view indexPath:(id)path extraLeadingPadding:(BOOL)padding
{
  paddingCopy = padding;
  networkCopy = network;
  pathCopy = path;
  if (paddingCopy)
  {
    v11 = @"kWFNetworkProfileNetworksListCellIdentifier";
  }

  else
  {
    v11 = @"kWFNetworkEditableNetworksListCellIdentifier";
  }

  v12 = [view dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];
  v13 = v12;
  if (v12)
  {
    if (networkCopy)
    {
      [v12 setHasLeadingPadding:paddingCopy];
      title = [networkCopy title];
      [v13 setNetworkName:title];

      [v13 setShowLock:{objc_msgSend(networkCopy, "isSecure")}];
      [v13 setAccessoryType:4];
      [v13 setEditingAccessoryType:4];
      v15 = v13;
      goto LABEL_7;
    }

    [WFAirportViewController _tableCellForKnownNetwork:pathCopy tableView:? indexPath:? extraLeadingPadding:?];
  }

  else
  {
    [WFAirportViewController _tableCellForKnownNetwork:pathCopy tableView:networkCopy indexPath:? extraLeadingPadding:?];
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)_tableCellForNetwork:(id)network tableView:(id)view indexPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  pathCopy = path;
  viewCopy = view;
  if ([networkCopy isInstantHotspot])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"WFHotspotCell" forIndexPath:pathCopy];

    if (v10)
    {
      if (networkCopy)
      {
        title = [networkCopy title];
        [v10 setTitle:title];

        hotspotDetails = [v10 hotspotDetails];

        if (!hotspotDetails)
        {
          v13 = objc_alloc_init(WFHotspotDetails);
          hotspotBatteryLife = [networkCopy hotspotBatteryLife];
          [(WFHotspotDetails *)v13 setBatteryLife:hotspotBatteryLife];

          hotspotCellularProtocol = [networkCopy hotspotCellularProtocol];
          [(WFHotspotDetails *)v13 setCellularProtocolString:hotspotCellularProtocol];

          hotspotSignalStrength = [networkCopy hotspotSignalStrength];
          [(WFHotspotDetails *)v13 setSignalStrength:hotspotSignalStrength];

          [v10 setHotspotDetails:v13];
        }

        v17 = v10;
        v18 = 0;
        goto LABEL_10;
      }

LABEL_22:
      [WFAirportViewController _tableCellForNetwork:pathCopy tableView:v29 indexPath:?];
      v23 = *v29;
      goto LABEL_23;
    }

    v23 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    v25 = v24;
    if (!WFCurrentLogLevel(v24, v26) || !v23 || !os_log_type_enabled(v23, v25))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkCell" forIndexPath:pathCopy];

    if (v10)
    {
      if (networkCopy)
      {
        title2 = [networkCopy title];
        [v10 setTitle:title2];

        subtitle = [networkCopy subtitle];
        [v10 setSubtitle:subtitle];

        [v10 setSecure:{objc_msgSend(networkCopy, "isSecure")}];
        [networkCopy scaledRSSI];
        [v10 setBars:WFSignalBarsFromScaledRSSI(v21)];
        [v10 setPersonalHotspot:{objc_msgSend(networkCopy, "iOSHotspot")}];
        v17 = v10;
        v18 = 4;
LABEL_10:
        [v17 setAccessoryType:v18];
        [v10 setSeparatorInset:{0.0, 40.0, 0.0, 0.0}];
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    v23 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(1uLL);
    v25 = v27;
    if (!WFCurrentLogLevel(v27, v28) || !v23 || !os_log_type_enabled(v23, v25))
    {
      goto LABEL_23;
    }
  }

  *v29 = 138543618;
  *&v29[4] = pathCopy;
  v30 = 2114;
  v31 = networkCopy;
  _os_log_impl(&dword_273FB9000, v23, v25, "Unable to create cell at indexPath %{public}@ for network %{public}@", v29, 0x16u);
LABEL_23:

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  if (v5 == 10)
  {
    _isChinaDevice = [(WFAirportViewController *)self _isChinaDevice];
    v10 = @"kWFLocAutoInstantHotspotFooter";
    if (_isChinaDevice)
    {
      v10 = @"kWFLocAutoInstantHotspotFooterCH";
    }

    v11 = MEMORY[0x277CCA8D8];
    v12 = v10;
    v13 = [v11 bundleForClass:objc_opt_class()];
    v6 = [v13 localizedStringForKey:v12 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    if (v5 != 8)
    {
      if (v5)
      {
LABEL_6:
        v6 = 0;
        goto LABEL_16;
      }

      if ([(WFAirportViewController *)self powered])
      {
        if ([(WFAirportViewController *)self userAutoJoinEnabled])
        {
          goto LABEL_6;
        }

        userAutoJoinDisabledWarning = [(WFAirportViewController *)self userAutoJoinDisabledWarning];
      }

      else
      {
        userAutoJoinDisabledWarning = [(WFAirportViewController *)self powerOffLocationWarning];
      }

      goto LABEL_15;
    }

    _askToJoinShouldBeVisible = [(WFAirportViewController *)self _askToJoinShouldBeVisible];
    v6 = 0;
    if ([(WFAirportViewController *)self userAutoJoinEnabled]&& _askToJoinShouldBeVisible)
    {
      userAutoJoinDisabledWarning = [(WFAirportViewController *)self _askToJoinFooterString];
LABEL_15:
      v6 = userAutoJoinDisabledWarning;
    }
  }

LABEL_16:

  return v6;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  v5 = 0;
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"kWFLocPublicSectionTitle";
      }

      else
      {
        if (v4 != 3)
        {
          goto LABEL_35;
        }

        sections = [(WFAirportViewController *)self sections];
        v8 = [sections indexOfObject:&unk_288322480];

        sections2 = [(WFAirportViewController *)self sections];
        v10 = [sections2 indexOfObject:&unk_288322468];

        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        if (v8 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = @"kWFLocChooseNetworkSectionSingleTitle";
        }

        else
        {
          v13 = @"kWFLocChooseNetworkSectionTitle";
        }
      }

      goto LABEL_34;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_knownNetworks;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      v18 = 1;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v18 &= [*(*(&v21 + 1) + 8 * i) isInstantHotspot];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);

      if ((v18 & 1) == 0)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"kWFLocMyNetworksSectionTitle";
LABEL_34:
        v5 = [v11 localizedStringForKey:v13 value:&stru_288308678 table:{@"WiFiKitUILocalizableStrings", v21}];

        goto LABEL_35;
      }
    }

    else
    {
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"kWFLocHotspotsSectionTitle";
    goto LABEL_34;
  }

  if (v4 > 10)
  {
    if (v4 == 11)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"kWFLocAllEditableKnownSectionTitle";
    }

    else
    {
      if (v4 != 12)
      {
        goto LABEL_35;
      }

      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"kFWLocAllProfileKnownSectionTitle";
    }

    goto LABEL_34;
  }

  if (v4 == 4)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"kWFLocAdhocSectionTitle";
    goto LABEL_34;
  }

  if (v4 == 5)
  {
    listDelegate = [(WFAirportViewController *)self listDelegate];
    if (listDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [listDelegate airportSettingsViewController:self unconfiguredAccessoriesGroupHeaderTitle:self->_unconfiguredNetworks];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_35:

  return v5;
}

- (id)headerIdentifierForSectionType:(unint64_t)type
{
  if (type - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_279EC5888[type - 1];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  v8 = [(WFAirportViewController *)self headerIdentifierForSectionType:v7];
  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  if (v7 == 3)
  {
    [(WFAirportViewController *)self setChooseNetworkHeader:v9];
  }

  v10 = [(WFAirportViewController *)self titleForHeaderInSection:section];
  if (v10)
  {
    [v9 setTitle:v10];
  }

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section || (v7 = 18.0, [(WFAirportViewController *)self isInEditingMode]))
  {
    v7 = *MEMORY[0x277D76F30];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v153 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315394;
    v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
    v148 = 2112;
    v149 = pathCopy;
    _os_log_impl(&dword_273FB9000, v7, v9, "%s: indexPath %@", buf, 0x16u);
  }

  v138 = viewCopy;
  v139 = pathCopy;

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  selfCopy4 = self;
  obj = [(WFAirportViewController *)self sections];
  v12 = [obj countByEnumeratingWithState:&v142 objects:v152 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v143;
    v15 = &stru_288308678;
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        if (*v143 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v142 + 1) + 8 * v16);
        v19 = MEMORY[0x277CCACA8];
        v20 = -[WFAirportViewController _nameOfSection:](selfCopy4, "_nameOfSection:", [v18 intValue]);
        tableView = [(WFAirportViewController *)selfCopy4 tableView];
        sections = [(WFAirportViewController *)selfCopy4 sections];
        v23 = [v19 stringWithFormat:@"section: %@ has %ld items", v20, objc_msgSend(tableView, "numberOfRowsInSection:", objc_msgSend(sections, "indexOfObject:", v18))];
        v15 = [(__CFString *)v17 stringByAppendingString:v23];

        selfCopy4 = self;
        ++v16;
        v17 = v15;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v142 objects:v152 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = &stru_288308678;
  }

  v24 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(4uLL);
  v26 = v25;
  if (WFCurrentLogLevel(v25, v27) >= 4 && v24 && os_log_type_enabled(v24, v26))
  {
    *buf = 138412290;
    v147 = v15;
    _os_log_impl(&dword_273FB9000, v24, v26, "%@", buf, 0xCu);
  }

  v28 = v139;
  v29 = [v139 row];
  joiningHotspot = [(WFAirportViewController *)selfCopy4 joiningHotspot];
  listDelegate = [(WFAirportViewController *)selfCopy4 listDelegate];
  if (joiningHotspot)
  {
    v32 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(3uLL);
    v34 = v33;
    if (WFCurrentLogLevel(v33, v35) >= 3 && v32 && os_log_type_enabled(v32, v34))
    {
      *buf = 136315394;
      v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
      v148 = 2112;
      v149 = joiningHotspot;
      _os_log_impl(&dword_273FB9000, v32, v34, "%s: hotspot joining in progress %@", buf, 0x16u);
    }

    knownNetworks = [(WFAirportViewController *)selfCopy4 knownNetworks];
    v37 = [knownNetworks indexOfObject:joiningHotspot];

    sections2 = [(WFAirportViewController *)selfCopy4 sections];
    v39 = [sections2 indexOfObject:&unk_288322480];

    if (v37 == 0x7FFFFFFFFFFFFFFFLL || v39 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      v41 = WFLogForCategory(0);
      v46 = OSLogForWFLogLevel(1uLL);
      v47 = v46;
      if (WFCurrentLogLevel(v46, v48) && v41)
      {
        v41 = v41;
        if (os_log_type_enabled(v41, v47))
        {
          knownNetworks2 = [(WFAirportViewController *)selfCopy4 knownNetworks];
          *buf = 138543618;
          v147 = joiningHotspot;
          v148 = 2114;
          v149 = knownNetworks2;
          _os_log_impl(&dword_273FB9000, v41, v47, "Joining hotspot %{public}@ can't be found in set %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v40 = [MEMORY[0x277CCAA70] indexPathForRow:v37 inSection:v39];
      v41 = [v138 cellForRowAtIndexPath:v40];

      v42 = WFLogForCategory(0);
      v43 = OSLogForWFLogLevel(3uLL);
      v44 = v43;
      if (WFCurrentLogLevel(v43, v45) >= 3 && v42 && os_log_type_enabled(v42, v44))
      {
        *buf = 136315394;
        v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
        v148 = 2112;
        v149 = v41;
        _os_log_impl(&dword_273FB9000, v42, v44, "%s: updating state for cell %@", buf, 0x16u);
      }

      if (v41)
      {
        [v41 setState:0];
      }

      v28 = v139;
    }

LABEL_39:
    [(WFAirportViewController *)selfCopy4 setJoiningHotspot:0];
  }

  v50 = -[WFAirportViewController _sectionTypeAtSection:](selfCopy4, "_sectionTypeAtSection:", [v28 section]);
  if (v50 > 4)
  {
    if (v50 <= 7)
    {
      if (v50 == 5)
      {
        unconfiguredNetworks = [(WFAirportViewController *)selfCopy4 unconfiguredNetworks];
        v52 = [unconfiguredNetworks objectAtIndex:v29];

        v78 = WFLogForCategory(0);
        v79 = OSLogForWFLogLevel(3uLL);
        v80 = v79;
        if (WFCurrentLogLevel(v79, v81) >= 3 && v78 && os_log_type_enabled(v78, v80))
        {
          *buf = 136315394;
          v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v148 = 2112;
          v149 = v52;
          _os_log_impl(&dword_273FB9000, v78, v80, "%s: tapped on unconfigured record %@", buf, 0x16u);
        }

        v82 = listDelegate;
        v83 = selfCopy4;
        goto LABEL_115;
      }

      if (v50 == 6)
      {
        [listDelegate airportSettingsViewControllerDidTapDataUsage:selfCopy4];
      }
    }

    else
    {
      switch(v50)
      {
        case 8:
          v94 = WFLogForCategory(0);
          v95 = OSLogForWFLogLevel(3uLL);
          v96 = v95;
          if (WFCurrentLogLevel(v95, v97) >= 3 && v94 && os_log_type_enabled(v94, v96))
          {
            *buf = 136315138;
            v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            _os_log_impl(&dword_273FB9000, v94, v96, "%s: tapped on ask to join row", buf, 0xCu);
          }

          [(WFAirportViewController *)selfCopy4 _pushAskToJoinModeSelectionViewController];
          break;
        case 9:
          [listDelegate airportSettingsViewControllerDidTapKnownNetworks:selfCopy4];
          break;
        case 10:
          v57 = WFLogForCategory(0);
          v58 = OSLogForWFLogLevel(3uLL);
          v59 = v58;
          if (WFCurrentLogLevel(v58, v60) >= 3 && v57 && os_log_type_enabled(v57, v59))
          {
            *buf = 136315138;
            v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            _os_log_impl(&dword_273FB9000, v57, v59, "%s: tapped on auto hotspot row", buf, 0xCu);
          }

          [(WFAirportViewController *)selfCopy4 _pushAutoInstantHotspotOptionSelectionViewController];
          break;
      }
    }
  }

  else
  {
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        popularNetworks = [(WFAirportViewController *)selfCopy4 popularNetworks];
        v85 = selfCopy4;
        v86 = [popularNetworks count];

        if (v29 < v86)
        {
          popularNetworks2 = [(WFAirportViewController *)v85 popularNetworks];
          v52 = [popularNetworks2 objectAtIndex:v29];

          v88 = WFLogForCategory(0);
          v89 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel(v89, v90) < 3 || !v88 || !os_log_type_enabled(v88, v89))
          {
            goto LABEL_114;
          }

          *buf = 136315394;
          v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v148 = 2112;
          v149 = v52;
          v91 = "%s: tapped on popular record %@";
          v92 = v88;
          v93 = v89;
          goto LABEL_113;
        }

        v52 = WFLogForCategory(0);
        v115 = OSLogForWFLogLevel(1uLL);
        v108 = v115;
        if (!WFCurrentLogLevel(v115, v116) || !v52)
        {
          goto LABEL_122;
        }

        v110 = v52;
        if (os_log_type_enabled(v110, v108))
        {
          v117 = [v28 row];
          popularNetworks3 = [(WFAirportViewController *)self popularNetworks];
          v118 = [popularNetworks3 count];
          *buf = 136315650;
          v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v148 = 2050;
          v149 = v117;
          v150 = 2050;
          v151 = v118;
          v114 = "%s: cannot find popular network at index %{public}lu networks %{public}lu";
LABEL_120:
          _os_log_impl(&dword_273FB9000, v110, v108, v114, buf, 0x20u);
        }
      }

      else
      {
        if (v50 != 3)
        {
          adhocNetworks = [(WFAirportViewController *)selfCopy4 adhocNetworks];
          v52 = [adhocNetworks objectAtIndex:v29];

          v53 = WFLogForCategory(0);
          v54 = OSLogForWFLogLevel(3uLL);
          v55 = v54;
          if (WFCurrentLogLevel(v54, v56) >= 3 && v53 && os_log_type_enabled(v53, v55))
          {
            *buf = 136315394;
            v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            v148 = 2112;
            v149 = v52;
            _os_log_impl(&dword_273FB9000, v53, v55, "%s: tapped on adhoc record %@", buf, 0x16u);
          }

          [(WFAirportViewController *)selfCopy4 _promptToJoinAdhoc:v52];
          goto LABEL_122;
        }

        infraNetworks = [(WFAirportViewController *)selfCopy4 infraNetworks];
        v85 = selfCopy4;
        v99 = [infraNetworks count];

        if (v29 == v99)
        {
          v100 = WFLogForCategory(0);
          v101 = OSLogForWFLogLevel(3uLL);
          v102 = v101;
          if (WFCurrentLogLevel(v101, v103) >= 3 && v100 && os_log_type_enabled(v100, v102))
          {
            *buf = 136315394;
            v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            v148 = 2112;
            v149 = v28;
            _os_log_impl(&dword_273FB9000, v100, v102, "%s: tapped other network cell %@", buf, 0x16u);
          }

          [v138 deselectRowAtIndexPath:v28 animated:1];
          [listDelegate networkListViewControllerDidTapOtherNetwork:self];
          goto LABEL_123;
        }

        infraNetworks2 = [(WFAirportViewController *)v85 infraNetworks];
        v120 = [infraNetworks2 count];

        if (v29 < v120)
        {
          infraNetworks3 = [(WFAirportViewController *)v85 infraNetworks];
          v52 = [infraNetworks3 objectAtIndex:v29];

          v88 = WFLogForCategory(0);
          v122 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel(v122, v123) < 3 || !v88 || !os_log_type_enabled(v88, v122))
          {
            goto LABEL_114;
          }

          *buf = 136315394;
          v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v148 = 2112;
          v149 = v52;
          v91 = "%s: tapped on infra record %@";
          v92 = v88;
          v93 = v122;
LABEL_113:
          _os_log_impl(&dword_273FB9000, v92, v93, v91, buf, 0x16u);
LABEL_114:

          v82 = listDelegate;
          v83 = v85;
LABEL_115:
          [v82 networkListViewController:v83 didTapRecord:v52];
LABEL_122:

          goto LABEL_123;
        }

        v52 = WFLogForCategory(0);
        v124 = OSLogForWFLogLevel(1uLL);
        v108 = v124;
        if (!WFCurrentLogLevel(v124, v125) || !v52)
        {
          goto LABEL_122;
        }

        v110 = v52;
        if (os_log_type_enabled(v110, v108))
        {
          v126 = [v28 row];
          popularNetworks3 = [(WFAirportViewController *)self infraNetworks];
          v127 = [popularNetworks3 count];
          *buf = 136315650;
          v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v148 = 2050;
          v149 = v126;
          v150 = 2050;
          v151 = v127;
          v114 = "%s: cannot find infra network at index %{public}lu networks %{public}lu";
          goto LABEL_120;
        }
      }

LABEL_121:

      goto LABEL_122;
    }

    if (v50)
    {
      if (v50 != 1)
      {
        goto LABEL_123;
      }

      knownNetworks3 = [(WFAirportViewController *)selfCopy4 knownNetworks];
      v62 = selfCopy4;
      v63 = [knownNetworks3 count];

      if (v29 >= v63)
      {
        v52 = WFLogForCategory(0);
        v107 = OSLogForWFLogLevel(1uLL);
        v108 = v107;
        if (!WFCurrentLogLevel(v107, v109) || !v52)
        {
          goto LABEL_122;
        }

        v110 = v52;
        if (!os_log_type_enabled(v110, v108))
        {
          goto LABEL_121;
        }

        v111 = [v28 row];
        popularNetworks3 = [(WFAirportViewController *)self knownNetworks];
        v113 = [popularNetworks3 count];
        *buf = 136315650;
        v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
        v148 = 2050;
        v149 = v111;
        v150 = 2050;
        v151 = v113;
        v114 = "%s: cannot find known network at index %{public}lu networks %{public}lu";
        goto LABEL_120;
      }

      knownNetworks4 = [(WFAirportViewController *)v62 knownNetworks];
      v65 = [knownNetworks4 objectAtIndex:v29];

      selfCopy3 = v62;
      if ([v65 isInstantHotspot])
      {
        knownNetworks5 = [(WFAirportViewController *)v62 knownNetworks];
        v68 = [knownNetworks5 objectAtIndex:v29];

        objc_storeWeak(&self->_joiningHotspot, v68);
        v69 = [v138 cellForRowAtIndexPath:v28];
        [v69 setState:1];

        selfCopy3 = self;
      }

      v70 = WFLogForCategory(0);
      v71 = OSLogForWFLogLevel(3uLL);
      v72 = v71;
      if (WFCurrentLogLevel(v71, v73) >= 3 && v70)
      {
        v74 = v70;
        if (os_log_type_enabled(v74, v72))
        {
          isInstantHotspot = [v65 isInstantHotspot];
          *buf = 136315650;
          v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v148 = 2112;
          v149 = v65;
          v150 = 1024;
          LODWORD(v151) = isInstantHotspot;
          _os_log_impl(&dword_273FB9000, v74, v72, "%s: tapped on known record %@ (hotspot %d)", buf, 0x1Cu);
        }

        v28 = v139;
      }

      [listDelegate networkListViewController:selfCopy3 didTapRecord:v65];
    }

    else if (-[WFAirportViewController showDiagnosticsCell](selfCopy4, "showDiagnosticsCell") && (v76 = [v28 row], v76 == -[WFAirportViewController rowCountWithPlacardCell:](selfCopy4, "rowCountWithPlacardCell:", 1)))
    {
      [listDelegate airportSettingsViewControllerDidTapDiagnosticsMode:selfCopy4 showNANUI:{-[WFAirportViewController showNANUI](selfCopy4, "showNANUI")}];
    }

    else
    {
      currentNetwork = [(WFAirportViewController *)selfCopy4 currentNetwork];
      if (currentNetwork)
      {
        v105 = currentNetwork;
        v106 = [v28 row];
        if (v106 == [(WFAirportViewController *)selfCopy4 rowCountWithPlacardCell:1])
        {
        }

        else
        {
          v128 = [v28 row];
          v129 = [(WFAirportViewController *)selfCopy4 rowCountWithPlacardCell:2];

          v130 = v128 == v129;
          selfCopy4 = self;
          if (!v130)
          {
            goto LABEL_123;
          }
        }

        v131 = WFLogForCategory(0);
        v132 = OSLogForWFLogLevel(3uLL);
        v133 = v132;
        if (WFCurrentLogLevel(v132, v134) >= 3 && v131)
        {
          v135 = v131;
          if (os_log_type_enabled(v135, v133))
          {
            currentNetwork2 = [(WFAirportViewController *)selfCopy4 currentNetwork];
            *buf = 136315394;
            v147 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            v148 = 2112;
            v149 = currentNetwork2;
            _os_log_impl(&dword_273FB9000, v135, v133, "%s: tapped on current network %@", buf, 0x16u);
          }
        }

        currentNetwork3 = [(WFAirportViewController *)selfCopy4 currentNetwork];
        [listDelegate networkListViewController:selfCopy4 didTapRecord:currentNetwork3];
      }
    }
  }

LABEL_123:
  [v138 deselectRowAtIndexPath:v28 animated:1];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFAirportViewController *)self sections];
  v7 = [sections indexOfObject:&unk_2883224F8];

  section = [pathCopy section];
  return section == v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v19[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
  v9 = [networksToBeDeleted count];
  v10 = MEMORY[0x277CBEB18];
  if (v9)
  {
    networksToBeDeleted2 = [(WFAirportViewController *)self networksToBeDeleted];
    v12 = [v10 arrayWithArray:networksToBeDeleted2];
  }

  else
  {
    v12 = objc_opt_new();
  }

  if (style == 1)
  {
    section = [pathCopy section];
    sections = [(WFAirportViewController *)self sections];
    v15 = [sections indexOfObject:&unk_2883224F8];

    if (section == v15)
    {
      v16 = -[NSMutableArray objectAtIndex:](self->_editableKnownNetworks, "objectAtIndex:", [pathCopy row]);
      [v12 addObject:v16];

      -[NSMutableArray removeObjectAtIndex:](self->_editableKnownNetworks, "removeObjectAtIndex:", [pathCopy row]);
      tableView = [(WFAirportViewController *)self tableView];
      v19[0] = pathCopy;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [tableView deleteRowsAtIndexPaths:v18 withRowAnimation:0];
    }

    [(WFAirportViewController *)self setNetworksToBeDeleted:v12];
    [(WFAirportViewController *)self _updateKnownNetworksDoneButtonForEditability];
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = -[WFAirportViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  v7 = [pathCopy row];
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
        currentNetwork = [(WFAirportViewController *)self currentNetwork];
        goto LABEL_24;
      case 1:
        knownNetworks = [(WFAirportViewController *)self knownNetworks];
        v21 = [knownNetworks count];

        if (v7 >= v21)
        {
          goto LABEL_33;
        }

        knownNetworks2 = [(WFAirportViewController *)self knownNetworks];
        break;
      case 2:
        popularNetworks = [(WFAirportViewController *)self popularNetworks];
        v12 = [popularNetworks count];

        if (v7 >= v12)
        {
          goto LABEL_33;
        }

        knownNetworks2 = [(WFAirportViewController *)self popularNetworks];
        break;
      default:
        goto LABEL_33;
    }
  }

  else if (v6 > 10)
  {
    if (v6 == 11)
    {
      editableKnownNetworks = [(WFAirportViewController *)self editableKnownNetworks];
      v19 = [editableKnownNetworks count];

      if (v7 >= v19)
      {
        goto LABEL_33;
      }

      knownNetworks2 = [(WFAirportViewController *)self editableKnownNetworks];
    }

    else
    {
      if (v6 != 12)
      {
        goto LABEL_33;
      }

      managedKnownNetworks = [(WFAirportViewController *)self managedKnownNetworks];
      v14 = [managedKnownNetworks count];

      if (v7 >= v14)
      {
        goto LABEL_33;
      }

      knownNetworks2 = [(WFAirportViewController *)self managedKnownNetworks];
    }
  }

  else if (v6 == 3)
  {
    infraNetworks = [(WFAirportViewController *)self infraNetworks];
    v17 = [infraNetworks count];

    if (v7 >= v17)
    {
      goto LABEL_33;
    }

    knownNetworks2 = [(WFAirportViewController *)self infraNetworks];
  }

  else
  {
    if (v6 != 4)
    {
      goto LABEL_33;
    }

    adhocNetworks = [(WFAirportViewController *)self adhocNetworks];
    v9 = [adhocNetworks count];

    if (v7 >= v9)
    {
      goto LABEL_33;
    }

    knownNetworks2 = [(WFAirportViewController *)self adhocNetworks];
  }

  v22 = knownNetworks2;
  currentNetwork = [knownNetworks2 objectAtIndex:v7];

LABEL_24:
  if ((v6 - 11) >= 2)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  if (currentNetwork)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(3uLL);
    v26 = v25;
    if (WFCurrentLogLevel(v25, v27) >= 3 && v24 && os_log_type_enabled(v24, v26))
    {
      v32 = 136315906;
      v33 = "[WFAirportViewController tableView:accessoryButtonTappedForRowWithIndexPath:]";
      v34 = 2112;
      v35 = currentNetwork;
      v36 = 2112;
      v37 = pathCopy;
      v38 = 2048;
      v39 = v23;
      _os_log_impl(&dword_273FB9000, v24, v26, "%s: tapped on accessory for record %@ at indexPath %@, context: %ld", &v32, 0x2Au);
    }

    listDelegate = [(WFAirportViewController *)self listDelegate];
    [listDelegate networkListViewController:self showSettingsForNetwork:currentNetwork context:v23];

    goto LABEL_37;
  }

LABEL_33:
  currentNetwork = WFLogForCategory(0);
  v29 = OSLogForWFLogLevel(1uLL);
  v30 = v29;
  if (WFCurrentLogLevel(v29, v31) && currentNetwork && os_log_type_enabled(currentNetwork, v30))
  {
    v32 = 138543362;
    v33 = pathCopy;
    _os_log_impl(&dword_273FB9000, currentNetwork, v30, "Accessory button tapped nil record at indexPath %{public}@", &v32, 0xCu);
  }

LABEL_37:
}

- (void)_promptToJoinAdhoc:(id)adhoc
{
  adhocCopy = adhoc;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocAdhocJoinTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  title = [adhocCopy title];
  v22 = [v5 stringWithFormat:v7, title];

  v9 = MEMORY[0x277D75110];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"kWFLocAdhocJoinBody" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v12 = [v9 alertControllerWithTitle:v22 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"kWFLocAdhocJoinConfirmButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__WFAirportViewController__promptToJoinAdhoc___block_invoke;
  v23[3] = &unk_279EC56F0;
  v23[4] = self;
  v24 = adhocCopy;
  v16 = adhocCopy;
  v17 = [v13 actionWithTitle:v15 style:0 handler:v23];

  [v12 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocAdhocJoinCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];

  [v12 addAction:v21];
  [v12 setPreferredAction:v17];
  [(WFAirportViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __46__WFAirportViewController__promptToJoinAdhoc___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) listDelegate];
  [v2 networkListViewController:*(a1 + 32) didTapRecord:*(a1 + 40)];

  v4 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  [v4 scrollToRowAtIndexPath:v3 atScrollPosition:1 animated:1];
}

- (id)_defaultSectionsForPowerState:(BOOL)state
{
  stateCopy = state;
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_2883224B0, &unk_288322498, 0}];
  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    if ([(WFAirportViewController *)self deviceCapability]== 3)
    {
      [v5 addObjectsFromArray:&unk_288322AE0];
    }

    if ([(WFAirportViewController *)self deviceCapability]!= 4)
    {
      [v5 addObjectsFromArray:&unk_288322AF8];
    }
  }

  if ([(WFAirportViewController *)self _askToJoinShouldBeVisible])
  {
    [v5 addObject:&unk_2883224C8];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  self->_askToJoinShown = v6;
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
  v8 = [WeakRetained networkListViewControllerNetworkRestrictionActive:self];

  if ((v8 & 1) == 0)
  {
    [v5 addObject:&unk_2883224E0];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_2883224B0, 0}];
  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    if ([(WFAirportViewController *)self deviceCapability]== 3)
    {
      [v9 addObjectsFromArray:&unk_288322B10];
    }

    if ([(WFAirportViewController *)self deviceCapability]!= 4)
    {
      [v9 addObjectsFromArray:&unk_288322B28];
    }
  }

  if (stateCopy)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = [MEMORY[0x277CBEB70] orderedSetWithArray:v10];

  return v11;
}

- (unint64_t)_sectionTypeAtSection:(int64_t)section
{
  sections = [(WFAirportViewController *)self sections];
  v6 = [sections count];

  if (v6 <= section)
  {
    [(WFAirportViewController *)section _sectionTypeAtSection:?];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    sections2 = [(WFAirportViewController *)self sections];
    v8 = [sections2 objectAtIndex:section];
    integerValue = [v8 integerValue];

    return integerValue;
  }
}

- (void)_powerSwitchChanged:(id)changed
{
  changedCopy = changed;
  v5 = dispatch_time(0, 200000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WFAirportViewController__powerSwitchChanged___block_invoke;
  v7[3] = &unk_279EC5588;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __47__WFAirportViewController__powerSwitchChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isOn];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      v8 = WFPowerStateToggleToString(v2);
      v10 = 136315394;
      v11 = "[WFAirportViewController _powerSwitchChanged:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_273FB9000, v7, v5, "%s: user toggled power to %@", &v10, 0x16u);
    }
  }

  v9 = [*(a1 + 40) listDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 networkListViewController:*(a1 + 40) userDidChangePowerToggle:v2];
  }
}

- (void)_updateAskToJoinMode:(int64_t)mode
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v14 = 136315394;
    v15 = "[WFAirportViewController _updateAskToJoinMode:]";
    v16 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: ask to join state changed %d", &v14, 0x12u);
  }

  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate airportSettingsViewController:self setAskToJoinMode:mode];

  sections = [(WFAirportViewController *)self sections];
  v11 = [sections indexOfObject:&unk_2883224C8];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(WFAirportViewController *)self tableView];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndex:v11];
    [tableView _reloadSectionHeaderFooters:v13 withRowAnimation:100];
  }
}

- (void)_enableWAPISwitchChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      v11 = 136315394;
      v12 = "[WFAirportViewController _enableWAPISwitchChanged:]";
      v13 = 1024;
      isOn = [changedCopy isOn];
      _os_log_impl(&dword_273FB9000, v9, v7, "%s: wapi state changed %d", &v11, 0x12u);
    }
  }

  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate networkListViewController:self setWAPIEnabled:{objc_msgSend(changedCopy, "isOn")}];
}

- (id)_sectionNameAtIndex:(unint64_t)index
{
  sections = [(WFAirportViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:index];

  if (v6)
  {
    v7 = -[WFAirportViewController _nameOfSection:](self, "_nameOfSection:", [v6 unsignedIntegerValue]);
  }

  else
  {
    v7 = @"Unknown section";
  }

  return v7;
}

- (id)_nameOfSection:(unint64_t)section
{
  if (section > 0xC)
  {
    return @"<unknown>";
  }

  else
  {
    return off_279EC58E8[section];
  }
}

- (void)_dumpSections
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sections = [(WFAirportViewController *)self sections];
  v4 = [sections countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(sections);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = WFLogForCategory(0);
        v11 = OSLogForWFLogLevel(1uLL);
        v12 = v11;
        if (WFCurrentLogLevel(v11, v13) && v10)
        {
          v14 = v10;
          if (os_log_type_enabled(v14, v12))
          {
            v15 = -[WFAirportViewController _nameOfSection:](self, "_nameOfSection:", [v9 integerValue]);
            *buf = 134218242;
            v21 = v6;
            v22 = 2114;
            v23 = v15;
            _os_log_impl(&dword_273FB9000, v14, v12, "%lu- %{public}@", buf, 0x16u);
          }
        }

        ++v6;
      }

      v5 = [sections countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

- (BOOL)_isChinaDevice
{
  deviceCapability = [(WFAirportViewController *)self deviceCapability];

  return WFCapabilityIsChinaDevice(deviceCapability);
}

- (void)_pushAutoInstantHotspotOptionSelectionViewController
{
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinNeverTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAskTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAutoTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v10 = [v3 arrayWithObjects:{v5, v7, v9, 0}];

  v11 = [[WFValueListViewController alloc] initWithTitles:v10 switchTitle:0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocAutoInstantHotspotTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  navigationItem = [(WFValueListViewController *)v11 navigationItem];
  [navigationItem setTitle:v13];

  listDelegate = [(WFAirportViewController *)self listDelegate];
  v16 = -[WFAirportViewController _getAutoHotspotOptionText:](self, "_getAutoHotspotOptionText:", [listDelegate networkListViewControllerAutoInstantHotspotOption:self]);
  [(WFValueListViewController *)v11 setSelectedTitle:v16];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__WFAirportViewController__pushAutoInstantHotspotOptionSelectionViewController__block_invoke;
  v17[3] = &unk_279EC5718;
  v17[4] = self;
  [(WFValueListViewController *)v11 setCompletionHandler:v17];
  [(UIViewController *)self wf_pushViewController:v11 animated:1];
}

void __79__WFAirportViewController__pushAutoInstantHotspotOptionSelectionViewController__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAutoTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v5 = [v13 isEqualToString:v4];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAskTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [v13 isEqualToString:v8];

    if (v9)
    {
      v6 = 1;
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinNeverTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v12 = [v13 isEqualToString:v11];

      if (!v12)
      {
        goto LABEL_8;
      }

      v6 = 0;
    }
  }

  [*(a1 + 32) updateAutoInstantHotspotSetting:v6];
LABEL_8:
}

- (void)_pushAskToJoinModeSelectionViewController
{
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAskToJoinDetailOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocAskToJoinDetailNotify" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocAskToJoinDetailAsk" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v10 = [v3 arrayWithObjects:{v5, v7, v9, 0}];

  v11 = [[WFValueListViewController alloc] initWithTitles:v10 switchTitle:0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocAskToJoinTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  navigationItem = [(WFValueListViewController *)v11 navigationItem];
  [navigationItem setTitle:v13];

  v15 = [(WFAirportViewController *)self _askToJoinStateStringForATJMode:[(WFAirportViewController *)self _askToJoinMode]];
  [(WFValueListViewController *)v11 setSelectedTitle:v15];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke;
  v17[3] = &unk_279EC5718;
  v17[4] = self;
  [(WFValueListViewController *)v11 setCompletionHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke_2;
  v16[3] = &unk_279EC5740;
  v16[4] = self;
  [(WFValueListViewController *)v11 setFooterHandler:v16];
  [(UIViewController *)self wf_pushViewController:v11 animated:1];
}

uint64_t __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 _askToJoinModeFromString:a2];

  return [v2 _updateAskToJoinMode:v3];
}

uint64_t __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 _askToJoinModeFromString:a2];

  return [v2 _askToJoinFooterStringForMode:v3];
}

- (void)_updateNetworkRestrictionHeader
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  if (([listDelegate networkListViewControllerNetworkRestrictionActive:self] & 1) != 0 || (-[WFAirportViewController tableView](self, "tableView"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "tableHeaderView"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if ([listDelegate networkListViewControllerNetworkRestrictionActive:self] && !-[WFAirportViewController isInEditingMode](self, "isInEditingMode"))
    {
      tableView = [(WFAirportViewController *)self tableView];
      [tableView bounds];
      v8 = v7;

      tableView3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v8, 0.0}];
      v9 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, v8, 100.0}];
      v10 = [MEMORY[0x277D75348] colorWithRed:0.427450985 green:0.427450985 blue:0.447058827 alpha:1.0];
      [v9 setTextColor:v10];

      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 setNumberOfLines:0];
      [v9 setTextAlignment:1];
      if ([(WFAirportViewController *)self _isChinaDevice])
      {
        v11 = [@"kWFLocNetworkRestrictionActive" stringByAppendingString:@"_CH"];
      }

      else
      {
        v11 = @"kWFLocNetworkRestrictionActive";
      }

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:v11 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      [v9 setFont:v14];

      [v9 setText:v13];
      [tableView3 addSubview:v9];
      v15 = MEMORY[0x277CCAAD0];
      v16 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v9, 0);
      v17 = [v15 constraintsWithVisualFormat:@"V:|-20-[headerLabel]-20-|" options:0 metrics:0 views:v16];
      [tableView3 addConstraints:v17];

      v18 = MEMORY[0x277CCAAD0];
      v19 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v9, 0);
      v20 = [v18 constraintsWithVisualFormat:@"|-40-[headerLabel]-40-|" options:0 metrics:0 views:v19];
      [tableView3 addConstraints:v20];

      v21 = [MEMORY[0x277CCAAD0] constraintWithItem:tableView3 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v8];
      [tableView3 addConstraint:v21];
      [tableView3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      v23 = v22 + 40.0;
      [tableView3 removeConstraint:v21];
      [tableView3 setFrame:{0.0, 0.0, v8, v23}];
      [tableView3 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v9 setPreferredMaxLayoutWidth:v8];
      tableView2 = [(WFAirportViewController *)self tableView];
      [tableView2 setTableHeaderView:tableView3];
    }

    else
    {
      tableView3 = [(WFAirportViewController *)self tableView];
      [tableView3 setTableHeaderView:0];
    }
  }
}

- (id)_askToJoinStateStringForATJMode:(int64_t)mode
{
  if (mode > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5950[mode];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (id)_askToJoinFooterString
{
  _askToJoinMode = [(WFAirportViewController *)self _askToJoinMode];

  return [(WFAirportViewController *)self _askToJoinFooterStringForMode:_askToJoinMode];
}

- (id)_askToJoinFooterStringForMode:(int64_t)mode
{
  if (mode > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5968[mode];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (int64_t)_askToJoinMode
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v4 = [listDelegate airportSettingsViewControllerAskToJoinMode:self];

  return v4;
}

- (void)_reloadCurrentNetworkCell
{
  v13 = *MEMORY[0x277D85DE8];
  _currentNetworkCellIndexPath = [(WFAirportViewController *)self _currentNetworkCellIndexPath];
  if (_currentNetworkCellIndexPath)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(4uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
    {
      *buf = 136315138;
      v12 = "[WFAirportViewController _reloadCurrentNetworkCell]";
      _os_log_impl(&dword_273FB9000, v4, v6, "%s: reloading current network index path", buf, 0xCu);
    }

    tableView = [(WFAirportViewController *)self tableView];
    v10 = _currentNetworkCellIndexPath;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [tableView reloadRowsAtIndexPaths:v9 withRowAnimation:5];
  }
}

- (id)_currentNetworkCellIndexPath
{
  if ([(WFAirportViewController *)self showDiagnosticsCell])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(WFAirportViewController *)self rowCountWithPlacardCell:v3];
  sections = [(WFAirportViewController *)self sections];
  v6 = [sections indexOfObject:&unk_2883224B0];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(WFAirportViewController *)self _currentNetworkCellIndexPath];
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v6];
  }

  return v7;
}

- (void)_reloadSectionForHotspotChange
{
  v19 = *MEMORY[0x277D85DE8];
  tableView = [(WFAirportViewController *)self tableView];
  [tableView beginUpdates];

  sections = [(WFAirportViewController *)self sections];
  v5 = [sections indexOfObject:&unk_288322480];

  tableView2 = WFLogForCategory(0);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 3 && tableView2 && os_log_type_enabled(tableView2, v8))
    {
      v15 = 136315138;
      v16 = "[WFAirportViewController _reloadSectionForHotspotChange]";
      _os_log_impl(&dword_273FB9000, tableView2, v8, "%s: hotspot section not found", &v15, 0xCu);
    }
  }

  else
  {
    v10 = OSLogForWFLogLevel(4uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) >= 4 && tableView2 && os_log_type_enabled(tableView2, v11))
    {
      v15 = 136315394;
      v16 = "[WFAirportViewController _reloadSectionForHotspotChange]";
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_273FB9000, tableView2, v11, "%s: reloading hotspot in section %d", &v15, 0x12u);
    }

    tableView2 = [(WFAirportViewController *)self tableView];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
    [tableView2 reloadSections:v13 withRowAnimation:5];
  }

  tableView3 = [(WFAirportViewController *)self tableView];
  [tableView3 endUpdates];
}

- (void)_reloadPowerSection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFAirportViewController__reloadPowerSection__block_invoke;
  block[3] = &unk_279EC5538;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__WFAirportViewController__reloadPowerSection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sections];
  v3 = [v2 indexOfObject:&unk_2883224B0];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
    {
      *buf = 136315138;
      v11 = "[WFAirportViewController _reloadPowerSection]_block_invoke";
      _os_log_impl(&dword_273FB9000, v4, v6, "%s: power section not found", buf, 0xCu);
    }
  }

  else
  {
    v9 = [*(a1 + 32) tableView];
    v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:v3];
    [v9 reloadSections:v8 withRowAnimation:5];
  }
}

- (void)setUserAutoJoinEnabled:(BOOL)enabled
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_userAutoJoinEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
    {
      v22 = 136315394;
      v23 = "[WFAirportViewController setUserAutoJoinEnabled:]";
      v24 = 1024;
      v25 = enabledCopy;
      _os_log_impl(&dword_273FB9000, v5, v7, "%s: userAutoJoinEnabled %d", &v22, 0x12u);
    }

    self->_userAutoJoinEnabled = enabledCopy;
    sections = [(WFAirportViewController *)self sections];
    v10 = [sections indexOfObject:&unk_2883224B0];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(1uLL);
      v13 = v12;
      if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
      {
        v22 = 136315138;
        v23 = "[WFAirportViewController setUserAutoJoinEnabled:]";
        _os_log_impl(&dword_273FB9000, v11, v13, "%s: power section not found", &v22, 0xCu);
      }

      [(WFAirportViewController *)self _dumpSections];
    }

    else
    {
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      [indexSet addIndex:v10];
      sections2 = [(WFAirportViewController *)self sections];
      v17 = [sections2 indexOfObject:&unk_2883224C8];

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        tableView = [(WFAirportViewController *)self tableView];
        sections3 = [(WFAirportViewController *)self sections];
        v20 = [tableView numberOfRowsInSection:{objc_msgSend(sections3, "indexOfObject:", &unk_2883224C8)}];

        if (v20)
        {
          [indexSet addIndex:v17];
        }
      }

      tableView2 = [(WFAirportViewController *)self tableView];
      [tableView2 _reloadSectionHeaderFooters:indexSet withRowAnimation:100];
    }
  }
}

- (void)updateAutoInstantHotspotSetting:(int64_t)setting
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate networkListViewController:self setAutoInstantOption:setting];
}

- (id)_getAutoHotspotOptionText:(int64_t)text
{
  if (text > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5980[text];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (NSString)userAutoJoinDisabledWarning
{
  userAutoJoinDisabledWarning = self->_userAutoJoinDisabledWarning;
  if (!userAutoJoinDisabledWarning)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([(WFAirportViewController *)self _isChinaDevice])
    {
      v5 = @"kWFLocUserAutoJoinDisabledWarningCH";
    }

    else
    {
      v5 = @"kWFLocUserAutoJoinDisabledWarning";
    }

    v6 = [v4 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v7 = self->_userAutoJoinDisabledWarning;
    self->_userAutoJoinDisabledWarning = v6;

    userAutoJoinDisabledWarning = self->_userAutoJoinDisabledWarning;
  }

  return userAutoJoinDisabledWarning;
}

- (NSString)powerOffLocationWarning
{
  v29 = *MEMORY[0x277D85DE8];
  powerOffLocationWarning = self->_powerOffLocationWarning;
  if (!powerOffLocationWarning)
  {
    _isChinaDevice = [(WFAirportViewController *)self _isChinaDevice];
    v5 = MGGetBoolAnswer();
    listDelegate = [(WFAirportViewController *)self listDelegate];
    v7 = [listDelegate networkListViewControllerIsAutoUnlockEnabled:self];

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) >= 3 && v8 && os_log_type_enabled(v8, v10))
    {
      v21 = 136315906;
      v22 = "[WFAirportViewController powerOffLocationWarning]";
      v23 = 1024;
      v24 = _isChinaDevice;
      v25 = 1024;
      v26 = v5;
      v27 = 1024;
      v28 = v7;
      _os_log_impl(&dword_273FB9000, v8, v10, "%s: chinaDevice: %d, cellularDevice: %d, autoUnlockEnabled: %d", &v21, 0x1Eu);
    }

    v12 = @"kWFLocLocationServicesWarning";
    if (_isChinaDevice)
    {
      v12 = @"kWFLocLocationServicesWarningCH";
    }

    v13 = @"kWFLocLocationServicesCellularWarning";
    if (_isChinaDevice)
    {
      v13 = @"kWFLocLocationServicesCellularWarningCH";
    }

    v14 = @"kWFLocAutoUnlockLocationServicesWarning";
    if (v5)
    {
      v12 = v13;
    }

    v15 = @"kWFLocAutoUnlockLocationServicesCellularWarning";
    if (_isChinaDevice)
    {
      v14 = @"kWFLocAutoUnlockLocationServicesWarningCH";
      v15 = @"kWFLocAutoUnlockLocationServicesCellularWarningCH";
    }

    if (!v5)
    {
      v15 = v14;
    }

    if (v7)
    {
      v12 = v15;
    }

    v16 = v12;
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:v16 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v19 = self->_powerOffLocationWarning;
    self->_powerOffLocationWarning = v18;

    powerOffLocationWarning = self->_powerOffLocationWarning;
  }

  return powerOffLocationWarning;
}

- (int64_t)_askToJoinModeFromString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAskToJoinDetailOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [stringCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocAskToJoinDetailNotify" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [stringCopy isEqualToString:v9];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocAskToJoinDetailAsk" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [stringCopy isEqualToString:v12];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = WFAirportViewController;
  coordinatorCopy = coordinator;
  [(WFAirportViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__WFAirportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279EC5768;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFAirportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_279EC5768;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

void __78__WFAirportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)_processPendingCurrentNetworkUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_pendingCurrentNetworkUpdate)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      pendingCurrentNetworkUpdate = self->_pendingCurrentNetworkUpdate;
      *buf = 136315394;
      *&buf[4] = "[WFAirportViewController _processPendingCurrentNetworkUpdate]";
      *&buf[12] = 2112;
      *&buf[14] = pendingCurrentNetworkUpdate;
      _os_log_impl(&dword_273FB9000, v3, v5, "%s: pending update='%@'", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    network = [(WFPendingNetworkUpdate *)self->_pendingCurrentNetworkUpdate network];
    if (network)
    {
      network2 = [(WFPendingNetworkUpdate *)self->_pendingCurrentNetworkUpdate network];
      v15 = [network2 copyWithZone:0];
    }

    else
    {
      v15 = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__WFAirportViewController__processPendingCurrentNetworkUpdate__block_invoke;
    v11[3] = &unk_279EC5790;
    v11[4] = self;
    v11[5] = buf;
    dispatch_async(MEMORY[0x277D85CD0], v11);
    v10 = self->_pendingCurrentNetworkUpdate;
    self->_pendingCurrentNetworkUpdate = 0;

    _Block_object_dispose(buf, 8);
  }
}

- (void)knownNetworksWillResignActive
{
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    if (!self->_screenProtector && ![(WFAirportViewController *)self userTurnedOffPasscode])
    {
      v3 = [WFLockView alloc];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"kWFLocKnownNetworksLockTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      navigationController = [(WFAirportViewController *)self navigationController];
      topViewController = [navigationController topViewController];
      view = [topViewController view];
      v9 = [(WFLockView *)v3 initWithTitle:v5 viewToCover:view];
      screenProtector = self->_screenProtector;
      self->_screenProtector = v9;

      navigationController2 = [(WFAirportViewController *)self navigationController];
      [(WFLockView *)self->_screenProtector setBelongedNavigationController:navigationController2];
    }

    superview = [(WFLockView *)self->_screenProtector superview];
    view2 = [(WFAirportViewController *)self view];
    if ([superview isEqual:view2])
    {
    }

    else
    {
      userTurnedOffPasscode = [(WFAirportViewController *)self userTurnedOffPasscode];

      if (!userTurnedOffPasscode)
      {
        v14 = WFLogForCategory(0);
        v15 = OSLogForWFLogLevel(3uLL);
        v16 = v15;
        if (WFCurrentLogLevel(v15, v17) >= 3 && v14 && os_log_type_enabled(v14, v16))
        {
          *buf = 0;
          _os_log_impl(&dword_273FB9000, v14, v16, "Showing screen protector when preferences resign active in edit mode.", buf, 2u);
        }

        navigationController3 = [(WFAirportViewController *)self navigationController];
        topViewController2 = [navigationController3 topViewController];
        view3 = [topViewController2 view];
        [view3 addSubview:self->_screenProtector];

        navigationController4 = [(WFAirportViewController *)self navigationController];
        topViewController3 = [navigationController4 topViewController];
        navigationItem = [topViewController3 navigationItem];
        [navigationItem setRightBarButtonItem:0];

        navigationController5 = [(WFAirportViewController *)self navigationController];
        topViewController4 = [navigationController5 topViewController];
        navigationItem2 = [topViewController4 navigationItem];
        [navigationItem2 setLeftBarButtonItem:0];
      }
    }
  }
}

- (void)knownNetworksDidBecomeActive
{
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
    {
      *v7 = 0;
      _os_log_impl(&dword_273FB9000, v3, v5, "Trying to prompt authentication to remove screen protector.", v7, 2u);
    }

    [(WFAirportViewController *)self _promptAuthToViewKnownNetworkList];
  }
}

- (void)knownNetworksWillEnterForeground
{
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
    {
      *v7 = 0;
      _os_log_impl(&dword_273FB9000, v3, v5, "Trying to prompt authentication to remove screen protector.", v7, 2u);
    }

    [(WFAirportViewController *)self _promptAuthToViewKnownNetworkList];
  }
}

- (void)_promptAuthToViewKnownNetworkList
{
  if (self->_isAuthenticating)
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    v4 = v3;
    if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
    {
      LOWORD(buf[0]) = 0;
      v6 = "Authentication in progress, do not prompt again.";
LABEL_25:
      _os_log_impl(&dword_273FB9000, v2, v4, v6, buf, 2u);
    }
  }

  else if ([(WFAirportViewController *)self isInEditingMode])
  {
    screenProtector = self->_screenProtector;
    v2 = WFLogForCategory(0);
    if (screenProtector)
    {
      v9 = OSLogForWFLogLevel(3uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 3 && v2 && os_log_type_enabled(v2, v10))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_273FB9000, v2, v10, "Start Authentication process for known network list.", buf, 2u);
      }

      self->_isAuthenticating = 1;
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(3uLL);
      v14 = v13;
      if (WFCurrentLogLevel(v13, v15) >= 3 && v12 && os_log_type_enabled(v12, v14))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_273FB9000, v12, v14, "Showing auth to unlock known network list.", buf, 2u);
      }

      v2 = objc_alloc_init(MEMORY[0x277CD4798]);
      objc_initWeak(buf, self);
      v16 = [(WFAirportViewController *)self _wifiKnownNetworkContextOptionsIsChinaDevice:[(WFAirportViewController *)self _isChinaDevice]];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke;
      v21[3] = &unk_279EC57E0;
      objc_copyWeak(&v22, buf);
      v21[4] = self;
      [v2 evaluatePolicy:2 options:v16 reply:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = OSLogForWFLogLevel(1uLL);
      v4 = v19;
      if (WFCurrentLogLevel(v19, v20) && v2 && os_log_type_enabled(v2, v4))
      {
        LOWORD(buf[0]) = 0;
        v6 = "Screen protector is empty, no need to authenticate to remove.";
        goto LABEL_25;
      }
    }
  }

  else
  {
    v2 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    v4 = v17;
    if (WFCurrentLogLevel(v17, v18) && v2 && os_log_type_enabled(v2, v4))
    {
      LOWORD(buf[0]) = 0;
      v6 = "Not in editing mode, do not prompt authentication.";
      goto LABEL_25;
    }
  }
}

void __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_2;
  block[3] = &unk_279EC57B8;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_2(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_273FB9000, v2, v4, "Finishing Authentication process for known network list.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setIsAuthenticating:0];

  if (!a1[4])
  {
LABEL_14:
    [a1[5] _removeScreenProtector];
    return;
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
  {
    v11 = a1[4];
    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_273FB9000, v7, v9, "Authentication Error: %@", buf, 0xCu);
  }

  if ([a1[4] code] != -9)
  {
    if ([a1[4] code] == -2 || objc_msgSend(a1[4], "code") == -4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_398;
      block[3] = &unk_279EC5538;
      block[4] = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], block);
      return;
    }

    goto LABEL_14;
  }
}

void __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_398(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 1288) belongedNavigationController];
  v2 = [v5 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v4 = [v5 popViewControllerAnimated:0];
  }

  [*(a1 + 32) _transitionToScanList];
  [*(a1 + 32) _removeScreenProtector];
}

- (void)_removeScreenProtector
{
  if (self->_screenProtector)
  {
    [(WFAirportViewController *)self _adjustNavigationItemsForEditingMode];
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      *v8 = 0;
      _os_log_impl(&dword_273FB9000, v3, v5, "Removing screen protector", v8, 2u);
    }

    [(WFLockView *)self->_screenProtector removeFromSuperview];
    screenProtector = self->_screenProtector;
    self->_screenProtector = 0;
  }
}

- (void)_loadEditButton
{
  if (_os_feature_enabled_impl())
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v3 localizedStringForKey:@"kWFLocEditListButtonTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:0 target:self action:sel_editKnownNetworks];
    parentViewController = [(WFAirportViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setRightBarButtonItem:v4];

    [v4 setEnabled:1];
  }
}

- (void)editKnownNetworks
{
  [(WFAirportViewController *)self setNetworksToBeDeleted:0];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277CD4798]);
  v4 = [(WFAirportViewController *)self _wifiKnownNetworkContextOptionsIsChinaDevice:[(WFAirportViewController *)self _isChinaDevice]];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__WFAirportViewController_editKnownNetworks__block_invoke;
  v5[3] = &unk_279EC57E0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 evaluatePolicy:2 options:v4 reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__WFAirportViewController_editKnownNetworks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFAirportViewController_editKnownNetworks__block_invoke_2;
  block[3] = &unk_279EC5808;
  v7 = v4;
  v5 = v4;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
}

void __44__WFAirportViewController_editKnownNetworks__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    v4 = v3;
    if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
    {
      v6 = *(a1 + 32);
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_273FB9000, v2, v4, "Authentication Error: %@", &v17, 0xCu);
    }

    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 code] == -5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setUserTurnedOffPasscode:v8];

  v10 = objc_loadWeakRetained((a1 + 48));
  LODWORD(WeakRetained) = [v10 userTurnedOffPasscode];

  if (WeakRetained)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_273FB9000, v11, v13, "User turned off passcode", &v17, 2u);
    }
  }

  if (!v7 || (v15 = objc_loadWeakRetained((a1 + 48)), v16 = [v15 userTurnedOffPasscode], v15, v16))
  {
    [*(a1 + 40) _transitionToKnownNetworksList];
  }
}

- (void)_transitionToKnownNetworksList
{
  [(WFAirportViewController *)self setIsInEditingMode:1];
  tableView = [(WFAirportViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  [(WFAirportViewController *)self refreshKnownNetworksUpdateTableView:0];
  [(WFAirportViewController *)self _adjustNavigationItemsForEditingMode];
  [(WFAirportViewController *)self _updateNetworkRestrictionHeader];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    listDelegate2 = [(WFAirportViewController *)self listDelegate];
    [listDelegate2 airportSettingsViewControllerDidStartEditingKnownNetworks:self];
  }

  tableView2 = [(WFAirportViewController *)self tableView];
  [tableView2 setEditing:1];

  tableView3 = [(WFAirportViewController *)self tableView];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WFAirportViewController__transitionToKnownNetworksList__block_invoke;
  v9[3] = &unk_279EC5538;
  v9[4] = self;
  [tableView3 performBatchUpdates:v9 completion:0];
}

void __57__WFAirportViewController__transitionToKnownNetworksList__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _defaultSectionsForEditing];
  v2 = [*(a1 + 32) sections];
  [*(a1 + 32) setPreviousSections:v2];
  v3 = [*(a1 + 32) tableView];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v2, "count")}];
  [v3 deleteSections:v4 withRowAnimation:0];

  [*(a1 + 32) setSections:v7];
  v5 = [*(a1 + 32) tableView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  [v5 insertSections:v6 withRowAnimation:4];
}

- (id)_sortedProfilesFromSet:(id)set
{
  allObjects = [set allObjects];
  v4 = WFScanRecordAlphaSortCompartor();
  v5 = [allObjects sortedArrayUsingComparator:v4];

  return v5;
}

- (id)_defaultSectionsForEditing
{
  if ([(NSArray *)self->_managedKnownNetworks count])
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([(NSMutableArray *)self->_editableKnownNetworks count])
    {
      [array addObject:&unk_2883224F8];
    }

    if ([(NSArray *)self->_managedKnownNetworks count])
    {
      [array addObject:&unk_288322540];
    }
  }

  else
  {
    array = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_2883224F8, 0}];
  }

  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:array];

  return v4;
}

- (void)_adjustNavigationItemsForEditingMode
{
  if (self->_screenProtector)
  {
    [(WFAirportViewController *)self setOriginalBackButtonItem:0];
  }

  else
  {
    parentViewController = [(WFAirportViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [(WFAirportViewController *)self setOriginalBackButtonItem:leftBarButtonItem];
  }

  parentViewController2 = [(WFAirportViewController *)self parentViewController];
  navigationItem2 = [parentViewController2 navigationItem];
  [navigationItem2 setHidesBackButton:1];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEditing];
  parentViewController3 = [(WFAirportViewController *)self parentViewController];
  navigationItem3 = [parentViewController3 navigationItem];
  [navigationItem3 setLeftBarButtonItem:v8];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finishEditing];
  parentViewController4 = [(WFAirportViewController *)self parentViewController];
  navigationItem4 = [parentViewController4 navigationItem];
  [navigationItem4 setRightBarButtonItem:v11];

  [(WFAirportViewController *)self _updateKnownNetworksDoneButtonForEditability];
}

- (void)finishEditing
{
  v19 = *MEMORY[0x277D85DE8];
  networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
  v4 = [networksToBeDeleted count];

  if (v4)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5)
    {
      v9 = v5;
      if (os_log_type_enabled(v9, v7))
      {
        networksToBeDeleted2 = [(WFAirportViewController *)self networksToBeDeleted];
        v17 = 134217984;
        v18 = [networksToBeDeleted2 count];
        _os_log_impl(&dword_273FB9000, v9, v7, "Deleting %lu known networks,", &v17, 0xCu);
      }
    }

    [(WFAirportViewController *)self promptConfirmAlert];
  }

  else
  {
    [(WFAirportViewController *)self _transitionToScanList];
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(4uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 4 && v11 && os_log_type_enabled(v11, v13))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_273FB9000, v11, v13, "No change to known network lists, bring back network list.", &v17, 2u);
    }
  }

  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setHidesBackButton:0];
}

- (void)cancelEditing
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 4 && v3 && os_log_type_enabled(v3, v5))
  {
    *v9 = 0;
    _os_log_impl(&dword_273FB9000, v3, v5, "cancel known networks editing", v9, 2u);
  }

  [(WFAirportViewController *)self _transitionToScanList];
  [(WFAirportViewController *)self _updateKnownNetworksDoneButtonForEditability];
  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setHidesBackButton:0];
}

- (void)promptConfirmAlert
{
  objc_initWeak(&location, self);
  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertTitle_CH" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }
  v4 = ;

  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertMessage_CH" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }
  v6 = ;

  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocDeleteConfirmPromptRemoveTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v10 = MEMORY[0x277D750F8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __45__WFAirportViewController_promptConfirmAlert__block_invoke;
  v18 = &unk_279EC5830;
  objc_copyWeak(&v19, &location);
  v11 = [v10 actionWithTitle:v9 style:0 handler:&v15];
  [v7 addAction:{v11, v15, v16, v17, v18}];
  [v7 setPreferredAction:v11];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocDeleteConfirmPromptCancelTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v14 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:&__block_literal_global_0];
  [v7 addAction:v14];
  [(WFAirportViewController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __45__WFAirportViewController_promptConfirmAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _submitDeletion];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _transitionToScanList];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_273FB9000, v4, v6, "user tapped on confirm in the removal prompt", v8, 2u);
  }
}

void __45__WFAirportViewController_promptConfirmAlert__block_invoke_434()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    *v4 = 0;
    _os_log_impl(&dword_273FB9000, v0, v2, "User tapped cancel in confirmation prompt.", v4, 2u);
  }
}

- (void)_transitionToScanList
{
  originalBackButtonItem = [(WFAirportViewController *)self originalBackButtonItem];
  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setLeftBarButtonItem:originalBackButtonItem];

  tableView = [(WFAirportViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:0];

  [(WFAirportViewController *)self _loadEditButton];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  LOBYTE(parentViewController) = objc_opt_respondsToSelector();

  if (parentViewController)
  {
    listDelegate2 = [(WFAirportViewController *)self listDelegate];
    [listDelegate2 airportSettingsViewControllerDidFinishEditingKnownNetworks:self];
  }

  tableView2 = [(WFAirportViewController *)self tableView];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__WFAirportViewController__transitionToScanList__block_invoke;
  v11[3] = &unk_279EC5538;
  v11[4] = self;
  [tableView2 performBatchUpdates:v11 completion:0];

  [(WFAirportViewController *)self setIsInEditingMode:0];
  [(WFAirportViewController *)self _updateNetworkRestrictionHeader];
  tableView3 = [(WFAirportViewController *)self tableView];
  [tableView3 setEditing:0];

  [(WFAirportViewController *)self setNetworksToBeDeleted:0];
}

void __48__WFAirportViewController__transitionToScanList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previousSections];
  if (v2)
  {
    [*(a1 + 32) previousSections];
  }

  else
  {
    [*(a1 + 32) _defaultSectionsForPowerState:{objc_msgSend(*(a1 + 32), "powered")}];
  }
  v8 = ;

  v3 = [*(a1 + 32) sections];
  v4 = [*(a1 + 32) tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  [v4 deleteSections:v5 withRowAnimation:0];

  [*(a1 + 32) setSections:v8];
  v6 = [*(a1 + 32) tableView];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
  [v6 insertSections:v7 withRowAnimation:4];
}

- (void)_submitDeletion
{
  v19 = *MEMORY[0x277D85DE8];
  networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
  v4 = [networksToBeDeleted count];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
    networksToBeDeleted2 = [(WFAirportViewController *)self networksToBeDeleted];
    v7 = [WeakRetained removeKnownNetworks:networksToBeDeleted2];

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11))
    {
      v12 = v8 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v7)
    {
      if (v13)
      {
        v14 = v8;
        if (os_log_type_enabled(v14, v10))
        {
          networksToBeDeleted3 = [(WFAirportViewController *)self networksToBeDeleted];
          v17 = 138412290;
          v18 = networksToBeDeleted3;
          v16 = "Error occurred when trying to delete networks:%@";
LABEL_15:
          _os_log_impl(&dword_273FB9000, v14, v10, v16, &v17, 0xCu);

          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (v13)
    {
      v14 = v8;
      if (os_log_type_enabled(v14, v10))
      {
        networksToBeDeleted3 = [(WFAirportViewController *)self networksToBeDeleted];
        v17 = 134217984;
        v18 = [networksToBeDeleted3 count];
        v16 = "User deleted %lu networks successfully";
        goto LABEL_15;
      }

LABEL_16:
    }
  }
}

- (void)_updateKnownNetworksDoneButtonForEditability
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
    v4 = [networksToBeDeleted count] != 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v12 = 136315394;
    v13 = "[WFAirportViewController _updateKnownNetworksDoneButtonForEditability]";
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: done button enabled=%d", &v12, 0x12u);
  }

  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (id)_wifiKnownNetworkContextOptionsIsChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_288322558;
  v5 = [(WFAirportViewController *)self _passcodePromptForViewingKnownNetworksIsChinaDevice:?];
  v9[1] = &unk_288322570;
  v10[0] = v5;
  v6 = [(WFAirportViewController *)self _touchIDPromptForKnownNetworksIsChinaDevice:deviceCopy];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_touchIDPromptForKnownNetworksIsChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (deviceCopy)
  {
    v6 = @"kWFLocTouchIDConfirmationKnownNetworks_CH";
  }

  else
  {
    v6 = @"kWFLocTouchIDConfirmationKnownNetworks";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

- (id)_passcodePromptForViewingKnownNetworksIsChinaDevice:(BOOL)device
{
  if (device)
  {
    v3 = [@"kWFLocPasswordConfirmationKnownNetworks" stringByAppendingString:@"_CH"];
  }

  else
  {
    v3 = @"kWFLocPasswordConfirmationKnownNetworks";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

- (void)refreshKnownNetworksUpdateTableView:(BOOL)view
{
  viewCopy = view;
  v26 = *MEMORY[0x277D85DE8];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  managedKnownNetworks = [listDelegate managedKnownNetworks];
  v7 = [(WFAirportViewController *)self _sortedProfilesFromSet:managedKnownNetworks];
  [(WFAirportViewController *)self setManagedKnownNetworks:v7];

  v8 = MEMORY[0x277CBEB18];
  listDelegate2 = [(WFAirportViewController *)self listDelegate];
  editableKnownNetworks = [listDelegate2 editableKnownNetworks];
  v11 = [(WFAirportViewController *)self _sortedProfilesFromSet:editableKnownNetworks];
  v12 = [v8 arrayWithArray:v11];
  [(WFAirportViewController *)self setEditableKnownNetworks:v12];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  v15 = v14;
  if (WFCurrentLogLevel(v14, v16) >= 3 && v13)
  {
    v17 = v13;
    if (os_log_type_enabled(v17, v15))
    {
      managedKnownNetworks2 = [(WFAirportViewController *)self managedKnownNetworks];
      v19 = [managedKnownNetworks2 count];
      editableKnownNetworks2 = [(WFAirportViewController *)self editableKnownNetworks];
      v22 = 134218240;
      v23 = v19;
      v24 = 2048;
      v25 = [editableKnownNetworks2 count];
      _os_log_impl(&dword_273FB9000, v17, v15, "managed networks=%lu editable networks=%lu", &v22, 0x16u);
    }
  }

  if (viewCopy)
  {
    tableView = [(WFAirportViewController *)self tableView];
    [tableView reloadData];
  }
}

- (WFAirportViewControllerDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

- (WFNetworkListRecord)joiningHotspot
{
  WeakRetained = objc_loadWeakRetained(&self->_joiningHotspot);

  return WeakRetained;
}

- (id)_currentNetworkCell
{
  _currentNetworkCellIndexPath = [(WFAirportViewController *)self _currentNetworkCellIndexPath];
  if (_currentNetworkCellIndexPath)
  {
    tableView = [(WFAirportViewController *)self tableView];
    v5 = [tableView cellForRowAtIndexPath:_currentNetworkCellIndexPath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_1()
{
  v1 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v2, v3) >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v4, v5, "%s: no infrastructure networks", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_2()
{
  v1 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v2, v3) >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v4, v5, "%s: no known networks", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_3()
{
  v1 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v2, v3) >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v4, v5, "%s: no popular networks", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_4()
{
  v1 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v2, v3) >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v4, v5, "%s: no unconfigured networks", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_5()
{
  v1 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v2, v3) >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v4, v5, "%s: no adhoc networks", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

- (void)_tableCellForKnownNetwork:(uint64_t)a1 tableView:indexPath:extraLeadingPadding:.cold.1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_0();
  v3 = WFLogForCategory(v2);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = 138543362;
    v8 = a1;
    _os_log_impl(&dword_273FB9000, v3, v5, "nil network for indexPath %{public}@", &v7, 0xCu);
  }
}

- (void)_tableCellForKnownNetwork:(uint64_t)a1 tableView:(uint64_t)a2 indexPath:extraLeadingPadding:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = WFLogForCategory(v4);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 138543618;
    v10 = a1;
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_273FB9000, v5, v7, "Unable to create cell at indexPath %{public}@ for network %{public}@", &v9, 0x16u);
  }
}

- (void)_tableCellForNetwork:(uint64_t)a1 tableView:(NSObject *)a2 indexPath:.cold.1(uint64_t a1, NSObject **a2)
{
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  *a2 = v4;
}

- (uint64_t)_sectionTypeAtSection:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  return [a2 _dumpSections];
}

- (void)_currentNetworkCellIndexPath
{
  v2 = OUTLINED_FUNCTION_1_0();
  v3 = WFLogForCategory(v2);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      v8 = [self _nameOfSection:0];
      v9 = 136315394;
      v10 = "[WFAirportViewController _currentNetworkCellIndexPath]";
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_273FB9000, v7, v5, "%s: index for %{public}@ not found in sections", &v9, 0x16u);
    }
  }
}

@end