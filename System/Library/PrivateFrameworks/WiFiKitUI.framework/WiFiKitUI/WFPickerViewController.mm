@interface WFPickerViewController
- (UITableView)tableView;
- (WFNetworkListDelegate)listDelegate;
- (WFPickerViewController)init;
- (id)_cellForNetworkRecord:(id)record tableView:(id)view indexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)refresh;
- (void)setCurrentNetwork:(id)network;
- (void)setNetworks:(id)networks;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFPickerViewController

- (WFPickerViewController)init
{
  v3.receiver = self;
  v3.super_class = WFPickerViewController;
  result = [(WFPickerViewController *)&v3 init];
  result->_showCurrentNetworkTop = 0;
  result->_dismissed = 0;
  return result;
}

- (void)loadView
{
  v29.receiver = self;
  v29.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v29 loadView];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  view = [(WFPickerViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:0 style:?];

  [v5 setDelegate:self];
  [v5 setDataSource:self];
  view2 = [(WFPickerViewController *)self view];
  [view2 addSubview:v5];

  view3 = [(WFPickerViewController *)self view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(WFPickerViewController *)self setTableView:v5];
  tableView = [(WFPickerViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(WFPickerViewController *)self tableView];
  leftAnchor = [tableView2 leftAnchor];
  view4 = [(WFPickerViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v13 setActive:1];

  tableView3 = [(WFPickerViewController *)self tableView];
  topAnchor = [tableView3 topAnchor];
  view5 = [(WFPickerViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  tableView4 = [(WFPickerViewController *)self tableView];
  rightAnchor = [tableView4 rightAnchor];
  view6 = [(WFPickerViewController *)self view];
  rightAnchor2 = [view6 rightAnchor];
  v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v23 setActive:1];

  tableView5 = [(WFPickerViewController *)self tableView];
  bottomAnchor = [tableView5 bottomAnchor];
  view7 = [(WFPickerViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v28 setActive:1];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D757B0] nibWithNibName:@"WFNetworkListCell" bundle:v3];
  tableView = [(WFPickerViewController *)self tableView];
  [tableView registerNib:v4 forCellReuseIdentifier:@"WFNetworkCell"];

  v6 = [MEMORY[0x277D757B0] nibWithNibName:@"WFHotspotCell" bundle:v3];
  tableView2 = [(WFPickerViewController *)self tableView];
  [tableView2 registerNib:v6 forCellReuseIdentifier:@"WFHotspotCell"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v9 viewWillAppear:appear];
  [(WFPickerViewController *)self refresh];
  listDelegate = [(WFPickerViewController *)self listDelegate];
  [listDelegate networkListViewControllerDidAppear:self];

  v5 = WFLogForCategory(3uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v11 = "[WFPickerViewController viewWillAppear:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: %@", buf, 0x16u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v9 viewDidDisappear:disappear];
  listDelegate = [(WFPickerViewController *)self listDelegate];
  [listDelegate networkListViewControllerDidDisappear:self];

  v5 = WFLogForCategory(3uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v11 = "[WFPickerViewController viewDidDisappear:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: %@", buf, 0x16u);
  }
}

- (void)didReceiveMemoryWarning
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v7 didReceiveMemoryWarning];
  v3 = WFLogForCategory(3uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    *buf = 136315394;
    v9 = "[WFPickerViewController didReceiveMemoryWarning]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273FB9000, v3, v5, "%s: %@", buf, 0x16u);
  }
}

- (void)setNetworks:(id)networks
{
  v28 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v5 = WFLogForCategory(3uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      v22 = 136315650;
      v23 = "[WFPickerViewController setNetworks:]";
      v24 = 2048;
      v25 = [networksCopy count];
      v26 = 2112;
      v27 = networksCopy;
      _os_log_impl(&dword_273FB9000, v9, v7, "%s: networks (%lu): %@", &v22, 0x20u);
    }
  }

  if ([(WFPickerViewController *)self dismissed])
  {
    v10 = WFLogForCategory(3uLL);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      v22 = 136315138;
      v23 = "[WFPickerViewController setNetworks:]";
      _os_log_impl(&dword_273FB9000, v10, v12, "%s: disregarding call to set networks, this view controller is no longer visible", &v22, 0xCu);
    }
  }

  else
  {
    if (networksCopy)
    {
      v14 = [networksCopy mutableCopy];
      currentNetwork = [(WFPickerViewController *)self currentNetwork];
      if (currentNetwork)
      {
        showCurrentNetworkTop = self->_showCurrentNetworkTop;

        if (!showCurrentNetworkTop)
        {
          currentNetwork2 = [(WFPickerViewController *)self currentNetwork];
          [(NSArray *)v14 addObject:currentNetwork2];
        }
      }

      allObjects = [(NSArray *)v14 allObjects];
      v19 = WFScanRecordDefaultSortCompartor();
      v20 = [allObjects sortedArrayUsingComparator:v19];
      sortedNetworks = self->_sortedNetworks;
      self->_sortedNetworks = v20;
    }

    else
    {
      v14 = self->_sortedNetworks;
      self->_sortedNetworks = 0;
    }

    [(WFPickerViewController *)self refresh];
  }
}

- (void)setCurrentNetwork:(id)network
{
  objc_storeStrong(&self->_currentNetwork, network);
  networkCopy = network;
  [networkCopy scaledRSSI];
  v7 = v6;

  self->_currentNetworkScaledRSSI = v7;
  self->_currentNetworkState = 0;

  [(WFPickerViewController *)self refresh];
}

- (void)refresh
{
  v10 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(WFPickerViewController *)self dismissed])
    {
      v3 = WFLogForCategory(3uLL);
      v4 = OSLogForWFLogLevel(1uLL);
      v5 = v4;
      if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
      {
        *buf = 136315138;
        v9 = "[WFPickerViewController refresh]";
        _os_log_impl(&dword_273FB9000, v3, v5, "%s: disregarding call to refresh, this view controller is no longer visible", buf, 0xCu);
      }
    }

    else
    {
      tableView = [(WFPickerViewController *)self tableView];
      [tableView reloadData];
    }
  }

  else
  {

    [(WFPickerViewController *)self performSelectorOnMainThread:sel_refresh withObject:0 waitUntilDone:0];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  listDelegate = [(WFPickerViewController *)self listDelegate];
  v5 = [listDelegate networkListViewControllerCurrentPowerState:self];

  if (!v5)
  {
    return 0;
  }

  currentNetwork = [(WFPickerViewController *)self currentNetwork];
  if (currentNetwork)
  {
    showCurrentNetworkTop = self->_showCurrentNetworkTop;
  }

  else
  {
    showCurrentNetworkTop = 0;
  }

  sortedNetworks = [(WFPickerViewController *)self sortedNetworks];
  v10 = [sortedNetworks count];

  if (v10)
  {
    return showCurrentNetworkTop + 1;
  }

  else
  {
    return showCurrentNetworkTop;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (!section && ([(WFPickerViewController *)self currentNetwork], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (showCurrentNetworkTop = self->_showCurrentNetworkTop, v11, showCurrentNetworkTop))
  {
    v10 = 1;
  }

  else
  {
    sortedNetworks = [(WFPickerViewController *)self sortedNetworks];
    v8 = [sortedNetworks count];

    if (v8)
    {
      sortedNetworks2 = [(WFPickerViewController *)self sortedNetworks];
      v10 = [sortedNetworks2 count];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sortedNetworks = [(WFPickerViewController *)self sortedNetworks];
  v9 = [sortedNetworks objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v10 = [(WFPickerViewController *)self _cellForNetworkRecord:v9 tableView:viewCopy indexPath:pathCopy];

  return v10;
}

- (id)_cellForNetworkRecord:(id)record tableView:(id)view indexPath:(id)path
{
  recordCopy = record;
  pathCopy = path;
  viewCopy = view;
  title = [recordCopy title];
  [0 setTitle:title];

  if ([recordCopy isInstantHotspot])
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"WFHotspotCell" forIndexPath:pathCopy];

    title2 = [recordCopy title];
    [v12 setTitle:title2];

    hotspotDetails = [v12 hotspotDetails];

    if (!hotspotDetails)
    {
      v15 = objc_alloc_init(WFHotspotDetails);
      hotspotBatteryLife = [recordCopy hotspotBatteryLife];
      [(WFHotspotDetails *)v15 setBatteryLife:hotspotBatteryLife];

      hotspotCellularProtocol = [recordCopy hotspotCellularProtocol];
      [(WFHotspotDetails *)v15 setCellularProtocolString:hotspotCellularProtocol];

      hotspotSignalStrength = [recordCopy hotspotSignalStrength];
      [(WFHotspotDetails *)v15 setSignalStrength:hotspotSignalStrength];

      [v12 setHotspotDetails:v15];
    }
  }

  else
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkCell" forIndexPath:pathCopy];

    title3 = [recordCopy title];
    [v12 setTitle:title3];

    [v12 setSubtitle:0];
    [v12 setPersonalHotspot:{objc_msgSend(recordCopy, "iOSHotspot")}];
    [v12 setSecure:{objc_msgSend(recordCopy, "isSecure")}];
    [recordCopy scaledRSSI];
    [v12 setBars:WFSignalBarsFromScaledRSSI(v20)];
    [v12 setLayoutMargins:{0.0, 0.0, 0.0, 60.0}];
  }

  currentNetwork = [(WFPickerViewController *)self currentNetwork];
  v22 = [recordCopy isEqual:currentNetwork];

  if (v22)
  {
    [(WFPickerViewController *)self currentNetworkScaledRSSI];
    [v12 setBars:WFSignalBarsFromScaledRSSI(v23)];
    [v12 setState:self->_currentNetworkState];
  }

  [v12 setAccessoryType:0];

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  listDelegate = [(WFPickerViewController *)self listDelegate];
  sortedNetworks = [(WFPickerViewController *)self sortedNetworks];
  v9 = [sortedNetworks objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [listDelegate networkListViewController:self didTapRecord:v9];
  if (self->_showCurrentNetworkTop)
  {
    tableView = [(WFPickerViewController *)self tableView];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [tableView scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:1];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (WFNetworkListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

@end