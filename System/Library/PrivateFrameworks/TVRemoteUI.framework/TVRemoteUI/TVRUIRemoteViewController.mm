@interface TVRUIRemoteViewController
- (BOOL)_shouldAllowKeyboardToBePresented;
- (BOOL)hasPresentedContent;
- (BOOL)shouldDisconnectAndStopConnections;
- (BOOL)supportsVolumeControl;
- (CGSize)preferredContentSize;
- (TVRUIDeviceConnectionStatusDelegate)deviceConnectionStatusDelegate;
- (TVRUIRemoteViewController)init;
- (TVRUIRemoteViewControllerDelegate)delegate;
- (double)backgroundCornerRadius;
- (id)_stringForConnectionContext:(int64_t)context;
- (id)_stringForDeviceDeviceIdentifierType:(int64_t)type;
- (id)_stringForLaunchContextType:(int64_t)type;
- (id)animatorForDismissalAsAlert;
- (id)animatorForPresentationAsAlert;
- (id)hitTest:(CGPoint)test withEvent:(id)event forTouchpadView:(id)view;
- (id)playerCommandHandler;
- (int64_t)_connectionContextFromLaunchContext:(int64_t)context;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activate;
- (void)_cancelHideConnectingAndShowDevicePicker;
- (void)_cancelPairing;
- (void)_cancelShowConnectingSpinner;
- (void)_connectToDevice:(id)device connectionContext:(int64_t)context;
- (void)_connectToMostRelevantDevice;
- (void)_connectToPreferredDeviceFromDeviceList:(id)list;
- (void)_createBlackGradientView;
- (void)_createFindingSessionIfNeeded;
- (void)_deactivate;
- (void)_disableSearch;
- (void)_disconnect;
- (void)_disconnectSystemInitiated;
- (void)_disconnectUserInitiatedAndModifyLockscreenAssertion:(BOOL)assertion;
- (void)_enableLiveTVButtons:(BOOL)buttons animated:(BOOL)animated;
- (void)_enableMediaControls:(BOOL)controls animated:(BOOL)animated;
- (void)_enableSearch;
- (void)_enableTVRemoteOnLockscreen:(BOOL)lockscreen;
- (void)_expandDeviceList;
- (void)_forceShowMediaControls;
- (void)_hideConnectingAndShowDevicePicker;
- (void)_hideMessageContent;
- (void)_initSessionStatistics;
- (void)_installTapToRadarButton;
- (void)_layoutTouchpadExpanded:(BOOL)expanded;
- (void)_logSessionStatistics;
- (void)_performSiriEffectsWithButtonEvent:(id)event;
- (void)_presentAlertWithTitle:(id)title message:(id)message;
- (void)_presentKeyboardWithAttributes:(id)attributes initialText:(id)text;
- (void)_presentPairingAlert;
- (void)_presentTextPasswordAlert;
- (void)_resetActiveDevice;
- (void)_selectDevice:(id)device withConnectionContext:(int64_t)context;
- (void)_setupChildViewControllers;
- (void)_setupDevicePickerController;
- (void)_setupNetworkObserverIfNeeded;
- (void)_setupNowPlayingController;
- (void)_showBluetoothDisabledAlertWithCompletion:(id)completion;
- (void)_showConnectingSpinner;
- (void)_showFindingAlert;
- (void)_showSearchingSpinnerIfNeeded;
- (void)_startDeviceQueryThresholdTimer;
- (void)_startFindingSessionForDevice:(id)device;
- (void)_stopDeviceQueryThresholdTimer;
- (void)_stopFindingSessionForDevice:(id)device;
- (void)_tapToRadar;
- (void)_toggleControlAvailability;
- (void)_toggleDock;
- (void)_turnOnBluetoothIfNeededWithCompletionBlock:(id)block;
- (void)_updateControlsAppearance;
- (void)_updateInfoButtonState;
- (void)_updateSecureWindowState;
- (void)alertController:(id)controller enteredText:(id)text;
- (void)alertController:(id)controller generatedTextInputPayload:(id)payload;
- (void)alertControllerCancelled:(id)cancelled;
- (void)alertControllerHitKeyboardReturnKey:(id)key;
- (void)alertControllerPressedDictationButton:(id)button;
- (void)alertControllerReleasedDictationButton:(id)button;
- (void)backlightLuminanceDidChange;
- (void)bluetoothAvailabilityDidUpdate:(BOOL)update;
- (void)clearMessageContent;
- (void)configureWithContext:(id)context;
- (void)configureWithDeviceIdentifier:(id)identifier identifierType:(int64_t)type deviceType:(int64_t)deviceType launchContext:(int64_t)context;
- (void)connectionServiceDidInvalidate:(id)invalidate;
- (void)consumeSinglePressDownForButtonKind:(int64_t)kind;
- (void)dealloc;
- (void)device:(id)device beganTextEditingWithAttributes:(id)attributes initialText:(id)text;
- (void)device:(id)device didEncounterAuthenticationThrottle:(int64_t)throttle;
- (void)device:(id)device didUpdateAttributes:(id)attributes;
- (void)device:(id)device didUpdateNowPlayingInfo:(id)info;
- (void)device:(id)device didUpdateSiriRemoteFindingSessionState:(int64_t)state;
- (void)device:(id)device didUpdateText:(id)text;
- (void)device:(id)device endedTextEditingWithAttributes:(id)attributes endingText:(id)text;
- (void)device:(id)device hasCaptionsEnabled:(BOOL)enabled;
- (void)device:(id)device hidesMediaControls:(id)controls;
- (void)device:(id)device needsMediaControls:(id)controls;
- (void)device:(id)device supportsFindMyRemote:(BOOL)remote;
- (void)device:(id)device supportsSiri:(BOOL)siri volumeControl:(BOOL)control;
- (void)device:(id)device supportsVolumeControl:(BOOL)control;
- (void)deviceBeganConnecting:(id)connecting;
- (void)deviceDidConnect:(id)connect;
- (void)deviceDidDisconnect:(id)disconnect reason:(int64_t)reason error:(id)error;
- (void)deviceDidEncounterAuthenticationChallenge:(id)challenge passwordType:(unint64_t)type passcode:(id)passcode;
- (void)deviceInfoUpdated:(id)updated;
- (void)deviceListUpdated:(id)updated;
- (void)devicePickerTitleWasLongPressedForDevice:(id)device;
- (void)devicePickerWillChangeState:(BOOL)state animated:(BOOL)animated;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)fetchPreferredDevice;
- (void)findButtonTappedForDevice:(id)device;
- (void)findingSessionDidEnd;
- (void)findingSessionDidStart;
- (void)generatedButtonEvent:(id)event;
- (void)generatedTouchEvent:(id)event;
- (void)keyboardRequested;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)setBackgroundCornerRadius:(double)radius;
- (void)setIsInSecureWindow:(BOOL)window;
- (void)setSupportsSiri:(BOOL)siri;
- (void)setSupportsVolumeControl:(BOOL)control;
- (void)showGenericUnableToConnectMessage;
- (void)showLoadingSpinner;
- (void)showMessageWithError:(id)error andDevice:(id)device;
- (void)showMessageWithTitle:(id)title message:(id)message;
- (void)showMessageWithTitle:(id)title message:(id)message titleFont:(id)font;
- (void)showNoAssociatedNetworkMessage;
- (void)showNoWIFIConnectionMessage;
- (void)showPairingMessageWithCode:(id)code;
- (void)showSearchingSpinner;
- (void)showThrottleConnectMessage;
- (void)startConnections;
- (void)stopConnections;
- (void)suggestedDevices:(id)devices;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)volumeDownEventGenerated;
- (void)volumeUpEventGenerated;
- (void)wifiStateDidUpdate:(int64_t)update;
@end

@implementation TVRUIRemoteViewController

- (TVRUIRemoteViewController)init
{
  v33.receiver = self;
  v33.super_class = TVRUIRemoteViewController;
  v2 = [(TVRUIRemoteViewController *)&v33 init];
  if (v2)
  {
    v3 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v2->_styleProvider;
    v2->_styleProvider = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [[TVRUITouchpadViewController alloc] initWithNibName:0 bundle:0];
    touchpadViewController = v2->_touchpadViewController;
    v2->_touchpadViewController = v6;

    [(TVRUITouchpadViewController *)v2->_touchpadViewController setTouchDelegate:v2];
    [(TVRUITouchpadViewController *)v2->_touchpadViewController setStyleProvider:v2->_styleProvider];
    [(TVRUITouchpadViewController *)v2->_touchpadViewController setEventDelegate:v2];
    [v5 addObject:v2->_touchpadViewController];
    v8 = [[TVRUIControlPanelViewController alloc] initWithNibName:0 bundle:0];
    controlPanelViewController = v2->_controlPanelViewController;
    v2->_controlPanelViewController = v8;

    [(TVRUIControlPanelViewController *)v2->_controlPanelViewController setStyleProvider:v2->_styleProvider];
    [(TVRUIControlPanelViewController *)v2->_controlPanelViewController setButtonActionsDelegate:v2];
    [v5 addObject:v2->_controlPanelViewController];
    v10 = [[TVRUIMediaControlsViewController alloc] initWithNibName:0 bundle:0];
    mediaControlsViewController = v2->_mediaControlsViewController;
    v2->_mediaControlsViewController = v10;

    [(TVRUIMediaControlsViewController *)v2->_mediaControlsViewController setStyleProvider:v2->_styleProvider];
    [(TVRUIMediaControlsViewController *)v2->_mediaControlsViewController setButtonActionsDelegate:v2];
    [v5 addObject:v2->_mediaControlsViewController];
    [(TVRUIRemoteViewController *)v2 _setupNowPlayingController];
    [v5 addObject:v2->_nowPlayingController];
    [(TVRUIRemoteViewController *)v2 _setupDevicePickerController];
    [v5 addObject:v2->_devicePickerViewController];
    v12 = objc_alloc_init(TVRMessageView);
    messageView = v2->_messageView;
    v2->_messageView = v12;

    [(TVRMessageView *)v2->_messageView setStyleProvider:v2->_styleProvider];
    [(TVRMessageView *)v2->_messageView setUserInteractionEnabled:0];
    v14 = objc_alloc_init(TVRKeyboardHaptic);
    keyboardHaptic = v2->_keyboardHaptic;
    v2->_keyboardHaptic = v14;

    v16 = +[TVRUISiriManager sharedManager];
    siriManager = v2->_siriManager;
    v2->_siriManager = v16;

    [(TVRUISiriManager *)v2->_siriManager setButtonActionsDelegate:v2];
    objc_initWeak(&location, v2);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __33__TVRUIRemoteViewController_init__block_invoke;
    v30 = &unk_279D87F18;
    objc_copyWeak(&v31, &location);
    v18 = _Block_copy(&v27);
    v19 = [TVRUIDockController alloc];
    nowPlayingController = v2->_nowPlayingController;
    v21 = [(TVRUINowPlayingController *)nowPlayingController upNextProvider:v27];
    v22 = [(TVRUIDockController *)v19 initWithHostingViewController:v2 actionProvider:nowPlayingController upNextProvider:v21 nowPlayingProvider:v2->_nowPlayingController layoutHandler:v18];
    dockController = v2->_dockController;
    v2->_dockController = v22;

    [v5 addObject:v2->_dockController];
    [(TVRUIDockController *)v2->_dockController setStyleProvider:v2->_styleProvider];
    v24 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    deviceObservers = v2->_deviceObservers;
    v2->_deviceObservers = v24;

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__TVRUIRemoteViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsLayout];

    v3 = [v4 view];
    [v3 layoutIfNeeded];

    WeakRetained = v4;
  }
}

- (void)configureWithContext:(id)context
{
  contextCopy = context;
  deviceIdentifier = [contextCopy deviceIdentifier];
  deviceIdentifierType = [contextCopy deviceIdentifierType];
  deviceType = [contextCopy deviceType];
  launchContext = [contextCopy launchContext];

  [(TVRUIRemoteViewController *)self configureWithDeviceIdentifier:deviceIdentifier identifierType:deviceIdentifierType deviceType:deviceType launchContext:launchContext];
}

- (void)configureWithDeviceIdentifier:(id)identifier identifierType:(int64_t)type deviceType:(int64_t)deviceType launchContext:(int64_t)context
{
  v52 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  isConfigured = [(TVRUIRemoteViewController *)self isConfigured];
  isConfigured2 = [(TVRUIRemoteViewController *)self isConfigured];
  if (isConfigured2)
  {
    v13 = _TVRUIViewControllerLog(isConfigured2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
      name = [activeDevice name];
      v44 = 138543362;
      v45 = name;
      _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "RemoteViewController is already configured with device: %{public}@", &v44, 0xCu);
    }

    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    if (activeDevice2)
    {
      v17 = activeDevice2;
      activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
      v19 = [activeDevice3 hasIdentifier:identifierCopy];

      if ((v19 & 1) == 0)
      {
        [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
        [(TVRUIRemoteViewController *)self setActiveDevice:0];
        [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:0];
        goto LABEL_9;
      }
    }
  }

  else
  {
    mEMORY[0x277D6C560] = [MEMORY[0x277D6C560] sharedInstance];
    [mEMORY[0x277D6C560] reset];
  }

  if (isConfigured)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ([(__CFString *)identifierCopy length])
  {
    v21 = [TVRUIDeviceFactory deviceWithIdentifier:identifierCopy];
    [(TVRUIRemoteViewController *)self setActiveDevice:v21];

    v23 = _TVRUIViewControllerLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice4 = [(TVRUIRemoteViewController *)self activeDevice];
      v44 = 138543362;
      v45 = activeDevice4;
      _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", &v44, 0xCu);
    }

    v26 = _TVRUIViewControllerLog(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(TVRUIRemoteViewController *)self _stringForDeviceDeviceIdentifierType:type];
      v44 = 138543618;
      v45 = identifierCopy;
      v46 = 2114;
      v47 = v27;
      _os_log_impl(&dword_26CFEB000, v26, OS_LOG_TYPE_DEFAULT, "Configured RemoteViewController with device-id %{public}@ of type %{public}@", &v44, 0x16u);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (context == 11)
  {
    v28 = [TVRUIDeviceFactory deviceWithIdentifier:@"Apple TV"];
    [(TVRUIRemoteViewController *)self setActiveDevice:v28];

    v30 = _TVRUIViewControllerLog(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice5 = [(TVRUIRemoteViewController *)self activeDevice];
      v44 = 138543362;
      v45 = activeDevice5;
      _os_log_impl(&dword_26CFEB000, v30, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", &v44, 0xCu);
    }

    v26 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:@"Apple TV"]);
    type = 4;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(TVRUIRemoteViewController *)self _stringForDeviceDeviceIdentifierType:4];
      v44 = 138543618;
      v45 = @"Apple TV";
      v46 = 2114;
      v47 = v32;
      _os_log_impl(&dword_26CFEB000, v26, OS_LOG_TYPE_DEFAULT, "deviceIdentifier was nil and this was from TTSU, configuring RemoteViewController with device-id %{public}@ of type %{public}@", &v44, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:
  v33 = +[TVRUIDeviceQuery deviceQuery];
  [(TVRUIRemoteViewController *)self setDeviceQuery:v33];

  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController transitonToViewForDeviceType:{-[TVRUIRemoteViewController deviceType](self, "deviceType")}];

  controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [controlPanelViewController transitonToViewForDeviceType:{-[TVRUIRemoteViewController deviceType](self, "deviceType")}];

  v37 = _TVRUIViewControllerLog(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [(TVRUIRemoteViewController *)self _stringForDeviceDeviceIdentifierType:type];
    launchContextDesc = [(TVRUIRemoteViewController *)self launchContextDesc];
    v44 = 138544130;
    v45 = identifierCopy;
    v46 = 2114;
    v47 = v38;
    v48 = 2048;
    deviceTypeCopy = deviceType;
    v50 = 2114;
    v51 = launchContextDesc;
    _os_log_impl(&dword_26CFEB000, v37, OS_LOG_TYPE_DEFAULT, "Configured RemoteViewController with device-id %{public}@ identifier type %{public}@ device-type %ld launch-context %{public}@", &v44, 0x2Au);
  }

  [(TVRUIRemoteViewController *)self setConfigured:1];
LABEL_23:
  [(TVRUIRemoteViewController *)self setDeviceIdentifierType:type];
  [(TVRUIRemoteViewController *)self setDeviceType:deviceType];
  [(TVRUIRemoteViewController *)self setLaunchContext:context];
  v40 = [(TVRUIRemoteViewController *)self _stringForLaunchContextType:context];
  [(TVRUIRemoteViewController *)self setLaunchContextDesc:v40];

  mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
  launchContextDesc2 = [(TVRUIRemoteViewController *)self launchContextDesc];
  [mEMORY[0x277D6C4B8] logPresentationFrom:launchContextDesc2];

  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  [nowPlayingController setViewServiceLaunchContext:context];
}

- (void)viewDidLoad
{
  v28[1] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v27 viewDidLoad];
  [(TVRUIRemoteViewController *)self setOverrideUserInterfaceStyle:2];
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  rootBackgroundColor = [styleProvider rootBackgroundColor];

  styleProvider2 = [(TVRUIRemoteViewController *)self styleProvider];
  rootBackgroundView = [styleProvider2 rootBackgroundView];
  [(TVRUIRemoteViewController *)self setBackgroundView:rootBackgroundView];

  backgroundView = [(TVRUIRemoteViewController *)self backgroundView];

  if (backgroundView)
  {
    backgroundView2 = [(TVRUIRemoteViewController *)self backgroundView];
    [backgroundView2 setBackgroundColor:rootBackgroundColor];

    view = [(TVRUIRemoteViewController *)self view];
    backgroundView3 = [(TVRUIRemoteViewController *)self backgroundView];
    [view addSubview:backgroundView3];

    backgroundView4 = [(TVRUIRemoteViewController *)self backgroundView];
    [backgroundView4 setUserInteractionEnabled:0];
  }

  else
  {
    if (!rootBackgroundColor)
    {
      goto LABEL_6;
    }

    backgroundView4 = [(TVRUIRemoteViewController *)self view];
    [backgroundView4 setBackgroundColor:rootBackgroundColor];
  }

LABEL_6:
  [(TVRUIRemoteViewController *)self _setupChildViewControllers];
  [(TVRUIRemoteViewController *)self _createBlackGradientView];
  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController setMenuProvider:nowPlayingController];

  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];

    v19 = objc_opt_self();
    v28[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v21 = [(TVRUIRemoteViewController *)self registerForTraitChanges:v20 withAction:sel_backlightLuminanceDidChange];
    [(TVRUIRemoteViewController *)self setTraitChangeRegistration:v21];
  }

  view2 = [(TVRUIRemoteViewController *)self view];
  maskView = [view2 maskView];

  if (!maskView)
  {
    maskView = objc_alloc_init(MEMORY[0x277D75D18]);
    blackColor = [MEMORY[0x277D75348] blackColor];
    [maskView setBackgroundColor:blackColor];

    view3 = [(TVRUIRemoteViewController *)self view];
    [view3 setMaskView:maskView];
  }

  view4 = [(TVRUIRemoteViewController *)self view];
  [view4 bounds];
  [maskView setFrame:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRUIRemoteViewController viewDidAppear:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v9 viewDidAppear:appearCopy];
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(TVRUIRemoteViewController *)self startConnections];
  }

  [(TVRUIRemoteViewController *)self _installTapToRadarButton];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_connectionServiceDidInvalidate_ name:*MEMORY[0x277D6C578] object:0];
}

- (void)viewWillLayoutSubviews
{
  v124 = *MEMORY[0x277D85DE8];
  v121.receiver = self;
  v121.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v121 viewWillLayoutSubviews];
  view = [(TVRUIRemoteViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  rect = v8;
  v10 = v9;

  backgroundView = [(TVRUIRemoteViewController *)self backgroundView];

  if (backgroundView)
  {
    styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
    [styleProvider rootBackgroundInsets];
    v14 = v5 + v13;
    v16 = v7 + v15;
    v18 = rect - (v13 + v17);
    v20 = v10 - (v15 + v19);
    backgroundView2 = [(TVRUIRemoteViewController *)self backgroundView];
    [backgroundView2 setFrame:{v14, v16, v18, v20}];
  }

  styleProvider2 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider2 deviceSafeAreaInsetTop];
  v24 = v23;

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (devicePickerViewController)
  {
    devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    view2 = [devicePickerViewController2 view];
    [view2 setFrame:{0.0, v24, rect, v10 - v24}];

    v29 = _TVRUIViewControllerLog(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v125.origin.x = 0.0;
      v125.origin.y = v24;
      v125.size.width = rect;
      v125.size.height = v10 - v24;
      v30 = NSStringFromCGRect(v125);
      *buf = 138412290;
      v123 = v30;
      _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Setup device picker frame %@", buf, 0xCu);
    }
  }

  devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  isDevicePickerShowing = [devicePickerViewController3 isDevicePickerShowing];

  devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [(TVRUIRemoteViewController *)self _layoutTouchpadExpanded:(devicePickerViewController4 != 0) & isDevicePickerShowing];

  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  view3 = [touchpadViewController view];
  [view3 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  styleProvider3 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider3 primaryButtonSize];
  v46 = v45;

  styleProvider4 = [(TVRUIRemoteViewController *)self styleProvider];
  LODWORD(view3) = [styleProvider4 isPad];

  if (view3)
  {
    v126.origin.x = v37;
    v126.origin.y = v39;
    v126.size.width = v41;
    v126.size.height = v43;
    v48 = v10 - CGRectGetMaxY(v126);
    v49 = v46;
    v50 = v48 - v46;
    v127.origin.x = v37;
    v127.origin.y = v39;
    v127.size.width = v41;
    v127.size.height = v43;
    v51 = CGRectGetMaxY(v127) + v50 * 0.5 + -6.0;
  }

  else
  {
    styleProvider5 = [(TVRUIRemoteViewController *)self styleProvider];
    [styleProvider5 deviceListRowHeight];
    v54 = v24 + v53;

    v128.origin.x = v37;
    v128.origin.y = v39;
    v128.size.width = v41;
    v128.size.height = v43;
    MinY = CGRectGetMinY(v128);
    if (isDevicePickerShowing)
    {
      devicePickerViewController5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [devicePickerViewController5 _effectiveContentHeight];
      MinY = MinY - v57;
    }

    v129.origin.x = v37;
    v129.origin.y = v39;
    v129.size.width = v41;
    v129.size.height = v43;
    v51 = CGRectGetMaxY(v129) + MinY - v54;
    v49 = v46;
  }

  controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
  view4 = [controlPanelViewController view];
  [view4 setFrame:{0.0, v51, rect, v49}];

  styleProvider6 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider6 mediaControlsViewHeight];
  v62 = v61;

  v130.origin.x = v37;
  v130.origin.y = v39;
  v130.size.width = v41;
  v130.size.height = v43;
  v63 = CGRectGetMaxY(v130) - v62 + -6.0;
  styleProvider7 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider7 touchpadInsets];
  v66 = v65;

  mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  view5 = [mediaControlsViewController view];
  [view5 setFrame:{v66, v63, v41, v62}];

  dockController = [(TVRUIRemoteViewController *)self dockController];
  dockViewController = [dockController dockViewController];

  dockController2 = [(TVRUIRemoteViewController *)self dockController];
  layoutManager = [dockController2 layoutManager];

  v73 = +[TVRUIFeatures isDockEnabled]& (isDevicePickerShowing ^ 1);
  [layoutManager updateWithTouchpadFrame:v73 controlPanelFrame:v37 placement:{v39, v41, v43, 0.0, v119, rect, v49}];
  if (([layoutManager isReordering] & 1) == 0)
  {
    [layoutManager effectiveDockFrame];
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    view6 = [dockViewController view];
    [view6 setFrame:{v75, v77, v79, v81}];
  }

  if (v73)
  {
    [layoutManager effectiveTouchpadFrame];
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    touchpadViewController2 = [(TVRUIRemoteViewController *)self touchpadViewController];
    view7 = [touchpadViewController2 view];
    [view7 setFrame:{v84, v86, v88, v90}];

    [layoutManager effectiveControlPanelFrame];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    controlPanelViewController2 = [(TVRUIRemoteViewController *)self controlPanelViewController];
    view8 = [controlPanelViewController2 view];
    [view8 setFrame:{v94, v96, v98, v100}];
  }

  touchpadViewController3 = [(TVRUIRemoteViewController *)self touchpadViewController];
  view9 = [touchpadViewController3 view];
  [view9 frame];
  v106 = v105;
  v108 = v107;

  view10 = [(TVRUIRemoteViewController *)self view];
  [view10 bounds];
  v111 = v110;
  styleProvider8 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider8 widthForMessagesView];
  v114 = (v111 - v113) * 0.5;

  styleProvider9 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider9 widthForMessagesView];
  v117 = v116;

  messageView = [(TVRUIRemoteViewController *)self messageView];
  [messageView setFrame:{v114, v106, v117, v108}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v21.receiver = self;
  v21.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  isPad = [styleProvider isPad];

  if (isPad)
  {
    view = [(TVRUIRemoteViewController *)self view];
    superview = [view superview];
    [superview bounds];
    v13 = v12;
    v15 = v14;

    if (width > height != v13 > v15)
    {
      nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
      currentModalContext = [nowPlayingController currentModalContext];

      if (currentModalContext)
      {
        nowPlayingController2 = [(TVRUIRemoteViewController *)self nowPlayingController];
        [nowPlayingController2 dismissModalUI];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __80__TVRUIRemoteViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v19[3] = &unk_279D88D10;
        v20 = 1;
        v19[4] = self;
        v19[5] = currentModalContext;
        [coordinatorCopy animateAlongsideTransition:&__block_literal_global_17 completion:v19];
      }
    }
  }
}

void __80__TVRUIRemoteViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) nowPlayingController];
    [v3 presentModalContext:*(a1 + 40) animated:0];
  }
}

- (void)_layoutTouchpadExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider touchpadInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  styleProvider2 = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider2 deviceListRowHeight];
  v14 = v13;

  styleProvider3 = [(TVRUIRemoteViewController *)self styleProvider];
  isPad = [styleProvider3 isPad];

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  if (isPad)
  {
    if (devicePickerViewController)
    {
      devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      view = [devicePickerViewController2 view];
      [view frame];
      v21 = v14 + v20 + 22.0;
    }

    else
    {
      devicePickerViewController2 = [(TVRUIRemoteViewController *)self view];
      [devicePickerViewController2 safeAreaInsets];
      v21 = v7 + v25;
    }
  }

  else
  {
    if (devicePickerViewController)
    {
      devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      view2 = [devicePickerViewController3 view];
      [view2 frame];
      v24 = v14 + CGRectGetMinY(v74);
    }

    else
    {
      devicePickerViewController3 = [(TVRUIRemoteViewController *)self view];
      [devicePickerViewController3 safeAreaInsets];
      v24 = v7 + v26;
    }

    v21 = v24 + 10.0;
    if (SBUIIsSystemApertureEnabled())
    {
      v21 = v21 + 10.0;
    }
  }

  v27 = MGGetProductType();
  if (v27 > 2159747552)
  {
    if (v27 == 2159747553)
    {
      goto LABEL_18;
    }

    if (v27 != 3885279870)
    {
      goto LABEL_20;
    }

LABEL_17:
    v28 = 8.0;
LABEL_19:
    v21 = v21 + v28;
    goto LABEL_20;
  }

  if (v27 == 1060988941)
  {
    goto LABEL_17;
  }

  if (v27 == 2078329141)
  {
LABEL_18:
    v28 = 10.0;
    goto LABEL_19;
  }

LABEL_20:
  if (expandedCopy)
  {
    devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController4 _effectiveContentHeight];
    v31 = v30;

    devicePickerViewController5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController5 _calculatedContentHeight];
    v34 = v33;
    devicePickerViewController6 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController6 _effectiveContentHeight];
    v37 = v36;

    if (v34 > v37)
    {
      blackGradientView = [(TVRUIRemoteViewController *)self blackGradientView];
      [blackGradientView setAlpha:1.0];
    }

    v21 = v21 + v31;
    styleProvider4 = [(TVRUIRemoteViewController *)self styleProvider];
    [styleProvider4 touchpadHeight];
    v41 = v40;
    devicePickerViewController7 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController7 _effectiveContentHeight];
    v44 = v41 - v43;
  }

  else
  {
    styleProvider5 = [(TVRUIRemoteViewController *)self styleProvider];
    [styleProvider5 touchpadCornerRadius];
    v47 = v46;
    touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
    view3 = [touchpadViewController view];
    [view3 _setContinuousCornerRadius:v47];

    blackGradientView2 = [(TVRUIRemoteViewController *)self blackGradientView];
    [blackGradientView2 setAlpha:0.0];

    styleProvider4 = [(TVRUIRemoteViewController *)self styleProvider];
    [styleProvider4 touchpadHeight];
    v44 = v51;
  }

  styleProvider6 = [(TVRUIRemoteViewController *)self styleProvider];
  if ([styleProvider6 isPad])
  {
    view4 = [(TVRUIRemoteViewController *)self view];
    window = [view4 window];
    windowScene = [window windowScene];
    effectiveGeometry = [windowScene effectiveGeometry];
    v57 = [effectiveGeometry interfaceOrientation] - 3;

    if (v57 < 2)
    {
      v44 = v44 + -40.0;
    }
  }

  else
  {
  }

  view5 = [(TVRUIRemoteViewController *)self view];
  [view5 bounds];
  v60 = v59;

  touchpadViewController2 = [(TVRUIRemoteViewController *)self touchpadViewController];
  view6 = [touchpadViewController2 view];
  [view6 setFrame:{v9, v21, v60 - v9 - v11, v44}];

  if (!+[TVRUIFeatures isSolariumEnabled])
  {
    styleProvider7 = [(TVRUIRemoteViewController *)self styleProvider];
    [styleProvider7 deviceListRowHeight];
    v65 = v64;

    blackGradientView3 = [(TVRUIRemoteViewController *)self blackGradientView];
    [blackGradientView3 setFrame:{0.0, v21 - v65, v60, v65}];

    blackGradientView4 = [(TVRUIRemoteViewController *)self blackGradientView];
    layer = [blackGradientView4 layer];
    sublayers = [layer sublayers];
    v70 = [sublayers objectAtIndexedSubscript:0];
    [v70 setFrame:{0.0, 0.0, v60, v65}];

    view7 = [(TVRUIRemoteViewController *)self view];
    blackGradientView5 = [(TVRUIRemoteViewController *)self blackGradientView];
    [view7 bringSubviewToFront:blackGradientView5];
  }
}

- (void)_createBlackGradientView
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (!+[TVRUIFeatures isSolariumEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:clearColor];

    [v3 setUserInteractionEnabled:0];
    layer = [MEMORY[0x277CD9EB0] layer];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v11[0] = [clearColor2 CGColor];
    v11[1] = [blackColor CGColor];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [layer setColors:v8];
    layer2 = [v3 layer];
    [layer2 insertSublayer:layer atIndex:0];

    view = [(TVRUIRemoteViewController *)self view];
    [view addSubview:v3];

    [(TVRUIRemoteViewController *)self setBlackGradientView:v3];
  }
}

- (void)setIsInSecureWindow:(BOOL)window
{
  if (self->_isInSecureWindow != window)
  {
    self->_isInSecureWindow = window;
    [(TVRUIRemoteViewController *)self _updateSecureWindowState];
  }
}

- (void)_enableTVRemoteOnLockscreen:(BOOL)lockscreen
{
  lockscreenCopy = lockscreen;
  v18 = *MEMORY[0x277D85DE8];
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    v8 = _TVRUIViewControllerLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (lockscreenCopy)
      {
        v9 = @"enable";
      }

      else
      {
        v9 = @"disable";
      }

      activeDeviceIdentifier = [(TVRUIRemoteViewController *)self activeDeviceIdentifier];
      v14 = 138412546;
      v15 = v9;
      v16 = 2114;
      v17 = activeDeviceIdentifier;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Requesting tvremoted to %@ lock screen assertion for device: %{public}@", &v14, 0x16u);
    }

    mEMORY[0x277D6C560] = [MEMORY[0x277D6C560] sharedInstance];
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    identifier = [activeDevice identifier];
    [mEMORY[0x277D6C560] enableTVRemoteOnLockscreen:lockscreenCopy forDeviceIdentifier:identifier];
  }
}

- (void)_updateSecureWindowState
{
  isInSecureWindow = [(TVRUIRemoteViewController *)self isInSecureWindow];
  if (isInSecureWindow && ([(TVRUIRemoteViewController *)self activeDevice], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = _TVRUIViewControllerLog(isInSecureWindow);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewController is in a secure window", buf, 2u);
    }

    v6 = 1;
  }

  else
  {
    v5 = _TVRUIViewControllerLog(isInSecureWindow);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewController is NOT in a secure window", v7, 2u);
    }

    v6 = 0;
  }

  [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:v6];
}

- (BOOL)shouldDisconnectAndStopConnections
{
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    systemMonitor = [(TVRUIRemoteViewController *)self systemMonitor];
    if ([systemMonitor screenLocked])
    {
      isInSecureWindow = [(TVRUIRemoteViewController *)self isInSecureWindow];

      if (isInSecureWindow)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRUIRemoteViewController viewWillDisappear:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  shouldDisconnectAndStopConnections = [(TVRUIRemoteViewController *)self shouldDisconnectAndStopConnections];
  if (shouldDisconnectAndStopConnections)
  {
    v7 = _TVRUIViewControllerLog(shouldDisconnectAndStopConnections);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v11) = disappearCopy;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "tvruiremoteviewcontroller will disappear animated=%d", buf, 8u);
    }

    if (disappearCopy)
    {
      [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
    }

    else
    {
      [(TVRUIRemoteViewController *)self _disconnectSystemInitiated];
    }

    [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:disappearCopy completion:0];
    [(TVRUIRemoteViewController *)self stopConnections];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D6C578] object:0];

  v9.receiver = self;
  v9.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v9 viewWillDisappear:disappearCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (CGSize)preferredContentSize
{
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  [styleProvider remoteSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)backlightLuminanceDidChange
{
  v11 = *MEMORY[0x277D85DE8];
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  self->_isInReducedBacklightMode = [traitCollection _backlightLuminance] == 1;

  v5 = _TVRUIViewControllerLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    traitCollection2 = [(TVRUIRemoteViewController *)self traitCollection];
    v7 = 134218240;
    _backlightLuminance = [traitCollection2 _backlightLuminance];
    v9 = 1024;
    isInReducedBacklightMode = [(TVRUIRemoteViewController *)self isInReducedBacklightMode];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Backlight Luminance: %ld in AOD: %d", &v7, 0x12u);
  }

  [(TVRUIRemoteViewController *)self _updateControlsAppearance];
}

- (void)dealloc
{
  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  traitChangeRegistration = [(TVRUIRemoteViewController *)self traitChangeRegistration];
  [(TVRUIRemoteViewController *)self unregisterForTraitChanges:traitChangeRegistration];

  authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (authenticatingDevice)
  {
    authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [authenticatingDevice2 disconnectUserInitiated];
  }

  [(TVRUIRemoteViewController *)self setFindingSession:0];
  v6.receiver = self;
  v6.super_class = TVRUIRemoteViewController;
  [(TVRUIRemoteViewController *)&v6 dealloc];
}

- (void)_setupNowPlayingController
{
  v3 = [TVRUINowPlayingController controllerWithHostingViewController:self];
  nowPlayingController = self->_nowPlayingController;
  self->_nowPlayingController = v3;

  objc_initWeak(&location, self);
  playerCommandHandler = [(TVRUIRemoteViewController *)self playerCommandHandler];
  [(TVRUINowPlayingController *)self->_nowPlayingController setCommandHandler:playerCommandHandler];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke;
  v8[3] = &unk_279D88D38;
  objc_copyWeak(&v9, &location);
  [(TVRUINowPlayingController *)self->_nowPlayingController setCapellaInfoDidChangeHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke_2;
  v6[3] = &unk_279D87F18;
  objc_copyWeak(&v7, &location);
  [(TVRUINowPlayingController *)self->_nowPlayingController setLayoutHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateInfoButtonState];
    WeakRetained = v2;
  }
}

void __55__TVRUIRemoteViewController__setupNowPlayingController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsLayout];

    v3 = [v4 view];
    [v3 layoutIfNeeded];

    WeakRetained = v4;
  }
}

- (void)_setupChildViewControllers
{
  dockController = [(TVRUIRemoteViewController *)self dockController];
  dockViewController = [dockController dockViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:dockViewController];

  [(TVRUIRemoteViewController *)self bs_addChildViewController:self->_touchpadViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:self->_controlPanelViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:self->_mediaControlsViewController];
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [(TVRUIRemoteViewController *)self bs_addChildViewController:devicePickerViewController];

  view = [(TVRUIRemoteViewController *)self view];
  messageView = [(TVRUIRemoteViewController *)self messageView];
  [view addSubview:messageView];

  v9 = _TVRUIViewControllerLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Setup remote child controllers and message view", v12, 2u);
  }

  view2 = [(TVRUIRemoteViewController *)self view];
  [view2 setNeedsLayout];

  view3 = [(TVRUIRemoteViewController *)self view];
  [view3 layoutIfNeeded];
}

- (void)_setupDevicePickerController
{
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (!devicePickerViewController)
  {
    v4 = objc_alloc_init(TVRUIDevicePickerViewController);
    [(TVRUIRemoteViewController *)self setDevicePickerViewController:v4];

    styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
    devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController2 setStyleProvider:styleProvider];

    devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController3 setDelegate:self];

    devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController4 setButtonEventDelegate:self];

    devicePickerViewController5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController5 setEnabled:1];

    playerCommandHandler = [(TVRUIRemoteViewController *)self playerCommandHandler];
    devicePickerViewController6 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController6 setPlayerCommandHandler:playerCommandHandler];

    devicePickerViewController7 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    tipSourceViewProvider = self->_tipSourceViewProvider;
    self->_tipSourceViewProvider = devicePickerViewController7;

    MEMORY[0x2821F96F8](devicePickerViewController7, tipSourceViewProvider);
  }
}

- (id)_stringForLaunchContextType:(int64_t)type
{
  switch(type)
  {
    case 1:
      result = @"controlCenter";
      break;
    case 2:
      result = @"lockscreen";
      break;
    case 3:
      result = @"mediaPlatterHome";
      break;
    case 4:
      result = @"siriShortcut";
      break;
    case 5:
      result = @"mediaPlatterControlCenter";
      break;
    case 6:
      result = @"mediaPlatterLockscreen";
      break;
    case 7:
      result = @"mediaPlatterSiri";
      break;
    case 8:
      result = @"mediaPlatter";
      break;
    case 9:
      result = @"siri";
      break;
    case 10:
      result = @"continuityKeyboard";
      break;
    case 11:
      result = @"tapToSetup";
      break;
    case 12:
      result = @"expanse";
      break;
    case 13:
      result = @"jindo";
      break;
    case 14:
      result = @"controlCenterLockscreen";
      break;
    default:
      if (type == 100)
      {
        result = @"internalDevelopment";
      }

      else
      {
        result = @"unspecified";
      }

      break;
  }

  return result;
}

- (id)playerCommandHandler
{
  playerCommandHandler = self->_playerCommandHandler;
  if (!playerCommandHandler)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke;
    v8[3] = &unk_279D88D60;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(v8);
    v5 = self->_playerCommandHandler;
    self->_playerCommandHandler = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    playerCommandHandler = self->_playerCommandHandler;
  }

  v6 = _Block_copy(playerCommandHandler);

  return v6;
}

void __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = 0;
  v6 = 6;
  switch(a2)
  {
    case 0:
      v5 = 0;
      v6 = 7;
      goto LABEL_20;
    case 1:
      v5 = 0;
      goto LABEL_12;
    case 2:
      v5 = 0;
      v6 = 5;
      goto LABEL_20;
    case 3:
      goto LABEL_20;
    case 4:
      v5 = 0;
      goto LABEL_19;
    case 5:
      v5 = 1;
      goto LABEL_12;
    case 6:
      v5 = 2;
LABEL_12:
      v6 = 14;
      goto LABEL_20;
    case 7:
      v5 = 1;
      goto LABEL_19;
    case 8:
      v5 = 2;
LABEL_19:
      v6 = 15;
      goto LABEL_20;
    case 9:
      v5 = 0;
      v6 = 31;
      goto LABEL_20;
    case 10:
      v5 = 0;
      v6 = 29;
      goto LABEL_20;
    case 11:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_2;
      block[3] = &unk_279D87C20;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], block);
      break;
    case 12:
      v5 = 0;
      v6 = 3;
      goto LABEL_20;
    case 14:
      v5 = 0;
      v6 = 9998;
LABEL_20:
      v8 = [TVRUIButtonEvent createButtonEvent:v5 buttonType:v6];
      [v4 generatedButtonEvent:v8];
      goto LABEL_21;
    case 15:
      v7 = [WeakRetained nowPlayingController];
      v8 = v7;
      v9 = 1;
      goto LABEL_16;
    case 16:
      v7 = [WeakRetained nowPlayingController];
      v8 = v7;
      v9 = 2;
LABEL_16:
      [v7 presentModalContext:v9 animated:1];
LABEL_21:

      break;
    case 17:
      [WeakRetained _toggleDock];
      break;
    default:
      break;
  }
}

void __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_2(uint64_t a1)
{
  v2 = [TVRUIButtonEvent createButtonEvent:1 buttonType:3];
  [*(a1 + 32) generatedButtonEvent:v2];
  v3 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_3;
  block[3] = &unk_279D87C20;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __49__TVRUIRemoteViewController_playerCommandHandler__block_invoke_3(uint64_t a1)
{
  v2 = [TVRUIButtonEvent createButtonEvent:2 buttonType:3];
  [*(a1 + 32) generatedButtonEvent:v2];
}

- (void)_toggleDock
{
  +[TVRUIFeatures setDockEnabled:](TVRUIFeatures, "setDockEnabled:", +[TVRUIFeatures isDockEnabled]^ 1);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__TVRUIRemoteViewController__toggleDock__block_invoke;
  v3[3] = &unk_279D87C20;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
}

void __40__TVRUIRemoteViewController__toggleDock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (id)animatorForPresentationAsAlert
{
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  v3 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);

  v4 = [[TVRUIAlertAnimationController alloc] initWithAnimationType:0 visualStyle:v3];

  return v4;
}

- (id)animatorForDismissalAsAlert
{
  traitCollection = [(TVRUIRemoteViewController *)self traitCollection];
  v3 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);

  v4 = [[TVRUIAlertAnimationController alloc] initWithAnimationType:1 visualStyle:v3];

  return v4;
}

- (void)setBackgroundCornerRadius:(double)radius
{
  backgroundView = [(TVRUIRemoteViewController *)self backgroundView];
  v7 = backgroundView;
  if (backgroundView)
  {
    [backgroundView _setContinuousCornerRadius:radius];
  }

  else
  {
    view = [(TVRUIRemoteViewController *)self view];
    [view _setContinuousCornerRadius:radius];
  }
}

- (double)backgroundCornerRadius
{
  backgroundView = [(TVRUIRemoteViewController *)self backgroundView];
  v4 = backgroundView;
  if (backgroundView)
  {
    [backgroundView _continuousCornerRadius];
    v6 = v5;
  }

  else
  {
    view = [(TVRUIRemoteViewController *)self view];
    [view _continuousCornerRadius];
    v6 = v8;
  }

  return v6;
}

- (void)startConnections
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[TVRUIRemoteViewController startConnections]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  deviceQuery = [(TVRUIRemoteViewController *)self deviceQuery];
  if (deviceQuery)
  {
    deviceQuery2 = [(TVRUIRemoteViewController *)self deviceQuery];
    hasStarted = [deviceQuery2 hasStarted];

    if ((hasStarted & 1) == 0)
    {
      v8 = _TVRUIViewControllerLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Starting device query", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self fetchPreferredDevice];
      deviceQuery3 = [(TVRUIRemoteViewController *)self deviceQuery];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __45__TVRUIRemoteViewController_startConnections__block_invoke;
      v40[3] = &unk_279D88D88;
      v40[4] = self;
      [deviceQuery3 startQuery:self completionHandler:v40];

      [(TVRUIRemoteViewController *)self performSelector:sel__showSearchingSpinnerIfNeeded withObject:0 afterDelay:2.0];
    }
  }

  sharingClient = [(TVRUIRemoteViewController *)self sharingClient];
  v11 = sharingClient == 0;

  if (v11)
  {
    v13 = objc_alloc_init(MEMORY[0x277D54C30]);
    [(TVRUIRemoteViewController *)self setSharingClient:v13];

    sharingClient2 = [(TVRUIRemoteViewController *)self sharingClient];
    [sharingClient2 activateAssertionWithIdentifier:@"com.apple.sharing.PreventContinuityKeyboard"];

    v16 = _TVRUIViewControllerLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "Activated assertion to prevent Continuity Keyboard", buf, 2u);
    }
  }

  v17 = _TVRUIViewControllerLog(v12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    *buf = 138543362;
    v42 = activeDevice;
    _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Active device: %{public}@", buf, 0xCu);
  }

  activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
  isConnected = [activeDevice2 isConnected];

  if (isConnected)
  {
    deviceConnectionStatusDelegate = [(TVRUIRemoteViewController *)self deviceConnectionStatusDelegate];
    [deviceConnectionStatusDelegate deviceDidConnect];
  }

  activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice3)
  {
    activeDevice4 = [(TVRUIRemoteViewController *)self activeDevice];
    if ([activeDevice4 isConnecting])
    {
    }

    else
    {
      activeDevice5 = [(TVRUIRemoteViewController *)self activeDevice];
      isConnected2 = [activeDevice5 isConnected];

      if (isConnected2)
      {
        goto LABEL_22;
      }

      v26 = [(TVRUIRemoteViewController *)self _connectionContextFromLaunchContext:[(TVRUIRemoteViewController *)self launchContext]];
      activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
      [(TVRUIRemoteViewController *)self _connectToDevice:activeDevice3 connectionContext:v26];
    }
  }

LABEL_22:
  [(TVRUIRemoteViewController *)self _setupNetworkObserverIfNeeded];
  systemMonitor = [(TVRUIRemoteViewController *)self systemMonitor];
  v28 = systemMonitor == 0;

  if (v28)
  {
    v29 = objc_alloc_init(MEMORY[0x277D02938]);
    [(TVRUIRemoteViewController *)self setSystemMonitor:v29];

    objc_initWeak(buf, self);
    systemMonitor2 = [(TVRUIRemoteViewController *)self systemMonitor];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __45__TVRUIRemoteViewController_startConnections__block_invoke_125;
    v38 = &unk_279D87F18;
    objc_copyWeak(&v39, buf);
    [systemMonitor2 setScreenLockedChangedHandler:&v35];

    v31 = [(TVRUIRemoteViewController *)self systemMonitor:v35];
    [v31 activateWithCompletion:&__block_literal_global_134];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  supportsSiri = [(TVRUIRemoteViewController *)self supportsSiri];
  if (supportsSiri)
  {
    v33 = _TVRUIViewControllerLog(supportsSiri);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v33, OS_LOG_TYPE_DEFAULT, "Registering for Siri Events", buf, 2u);
    }

    siriManager = [(TVRUIRemoteViewController *)self siriManager];
    [siriManager registerForSiriEvents];
  }

  [(TVRUIRemoteViewController *)self _initSessionStatistics];
}

id *__45__TVRUIRemoteViewController_startConnections__block_invoke(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _startDeviceQueryThresholdTimer];
  }

  return result;
}

void __45__TVRUIRemoteViewController_startConnections__block_invoke_125(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained systemMonitor];
    v4 = [v3 screenLocked];

    v6 = _TVRUIViewControllerLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"unlocked";
      if (v4)
      {
        v7 = @"locked";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Screen is now %@", &v9, 0xCu);
    }

    if (v4)
    {
      v8 = [v2 nowPlayingController];
      [v8 dismissModalUI];
    }
  }
}

void __45__TVRUIRemoteViewController_startConnections__block_invoke_132(uint64_t a1)
{
  v1 = _TVRUIViewControllerLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26CFEB000, v1, OS_LOG_TYPE_DEFAULT, "Screen lock monitor activated", v2, 2u);
  }
}

- (void)stopConnections
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315138;
    v33 = "[TVRUIRemoteViewController stopConnections]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v32, 0xCu);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    v6 = _TVRUIViewControllerLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI has active device. Calling disconnect on device", &v32, 2u);
    }

    systemMonitor = [(TVRUIRemoteViewController *)self systemMonitor];
    screenLocked = [systemMonitor screenLocked];

    if (screenLocked)
    {
      [(TVRUIRemoteViewController *)self _disconnectSystemInitiated];
    }

    else
    {
      [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
    }

    [(TVRUIRemoteViewController *)self _updateSecureWindowState];
  }

  authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (authenticatingDevice)
  {
    v11 = _TVRUIViewControllerLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Found an authenticating device. Requesting disconnect", &v32, 2u);
    }

    authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [authenticatingDevice2 disconnectUserInitiated];
  }

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (devicePickerViewController)
  {
    devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController2 resetSelectedDevice];
  }

  deviceQuery = [(TVRUIRemoteViewController *)self deviceQuery];

  if (deviceQuery)
  {
    v17 = _TVRUIViewControllerLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Stopping device query", &v32, 2u);
    }

    deviceQuery2 = [(TVRUIRemoteViewController *)self deviceQuery];
    [deviceQuery2 stop];

    [(TVRUIRemoteViewController *)self setDeviceQuery:0];
    [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  }

  sharingClient = [(TVRUIRemoteViewController *)self sharingClient];

  if (sharingClient)
  {
    sharingClient2 = [(TVRUIRemoteViewController *)self sharingClient];
    [sharingClient2 invalidate];

    v21 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setSharingClient:0]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "Invalidated sharing client", &v32, 2u);
    }
  }

  systemMonitor2 = [(TVRUIRemoteViewController *)self systemMonitor];

  if (systemMonitor2)
  {
    systemMonitor3 = [(TVRUIRemoteViewController *)self systemMonitor];
    [systemMonitor3 invalidate];

    v24 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setSystemMonitor:0]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_26CFEB000, v24, OS_LOG_TYPE_DEFAULT, "system monitor for screen locked state invalidated", &v32, 2u);
    }
  }

  networkObserver = [(TVRUIRemoteViewController *)self networkObserver];

  if (networkObserver)
  {
    [(TVRUIRemoteViewController *)self setNetworkObserver:0];
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:0];
  siriManager = [(TVRUIRemoteViewController *)self siriManager];
  [siriManager unregisterForSiriEvents];

  devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController3 setDevices:MEMORY[0x277CBEBF8]];

  if (+[TVRUIFeatures corianderEnabled])
  {
    devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController4 setSuggestedDevices:MEMORY[0x277CBEBF8]];
  }

  devicePickerViewController5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController5 collapseDeviceList];

  [(TVRUIRemoteViewController *)self setConfigured:0];
  mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [mediaControlsViewController setEnabled:0];

  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  [nowPlayingController dismissModalUI];

  [(TVRUIRemoteViewController *)self _logSessionStatistics];
}

- (void)_disconnectUserInitiatedAndModifyLockscreenAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [(TVRUIRemoteViewController *)self _stopFindingSessionForDevice:activeDevice2];

    if (assertionCopy)
    {
      [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:0];
    }

    activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice3 disconnectUserInitiated];

    [(TVRUIRemoteViewController *)self _resetActiveDevice];
    [(TVRUIRemoteViewController *)self _enableMediaControls:0 animated:0];
    v9 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self _enableLiveTVButtons:0 animated:0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "#tvrlock - user initiated disconnect called on active device";
      v11 = &v13;
LABEL_8:
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }
  }

  else
  {
    v9 = _TVRUIViewControllerLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v10 = "#tvrlock - user initiated disconnect, but device is NOT ACTIVE";
      v11 = &v12;
      goto LABEL_8;
    }
  }
}

- (void)_disconnectSystemInitiated
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [(TVRUIRemoteViewController *)self _stopFindingSessionForDevice:activeDevice2];

    [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:0];
    activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice3 disconnectSystemInitiated];

    [(TVRUIRemoteViewController *)self _resetActiveDevice];
    [(TVRUIRemoteViewController *)self _enableMediaControls:0 animated:0];
    v7 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self _enableLiveTVButtons:0 animated:0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "#tvrlock - system initiated disconnect called on active device";
      v9 = &v11;
LABEL_6:
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = _TVRUIViewControllerLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "#tvrlock - system initiated disconnect, but device is NOT ACTIVE";
      v9 = &v10;
      goto LABEL_6;
    }
  }
}

- (void)_resetActiveDevice
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    v5 = _TVRUIViewControllerLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Resetting active device", v8, 2u);
    }

    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice2 setDelegate:0];

    [(TVRUIRemoteViewController *)self setActiveDevice:0];
  }

  [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:0];
  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  [nowPlayingController setNowPlayingInfo:0];
}

- (void)_initSessionStatistics
{
  v3 = objc_alloc_init(MEMORY[0x277D6C528]);
  [(TVRUIRemoteViewController *)self setSessionData:v3];

  date = [MEMORY[0x277CBEAA8] date];
  sessionData = [(TVRUIRemoteViewController *)self sessionData];
  [sessionData setSessionStartTime:date];

  v7 = _TVRUIViewControllerLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Initialized session stats", v8, 2u);
  }
}

- (void)_logSessionStatistics
{
  sessionData = [(TVRUIRemoteViewController *)self sessionData];

  if (sessionData)
  {
    launchContextDesc = [(TVRUIRemoteViewController *)self launchContextDesc];
    sessionData2 = [(TVRUIRemoteViewController *)self sessionData];
    [sessionData2 setLaunchContextDesc:launchContextDesc];

    mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
    sessionData3 = [(TVRUIRemoteViewController *)self sessionData];
    [mEMORY[0x277D6C4B8] logSessionStatistics:sessionData3];

    v8 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setSessionData:0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Logged session stats", v9, 2u);
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  v10 = *MEMORY[0x277D85DE8];
  object = [activate object];
  v5 = _TVRUIViewControllerLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TVRUIRemoteViewController sceneDidActivate:]";
    v8 = 2114;
    v9 = object;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s - %{public}@", &v6, 0x16u);
  }

  [(TVRUIRemoteViewController *)self _activate];
}

- (void)sceneWillDeactivate:(id)deactivate
{
  v18 = *MEMORY[0x277D85DE8];
  object = [deactivate object];
  v5 = _TVRUIViewControllerLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[TVRUIRemoteViewController sceneWillDeactivate:]";
    v16 = 2114;
    v17 = object;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s - %{public}@", &v14, 0x16u);
  }

  view = [(TVRUIRemoteViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    v10 = _TVRUIViewControllerLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      view2 = [(TVRUIRemoteViewController *)self view];
      window2 = [view2 window];
      windowScene2 = [window2 windowScene];
      v14 = 138412546;
      v15 = object;
      v16 = 2112;
      v17 = windowScene2;
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Deactivating connection - notification scene object: %@ current scene: %@", &v14, 0x16u);
    }

    [(TVRUIRemoteViewController *)self _deactivate];
  }
}

- (void)_activate
{
  [(TVRUIRemoteViewController *)self startConnections];
  if ([(TVRUIRemoteViewController *)self isInSecureWindow])
  {
    presentedViewController = [(TVRUIRemoteViewController *)self presentedViewController];
    if (presentedViewController)
    {
      v4 = presentedViewController;
      presentedViewController2 = [(TVRUIRemoteViewController *)self presentedViewController];
      keyboardController = [(TVRUIRemoteViewController *)self keyboardController];

      if (presentedViewController2 == keyboardController)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __38__TVRUIRemoteViewController__activate__block_invoke;
        v7[3] = &unk_279D87C20;
        v7[4] = self;
        [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:0 completion:v7];
      }
    }
  }
}

uint64_t __38__TVRUIRemoteViewController__activate__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TVRUIKeyboardLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) presentedViewController];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Relaunching keyboard. presentedViewController:%@", &v5, 0xCu);
  }

  return [*(a1 + 32) keyboardRequested];
}

- (void)_deactivate
{
  siriManager = [(TVRUIRemoteViewController *)self siriManager];
  [siriManager unregisterForSiriEvents];
}

- (void)sceneDidEnterBackground:(id)background
{
  v22 = *MEMORY[0x277D85DE8];
  object = [background object];
  v5 = _TVRUIViewControllerLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    view = [(TVRUIRemoteViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    v14 = 136315906;
    v15 = "[TVRUIRemoteViewController sceneDidEnterBackground:]";
    v16 = 2114;
    v17 = object;
    v18 = 2114;
    v19 = windowScene;
    v20 = 1024;
    isInSecureWindow = [(TVRUIRemoteViewController *)self isInSecureWindow];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s - scene: %{public}@ current window scene: %{public}@ secureWindow: %{BOOL}d", &v14, 0x26u);
  }

  isInSecureWindow2 = [(TVRUIRemoteViewController *)self isInSecureWindow];
  if ((isInSecureWindow2 & 1) == 0 && (-[TVRUIRemoteViewController view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "windowScene"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, object == v12))
  {
    [(TVRUIRemoteViewController *)self _disconnect];
  }

  else
  {
    v13 = _TVRUIViewControllerLog(isInSecureWindow2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Not disconnecting the connection the TV as we are transitioning to a secure window", &v14, 2u);
    }
  }
}

- (void)_disconnect
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[TVRUIRemoteViewController _disconnect]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v26, 0xCu);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    v6 = _TVRUIViewControllerLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI has active device. Calling disconnect on device", &v26, 2u);
    }

    [(TVRUIRemoteViewController *)self _disconnectUserInitiated];
  }

  authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (authenticatingDevice)
  {
    v9 = _TVRUIViewControllerLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Found an authenticating device. Requesting disconnect", &v26, 2u);
    }

    authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [authenticatingDevice2 disconnectUserInitiated];
  }

  deviceQuery = [(TVRUIRemoteViewController *)self deviceQuery];
  hasStarted = [deviceQuery hasStarted];

  if (hasStarted)
  {
    v14 = _TVRUIViewControllerLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Stopping device query", &v26, 2u);
    }

    deviceQuery2 = [(TVRUIRemoteViewController *)self deviceQuery];
    [deviceQuery2 stop];

    [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  }

  [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:0 completion:0];
  sharingClient = [(TVRUIRemoteViewController *)self sharingClient];

  if (sharingClient)
  {
    sharingClient2 = [(TVRUIRemoteViewController *)self sharingClient];
    [sharingClient2 invalidate];

    v18 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setSharingClient:0]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Invalidated sharing client", &v26, 2u);
    }
  }

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (devicePickerViewController)
  {
    devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController2 resetSelectedDevice];

    if (+[TVRUIFeatures corianderEnabled])
    {
      devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [devicePickerViewController3 setSuggestedDevices:MEMORY[0x277CBEBF8]];
    }

    devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController4 setDevices:MEMORY[0x277CBEBF8]];

    devicePickerViewController5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController5 collapseDeviceList];
  }

  networkObserver = [(TVRUIRemoteViewController *)self networkObserver];

  if (networkObserver)
  {
    [(TVRUIRemoteViewController *)self setNetworkObserver:0];
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:0];
  [(TVRUIRemoteViewController *)self _toggleControlAvailability];
  siriManager = [(TVRUIRemoteViewController *)self siriManager];
  [siriManager unregisterForSiriEvents];

  [(TVRUIRemoteViewController *)self setConfigured:0];
  [(TVRUIRemoteViewController *)self _logSessionStatistics];
}

- (void)fetchPreferredDevice
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6C520] = [MEMORY[0x277D6C520] sharedInstance];
  preferredDevice = [mEMORY[0x277D6C520] preferredDevice];
  [(TVRUIRemoteViewController *)self setPreferredDevice:preferredDevice];

  preferredDevice2 = [(TVRUIRemoteViewController *)self preferredDevice];

  v7 = _TVRUIViewControllerLog(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (preferredDevice2)
  {
    if (v8)
    {
      preferredDevice3 = [(TVRUIRemoteViewController *)self preferredDevice];
      v10 = 138412290;
      v11 = preferredDevice3;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Found preferredDevice %@", &v10, 0xCu);
    }
  }

  else if (v8)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "No preferredDevice found", &v10, 2u);
  }
}

- (void)_connectToDevice:(id)device connectionContext:(int64_t)context
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TVRUIRemoteViewController *)self _stringForConnectionContext:context];
    v16 = 138543618;
    v17 = deviceCopy;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Requesting connect to device=%{public}@ with connectionContext:%@", &v16, 0x16u);
  }

  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner];
  [(TVRUIRemoteViewController *)self performSelector:sel__showConnectingSpinner withObject:0 afterDelay:0.7];
  [deviceCopy setDelegate:self];
  [deviceCopy connectWithConnectionContext:context];
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  if (devicePickerViewController)
  {
    v10 = devicePickerViewController;
    name = [deviceCopy name];

    if (name)
    {
      devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [devicePickerViewController2 setDevice:deviceCopy];

      devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      isDevicePickerShowing = [devicePickerViewController3 isDevicePickerShowing];

      if (isDevicePickerShowing)
      {
        devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
        [devicePickerViewController4 collapseDeviceList];
      }
    }
  }
}

- (void)_updateControlsAppearance
{
  isInReducedBacklightMode = [(TVRUIRemoteViewController *)self isInReducedBacklightMode];
  if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
  {
    devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController collapseDeviceList];
  }

  devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  isDevicePickerShowing = [devicePickerViewController2 isDevicePickerShowing];

  if ((isDevicePickerShowing & 1) == 0)
  {
    devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController3 setEnabled:!isInReducedBacklightMode];
  }

  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setEnabled:!isInReducedBacklightMode];

  mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [mediaControlsViewController setEnabled:!isInReducedBacklightMode];

  [(TVRUIRemoteViewController *)self _toggleControlAvailability];
  if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
  {
    hasPresentedContent = [(TVRUIRemoteViewController *)self hasPresentedContent];
    if (hasPresentedContent)
    {
      v11 = _TVRUIViewControllerLog(hasPresentedContent);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Dismissing presented content", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:0 completion:0];
    }
  }

  else if ([(TVRUIRemoteViewController *)self isEditingSessionActive])
  {
    keyboardController = [(TVRUIRemoteViewController *)self keyboardController];

    if (!keyboardController)
    {
      v14 = _TVRUIViewControllerLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Launching keyboard view controller", v16, 2u);
      }

      [(TVRUIRemoteViewController *)self keyboardRequested];
    }
  }

  if ([(TVRUIRemoteViewController *)self isInReducedBacklightMode])
  {
    nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
    [nowPlayingController dismissModalUI];
  }
}

- (void)_toggleControlAvailability
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    identifier = [activeDevice identifier];
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    v11 = 138543618;
    v12 = identifier;
    v13 = 1024;
    isConnected = [activeDevice2 isConnected];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Toggling control panel controls. active device %{public}@. isConnected %d", &v11, 0x12u);
  }

  activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice3)
  {
    activeDevice4 = [(TVRUIRemoteViewController *)self activeDevice];
    isConnected2 = [activeDevice4 isConnected];

    if (isConnected2)
    {
      activeDevice3 = [(TVRUIRemoteViewController *)self isInReducedBacklightMode]^ 1;
    }

    else
    {
      activeDevice3 = 0;
    }
  }

  controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [controlPanelViewController setEnabled:activeDevice3];
}

- (void)_startDeviceQueryThresholdTimer
{
  objc_initWeak(&location, self);
  if (self->_deviceQueryThresholdBlock)
  {
    deviceQueryThresholdReached = [(TVRUIRemoteViewController *)self deviceQueryThresholdReached];
    if (deviceQueryThresholdReached)
    {
      v4 = _TVRUIViewControllerLog(deviceQueryThresholdReached);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Unable to cancel deviceQueryThresholdTimer as the query threshold was reached", buf, 2u);
      }
    }

    else
    {
      [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TVRUIRemoteViewController__startDeviceQueryThresholdTimer__block_invoke;
  block[3] = &unk_279D87F18;
  objc_copyWeak(&v17, &location);
  v5 = dispatch_block_create(0, block);
  deviceQueryThresholdBlock = self->_deviceQueryThresholdBlock;
  self->_deviceQueryThresholdBlock = v5;

  mEMORY[0x277D6C520] = [MEMORY[0x277D6C520] sharedInstance];
  [mEMORY[0x277D6C520] preferredDeviceSearchTimeout];
  v9 = v8;

  v11 = _TVRUIViewControllerLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Started deviceQueryThresholdTimer", buf, 2u);
  }

  v12 = dispatch_time(0, (v9 * 1000000000.0));
  v13 = MEMORY[0x277D85CD0];
  deviceQueryThresholdBlock = [(TVRUIRemoteViewController *)self deviceQueryThresholdBlock];
  v15 = MEMORY[0x277D85CD0];
  dispatch_after(v12, MEMORY[0x277D85CD0], deviceQueryThresholdBlock);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __60__TVRUIRemoteViewController__startDeviceQueryThresholdTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _TVRUIViewControllerLog([WeakRetained setDeviceQueryThresholdReached:1]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Query threshold reached", v7, 2u);
    }

    [v2 _connectToMostRelevantDevice];
    v4 = [MEMORY[0x277D6C4B8] sharedInstance];
    v5 = [v2 devicePickerViewController];
    v6 = [v5 devices];
    [v4 logDeviceQueryCount:{objc_msgSend(v6, "count")}];
  }
}

- (void)_stopDeviceQueryThresholdTimer
{
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Stopping deviceQueryThresholdTimer", v7, 2u);
  }

  deviceQueryThresholdBlock = [(TVRUIRemoteViewController *)self deviceQueryThresholdBlock];

  if (deviceQueryThresholdBlock)
  {
    deviceQueryThresholdBlock2 = [(TVRUIRemoteViewController *)self deviceQueryThresholdBlock];
    dispatch_block_cancel(deviceQueryThresholdBlock2);

    deviceQueryThresholdBlock = self->_deviceQueryThresholdBlock;
    self->_deviceQueryThresholdBlock = 0;
  }

  [(TVRUIRemoteViewController *)self setDeviceQueryThresholdReached:0];
}

- (void)_connectToMostRelevantDevice
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to connect to the most relevant device", buf, 2u);
  }

  deviceQueryThresholdReached = [(TVRUIRemoteViewController *)self deviceQueryThresholdReached];
  if ((deviceQueryThresholdReached & 1) == 0)
  {
    devices = _TVRUIViewControllerLog(deviceQueryThresholdReached);
    if (!os_log_type_enabled(devices, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "Query threshold not reached. Ignoring call";
    v18 = devices;
    v19 = 2;
LABEL_15:
    _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_28;
  }

  deviceQuery = [(TVRUIRemoteViewController *)self deviceQuery];
  if (!deviceQuery || (v6 = deviceQuery, -[TVRUIRemoteViewController deviceQuery](self, "deviceQuery"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasStarted], v7, v6, (v8 & 1) == 0))
  {
    devices = _TVRUIViewControllerLog(deviceQuery);
    if (!os_log_type_enabled(devices, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v54 = "[TVRUIRemoteViewController _connectToMostRelevantDevice]";
    v17 = "%s - deviceQuery was invalidated";
    v18 = devices;
    v19 = 12;
    goto LABEL_15;
  }

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  devices = [devicePickerViewController devices];

  v12 = _TVRUIViewControllerLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [devices count];
    *buf = 134217984;
    v54 = v13;
    _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Queried devices count: %ld", buf, 0xCu);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice || [devices count]!= 1)
  {
    isPaired = 0;
  }

  else
  {
    v15 = [devices objectAtIndexedSubscript:0];
    isPaired = [v15 isPaired];
  }

  v21 = _TVRUIViewControllerLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v54) = isPaired;
    _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "Query threshold reached. canAutoconnect to single device = %d", buf, 8u);
  }

  if (isPaired)
  {
    v22 = [devices objectAtIndexedSubscript:0];
    [(TVRUIRemoteViewController *)self setActiveDevice:v22];

    v24 = _TVRUIViewControllerLog(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
      *buf = 138543362;
      v54 = activeDevice2;
      _os_log_impl(&dword_26CFEB000, v24, OS_LOG_TYPE_DEFAULT, "[Autoconnect] Updated active device to: %{public}@", buf, 0xCu);
    }

    activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
    [(TVRUIRemoteViewController *)self _connectToDevice:activeDevice3 connectionContext:3];
LABEL_27:

    goto LABEL_28;
  }

  activeDevice4 = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice4 || ![devices count])
  {

    goto LABEL_25;
  }

  devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  isDevicePickerShowing = [devicePickerViewController2 isDevicePickerShowing];

  if (isDevicePickerShowing)
  {
LABEL_25:
    activeDevice3 = _TVRUIViewControllerLog(v28);
    if (os_log_type_enabled(activeDevice3, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice5 = [(TVRUIRemoteViewController *)self activeDevice];
      devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      isDevicePickerShowing2 = [devicePickerViewController3 isDevicePickerShowing];
      *buf = 138412546;
      v54 = activeDevice5;
      v55 = 1024;
      v56 = isDevicePickerShowing2;
      _os_log_impl(&dword_26CFEB000, activeDevice3, OS_LOG_TYPE_DEFAULT, "Failed to find a relevant TV. Active device :%@ isShowingDevicePicker: %d", buf, 0x12u);
    }

    goto LABEL_27;
  }

  v34 = +[TVRUIFeatures corianderEnabled];
  if (!v34)
  {
    v40 = _TVRUIViewControllerLog(v34);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
LABEL_44:

      [(TVRUIRemoteViewController *)self _expandDeviceList];
      goto LABEL_28;
    }

    *buf = 0;
    v41 = "Showing device picker after query threshold reached";
LABEL_43:
    _os_log_impl(&dword_26CFEB000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
    goto LABEL_44;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  devices = devices;
  v35 = [devices countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v50;
LABEL_34:
    v38 = 0;
    while (1)
    {
      if (*v50 != v37)
      {
        objc_enumerationMutation(devices);
      }

      v39 = *(*(&v49 + 1) + 8 * v38);
      if ([v39 classification] == 1)
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = [devices countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v36)
        {
          goto LABEL_34;
        }

        goto LABEL_40;
      }
    }

    activeDevice3 = v39;
    v42 = _TVRUIViewControllerLog(activeDevice3);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = activeDevice3;
      _os_log_impl(&dword_26CFEB000, v42, OS_LOG_TYPE_DEFAULT, "Found suggested device to auto select: %@", buf, 0xCu);
    }

    if (activeDevice3)
    {
      v44 = _TVRUIIRLog(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = activeDevice3;
        _os_log_impl(&dword_26CFEB000, v44, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Attempting to connect to suggested device: %@", buf, 0xCu);
      }

      [(TVRUIRemoteViewController *)self _selectDevice:activeDevice3 withConnectionContext:3];
      goto LABEL_27;
    }
  }

  else
  {
LABEL_40:
  }

  preferredDevice = [(TVRUIRemoteViewController *)self preferredDevice];

  if (!preferredDevice)
  {
    v40 = _TVRUIViewControllerLog(v46);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v41 = "Query threshold reached. Showing device picker";
    goto LABEL_43;
  }

  v47 = _TVRUIIRLog(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    preferredDevice2 = [(TVRUIRemoteViewController *)self preferredDevice];
    *buf = 138412290;
    v54 = preferredDevice2;
    _os_log_impl(&dword_26CFEB000, v47, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Attempting to connect to last selected device: %@", buf, 0xCu);
  }

  [(TVRUIRemoteViewController *)self _connectToPreferredDeviceFromDeviceList:devices];
LABEL_28:
}

- (void)deviceBeganConnecting:(id)connecting
{
  v7 = *MEMORY[0x277D85DE8];
  connectingCopy = connecting;
  v4 = _TVRUIViewControllerLog(connectingCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = connectingCopy;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "UI device callback - began connecting %{public}@", &v5, 0xCu);
  }
}

- (void)deviceDidConnect:(id)connect
{
  v41 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  v5 = _TVRUIViewControllerLog(connectCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = connectCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "UI Device callback - did connect %{public}@. Now messaging child view controllers", buf, 0xCu);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  v7 = [activeDevice isEqualToDevice:connectCopy];

  if (v7)
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    name = [activeDevice2 name];
    v10 = [name length];

    if (!v10)
    {
      v12 = _TVRUIViewControllerLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
        *buf = 138543618;
        v38 = connectCopy;
        v39 = 2114;
        v40 = activeDevice3;
        _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Updating active device to: %{public}@ from: %{public}@", buf, 0x16u);
      }

      [(TVRUIRemoteViewController *)self setActiveDevice:connectCopy];
    }

    deviceObservers = [(TVRUIRemoteViewController *)self deviceObservers];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __46__TVRUIRemoteViewController_deviceDidConnect___block_invoke;
    v36[3] = &unk_279D88DB0;
    v36[4] = self;
    [deviceObservers enumerateObjectsUsingBlock:v36];

    identifier = [connectCopy identifier];
    [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:identifier];

    v17 = _TVRUIViewControllerLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice4 = [(TVRUIRemoteViewController *)self activeDevice];
      name2 = [activeDevice4 name];
      activeDevice5 = [(TVRUIRemoteViewController *)self activeDevice];
      identifier2 = [activeDevice5 identifier];
      *buf = 138543618;
      v38 = name2;
      v39 = 2114;
      v40 = identifier2;
      _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Active device did connect name: %{public}@ identifier: %{public}@", buf, 0x16u);
    }
  }

  authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];
  v23 = [connectCopy isEqualToDevice:authenticatingDevice];

  if (v23)
  {
    [(TVRUIRemoteViewController *)self setAuthenticatingDevice:0];
  }

  deviceConnectionStatusDelegate = [(TVRUIRemoteViewController *)self deviceConnectionStatusDelegate];
  [deviceConnectionStatusDelegate deviceDidConnect];

  if ([(TVRUIRemoteViewController *)self shouldStartFindingSession])
  {
    [(TVRUIRemoteViewController *)self _startFindingSessionForDevice:connectCopy];
    [(TVRUIRemoteViewController *)self setShouldStartFindingSession:0];
  }

  [(TVRUIRemoteViewController *)self _toggleControlAvailability];
  [(TVRUIRemoteViewController *)self _hideMessageContent];
  [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner];
  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  activeDevice6 = [(TVRUIRemoteViewController *)self activeDevice];
  -[TVRUIRemoteViewController setSupportsVolumeControl:](self, "setSupportsVolumeControl:", [activeDevice6 supportsVolumeControl]);

  activeDevice7 = [(TVRUIRemoteViewController *)self activeDevice];
  supportsLaunchingApplications = [activeDevice7 supportsLaunchingApplications];

  if ((supportsLaunchingApplications & 1) == 0)
  {
    [(TVRUIRemoteViewController *)self _disableSearch];
  }

  activeDevice8 = [(TVRUIRemoteViewController *)self activeDevice];
  supportsDonatingIntents = [activeDevice8 supportsDonatingIntents];

  if (supportsDonatingIntents)
  {
    activeDevice9 = [(TVRUIRemoteViewController *)self activeDevice];
    identifier3 = [activeDevice9 identifier];
    activeDevice10 = [(TVRUIRemoteViewController *)self activeDevice];
    name3 = [activeDevice10 name];
    [TVRUIIntentManager donateIntentsForDeviceWithID:identifier3 name:name3];
  }

  activeDevice11 = [(TVRUIRemoteViewController *)self activeDevice];
  if (![activeDevice11 supportsTouchEvents])
  {
    goto LABEL_22;
  }

  v35 = _AXSAppleTVRemoteUsesSimpleGestures();

  if (v35)
  {
    activeDevice11 = [(TVRUIRemoteViewController *)self sessionData];
    [activeDevice11 setDirectionalControlsEnabled:1];
LABEL_22:
  }

  [(TVRUIRemoteViewController *)self _enableTVRemoteOnLockscreen:1];
  [(TVRUIRemoteViewController *)self _layoutTouchpadExpanded:0];
}

- (void)deviceDidDisconnect:(id)disconnect reason:(int64_t)reason error:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  errorCopy = error;
  isNetworkReachable = [(TVRUIRemoteViewController *)self isNetworkReachable];
  v11 = isNetworkReachable;
  v12 = _TVRUIViewControllerLog(isNetworkReachable);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
      authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];
      *buf = 138413314;
      v38 = disconnectCopy;
      v39 = 2048;
      reasonCopy = reason;
      v41 = 2114;
      v42 = errorCopy;
      v43 = 2112;
      v44 = activeDevice;
      v45 = 2112;
      v46 = authenticatingDevice;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Device disconnected - %@. Reason %ld. Error %{public}@. ActiveDevice %@, Auth Device %@", buf, 0x34u);
    }

    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    v17 = [disconnectCopy isEqualToDevice:activeDevice2];

    if (v17)
    {
      v19 = _TVRUIViewControllerLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Current device disconnected", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self _resetActiveDevice];
      devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [devicePickerViewController resetSelectedDevice];

      siriManager = [(TVRUIRemoteViewController *)self siriManager];
      [siriManager unregisterForSiriEvents];

      authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];
      if ([disconnectCopy isEqualToDevice:authenticatingDevice2])
      {
        isNetworkReachable2 = [(TVRUIRemoteViewController *)self isNetworkReachable];

        if (isNetworkReachable2)
        {
          v25 = _TVRUIViewControllerLog(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CFEB000, v25, OS_LOG_TYPE_DEFAULT, "Authenticating device disconnected", buf, 2u);
          }

          authenticatingDevice3 = [(TVRUIRemoteViewController *)self authenticatingDevice];
          [authenticatingDevice3 cancelAuthenitcationChallenge];

          [(TVRUIRemoteViewController *)self setAuthenticatingDevice:0];
          [(TVRUIRemoteViewController *)self _resetActiveDevice];
        }
      }

      else
      {
      }

      objc_initWeak(buf, self);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __62__TVRUIRemoteViewController_deviceDidDisconnect_reason_error___block_invoke;
      v35[3] = &unk_279D87F18;
      objc_copyWeak(&v36, buf);
      [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:1 completion:v35];
      if (reason)
      {
        v28 = errorCopy == 0;
      }

      else
      {
        v28 = 1;
      }

      v27 = !v28;
      if (!v28)
      {
        [(TVRUIRemoteViewController *)self _hideMessageContent];
        v29 = _TVRUIViewControllerLog([MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showConnectingSpinner object:0]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 0;
          _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Hiding existing message content and canceling connecting spinner selector", v34, 2u);
        }

        [(TVRUIRemoteViewController *)self showMessageWithError:errorCopy andDevice:disconnectCopy];
      }

      [(TVRUIRemoteViewController *)self _toggleControlAvailability];
      [(TVRUIRemoteViewController *)self setSupportsVolumeControl:0];
      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      v27 = 0;
    }

    deviceConnectionStatusDelegate = [(TVRUIRemoteViewController *)self deviceConnectionStatusDelegate];
    [deviceConnectionStatusDelegate deviceDidDisconnect];

    [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner];
    [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
    if (v17)
    {
      activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
      if (activeDevice3)
      {
      }

      else
      {
        isNetworkReachable3 = [(TVRUIRemoteViewController *)self isNetworkReachable];
        if (((v27 | isNetworkReachable3 ^ 1) & 1) == 0)
        {
          v33 = _TVRUIViewControllerLog(isNetworkReachable3);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CFEB000, v33, OS_LOG_TYPE_DEFAULT, "Expanding picker since we got a disconnect message and no device is currently connected", buf, 2u);
          }

          [(TVRUIRemoteViewController *)self _expandDeviceList];
        }
      }
    }
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Device disconnected but we are not connected to WiFi. Ignoring disconnection", buf, 2u);
    }
  }
}

void __62__TVRUIRemoteViewController_deviceDidDisconnect_reason_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[144];
    WeakRetained[144] = 0;
    v4 = WeakRetained;

    v3 = v4[145];
    v4[145] = 0;

    WeakRetained = v4;
  }
}

- (void)device:(id)device beganTextEditingWithAttributes:(id)attributes initialText:(id)text
{
  v27 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  textCopy = text;
  deviceCopy = device;
  v11 = _TVRUIKeyboardLog(deviceCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    sharingClient = [(TVRUIRemoteViewController *)self sharingClient];
    v19 = 138413058;
    selfCopy = self;
    v21 = 2112;
    v22 = activeDevice;
    v23 = 2112;
    v24 = sharingClient;
    v25 = 2048;
    v26 = [textCopy length];
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "%@ RemoteViewCtrl received callback to present keyboard. Active Device %@. Sharing client %@ text length: %lu", &v19, 0x2Au);
  }

  activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
  v15 = [deviceCopy isEqualToDevice:activeDevice2];

  if (v15 && [(TVRUIRemoteViewController *)self _shouldAllowKeyboardToBePresented])
  {
    isInReducedBacklightMode = [(TVRUIRemoteViewController *)self isInReducedBacklightMode];
    if (isInReducedBacklightMode)
    {
      v17 = _TVRUIViewControllerLog(isInReducedBacklightMode);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "undimming the screen", &v19, 2u);
      }

      SBSUndimScreen();
    }

    [(TVRUIRemoteViewController *)self setEditingSessionActive:1];
    controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
    [controlPanelViewController showKeyboardButton];

    [(TVRUIRemoteViewController *)self _presentKeyboardWithAttributes:attributesCopy initialText:textCopy];
  }
}

- (void)device:(id)device endedTextEditingWithAttributes:(id)attributes endingText:(id)text
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  textCopy = text;
  v9 = _TVRUIKeyboardLog(textCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = deviceCopy;
    v15 = 2048;
    v16 = [textCopy length];
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received callback to end text editing for device %{public}@ text length: %lu", &v13, 0x16u);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  v11 = [deviceCopy isEqualToDevice:activeDevice];

  if (v11)
  {
    [(TVRUIRemoteViewController *)self setEditingSessionActive:0];
    controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
    [controlPanelViewController hideKeyboardButton];

    [(TVRUIRemoteViewController *)self dismissPresentedContentAnimated:1 completion:0];
  }
}

- (void)device:(id)device didUpdateText:(id)text
{
  v15 = *MEMORY[0x277D85DE8];
  textCopy = text;
  deviceCopy = device;
  v8 = _TVRUIKeyboardLog(deviceCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [textCopy length];
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received callback to update text of local device text field to newText.length: %lu", &v13, 0xCu);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  v10 = [deviceCopy isEqualToDevice:activeDevice];

  if (v10)
  {
    keyboardController = [(TVRUIRemoteViewController *)self keyboardController];

    if (keyboardController)
    {
      keyboardController2 = [(TVRUIRemoteViewController *)self keyboardController];
      [keyboardController2 setText:textCopy];
    }
  }
}

- (void)device:(id)device didUpdateAttributes:(id)attributes
{
  attributesCopy = attributes;
  deviceCopy = device;
  v8 = _TVRUIKeyboardLog(deviceCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received callback to update keyboard attributes", v13, 2u);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  v10 = [deviceCopy isEqualToDevice:activeDevice];

  if (v10)
  {
    keyboardController = [(TVRUIRemoteViewController *)self keyboardController];

    if (keyboardController)
    {
      keyboardController2 = [(TVRUIRemoteViewController *)self keyboardController];
      [keyboardController2 setKeyboardAttributes:attributesCopy];
    }
  }
}

- (void)deviceDidEncounterAuthenticationChallenge:(id)challenge passwordType:(unint64_t)type passcode:(id)passcode
{
  v19 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  passcodeCopy = passcode;
  v10 = _TVRUIViewControllerLog(passcodeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = challengeCopy;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "RemoteViewCtrl received authentication challenge for device %@", &v17, 0xCu);
  }

  [(TVRUIRemoteViewController *)self setAuthenticatingDevice:challengeCopy];
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (devicePickerViewController)
  {
    devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController2 setDevice:challengeCopy];
  }

  _cancelHideConnectingAndShowDevicePicker = [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];
  switch(type)
  {
    case 2uLL:
      v16 = _TVRUIViewControllerLog(_cancelHideConnectingAndShowDevicePicker);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "Challenge is legacy password type", &v17, 2u);
      }

      [(TVRUIRemoteViewController *)self _presentLegacyPairingAlertWithCode:passcodeCopy];
      break;
    case 1uLL:
      v15 = _TVRUIViewControllerLog(_cancelHideConnectingAndShowDevicePicker);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Challenge is text password type", &v17, 2u);
      }

      [(TVRUIRemoteViewController *)self _presentTextPasswordAlert];
      break;
    case 0uLL:
      v14 = _TVRUIViewControllerLog(_cancelHideConnectingAndShowDevicePicker);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Challenge is pin password type", &v17, 2u);
      }

      [(TVRUIRemoteViewController *)self _presentPairingAlert];
      break;
  }
}

- (void)device:(id)device didEncounterAuthenticationThrottle:(int64_t)throttle
{
  [(TVRUIRemoteViewController *)self _cancelShowConnectingSpinner:device];
  [(TVRUIRemoteViewController *)self _cancelHideConnectingAndShowDevicePicker];

  [(TVRUIRemoteViewController *)self showThrottleConnectMessage];
}

- (void)device:(id)device needsMediaControls:(id)controls
{
  v5 = _TVRUIButtonLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device needs media controls", v7, 2u);
  }

  [(TVRUIRemoteViewController *)self _enableMediaControls:1 animated:1];
  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setMediaControlsAreVisible:1];
}

- (void)device:(id)device hidesMediaControls:(id)controls
{
  v5 = _TVRUIButtonLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device hides media controls", v7, 2u);
  }

  [(TVRUIRemoteViewController *)self _enableMediaControls:0 animated:1];
  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setMediaControlsAreVisible:0];
}

- (void)device:(id)device hasCaptionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (([device supportsDirectCaptionQueries] & 1) == 0)
  {
    mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    [mediaControlsViewController updateCaptionState:enabledCopy buttonDisabled:0];
  }
}

- (void)_enableMediaControls:(BOOL)controls animated:(BOOL)animated
{
  controlsCopy = controls;
  v6 = [(TVRUIRemoteViewController *)self mediaControlsViewController:controls];
  [v6 setEnabled:controlsCopy];

  mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v8 = [mediaControlsViewController availableButtons] & 4;

  v9 = v8;
  if (controlsCopy)
  {
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    supportsCaptionsToggle = [activeDevice supportsCaptionsToggle];

    v12 = 9;
    if (supportsCaptionsToggle)
    {
      v12 = 11;
    }

    v9 = v12 | v8;
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    if ([activeDevice2 supportsDirectCaptionQueries])
    {
      nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
      nowPlayingInfo = [nowPlayingController nowPlayingInfo];
      hasValidCaptionOptions = [nowPlayingInfo hasValidCaptionOptions];
      if (hasValidCaptionOptions)
      {
        nowPlayingController2 = [(TVRUIRemoteViewController *)self nowPlayingController];
        nowPlayingInfo2 = [nowPlayingController2 nowPlayingInfo];
        hasValidCaptionOptions2 = [nowPlayingInfo2 hasValidCaptionOptions];
        v25 = nowPlayingController;
        v20 = [hasValidCaptionOptions2 BOOLValue] ^ 1;

        v21 = v20;
        nowPlayingController = v25;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = v8 | 9;
      }

      else
      {
        v22 = v9;
      }
    }

    else
    {

      v22 = v9;
    }

    nowPlayingController3 = [(TVRUIRemoteViewController *)self nowPlayingController];
    capellaInfoAvailable = [nowPlayingController3 capellaInfoAvailable];

    if (capellaInfoAvailable)
    {
      v8 = v22;
    }

    else
    {
      v8 = v22 & 7;
    }
  }

  mediaControlsViewController2 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [mediaControlsViewController2 setAvailableButtons:v9 enabledButtons:v8];
}

- (void)_updateInfoButtonState
{
  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  nowPlayingInfo = [nowPlayingController nowPlayingInfo];

  if (nowPlayingInfo)
  {
    mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    nowPlayingController2 = [(TVRUIRemoteViewController *)self nowPlayingController];
    [mediaControlsViewController updateButton:8 enabled:{objc_msgSend(nowPlayingController2, "capellaInfoAvailable")}];
  }
}

- (void)_enableLiveTVButtons:(BOOL)buttons animated:(BOOL)animated
{
  buttonsCopy = buttons;
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(TVRUIRemoteViewController *)self mediaControlsViewController:buttons];
  availableButtons = [v6 availableButtons];

  v8 = _AXSAppleTVRemoteForceLiveTVButtons();
  v9 = v8;
  v10 = _TVRUIViewControllerLog(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109376;
    v19[1] = buttonsCopy;
    v20 = 1024;
    v21 = v9 != 0;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Live tv buttons enable:%{BOOL}d, forceShowLiveTVButtons:%{BOOL}d", v19, 0xEu);
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = buttonsCopy;
  }

  mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v13 = [mediaControlsViewController availableButtons] & 0xFFFFFFFFFFFFFFFBLL;

  mediaControlsViewController2 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  v15 = [mediaControlsViewController2 enabledButtons] & 0xFFFFFFFFFFFFFFFBLL;

  if (v11)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  mediaControlsViewController3 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  [mediaControlsViewController3 setAvailableButtons:v13 | v16 enabledButtons:v15 | v16];

  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setMediaControlsAreVisible:(v11 | (availableButtons >> 3)) & 1];
}

- (void)connectionServiceDidInvalidate:(id)invalidate
{
  v4 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Connection service invalidate notification received. Dispatching cleanup", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke;
  v5[3] = &unk_279D87AE0;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained[126])
  {
    [WeakRetained _resetActiveDevice];
  }

  if (v3[127])
  {
    v4 = [TVRUIDeviceFactory deviceWithIdentifier:?];
    v5 = v3[126];
    v3[126] = v4;
  }

  [v3 dismissPresentedContentAnimated:1 completion:0];
  v6 = v3[129];
  if (v6)
  {
    [v6 stop];
    v7 = v3[129];
    v3[129] = 0;

    v8 = [v3 devicePickerViewController];
    [v8 setDevices:MEMORY[0x277CBEBF8]];

    if (+[TVRUIFeatures corianderEnabled])
    {
      v9 = [v3 devicePickerViewController];
      [v9 setSuggestedDevices:MEMORY[0x277CBEBF8]];
    }

    v10 = +[TVRUIDeviceQuery deviceQuery];
    v11 = v3[129];
    v3[129] = v10;

    v12 = v3[129];
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke_2;
    v15[3] = &unk_279D88D88;
    v15[4] = v3;
    [v12 startQuery:v13 completionHandler:v15];
  }

  v14 = v3[126];
  if (v14)
  {
    [v3 _connectToDevice:v14 connectionContext:0];
  }
}

id *__60__TVRUIRemoteViewController_connectionServiceDidInvalidate___block_invoke_2(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _startDeviceQueryThresholdTimer];
  }

  return result;
}

- (void)deviceInfoUpdated:(id)updated
{
  updatedCopy = updated;
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController setDevice:updatedCopy];
}

- (void)deviceListUpdated:(id)updated
{
  v14 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = _TVRUIViewControllerLog(updatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = updatedCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device list updated: %{public}@", buf, 0xCu);
  }

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController setDevices:updatedCopy];

  devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
  isDevicePickerShowing = [devicePickerViewController2 isDevicePickerShowing];

  if (isDevicePickerShowing)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__TVRUIRemoteViewController_deviceListUpdated___block_invoke;
    v11[3] = &unk_279D87C20;
    v11[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v11 animations:0.15];
  }

  if (+[TVRUIFeatures corianderEnabled])
  {
    deviceQueryThresholdReached = [(TVRUIRemoteViewController *)self deviceQueryThresholdReached];
    if (deviceQueryThresholdReached)
    {
      v10 = _TVRUIViewControllerLog(deviceQueryThresholdReached);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Query threshold reached. Attempting to the most relevant device from the updated device list", buf, 2u);
      }

      [(TVRUIRemoteViewController *)self _connectToMostRelevantDevice];
    }
  }

  else
  {
    [(TVRUIRemoteViewController *)self _connectToPreferredDeviceFromDeviceList:updatedCopy];
  }
}

void __47__TVRUIRemoteViewController_deviceListUpdated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutTouchpadExpanded:1];
  v2 = [*(a1 + 32) devicePickerViewController];
  [v2 _updateTableFrame:1];
}

- (void)_connectToPreferredDeviceFromDeviceList:(id)list
{
  v38 = *MEMORY[0x277D85DE8];
  listCopy = list;
  preferredDevice = [(TVRUIRemoteViewController *)self preferredDevice];
  if (preferredDevice)
  {
    v6 = preferredDevice;
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    if (activeDevice || ([(TVRUIRemoteViewController *)self activeDeviceIdentifier], (activeDevice = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v8 = [listCopy count];

      if (v8)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = listCopy;
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v31 + 1) + 8 * i);
              preferredDevice2 = [(TVRUIRemoteViewController *)self preferredDevice];
              identifier = [preferredDevice2 identifier];
              v17 = [v14 hasIdentifier:identifier];

              if (v17)
              {
                v19 = _TVRUIViewControllerLog(v18);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v36 = v14;
                  _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Connecting to last selected device: %@", buf, 0xCu);
                }

                v20 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setActiveDevice:v14]);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
                  *buf = 138543362;
                  v36 = activeDevice2;
                  _os_log_impl(&dword_26CFEB000, v20, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", buf, 0xCu);
                }

                preferredDevice3 = [(TVRUIRemoteViewController *)self preferredDevice];
                identifier2 = [preferredDevice3 identifier];
                [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:identifier2];

                [(TVRUIRemoteViewController *)self _connectToDevice:v14 connectionContext:3];
                goto LABEL_21;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];

        v26 = _TVRUIViewControllerLog(v25);
        v27 = v26;
        if (activeDevice3)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            preferredDevice4 = [(TVRUIRemoteViewController *)self preferredDevice];
            *buf = 138543362;
            v36 = preferredDevice4;
            _os_log_impl(&dword_26CFEB000, v27, OS_LOG_TYPE_DEFAULT, "Found preferred device to connect %{public}@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(TVRUIRemoteViewController *)self _connectToPreferredDeviceFromDeviceList:v9, v27];
          }

          v30 = _TVRUIViewControllerLog(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CFEB000, v30, OS_LOG_TYPE_DEFAULT, "Showing device picker as no preferred device was found", buf, 2u);
          }

          [(TVRUIRemoteViewController *)self _expandDeviceList];
        }
      }
    }
  }
}

- (void)suggestedDevices:(id)devices
{
  v11 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = _TVRUIIRLog(devicesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = devicesCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Suggested devices %{public}@", buf, 0xCu);
  }

  if (+[TVRUIFeatures corianderEnabled])
  {
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__TVRUIRemoteViewController_suggestedDevices___block_invoke;
    v6[3] = &unk_279D87AE0;
    objc_copyWeak(&v8, buf);
    v7 = devicesCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __46__TVRUIRemoteViewController_suggestedDevices___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activeDevice];

    if (v4)
    {
      v6 = _TVRUIIRLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 activeDevice];
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Skipping auto select because a device is already active %{public}@", buf, 0xCu);
LABEL_19:
      }
    }

    else
    {
      if (![*(a1 + 32) count])
      {
        v18 = _TVRUIIRLog(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "No suggested devices, attempting to connect to last selected TV", buf, 2u);
        }

        v6 = [v3 devicePickerViewController];
        v7 = [v6 devices];
        [v3 _connectToPreferredDeviceFromDeviceList:v7];
        goto LABEL_19;
      }

      v8 = [v3 devicePickerViewController];
      v9 = [v8 suggestedDevices];
      v10 = [v9 count];

      if (v10)
      {
LABEL_21:
        v19 = *(a1 + 32);
        v20 = [v3 devicePickerViewController];
        [v20 setSuggestedDevices:v19];

        goto LABEL_22;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = *(a1 + 32);
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          if ([v16 classification] == 1)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v13)
            {
              goto LABEL_9;
            }

            goto LABEL_15;
          }
        }

        v6 = v16;

        if (!v6)
        {
          goto LABEL_27;
        }

        v21 = _TVRUIIRLog(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v28 = v6;
          _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "Auto selecting %{public}@", buf, 0xCu);
        }

        [v3 _selectDevice:v6 withConnectionContext:3];
      }

      else
      {
LABEL_15:

LABEL_27:
        v6 = _TVRUIIRLog(v17);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "No devices were classified as AutoPick", buf, 2u);
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_selectDevice:(id)device withConnectionContext:(int64_t)context
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TVRUIRemoteViewController *)self _stringForConnectionContext:context];
    v16 = 138543618;
    v17 = deviceCopy;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Selecting device: %{public}@ with connectionContext: %{public}@", &v16, 0x16u);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    [(TVRUIRemoteViewController *)self _disconnectUserInitiatedAndModifyLockscreenAssertion:context != 1];
  }

  v10 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self setActiveDevice:deviceCopy]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    v16 = 138543362;
    v17 = activeDevice2;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Updated active device to: %{public}@", &v16, 0xCu);
  }

  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController transitonToViewForDeviceType:0];

  identifier = [deviceCopy identifier];
  [(TVRUIRemoteViewController *)self setActiveDeviceIdentifier:identifier];

  activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
  [activeDevice3 setDelegate:self];

  [(TVRUIRemoteViewController *)self _connectToDevice:deviceCopy connectionContext:context];
  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController collapseDeviceList];
}

- (void)devicePickerWillChangeState:(BOOL)state animated:(BOOL)animated
{
  if (animated)
  {
    stateCopy = state;
    v6 = 1.0;
    if (state)
    {
      delegate = [(TVRUIRemoteViewController *)self delegate];
      [delegate devicePickerWillExpand];

      v6 = 0.0;
    }

    messageView = [(TVRUIRemoteViewController *)self messageView];
    [messageView setAlpha:v6];

    touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
    [touchpadViewController setShowControls:stateCopy ^ 1];

    [(TVRUIRemoteViewController *)self _layoutTouchpadExpanded:stateCopy];
  }
}

- (void)devicePickerTitleWasLongPressedForDevice:(id)device
{
  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  [nowPlayingController displayUpNext];
}

- (void)_showBluetoothDisabledAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TVRemoteUIBluetoothAlertTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  supportsSiri = self->_supportsSiri;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (supportsSiri)
  {
    v11 = @"TVRemoteUIBluetoothAlertSiriRemoteSubtitle";
  }

  else
  {
    v11 = @"TVRemoteUIBluetoothAlertAppleTVRemoteSubtitle";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_287E6AEF8 table:@"Localizable"];
  v13 = [v5 alertControllerWithTitle:v7 message:v12 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"TVRemoteUIBluetoothAlertDefaultButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__TVRUIRemoteViewController__showBluetoothDisabledAlertWithCompletion___block_invoke;
  v29[3] = &unk_279D88098;
  v17 = completionCopy;
  v30 = v17;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v29];
  [v13 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"TVRemoteUIBluetoothAlertAlternateButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __71__TVRUIRemoteViewController__showBluetoothDisabledAlertWithCompletion___block_invoke_2;
  v27 = &unk_279D88098;
  v28 = v17;
  v22 = v17;
  v23 = [v19 actionWithTitle:v21 style:0 handler:&v24];
  [v13 addAction:{v23, v24, v25, v26, v27}];

  [(TVRUIRemoteViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_turnOnBluetoothIfNeededWithCompletionBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  networkObserver = [(TVRUIRemoteViewController *)self networkObserver];
  cbController = [networkObserver cbController];

  v8 = _TVRUIViewControllerLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    bluetoothState = [cbController bluetoothState];
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth State: %ld", buf, 0xCu);
  }

  networkObserver2 = [(TVRUIRemoteViewController *)self networkObserver];
  isBluetoothAvailable = [networkObserver2 isBluetoothAvailable];

  if (isBluetoothAvailable)
  {
    blockCopy[2](blockCopy, 1, 0);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke;
    v11[3] = &unk_279D88B68;
    v12 = cbController;
    v13 = blockCopy;
    [(TVRUIRemoteViewController *)self _showBluetoothDisabledAlertWithCompletion:v11];
  }
}

void __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke_2;
    v5[3] = &unk_279D88E00;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 setPowerState:5 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__TVRUIRemoteViewController__turnOnBluetoothIfNeededWithCompletionBlock___block_invoke_3;
  block[3] = &unk_279D88DD8;
  v4 = *(a1 + 32);
  v9 = v3 == 0;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_presentKeyboardWithAttributes:(id)attributes initialText:(id)text
{
  v37 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  textCopy = text;
  _shouldAllowKeyboardToBePresented = [(TVRUIRemoteViewController *)self _shouldAllowKeyboardToBePresented];
  if (_shouldAllowKeyboardToBePresented)
  {
    presentedViewController = [(TVRUIRemoteViewController *)self presentedViewController];
    if (presentedViewController)
    {
      v10 = presentedViewController;
      presentedViewController2 = [(TVRUIRemoteViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = _TVRUIKeyboardLog(presentedViewController);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [TVRUIRemoteViewController _presentKeyboardWithAttributes:initialText:];
        }

        presentedViewController3 = [(TVRUIRemoteViewController *)self presentedViewController];
        [presentedViewController3 dismissViewControllerAnimated:0 completion:0];
      }
    }

    v15 = _TVRUIKeyboardLog(presentedViewController);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
      if (activeDevice)
      {
        v17 = @"true";
      }

      else
      {
        v17 = @"false";
      }

      isSiriSessionActive = [(TVRUIRemoteViewController *)self isSiriSessionActive];
      presentedViewController4 = [(TVRUIRemoteViewController *)self presentedViewController];
      keyboardController = [(TVRUIRemoteViewController *)self keyboardController];
      v29 = 138544386;
      v30 = v17;
      v31 = 1024;
      *v32 = isSiriSessionActive;
      *&v32[4] = 2114;
      *&v32[6] = textCopy;
      v33 = 2112;
      v34 = presentedViewController4;
      v35 = 2112;
      v36 = keyboardController;
      _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Keyboard presentation allowed activeDevice: %{public}@, siriSessionActive: %{BOOL}d, text: %{public}@, presentedViewController: %@, keyboardController: %@", &v29, 0x30u);
    }

    v21 = [TVRAlertController alloc];
    styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
    v23 = [(TVRAlertController *)v21 initWithKeyboardAttributes:attributesCopy styleProvider:styleProvider];

    [v23 setDelegate:self];
    [v23 setText:textCopy];
    [(TVRKeyboardHaptic *)self->_keyboardHaptic play];
    [(TVRUIRemoteViewController *)self setKeyboardController:v23];
    [(TVRUIRemoteViewController *)self setDefinesPresentationContext:1];
    [(TVRUIRemoteViewController *)self presentViewController:v23 animated:1 completion:0];
    sessionData = [(TVRUIRemoteViewController *)self sessionData];
    [sessionData setUsedRTI:1];

    activeDevice2 = _TVRUIKeyboardLog(v25);
    if (os_log_type_enabled(activeDevice2, OS_LOG_TYPE_DEFAULT))
    {
      presentedViewController5 = [(TVRUIRemoteViewController *)self presentedViewController];
      v29 = 138412546;
      v30 = v23;
      v31 = 2112;
      *v32 = presentedViewController5;
      _os_log_impl(&dword_26CFEB000, activeDevice2, OS_LOG_TYPE_DEFAULT, "presented keyboard controller %@ %@", &v29, 0x16u);
    }

    goto LABEL_19;
  }

  v23 = _TVRUIKeyboardLog(_shouldAllowKeyboardToBePresented);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    if (activeDevice2)
    {
      v28 = @"true";
    }

    else
    {
      v28 = @"false";
    }

    v29 = 138543618;
    v30 = v28;
    v31 = 1024;
    *v32 = [(TVRUIRemoteViewController *)self isSiriSessionActive];
    _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_DEFAULT, "Keyboard presentation suppressed activeDevice: %{public}@, siriSessionActive: %{BOOL}d", &v29, 0x12u);
LABEL_19:
  }
}

- (void)_presentTextPasswordAlert
{
  v3 = [TVRAlertController alloc];
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  textForPairingPasswordAlert = [styleProvider textForPairingPasswordAlert];
  v6 = [(TVRAlertController *)v3 initForTextPasswordType:textForPairingPasswordAlert];

  [v6 setDelegate:self];
  [v6 setText:&stru_287E6AEF8];
  [(TVRKeyboardHaptic *)self->_keyboardHaptic play];
  [(TVRUIRemoteViewController *)self setAuthenticationAlertController:v6];
  [(TVRUIRemoteViewController *)self setDefinesPresentationContext:1];
  v7 = _TVRUIKeyboardLog([(TVRUIRemoteViewController *)self presentViewController:v6 animated:1 completion:0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Presented keyboard controller for alphanumeric pin", v8, 2u);
  }
}

- (void)_presentPairingAlert
{
  v3 = [TVRAlertController alloc];
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  textForPairingAlert = [styleProvider textForPairingAlert];
  v6 = [(TVRAlertController *)v3 initWithTitle:textForPairingAlert passcodeSize:4];

  [(TVRAlertController *)v6 setDelegate:self];
  [(TVRUIRemoteViewController *)self setAuthenticationAlertController:v6];
  [(TVRUIRemoteViewController *)self setDefinesPresentationContext:1];
  [(TVRUIRemoteViewController *)self presentViewController:v6 animated:1 completion:0];
  sessionData = [(TVRUIRemoteViewController *)self sessionData];
  [sessionData setRequiredPairing:1];

  v9 = _TVRUIViewControllerLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Presented controller for pin", v10, 2u);
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message
{
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  styleProvider = [(TVRUIRemoteViewController *)self styleProvider];
  textForDeviceLockoutAlert = [styleProvider textForDeviceLockoutAlert];
  v8 = [v5 actionWithTitle:textForDeviceLockoutAlert style:1 handler:0];
  [v9 addAction:v8];

  [(TVRUIRemoteViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_cancelPairing
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];
    v11 = 138412290;
    v12 = authenticatingDevice;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "User requested to cancel pairing for authentication device %@", &v11, 0xCu);
  }

  authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];

  if (authenticatingDevice2)
  {
    authenticatingDevice3 = [(TVRUIRemoteViewController *)self authenticatingDevice];
    [authenticatingDevice3 cancelAuthenitcationChallenge];

    [(TVRUIRemoteViewController *)self setAuthenticatingDevice:0];
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

    if (activeDevice)
    {
      devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
      activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
      name = [activeDevice2 name];
      [devicePickerViewController setTitle:name];
    }

    else
    {
      [(TVRUIRemoteViewController *)self _expandDeviceList];
    }
  }
}

- (BOOL)hasPresentedContent
{
  keyboardController = [(TVRUIRemoteViewController *)self keyboardController];
  if (keyboardController)
  {
    v4 = 1;
  }

  else
  {
    authenticationAlertController = [(TVRUIRemoteViewController *)self authenticationAlertController];
    v4 = authenticationAlertController != 0;
  }

  return v4;
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = _TVRUIViewControllerLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    presentedViewController = [(TVRUIRemoteViewController *)self presentedViewController];
    v17 = 138412290;
    v18 = presentedViewController;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to dismiss presented content: %@", &v17, 0xCu);
  }

  keyboardController = [(TVRUIRemoteViewController *)self keyboardController];

  if (keyboardController)
  {
    v11 = _TVRUIKeyboardLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      keyboardController2 = [(TVRUIRemoteViewController *)self keyboardController];
      presentedViewController2 = [(TVRUIRemoteViewController *)self presentedViewController];
      v17 = 138412546;
      v18 = keyboardController2;
      v19 = 2112;
      v20 = presentedViewController2;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Dismissed presented keyboard controller:%@, presented:%@", &v17, 0x16u);
    }

    keyboardController3 = [(TVRUIRemoteViewController *)self keyboardController];
    [keyboardController3 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
    [(TVRUIRemoteViewController *)self setKeyboardController:0];
LABEL_11:

    goto LABEL_12;
  }

  authenticationAlertController = [(TVRUIRemoteViewController *)self authenticationAlertController];

  if (authenticationAlertController)
  {
    keyboardController3 = [(TVRUIRemoteViewController *)self authenticationAlertController];
    [keyboardController3 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
    [(TVRUIRemoteViewController *)self setAuthenticationAlertController:0];
    v16 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self _cancelPairing]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "Dismissed presented authentication controller", &v17, 2u);
    }

    goto LABEL_11;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_12:
}

- (void)alertController:(id)controller enteredText:(id)text
{
  controllerCopy = controller;
  textCopy = text;
  authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];
  if (authenticatingDevice && ![controllerCopy type])
  {
    v10 = [textCopy length];

    if (v10 == 4)
    {
      authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];
      [authenticatingDevice2 sendAuthenticationCode:textCopy];

      [controllerCopy dismissViewControllerAnimated:1 completion:0];
      goto LABEL_9;
    }
  }

  else
  {
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (textCopy && activeDevice)
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice2 sendText:textCopy];
  }

LABEL_9:
}

- (void)alertController:(id)controller generatedTextInputPayload:(id)payload
{
  payloadCopy = payload;
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  keyboardAttributes = [activeDevice keyboardAttributes];

  [keyboardAttributes setRtiDataPayload:payloadCopy];
  activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
  [activeDevice2 sendTextInputPayload:payloadCopy];
}

- (void)alertControllerPressedDictationButton:(id)button
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    v8 = [TVRUIButtonEvent createButtonEvent:1 buttonType:4];
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice2 sendButtonEvent:v8];

    [(TVRUIRemoteViewController *)self _performSiriEffectsWithButtonEvent:v8];
  }

  else
  {
    v7 = _TVRUIKeyboardLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TVRUIRemoteViewController alertControllerPressedDictationButton:];
    }
  }
}

- (void)alertControllerReleasedDictationButton:(id)button
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    v6 = [TVRUIButtonEvent createButtonEvent:2 buttonType:4];
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice2 sendButtonEvent:v6];

    [(TVRUIRemoteViewController *)self _performSiriEffectsWithButtonEvent:v6];
  }
}

- (void)alertControllerHitKeyboardReturnKey:(id)key
{
  keyCopy = key;
  authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];
  if (authenticatingDevice)
  {
    v6 = authenticatingDevice;
    type = [keyCopy type];

    if (type == 2)
    {
      v9 = _TVRUIKeyboardLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "User entered text password", buf, 2u);
      }

      text = [keyCopy text];
      v11 = [text length];

      if (v11)
      {
        authenticatingDevice2 = [(TVRUIRemoteViewController *)self authenticatingDevice];
        text2 = [keyCopy text];
        [authenticatingDevice2 sendAuthenticationCode:text2];

        [keyCopy dismissViewControllerAnimated:1 completion:0];
        goto LABEL_13;
      }

      activeDevice2 = _TVRUIKeyboardLog(v12);
      if (os_log_type_enabled(activeDevice2, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_26CFEB000, activeDevice2, OS_LOG_TYPE_DEFAULT, "User entered password of zero length", v19, 2u);
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice)
  {
    v16 = activeDevice;
    type2 = [keyCopy type];

    if (type2 == 1)
    {
      activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
      [activeDevice2 sendReturnKey];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)alertControllerCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (![cancelledCopy type] || objc_msgSend(cancelledCopy, "type") == 2)
  {
    authenticatingDevice = [(TVRUIRemoteViewController *)self authenticatingDevice];

    if (authenticatingDevice)
    {
      [(TVRUIRemoteViewController *)self _cancelPairing];
    }
  }

  keyboardController = [(TVRUIRemoteViewController *)self keyboardController];

  if (keyboardController == cancelledCopy)
  {
    [(TVRUIRemoteViewController *)self setKeyboardController:0];
  }

  else
  {
    authenticationAlertController = [(TVRUIRemoteViewController *)self authenticationAlertController];

    v7 = cancelledCopy;
    if (authenticationAlertController != cancelledCopy)
    {
      goto LABEL_10;
    }

    [(TVRUIRemoteViewController *)self setAuthenticationAlertController:0];
  }

  v7 = cancelledCopy;
LABEL_10:
}

- (void)wifiStateDidUpdate:(int64_t)update
{
  networkObserver = [(TVRUIRemoteViewController *)self networkObserver];
  isNetworkReachable = [networkObserver isNetworkReachable];

  v8 = _TVRUIViewControllerLog(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (isNetworkReachable)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Network observer reported network is reachable", buf, 2u);
    }

    deviceQuery = [(TVRUIRemoteViewController *)self deviceQuery];
    if (deviceQuery)
    {
      v11 = deviceQuery;
      deviceQuery2 = [(TVRUIRemoteViewController *)self deviceQuery];
      hasStarted = [deviceQuery2 hasStarted];

      if ((hasStarted & 1) == 0)
      {
        v15 = _TVRUIViewControllerLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Network is reachable. Requesting restarting query.", buf, 2u);
        }

        deviceQuery3 = [(TVRUIRemoteViewController *)self deviceQuery];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __48__TVRUIRemoteViewController_wifiStateDidUpdate___block_invoke;
        v45[3] = &unk_279D88D88;
        v45[4] = self;
        [deviceQuery3 startQuery:self completionHandler:v45];

        [(TVRUIRemoteViewController *)self performSelector:sel__showSearchingSpinnerIfNeeded withObject:0 afterDelay:2.0];
      }
    }

    [(TVRUIRemoteViewController *)self clearMessageContent];
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    if (!activeDevice)
    {
      goto LABEL_33;
    }

    activeDevice4 = activeDevice;
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    if ([activeDevice2 isConnected])
    {
    }

    else
    {
      activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
      isConnecting = [activeDevice3 isConnecting];

      if (isConnecting)
      {
        goto LABEL_33;
      }

      v38 = _TVRUIViewControllerLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v38, OS_LOG_TYPE_DEFAULT, "Network is reachable. We have an active disconnected device. Requesting connect", buf, 2u);
      }

      activeDevice4 = [(TVRUIRemoteViewController *)self activeDevice];
      [(TVRUIRemoteViewController *)self _connectToDevice:activeDevice4 connectionContext:0];
    }

LABEL_33:
    devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];

    if (devicePickerViewController)
    {
      devicePickerViewController2 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      view = [devicePickerViewController2 view];
      [view setHidden:0];

      v43 = _TVRUIViewControllerLog(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v43, OS_LOG_TYPE_DEFAULT, "Network available. Making device picker button visible.", buf, 2u);
      }
    }

    goto LABEL_37;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Network observer reported network unreachable", buf, 2u);
  }

  [(TVRUIRemoteViewController *)self _resetActiveDevice];
  deviceQuery4 = [(TVRUIRemoteViewController *)self deviceQuery];

  if (deviceQuery4)
  {
    v22 = _TVRUIViewControllerLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "No network. Stopping device query.", buf, 2u);
    }

    deviceQuery5 = [(TVRUIRemoteViewController *)self deviceQuery];
    [deviceQuery5 stop];

    [(TVRUIRemoteViewController *)self _stopDeviceQueryThresholdTimer];
  }

  devicePickerViewController3 = [(TVRUIRemoteViewController *)self devicePickerViewController];

  if (devicePickerViewController3)
  {
    devicePickerViewController4 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController4 collapseDeviceList];

    devicePickerViewController5 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController5 resetSelectedDevice];

    devicePickerViewController6 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController6 setDevices:MEMORY[0x277CBEBF8]];

    if (+[TVRUIFeatures corianderEnabled])
    {
      devicePickerViewController7 = [(TVRUIRemoteViewController *)self devicePickerViewController];
      [devicePickerViewController7 setSuggestedDevices:MEMORY[0x277CBEBF8]];
    }

    devicePickerViewController8 = [(TVRUIRemoteViewController *)self devicePickerViewController];
    view2 = [devicePickerViewController8 view];
    [view2 setHidden:1];

    v32 = _TVRUIViewControllerLog(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v32, OS_LOG_TYPE_DEFAULT, "No network. Collapsed device picker and hid it.", buf, 2u);
    }
  }

  controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [controlPanelViewController setEnabled:0];

  topButtonPanelViewController = [(TVRUIRemoteViewController *)self topButtonPanelViewController];
  [topButtonPanelViewController setEnabled:0];

  if (update)
  {
    if (update == 1)
    {
      [(TVRUIRemoteViewController *)self showNoAssociatedNetworkMessage];
    }
  }

  else
  {
    [(TVRUIRemoteViewController *)self showNoWIFIConnectionMessage];
  }

LABEL_37:
  [(TVRUIRemoteViewController *)self setNetworkReachable:update == 2];
  if (+[TVRUIFeatures isAWDLEnabled])
  {
    networkObserver2 = [(TVRUIRemoteViewController *)self networkObserver];
    -[TVRUIRemoteViewController setNetworkReachable:](self, "setNetworkReachable:", [networkObserver2 isBluetoothAvailable] | -[TVRUIRemoteViewController isNetworkReachable](self, "isNetworkReachable"));
  }
}

id *__48__TVRUIRemoteViewController_wifiStateDidUpdate___block_invoke(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _startDeviceQueryThresholdTimer];
  }

  return result;
}

- (void)bluetoothAvailabilityDidUpdate:(BOOL)update
{
  updateCopy = update;
  v5 = _TVRUIViewControllerLog(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (updateCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth is enabled", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth is disabled", buf, 2u);
    }

    findingSession = [(TVRUIRemoteViewController *)self findingSession];
    isFindingSessionActive = [findingSession isFindingSessionActive];

    if (isFindingSessionActive)
    {
      v10 = _TVRUIViewControllerLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Bluetooth was disabled in the middle of a finding session. Attemping to restart the finding session", buf, 2u);
      }

      activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
      [(TVRUIRemoteViewController *)self _stopFindingSessionForDevice:activeDevice];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__TVRUIRemoteViewController_bluetoothAvailabilityDidUpdate___block_invoke;
      block[3] = &unk_279D87C20;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __60__TVRUIRemoteViewController_bluetoothAvailabilityDidUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 activeDevice];
  [v1 _startFindingSessionForDevice:v2];
}

- (void)_setupNetworkObserverIfNeeded
{
  networkObserver = [(TVRUIRemoteViewController *)self networkObserver];

  if (!networkObserver)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(TVRUINetworkObserver);
    [(TVRUIRemoteViewController *)self setNetworkObserver:v4];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke;
    v10[3] = &unk_279D88980;
    objc_copyWeak(&v11, &location);
    networkObserver2 = [(TVRUIRemoteViewController *)self networkObserver];
    [networkObserver2 setWifiStateUpdatedHandler:v10];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke_177;
    v8[3] = &unk_279D88D38;
    objc_copyWeak(&v9, &location);
    networkObserver3 = [(TVRUIRemoteViewController *)self networkObserver];
    [networkObserver3 setBluetoothAvailabilityDidUpdate:v8];

    networkObserver4 = [(TVRUIRemoteViewController *)self networkObserver];
    [networkObserver4 startObserving];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _TVRUIViewControllerLog(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 networkObserver];
      v7 = 134218240;
      v8 = a2;
      v9 = 1024;
      v10 = [v6 isNetworkReachable];
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Network observer reported reachability update, state=%ld, reachable=%d", &v7, 0x12u);
    }

    [v4 wifiStateDidUpdate:a2];
  }
}

void __58__TVRUIRemoteViewController__setupNetworkObserverIfNeeded__block_invoke_177(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _TVRUIViewControllerLog(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Network observer reported bluetooth availability update, available=%d", v6, 8u);
    }

    [v4 bluetoothAvailabilityDidUpdate:a2];
  }
}

- (void)showMessageWithError:(id)error andDevice:(id)device
{
  errorCopy = error;
  deviceCopy = device;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke;
  block[3] = &unk_279D883D8;
  block[4] = self;
  v11 = errorCopy;
  v12 = deviceCopy;
  v8 = deviceCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showMessageWithError:*(a1 + 40) device:*(a1 + 48)];

  v4 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke_2;
  block[3] = &unk_279D87C20;
  block[4] = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __60__TVRUIRemoteViewController_showMessageWithError_andDevice___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _hideMessageContent];
  v2 = [*(a1 + 32) devicePickerViewController];
  [v2 expandDeviceList];
}

- (void)showMessageWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TVRUIRemoteViewController_showMessageWithTitle_message___block_invoke;
  block[3] = &unk_279D883D8;
  block[4] = self;
  v11 = titleCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = titleCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__TVRUIRemoteViewController_showMessageWithTitle_message___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showMessageWithTitle:*(a1 + 40) message:*(a1 + 48)];
}

- (void)showMessageWithTitle:(id)title message:(id)message titleFont:(id)font
{
  titleCopy = title;
  messageCopy = message;
  fontCopy = font;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__TVRUIRemoteViewController_showMessageWithTitle_message_titleFont___block_invoke;
  v14[3] = &unk_279D88050;
  v14[4] = self;
  v15 = titleCopy;
  v16 = messageCopy;
  v17 = fontCopy;
  v11 = fontCopy;
  v12 = messageCopy;
  v13 = titleCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __68__TVRUIRemoteViewController_showMessageWithTitle_message_titleFont___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showMessageWithTitle:*(a1 + 40) message:*(a1 + 48) titleFont:*(a1 + 56)];
}

- (void)showPairingMessageWithCode:(id)code
{
  codeCopy = code;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TVRUIRemoteViewController_showPairingMessageWithCode___block_invoke;
  v6[3] = &unk_279D88230;
  v6[4] = self;
  v7 = codeCopy;
  v5 = codeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__TVRUIRemoteViewController_showPairingMessageWithCode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showPairingMessageWithCode:*(a1 + 40)];
}

- (void)showNoAssociatedNetworkMessage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TVRUIRemoteViewController_showNoAssociatedNetworkMessage__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__TVRUIRemoteViewController_showNoAssociatedNetworkMessage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showNoAssociatedNetworkMessage];
}

- (void)showNoWIFIConnectionMessage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TVRUIRemoteViewController_showNoWIFIConnectionMessage__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__TVRUIRemoteViewController_showNoWIFIConnectionMessage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchpadViewController];
  [v2 setShowControls:0];

  v3 = [*(a1 + 32) messageView];
  [v3 showNoWIFIConnectionMessage];
}

- (void)showThrottleConnectMessage
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 localizedStringForKey:@"TVRemoteUIPairingLockoutTitle" value:&stru_287E6AEF8 table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TVRemoteUIPairingLockoutMessage" value:&stru_287E6AEF8 table:@"Localizable"];

  [(TVRUIRemoteViewController *)self showMessageWithTitle:v6 message:v5];
}

- (void)showGenericUnableToConnectMessage
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"TVRemoteUIConnectionErrorTitleTV" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUIRemoteViewController *)self showMessageWithTitle:v3 message:&stru_287E6AEF8];
}

- (void)showLoadingSpinner
{
  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setShowControls:0];

  messageView = self->_messageView;

  [(TVRMessageView *)messageView showLoadingSpinner];
}

- (void)showSearchingSpinner
{
  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setShowControls:0];

  [(TVRMessageView *)self->_messageView showSearchingSpinner];
  mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
  [mEMORY[0x277D6C4B8] logSearchingSpinnerShown];
}

- (void)clearMessageContent
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRUIRemoteViewController clearMessageContent]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRMessageView *)self->_messageView clearContent];
  touchpadViewController = [(TVRUIRemoteViewController *)self touchpadViewController];
  [touchpadViewController setShowControls:1];
}

- (void)_showConnectingSpinner
{
  isNetworkReachable = [(TVRUIRemoteViewController *)self isNetworkReachable];
  v4 = isNetworkReachable;
  mEMORY[0x277D6C4B8] = _TVRUIViewControllerLog(isNetworkReachable);
  v6 = os_log_type_enabled(mEMORY[0x277D6C4B8], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, mEMORY[0x277D6C4B8], OS_LOG_TYPE_DEFAULT, "Showing connecting spinner", buf, 2u);
    }

    [(TVRUIRemoteViewController *)self showLoadingSpinner];
    [(TVRUIRemoteViewController *)self performSelector:sel__hideConnectingAndShowDevicePicker withObject:0 afterDelay:10.0];
    mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
    activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
    deviceContextInformation = [activeDevice deviceContextInformation];
    [mEMORY[0x277D6C4B8] logConnectingSpinnerShown:deviceContextInformation];
  }

  else if (v6)
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, mEMORY[0x277D6C4B8], OS_LOG_TYPE_DEFAULT, "Not showing connecting spinner - Network is unreachable", v9, 2u);
  }
}

- (void)_cancelShowConnectingSpinner
{
  v2 = _TVRUIViewControllerLog([MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showConnectingSpinner object:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled ShowConnectingSpinner selector", v3, 2u);
  }
}

- (void)_hideConnectingAndShowDevicePicker
{
  v6 = *MEMORY[0x277D85DE8];
  activeDevice = [self activeDevice];
  v4 = 138412290;
  v5 = activeDevice;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Disconnecting device %@ due to connection timeout", &v4, 0xCu);
}

- (void)_cancelHideConnectingAndShowDevicePicker
{
  v2 = _TVRUIViewControllerLog([MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideConnectingAndShowDevicePicker object:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled showdevicepicker selector", v3, 2u);
  }
}

- (void)_showSearchingSpinnerIfNeeded
{
  if ([(TVRUIRemoteViewController *)self isNetworkReachable])
  {
    devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
    devices = [devicePickerViewController devices];
    v5 = [devices count];

    if (!v5)
    {
      controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
      [controlPanelViewController setEnabled:0];

      [(TVRUIRemoteViewController *)self showSearchingSpinner];
    }
  }
}

- (void)_hideMessageContent
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showConnectingSpinner object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showSearchingSpinnerIfNeeded object:0];

  [(TVRUIRemoteViewController *)self clearMessageContent];
}

- (void)generatedButtonEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (!activeDevice)
  {
    goto LABEL_25;
  }

  if ([eventCopy buttonType] == 9999)
  {
    if ([eventCopy eventType] == 2)
    {
      v6 = _TVRUIButtonLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "generatedButtonEvent [TVRUIButtonTypeKeyboard, TVRUIButtonEventTypeReleased]", &v17, 2u);
      }

      [(TVRUIRemoteViewController *)self keyboardRequested];
    }

    goto LABEL_25;
  }

  buttonType = [eventCopy buttonType];
  activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
  v9 = activeDevice2;
  if (buttonType == 9992)
  {
    isModernAppleTV = [activeDevice2 isModernAppleTV];

    if (!isModernAppleTV)
    {
      goto LABEL_25;
    }

    nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
    [nowPlayingController infoButtonWasTapped];
    goto LABEL_24;
  }

  [activeDevice2 sendButtonEvent:eventCopy];

  v13 = _TVRUIButtonLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[TVRUIRemoteViewController generatedButtonEvent:]";
    v19 = 2114;
    v20 = eventCopy;
    _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "%s, event=%{public}@", &v17, 0x16u);
  }

  buttonType2 = [eventCopy buttonType];
  if (buttonType2 > 9)
  {
    if (buttonType2 == 10)
    {
      if ([eventCopy eventType] != 1)
      {
        goto LABEL_25;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      nowPlayingController = defaultCenter;
      v16 = @"TVRUIVolumeUpEventGenerated";
    }

    else
    {
      if (buttonType2 != 11 || [eventCopy eventType] != 1)
      {
        goto LABEL_25;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      nowPlayingController = defaultCenter;
      v16 = @"TVRUIVolumeDownEventGenerated";
    }

    [defaultCenter postNotificationName:v16 object:0];
LABEL_24:

    goto LABEL_25;
  }

  if ((buttonType2 - 2) < 2)
  {
    nowPlayingController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    [nowPlayingController collapseChannelButton];
    goto LABEL_24;
  }

  if (buttonType2 == 4)
  {
    [(TVRUIRemoteViewController *)self _performSiriEffectsWithButtonEvent:eventCopy];
  }

LABEL_25:
}

- (void)generatedTouchEvent:(id)event
{
  eventCopy = event;
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    [activeDevice2 sendTouchEvent:eventCopy];
  }
}

- (void)keyboardRequested
{
  v3 = _TVRUIKeyboardLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Keyboard was requested", v9, 2u);
  }

  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (activeDevice)
  {
    activeDevice2 = [(TVRUIRemoteViewController *)self activeDevice];
    keyboardAttributes = [activeDevice2 keyboardAttributes];
    activeDevice3 = [(TVRUIRemoteViewController *)self activeDevice];
    currentText = [activeDevice3 currentText];
    [(TVRUIRemoteViewController *)self _presentKeyboardWithAttributes:keyboardAttributes initialText:currentText];
  }
}

- (void)_performSiriEffectsWithButtonEvent:(id)event
{
  eventCopy = event;
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];

  if (!activeDevice)
  {
    v11 = _TVRUIButtonLog(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TVRUIRemoteViewController _performSiriEffectsWithButtonEvent:];
    }

    goto LABEL_11;
  }

  if ([eventCopy buttonType] != 4)
  {
    goto LABEL_16;
  }

  eventType = [eventCopy eventType];
  switch(eventType)
  {
    case 3:
      v11 = _TVRUIButtonLog(3);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "TVRUIButtonTypeSiri, TVRUIButtonEventTypeButtonDown", v15, 2u);
      }

LABEL_11:

      break;
    case 2:
      v12 = _TVRUIButtonLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "TVRUIButtonTypeSiri, TVRUIButtonEventTypeReleased", v14, 2u);
      }

      sessionData = [(TVRUIRemoteViewController *)self sessionData];
      [sessionData setUsedSiri:1];

      selfCopy2 = self;
      v10 = 0;
      goto LABEL_15;
    case 1:
      v8 = _TVRUIButtonLog(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "TVRUIButtonTypeSiri, TVRUIButtonEventTypePressed", buf, 2u);
      }

      selfCopy2 = self;
      v10 = 1;
LABEL_15:
      [(TVRUIRemoteViewController *)selfCopy2 setSiriSessionActive:v10];
      break;
  }

LABEL_16:
}

- (void)_enableSearch
{
  controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [controlPanelViewController enableSearchButton];
}

- (void)_disableSearch
{
  controlPanelViewController = [(TVRUIRemoteViewController *)self controlPanelViewController];
  [controlPanelViewController disableSearchButton];
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)kind
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIButtonLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TVRUIRemoteViewController consumeSinglePressDownForButtonKind:]";
    v8 = 2048;
    kindCopy = kind;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s, buttonKind=%ld", &v6, 0x16u);
  }

  if (kind == 4)
  {
    [(TVRUIRemoteViewController *)self volumeDownEventGenerated];
  }

  else if (kind == 3)
  {
    [(TVRUIRemoteViewController *)self volumeUpEventGenerated];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event forTouchpadView:(id)view
{
  y = test.y;
  x = test.x;
  viewCopy = view;
  mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
  isChannelButtonExpanded = [mediaControlsViewController isChannelButtonExpanded];

  if (isChannelButtonExpanded)
  {
    mediaControlsViewController2 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    _channelUpButtonView = [mediaControlsViewController2 _channelUpButtonView];

    view = [(TVRUIRemoteViewController *)self view];
    [_channelUpButtonView frame];
    [view convertRect:_channelUpButtonView fromView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    view2 = [(TVRUIRemoteViewController *)self view];
    [view2 convertPoint:viewCopy fromView:{x, y}];
    v24 = v23;
    v26 = v25;

    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v31.x = v24;
    v31.y = v26;
    if (CGRectContainsPoint(v32, v31))
    {
      v27 = _channelUpButtonView;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)device:(id)device supportsFindMyRemote:(BOOL)remote
{
  remoteCopy = remote;
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v10 = 138543618;
    v11 = name;
    v12 = 1024;
    v13 = remoteCopy;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' supportsFindMy: %d", &v10, 0x12u);
  }

  devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
  [devicePickerViewController _device:deviceCopy updatedFindMySupported:remoteCopy];
}

- (void)_showFindingAlert
{
  findingSession = [(TVRUIRemoteViewController *)self findingSession];
  if ([findingSession isFindingSessionActive])
  {
    view = [(TVRUIRemoteViewController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(TVRUIRemoteViewController *)self view];
      window2 = [view2 window];
      rootViewController = [window2 rootViewController];
      presentedViewController = [rootViewController presentedViewController];

      v8 = MEMORY[0x277D75110];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"TVRemoteUIFindingAlertTitle" value:&stru_287E6AEF8 table:@"Localizable"];
      supportsSiri = self->_supportsSiri;
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      if (supportsSiri)
      {
        v14 = @"TVRemoteUIFindingAlertSiriRemoteSubtitle";
      }

      else
      {
        v14 = @"TVRemoteUIFindingAlertAppleTVSubtitle";
      }

      v15 = [v12 localizedStringForKey:v14 value:&stru_287E6AEF8 table:@"Localizable"];
      v16 = [v8 alertControllerWithTitle:v10 message:v15 preferredStyle:1];

      v17 = MEMORY[0x277D750F8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"TVRemoteUIFindingAlertDefaultButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __46__TVRUIRemoteViewController__showFindingAlert__block_invoke;
      v28[3] = &unk_279D88E28;
      v28[4] = self;
      v20 = [v17 actionWithTitle:v19 style:0 handler:v28];
      [v16 addAction:v20];

      v21 = MEMORY[0x277D750F8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"TVRemoteUIFindingAlertAlternateButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __46__TVRUIRemoteViewController__showFindingAlert__block_invoke_204;
      v27[3] = &unk_279D88E28;
      v27[4] = self;
      v24 = [v21 actionWithTitle:v23 style:0 handler:v27];
      [v16 addAction:v24];

      [presentedViewController presentViewController:v16 animated:1 completion:0];
    }
  }

  else
  {
  }
}

void __46__TVRUIRemoteViewController__showFindingAlert__block_invoke(uint64_t a1)
{
  v2 = _TVRUIViewControllerLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "User requested to continue looking for the remote. Restarting finding session", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 activeDevice];
  [v3 _startFindingSessionForDevice:v4];
}

void __46__TVRUIRemoteViewController__showFindingAlert__block_invoke_204(uint64_t a1)
{
  v2 = _TVRUIViewControllerLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "User requested to stop finding remote", v4, 2u);
  }

  v3 = [*(a1 + 32) findingSession];
  [v3 stopFindingSession];
}

- (void)device:(id)device didUpdateSiriRemoteFindingSessionState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    if (state < 7 && ((0x77u >> state) & 1) != 0)
    {
      v9 = off_279D88EB8[state];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:state];
      v9 = [v10 stringWithFormat:@"Unknown %@", v11];
    }

    *buf = 138543618;
    v13 = name;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' did update finding state: %{public}@", buf, 0x16u);
  }

  if (state == 6)
  {
    [(TVRUIRemoteViewController *)self _showFindingAlert];
  }
}

- (void)device:(id)device didUpdateNowPlayingInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  infoCopy = info;
  playbackRate = [infoCopy playbackRate];

  if (playbackRate)
  {
    mediaControlsViewController = [(TVRUIRemoteViewController *)self mediaControlsViewController];
    playbackRate2 = [infoCopy playbackRate];
    [mediaControlsViewController updatePlaybackRate:playbackRate2];
  }

  captionsEnabled = [infoCopy captionsEnabled];
  if (captionsEnabled)
  {
    v12 = captionsEnabled;
    hasValidCaptionOptions = [infoCopy hasValidCaptionOptions];

    if (hasValidCaptionOptions)
    {
      v15 = _TVRUIViewControllerLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        name = [deviceCopy name];
        captionsEnabled2 = [infoCopy captionsEnabled];
        hasValidCaptionOptions2 = [infoCopy hasValidCaptionOptions];
        v24 = 138543874;
        v25 = name;
        v26 = 2114;
        v27 = captionsEnabled2;
        v28 = 2114;
        v29 = hasValidCaptionOptions2;
        _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' updateCaptionState: %{public}@, hasValidCaptionOptions: %{public}@", &v24, 0x20u);
      }

      mediaControlsViewController2 = [(TVRUIRemoteViewController *)self mediaControlsViewController];
      captionsEnabled3 = [infoCopy captionsEnabled];
      bOOLValue = [captionsEnabled3 BOOLValue];
      hasValidCaptionOptions3 = [infoCopy hasValidCaptionOptions];
      [mediaControlsViewController2 updateCaptionState:bOOLValue buttonDisabled:{objc_msgSend(hasValidCaptionOptions3, "BOOLValue") ^ 1}];
    }
  }

  nowPlayingController = [(TVRUIRemoteViewController *)self nowPlayingController];
  [nowPlayingController setNowPlayingInfo:infoCopy];
}

- (void)device:(id)device supportsVolumeControl:(BOOL)control
{
  controlCopy = control;
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v10 = 138543618;
    v11 = name;
    v12 = 1024;
    v13 = controlCopy;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "device: '%{public}@' supportsVolumeControl %d", &v10, 0x12u);
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:controlCopy];
  delegate = [(TVRUIRemoteViewController *)self delegate];
  [delegate device:deviceCopy supportsVolume:controlCopy];
}

- (void)device:(id)device supportsSiri:(BOOL)siri volumeControl:(BOOL)control
{
  controlCopy = control;
  siriCopy = siri;
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v9 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[TVRUIRemoteViewController device:supportsSiri:volumeControl:]";
    v13 = 2112;
    v14 = deviceCopy;
    v15 = 1024;
    v16 = siriCopy;
    v17 = 1024;
    v18 = controlCopy;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "%s device=%@, supportsSiri=%{BOOL}d, supportsVolumeControl=%{BOOL}d", &v11, 0x22u);
  }

  [(TVRUIRemoteViewController *)self setSupportsVolumeControl:controlCopy];
  [(TVRUIRemoteViewController *)self setSupportsSiri:siriCopy];
  delegate = [(TVRUIRemoteViewController *)self delegate];
  [delegate device:deviceCopy supportsSiri:siriCopy volume:controlCopy];
}

- (void)setSupportsVolumeControl:(BOOL)control
{
  controlCopy = control;
  if (!self->_volumeController)
  {
    v5 = [TVRUIVolumeController alloc];
    view = [(TVRUIRemoteViewController *)self view];
    window = [view window];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke;
    v18[3] = &unk_279D88028;
    v18[4] = self;
    v8 = [(TVRUIVolumeController *)v5 initForWindow:window eventHandler:v18];
    volumeController = self->_volumeController;
    self->_volumeController = v8;
  }

  volumeController = [(TVRUIRemoteViewController *)self volumeController];
  [volumeController setSupportsVolumeControl:controlCopy];

  if (self->_isFindingSessionActive)
  {
    deviceObservers = _TVRUIViewControllerLog(v11);
    if (os_log_type_enabled(deviceObservers, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, deviceObservers, OS_LOG_TYPE_DEFAULT, "Finding session is active. Not enabling volume control", buf, 2u);
    }
  }

  else
  {
    volumeController2 = [(TVRUIRemoteViewController *)self volumeController];
    v14 = volumeController2;
    if (controlCopy)
    {
      [volumeController2 enableVolumeControl];
    }

    else
    {
      [volumeController2 disableVolumeControl];
    }

    deviceObservers = [(TVRUIRemoteViewController *)self deviceObservers];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke_206;
    v15[3] = &__block_descriptor_33_e45_v32__0___TVRUIRemoteDeviceObserving__8Q16_B24l;
    v16 = controlCopy;
    [deviceObservers enumerateObjectsUsingBlock:v15];
  }
}

id *__54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke(id *result, uint64_t a2)
{
  if (a2 == 2)
  {
    return [result[4] volumeDownEventGenerated];
  }

  if (a2 == 1)
  {
    return [result[4] volumeUpEventGenerated];
  }

  return result;
}

void __54__TVRUIRemoteViewController_setSupportsVolumeControl___block_invoke_206(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setVolumeControlAvailable:*(a1 + 32)];
  }
}

- (BOOL)supportsVolumeControl
{
  volumeController = [(TVRUIRemoteViewController *)self volumeController];

  if (!volumeController)
  {
    return 0;
  }

  volumeController2 = [(TVRUIRemoteViewController *)self volumeController];
  supportsVolumeControl = [volumeController2 supportsVolumeControl];

  return supportsVolumeControl;
}

- (void)setSupportsSiri:(BOOL)siri
{
  if (self->_supportsSiri == siri)
  {
    return;
  }

  self->_supportsSiri = siri;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
  }

  else
  {
    view = [(TVRUIRemoteViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    activationState = [windowScene activationState];

    if (activationState)
    {
LABEL_7:
      siriManager = [(TVRUIRemoteViewController *)self siriManager];
      [siriManager unregisterForSiriEvents];
      goto LABEL_8;
    }
  }

  if (!siri)
  {
    goto LABEL_7;
  }

  siriManager = [(TVRUIRemoteViewController *)self siriManager];
  [siriManager registerForSiriEvents];
LABEL_8:
}

- (void)volumeUpEventGenerated
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice && (v4 = activeDevice, -[TVRUIRemoteViewController activeDevice](self, "activeDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsVolumeControl], v5, v4, v6))
  {
    v7 = [TVRUIButtonEvent createButtonEvent:1 buttonType:10];
    [(TVRUIRemoteViewController *)self generatedButtonEvent:v7];
    v8 = [TVRUIButtonEvent createButtonEvent:2 buttonType:10];
    v9 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self generatedButtonEvent:v8]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Sent volume UP button event", buf, 2u);
    }
  }

  else
  {
    v7 = _TVRUIViewControllerLog(activeDevice);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Volume up event generated but device does not support. Not sending", v10, 2u);
    }
  }
}

- (void)volumeDownEventGenerated
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice && (v4 = activeDevice, -[TVRUIRemoteViewController activeDevice](self, "activeDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsVolumeControl], v5, v4, v6))
  {
    v7 = [TVRUIButtonEvent createButtonEvent:1 buttonType:11];
    [(TVRUIRemoteViewController *)self generatedButtonEvent:v7];
    v8 = [TVRUIButtonEvent createButtonEvent:2 buttonType:11];
    v9 = _TVRUIViewControllerLog([(TVRUIRemoteViewController *)self generatedButtonEvent:v8]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Sent volume DOWN button event", buf, 2u);
    }
  }

  else
  {
    v7 = _TVRUIViewControllerLog(activeDevice);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Volume down event generated but device does not support. Not sending", v10, 2u);
    }
  }
}

- (void)_expandDeviceList
{
  if ([(TVRUIRemoteViewController *)self isNetworkReachable])
  {
    [(TVRUIRemoteViewController *)self _hideMessageContent];
    delegate = [(TVRUIRemoteViewController *)self delegate];
    [delegate devicePickerWillExpand];

    devicePickerViewController = [(TVRUIRemoteViewController *)self devicePickerViewController];
    [devicePickerViewController expandDeviceList];
  }
}

- (BOOL)_shouldAllowKeyboardToBePresented
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  if (activeDevice)
  {
    v4 = ![(TVRUIRemoteViewController *)self isSiriSessionActive];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_installTapToRadarButton
{
  if (+[TVRUIFeatures isTapToRadarEnabled])
  {
    tapToRadarButton = [(TVRUIRemoteViewController *)self tapToRadarButton];

    if (!tapToRadarButton)
    {
      v4 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__TVRUIRemoteViewController__installTapToRadarButton__block_invoke;
      block[3] = &unk_279D87C20;
      block[4] = self;
      dispatch_after(v4, MEMORY[0x277D85CD0], block);
    }
  }
}

void __53__TVRUIRemoteViewController__installTapToRadarButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 effectiveUserInterfaceLayoutDirection];

  v4 = +[TVRTapToRadarManager bugImage];
  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  v6 = [*(a1 + 32) styleProvider];
  v7 = [v6 primaryTextAndGlyphColor];
  [v5 setTintColor:v7];

  [v5 setImage:v4 forState:0];
  v8 = 0.0;
  if (v3 == 1)
  {
    v9 = [*(a1 + 32) view];
    [v9 bounds];
    v8 = CGRectGetWidth(v15) + -50.0;
  }

  [v5 setFrame:{v8, 0.0, 50.0, 50.0}];
  [v5 addTarget:*(a1 + 32) action:sel__tapToRadar forControlEvents:0x2000];
  [v5 setAlpha:0.0];
  v10 = [*(a1 + 32) view];
  [v10 addSubview:v5];

  objc_storeStrong((*(a1 + 32) + 1208), v5);
  v11 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__TVRUIRemoteViewController__installTapToRadarButton__block_invoke_2;
  v13[3] = &unk_279D87C20;
  v14 = v5;
  v12 = v5;
  [v11 animateWithDuration:v13 animations:0.75];
}

- (void)_tapToRadar
{
  view = [(TVRUIRemoteViewController *)self view];
  window = [view window];
  [TVRTapToRadarManager fileRadarWithTitle:@"[TVRemote] " description:0 window:window];
}

- (id)_stringForDeviceDeviceIdentifierType:(int64_t)type
{
  if (type > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_279D88EF0[type];
  }
}

- (void)_forceShowMediaControls
{
  activeDevice = [(TVRUIRemoteViewController *)self activeDevice];
  [(TVRUIRemoteViewController *)self device:activeDevice needsMediaControls:&unk_287E84C78];
}

- (int64_t)_connectionContextFromLaunchContext:(int64_t)context
{
  if ((context - 5) > 8)
  {
    return 1;
  }

  else
  {
    return qword_26D0D2788[context - 5];
  }
}

- (id)_stringForConnectionContext:(int64_t)context
{
  if ((context - 1) > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_279D88F18[context - 1];
  }
}

- (void)_createFindingSessionIfNeeded
{
  if (!self->_findingSession)
  {
    v3 = objc_alloc_init(TVRUIFindingSession);
    findingSession = self->_findingSession;
    self->_findingSession = v3;

    MEMORY[0x2821F96F8](v3, findingSession);
  }
}

- (void)findButtonTappedForDevice:(id)device
{
  v8 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = _TVRUIViewControllerLog(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = deviceCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Find button tapped for device: %@", &v6, 0xCu);
  }

  if ([deviceCopy isConnected])
  {
    [(TVRUIRemoteViewController *)self _startFindingSessionForDevice:deviceCopy];
  }

  else
  {
    [(TVRUIRemoteViewController *)self _selectDevice:deviceCopy withConnectionContext:1];
    [(TVRUIRemoteViewController *)self setShouldStartFindingSession:1];
  }
}

- (void)_startFindingSessionForDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke;
  v6[3] = &unk_279D88E98;
  v7 = deviceCopy;
  selfCopy = self;
  v5 = deviceCopy;
  [(TVRUIRemoteViewController *)self _turnOnBluetoothIfNeededWithCompletionBlock:v6];
}

void __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRUIViewControllerLog(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth is enabled. Starting finding session", buf, 2u);
      }

      if (*(a1 + 32))
      {
        v10 = _TVRUIViewControllerLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 32) name];
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Start finding session for: '%{public}@'", buf, 0xCu);
        }

        [*(a1 + 40) _createFindingSessionIfNeeded];
        objc_initWeak(buf, *(a1 + 40));
        v12 = [*(a1 + 40) findingSession];
        v13 = *(a1 + 32);
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke_249;
        v18 = &unk_279D88E70;
        v19 = v13;
        objc_copyWeak(&v20, buf);
        v14 = [v12 startFindingSessionForDevice:v19 dismissedHandler:&v15];

        if (v14)
        {
          [*(a1 + 32) enableFindingSession:{1, v15, v16, v17, v18, v19}];
          [*(a1 + 40) presentViewController:v14 animated:1 completion:0];
          [*(a1 + 40) findingSessionDidStart];
        }

        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth is not enabled. Ignoring user action to start finding session", buf, 2u);
      }
    }
  }
}

void __59__TVRUIRemoteViewController__startFindingSessionForDevice___block_invoke_249(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TVRUIViewControllerLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Finding session ended for device: '%{public}@'", &v5, 0xCu);
  }

  [*(a1 + 32) enableFindingSession:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained findingSessionDidEnd];
}

- (void)_stopFindingSessionForDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    v6 = _TVRUIViewControllerLog(deviceCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [v5 name];
      v10 = 138543362;
      v11 = name;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Stop finding session for: '%{public}@'", &v10, 0xCu);
    }

    [v5 enableFindingSession:0];
    if (self->_findingSession)
    {
      findingSession = [(TVRUIRemoteViewController *)self findingSession];
      [findingSession stopFindingSession];

      findingSession = self->_findingSession;
      self->_findingSession = 0;
    }
  }
}

- (void)findingSessionDidStart
{
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Finding session started. Pausing volume support", v5, 2u);
  }

  volumeController = [(TVRUIRemoteViewController *)self volumeController];
  [volumeController disableVolumeControl];

  self->_isFindingSessionActive = 1;
}

- (void)findingSessionDidEnd
{
  v3 = _TVRUIViewControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Finding session ended. Restoring volume support.", v5, 2u);
  }

  self->_isFindingSessionActive = 0;
  volumeController = [(TVRUIRemoteViewController *)self volumeController];
  [volumeController enableVolumeControl];
}

- (TVRUIRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TVRUIDeviceConnectionStatusDelegate)deviceConnectionStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceConnectionStatusDelegate);

  return WeakRetained;
}

- (void)_connectToPreferredDeviceFromDeviceList:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 preferredDevice];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_26CFEB000, a3, OS_LOG_TYPE_ERROR, "No device found for preferred device %{public}@ - deviceList: %{public}@ ", &v6, 0x16u);
}

@end