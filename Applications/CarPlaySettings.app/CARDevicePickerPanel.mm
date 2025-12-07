@interface CARDevicePickerPanel
- (CARDevicePickerCellSpecifier)cellSpecifier;
- (void)_refreshViewControllerIfNeeded;
- (void)carManager:(id)manager didUpdatePairedDevices:(id)devices;
- (void)viewDidLoad;
@end

@implementation CARDevicePickerPanel

- (CARDevicePickerCellSpecifier)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARDevicePickerCellSpecifier alloc];
    v5 = sub_10001C80C(@"DEVICE_PICKER_CELL_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.carplay-devices"];
    panelController = [(CARSettingsPanel *)self panelController];
    carSession = [panelController carSession];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10001510C;
    v16 = &unk_1000DAE40;
    objc_copyWeak(&v17, &location);
    v9 = [(CARDevicePickerCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 carSession:carSession actionBlock:&v13];

    [(CARDevicePickerCellSpecifier *)v9 refreshSpecifierIfNeeded:v13];
    v10 = self->_cellSpecifier;
    self->_cellSpecifier = v9;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsDevicePickerCell"];
  v11 = self->_cellSpecifier;

  return v11;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARDevicePickerPanel;
  [(CARSettingsPanel *)&v5 viewDidLoad];
  [(CARDevicePickerPanel *)self _refreshViewControllerIfNeeded];
  v3 = +[CARSettingsAppDelegate sharedDelegate];
  carManager = [v3 carManager];
  [carManager addObserver:self];
}

- (void)_refreshViewControllerIfNeeded
{
  pairedDevices = [(CARDevicePickerPanel *)self pairedDevices];

  if (pairedDevices)
  {
    v5 = sub_10001C784(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] current view controller set to device picker", buf, 2u);
    }

    currentViewController = [(CARDevicePickerPanel *)self currentViewController];
    view = [currentViewController view];
    [view removeFromSuperview];

    currentViewController2 = [(CARDevicePickerPanel *)self currentViewController];
    [currentViewController2 removeFromParentViewController];

    v9 = [_TtC15CarPlaySettings22CARDevicePickerManager alloc];
    pairedDevices2 = [(CARDevicePickerPanel *)self pairedDevices];
    panelController = [(CARSettingsPanel *)self panelController];
    carSession = [panelController carSession];
    v70 = [(CARDevicePickerManager *)v9 initWithPairedDevices:pairedDevices2 carSession:carSession];

    viewController = [(CARDevicePickerManager *)v70 viewController];
    [viewController willMoveToParentViewController:self];
    [(CARDevicePickerPanel *)self addChildViewController:viewController];
    view2 = [(CARDevicePickerPanel *)self view];
    view3 = [viewController view];
    [view2 addSubview:view3];

    view4 = [viewController view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    view5 = [viewController view];
    leadingAnchor = [view5 leadingAnchor];
    view6 = [(CARDevicePickerPanel *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v60;
    view7 = [viewController view];
    trailingAnchor = [view7 trailingAnchor];
    view8 = [(CARDevicePickerPanel *)self view];
    trailingAnchor2 = [view8 trailingAnchor];
    v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[1] = v50;
    view9 = [viewController view];
    topAnchor = [view9 topAnchor];
    view10 = [(CARDevicePickerPanel *)self view];
    topAnchor2 = [view10 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[2] = v19;
    view11 = [viewController view];
    bottomAnchor = [view11 bottomAnchor];
    view12 = [(CARDevicePickerPanel *)self view];
    bottomAnchor2 = [view12 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v24;
    [NSArray arrayWithObjects:v74 count:4];
    v25 = v46 = self;
    [NSLayoutConstraint activateConstraints:v25];

    navigationItem = [(CARSettingsPanel *)v46 navigationItem];
    [viewController _setExistingNavigationItem:navigationItem];

    v27 = v70;
    [(CARDevicePickerPanel *)v46 setCurrentViewController:viewController];
  }

  else
  {
    isSpinnerVisible = [(CARDevicePickerPanel *)self isSpinnerVisible];
    if (isSpinnerVisible)
    {
      return;
    }

    v29 = sub_10001C784(isSpinnerVisible);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[Settings] current view controller set to spinner", buf, 2u);
    }

    [(CARDevicePickerPanel *)self currentViewController];
    v31 = v30 = self;
    view13 = [v31 view];
    [view13 removeFromSuperview];

    currentViewController3 = [(CARDevicePickerPanel *)v30 currentViewController];
    [currentViewController3 removeFromParentViewController];

    v27 = +[_TtC15CarPlaySettings20CARSettingsUtilities loadingViewController];
    [v27 willMoveToParentViewController:v30];
    [(CARDevicePickerPanel *)v30 addChildViewController:v27];
    view14 = [(CARDevicePickerPanel *)v30 view];
    view15 = [v27 view];
    [view14 addSubview:view15];

    view16 = [v27 view];
    [view16 setTranslatesAutoresizingMaskIntoConstraints:0];

    view17 = [v27 view];
    leadingAnchor3 = [view17 leadingAnchor];
    view18 = [(CARDevicePickerPanel *)v30 view];
    leadingAnchor4 = [view18 leadingAnchor];
    v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v73[0] = v63;
    view19 = [v27 view];
    trailingAnchor3 = [view19 trailingAnchor];
    view20 = [(CARDevicePickerPanel *)v30 view];
    trailingAnchor4 = [view20 trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v73[1] = v52;
    view21 = [v27 view];
    topAnchor3 = [view21 topAnchor];
    view22 = [(CARDevicePickerPanel *)v30 view];
    topAnchor4 = [view22 topAnchor];
    v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v73[2] = v38;
    view23 = [v27 view];
    bottomAnchor3 = [view23 bottomAnchor];
    view24 = [(CARDevicePickerPanel *)v30 view];
    bottomAnchor4 = [view24 bottomAnchor];
    v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v73[3] = v43;
    v44 = [NSArray arrayWithObjects:v73 count:4];
    [NSLayoutConstraint activateConstraints:v44];

    [(CARDevicePickerPanel *)v30 setCurrentViewController:v27];
    [(CARDevicePickerPanel *)v30 setIsSpinnerVisible:1];
  }
}

- (void)carManager:(id)manager didUpdatePairedDevices:(id)devices
{
  devicesCopy = devices;
  pairedDevices = [(CARDevicePickerPanel *)self pairedDevices];

  v6 = devicesCopy;
  if (pairedDevices != devicesCopy)
  {
    [(CARDevicePickerPanel *)self setPairedDevices:devicesCopy];
    [(CARDevicePickerPanel *)self _refreshViewControllerIfNeeded];
    v6 = devicesCopy;
  }
}

@end