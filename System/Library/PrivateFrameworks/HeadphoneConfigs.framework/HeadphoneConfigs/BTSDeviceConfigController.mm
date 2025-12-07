@interface BTSDeviceConfigController
- (BOOL)BOOLFromBluetoothPreferences:(id)preferences;
- (BOOL)adaptiveVolumeSupported;
- (BOOL)canDisconnect;
- (BOOL)conversationDetectSupported;
- (BOOL)deviceSupportsCarPlay;
- (BOOL)isCurrentDeviceApplePencil:(int *)pencil;
- (BOOL)isTempPaired;
- (BOOL)isWatch;
- (BOOL)isiCloudEnabled;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (BOOL)managedByDeviceAccess;
- (BOOL)nicknameEnabled;
- (BOOL)shouldForceShowFitTest;
- (BOOL)shouldShowCaseSoundForNewAccessories:(id)accessories productID:(int64_t)d;
- (BOOL)shouldShowFindMyNetworkAlert;
- (BOOL)shouldShowInternalFitTestToggle;
- (BOOL)shouldShowLoudSoundReduction;
- (BOOL)supportAutoAncStrength;
- (BOOL)supportsFirmwareReleaseNotes;
- (BTSDeviceConfigController)init;
- (HearingModeUIService)hearingModeUIService;
- (NSArray)b498Specifiers;
- (NSArray)turnOffListeningModeSpecifiers;
- (_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver)headphoneObserver;
- (id)_carPlayVehicle;
- (id)adaptiveTransparencySpecifier;
- (id)adaptiveVolumeMode;
- (id)ancsAuthorized;
- (id)automaticAnswerCallsEnabled;
- (id)carPlayEnabled:(id)enabled;
- (id)classicSetupSpecifiers;
- (id)clickHoldModeLeft;
- (id)clickHoldModeRight;
- (id)digitalCrownMode;
- (id)doubleTapAction;
- (id)doubleTapActionLeft;
- (id)doubleTapActionRight;
- (id)doubleTapCapability;
- (id)dynamicEnrollmentFeedback;
- (id)extraUnpairWarningMessage;
- (id)forceShowFitTest;
- (id)forgetButtonSpecifier;
- (id)getANCAssetVersion:(id)version;
- (id)getAdaptiveVolumeMode:(id)mode;
- (id)getAnswerCallOption:(id)option;
- (id)getBudFirmwareVersion:(id)version;
- (id)getBudLeftSerialNumber:(id)number;
- (id)getBudRightSerialNumber:(id)number;
- (id)getCaseFirmwareVersion:(id)version;
- (id)getCaseName:(id)name;
- (id)getCaseSoundEnabled:(id)enabled;
- (id)getConversationDetectMode:(id)mode;
- (id)getEndCallMode;
- (id)getFindMyEnable:(id)enable;
- (id)getHearingProtectionEnabled:(id)enabled;
- (id)getModelName:(id)name;
- (id)getModelNumber:(id)number;
- (id)getMuteCallMode;
- (id)getOptimizedBatteryFeatureSpecifiers;
- (id)getPermanentPairSpecifier;
- (id)getSystemSerialNumber:(id)number;
- (id)getTemporaryPairSpecifier;
- (id)getVoiceAssistant;
- (id)inEarDetectEnabled;
- (id)leDevice;
- (id)micMode;
- (id)sealDetect;
- (id)smartRouteMode;
- (id)smartRoutingIndicationForRealityDevice:(id)device;
- (id)soundProfileAllowed;
- (id)spatialProfileVideoCapture;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)userSelectedDeviceType;
- (id)userSelectedHealthDataSyncConfig;
- (int)listeningMode;
- (void)addA2DPDisclosureUISpecifier;
- (void)addAdaptiveVolumeSpecifier;
- (void)addConversationDetectSpecifier;
- (void)addHearingSpecifiers;
- (void)addSmarRoutingSpecifiers:(id)specifiers;
- (void)addTopLevelEntryWithHpDevice:(id)device;
- (void)allowClassicConnection;
- (void)caseSoundChangedHandler:(id)handler;
- (void)contactGroupSelected:(id)selected;
- (void)cycleBetweenLeftBudValueUpdated:(id)updated;
- (void)cycleBetweenRightBudValueUpdated:(id)updated;
- (void)cycleBetweenV2LeftBudValueUpdated:(id)updated;
- (void)cycleBetweenV2RightBudValueUpdated:(id)updated;
- (void)dealloc;
- (void)deviceAccessDeviceLost:(id)lost;
- (void)deviceConnectedHandler:(id)handler;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)deviceRemoved:(id)removed;
- (void)deviceSupportsMAP:(id)p;
- (void)deviceSupportsSync:(id)sync;
- (void)deviceUpdated:(id)updated;
- (void)disconnectDevice:(id)device;
- (void)dismissCurrentViewController;
- (void)doubleTapActionLeft;
- (void)doubleTapActionRight;
- (void)findMyStatusUpdatedHandler:(id)handler;
- (void)forgetDevice;
- (void)forgetDeviceTapped:(id)tapped;
- (void)getFindMyUrl;
- (void)getSoundMode;
- (void)handleCarPlayAllowedDidChange;
- (void)handlePairedVehiclesChanged:(id)changed;
- (void)handleTapOnLabel;
- (void)hearingModeUpdated;
- (void)initializeCaseConnection;
- (void)listeningModeConfigSelected:(id)selected;
- (void)listeningModeUpdatedHandler:(id)handler;
- (void)listeningModeUpdatedV2Handler:(id)handler;
- (void)loadAccessoryFirmwareInfo;
- (void)loadAccessoryInfo;
- (void)loadAccessorySettings;
- (void)loadSyncSettings;
- (void)metaGroupSelected:(id)selected;
- (void)presentAssetLocationLink;
- (void)presentEnrollmentViewController;
- (void)presentFindMyLink;
- (void)presentFitTestController:(id)controller;
- (void)presentImportantMsgLink;
- (void)presentSpatialTutorialController:(id)controller;
- (void)presentTuningViewController;
- (void)pressAndHoldModeSelectedHandler:(id)handler;
- (void)refreshFindMyStatus;
- (void)refreshFindMyStatusForPencilInBackground;
- (void)refreshFindMyStatusForPencilSynchronously;
- (void)releaseCaseConnection;
- (void)reloadCellForSpecifierID:(id)d animated:(BOOL)animated;
- (void)removeTopLevelEntryWithHpDevice:(id)device;
- (void)sealDetectSet:(id)set;
- (void)sendSmartRoutingDisabledTipEvent;
- (void)setANCSAuthorized:(id)authorized;
- (void)setAdaptiveVolumeMode:(id)mode;
- (void)setAdaptiveVolumeMode:(id)mode specifier:(id)specifier;
- (void)setAutomaticAnswerCallsEnabled:(id)enabled;
- (void)setCarPlayEnabled:(id)enabled specifier:(id)specifier;
- (void)setCaseSoundEnabled:(id)enabled specifier:(id)specifier;
- (void)setContactSync:(id)sync specifier:(id)specifier;
- (void)setConversationDetectMode:(id)mode specifier:(id)specifier;
- (void)setDigitalCrownMode:(id)mode;
- (void)setDynamicEnrollmentFeedback:(id)feedback;
- (void)setEndCallMode:(id)mode;
- (void)setFindMyEnable:(id)enable specifier:(id)specifier;
- (void)setForceShowFitTest:(id)test;
- (void)setGestureMode:(id)mode specifier:(id)specifier;
- (void)setHearingProtectionEnabled:(id)enabled specifier:(id)specifier;
- (void)setInEarDetectEnabled:(id)enabled;
- (void)setMessagesEnabled:(id)enabled specifier:(id)specifier;
- (void)setMicMode:(id)mode;
- (void)setMuteCallMode:(id)mode;
- (void)setSmartRouteMode:(id)mode;
- (void)setSoundProfileAllowed:(id)allowed;
- (void)setSpatialProfileVideoCapture:(id)capture;
- (void)setUserSelectedDeviceType:(id)type;
- (void)setUserSelectedHealthDataSyncConfig:(id)config;
- (void)setdoubleTapAction:(id)action;
- (void)setdoubleTapActionLeft:(id)left;
- (void)setdoubleTapActionRight:(id)right;
- (void)settingsChangedHandler:(id)handler;
- (void)setupShowModernHPSButton;
- (void)showFindMyNetworkAlert;
- (void)showModernHPS;
- (void)spatialAudioProfileUpdateHandler:(id)handler;
- (void)spatialProfileTappedHandler:(id)handler;
- (void)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)triggerSpatialProfileFeedback:(id)feedback;
- (void)unpairButtonTapped:(id)tapped;
- (void)updateASKHeader;
- (void)updateBatteryStatus;
- (void)updateDisconnectButton:(BOOL)button;
- (void)updateHearingProtectionSpecifiers;
- (void)updateSerialNumberSpecifier:(id)specifier;
- (void)updateTopLevelEntryWithHpDevice:(id)device;
- (void)updateVersionSpecifier:(id)specifier;
- (void)upgradeDevice:(id)device;
- (void)userDidTapNiPrivacyLink:(id)link;
- (void)userDidTapRecommendedBuilds:(id)builds;
- (void)userDidTapSpatialA2DPLatencyDisclosure:(id)disclosure;
- (void)userDidTapSpatialProfileLearnMoreLink:(id)link;
- (void)userDidTapSpatialProfileWarningLearnMoreLink:(id)link;
- (void)userDidTapWalletLink:(id)link;
- (void)userDidTapWatchLink:(id)link;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BTSDeviceConfigController

- (BTSDeviceConfigController)init
{
  v37.receiver = self;
  v37.super_class = BTSDeviceConfigController;
  v2 = [(BTSDeviceConfigController *)&v37 init];
  if (v2)
  {
    v3 = +[HPSHeadphoneManager sharedInstance];
    [v3 addDelegate:v2];

    *(&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FC28]) = 0;
    *&v2->_syncSettings.supported = 0;
    v2->_syncSettings.userPermissionGranted = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_deviceRemoved_ name:*MEMORY[0x277CF31C8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_deviceUpdated_ name:*MEMORY[0x277CF31D0] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3190] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3188] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel_deviceSupportsSync_ name:*MEMORY[0x277CF31B8] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v2 selector:sel_deviceSupportsMAP_ name:*MEMORY[0x277CF31C0] object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:v2 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v2 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF3198] object:0];

    defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter9 addObserver:v2 selector:sel_settingsChangedHandler_ name:*MEMORY[0x277CF3160] object:0];

    defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter10 addObserver:v2 selector:sel_deviceAccessDeviceLost_ name:@"DADeviceLost" object:0];

    defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter11 addObserver:v2 selector:sel_listeningModeUpdatedHandler_ name:@"BTAccessorySetListeningModeUpdated" object:0];

    defaultCenter12 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter12 addObserver:v2 selector:sel_listeningModeUpdatedV2Handler_ name:@"HPSSetListeningModeUpdated" object:0];

    defaultCenter13 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter13 addObserver:v2 selector:sel_pressAndHoldModeSelectedHandler_ name:@"BTAccessoryPressAndHoldModeSelected" object:0];

    defaultCenter14 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter14 addObserver:v2 selector:sel_cycleBetweenLeftBudValueUpdated_ name:@"CycleBetweenLeftBudValue" object:0];

    defaultCenter15 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter15 addObserver:v2 selector:sel_cycleBetweenRightBudValueUpdated_ name:@"CycleBetweenRightBudValue" object:0];

    defaultCenter16 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter16 addObserver:v2 selector:sel_cycleBetweenV2LeftBudValueUpdated_ name:@"CycleBetweenV2LeftBudValue" object:0];

    defaultCenter17 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter17 addObserver:v2 selector:sel_cycleBetweenV2RightBudValueUpdated_ name:@"CycleBetweenV2RightBudValue" object:0];

    defaultCenter18 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter18 addObserver:v2 selector:sel_spatialProfileTappedHandler_ name:@"HPSSpatialAudioProfileTapped" object:0];

    defaultCenter19 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter19 addObserver:v2 selector:sel_deviceUpdated_ name:@"BluetoothDeviceUpdatedNotificationConfig" object:0];

    defaultCenter20 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter20 addObserver:v2 selector:sel_triggerSpatialProfileFeedback_ name:@"SpatialProfileEnrollmentNotCompleted" object:0];

    defaultCenter21 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter21 addObserver:v2 selector:sel_caseSoundChangedHandler_ name:@"BTNotificationForSpeakerSettingChange" object:0];

    defaultCenter22 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter22 addObserver:v2 selector:sel_updateHearingProtectionSpecifiers name:@"HPSSoundProtectionUpdated" object:0];

    defaultCenter23 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter23 addObserver:v2 selector:sel_hearingModeUpdated name:@"HearingModeUpdated" object:0];

    v2->_listeningModeConfigs = 0;
    defaultCenter24 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter24 addObserver:v2 selector:sel_findMyStatusUpdatedHandler_ name:@"FindMyStatusUpdated" object:0];

    v2->_findMySupport = 0;
    v2->_findMyEnable = 0;
    v2->_findMySetInProgress = 0;
    batteryStatusView = v2->_batteryStatusView;
    v2->_batteryStatusView = 0;

    findMyUrl = v2->_findMyUrl;
    v2->_findMyUrl = 0;

    v2->_enteredFromTopLevelEntry = 0;
    v2->_caseSoundRetrieved = 0;
    v2->_caseSoundRetrieveInProgress = 0;
    v2->_caseSoundEnable = 1;
    v2->_caseSilentMode = 0;
    v2->_caseSoundSupport = 0;
    v2->_setCaseSoundModeInProgress = 0;
    airPodsServiceclient = v2->_airPodsServiceclient;
    v2->_airPodsServiceclient = 0;

    v31 = objc_alloc_init(HPSDeviceAnalytics);
    deviceAnalytics = v2->_deviceAnalytics;
    v2->_deviceAnalytics = v31;

    v2->_adaptiveTransparencyRetrieved = 0;
    v2->_adaptiveTransparencyIndex = 0;
    hearingModeUIService = v2->_hearingModeUIService;
    v2->_hearingModeUIService = 0;

    v34 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:50];
    adaptiveStrength = v2->_adaptiveStrength;
    v2->_adaptiveStrength = v34;

    v2->_findMyEnabledForPencil = 0;
    v2->_didFetchFindMyStatusForPencil = 0;
  }

  return v2;
}

- (void)dealloc
{
  ctkdLeDevice = self->_ctkdLeDevice;
  self->_ctkdLeDevice = 0;

  airPodsServiceclient = self->_airPodsServiceclient;
  self->_airPodsServiceclient = 0;

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self];

  carplayPreferences = [(BTSDeviceConfigController *)self carplayPreferences];
  [carplayPreferences setPreferencesDelegate:0];

  v8.receiver = self;
  v8.super_class = BTSDeviceConfigController;
  [(BTSDeviceConfigController *)&v8 dealloc];
}

- (BOOL)canDisconnect
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v4 = classicDevice && [(BluetoothDeviceProtocol *)self->_device connected]&& ([(BluetoothDeviceProtocol *)self->_device cloudPaired]& 1) == 0 && !self->_isWatch && !self->_isManagedByWallet && !self->_isManagedByAliroWallet;

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BTSDeviceConfigController;
  [(BTSDeviceConfigController *)&v6 viewDidLoad];
  if (_os_feature_enabled_impl())
  {
    ndoController = [(BTSDeviceConfigController *)self ndoController];
    [ndoController setParentViewController:self];

    ndoController2 = [(BTSDeviceConfigController *)self ndoController];
    [ndoController2 updateSpecifiersWithCompletionHandler:&__block_literal_global_1];
  }

  v5 = 0;
  if ([(BTSDeviceConfigController *)self isCurrentDeviceApplePencil:&v5]&& v5 == 2)
  {
    [(BTSDeviceConfigController *)self refreshFindMyStatusForPencilInBackground];
  }

  if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    [(BTSDeviceConfigController *)self setTitle:0];
  }

  [(BTSDeviceConfigController *)self updateASKHeader];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = BTSDeviceConfigController;
  [(BTSDeviceConfigController *)&v8 viewWillAppear:appear];
  [(BTSDeviceConfigController *)self reloadSpecifiers];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    self->_enteredFromTopLevelEntry = 1;
    v5 = sharedBluetoothSettingsLogComponent(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Top Level Entry", v7, 2u);
    }

    v6 = 0;
  }

  else
  {
    v5 = sharedBluetoothSettingsLogComponent(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Info Button", v7, 2u);
    }

    v6 = 1;
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateEntryPoint:v6];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13.receiver = self;
  v13.super_class = BTSDeviceConfigController;
  v4 = [(BTSDeviceConfigController *)&v13 viewDidDisappear:disappear];
  if (self->_enteredFromTopLevelEntry)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    devicePairingEnabled = [mEMORY[0x277CF3248] devicePairingEnabled];

    if (devicePairingEnabled)
    {
      v7 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Disable Pairing if enabled when leaving TLE", v12, 2u);
      }

      mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
      [mEMORY[0x277CF3248]2 setDevicePairingEnabled:0];
    }
  }

  v9 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Case Sound: viewDidDisappear, releasing case connection", v12, 2u);
  }

  [(BTSDeviceConfigController *)self releaseCaseConnection];
  [(HPSDeviceAnalytics *)self->_deviceAnalytics submitDeviceAnalytics];
  [(ModernBatteryStatusView *)self->_batteryStatusView cleanUp];
  batteryStatusView = self->_batteryStatusView;
  self->_batteryStatusView = 0;

  table = [(BTSDeviceConfigController *)self table];
  [table setTableHeaderView:0];
}

- (void)updateDisconnectButton:(BOOL)button
{
  buttonCopy = button;
  v5 = [(NSArray *)self->_controlGroupSpecifiers objectAtIndex:1];
  v6 = [(BTSDeviceConfigController *)self specifierForID:@"disconnect"];
  v7 = v6;
  if (buttonCopy)
  {
    if (!v6)
    {
      [(BTSDeviceConfigController *)self insertSpecifier:v5 atIndex:1];
    }
  }

  else if (v6)
  {
    [(BTSDeviceConfigController *)self removeSpecifier:v5];
  }

  if (_os_feature_enabled_impl())
  {
    v8 = [(NSArray *)self->_controlGroupSpecifiers objectAtIndex:3];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    isGuestPairingMode = [classicDevice isGuestPairingMode];

    if (buttonCopy)
    {
      if (isGuestPairingMode)
      {
        v12 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Inserting Upgrade Button", buf, 2u);
        }

        [(BTSDeviceConfigController *)self insertSpecifier:v8 atIndex:2];
      }
    }

    else if (isGuestPairingMode)
    {
      v13 = sharedBluetoothSettingsLogComponent(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Removing Upgrade Button", v15, 2u);
      }

      [(BTSDeviceConfigController *)self removeSpecifier:v8];
    }
  }

  headphoneObserver = [(BTSDeviceConfigController *)self headphoneObserver];
  [headphoneObserver reloadAll];
}

- (void)unpairButtonTapped:(id)tapped
{
  name = [(BluetoothDeviceProtocol *)self->_device name];
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CB8900] unpairDeviceAlertTitle:name];
  unpairDeviceAlertBody = [MEMORY[0x277CB8900] unpairDeviceAlertBody];
  v8 = [v5 alertControllerWithTitle:v6 message:unpairDeviceAlertBody preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  unpairDeviceAlertConfirm = [MEMORY[0x277CB8900] unpairDeviceAlertConfirm];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__BTSDeviceConfigController_unpairButtonTapped___block_invoke;
  v15[3] = &unk_2796AD708;
  v15[4] = self;
  v11 = [v9 actionWithTitle:unpairDeviceAlertConfirm style:2 handler:v15];

  v12 = MEMORY[0x277D750F8];
  unpairDeviceAlertCancel = [MEMORY[0x277CB8900] unpairDeviceAlertCancel];
  v14 = [v12 actionWithTitle:unpairDeviceAlertCancel style:0 handler:0];

  [v8 addAction:v11];
  [v8 addAction:v14];
  [(BTSDeviceConfigController *)self presentViewController:v8 animated:1 completion:0];
}

void __48__BTSDeviceConfigController_unpairButtonTapped___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) leDevice];
  v3 = [v2 underlyingDADevice];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v3 appAccessInfoMap];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    *&v5 = 138412290;
    v19 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [v3 appAccessInfoMap];
        v11 = [v10 objectForKeyedSubscript:v9];

        [v11 setState:1];
        [v3 setState:1];
        v12 = objc_alloc_init(MEMORY[0x277D04780]);
        [v12 setBundleID:@"com.apple.Preferences"];
        v21 = 0;
        [MEMORY[0x277D04780] setDeviceAppAccessInfo:v11 device:v3 session:v12 error:&v21];
        v13 = v21;
        v14 = v13;
        if (v13)
        {
          v15 = sharedBluetoothSettingsLogComponent(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v27 = v14;
            _os_log_error_impl(&dword_251143000, v15, OS_LOG_TYPE_ERROR, "Unpairing DADevice failed: %@", buf, 0xCu);
          }
        }

        v16 = sharedBluetoothSettingsLogComponent(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Unpaired DADevice", buf, 2u);
        }

        *(*(a1 + 32) + 1592) = 1;
        v17 = [*(a1 + 32) navigationController];
        v18 = [v17 popViewControllerAnimated:1];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)forgetDeviceTapped:(id)tapped
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
    {
      forgetDeviceAlertTitle = [MEMORY[0x277CB8900] forgetDeviceAlertTitle];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"FORGET_ALERT_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];
      name = [(BluetoothDeviceProtocol *)self->_device name];
      forgetDeviceAlertTitle = [v10 stringWithFormat:v12, name];
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    forgetDeviceAlertConfirm = [v14 localizedStringForKey:@"FORGET_DEVICE" value:&stru_286339F58 table:@"DeviceConfig"];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    forgetDeviceAlertCancel = [v16 localizedStringForKey:@"CANCEL" value:&stru_286339F58 table:@"DeviceConfig"];

    forgetDeviceAlertBody = 0;
LABEL_19:
    v26 = 1;
    goto LABEL_28;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  managedByDeviceAccess = [(BTSDeviceConfigController *)self managedByDeviceAccess];
  if (userInterfaceIdiom2 == 6)
  {
    if (managedByDeviceAccess)
    {
      forgetDeviceAlertTitle = [MEMORY[0x277CB8900] forgetDeviceAlertTitle];
    }

    else
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      forgetDeviceAlertTitle = [v19 localizedStringForKey:@"FORGET_SHEET_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];
    }

    if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
    {
      forgetDeviceAlertBody = [MEMORY[0x277CB8900] forgetDeviceAlertBody];
    }

    else
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"FORGET_ALERT_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];
      name2 = [(BluetoothDeviceProtocol *)self->_device name];
      forgetDeviceAlertBody = [v20 stringWithFormat:v22, name2];
    }

    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    forgetDeviceAlertConfirm = [v24 localizedStringForKey:@"FORGET_DEVICE" value:&stru_286339F58 table:@"DeviceConfig"];

    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    forgetDeviceAlertCancel = [v25 localizedStringForKey:@"CANCEL" value:&stru_286339F58 table:@"DeviceConfig"];

    goto LABEL_19;
  }

  if (managedByDeviceAccess)
  {
    forgetDeviceAlertTitle = [MEMORY[0x277CB8900] forgetDeviceAlertTitle];
  }

  else
  {
    forgetDeviceAlertTitle = 0;
  }

  if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    forgetDeviceAlertBody = [MEMORY[0x277CB8900] forgetDeviceAlertBody];
  }

  else
  {
    forgetDeviceAlertBody = 0;
  }

  if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    forgetDeviceAlertConfirm = [MEMORY[0x277CB8900] forgetDeviceAlertConfirm];
  }

  else
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    forgetDeviceAlertConfirm = [v27 localizedStringForKey:@"FORGET_DEVICE" value:&stru_286339F58 table:@"DeviceConfig"];
  }

  if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    forgetDeviceAlertCancel = [MEMORY[0x277CB8900] forgetDeviceAlertCancel];
  }

  else
  {
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    forgetDeviceAlertCancel = [v28 localizedStringForKey:@"CANCEL" value:&stru_286339F58 table:@"DeviceConfig"];
  }

  v26 = 0;
LABEL_28:
  v29 = [MEMORY[0x277D75110] alertControllerWithTitle:forgetDeviceAlertTitle message:forgetDeviceAlertBody preferredStyle:v26];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __48__BTSDeviceConfigController_forgetDeviceTapped___block_invoke;
  v32[3] = &unk_2796AD708;
  v32[4] = self;
  v30 = [MEMORY[0x277D750F8] actionWithTitle:forgetDeviceAlertConfirm style:2 handler:v32];
  v31 = [MEMORY[0x277D750F8] actionWithTitle:forgetDeviceAlertCancel style:0 handler:0];
  [v29 addAction:v30];
  [v29 addAction:v31];
  [(BTSDeviceConfigController *)self presentViewController:v29 animated:1 completion:0];
}

- (void)forgetDevice
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __41__BTSDeviceConfigController_forgetDevice__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  v3 = [v2 devicePairingEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CF3248] sharedInstance];
    [v4 setDevicePairingEnabled:1];

    do
    {
      v5 = [MEMORY[0x277CF3248] sharedInstance];
      v6 = [v5 devicePairingEnabled];
    }

    while (!v6);
    v8 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Device Pairing Disabled somehow, Enabled again", buf, 2u);
    }
  }

  v9 = [*(*(a1 + 32) + 1456) unpair];
  v10 = *(*(a1 + 32) + 1640);
  v11 = sharedBluetoothSettingsLogComponent(v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 == 1)
  {
    if (v12)
    {
      *v28 = 0;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Unpair from TLE", v28, 2u);
    }

    v13 = [*(a1 + 32) isiPad];
    if ((v13 & 1) != 0 || ([*(a1 + 32) view], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "size"), v16 = v15, objc_msgSend(*(a1 + 32), "view"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "size"), v19 = v18, v17, v14, v16 > v19))
    {
      v20 = sharedBluetoothSettingsLogComponent(v13);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Unpairing from TLE with side by side layout, jump to General", v27, 2u);
      }

      v21 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v22 = MEMORY[0x277CBEBC0];
      v23 = @"prefs:root=General";
    }

    else
    {
      v21 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v22 = MEMORY[0x277CBEBC0];
      v23 = @"prefs:root=ROOT";
    }

    v25 = [v22 URLWithString:v23];
    [v21 openSensitiveURL:v25 withOptions:0];
  }

  else
  {
    if (v12)
    {
      *v26 = 0;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Unpair from Regular", v26, 2u);
    }

    v21 = [*(a1 + 32) navigationController];
    v24 = [v21 popViewControllerAnimated:1];
  }
}

- (BOOL)isiCloudEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount != 0;

  return v4;
}

- (BOOL)isCurrentDeviceApplePencil:(int *)pencil
{
  leDevice = [(BTSDeviceConfigController *)self leDevice];
  v5 = leDevice;
  if (leDevice)
  {
    v6 = [leDevice isApplePencil:pencil];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)extraUnpairWarningMessage
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  magicPaired = [classicDevice magicPaired];

  if (magicPaired)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"FORGET_MAGIC_PAIRED_DEVICE_WARNING" value:&stru_286339F58 table:@"DeviceConfig"];
    name = [(BluetoothDeviceProtocol *)self->_device name];
    v9 = [v5 stringWithFormat:v7, name];
  }

  else
  {
    v12 = 0;
    v9 = 0;
    if ([(BTSDeviceConfigController *)self isCurrentDeviceApplePencil:&v12]&& v12 == 2)
    {
      if (!self->_didFetchFindMyStatusForPencil)
      {
        [(BTSDeviceConfigController *)self refreshFindMyStatusForPencilSynchronously];
      }

      if (self->_findMyEnabledForPencil)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v11 localizedStringForKey:@"FORGET_FINDMY_PAIRED_PENCIL_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B532"];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (void)disconnectDevice:(id)device
{
  if ([(BTSDeviceConfigController *)self canDisconnect])
  {
    [(BluetoothDeviceProtocol *)self->_device disconnect];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:18];
    [(BTSDeviceConfigController *)self updateDisconnectButton:0];

    [(BTSDeviceConfigController *)self dismissCurrentViewController];
  }
}

- (void)upgradeDevice:(id)device
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  isGuestPairingMode = [classicDevice isGuestPairingMode];

  if ((isGuestPairingMode & 1) == 0)
  {
    v9 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "Guest Pairing: Cannot Upgrade, Device is Guest Paired";
      v11 = &v13;
LABEL_10:
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }

LABEL_11:

    return;
  }

  canDisconnect = [(BTSDeviceConfigController *)self canDisconnect];
  if ((canDisconnect & 1) == 0)
  {
    v9 = sharedBluetoothSettingsLogComponent(canDisconnect);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v10 = "Guest Pairing: Cannot Upgrade, Device is not connected";
      v11 = &v12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice2 setGuestPairingMode:0];

  [(BTSDeviceConfigController *)self dismissCurrentViewController];
}

- (void)dismissCurrentViewController
{
  enteredFromTopLevelEntry = self->_enteredFromTopLevelEntry;
  v4 = sharedBluetoothSettingsLogComponent(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!enteredFromTopLevelEntry)
  {
    if (v5)
    {
      *v20 = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Disconnect from Regular", v20, 2u);
    }

    navigationController = [(BTSDeviceConfigController *)self navigationController];
    v19 = [navigationController popViewControllerAnimated:1];
    goto LABEL_12;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Disconnect from TLE", buf, 2u);
  }

  parentViewController = [(BTSDeviceConfigController *)self parentViewController];
  navigationController2 = [parentViewController navigationController];
  v8 = [navigationController2 popViewControllerAnimated:1];

  isiPad = [(BTSDeviceConfigController *)self isiPad];
  if ((isiPad & 1) != 0 || (-[BTSDeviceConfigController view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 size], v12 = v11, -[BTSDeviceConfigController view](self, "view"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "size"), v15 = v14, v13, v10, v12 > v15))
  {
    v16 = sharedBluetoothSettingsLogComponent(isiPad);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Disconnecting from TLE with side by side layout, jump to General", v21, 2u);
    }

    navigationController = [MEMORY[0x277CC1E80] defaultWorkspace];
    v18 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General"];
    [navigationController openSensitiveURL:v18 withOptions:0];

LABEL_12:
  }
}

- (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (BOOL)isWatch
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"Watch"];

  return v3;
}

- (id)leDevice
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = self->_device;
  }

  else
  {
    v9 = *MEMORY[0x277D3FD20];
    userInfo = [*(&self->super.super.super.super.super.isa + v9) userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"ctkd-device"];

    userInfo2 = [*(&self->super.super.super.super.super.isa + v9) userInfo];
    v13 = userInfo2;
    if (v11)
    {
      v14 = @"ctkd-device";
    }

    else
    {
      v14 = @"linked-le-device";
    }

    v8 = [userInfo2 objectForKeyedSubscript:v14];
  }

  return v8;
}

- (BOOL)managedByDeviceAccess
{
  leDevice = [(BTSDeviceConfigController *)self leDevice];
  v3 = leDevice;
  if (leDevice)
  {
    isManagedByDeviceAccess = [leDevice isManagedByDeviceAccess];
  }

  else
  {
    isManagedByDeviceAccess = 0;
  }

  return isManagedByDeviceAccess;
}

- (void)deviceConnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  if ([address isEqualToString:identifier])
  {
    dismissed = self->_dismissed;

    if (dismissed)
    {
      goto LABEL_8;
    }

    address = [(BTSDeviceConfigController *)self forgetButtonSpecifier];
    if ([(BTSDeviceConfigController *)self canUnpair])
    {
      [address setProperty:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277D3FF38]];
      [(BTSDeviceConfigController *)self reloadSpecifier:address];
    }

    self->_devicePendingCTKDConnection = 0;
    [(BTSDeviceConfigController *)self removeSpecifierID:@"CLASSIC_SETUP_TITLE_ID"];
    [(BTSDeviceConfigController *)self removeSpecifierID:@"CLASSIC_SETUP_BODY_ID"];
    [(BTSDeviceConfigController *)self removeSpecifierID:@"CLASSIC_SETUP_BUTTON_ID"];
    [(BTSDeviceConfigController *)self updateDisconnectButton:[(BTSDeviceConfigController *)self canDisconnect]];
  }

  else
  {
  }

LABEL_8:
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  if ([address isEqualToString:identifier])
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      v8 = [(BTSDeviceConfigController *)self updateDisconnectButton:[(BTSDeviceConfigController *)self canDisconnect]];
    }
  }

  else
  {
  }

  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Case Sound: device disconnected, releasing case connection", v10, 2u);
  }

  [(BTSDeviceConfigController *)self releaseCaseConnection];
}

- (void)caseSoundChangedHandler:(id)handler
{
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Case Sound: caseSoundChangedHandler, BTNotificationForSpeakerSettingChange", v5, 2u);
  }

  [(BTSDeviceConfigController *)self getSoundMode];
}

- (void)deviceSupportsSync:(id)sync
{
  v21 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  object = [syncCopy object];
  v7 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    name = [syncCopy name];
    name2 = [object name];
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = name2;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "%@ received %@ for device %@", &v15, 0x20u);
  }

  if (!self->_syncSettings.supported)
  {
    address = [object address];
    identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
    if ([address isEqualToString:identifier])
    {
      dismissed = self->_dismissed;

      if (!dismissed)
      {
        [(BTSDeviceConfigController *)self loadSyncSettings];
        if (!self->_syncSettings.supported)
        {
          [BTSDeviceConfigController deviceSupportsSync:];
        }

        if (self->_supportsMAP)
        {
          v14 = @"MAP_SWITCH";
        }

        else
        {
          v14 = @"FORGET_BUTTON";
        }

        [(BTSDeviceConfigController *)self insertContiguousSpecifiers:self->_syncContactsSpecifiers afterSpecifierID:v14 animated:1];
        if (self->_syncSettings.enabled)
        {
          [(BTSDeviceConfigController *)self insertContiguousSpecifiers:self->_syncGroupsSpecifiers afterSpecifierID:@"SYNC_SWITCH" animated:1];
        }
      }
    }

    else
    {
    }
  }
}

- (void)deviceSupportsMAP:(id)p
{
  v24 = *MEMORY[0x277D85DE8];
  pCopy = p;
  object = [pCopy object];
  v7 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    name = [pCopy name];
    name2 = [object name];
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "%@ received %@ for device %@", &v18, 0x20u);
  }

  if (!self->_supportsMAP)
  {
    address = [object address];
    identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
    if ([address isEqualToString:identifier])
    {
      dismissed = self->_dismissed;

      if (!dismissed)
      {
        self->_supportsMAP = 1;
        v14 = [object getServiceSetting:512 key:@"BT_KEY_MAP_ENABLED"];
        self->_messagingEnabled = [v14 isEqualToString:@"BT_VALUE_MAP_ENABLED"];

        v16 = sharedBluetoothSettingsLogComponent(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          messagingEnabled = self->_messagingEnabled;
          v18 = 67109120;
          LODWORD(v19) = messagingEnabled;
          _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "After calling getServiceSetting, MAP messaging is set to: %d", &v18, 8u);
        }

        [(BTSDeviceConfigController *)self insertContiguousSpecifiers:self->_messagingSpecifiers afterSpecifierID:@"FORGET_BUTTON" animated:1];
      }
    }

    else
    {
    }
  }
}

- (void)deviceUpdated:(id)updated
{
  object = [updated object];
  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  if ([address isEqualToString:identifier])
  {
    dismissed = self->_dismissed;

    if (dismissed)
    {
      goto LABEL_10;
    }

    address = [object productName];
    if ([(BTSDeviceConfigController *)self nicknameEnabled])
    {
      name = [object name];

      address = name;
    }

    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if (classicDevice)
    {
      v9 = classicDevice;
      classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      magicPaired = [classicDevice2 magicPaired];

      if (magicPaired)
      {
        name2 = [object name];

        address = name2;
      }
    }

    [(BTSDeviceConfigController *)self setTitle:address];
    identifier = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [identifier localizedStringForKey:@"DEVICE_NAME_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];
    [(BTSDeviceConfigController *)self reloadSpecifierID:v13];
  }

LABEL_10:
}

- (void)listeningModeUpdatedHandler:(id)handler
{
  if (self->_deviceAnalytics)
  {
    userInfo = [handler userInfo];
    v4 = [userInfo objectForKey:@"ListeningModes"];

    if (v4)
    {
      v5 = [userInfo objectForKeyedSubscript:@"ListeningModes"];
      unsignedIntValue = [v5 unsignedIntValue];

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:31 value:unsignedIntValue featureValueString:0];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:30];
    }

    else
    {
      v7 = [userInfo objectForKeyedSubscript:@"ListeningModesValueOnly"];
      unsignedIntValue2 = [v7 unsignedIntValue];

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:31 value:unsignedIntValue2 featureValueString:0];
    }
  }
}

- (void)listeningModeUpdatedV2Handler:(id)handler
{
  if (self->_deviceAnalytics)
  {
    userInfo = [handler userInfo];
    v4 = [userInfo objectForKey:@"ListeningModesV2"];

    if (v4)
    {
      v5 = [userInfo objectForKeyedSubscript:@"ListeningModesV2"];
      unsignedIntValue = [v5 unsignedIntValue];

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:33 value:unsignedIntValue featureValueString:0];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:32];
    }

    else
    {
      v7 = [userInfo objectForKeyedSubscript:@"ListeningModesV2ValueOnly"];
      unsignedIntValue2 = [v7 unsignedIntValue];

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:33 value:unsignedIntValue2 featureValueString:0];
    }
  }
}

- (void)pressAndHoldModeSelectedHandler:(id)handler
{
  if (self->_deviceAnalytics)
  {
    userInfo = [handler userInfo];
    v4 = [userInfo objectForKeyedSubscript:@"pressHoldRightBudValue"];
    unsignedIntValue = [v4 unsignedIntValue];

    v6 = [userInfo objectForKeyedSubscript:@"pressHoldLeftBudValue"];
    unsignedIntValue2 = [v6 unsignedIntValue];

    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:44 value:unsignedIntValue featureValueString:0];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:43 value:unsignedIntValue2 featureValueString:0];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:42];
  }
}

- (void)cycleBetweenLeftBudValueUpdated:(id)updated
{
  if (self->_deviceAnalytics)
  {
    userInfo = [updated userInfo];
    v4 = [userInfo objectForKeyedSubscript:@"cycleBetweenLeftBudValue"];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:9 value:0 featureValueString:v4];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:9];
  }
}

- (void)cycleBetweenRightBudValueUpdated:(id)updated
{
  if (self->_deviceAnalytics)
  {
    userInfo = [updated userInfo];
    v4 = [userInfo objectForKeyedSubscript:@"cycleBetweenRightBudValue"];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:11 value:0 featureValueString:v4];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:11];
  }
}

- (void)cycleBetweenV2LeftBudValueUpdated:(id)updated
{
  if (self->_deviceAnalytics)
  {
    userInfo = [updated userInfo];
    v4 = [userInfo objectForKeyedSubscript:@"cycleBetweenV2LeftBudValue"];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:13 value:0 featureValueString:v4];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:12];
  }
}

- (void)cycleBetweenV2RightBudValueUpdated:(id)updated
{
  if (self->_deviceAnalytics)
  {
    userInfo = [updated userInfo];
    v4 = [userInfo objectForKeyedSubscript:@"cycleBetweenV2RightBudValue"];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:15 value:0 featureValueString:v4];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:14];
  }
}

- (void)spatialProfileTappedHandler:(id)handler
{
  deviceAnalytics = self->_deviceAnalytics;
  if (deviceAnalytics)
  {
    [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:50];
  }
}

- (void)settingsChangedHandler:(id)handler
{
  object = [handler object];
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v6 = +[HPSDevice deviceKey];
  v7 = [userInfo objectForKeyedSubscript:v6];

  headphoneDevice = [v7 headphoneDevice];

  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  if ([address isEqualToString:identifier] && !self->_dismissed)
  {

    if (headphoneDevice)
    {
      v12 = sharedBluetoothSettingsLogComponent(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Headphone Configs: settingsChangedHandler reload!", v13, 2u);
      }

      [(BTSDeviceConfigController *)self reloadSpecifierID:@"LISTENING_MODE_ID"];
      [(BTSDeviceConfigController *)self reloadSpecifierID:@"SPEECH_DETECTION_ID"];
      [(BTSDeviceConfigController *)self reloadSpecifierID:@"ADAPTIVE_VOLUME_ID"];
    }
  }

  else
  {
  }
}

- (void)deviceRemoved:(id)removed
{
  object = [removed object];
  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  if ([address isEqualToString:identifier])
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      self->_dismissed = 1;
      enteredFromTopLevelEntry = self->_enteredFromTopLevelEntry;
      v10 = sharedBluetoothSettingsLogComponent(v8);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (enteredFromTopLevelEntry)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Device Removed while entered from TLE", buf, 2u);
        }

        isiPad = [(BTSDeviceConfigController *)self isiPad];
        if ((isiPad & 1) != 0 || (-[BTSDeviceConfigController view](self, "view"), v13 = objc_claimAutoreleasedReturnValue(), [v13 size], v15 = v14, -[BTSDeviceConfigController view](self, "view"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "size"), v18 = v17, v16, v13, v15 > v18))
        {
          v19 = sharedBluetoothSettingsLogComponent(isiPad);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&dword_251143000, v19, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Device Removed from TLE with side by side layout, jump to General", v26, 2u);
          }

          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v21 = MEMORY[0x277CBEBC0];
          v22 = @"prefs:root=General";
        }

        else
        {
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v21 = MEMORY[0x277CBEBC0];
          v22 = @"prefs:root=ROOT";
        }

        v24 = [v21 URLWithString:v22];
        [defaultWorkspace openSensitiveURL:v24 withOptions:0];
      }

      else
      {
        if (v11)
        {
          *v25 = 0;
          _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Headphone Configs: Device Removed from Regular", v25, 2u);
        }

        defaultWorkspace = [(BTSDeviceConfigController *)self navigationController];
        v23 = [defaultWorkspace popViewControllerAnimated:1];
      }
    }
  }

  else
  {
  }
}

- (void)deviceAccessDeviceLost:(id)lost
{
  v17 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  if (!self->_dismissed && [(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    leDevice = [(BTSDeviceConfigController *)self leDevice];
    if (leDevice)
    {
      object = [lostCopy object];
      underlyingDADevice = [leDevice underlyingDADevice];
      identifier = [underlyingDADevice identifier];
      v9 = [identifier isEqualToString:object];

      if (v9)
      {
        v11 = sharedBluetoothSettingsLogComponent(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          underlyingDADevice2 = [leDevice underlyingDADevice];
          v15 = 138412290;
          v16 = underlyingDADevice2;
          _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Headphone Configs: DADevice Lost, popping to previous page. %@", &v15, 0xCu);
        }

        self->_dismissed = 1;
        navigationController = [(BTSDeviceConfigController *)self navigationController];
        v14 = [navigationController popViewControllerAnimated:1];
      }
    }
  }
}

- (void)allowClassicConnection
{
  leDevice = [(BTSDeviceConfigController *)self leDevice];
  if (leDevice)
  {
    v7 = leDevice;
    [leDevice setDenyIncomingClassicConnection:0];
    [(BluetoothDeviceProtocol *)self->_device connect];
    self->_devicePendingCTKDConnection = 1;
    v4 = [(BTSDeviceConfigController *)self specifierForID:@"CLASSIC_SETUP_BUTTON_ID"];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CLASSIC_SETUP_BUTTON_CONNECTING" value:&stru_286339F58 table:@"DeviceConfig"];
    [v4 setName:v6];

    [v4 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    [(BTSDeviceConfigController *)self reloadCellForSpecifierID:@"CLASSIC_SETUP_BUTTON_ID"];

    leDevice = v7;
  }
}

- (void)setMessagesEnabled:(id)enabled specifier:(id)specifier
{
  v18 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  if (self->_messagingEnabled != [enabledCopy BOOLValue])
  {
    bOOLValue = [enabledCopy BOOLValue];
    self->_messagingEnabled = bOOLValue;
    v7 = sharedBluetoothSettingsLogComponent(bOOLValue);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      messagingEnabled = self->_messagingEnabled;
      v16 = 67109120;
      LODWORD(v17) = messagingEnabled;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "User wants MAP set to: %d", &v16, 8u);
    }

    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v10 = classicDevice;
    if (self->_messagingEnabled)
    {
      v11 = @"BT_VALUE_MAP_ENABLED";
    }

    else
    {
      v11 = @"BT_VALUE_MAP_DISABLED";
    }

    [classicDevice setServiceSetting:512 key:@"BT_KEY_MAP_ENABLED" value:v11];

    v13 = sharedBluetoothSettingsLogComponent(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v15 = [classicDevice2 getServiceSetting:512 key:@"BT_KEY_MAP_ENABLED"];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "After setting MAP, result is: %@", &v16, 0xCu);
    }
  }
}

- (void)setContactSync:(id)sync specifier:(id)specifier
{
  syncCopy = sync;
  if (self->_syncSettings.enabled != [syncCopy BOOLValue])
  {
    self->_syncSettings.enabled = [syncCopy BOOLValue];
    self->_syncSettings.userPermissionGranted = 1;
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    [classicDevice setSyncSettings:*&self->_syncSettings.supported | (self->_syncSettings.userPermissionGranted << 32)];

    syncGroupsSpecifiers = self->_syncGroupsSpecifiers;
    if (self->_syncSettings.enabled)
    {
      [(BTSDeviceConfigController *)self insertContiguousSpecifiers:syncGroupsSpecifiers afterSpecifierID:@"SYNC_SWITCH" animated:1];
    }

    else
    {
      [(BTSDeviceConfigController *)self removeContiguousSpecifiers:syncGroupsSpecifiers animated:1];
    }
  }
}

- (id)userSelectedDeviceType
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getUserSelectedDeviceType = [classicDevice getUserSelectedDeviceType];

  if (getUserSelectedDeviceType <= 5)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:dword_251217BA0[getUserSelectedDeviceType]];
  }

  return v4;
}

- (void)setUserSelectedDeviceType:(id)type
{
  typeCopy = type;
  intValue = [typeCopy intValue];
  if (intValue <= 2)
  {
    if (intValue == 1)
    {
      classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v7 = classicDevice;
      v8 = 1;
    }

    else
    {
      if (intValue != 2)
      {
        goto LABEL_13;
      }

      classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v7 = classicDevice;
      v8 = 2;
    }

LABEL_12:
    v9 = [classicDevice setUserSelectedDeviceType:v8];

    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  switch(intValue)
  {
    case 3:
      classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v7 = classicDevice;
      v8 = 3;
      goto LABEL_12;
    case 4:
      classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v7 = classicDevice;
      v8 = 4;
      goto LABEL_12;
    case 5:
      classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v7 = classicDevice;
      v8 = 5;
      goto LABEL_12;
  }

LABEL_13:
  v10 = sharedBluetoothSettingsLogComponent(intValue);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [BTSDeviceConfigController setUserSelectedDeviceType:typeCopy];
  }

LABEL_16:
}

- (id)automaticAnswerCallsEnabled
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  autoAnswerMode = [classicDevice autoAnswerMode];

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:35 value:autoAnswerMode featureValueString:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:autoAnswerMode == 1];

  return v5;
}

- (void)setAutomaticAnswerCallsEnabled:(id)enabled
{
  deviceAnalytics = self->_deviceAnalytics;
  enabledCopy = enabled;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:34];
  bOOLValue = [enabledCopy BOOLValue];

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:35 value:bOOLValue featureValueString:0];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v9 = classicDevice;
  if (bOOLValue)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [classicDevice setAutoAnswerMode:v8];
}

- (id)doubleTapAction
{
  v2 = MEMORY[0x277CCABB0];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v4 = [v2 numberWithInt:{objc_msgSend(classicDevice, "doubleTapAction")}];

  return v4;
}

- (void)setdoubleTapAction:(id)action
{
  deviceAnalytics = self->_deviceAnalytics;
  actionCopy = action;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:19];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  intValue = [actionCopy intValue];

  [classicDevice setDoubleTapAction:intValue];
}

- (id)doubleTapActionLeft
{
  v8 = 1;
  v9 = 1;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice doubleTapActionEx:&v9 rightAction:&v8];

  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BTSDeviceConfigController *)&v9 doubleTapActionLeft];
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:20 value:v9 featureValueString:0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v9];

  return v6;
}

- (void)setdoubleTapActionLeft:(id)left
{
  v10 = *MEMORY[0x277D85DE8];
  leftCopy = left;
  v5 = sharedBluetoothSettingsLogComponent(leftCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [leftCopy intValue];
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Set Double tap action left : %d", v9, 8u);
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:19];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](self->_deviceAnalytics, "updateFeatureValue:value:featureValueString:", 20, [leftCopy intValue], 0);
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  intValue = [leftCopy intValue];
  doubleTapActionRight = [(BTSDeviceConfigController *)self doubleTapActionRight];
  [classicDevice setDoubleTapActionEx:intValue rightAction:{objc_msgSend(doubleTapActionRight, "intValue")}];
}

- (id)doubleTapActionRight
{
  v8 = 1;
  v9 = 1;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice doubleTapActionEx:&v9 rightAction:&v8];

  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BTSDeviceConfigController *)&v8 doubleTapActionRight];
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:21 value:v8 featureValueString:0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v8];

  return v6;
}

- (void)setdoubleTapActionRight:(id)right
{
  v9 = *MEMORY[0x277D85DE8];
  rightCopy = right;
  v5 = sharedBluetoothSettingsLogComponent(rightCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [rightCopy intValue];
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Set Double tap action right : %d", v8, 8u);
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:19];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](self->_deviceAnalytics, "updateFeatureValue:value:featureValueString:", 21, [rightCopy intValue], 0);
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  doubleTapActionLeft = [(BTSDeviceConfigController *)self doubleTapActionLeft];
  [classicDevice setDoubleTapActionEx:objc_msgSend(doubleTapActionLeft rightAction:{"intValue"), objc_msgSend(rightCopy, "intValue")}];
}

- (id)inEarDetectEnabled
{
  deviceAnalytics = self->_deviceAnalytics;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([classicDevice inEarDetectEnabled])
  {
    v5 = @"On";
  }

  else
  {
    v5 = @"Off";
  }

  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureValue:29 value:0 featureValueString:v5];

  v6 = MEMORY[0x277CCABB0];
  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v8 = [v6 numberWithBool:{objc_msgSend(classicDevice2, "inEarDetectEnabled")}];

  return v8;
}

- (void)setInEarDetectEnabled:(id)enabled
{
  deviceAnalytics = self->_deviceAnalytics;
  enabledCopy = enabled;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:28];
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue)
  {
    v7 = @"On";
  }

  else
  {
    v7 = @"Off";
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:29 value:0 featureValueString:v7];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice setInEarDetectEnabled:bOOLValue];
}

- (void)setSoundProfileAllowed:(id)allowed
{
  bOOLValue = [allowed BOOLValue];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice setDeviceSoundProfileAllowed:bOOLValue];
}

- (id)soundProfileAllowed
{
  v2 = MEMORY[0x277CCABB0];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v4 = [v2 numberWithBool:{objc_msgSend(classicDevice, "getDeviceSoundProfileAllowed")}];

  return v4;
}

- (id)getEndCallMode
{
  v28 = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getCallManagementConfig = [classicDevice getCallManagementConfig];
  v5 = HIDWORD(getCallManagementConfig) & 0xFFFFFF;

  v7 = sharedBluetoothSettingsLogComponent(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (getCallManagementConfig == 1)
  {
    if (v8)
    {
      v12 = BYTE3(getCallManagementConfig);
      v18 = 67110144;
      v19 = 1;
      LODWORD(getCallManagementConfig) = BYTE4(getCallManagementConfig);
      v20 = 1024;
      v21 = v12;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = BYTE5(getCallManagementConfig);
      v26 = 1024;
      v27 = BYTE6(getCallManagementConfig);
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Call Controls: getEndCallMode, version: %u, End Call Status: %d, End Call Config: %d, Mute Call Status: %d, Mute Call Config: %d", &v18, 0x20u);
    }

    else
    {
      LODWORD(getCallManagementConfig) = BYTE4(getCallManagementConfig);
    }

    if (getCallManagementConfig != 4 && getCallManagementConfig >= 2)
    {
      v13 = v5;
    }

    else
    {
      v13 = 2;
    }
  }

  else if (getCallManagementConfig)
  {
    if (v8)
    {
      v18 = 67109120;
      v19 = getCallManagementConfig;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Call Controls: getEndCallMode invalid version: %u", &v18, 8u);
    }

    v13 = 0;
  }

  else
  {
    v9 = getCallManagementConfig >> 16;
    if (v8)
    {
      v10 = BYTE1(getCallManagementConfig);
      v11 = BYTE2(getCallManagementConfig);
      v18 = 67109632;
      v19 = 0;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "End Call: Get Config, version: %u, Status: %d, Mode: %d", &v18, 0x14u);
    }

    else
    {
      v11 = BYTE2(getCallManagementConfig);
    }

    if (v11 != 4 && v11 >= 2)
    {
      v13 = v9;
    }

    else
    {
      v13 = 2;
    }
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:24 value:v5 featureValueString:0];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v13];

  return v16;
}

- (void)setEndCallMode:(id)mode
{
  v31 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:23];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getCallManagementConfig = [classicDevice getCallManagementConfig];

  v8 = getCallManagementConfig;
  if (getCallManagementConfig == 1)
  {
    intValue = [modeCopy intValue];
    LOBYTE(v9) = intValue;
    v15 = intValue;
    if (intValue == 3)
    {
      v16 = 2;
    }

    else
    {
      v16 = BYTE6(getCallManagementConfig);
    }

    if (intValue == 2)
    {
      v17 = 3;
    }

    else
    {
      v17 = v16;
    }

    v18 = sharedBluetoothSettingsLogComponent(intValue);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67110144;
      v22 = 1;
      v23 = 1024;
      v24 = BYTE3(getCallManagementConfig);
      v25 = 1024;
      v26 = v15;
      v27 = 1024;
      v28 = BYTE5(getCallManagementConfig);
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "Call Controls: setEndCallMode, version: %u, End Call Status: %d, End Call Config: %d, Mute Call Status: %d, Mute Call Config: %d", &v21, 0x20u);
    }

    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    [classicDevice2 setCallConfig:getCallManagementConfig & 0xFF0000000000 | (v17 << 48) | (v15 << 32) | getCallManagementConfig];

    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:39 value:v17 featureValueString:0];
  }

  else
  {
    v9 = HIDWORD(getCallManagementConfig) & 0xFFFFFF;
    if (getCallManagementConfig)
    {
      v20 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109120;
        v22 = v8;
        _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Call Controls: setEndCallMode invalid version: %u", &v21, 8u);
      }
    }

    else
    {
      intValue2 = [modeCopy intValue];
      v11 = intValue2;
      v12 = sharedBluetoothSettingsLogComponent(intValue2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109632;
        v22 = 0;
        v23 = 1024;
        v24 = BYTE1(getCallManagementConfig);
        v25 = 1024;
        v26 = v11;
        _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "End Call: Set Config, version: %u, Status: %d, Mode: %d", &v21, 0x14u);
      }

      classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      [classicDevice3 setCallConfig:getCallManagementConfig & 0xFFFFFFFF00FFFFLL | (v11 << 16)];
    }
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:24 value:v9 featureValueString:0];
}

- (id)getMuteCallMode
{
  v22 = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getCallManagementConfig = [classicDevice getCallManagementConfig];

  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67110144;
    v13[1] = getCallManagementConfig;
    v14 = 1024;
    v15 = BYTE3(getCallManagementConfig);
    v16 = 1024;
    v17 = BYTE4(getCallManagementConfig);
    v18 = 1024;
    v19 = BYTE5(getCallManagementConfig);
    v20 = 1024;
    v21 = BYTE6(getCallManagementConfig);
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Call Controls: getMuteCallMode, version: %u, End Call Status: %d, End Call Config: %d, Mute Call Status: %d, Mute Call Config: %d", v13, 0x20u);
  }

  v8 = BYTE6(getCallManagementConfig) < 2u || BYTE6(getCallManagementConfig) == 4;
  deviceAnalytics = self->_deviceAnalytics;
  if (getCallManagementConfig == 1 && v8)
  {
    v10 = 3;
  }

  else
  {
    v10 = BYTE6(getCallManagementConfig);
  }

  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureValue:39 value:v10 featureValueString:0];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];

  return v11;
}

- (void)setMuteCallMode:(id)mode
{
  v23 = *MEMORY[0x277D85DE8];
  deviceAnalytics = self->_deviceAnalytics;
  modeCopy = mode;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:38];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getCallManagementConfig = [classicDevice getCallManagementConfig];

  intValue = [modeCopy intValue];
  if (getCallManagementConfig == 1)
  {
    v10 = HIDWORD(getCallManagementConfig) & 0xFFFFFF;
    if (intValue == 3)
    {
      LOBYTE(v10) = 2;
    }

    if (intValue == 2)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    v12 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67110144;
      v14[1] = 1;
      v15 = 1024;
      v16 = BYTE3(getCallManagementConfig);
      v17 = 1024;
      v18 = v11;
      v19 = 1024;
      v20 = BYTE5(getCallManagementConfig);
      v21 = 1024;
      v22 = intValue;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Call Controls: setMuteCallMode, version: %u, End Call Status: %d, End Call Config: %d, Mute Call Status: %d, Mute Call Config: %d", v14, 0x20u);
    }

    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    [classicDevice2 setCallConfig:getCallManagementConfig & 0xFF0000000000 | (intValue << 48) & 0xFFFFFFFFFFFFFFLL | (v11 << 32) & 0xFFFFFFFFFFFFFFLL | getCallManagementConfig & 0xFFFFFF00 | 1];

    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:24 value:v11 featureValueString:0];
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:39 value:intValue featureValueString:0];
  }
}

- (id)micMode
{
  deviceAnalytics = self->_deviceAnalytics;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](deviceAnalytics, "updateFeatureValue:value:featureValueString:", 37, [classicDevice micMode], 0);

  v5 = MEMORY[0x277CCABB0];
  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v7 = [v5 numberWithInt:{objc_msgSend(classicDevice2, "micMode")}];

  return v7;
}

- (void)setMicMode:(id)mode
{
  deviceAnalytics = self->_deviceAnalytics;
  modeCopy = mode;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:36];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](self->_deviceAnalytics, "updateFeatureValue:value:featureValueString:", 37, [modeCopy intValue], 0);
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  intValue = [modeCopy intValue];

  [classicDevice setMicMode:intValue];
}

- (id)smartRouteMode
{
  deviceAnalytics = self->_deviceAnalytics;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](deviceAnalytics, "updateFeatureValue:value:featureValueString:", 49, [classicDevice smartRouteMode], 0);

  v5 = MEMORY[0x277CCABB0];
  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v7 = [v5 numberWithInt:{objc_msgSend(classicDevice2, "smartRouteMode")}];

  return v7;
}

- (void)setSmartRouteMode:(id)mode
{
  deviceAnalytics = self->_deviceAnalytics;
  modeCopy = mode;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:48];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice setSmartRouteMode:{objc_msgSend(modeCopy, "intValue")}];

  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](self->_deviceAnalytics, "updateFeatureValue:value:featureValueString:", 49, [modeCopy intValue], 0);
  LODWORD(classicDevice) = [modeCopy intValue];

  if (classicDevice == 2)
  {

    [(BTSDeviceConfigController *)self sendSmartRoutingDisabledTipEvent];
  }
}

- (void)sendSmartRoutingDisabledTipEvent
{
  discoverabilitySignal = [MEMORY[0x277CF1B58] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v3 = objc_alloc(MEMORY[0x277CF1938]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [v3 initWithIdentifier:@"com.apple.bluetooth.smartrouting" bundleID:bundleIdentifier context:@"off"];

  [source sendEvent:v6];
}

- (id)doubleTapCapability
{
  v2 = MEMORY[0x277CCABB0];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v4 = [v2 numberWithInt:{objc_msgSend(classicDevice, "doubleTapCapability")}];

  return v4;
}

- (id)clickHoldModeLeft
{
  v5 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice clickHoldMode:&v5 + 4 rightAction:&v5];

  v3 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v5)];

  return v3;
}

- (id)clickHoldModeRight
{
  v5 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice clickHoldMode:&v5 + 4 rightAction:&v5];

  v3 = [MEMORY[0x277CCABB0] numberWithInt:v5];

  return v3;
}

- (void)setGestureMode:(id)mode specifier:(id)specifier
{
  modeCopy = mode;
  specifierCopy = specifier;
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:42];
  v19 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice clickHoldMode:&v19 + 4 rightAction:&v19];

  identifier = [specifierCopy identifier];
  v10 = [identifier isEqualToString:@"LEFT_ID"];

  if (v10)
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    intValue = [modeCopy intValue];
    intValue2 = v19;
    v14 = classicDevice2;
LABEL_5:
    [v14 setClickHoldMode:intValue rightMode:intValue2];
    goto LABEL_8;
  }

  identifier2 = [specifierCopy identifier];
  v16 = [identifier2 isEqualToString:@"RIGHT_ID"];

  if (v16)
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v18 = HIDWORD(v19);
    intValue2 = [modeCopy intValue];
    v14 = classicDevice2;
    intValue = v18;
    goto LABEL_5;
  }

  classicDevice2 = sharedBluetoothSettingsLogComponent(v17);
  if (os_log_type_enabled(classicDevice2, OS_LOG_TYPE_ERROR))
  {
    [BTSDeviceConfigController setGestureMode:? specifier:?];
  }

LABEL_8:
}

- (int)listeningMode
{
  v2 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "listeningMode : getter", v4, 2u);
  }

  return 0;
}

- (id)sealDetect
{
  v2 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [BTSDeviceConfigController sealDetect];
  }

  return 0;
}

- (void)sealDetectSet:(id)set
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [BTSDeviceConfigController sealDetectSet:];
  }
}

- (void)presentFitTestController:(id)controller
{
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:22];
  v13 = objc_alloc_init(BTSFitTestWelcomeController);
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v5 = +[HPSDevice deviceKey];
  v6 = [userInfo objectForKeyedSubscript:v5];
  [(BTSFitTestWelcomeController *)v13 setCurrentDevice:v6];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFitTest];
  navigationItem = [(BTSFitTestWelcomeController *)v13 navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

  v9 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v13];
  navigationBar = [v9 navigationBar];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [navigationBar setBackgroundColor:systemBackgroundColor];

  navigationBar2 = [v9 navigationBar];
  [navigationBar2 _setHidesShadow:1];

  [v9 setModalPresentationStyle:2];
  [(BTSDeviceConfigController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)presentImportantMsgLink
{
  v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://support.apple.com/kb/HT213102"];
  if (v2)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  else
  {
    mEMORY[0x277D75128] = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(mEMORY[0x277D75128], OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController presentImportantMsgLink];
    }
  }
}

- (void)presentAssetLocationLink
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(BTSDeviceConfigController *)self getSystemSerialNumber:0];
  v4 = [v2 stringWithFormat:@"prefs:root=INTERNAL_SETTINGS&path=AccessoriesFirmwareUpdate/%@", v3];

  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  if (v5)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:v5 withOptions:0];
  }

  else
  {
    defaultWorkspace = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(defaultWorkspace, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController presentAssetLocationLink];
    }
  }
}

- (void)presentFindMyLink
{
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:54];
  if (!self->_findMyUrl)
  {
    [(BTSDeviceConfigController *)self getFindMyUrl];
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_findMyUrl];
  if (v3)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v3 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  else
  {
    mEMORY[0x277D75128] = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(mEMORY[0x277D75128], OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController presentImportantMsgLink];
    }
  }
}

- (void)presentSpatialTutorialController:(id)controller
{
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:51];
  v53 = 3;
  v54 = 3;
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v5 = +[HPSDevice deviceKey];
  v6 = [userInfo objectForKeyedSubscript:v5];

  classicDevice = [v6 classicDevice];
  [classicDevice inEarStatusPrimary:&v54 secondary:&v53];

  v9 = v53;
  v8 = v54;
  classicDevice2 = [v6 classicDevice];
  if ([classicDevice2 productId] == 8215)
  {

LABEL_3:
    v11 = [[BTSpatialTutorialViewController alloc] initWithDevice:v6];
    [(BTSDeviceConfigController *)self presentViewController:v11 animated:1 completion:0];
    goto LABEL_23;
  }

  v12 = v8 | v9;
  classicDevice3 = [v6 classicDevice];
  productId = [classicDevice3 productId];

  if (!v12 || productId == 8229)
  {
    goto LABEL_3;
  }

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v15 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig"];

  classicDevice4 = [v6 classicDevice];
  productId2 = [classicDevice4 productId];

  if (productId2 == 8202)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SPATIAL_TUTORIAL_NOT_ON_HEAD_WARNING" value:&stru_286339F58 table:@"DeviceConfig-b515"];

    v11 = v19;
  }

  classicDevice5 = [v6 classicDevice];
  productId3 = [classicDevice5 productId];

  if (productId3 == 8223)
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SPATIAL_TUTORIAL_NOT_ON_HEAD_WARNING" value:&stru_286339F58 table:@"DeviceConfig-b515"];

    v11 = v23;
  }

  classicDevice6 = [v6 classicDevice];
  productId4 = [classicDevice6 productId];

  if (productId4 == 8210)
  {
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v11 = v27;
  }

  classicDevice7 = [v6 classicDevice];
  productId5 = [classicDevice7 productId];

  if (productId5 == 8239)
  {
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v11 = v31;
  }

  classicDevice8 = [v6 classicDevice];
  productId6 = [classicDevice8 productId];

  if (productId6 == 8221)
  {
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

    v11 = v35;
  }

  classicDevice9 = [v6 classicDevice];
  productId7 = [classicDevice9 productId];

  if (productId7 == 8211)
  {
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B688"];

    v11 = v39;
  }

  classicDevice10 = [v6 classicDevice];
  productId8 = [classicDevice10 productId];

  if (productId8 == 8212)
  {
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B698"];

    v11 = v43;
  }

  classicDevice11 = [v6 classicDevice];
  productId9 = [classicDevice11 productId];

  if (productId9 == 8228)
  {
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v46 localizedStringForKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING" value:&stru_286339F58 table:@"DeviceConfig-B698"];

    v11 = v47;
  }

  v48 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:&stru_286339F58 preferredStyle:1];
  v49 = MEMORY[0x277D750F8];
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"DeviceConfig"];
  v52 = [v49 actionWithTitle:v51 style:0 handler:&__block_literal_global_848];
  [v48 addAction:v52];

  [(BTSDeviceConfigController *)self presentViewController:v48 animated:1 completion:0];
LABEL_23:
}

- (id)ancsAuthorized
{
  p_device = &self->_device;
  if ([(BluetoothDeviceProtocol *)self->_device isCTKDDevice])
  {
    p_device = &self->_ctkdLeDevice;
  }

  ancsAuthorized = [*p_device ancsAuthorized];
  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithBool:ancsAuthorized];
}

- (void)setANCSAuthorized:(id)authorized
{
  p_device = &self->_device;
  device = self->_device;
  authorizedCopy = authorized;
  if ([(BluetoothDeviceProtocol *)device isCTKDDevice])
  {
    p_device = &self->_ctkdLeDevice;
  }

  v7 = *p_device;
  bOOLValue = [authorizedCopy BOOLValue];

  [v7 setANCSAuthorization:bOOLValue];
}

- (id)userSelectedHealthDataSyncConfig
{
  v7 = *MEMORY[0x277D85DE8];
  userSelectedHealthDataSyncConfig = [(BluetoothDeviceProtocol *)self->_device userSelectedHealthDataSyncConfig];
  v3 = sharedBluetoothSettingsLogComponent(userSelectedHealthDataSyncConfig);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = userSelectedHealthDataSyncConfig;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Get user HealthDataSyncConfig: %d", v6, 8u);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInt:userSelectedHealthDataSyncConfig];

  return v4;
}

- (void)setUserSelectedHealthDataSyncConfig:(id)config
{
  v8 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = sharedBluetoothSettingsLogComponent(configCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = configCopy;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "User set HealthDataSyncConfig: %@", &v6, 0xCu);
  }

  -[BluetoothDeviceProtocol setUserSelectedHealthDataSyncConfig:](self->_device, "setUserSelectedHealthDataSyncConfig:", [configCopy intValue]);
}

- (id)digitalCrownMode
{
  deviceAnalytics = self->_deviceAnalytics;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](deviceAnalytics, "updateFeatureValue:value:featureValueString:", 7, [classicDevice crownRotationDirection], 0);

  v5 = MEMORY[0x277CCABB0];
  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v7 = [v5 numberWithInt:{objc_msgSend(classicDevice2, "crownRotationDirection")}];

  return v7;
}

- (void)setDigitalCrownMode:(id)mode
{
  deviceAnalytics = self->_deviceAnalytics;
  modeCopy = mode;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:6];
  -[HPSDeviceAnalytics updateFeatureValue:value:featureValueString:](self->_deviceAnalytics, "updateFeatureValue:value:featureValueString:", 7, [modeCopy intValue], 0);
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  intValue = [modeCopy intValue];

  [classicDevice setCrownRotationDirection:intValue];
}

- (void)refreshFindMyStatusForPencilInBackground
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  v5 = [v3 initWithUUIDString:identifier];

  v6 = objc_alloc_init(MEMORY[0x277D49690]);
  ownerSession = [v6 ownerSession];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__BTSDeviceConfigController_refreshFindMyStatusForPencilInBackground__block_invoke;
  v8[3] = &unk_2796AD778;
  v8[4] = self;
  [ownerSession peripheralConnectionMaterialForAccessoryIdentifier:v5 completion:v8];
}

void __69__BTSDeviceConfigController_refreshFindMyStatusForPencilInBackground__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__BTSDeviceConfigController_refreshFindMyStatusForPencilInBackground__block_invoke_2;
  v5[3] = &unk_2796AD750;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __69__BTSDeviceConfigController_refreshFindMyStatusForPencilInBackground__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1697) = 1;
  *(*(a1 + 32) + 1696) = *(a1 + 40) != 0;
  v3 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 1696))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Pencil FindMy Enabled: %s", &v5, 0xCu);
  }
}

- (void)refreshFindMyStatusForPencilSynchronously
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  identifier = [(BluetoothDeviceProtocol *)self->_device identifier];
  v5 = [v3 initWithUUIDString:identifier];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = dispatch_group_create();
  dispatch_group_enter(v15[5]);
  v6 = objc_alloc_init(MEMORY[0x277D49690]);
  ownerSession = [v6 ownerSession];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__BTSDeviceConfigController_refreshFindMyStatusForPencilSynchronously__block_invoke;
  v13[3] = &unk_2796AD7A0;
  v13[4] = self;
  v13[5] = &v14;
  [ownerSession peripheralConnectionMaterialForAccessoryIdentifier:v5 completion:v13];
  v8 = v15[5];
  v9 = dispatch_time(0, 20000000);
  v10 = dispatch_group_wait(v8, v9);
  v11 = sharedBluetoothSettingsLogComponent(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_findMyEnabledForPencil)
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    *buf = 136315138;
    v21 = v12;
    _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Pencil FindMy Enabled: %s", buf, 0xCu);
  }

  _Block_object_dispose(&v14, 8);
}

void __70__BTSDeviceConfigController_refreshFindMyStatusForPencilSynchronously__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 1697) = 1;
  *(*(a1 + 32) + 1696) = a2 != 0;
  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

- (void)refreshFindMyStatus
{
  v37 = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  address = [classicDevice address];

  v6 = sharedBluetoothSettingsLogComponent(v5);
  v7 = v6;
  if (address)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = address;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "FindMy Status: Get Address: %@", &buf, 0xCu);
    }

    v27 = 0;
    v26 = 0;
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v9 = [classicDevice2 getHexDeviceAddress:&v26];

    if (v9)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v26 length:6];
      if (v11)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v33 = 0x3032000000;
        v34 = __Block_byref_object_copy_;
        v35 = __Block_byref_object_dispose_;
        v36 = dispatch_group_create();
        dispatch_group_enter(*(*(&buf + 1) + 40));
        v12 = objc_alloc_init(MEMORY[0x277D49690]);
        ownerSession = [v12 ownerSession];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __48__BTSDeviceConfigController_refreshFindMyStatus__block_invoke;
        v22[3] = &unk_2796AD7C8;
        v14 = ownerSession;
        v23 = v14;
        selfCopy = self;
        p_buf = &buf;
        [v14 fetchFindMyNetworkStatusForMACAddress:v11 completion:v22];
        v15 = *(*(&buf + 1) + 40);
        v16 = dispatch_time(0, 20000000);
        v17 = dispatch_group_wait(v15, v16);
        v18 = sharedBluetoothSettingsLogComponent(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = "No";
          if (self->_findMySupport)
          {
            v20 = "Yes";
          }

          else
          {
            v20 = "No";
          }

          if (self->_findMyEnable)
          {
            v19 = "Yes";
          }

          *v28 = 136315394;
          v29 = v20;
          v30 = 2080;
          v31 = v19;
          _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "FindMy Status: Get Done, Support: %s, Enable: %s", v28, 0x16u);
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v21 = sharedBluetoothSettingsLogComponent(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [BTSDeviceConfigController refreshFindMyStatus];
        }
      }
    }

    else
    {
      v11 = sharedBluetoothSettingsLogComponent(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BTSDeviceConfigController refreshFindMyStatus];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController refreshFindMyStatus];
    }
  }
}

void __48__BTSDeviceConfigController_refreshFindMyStatus__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__BTSDeviceConfigController_refreshFindMyStatus__block_invoke_cold_1(v6);
    }
  }

  else
  {
    *(*(a1 + 40) + 1620) = 1;
    *(*(a1 + 40) + 1621) = a2;
    v7 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "Disabled";
      if (a2)
      {
        v8 = "Enabled";
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "FindMy Status: Get Completed: Status: %s", &v9, 0xCu);
    }
  }

  dispatch_group_leave(*(*(*(a1 + 48) + 8) + 40));
}

- (id)getFindMyEnable:(id)enable
{
  v4 = MEMORY[0x277CCABB0];
  findMySetInProgress = self->_findMySetInProgress;
  enableCopy = enable;
  v7 = [v4 numberWithBool:findMySetInProgress];
  [enableCopy setProperty:v7 forKey:*MEMORY[0x277D3FEA8]];

  if (self->_findMyEnable)
  {
    v8 = @"On";
  }

  else
  {
    v8 = @"Off";
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:26 value:0 featureValueString:v8];
  v9 = MEMORY[0x277CCABB0];
  findMyEnable = self->_findMyEnable;

  return [v9 numberWithBool:findMyEnable];
}

- (void)setFindMyEnable:(id)enable specifier:(id)specifier
{
  v33 = *MEMORY[0x277D85DE8];
  enableCopy = enable;
  specifierCopy = specifier;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  address = [classicDevice address];

  if (address)
  {
    v28 = 0;
    v27 = 0;
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v12 = [classicDevice2 getHexDeviceAddress:&v27];

    if (v12)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v27 length:6];
      v15 = v14;
      if (v14)
      {
        if (enableCopy)
        {
          [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:25];
          bOOLValue = [enableCopy BOOLValue];
          v17 = sharedBluetoothSettingsLogComponent(bOOLValue);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v30 = address;
            v31 = 1024;
            v32 = bOOLValue;
            _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "FindMy Status: Set Address: %@, New Mode: %u", buf, 0x12u);
          }

          if (bOOLValue)
          {
            v18 = @"On";
          }

          else
          {
            v18 = @"Off";
          }

          [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:26 value:0 featureValueString:v18];
          self->_findMySetInProgress = 1;
          v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [specifierCopy setProperty:v19 forKey:*MEMORY[0x277D3FEA8]];

          v20 = objc_alloc_init(MEMORY[0x277D49690]);
          ownerSession = [v20 ownerSession];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __55__BTSDeviceConfigController_setFindMyEnable_specifier___block_invoke;
          v23[3] = &unk_2796AD7F0;
          v24 = ownerSession;
          selfCopy = self;
          v26 = bOOLValue;
          v22 = ownerSession;
          [v22 setFindMyNetworkStatusForMACAddress:v15 status:bOOLValue completion:v23];
        }

        else
        {
          v20 = sharedBluetoothSettingsLogComponent(v14);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [BTSDeviceConfigController setFindMyEnable:specifier:];
          }
        }
      }

      else
      {
        v20 = sharedBluetoothSettingsLogComponent(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [BTSDeviceConfigController setFindMyEnable:specifier:];
        }
      }
    }

    else
    {
      v15 = sharedBluetoothSettingsLogComponent(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BTSDeviceConfigController setFindMyEnable:specifier:];
      }
    }
  }

  else
  {
    v15 = sharedBluetoothSettingsLogComponent(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController setFindMyEnable:specifier:];
    }
  }
}

void __55__BTSDeviceConfigController_setFindMyEnable_specifier___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__BTSDeviceConfigController_setFindMyEnable_specifier___block_invoke_cold_1(v4);
    }
  }

  else
  {
    *(*(a1 + 40) + 1621) = *(a1 + 48);
    v5 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 40) + 1621))
      {
        v6 = "Enabled";
      }

      else
      {
        v6 = "Disabled";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "FindMy Status: Mode set to %s", &v8, 0xCu);
    }
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"FindMyStatusUpdated" object:0];
}

- (void)findMyStatusUpdatedHandler:(id)handler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BTSDeviceConfigController_findMyStatusUpdatedHandler___block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__BTSDeviceConfigController_findMyStatusUpdatedHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "FindMy Status: Set Completed, reload specifiers", v10, 2u);
  }

  *(*(a1 + 32) + 1622) = 0;
  [*(a1 + 32) reloadCellForSpecifierID:@"FIND_MY_ID"];
  v4 = *(*(a1 + 32) + 1621);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"FIND_MY_NETWORK_GROUP_FOOTER_ENABLED";
  }

  else
  {
    v7 = @"FIND_MY_NETWORK_GROUP_FOOTER_DISABLED";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_286339F58 table:@"DeviceConfig"];

  v9 = [*(a1 + 32) getGroupSpecifierForSpecifierID:@"FIND_MY_GROUP_ID"];
  [v9 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

  [*(a1 + 32) reloadSpecifierID:@"FIND_MY_GROUP_ID" animated:1];
}

- (BOOL)deviceSupportsCarPlay
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v3 = [classicDevice isServiceSupported:0x40000];

  return v3;
}

- (id)_carPlayVehicle
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  address = [classicDevice address];

  if (address)
  {
    vehicleManager = [(BTSDeviceConfigController *)self vehicleManager];
    v6 = [vehicleManager vehicleForBluetoothAddress:address];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)carPlayEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(BTSDeviceConfigController *)self cachedCarplayPairingStatus]== 2;

  return [v3 numberWithBool:v4];
}

- (void)setCarPlayEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  _carPlayVehicle = [(BTSDeviceConfigController *)self _carPlayVehicle];
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [_carPlayVehicle setPairingStatus:v9];
  vehicleManager = [(BTSDeviceConfigController *)self vehicleManager];
  v11 = [vehicleManager saveVehicle:_carPlayVehicle];

  if (v11)
  {
    [(BTSDeviceConfigController *)self setCachedCarplayPairingStatus:v9];
  }

  else
  {
    [(BTSDeviceConfigController *)self reloadSpecifier:specifierCopy animated:1];
  }
}

- (void)handlePairedVehiclesChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BTSDeviceConfigController_handlePairedVehiclesChanged___block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__BTSDeviceConfigController_handlePairedVehiclesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _carPlayVehicle];
  v3 = [v2 pairingStatus];

  if (v3 != [*(a1 + 32) cachedCarplayPairingStatus])
  {
    [*(a1 + 32) setCachedCarplayPairingStatus:v3];
    v4 = [*(a1 + 32) headphoneObserver];
    [v4 reloadAll];
  }
}

- (void)handleCarPlayAllowedDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BTSDeviceConfigController_handleCarPlayAllowedDidChange__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__BTSDeviceConfigController_handleCarPlayAllowedDidChange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) headphoneObserver];
  [v1 reloadAll];
}

- (void)metaGroupSelected:(id)selected
{
  selectedCopy = selected;
  v4 = [(BTSDeviceConfigController *)self indexPathForSpecifier:?];
  if (v4)
  {
    v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v4];
    [v5 setChecked:{objc_msgSend(v5, "isChecked") ^ 1}];
    identifier = [selectedCopy identifier];
    v7 = [identifier isEqualToString:@"PhoneFavorites"];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      identifier2 = [selectedCopy identifier];
      v10 = [identifier2 isEqualToString:@"PhoneRecents"];

      if (!v10)
      {
LABEL_7:
        classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
        [classicDevice setSyncSettings:*&self->_syncSettings.supported | (self->_syncSettings.userPermissionGranted << 32)];

        goto LABEL_8;
      }

      v8 = 3;
    }

    *(&self->_syncSettings.supported + v8) = [v5 isChecked];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)contactGroupSelected:(id)selected
{
  v25 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  v6 = [(BTSDeviceConfigController *)self indexPathForSpecifier:selectedCopy];
  if (v6)
  {
    v7 = *MEMORY[0x277D3FC60];
    v8 = [*(&self->super.super.super.super.super.isa + v7) cellForRowAtIndexPath:v6];
    if (self->_lastSelectedSyncGroup)
    {
      v9 = [(BTSDeviceConfigController *)self indexPathForSpecifier:?];
      if (v9)
      {
        v10 = [*(&self->super.super.super.super.super.isa + v7) cellForRowAtIndexPath:v6];
        [v10 setChecked:0];
      }

      lastSelectedSyncGroup = self->_lastSelectedSyncGroup;
    }

    else
    {
      lastSelectedSyncGroup = 0;
    }

    if (lastSelectedSyncGroup == selectedCopy)
    {
      v14 = 0;
      intValue = 4294967294;
    }

    else
    {
      [v8 setChecked:1];
      identifier = [(__CFString *)selectedCopy identifier];
      intValue = [identifier intValue];

      v14 = selectedCopy;
      lastSelectedSyncGroup = self->_lastSelectedSyncGroup;
    }

    self->_lastSelectedSyncGroup = v14;

    v16 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v18 = v17;
      v19 = @"None";
      if (intValue != -2)
      {
        v19 = selectedCopy;
      }

      v21 = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "%@ new contact sync group is %@", &v21, 0x16u);
    }

    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    [classicDevice setSyncGroup:intValue enabled:1];
  }
}

- (void)listeningModeConfigSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [selectedCopy propertyForKey:*MEMORY[0x277D40148]];
  p_listeningModeConfigs = &self->_listeningModeConfigs;
  p_anc = &self->_listeningModeConfigs.anc;
  if (self->_listeningModeConfigs.transparency + self->_listeningModeConfigs.anc + self->_listeningModeConfigs.normal != 2)
  {
    goto LABEL_13;
  }

  identifier = [selectedCopy identifier];
  if ([identifier isEqualToString:@"ANC"] && p_anc->normal)
  {
    goto LABEL_7;
  }

  identifier2 = [selectedCopy identifier];
  if ([identifier2 isEqualToString:@"Passthrough"] && self->_listeningModeConfigs.transparency)
  {

LABEL_7:
    goto LABEL_10;
  }

  identifier3 = [selectedCopy identifier];
  if (([identifier3 isEqualToString:@"Off"] & 1) == 0)
  {

LABEL_13:
    [v5 setChecked:{objc_msgSend(v5, "isChecked") ^ 1}];
    identifier4 = [selectedCopy identifier];
    v15 = [identifier4 isEqualToString:@"ANC"];

    if (v15 & 1) != 0 || ([selectedCopy identifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"Passthrough"), v16, p_anc = &self->_listeningModeConfigs.transparency, (v17) || (objc_msgSend(selectedCopy, "identifier"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"Off"), v18, p_anc = &self->_listeningModeConfigs, v19))
    {
      p_anc->normal = [v5 isChecked];
    }

    if (self->_listeningModeConfigs.anc)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (self->_listeningModeConfigs.transparency)
    {
      v21 = v20 | 4;
    }

    else
    {
      v21 = v20;
    }

    normal = p_listeningModeConfigs->normal;
    if (!self->_listeningModeConfigs.anc)
    {
      goto LABEL_30;
    }

    if (self->_listeningModeConfigs.transparency)
    {
      if (p_listeningModeConfigs->normal)
      {
        v23 = @"NC&Off&T";
      }

      else
      {
        v23 = @"NC&T";
      }

      goto LABEL_31;
    }

    if (normal)
    {
      v23 = @"NC&Off";
    }

    else
    {
LABEL_30:
      v23 = @"T&Off";
    }

LABEL_31:
    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:16 value:0 featureValueString:v23];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    [classicDevice setListeningModeConfigs:v21 | normal];
    goto LABEL_32;
  }

  v12 = p_listeningModeConfigs->normal;

  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_10:
  classicDevice = sharedBluetoothSettingsLogComponent(v10);
  if (os_log_type_enabled(classicDevice, OS_LOG_TYPE_ERROR))
  {
    [BTSDeviceConfigController listeningModeConfigSelected:];
  }

LABEL_32:
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = -[BTSDeviceConfigController specifierAtIndex:](self, "specifierAtIndex:", -[BTSDeviceConfigController indexOfGroup:](self, "indexOfGroup:", [path section]));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    titleLabel = [v8 titleLabel];
    [titleLabel setLineBreakMode:0];

    titleLabel2 = [v8 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    valueLabel = [v8 valueLabel];
    [valueLabel setLineBreakMode:0];

    valueLabel2 = [v8 valueLabel];
    [valueLabel2 setNumberOfLines:0];

    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setLineBreakMode:0];

    detailTextLabel2 = [v8 detailTextLabel];
    [detailTextLabel2 setNumberOfLines:0];

    specifier = [v8 specifier];
    identifier = [specifier identifier];
    v17 = [identifier isEqualToString:@"IMPORTANT_MSG_ID"];

    if (v17)
    {
      v18 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
      titleLabel3 = [v8 titleLabel];
      [titleLabel3 setFont:v18];
    }

    specifier2 = [v8 specifier];
    identifier2 = [specifier2 identifier];
    v22 = [identifier2 isEqualToString:@"PhoneFavorites"];

    if (v22)
    {
      v23 = 2;
    }

    else
    {
      specifier3 = [v8 specifier];
      identifier3 = [specifier3 identifier];
      v26 = [identifier3 isEqualToString:@"PhoneRecents"];

      if ((v26 & 1) == 0)
      {
        if (self->_lastSelectedSyncGroup && ([v8 specifier], v35 = objc_claimAutoreleasedReturnValue(), lastSelectedSyncGroup = self->_lastSelectedSyncGroup, v35, v35 == lastSelectedSyncGroup))
        {
          v27 = 1;
        }

        else
        {
          v37 = [v7 propertyForKey:*MEMORY[0x277D3FFE8]];
          bOOLValue = [v37 BOOLValue];

          if (bOOLValue)
          {
            goto LABEL_20;
          }

          v27 = 0;
        }

LABEL_9:
        [v8 setChecked:v27 & 1];
        specifier4 = [v8 specifier];
        identifier4 = [specifier4 identifier];
        v30 = [identifier4 isEqualToString:@"ANC"];

        if (v30)
        {
          p_anc = &self->_listeningModeConfigs.anc;
LABEL_19:
          [v8 setChecked:p_anc->normal];
          goto LABEL_20;
        }

        specifier5 = [v8 specifier];
        identifier5 = [specifier5 identifier];
        v34 = [identifier5 isEqualToString:@"Passthrough"];

        if (v34)
        {
          p_anc = &self->_listeningModeConfigs.transparency;
          goto LABEL_19;
        }

        specifier6 = [v8 specifier];
        identifier6 = [specifier6 identifier];
        v41 = [identifier6 isEqualToString:@"Off"];

        if (v41)
        {
          p_anc = &self->_listeningModeConfigs;
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v23 = 3;
    }

    v27 = *(&self->_syncSettings.supported + v23);
    goto LABEL_9;
  }

LABEL_21:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(BTSDeviceConfigController *)self specifierAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"LISTENING_MODE_ID"];

  if (v10)
  {
    listeningModeCell = self->_listeningModeCell;
    if (!listeningModeCell)
    {
      v37.receiver = self;
      v37.super_class = BTSDeviceConfigController;
      v12 = [(BTSDeviceConfigController *)&v37 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
      v13 = self->_listeningModeCell;
      self->_listeningModeCell = v12;

      listeningModeCell = self->_listeningModeCell;
    }

    [(PSTableCell *)listeningModeCell refreshCellContentsWithSpecifier:v8];
    v14 = self->_listeningModeCell;
  }

  else
  {
    v36.receiver = self;
    v36.super_class = BTSDeviceConfigController;
    v14 = [(BTSDeviceConfigController *)&v36 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    identifier2 = [v8 identifier];
    v16 = [identifier2 isEqualToString:@"CLASSIC_SETUP_TITLE_ID"];

    if (v16)
    {
      [(PSTableCell *)v14 setSeparatorInset:0.0, 0.0, 0.0, 1.79769313e308];
    }

    identifier3 = [v8 identifier];
    v18 = [identifier3 isEqualToString:@"CLASSIC_SETUP_BODY_ID"];

    if (v18)
    {
      defaultContentConfiguration = [(PSTableCell *)v14 defaultContentConfiguration];
      name = [v8 name];
      [defaultContentConfiguration setText:name];

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      textProperties = [defaultContentConfiguration textProperties];
      [textProperties setColor:secondaryLabelColor];

      [(PSTableCell *)v14 setContentConfiguration:defaultContentConfiguration];
      v23 = v14;
    }

    else
    {
      identifier4 = [v8 identifier];
      v25 = [identifier4 isEqualToString:@"CLASSIC_SETUP_BUTTON_ID"];

      if (v25)
      {
        if (self->_devicePendingCTKDConnection)
        {
          defaultContentConfiguration2 = [(PSTableCell *)v14 defaultContentConfiguration];
          name2 = [v8 name];
          [defaultContentConfiguration2 setText:name2];

          secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
          textProperties2 = [defaultContentConfiguration2 textProperties];
          [textProperties2 setColor:secondaryLabelColor2];

          [(PSTableCell *)v14 setContentConfiguration:defaultContentConfiguration2];
          v30 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
          [(PSTableCell *)v14 setAccessoryView:v30];

          accessoryView = [(PSTableCell *)v14 accessoryView];
          [accessoryView startAnimating];
        }
      }

      else
      {
        identifier5 = [v8 identifier];
        v33 = [identifier5 isEqualToString:@"OCCLUSION_DETECTION_ID"];

        if (v33)
        {
          [(PSTableCell *)v14 setAccessoryType:0];
        }
      }

      v34 = v14;
    }
  }

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  accessorySettingFeatureBitMask = [classicDevice accessorySettingFeatureBitMask];

  v10 = -[BTSDeviceConfigController specifierAtIndex:](self, "specifierAtIndex:", -[BTSDeviceConfigController indexOfGroup:](self, "indexOfGroup:", [pathCopy section]));
  v11 = [(BTSDeviceConfigController *)self specifierAtIndexPath:pathCopy];
  if ((accessorySettingFeatureBitMask & 6) == 2)
  {
    v12 = [v10 propertyForKey:*MEMORY[0x277D3FFE8]];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = [(BTSDeviceConfigController *)self specifierForID:@"SIRI_ID"];

      if (v14 == v11)
      {
        v17 = 1;
      }

      else
      {
        v15 = [(BTSDeviceConfigController *)self specifierForID:@"MEDIA_ID"];

        if (v15 == v11)
        {
          v17 = 2;
        }

        else
        {
          v16 = [(BTSDeviceConfigController *)self specifierForID:@"OFF_ID"];

          if (v16 != v11)
          {
            goto LABEL_10;
          }

          v17 = 0;
        }
      }

      classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      [classicDevice2 setDoubleTapAction:v17];
    }
  }

LABEL_10:
  identifier = [v11 identifier];
  v20 = [identifier isEqualToString:@"ACCESSORY_ABOUT_SERIAL_NUMBER_ID"];

  if (v20)
  {
    [(BTSDeviceConfigController *)self updateSerialNumberSpecifier:v11];
LABEL_14:
    [(BTSDeviceConfigController *)self reloadSpecifier:v11];
    goto LABEL_15;
  }

  identifier2 = [v11 identifier];
  v22 = [identifier2 isEqualToString:@"ACCESSORY_ABOUT_VERSION_ID"];

  if (v22)
  {
    [(BTSDeviceConfigController *)self updateVersionSpecifier:v11];
    goto LABEL_14;
  }

LABEL_15:
  v23.receiver = self;
  v23.super_class = BTSDeviceConfigController;
  [(BTSDeviceConfigController *)&v23 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];
}

- (void)reloadCellForSpecifierID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(BTSDeviceConfigController *)self specifierForID:d];
  v7 = [(BTSDeviceConfigController *)self indexPathForSpecifier:v6];

  if (v7)
  {
    v8 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
    v11[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    if (animatedCopy)
    {
      v10 = 100;
    }

    else
    {
      v10 = 5;
    }

    [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:v10];
  }
}

- (void)userDidTapWatchLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapSpatialProfileLearnMoreLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213318?cid=mc-ols-airpods-article_ht2133318-ios_ui-06162022"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapSpatialA2DPLatencyDisclosure:(id)disclosure
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213920?cid=mc-ols-visionpro-article_ht213920-visionos_ui-09182023"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapSpatialProfileWarningLearnMoreLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/guide/airpods/control-spatial-audio-and-head-tracking-dev00eb7e0a3/web"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapRecommendedBuilds:(id)builds
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice productId];

  if ((productId - 8217) <= 0x16)
  {
    if (((1 << (productId - 25)) & 0xA5) != 0)
    {
      v5 = @"https://at.apple.com/5nbILf";
      goto LABEL_13;
    }

    if (productId == 8228)
    {
      v5 = @"https://at.apple.com/OLhUo";
      goto LABEL_13;
    }

    if (productId == 8239)
    {
      v5 = @"https://at.apple.com/oDu4dF";
      goto LABEL_13;
    }
  }

  v6 = @"https://at.apple.com/n4WLN";
  if (productId == 8212)
  {
    v6 = @"https://at.apple.com/OLhUo";
  }

  if (productId == 8210)
  {
    v5 = @"https://at.apple.com/oDu4dF";
  }

  else
  {
    v5 = v6;
  }

LABEL_13:
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  [defaultWorkspace openSensitiveURL:v7 withOptions:0];
}

- (void)userDidTapWalletLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"wallet:"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapNiPrivacyLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=NEARBY_INTERACTIONS"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (HearingModeUIService)hearingModeUIService
{
  hearingModeUIService = self->_hearingModeUIService;
  if (!hearingModeUIService)
  {
    v4 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Occlusion Detection: Init HearingModeUIService", v12, 2u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v5 = getHearingModeUIServiceClass_softClass;
    v16 = getHearingModeUIServiceClass_softClass;
    if (!getHearingModeUIServiceClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getHearingModeUIServiceClass_block_invoke;
      v12[3] = &unk_2796AD8E0;
      v12[4] = &v13;
      __getHearingModeUIServiceClass_block_invoke(v12);
      v5 = v14[3];
    }

    v6 = v5;
    _Block_object_dispose(&v13, 8);
    v7 = [v5 alloc];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v9 = [v7 initWithDevice:classicDevice];
    v10 = self->_hearingModeUIService;
    self->_hearingModeUIService = v9;

    [(HearingModeUIService *)self->_hearingModeUIService setDelegate:self];
    hearingModeUIService = self->_hearingModeUIService;
  }

  return hearingModeUIService;
}

- (id)specifiers
{
  selfCopy = self;
  v389 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FD20];
  userInfo = [*(&self->super.super.super.super.super.isa + v3) userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bt-device"];

  userInfo2 = [*(&selfCopy->super.super.super.super.super.isa + v3) userInfo];
  v7 = +[HPSDevice deviceKey];
  v8 = [userInfo2 objectForKeyedSubscript:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if (([v10 isEqualToString:v12] & 1) == 0)
  {

    goto LABEL_6;
  }

  classicDevice = [v5 classicDevice];

  if (classicDevice)
  {
LABEL_6:
    v16 = _os_feature_enabled_impl();
    if (v16)
    {
      if (!v5 && v8 == 0)
      {
        v15 = sharedBluetoothSettingsLogComponent(v16);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [BTSDeviceConfigController specifiers];
        }

        goto LABEL_14;
      }
    }

    v369 = v3;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([v5 classicDevice], v21 = objc_claimAutoreleasedReturnValue(), v22 = +[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v21), v21, v22))
    {
      userInfo3 = [*(&selfCopy->super.super.super.super.super.isa + v3) userInfo];
      v24 = +[HPSDevice deviceKey];
      v25 = [userInfo3 objectForKeyedSubscript:v24];

      if (v25)
      {
        objc_storeStrong(&selfCopy->_device, v8);
        v26 = +[HPSHeadphoneManager sharedInstance];
        [v26 updateHPSDevice:v8];

        batteryStatusView = selfCopy->_batteryStatusView;
        headphoneDevice = [v8 headphoneDevice];
        [(ModernBatteryStatusView *)batteryStatusView startLisentingWithDevice:headphoneDevice];

        headphoneDevice2 = [v8 headphoneDevice];
        headphoneObserver = [(BTSDeviceConfigController *)selfCopy headphoneObserver];
        [headphoneObserver setHeadphoneDevice:headphoneDevice2];
      }

      else
      {
        v31 = [HPSDevice alloc];
        userInfo4 = [*(&selfCopy->super.super.super.super.super.isa + v3) userInfo];
        v33 = [userInfo4 objectForKeyedSubscript:@"bt-device"];
        v34 = [(HPSDevice *)v31 initWithHeadphoneDevice:0 btsDevice:v33];
        device = selfCopy->_device;
        selfCopy->_device = v34;

        v36 = selfCopy->_device;
        userInfo5 = [*(&selfCopy->super.super.super.super.super.isa + v3) userInfo];
        v38 = +[HPSDevice deviceKey];
        [userInfo5 setObject:v36 forKeyedSubscript:v38];

        v39 = +[HPSHeadphoneManager sharedInstance];
        [v39 updateHPSDevice:selfCopy->_device];

        v40 = selfCopy->_batteryStatusView;
        headphoneDevice2 = [v8 headphoneDevice];
        [(ModernBatteryStatusView *)v40 startLisentingWithDevice:headphoneDevice2];
      }
    }

    else
    {
      v41 = v5;
      headphoneDevice2 = selfCopy->_device;
      selfCopy->_device = v41;
    }

    v43 = sharedBluetoothSettingsLogComponent(v42);
    v376 = selfCopy;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v5 debugDescription];
      userInfo6 = [*(&selfCopy->super.super.super.super.super.isa + v3) userInfo];
      v46 = +[HPSDevice deviceKey];
      [userInfo6 objectForKeyedSubscript:v46];
      v48 = v47 = v5;
      userInfo7 = [*(&v376->super.super.super.super.super.isa + v3) userInfo];
      [userInfo7 objectForKeyedSubscript:@"HPS_DeviceInfo"];
      v51 = v50 = v8;
      *buf = 138412802;
      v384 = v44;
      v385 = 2112;
      v386 = v48;
      v387 = 2112;
      v388 = v51;
      _os_log_impl(&dword_251143000, v43, OS_LOG_TYPE_DEFAULT, "HeadphoneConfigs: specifiers deviceKeyDevice: %@, HEADPHONE_DEVICE: %@, USER_INFO: %@", buf, 0x20u);

      v8 = v50;
      v5 = v47;

      selfCopy = v376;
    }

    v52 = selfCopy->_device;
    if (!v52)
    {
      v20 = 0;
      goto LABEL_148;
    }

    deviceAnalytics = selfCopy->_deviceAnalytics;
    classicDevice2 = [(BluetoothDeviceProtocol *)v52 classicDevice];
    -[HPSDeviceAnalytics updateProductID:](deviceAnalytics, "updateProductID:", [classicDevice2 productId]);

    v55 = *MEMORY[0x277D3FC48];
    if (*(&selfCopy->super.super.super.super.super.isa + v55))
    {
LABEL_141:
      productName = [(BluetoothDeviceProtocol *)selfCopy->_device productName];
      if ([(BTSDeviceConfigController *)selfCopy nicknameEnabled])
      {
        name = [(BluetoothDeviceProtocol *)selfCopy->_device name];

        productName = name;
      }

      classicDevice3 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
      if (classicDevice3)
      {
        v340 = classicDevice3;
        classicDevice4 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
        magicPaired = [classicDevice4 magicPaired];

        if (magicPaired)
        {
          name2 = [(BluetoothDeviceProtocol *)selfCopy->_device name];

          productName = name2;
        }
      }

      [(BTSDeviceConfigController *)selfCopy setTitle:productName];
      v20 = *(&selfCopy->super.super.super.super.super.isa + v55);
      goto LABEL_147;
    }

    v364 = *MEMORY[0x277D3FC48];
    classicDevice5 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
    accessoryInfo = [classicDevice5 accessoryInfo];

    v366 = accessoryInfo;
    v58 = [accessoryInfo objectForKey:@"AACPVersionInfo"];
    v363 = v58;
    if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v59 count] >= 0xB)
    {
      objc_storeStrong(&selfCopy->_versionInfo, v59);
      v60 = [accessoryInfo objectForKey:@"ANCAssetVersion"];
      if (v60 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v61 = v60;
        ancAssetVersion = selfCopy->_ancAssetVersion;
        selfCopy->_ancAssetVersion = v61;
      }

      else
      {
        ancAssetVersion = selfCopy->_ancAssetVersion;
        selfCopy->_ancAssetVersion = 0;
      }

      v345 = [accessoryInfo objectForKey:@"CaseInfo"];
      if (v345 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v346 = v345;
        caseInfo = selfCopy->_caseInfo;
        selfCopy->_caseInfo = v346;
      }

      else
      {
        caseInfo = selfCopy->_caseInfo;
        selfCopy->_caseInfo = 0;
      }
    }

    else
    {
      versionInfo = selfCopy->_versionInfo;
      selfCopy->_versionInfo = 0;

      v64 = selfCopy->_ancAssetVersion;
      selfCopy->_ancAssetVersion = 0;

      v60 = selfCopy->_caseInfo;
      selfCopy->_caseInfo = 0;
    }

    v65 = MEMORY[0x277CBEA60];
    v66 = [(BTSDeviceConfigController *)selfCopy loadSpecifiersFromPlistName:@"DeviceConfig" target:selfCopy];
    v67 = [v65 arrayWithArray:v66];

    v68 = objc_opt_new();
    v368 = v68;
    if (selfCopy->_accessoryHeaderController)
    {
      v69 = v68;
      leDevice = [(BTSDeviceConfigController *)selfCopy leDevice];
      relatedFutureRadioAddress = [leDevice relatedFutureRadioAddress];

      if (relatedFutureRadioAddress)
      {
        specifiers = [(PSListController *)selfCopy->_accessoryHeaderController specifiers];
        v73 = [specifiers objectAtIndexedSubscript:0];
        v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v75 = [v74 localizedStringForKey:@"FOLLOW_PAIR_INSTRUCTION_FOOTER" value:&stru_286339F58 table:@"DeviceConfig"];
        [v73 setProperty:v75 forKey:*MEMORY[0x277D3FF88]];

        selfCopy = v376;
        v69 = v368;
      }

      specifiers2 = [(PSListController *)selfCopy->_accessoryHeaderController specifiers];
      [v69 addObjectsFromArray:specifiers2];
    }

    v367 = v8;
    v365 = v5;
    v77 = objc_alloc(MEMORY[0x277CBEA60]);
    v78 = [v67 objectAtIndexedSubscript:0];
    v79 = [v67 objectAtIndexedSubscript:1];
    v80 = [v67 objectAtIndexedSubscript:2];
    v81 = [v67 objectAtIndexedSubscript:8];
    v82 = [v77 initWithObjects:{v78, v79, v80, v81, 0}];
    controlGroupSpecifiers = v376->_controlGroupSpecifiers;
    v376->_controlGroupSpecifiers = v82;

    selfCopy = v376;
    v84 = objc_alloc(MEMORY[0x277CBEA60]);
    v85 = [v67 objectAtIndexedSubscript:3];
    v86 = [v67 objectAtIndexedSubscript:4];
    v87 = [v84 initWithObjects:{v85, v86, 0}];
    messagingSpecifiers = v376->_messagingSpecifiers;
    v376->_messagingSpecifiers = v87;

    v89 = objc_alloc(MEMORY[0x277CBEA60]);
    v90 = [v67 objectAtIndexedSubscript:5];
    v91 = [v67 objectAtIndexedSubscript:6];
    v92 = [v89 initWithObjects:{v90, v91, 0}];
    syncContactsSpecifiers = v376->_syncContactsSpecifiers;
    v376->_syncContactsSpecifiers = v92;

    v94 = objc_alloc(MEMORY[0x277CBEB18]);
    v362 = v67;
    v95 = [v67 objectAtIndexedSubscript:7];
    v96 = [v94 initWithObjects:{v95, 0}];
    syncGroupsSpecifiers = v376->_syncGroupsSpecifiers;
    v376->_syncGroupsSpecifiers = v96;

    v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aacpControlSpecifiers = v376->_aacpControlSpecifiers;
    v376->_aacpControlSpecifiers = v98;

    v100 = objc_alloc_init(MEMORY[0x277CBEB18]);
    accessoryFirmwareSpecifiers = v376->_accessoryFirmwareSpecifiers;
    v376->_accessoryFirmwareSpecifiers = v100;

    v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nameControlSpecifiers = v376->_nameControlSpecifiers;
    v376->_nameControlSpecifiers = v102;

    v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
    ancsControlSpecifiers = v376->_ancsControlSpecifiers;
    v376->_ancsControlSpecifiers = v104;

    v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deviceTypeSpecifiers = v376->_deviceTypeSpecifiers;
    v376->_deviceTypeSpecifiers = v106;

    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    pairedDevicesSelectorBlock = [MEMORY[0x277D2BCF8] pairedDevicesSelectorBlock];
    v110 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:pairedDevicesSelectorBlock];

    v379 = 0u;
    v380 = 0u;
    v377 = 0u;
    v378 = 0u;
    obj = v110;
    v111 = [obj countByEnumeratingWithState:&v377 objects:v382 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v378;
      v114 = *MEMORY[0x277D2BD40];
      do
      {
        for (i = 0; i != v112; ++i)
        {
          if (*v378 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v116 = [*(*(&v377 + 1) + 8 * i) valueForProperty:v114];
          identifier = [(BluetoothDeviceProtocol *)selfCopy->_device identifier];
          uUIDString = [v116 UUIDString];
          v119 = [identifier isEqualToString:uUIDString];

          selfCopy = v376;
          if (v119)
          {
            v376->_isWatch = 1;
          }
        }

        v112 = [obj countByEnumeratingWithState:&v377 objects:v382 count:16];
      }

      while (v112);
    }

    [(BTSDeviceConfigController *)selfCopy loadAccessorySettings];
    [(BTSDeviceConfigController *)selfCopy loadAccessoryInfo];
    if (!+[HPSProductUtils isRealityDevice])
    {
      [(BTSDeviceConfigController *)selfCopy loadAccessoryFirmwareInfo];
    }

    if (selfCopy->_isWatch)
    {
      v120 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
      v121 = MEMORY[0x277CCACA8];
      v122 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v123 = [v122 localizedStringForKey:@"APPLE_WATCH_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig"];
      v124 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v125 = [v124 localizedStringForKey:@"APPLE_WATCH_APP_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v125 = [v121 stringWithFormat:v123, v125];

      v127 = objc_opt_class();
      v128 = NSStringFromClass(v127);
      [v120 setProperty:v128 forKey:*MEMORY[0x277D3FF48]];

      [v120 setProperty:v125 forKey:*MEMORY[0x277D3FF70]];
      v129 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v130 = [v129 localizedStringForKey:@"APPLE_WATCH_APP_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v391.location = [v125 rangeOfString:v130];
      v131 = NSStringFromRange(v391);
      [v120 setProperty:v131 forKey:*MEMORY[0x277D3FF58]];

      selfCopy = v376;
      v132 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v376];
      [v120 setProperty:v132 forKey:*MEMORY[0x277D3FF68]];

      [v120 setProperty:@"userDidTapWatchLink:" forKey:*MEMORY[0x277D3FF50]];
    }

    v5 = v365;
    if ([(BluetoothDeviceProtocol *)selfCopy->_device isManagedByWallet])
    {
      selfCopy->_isManagedByWallet = 1;
      v133 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
      v134 = MEMORY[0x277CCACA8];
      v135 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v136 = [v135 localizedStringForKey:@"MANAGED_BY_WALLET_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig"];
      v137 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v138 = [v137 localizedStringForKey:@"WALLET_APP_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v138 = [v134 stringWithFormat:v136, v138];

      v140 = objc_opt_class();
      v141 = NSStringFromClass(v140);
      [v133 setProperty:v141 forKey:*MEMORY[0x277D3FF48]];

      [v133 setProperty:v138 forKey:*MEMORY[0x277D3FF70]];
      v142 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v143 = [v142 localizedStringForKey:@"WALLET_APP_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v392.location = [v138 rangeOfString:v143];
      v144 = NSStringFromRange(v392);
      [v133 setProperty:v144 forKey:*MEMORY[0x277D3FF58]];

      selfCopy = v376;
      v145 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v376];
      [v133 setProperty:v145 forKey:*MEMORY[0x277D3FF68]];

      [v133 setProperty:@"userDidTapWalletLink:" forKey:*MEMORY[0x277D3FF50]];
    }

    if ([(BluetoothDeviceProtocol *)selfCopy->_device isManagedByAliroWallet])
    {
      selfCopy->_isManagedByAliroWallet = 1;
      v146 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
      v147 = MEMORY[0x277CCACA8];
      v148 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v149 = [v148 localizedStringForKey:@"MANAGED_BY_WALLET_ALIRO_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig"];
      v150 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v151 = [v150 localizedStringForKey:@"WALLET_APP_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v151 = [v147 stringWithFormat:v149, v151];

      v153 = objc_opt_class();
      v154 = NSStringFromClass(v153);
      [v146 setProperty:v154 forKey:*MEMORY[0x277D3FF48]];

      [v146 setProperty:v151 forKey:*MEMORY[0x277D3FF70]];
      v155 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"WALLET_APP_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v393.location = [v151 rangeOfString:v156];
      v157 = NSStringFromRange(v393);
      [v146 setProperty:v157 forKey:*MEMORY[0x277D3FF58]];

      selfCopy = v376;
      v158 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v376];
      [v146 setProperty:v158 forKey:*MEMORY[0x277D3FF68]];

      [v146 setProperty:@"userDidTapWalletLink:" forKey:*MEMORY[0x277D3FF50]];
    }

    if ([(BluetoothDeviceProtocol *)selfCopy->_device doesSupportBackgroundNI])
    {
      v159 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
      v160 = MEMORY[0x277CCACA8];
      v161 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v162 = [v161 localizedStringForKey:@"NI_BACKGROUND_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig"];
      v163 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v164 = [v163 localizedStringForKey:@"NI_PRIVACY_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v164 = [v160 stringWithFormat:v162, v164];

      v166 = objc_opt_class();
      v167 = NSStringFromClass(v166);
      [v159 setProperty:v167 forKey:*MEMORY[0x277D3FF48]];

      [v159 setProperty:v164 forKey:*MEMORY[0x277D3FF70]];
      v168 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v169 = [v168 localizedStringForKey:@"NI_PRIVACY_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v394.location = [v164 rangeOfString:v169 options:4];
      v170 = NSStringFromRange(v394);
      [v159 setProperty:v170 forKey:*MEMORY[0x277D3FF58]];

      selfCopy = v376;
      v171 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v376];
      [v159 setProperty:v171 forKey:*MEMORY[0x277D3FF68]];

      [v159 setProperty:@"userDidTapNiPrivacyLink:" forKey:*MEMORY[0x277D3FF50]];
    }

    v8 = v367;
    if ([(BluetoothDeviceProtocol *)selfCopy->_device isCTKDDevice])
    {
      userInfo8 = [*(&selfCopy->super.super.super.super.super.isa + v369) userInfo];
      v173 = [userInfo8 objectForKeyedSubscript:@"ctkd-device"];
      ctkdLeDevice = selfCopy->_ctkdLeDevice;
      selfCopy->_ctkdLeDevice = v173;
    }

    classicSetupSpecifiers = [(BTSDeviceConfigController *)selfCopy classicSetupSpecifiers];
    [v368 addObjectsFromArray:classicSetupSpecifiers];

    if (([(BluetoothDeviceProtocol *)selfCopy->_device supportsANCS]& 1) != 0 || [(BluetoothDeviceProtocol *)selfCopy->_device isCTKDDevice]&& [(BTSDeviceLE *)selfCopy->_ctkdLeDevice supportsANCS])
    {
      v176 = MEMORY[0x277D3FAD8];
      v177 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v178 = [v177 localizedStringForKey:@"SYSTEM_NOTIFICATIONS" value:&stru_286339F58 table:@"DeviceConfig"];
      v179 = [v176 preferenceSpecifierNamed:v178 target:v376 set:0 get:0 detail:0 cell:0 edit:0];

      [(NSMutableArray *)v376->_ancsControlSpecifiers addObject:v179];
      v180 = MEMORY[0x277D3FAD8];
      v181 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      selfCopy = v376;
      v182 = [v181 localizedStringForKey:@"SHARE_SYSTEM_NOTIFICATIONS" value:&stru_286339F58 table:@"DeviceConfig"];
      v183 = [v180 preferenceSpecifierNamed:v182 target:v376 set:sel_setANCSAuthorized_ get:sel_ancsAuthorized detail:0 cell:6 edit:0];

      [(NSMutableArray *)v376->_ancsControlSpecifiers addObject:v183];
    }

    classicDevice6 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
    getLowSecurityStatus = [classicDevice6 getLowSecurityStatus];

    if (getLowSecurityStatus)
    {
      v186 = MEMORY[0x277D3FAD8];
      v187 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v188 = [v187 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
      v370 = [v186 preferenceSpecifierNamed:v188 target:v376 set:0 get:0 detail:0 cell:0 edit:0];

      v189 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v376 set:0 get:0 detail:0 cell:-1 edit:0];
      [v189 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      name3 = [(BluetoothDeviceProtocol *)v376->_device name];
      v191 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v192 = [v191 localizedStringForKey:@"UNSECURED_ACCESSORY_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];

      v193 = MEMORY[0x277CCACA8];
      v194 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v195 = [v194 localizedStringForKey:@"UNSECURED_ACCESSORY_BODY" value:&stru_286339F58 table:@"DeviceConfig"];
      v190 = [v193 stringWithFormat:v195, name3];

      v197 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v198 = v376->_device;
      v199 = +[HPSDevice deviceKey];
      [v197 setObject:v198 forKey:v199];

      [v197 setObject:v192 forKey:@"warning-cell-title"];
      [v197 setObject:v190 forKey:@"warning-cell-body"];
      [v189 setUserInfo:v197];
      [v368 addObject:v370];
      [v368 addObject:v189];

      selfCopy = v376;
      v8 = v367;
    }

    if ([(BluetoothDeviceProtocol *)selfCopy->_device isLimitedConnectivityDevice])
    {
      v200 = MEMORY[0x277D3FAD8];
      v201 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v202 = [v201 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
      v371 = [v200 preferenceSpecifierNamed:v202 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];

      v203 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:-1 edit:0];
      [v203 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      name4 = [(BluetoothDeviceProtocol *)selfCopy->_device name];
      v205 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v352 = [v205 localizedStringForKey:@"CONNECTIVITY_WARNING_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];

      v206 = MGGetBoolAnswer();
      v207 = @"WIFI";
      if (v206)
      {
        v207 = @"WLAN";
      }

      v355 = v207;
      v355 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_CONNECTIVITY_WARNING_BODY", v355];
      v209 = MEMORY[0x277CCACA8];
      v210 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v211 = [v210 localizedStringForKey:v355 value:&stru_286339F58 table:@"DeviceConfig"];
      v204 = [v209 stringWithFormat:v211, name4];

      v213 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v214 = v376->_device;
      v215 = +[HPSDevice deviceKey];
      [v213 setObject:v214 forKey:v215];

      [v213 setObject:v352 forKey:@"warning-cell-title"];
      [v213 setObject:v204 forKey:@"warning-cell-body"];
      [v203 setUserInfo:v213];
      [v368 addObject:v371];
      [v368 addObject:v203];

      selfCopy = v376;
      v8 = v367;
    }

    v216 = v368;
    if ([(BluetoothDeviceProtocol *)selfCopy->_device isFirmwareUpdateRequiredDevice])
    {
      v217 = MEMORY[0x277D3FAD8];
      v218 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v219 = [v218 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
      v372 = [v217 preferenceSpecifierNamed:v219 target:v376 set:0 get:0 detail:0 cell:0 edit:0];

      v220 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v376 set:0 get:0 detail:0 cell:4 edit:0];
      [v220 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      v221 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v356 = [v221 localizedStringForKey:@"FIRMWARE_UPDATE_WARNING_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];

      v222 = MEMORY[0x277CCACA8];
      v223 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v224 = [v223 localizedStringForKey:@"FIRMWARE_UPDATE_WARNING_BODY" value:&stru_286339F58 table:@"DeviceConfig"];
      v225 = [v222 stringWithFormat:v224];

      v226 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v227 = [v226 localizedStringForKey:@"FIRMWARE_UPDATE_WARNING_TEXT_TO_SET_AS_LINK" value:&stru_286339F58 table:@"DeviceConfig"];

      v228 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v229 = [v228 localizedStringForKey:@"GAME_CONTROLLER_FIRMWARE_UPDATE_URL" value:@"https://support.apple.com/HT211232" table:@"DeviceConfig"];

      v230 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v231 = v376->_device;
      v232 = +[HPSDevice deviceKey];
      [v230 setObject:v231 forKey:v232];

      v216 = v368;
      [v230 setObject:v356 forKey:@"warning-cell-title"];
      [v230 setObject:v225 forKey:@"warning-cell-body"];
      [v230 setObject:v227 forKey:@"warning-cell-body-link-text"];
      [v230 setObject:v229 forKey:@"warning-cell-body-url"];
      [v220 setUserInfo:v230];
      [v368 addObject:v372];
      [v368 addObject:v220];

      selfCopy = v376;
      v8 = v367;
    }

    if ([(BTSDeviceConfigController *)selfCopy deviceSupportsCarPlay])
    {
      carplayPreferences = [(BTSDeviceConfigController *)selfCopy carplayPreferences];

      if (!carplayPreferences)
      {
        v234 = objc_alloc_init(MEMORY[0x277CF8A40]);
        [(BTSDeviceConfigController *)selfCopy setCarplayPreferences:v234];
        [v234 setPreferencesDelegate:selfCopy];
      }

      carplayPreferences2 = [(BTSDeviceConfigController *)selfCopy carplayPreferences];
      isCarPlayAllowed = [carplayPreferences2 isCarPlayAllowed];

      if (isCarPlayAllowed)
      {
        vehicleManager = [(BTSDeviceConfigController *)selfCopy vehicleManager];

        if (!vehicleManager)
        {
          v238 = objc_alloc_init(MEMORY[0x277CF8A68]);
          [(BTSDeviceConfigController *)selfCopy setVehicleManager:v238];
          defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
          [defaultCenter addObserver:selfCopy selector:sel_handlePairedVehiclesChanged_ name:*MEMORY[0x277CF8970] object:0];
        }

        _carPlayVehicle = [(BTSDeviceConfigController *)selfCopy _carPlayVehicle];
        v241 = _carPlayVehicle;
        if (_carPlayVehicle)
        {
          -[BTSDeviceConfigController setCachedCarplayPairingStatus:](selfCopy, "setCachedCarplayPairingStatus:", [_carPlayVehicle pairingStatus]);
          v242 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARPLAY_GROUP"];
          v243 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v244 = [v243 localizedStringForKey:@"CARPLAY_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig"];
          [v242 setProperty:v244 forKey:*MEMORY[0x277D3FF88]];

          v245 = MEMORY[0x277D3FAD8];
          v246 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          selfCopy = v376;
          v247 = [v246 localizedStringForKey:@"CARPLAY_SWITCH" value:&stru_286339F58 table:@"DeviceConfig"];
          v248 = [v245 preferenceSpecifierNamed:v247 target:v376 set:sel_setCarPlayEnabled_specifier_ get:sel_carPlayEnabled_ detail:0 cell:6 edit:0];

          v8 = v367;
          [v248 setIdentifier:@"CARPLAY_SWITCH"];
          v381[0] = v242;
          v381[1] = v248;
          v249 = [MEMORY[0x277CBEA60] arrayWithObjects:v381 count:2];
          [v368 addObjectsFromArray:v249];

          v216 = v368;
        }
      }
    }

    classicDevice7 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
    v251 = [classicDevice7 isServiceSupported:512];

    if (v251)
    {
      selfCopy->_supportsMAP = 1;
      classicDevice8 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
      v253 = [classicDevice8 getServiceSetting:512 key:@"BT_KEY_MAP_ENABLED"];
      selfCopy->_messagingEnabled = [v253 isEqualToString:@"BT_VALUE_MAP_ENABLED"];

      [v216 addObjectsFromArray:selfCopy->_messagingSpecifiers];
    }

    if (_os_feature_enabled_impl())
    {
      classicDevice9 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
      if ([HPSProductUtils isAppleHeadphone:classicDevice9])
      {
        classicDevice10 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
        isTemporaryPaired = [classicDevice10 isTemporaryPaired];

        if ((isTemporaryPaired & 1) == 0)
        {
          classicDevice11 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
          isGenuineAirPods = [classicDevice11 isGenuineAirPods];

          if (isGenuineAirPods)
          {
            [(BTSDeviceConfigController *)selfCopy updateBatteryStatus];
          }
        }
      }

      else
      {
      }
    }

    classicDevice12 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
    if ([classicDevice12 hearingAidSupport])
    {
      v260 = _os_feature_enabled_impl();

      if (!v260)
      {
LABEL_94:
        classicDevice13 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
        if (classicDevice13)
        {
          v265 = classicDevice13;
          classicDevice14 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
          isGenuineAirPods2 = [classicDevice14 isGenuineAirPods];

          if ((isGenuineAirPods2 & 1) == 0)
          {
            v269 = sharedBluetoothSettingsLogComponent(v268);
            if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
            {
              classicDevice15 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
              productId = [classicDevice15 productId];
              *buf = 67109120;
              LODWORD(v384) = productId;
              _os_log_impl(&dword_251143000, v269, OS_LOG_TYPE_DEFAULT, "Device %i is fake", buf, 8u);
            }

            v272 = MEMORY[0x277D3FAD8];
            v273 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v274 = [v273 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
            v373 = [v272 groupSpecifierWithID:v274];

            v275 = MEMORY[0x277D3FAD8];
            v276 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v277 = [v276 localizedStringForKey:@"IMPORTANT_MSG" value:&stru_286339F58 table:@"DeviceConfig"];
            v278 = [v275 preferenceSpecifierNamed:v277 target:v376 set:0 get:0 detail:0 cell:4 edit:0];

            [v278 setIdentifier:@"IMPORTANT_MSG_ID"];
            v279 = MEMORY[0x277D3FAD8];
            classicDevice16 = [(BluetoothDeviceProtocol *)v376->_device classicDevice];
            productId2 = [classicDevice16 productId];
            v282 = @"IMPORTANT_MSG_NON_GENUINE_AIRPODS";
            if (((1 << (productId2 - 2)) & 0x6472863101) == 0)
            {
              v282 = @"IMPORTANT_MSG_NON_GENUINE_BEATS";
            }

            if ((productId2 - 8194) <= 0x26)
            {
              v283 = v282;
            }

            else
            {
              v283 = @"IMPORTANT_MSG_NON_GENUINE_BEATS";
            }

            v284 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v285 = [v284 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig"];
            v286 = [v279 preferenceSpecifierNamed:v285 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

            [v286 setIdentifier:@"IMPORTANT_MSG_NON_GENUINE_ID"];
            [v286 setProperty:&unk_28634DA70 forKey:*MEMORY[0x277D40140]];
            v287 = MEMORY[0x277D3FAD8];
            v288 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v289 = [v288 localizedStringForKey:@"IMPORTANT_MSG_LEARN_MORE" value:&stru_286339F58 table:@"DeviceConfig"];
            v290 = [v287 preferenceSpecifierNamed:v289 target:v376 set:0 get:0 detail:0 cell:13 edit:0];

            selfCopy = v376;
            [v290 setButtonAction:sel_presentImportantMsgLink];
            [v368 addObject:v373];
            [v368 addObject:v278];
            [v368 addObject:v286];
            [v368 addObject:v290];

            v216 = v368;
            v8 = v367;
          }
        }

        if ([(BTSDeviceConfigController *)selfCopy isTempPaired])
        {
          getTemporaryPairSpecifier = [(BTSDeviceConfigController *)selfCopy getTemporaryPairSpecifier];
          [v216 addObject:getTemporaryPairSpecifier];
        }

        if ([(BTSDeviceConfigController *)selfCopy canDisconnect])
        {
          [v216 addObjectsFromArray:selfCopy->_nameControlSpecifiers];
        }

        classicDevice17 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
        if (classicDevice17)
        {
          classicDevice18 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
          if ([classicDevice18 vendorId] == 76)
          {
LABEL_114:

            goto LABEL_115;
          }

          classicDevice19 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
          if ([classicDevice19 isServiceSupported:1])
          {

LABEL_113:
            classicDevice17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
            [(NSMutableArray *)selfCopy->_deviceTypeSpecifiers addObject:classicDevice17];
            v296 = MEMORY[0x277D3FAD8];
            v297 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v298 = [v297 localizedStringForKey:@"DEVICE_TYPE" value:? table:?];
            v361 = [v296 preferenceSpecifierNamed:v298 target:v376 set:sel_setUserSelectedDeviceType_ get:sel_userSelectedDeviceType detail:objc_opt_class() cell:2 edit:0];

            v359 = objc_alloc(MEMORY[0x277CBEA60]);
            v357 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v299 = [v357 localizedStringForKey:@"CAR_STEREO_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v353 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v350 = [v353 localizedStringForKey:@"HEADPHONE_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v300 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v301 = [v300 localizedStringForKey:@"HEARING_AID_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v302 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v303 = [v302 localizedStringForKey:@"SPEAKER_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v304 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v305 = [v304 localizedStringForKey:@"OTHER_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v360 = [v359 initWithObjects:{v299, v350, v301, v303, v305, 0}];

            v306 = objc_alloc(MEMORY[0x277CBEA60]);
            v307 = [MEMORY[0x277CCABB0] numberWithInt:1];
            v308 = [MEMORY[0x277CCABB0] numberWithInt:2];
            v309 = [MEMORY[0x277CCABB0] numberWithInt:3];
            v310 = [MEMORY[0x277CCABB0] numberWithInt:4];
            v311 = [MEMORY[0x277CCABB0] numberWithInt:5];
            v358 = [v306 initWithObjects:{v307, v308, v309, v310, v311, 0}];

            v349 = objc_alloc(MEMORY[0x277CBEA60]);
            v354 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v312 = [v354 localizedStringForKey:@"CAR_STEREO_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v351 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v348 = [v351 localizedStringForKey:@"HEADPHONE_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v313 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v314 = [v313 localizedStringForKey:@"HEARING_AID_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v315 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v316 = [v315 localizedStringForKey:@"SPEAKER_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v317 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v318 = [v317 localizedStringForKey:@"OTHER_TYPE" value:&stru_286339F58 table:@"DeviceConfig"];
            v319 = v312;
            v320 = [v349 initWithObjects:{v312, v348, v314, v316, v318, 0}];

            v8 = v367;
            classicDevice18 = v361;

            selfCopy = v376;
            [v361 setValues:v358 titles:v360 shortTitles:v320];
            v321 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v322 = [v321 localizedStringForKey:@"DEVICE_TYPE_FOOTER" value:&stru_286339F58 table:@"DeviceConfig"];
            [v361 setProperty:v322 forKey:*MEMORY[0x277D40118]];

            [(NSMutableArray *)v376->_deviceTypeSpecifiers addObject:v361];
            v216 = v368;

            goto LABEL_114;
          }

          classicDevice20 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
          v295 = [classicDevice20 isServiceSupported:16];

          if (v295)
          {
            goto LABEL_113;
          }
        }

LABEL_115:
        [(BTSDeviceConfigController *)selfCopy loadSyncSettings];
        if (selfCopy->_syncSettings.supported)
        {
          [v216 addObjectsFromArray:selfCopy->_syncContactsSpecifiers];
          if (selfCopy->_syncSettings.enabled)
          {
            [v216 addObjectsFromArray:selfCopy->_syncGroupsSpecifiers];
          }
        }

        classicDevice21 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
        if ([classicDevice21 isServiceSupported:0x80000])
        {
          canDisconnect = [(BTSDeviceConfigController *)selfCopy canDisconnect];

          v55 = v364;
          if (canDisconnect)
          {
            [v216 addObjectsFromArray:selfCopy->_aacpControlSpecifiers];
          }
        }

        else
        {

          v55 = v364;
        }

        classicDevice22 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
        connected = [classicDevice22 connected];

        if (connected)
        {
          [v216 addObjectsFromArray:selfCopy->_accessoryFirmwareSpecifiers];
        }

        [v216 addObjectsFromArray:selfCopy->_accessoryInfoSpecifiers];
        if ([(NSMutableArray *)selfCopy->_deviceTypeSpecifiers count])
        {
          [v216 addObjectsFromArray:selfCopy->_deviceTypeSpecifiers];
        }

        if ([(BTSDeviceConfigController *)selfCopy canDisconnect])
        {
          [v216 addObjectsFromArray:selfCopy->_ancsControlSpecifiers];
          v327 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
          [v216 addObject:v327];

          v328 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:1];
          [v216 addObject:v328];

          if ([(BTSDeviceConfigController *)selfCopy isTempPaired])
          {
            getPermanentPairSpecifier = [(BTSDeviceConfigController *)selfCopy getPermanentPairSpecifier];
            [v216 addObject:getPermanentPairSpecifier];
          }

          classicDevice23 = [(BluetoothDeviceProtocol *)selfCopy->_device classicDevice];
          isGuestPairingMode = [classicDevice23 isGuestPairingMode];

          v333 = sharedBluetoothSettingsLogComponent(v332);
          v334 = os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT);
          if (isGuestPairingMode)
          {
            if (v334)
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v333, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Adding Upgrade Button", buf, 2u);
            }

            v333 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:3];
            [v216 addObject:v333];
          }

          else if (v334)
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v333, OS_LOG_TYPE_DEFAULT, "Guest Pairing: NOT Adding Upgrade Button", buf, 2u);
          }
        }

        else
        {
          if (![(BTSDeviceConfigController *)selfCopy canUnpair])
          {
            forgetButtonSpecifier = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
            goto LABEL_140;
          }

          [v216 addObjectsFromArray:selfCopy->_ancsControlSpecifiers];
          v335 = [(NSArray *)selfCopy->_controlGroupSpecifiers objectAtIndexedSubscript:0];
          [v216 addObject:v335];
        }

        forgetButtonSpecifier = [(BTSDeviceConfigController *)selfCopy forgetButtonSpecifier];
LABEL_140:
        v337 = forgetButtonSpecifier;
        [v216 addObject:forgetButtonSpecifier];

        objc_storeStrong((&selfCopy->super.super.super.super.super.isa + v55), v216);
        goto LABEL_141;
      }

      v262 = sharedBluetoothSettingsLogComponent(v261);
      if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v262, OS_LOG_TYPE_DEFAULT, "Occlusion Detection: Get Occlusion Detection Specifiers", buf, 2u);
      }

      classicDevice12 = [(BTSDeviceConfigController *)selfCopy hearingModeUIService];
      occlusionDetectionSpecifiers = [classicDevice12 occlusionDetectionSpecifiers];
      [v216 addObjectsFromArray:occlusionDetectionSpecifiers];
    }

    goto LABEL_94;
  }

  v15 = sharedBluetoothSettingsLogComponent(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(BTSDeviceConfigController *)v5 specifiers];
  }

LABEL_14:

  productName = [(BTSDeviceConfigController *)selfCopy navigationController];
  v19 = [productName popViewControllerAnimated:1];
  v20 = MEMORY[0x277CBEBF8];
LABEL_147:

LABEL_148:

  return v20;
}

- (id)forgetButtonSpecifier
{
  v3 = [(NSArray *)self->_controlGroupSpecifiers objectAtIndexedSubscript:2];
  if ([(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    leDevice = [(BTSDeviceConfigController *)self leDevice];
    underlyingDADevice = [leDevice underlyingDADevice];
    wifiAwareDevicePairingID = [underlyingDADevice wifiAwareDevicePairingID];

    if (wifiAwareDevicePairingID)
    {
      v7 = MEMORY[0x277D3FAD8];
      unpairDeviceButtonTitle = [MEMORY[0x277CB8900] unpairDeviceButtonTitle];
      v9 = [v7 preferenceSpecifierNamed:unpairDeviceButtonTitle target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v9 setButtonAction:sel_unpairButtonTapped_];
      [v9 setIdentifier:@"FORGET_BUTTON"];
      v3 = v9;
    }
  }

  return v3;
}

- (void)loadAccessoryFirmwareInfo
{
  v3 = MGGetBoolAnswer();
  Int64 = CFPrefs_GetInt64();
  if (v3)
  {
    v5 = Int64 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return;
  }

  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([HPSProductUtils isAppleHeadphone:?])
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    isTemporaryPaired = [classicDevice2 isTemporaryPaired];

    if (isTemporaryPaired)
    {
      return;
    }

    classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    isGenuineAirPods = [classicDevice3 isGenuineAirPods];

    if (!isGenuineAirPods)
    {
      return;
    }

    classicDevice = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Internal" target:self set:0 get:0 detail:0 cell:0 edit:0];
    [(NSMutableArray *)self->_accessoryFirmwareSpecifiers addObject:?];
    if ([(BTSDeviceConfigController *)self shouldShowInternalFitTestToggle])
    {
      v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Force Show Fit Test" target:self set:sel_setForceShowFitTest_ get:sel_forceShowFitTest detail:0 cell:6 edit:0];
      [(NSMutableArray *)self->_accessoryFirmwareSpecifiers addObject:v10];
    }

    classicDevice4 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if ([classicDevice4 getAACPCapabilityBit:64])
    {
      classicDevice5 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      getSpatialAudioPlatformSupport = [classicDevice5 getSpatialAudioPlatformSupport];

      if (getSpatialAudioPlatformSupport != 1)
      {
LABEL_15:
        v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Configure Livability" target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v16 setButtonAction:sel_presentAssetLocationLink];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"More details available at %@.", @"Recommended Builds"];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        [classicDevice setProperty:v19 forKey:*MEMORY[0x277D3FF48]];

        [classicDevice setProperty:v17 forKey:*MEMORY[0x277D3FF70]];
        v24.location = [v17 rangeOfString:@"Recommended Builds"];
        v20 = NSStringFromRange(v24);
        [classicDevice setProperty:v20 forKey:*MEMORY[0x277D3FF58]];

        v21 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [classicDevice setProperty:v21 forKey:*MEMORY[0x277D3FF68]];

        [classicDevice setProperty:@"userDidTapRecommendedBuilds:" forKey:*MEMORY[0x277D3FF50]];
        [(NSMutableArray *)self->_accessoryFirmwareSpecifiers addObject:v16];

        goto LABEL_16;
      }

      classicDevice4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Use Spatial Audio Profile" target:self set:sel_setSoundProfileAllowed_ get:sel_soundProfileAllowed detail:0 cell:6 edit:0];
      [(NSMutableArray *)self->_accessoryFirmwareSpecifiers addObject:classicDevice4];
      v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Dynamic Audio Feedback" target:self set:sel_setDynamicEnrollmentFeedback_ get:sel_dynamicEnrollmentFeedback detail:0 cell:6 edit:0];
      [(NSMutableArray *)self->_accessoryFirmwareSpecifiers addObject:v14];
      v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Video Capture Spatial Audio Profile" target:self set:sel_setSpatialProfileVideoCapture_ get:sel_spatialProfileVideoCapture detail:0 cell:6 edit:0];
      [(NSMutableArray *)self->_accessoryFirmwareSpecifiers addObject:v15];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (BOOL)shouldForceShowFitTest
{
  forceShowFitTest = [(BTSDeviceConfigController *)self forceShowFitTest];
  if ([forceShowFitTest BOOLValue])
  {
    shouldShowInternalFitTestToggle = [(BTSDeviceConfigController *)self shouldShowInternalFitTestToggle];
  }

  else
  {
    shouldShowInternalFitTestToggle = 0;
  }

  return shouldShowInternalFitTestToggle;
}

- (BOOL)shouldShowInternalFitTestToggle
{
  v11 = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice productId];

  v4 = ((productId - 8217) < 8) & (0xA5u >> (productId - 25));
  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (v4)
    {
      v7 = "Yes";
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Internal Fit Test: Should Show Internal Fit Test Toggle: %s", &v9, 0xCu);
  }

  return v4;
}

- (id)forceShowFitTest
{
  v9 = *MEMORY[0x277D85DE8];
  Int64 = CFPrefs_GetInt64();
  v3 = sharedBluetoothSettingsLogComponent(Int64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "No";
    if (Int64)
    {
      v4 = "Yes";
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Internal Fit Test: Force Show Fit Test: %s", &v7, 0xCu);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:Int64 != 0];

  return v5;
}

- (void)setForceShowFitTest:(id)test
{
  v9 = *MEMORY[0x277D85DE8];
  bOOLValue = [test BOOLValue];
  v4 = CFPrefs_SetValue();
  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "No";
    if (bOOLValue)
    {
      v6 = "Yes";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Internal Fit Test: Set Force Show Fit Test to: %s", &v7, 0xCu);
  }
}

- (void)setSpatialProfileVideoCapture:(id)capture
{
  [capture BOOLValue];

  CFPrefs_SetValue();
}

- (id)spatialProfileVideoCapture
{
  v2 = CFPrefs_GetInt64() != 0;
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithBool:v2];
}

- (void)setAdaptiveVolumeMode:(id)mode
{
  if ([mode BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  [classicDevice setDeviceAdaptiveVolumeMode:v4];
}

- (id)adaptiveVolumeMode
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getDeviceAdaptiveVolumeMode = [classicDevice getDeviceAdaptiveVolumeMode];

  if (getDeviceAdaptiveVolumeMode == 1)
  {
    v6 = 1;
  }

  else
  {
    if (!getDeviceAdaptiveVolumeMode)
    {
      v5 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BTSDeviceConfigController adaptiveVolumeMode];
      }
    }

    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (void)setDynamicEnrollmentFeedback:(id)feedback
{
  bOOLValue = [feedback BOOLValue];
  v4 = MEMORY[0x277CBED28];
  if (!bOOLValue)
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"DynamicEnrollmentFeedback", *v4, @"com.apple.BTServer");

  CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

- (id)dynamicEnrollmentFeedback
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"DynamicEnrollmentFeedback", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return v4;
}

- (void)loadSyncSettings
{
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_251143000, v2, v3, "%@ BTServer's sync group out-of-date, defaulting to None", v4, v5, v6, v7);
}

- (void)loadAccessorySettings
{
  v556[2] = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  accessorySettingFeatureBitMask = [classicDevice accessorySettingFeatureBitMask];

  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice2 productId];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BTSDeviceConfigController loadAccessorySettings];
  }

  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BTSDeviceConfigController loadAccessorySettings];
  }

  firmwareSeedingSpecifiers = [(BTSDeviceConfigController *)self firmwareSeedingSpecifiers];
  if ([firmwareSeedingSpecifiers count])
  {
    [(NSMutableArray *)self->_nameControlSpecifiers addObjectsFromArray:firmwareSeedingSpecifiers];
  }

  v541 = firmwareSeedingSpecifiers;
  if (!self->_isWatch && ![(BTSDeviceConfigController *)self managedByDeviceAccess])
  {
    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_NAME_ID"];
    v12 = MEMORY[0x277D3FAD8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"DEVICE_NAME_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];
    v15 = [v12 preferenceSpecifierNamed:v14 target:self set:sel_setDeviceName_specifier_ get:sel_deviceName_ detail:objc_opt_class() cell:2 edit:0];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[BTSDeviceConfigController canDisconnect](self, "canDisconnect")}];
    [v15 setProperty:v16 forKey:*MEMORY[0x277D3FF38]];

    [v15 setIdentifier:@"NAME_EDITING_ID"];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v17 setObject:@"sentences" forKey:*MEMORY[0x277D3FDA0]];
    device = self->_device;
    v19 = +[HPSDevice deviceKey];
    [v17 setObject:device forKey:v19];

    [v15 setUserInfo:v17];
    [(BTSDeviceConfigController *)self reloadSpecifier:v15];
    if ((accessorySettingFeatureBitMask & 1) != 0 || [(BTSDeviceConfigController *)self nicknameEnabled]&& ([(BluetoothDeviceProtocol *)self->_device classicDevice], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      [(NSMutableArray *)self->_nameControlSpecifiers addObject:v11];
      [(NSMutableArray *)self->_nameControlSpecifiers addObject:v15];
    }
  }

  v544 = productId;
  if ((accessorySettingFeatureBitMask & 6) == 2)
  {
    v21 = MEMORY[0x277D3FAD8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"DOUBLE_TAP_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
    v24 = [v21 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v24];
    v25 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v533 = v24;
    [v24 setProperty:v25 forKey:*MEMORY[0x277D3FFE8]];

    v26 = MEMORY[0x277D3FAD8];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
    v29 = [v26 preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v29 setIdentifier:@"SIRI_ID"];
    v30 = MEMORY[0x277D3FAD8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"PLAY_PAUSE" value:&stru_286339F58 table:@"DeviceConfig"];
    v33 = [v30 preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v33 setIdentifier:@"MEDIA_ID"];
    v34 = MEMORY[0x277D3FAD8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"OFF" value:&stru_286339F58 table:@"DeviceConfig"];
    v37 = [v34 preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v37 setIdentifier:@"OFF_ID"];
    classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    doubleTapAction = [classicDevice3 doubleTapAction];

    if (doubleTapAction)
    {
      v40 = v29;
      v41 = v533;
      if (doubleTapAction != 1)
      {
        v40 = v33;
        if (doubleTapAction != 2)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v40 = v37;
      v41 = v533;
    }

    [v41 setProperty:v40 forKey:*MEMORY[0x277D40090]];
LABEL_23:
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v29];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v33];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v37];
    goto LABEL_24;
  }

  if ((accessorySettingFeatureBitMask & 4) == 0)
  {
    goto LABEL_25;
  }

  v42 = MEMORY[0x277D3FAD8];
  v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v44 = [v43 localizedStringForKey:@"DOUBLE_TAP_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
  v534 = [v42 preferenceSpecifierNamed:v44 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v534];
  v45 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v534 setProperty:v45 forKey:*MEMORY[0x277D3FFE8]];

  v46 = MEMORY[0x277D3FAD8];
  v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v48 = [v47 localizedStringForKey:@"LEFT_AIRPOD" value:&stru_286339F58 table:@"DeviceConfig"];
  v526 = [v46 preferenceSpecifierNamed:v48 target:self set:sel_setdoubleTapActionLeft_ get:sel_doubleTapActionLeft detail:objc_opt_class() cell:2 edit:0];

  v520 = objc_alloc(MEMORY[0x277CBEA60]);
  v507 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v498 = [v507 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
  v502 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v49 = [v502 localizedStringForKey:@"PLAY_PAUSE" value:&stru_286339F58 table:@"DeviceConfig"];
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"NEXT_TRACK" value:&stru_286339F58 table:@"DeviceConfig"];
  v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v53 = [v52 localizedStringForKey:@"PREVIOUS_TRACK" value:&stru_286339F58 table:@"DeviceConfig"];
  v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v55 = [v54 localizedStringForKey:@"OFF" value:&stru_286339F58 table:@"DeviceConfig"];
  v521 = [v520 initWithObjects:{v498, v49, v51, v53, v55, 0}];

  v56 = objc_alloc(MEMORY[0x277CBEA60]);
  v57 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v58 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v59 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v60 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v61 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v37 = [v56 initWithObjects:{v57, v58, v59, v60, v61, 0}];

  v499 = objc_alloc(MEMORY[0x277CBEA60]);
  v508 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v495 = [v508 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
  v503 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v503 localizedStringForKey:@"PLAY_PAUSE" value:&stru_286339F58 table:@"DeviceConfig"];
  v492 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v63 = [v492 localizedStringForKey:@"NEXT_TRACK" value:&stru_286339F58 table:@"DeviceConfig"];
  v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v65 = [v64 localizedStringForKey:@"PREVIOUS_TRACK" value:&stru_286339F58 table:@"DeviceConfig"];
  v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v67 = [v66 localizedStringForKey:@"OFF" value:&stru_286339F58 table:@"DeviceConfig"];
  v68 = [v499 initWithObjects:{v495, v62, v63, v65, v67, 0}];

  v69 = v68;
  [v526 setValues:v37 titles:v521 shortTitles:v68];
  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v526];
  v70 = MEMORY[0x277D3FAD8];
  v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v72 = [v71 localizedStringForKey:@"RIGHT_AIRPOD" value:&stru_286339F58 table:@"DeviceConfig"];
  v73 = [v70 preferenceSpecifierNamed:v72 target:self set:sel_setdoubleTapActionRight_ get:sel_doubleTapActionRight detail:objc_opt_class() cell:2 edit:0];

  v29 = v526;
  [v73 setValues:v37 titles:v521 shortTitles:v69];
  v33 = v521;
  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v73];

  v41 = v534;
LABEL_24:

  productId = v544;
LABEL_25:
  classicDevice4 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v75 = [classicDevice4 featureCapability:28];

  v76 = MEMORY[0x277D3FE58];
  if ((v75 & 1) != 0 || productId == 8204)
  {
    v77 = MEMORY[0x277D3FAD8];
    v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v79 = [v78 localizedStringForKey:@"LISTENING_MODE_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
    v80 = [v77 preferenceSpecifierNamed:v79 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v80];
    v81 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setListeningMode_ get:sel_listeningMode detail:0 cell:-1 edit:0];
    [v81 setProperty:objc_opt_class() forKey:*v76];
    [v81 setIdentifier:@"LISTENING_MODE_ID"];
    v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
    classicDevice5 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v84 = +[HPSDevice deviceKey];
    [v82 setObject:classicDevice5 forKey:v84];

    [v81 setUserInfo:v82];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v81];
  }

  classicDevice6 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v86 = [classicDevice6 featureCapability:28];
  if (productId == 8215)
  {
    v87 = 1;
  }

  else
  {
    v87 = (accessorySettingFeatureBitMask >> 5) & 1;
  }

  if (!v86 || !v87)
  {
    goto LABEL_42;
  }

  classicDevice7 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  listeningModeConfigs = [classicDevice7 listeningModeConfigs];

  self->_listeningModeConfigs.anc = (listeningModeConfigs & 2) != 0;
  self->_listeningModeConfigs.transparency = (listeningModeConfigs & 4) != 0;
  self->_listeningModeConfigs.normal = listeningModeConfigs & 1;
  if (((listeningModeConfigs >> 1) & 1) == 0)
  {
    goto LABEL_40;
  }

  if (self->_listeningModeConfigs.transparency)
  {
    if (listeningModeConfigs)
    {
      v90 = @"NC&Off&T";
    }

    else
    {
      v90 = @"NC&T";
    }

    goto LABEL_41;
  }

  if (listeningModeConfigs)
  {
    v90 = @"NC&Off";
  }

  else
  {
LABEL_40:
    v90 = @"T&Off";
  }

LABEL_41:
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:16 value:0 featureValueString:v90];
  v91 = MEMORY[0x277D3FAD8];
  v92 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"BUTTON_CYCLE_HEADER"];
  v93 = [v91 preferenceSpecifierNamed:v92 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v94 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"BUTTON_CYCLE_FOOTER"];
  v527 = v93;
  [v93 setProperty:v94 forKey:*MEMORY[0x277D3FF88]];

  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v93];
  v95 = MEMORY[0x277D3FAD8];
  v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v97 = [v96 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION" value:&stru_286339F58 table:@"DeviceConfig"];
  v98 = [v95 preferenceSpecifierNamed:v97 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v500 = *MEMORY[0x277D3FFB8];
  [v98 setProperty:@"ANC" forKey:?];
  v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v100 = [v99 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
  v535 = *MEMORY[0x277D40160];
  [v98 setProperty:v100 forKey:?];

  v101 = MEMORY[0x277D755B8];
  v102 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v513 = [v101 imageNamed:@"Noise Cancellation.pdf" inBundle:v102 compatibleWithTraitCollection:0];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v104 = [v513 imageWithTintColor:systemBlueColor];
  v105 = *MEMORY[0x277D3FFC0];
  v493 = *MEMORY[0x277D3FFC0];
  [v98 setProperty:v104 forKey:*MEMORY[0x277D3FFC0]];

  v106 = objc_opt_class();
  v496 = *v76;
  [v98 setProperty:v106 forKey:?];
  [v98 setButtonAction:?];
  v107 = MEMORY[0x277D3FAD8];
  v108 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v109 = [v108 localizedStringForKey:@"ACTIVE_PASS_THROUGH" value:&stru_286339F58 table:@"DeviceConfig"];
  v110 = [v107 preferenceSpecifierNamed:v109 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v110 setProperty:@"Passthrough" forKey:v500];
  v111 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v112 = [v111 localizedStringForKey:@"ACTIVE_PASS_THROUGH_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
  [v110 setProperty:v112 forKey:v535];

  v113 = MEMORY[0x277D755B8];
  v114 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v504 = [v113 imageNamed:@"Transparency.pdf" inBundle:v114 compatibleWithTraitCollection:0];

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  v116 = [v504 imageWithTintColor:systemBlueColor2];
  [v110 setProperty:v116 forKey:v105];

  [v110 setProperty:objc_opt_class() forKey:v496];
  [v110 setButtonAction:sel_listeningModeConfigSelected_];
  v117 = MEMORY[0x277D3FAD8];
  v118 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v119 = [v118 localizedStringForKey:@"BYPASS" value:&stru_286339F58 table:@"DeviceConfig"];
  v120 = [v117 preferenceSpecifierNamed:v119 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v120 setProperty:@"Off" forKey:v500];
  v121 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v122 = [v121 localizedStringForKey:@"BYPASS_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
  [v120 setProperty:v122 forKey:v535];

  v123 = MEMORY[0x277D755B8];
  v124 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v125 = [v123 imageNamed:@"Off.pdf" inBundle:v124 compatibleWithTraitCollection:0];

  systemBlueColor3 = [MEMORY[0x277D75348] systemBlueColor];
  v127 = [v125 imageWithTintColor:systemBlueColor3];
  [v120 setProperty:v127 forKey:v493];

  [v120 setProperty:objc_opt_class() forKey:v496];
  [v120 setButtonAction:sel_listeningModeConfigSelected_];
  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v120];
  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v110];
  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v98];

  productId = v544;
LABEL_42:
  v128 = _os_feature_enabled_impl();
  if (v128)
  {
    v129 = sharedBluetoothSettingsLogComponent(v128);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v129, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Get Specifiers", buf, 2u);
    }

    aacpControlSpecifiers = self->_aacpControlSpecifiers;
    hearingModeUIService = [(BTSDeviceConfigController *)self hearingModeUIService];
    specifiers = [hearingModeUIService specifiers];
    [(NSMutableArray *)aacpControlSpecifiers addObjectsFromArray:specifiers];
  }

  if (productId == 8210 || (-[BluetoothDeviceProtocol classicDevice](self->_device, "classicDevice"), v133 = objc_claimAutoreleasedReturnValue(), v134 = [v133 getAACPCapabilityBit:12], v133, v134))
  {
    v135 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v136 = self->_device;
    v137 = +[HPSDevice deviceKey];
    [v135 setObject:v136 forKey:v137];

    v536 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"PRESS_AND_HOLD_HEADER"];
    v138 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    v528 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"PRESS_AND_HOLD_FOOTER"];
    v514 = *MEMORY[0x277D3FF88];
    [v138 setProperty:? forKey:?];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v138];
    v522 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"PRESS_AND_HOLD"];
    v139 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v522 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v139 setIdentifier:@"PRESS_AND_HOLD_ID"];
    [v139 setUserInfo:v135];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v139];
    productId = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v140 = [HPSProductUtils isBeatsNonWx:productId];

    LODWORD(productId) = v544;
    v141 = +[HPSProductUtils isRealityDevice];
    if (v544 != 8230 && !v141 && !v140)
    {
      v509 = v135;
      v505 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIT_TEST_GROUP_ID"];
      v142 = MEMORY[0x277D3FAD8];
      v143 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v144 = [v143 localizedStringForKey:@"FIT_TEST" value:&stru_286339F58 table:@"DeviceConfig"];
      v145 = [v142 preferenceSpecifierNamed:v144 target:self set:sel_sealDetectSet_ get:sel_sealDetect detail:0 cell:13 edit:0];

      v146 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v147 = [v146 localizedStringForKey:@"FIT_TEST_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B494"];

      if (v544 == 8239)
      {
        v149 = sharedBluetoothSettingsLogComponent(v148);
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v149, OS_LOG_TYPE_DEFAULT, "Device is recognized as B494B", buf, 2u);
        }

        v150 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v151 = [v150 localizedStringForKey:@"FIT_TEST_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

        v147 = v151;
      }

      [v505 setProperty:v147 forKey:v514];
      [v145 setButtonAction:sel_presentFitTestController_];
      v152 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v153 = self->_device;
      productId = +[HPSDevice deviceKey];
      [v152 setObject:v153 forKey:productId];

      [v145 setUserInfo:v152];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v505];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v145];

      LODWORD(productId) = v544;
      v135 = v509;
    }
  }

  if (productId == 8221)
  {
    goto LABEL_58;
  }

  if (productId != 8217 && productId != 8222)
  {
    classicDevice8 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if (![classicDevice8 featureCapability:30])
    {
LABEL_61:

      goto LABEL_64;
    }

    classicDevice9 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v245 = [classicDevice9 getAACPCapabilityBit:12];

    if ((v245 & 1) == 0)
    {
LABEL_58:
      v154 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v155 = [v154 localizedStringForKey:@"CLICK_HOLD_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];

      if (productId == 8221)
      {
        v156 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v157 = [v156 localizedStringForKey:@"CLICK_HOLD_HEADER" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

        v155 = v157;
      }

      v529 = v155;
      v537 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v155 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v537];
      v158 = objc_alloc(MEMORY[0x277CBEA60]);
      v159 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v160 = [v159 localizedStringForKey:@"NOISE_CONTROL" value:? table:?];
      getVoiceAssistant = [(BTSDeviceConfigController *)self getVoiceAssistant];
      v515 = [v158 initWithObjects:{v160, getVoiceAssistant, 0}];

      v162 = objc_alloc(MEMORY[0x277CBEA60]);
      v163 = [MEMORY[0x277CCABB0] numberWithInt:5];
      v164 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v510 = [v162 initWithObjects:{v163, v164, 0}];

      v165 = objc_alloc(MEMORY[0x277CBEA60]);
      productId = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v166 = [productId localizedStringForKey:@"NOISE_CONTROL" value:&stru_286339F58 table:@"DeviceConfig"];
      getVoiceAssistant2 = [(BTSDeviceConfigController *)self getVoiceAssistant];
      v506 = [v165 initWithObjects:{v166, getVoiceAssistant2, 0}];

      v168 = objc_alloc_init(MEMORY[0x277CBEB38]);
      classicDevice10 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v170 = +[HPSDevice deviceKey];
      [v168 setObject:classicDevice10 forKey:v170];

      v171 = MEMORY[0x277D3FAD8];
      v172 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v173 = [v172 localizedStringForKey:@"LEFT" value:&stru_286339F58 table:@"DeviceConfig"];
      v174 = [v171 preferenceSpecifierNamed:v173 target:self set:sel_setGestureMode_specifier_ get:sel_clickHoldModeLeft detail:objc_opt_class() cell:2 edit:0];

      [v174 setIdentifier:@"LEFT_ID"];
      [v174 setValues:v510 titles:v515 shortTitles:v506];
      [v174 setUserInfo:v168];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v174];
      v175 = MEMORY[0x277D3FAD8];
      v176 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v177 = [v176 localizedStringForKey:@"RIGHT" value:&stru_286339F58 table:@"DeviceConfig"];
      v178 = [v175 preferenceSpecifierNamed:v177 target:self set:sel_setGestureMode_specifier_ get:sel_clickHoldModeRight detail:objc_opt_class() cell:2 edit:0];

      classicDevice8 = v529;
      [v178 setIdentifier:@"RIGHT_ID"];
      [v178 setValues:v510 titles:v515 shortTitles:v506];
      [v178 setUserInfo:v168];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v178];

      LODWORD(productId) = v544;
      goto LABEL_61;
    }
  }

LABEL_64:
  classicDevice11 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([classicDevice11 getAACPCapabilityBit:80])
  {
    v181 = _os_feature_enabled_impl();

    if (!v181)
    {
      goto LABEL_73;
    }

    v182 = MEMORY[0x277D3FAD8];
    v183 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v184 = [v183 localizedStringForKey:@"CALL_CONTROLS" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    classicDevice11 = [v182 preferenceSpecifierNamed:v184 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:classicDevice11];
    v185 = MEMORY[0x277D3FAD8];
    v186 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v187 = [v186 localizedStringForKey:@"ANSWER_CALL" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    v188 = [v185 preferenceSpecifierNamed:v187 target:self set:0 get:sel_getAnswerCallOption_ detail:0 cell:4 edit:0];

    [v188 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
    v530 = v188;
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v188];
    v189 = objc_alloc(MEMORY[0x277CBEA60]);
    v190 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v191 = [v190 localizedStringForKey:@"PRESS_ONCE" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    v192 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v193 = [v192 localizedStringForKey:@"PRESS_TWICE" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    v538 = [v189 initWithObjects:{v191, v193, 0}];

    v194 = objc_alloc(MEMORY[0x277CBEA60]);
    v195 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v196 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v197 = [v194 initWithObjects:{v195, v196, 0}];

    v198 = objc_alloc(MEMORY[0x277CBEA60]);
    v199 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v200 = [v199 localizedStringForKey:@"PRESS_ONCE" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    v201 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v202 = [v201 localizedStringForKey:@"PRESS_TWICE" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    v203 = [v198 initWithObjects:{v200, v202, 0}];

    classicDevice12 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    getCallManagementConfig = [classicDevice12 getCallManagementConfig];

    if (getCallManagementConfig)
    {
      if (getCallManagementConfig != 1)
      {
LABEL_71:

        LODWORD(productId) = v544;
        goto LABEL_72;
      }

      if (_os_feature_enabled_impl())
      {
        v206 = MEMORY[0x277D3FAD8];
        v207 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v208 = [v207 localizedStringForKey:@"MUTE_CALL" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
        v209 = [v206 preferenceSpecifierNamed:v208 target:self set:sel_setMuteCallMode_ get:sel_getMuteCallMode detail:objc_opt_class() cell:2 edit:0];

        [v209 setValues:v197 titles:v538 shortTitles:v203];
        [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v209];
      }
    }

    v210 = MEMORY[0x277D3FAD8];
    v211 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v212 = [v211 localizedStringForKey:@"END_CALL" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];
    v213 = [v210 preferenceSpecifierNamed:v212 target:self set:sel_setEndCallMode_ get:sel_getEndCallMode detail:objc_opt_class() cell:2 edit:0];

    [v213 setValues:v197 titles:v538 shortTitles:v203];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v213];

    goto LABEL_71;
  }

LABEL_72:

LABEL_73:
  [(BTSDeviceConfigController *)self addHearingSpecifiers];
  if (productId == 8221)
  {
    v214 = self->_aacpControlSpecifiers;
    b498Specifiers = [(BTSDeviceConfigController *)self b498Specifiers];
    [(NSMutableArray *)v214 addObjectsFromArray:b498Specifiers];
  }

  classicDevice13 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v217 = [classicDevice13 getAACPCapabilityBit:32];

  if (v217)
  {
    v539 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DIGITAL_CROWN_GROUP_ID"];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v539];
    v218 = MEMORY[0x277D3FAD8];
    v219 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v220 = [v219 localizedStringForKey:@"DIGITAL_CROWN" value:&stru_286339F58 table:@"DeviceConfig-b515"];
    v221 = [v218 preferenceSpecifierNamed:v220 target:self set:sel_setDigitalCrownMode_ get:sel_digitalCrownMode detail:objc_opt_class() cell:2 edit:0];

    v222 = objc_alloc(MEMORY[0x277CBEA60]);
    v223 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v224 = [v223 localizedStringForKey:@"BACK_TO_FRONT" value:&stru_286339F58 table:@"DeviceConfig-b515"];
    v225 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v226 = [v225 localizedStringForKey:@"FRONT_TO_BACK" value:&stru_286339F58 table:@"DeviceConfig-b515"];
    v227 = [v222 initWithObjects:{v224, v226, 0}];

    v228 = objc_alloc(MEMORY[0x277CBEA60]);
    v229 = [MEMORY[0x277CCABB0] numberWithInt:1];
    productId = [MEMORY[0x277CCABB0] numberWithInt:2];
    v230 = [v228 initWithObjects:{v229, productId, 0}];

    LODWORD(productId) = v544;
    [v221 setValues:v230 titles:v227 shortTitles:v227];
    v231 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v232 = [v231 localizedStringForKey:@"DIGITAL_CROWN_HEADER" value:&stru_286339F58 table:@"DeviceConfig-b515"];
    [v221 setProperty:v232 forKey:*MEMORY[0x277D40110]];

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v221];
  }

  v233 = accessorySettingFeatureBitMask;
  if ((accessorySettingFeatureBitMask & 0x28) != 8)
  {
    v236 = 1;
    goto LABEL_99;
  }

  classicDevice14 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v235 = [HPSProductUtils isBeatsNonWx:classicDevice14];

  if (!v235)
  {
    v237 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IED_GROUP_ID"];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v237];
    v238 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v239 = v238;
    if (productId == 8203)
    {
      v246 = [v238 localizedStringForKey:@"IED_FOOTER_TEXT_PB" value:&stru_286339F58 table:@"DeviceConfig"];
      v247 = *MEMORY[0x277D3FF88];
      v248 = v237;
      v249 = v246;
    }

    else
    {
      if (productId == 8208)
      {
        v240 = [v238 localizedStringForKey:@"MED_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig-B372"];
        [v237 setProperty:v240 forKey:*MEMORY[0x277D3FF88]];

        v241 = MEMORY[0x277D3FAD8];
        v242 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v243 = [v242 localizedStringForKey:@"MED_SWITCH" value:&stru_286339F58 table:@"DeviceConfig-B372"];
        [v241 preferenceSpecifierNamed:v243 target:self set:sel_setInEarDetectEnabled_ get:sel_inEarDetectEnabled detail:0 cell:6 edit:0];
        v255 = LABEL_97:;

        [v255 setIdentifier:@"IED_ID"];
        [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v255];

        v236 = v237 == 0;
        LODWORD(productId) = v544;
        goto LABEL_98;
      }

      v250 = [v238 localizedStringForKey:@"IED_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig"];
      v251 = *MEMORY[0x277D3FF88];
      [v237 setProperty:v250 forKey:*MEMORY[0x277D3FF88]];

      switch(productId)
      {
        case 0x2012:
          v252 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v239 = v252;
          v253 = @"DeviceConfig-B494";
          break;
        case 0x202F:
          v252 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v239 = v252;
          v253 = @"DeviceConfig-B494b";
          break;
        case 0x201D:
          v252 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v239 = v252;
          v253 = @"DeviceConfig-B498-v2";
          break;
        default:
LABEL_96:
          v254 = MEMORY[0x277D3FAD8];
          v242 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v243 = [v242 localizedStringForKey:@"IED_SWITCH" value:&stru_286339F58 table:@"DeviceConfig"];
          [v254 preferenceSpecifierNamed:v243 target:self set:sel_setInEarDetectEnabled_ get:sel_inEarDetectEnabled detail:0 cell:6 edit:0];
          goto LABEL_97;
      }

      v246 = [v252 localizedStringForKey:@"IED_FOOTER_TEXT" value:&stru_286339F58 table:v253];
      v248 = v237;
      v249 = v246;
      v247 = v251;
    }

    [v248 setProperty:v249 forKey:v247];

    goto LABEL_96;
  }

  v236 = 1;
LABEL_98:
  v233 = accessorySettingFeatureBitMask;
LABEL_99:
  if (productId == 8208)
  {
    v256 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"AUTO_ANSWER_CALL_GROUP_ID"];
    v257 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v258 = [v257 localizedStringForKey:@"AUTO_ANSWER_CALL_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig-B372"];
    [v256 setProperty:v258 forKey:*MEMORY[0x277D3FF88]];

    p_aacpControlSpecifiers = &self->_aacpControlSpecifiers;
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v256];
    v260 = MEMORY[0x277D3FAD8];
    v261 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v262 = [v261 localizedStringForKey:@"AUTO_ANSWER_CALL_SWITCH" value:&stru_286339F58 table:@"DeviceConfig-B372"];
    v263 = [v260 preferenceSpecifierNamed:v262 target:self set:sel_setAutomaticAnswerCallsEnabled_ get:sel_automaticAnswerCallsEnabled detail:0 cell:6 edit:0];

    v264 = @"AUTO_CALL_ANSWER_ID";
  }

  else
  {
    if ((v233 & 0x20) == 0)
    {
      goto LABEL_104;
    }

    v256 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"OHD_GROUP_ID"];
    v265 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v266 = [v265 localizedStringForKey:@"OHD_FOOTER_TEXT" value:&stru_286339F58 table:@"DeviceConfig-b515"];
    [v256 setProperty:v266 forKey:*MEMORY[0x277D3FF88]];

    p_aacpControlSpecifiers = &self->_aacpControlSpecifiers;
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v256];
    v267 = MEMORY[0x277D3FAD8];
    v268 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v269 = [v268 localizedStringForKey:@"OHD_SWITCH" value:&stru_286339F58 table:@"DeviceConfig-b515"];
    v263 = [v267 preferenceSpecifierNamed:v269 target:self set:sel_setInEarDetectEnabled_ get:sel_inEarDetectEnabled detail:0 cell:6 edit:0];

    v264 = @"OHD_ID";
  }

  [v263 setIdentifier:v264];
  [(NSMutableArray *)*p_aacpControlSpecifiers addObject:v263];

  LODWORD(productId) = v544;
LABEL_104:
  classicDevice15 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([classicDevice15 featureCapability:32])
  {
    classicDevice16 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if (![classicDevice16 smartRouteSupport])
    {
LABEL_133:

      goto LABEL_134;
    }

    classicDevice17 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    connected = [classicDevice17 connected];

    if (!connected)
    {
      goto LABEL_135;
    }

    if (v236)
    {
      v274 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SR_GROUP_ID"];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v274];
    }

    v275 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    uppercaseString = [MGGetStringAnswer() uppercaseString];
    v277 = [@"SMARTROUTE_" stringByAppendingString:uppercaseString];
    classicDevice15 = [v275 localizedStringForKey:v277 value:&stru_286339F58 table:@"DeviceConfig"];

    v278 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    uppercaseString2 = [MGGetStringAnswer() uppercaseString];
    v280 = [@"SMARTROUTE_MANUAL_" stringByAppendingString:uppercaseString2];
    classicDevice16 = [v278 localizedStringForKey:v280 value:&stru_286339F58 table:@"DeviceConfig"];

    classicDevice18 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    productId2 = [classicDevice18 productId];

    0x2000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId2 - 0x2000];
    v284 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v285 = [v284 localizedStringForKey:0x2000 value:&stru_286339F58 table:@"DeviceConfig"];
    v286 = [v285 length];

    if (!v286 || productId2 >> 4 >= 0x201)
    {

      0x2000 = @"ACCESSORY_MODEL_NAME_15";
    }

    switch(productId)
    {
      case 0x2012:
        v287 = 0;
        v288 = 0;
        v523 = 0;
        v289 = @"ACCESSORY_MODEL_NAME_18";
        break;
      case 0x202F:
        v287 = 0;
        v523 = 0;
        v288 = 1;
        v289 = @"ACCESSORY_MODEL_NAME_180";
        break;
      case 0x201D:
        v287 = 0;
        v288 = 0;
        v523 = 0;
        v289 = @"ACCESSORY_MODEL_NAME_42";
        break;
      default:
        v288 = 0;
        switch(productId)
        {
          case 0x2014:
            v289 = @"ACCESSORY_MODEL_NAME_20";
            v287 = 1;
            v523 = 0;
            break;
          case 0x201F:
            v287 = 0;
            v288 = 0;
            v523 = 0;
            v289 = @"ACCESSORY_MODEL_NAME_10";
            break;
          case 0x2024:
            v287 = 0;
            v288 = 0;
            v523 = 1;
            v289 = @"ACCESSORY_MODEL_NAME_20";
            break;
          default:
            v501 = 0;
            v516 = 0;
            v523 = 0;
            goto LABEL_119;
        }

        break;
    }

    v501 = v288;

    v516 = v287;
    0x2000 = v289;
LABEL_119:
    uppercaseString3 = [MGGetStringAnswer() uppercaseString];
    v531 = 0x2000;
    v283 = [@"SMARTROUTE_FOOTER_" stringByAppendingFormat:@"%@_%@", uppercaseString3, 0x2000];

    v494 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:classicDevice15 target:self set:sel_setSmartRouteMode_ get:sel_smartRouteMode detail:objc_opt_class() cell:2 edit:0];
    v291 = objc_alloc(MEMORY[0x277CBEA60]);
    v292 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v293 = [v292 localizedStringForKey:@"SMARTROUTE_AUTOMATIC" value:&stru_286339F58 table:@"DeviceConfig"];
    v294 = [v291 initWithObjects:{v293, classicDevice16, 0}];

    v295 = objc_alloc(MEMORY[0x277CBEA60]);
    v296 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v297 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v298 = [v295 initWithObjects:{v296, v297, 0}];

    v299 = objc_alloc(MEMORY[0x277CBEA60]);
    v300 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v301 = [v300 localizedStringForKey:@"SMARTROUTE_AUTOMATIC" value:&stru_286339F58 table:@"DeviceConfig"];
    v302 = [v299 initWithObjects:{v301, classicDevice16, 0}];

    v511 = v294;
    [v494 setValues:v298 titles:v294 shortTitles:v302];
    v303 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v304 = [v303 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig"];
    v305 = *MEMORY[0x277D40118];
    [v494 setProperty:v304 forKey:*MEMORY[0x277D40118]];

    if (v544 == 8210)
    {
      v306 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v307 = [v306 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig-B494"];
      [v494 setProperty:v307 forKey:v305];
    }

    if (v501)
    {
      v308 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v309 = [v308 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig-B494b"];
      [v494 setProperty:v309 forKey:v305];
    }

    if (v544 == 8221)
    {
      v310 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v311 = [v310 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
      [v494 setProperty:v311 forKey:v305];
    }

    if (v516)
    {
      v312 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v313 = [v312 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig-B698"];
      [v494 setProperty:v313 forKey:v305];
    }

    if (v523)
    {
      v314 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v315 = [v314 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig-B698"];
      [v494 setProperty:v315 forKey:v305];
    }

    if (v544 == 8223 || v544 == 8202)
    {
      v316 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v317 = [v316 localizedStringForKey:v283 value:&stru_286339F58 table:@"DeviceConfig-b515"];
      [v494 setProperty:v317 forKey:v305];
    }

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v494];

    LODWORD(productId) = v544;
    goto LABEL_133;
  }

LABEL_134:

LABEL_135:
  if (+[HPSProductUtils isRealityDevice])
  {
    v318 = MEMORY[0x277D3FAD8];
    v319 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v320 = [v319 localizedStringForKey:@"SMART_ROUTE_VISION" value:&stru_286339F58 table:@"DeviceConfig"];
    v321 = [v318 preferenceSpecifierNamed:v320 target:self set:0 get:sel_smartRoutingIndicationForRealityDevice_ detail:0 cell:4 edit:0];

    if (v321)
    {
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v321];
      v322 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v321 setProperty:v322 forKey:*MEMORY[0x277D3FF38]];
    }
  }

  sleepDetectionSpecifiers = [(BTSDeviceConfigController *)self sleepDetectionSpecifiers];
  if ([sleepDetectionSpecifiers count])
  {
    [(NSMutableArray *)self->_aacpControlSpecifiers addObjectsFromArray:sleepDetectionSpecifiers];
  }

  v540 = sleepDetectionSpecifiers;
  classicDevice19 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v325 = [classicDevice19 getAACPCapabilityBit:64];

  classicDevice20 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getSpatialAudioPlatformSupport = [classicDevice20 getSpatialAudioPlatformSupport];

  if (v325 && getSpatialAudioPlatformSupport == 1)
  {
    v328 = MEMORY[0x277D3FAD8];
    v329 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v330 = [v329 localizedStringForKey:@"SPATIAL_TUTORIAL_HEADER" value:? table:?];
    v524 = [v328 preferenceSpecifierNamed:v330 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v524 setProperty:@"SPATIAL_AUDIO_GROUP_ID" forKey:*MEMORY[0x277D3FFB8]];
    v331 = MEMORY[0x277CCACA8];
    v332 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v333 = [v332 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
    v334 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v335 = [v334 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    v335 = [v331 stringWithFormat:v333, v335];

    v337 = MEMORY[0x277CCACA8];
    v338 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v339 = [v338 localizedStringForKey:@"SPATIAL_AUDIO_WARNING" value:&stru_286339F58 table:@"DeviceConfig"];
    v340 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v341 = [v340 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    v341 = [v337 stringWithFormat:v339, v341];

    [v524 setProperty:v335 forKey:*MEMORY[0x277D3FF88]];
    v556[0] = v335;
    v556[1] = v341;
    v532 = [MEMORY[0x277CBEA60] arrayWithObjects:v556 count:2];
    v343 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v344 = [v343 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    v512 = v335;
    v557.location = [v335 rangeOfString:v344];
    v345 = NSStringFromRange(v557);
    v555[0] = v345;
    v346 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v347 = [v346 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    v517 = v341;
    v558.location = [v341 rangeOfString:v347];
    v348 = NSStringFromRange(v558);
    v555[1] = v348;
    v349 = [MEMORY[0x277CBEA60] arrayWithObjects:v555 count:2];

    v350 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    v554[0] = v350;
    v351 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    v554[1] = v351;
    v352 = [MEMORY[0x277CBEA60] arrayWithObjects:v554 count:2];

    v353 = objc_opt_class();
    v354 = NSStringFromClass(v353);
    [v524 setProperty:v354 forKey:*MEMORY[0x277D3FF48]];

    v355 = +[_TtC16HeadphoneConfigs23MultiLinkableFooterView footerLinkStringsKey];
    v552[0] = v355;
    v553[0] = v532;
    v356 = +[_TtC16HeadphoneConfigs23MultiLinkableFooterView footerLinkTargetsKey];
    v552[1] = v356;
    v553[1] = v352;
    v357 = +[_TtC16HeadphoneConfigs23MultiLinkableFooterView footerLinkActionsKey];
    v552[2] = v357;
    v553[2] = &unk_28634DA80;
    v358 = +[_TtC16HeadphoneConfigs23MultiLinkableFooterView footerLinkRangesKey];
    v552[3] = v358;
    v553[3] = v349;
    v359 = +[_TtC16HeadphoneConfigs23MultiLinkableFooterView footerLinkReuseIDKey];
    v552[4] = v359;
    v553[4] = @"spatialAudioGroupSpecifier";
    v360 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v553 forKeys:v552 count:5];
    [v524 setUserInfo:v360];

    v361 = v524;
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v524];
    if (_os_feature_enabled_impl())
    {
      v362 = self->_aacpControlSpecifiers;
      v363 = +[HPSSpatialProfileManager profileManagementSpecifier];
      [(NSMutableArray *)v362 addObject:v363];
    }

    v364 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v365 = [v364 localizedStringForKey:@"SPATIAL_TUTORIAL" value:&stru_286339F58 table:@"DeviceConfig"];

    if (+[HPSProductUtils isRealityDevice])
    {
      v366 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v367 = [v366 localizedStringForKey:@"SPATIAL_TUTORIAL_VISION" value:&stru_286339F58 table:@"DeviceConfig"];

      v365 = v367;
      v361 = v524;
    }

    LODWORD(productId) = v544;
    v368 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v365 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v368 setButtonAction:sel_presentSpatialTutorialController_];
    [v368 setIdentifier:@"SPATIAL_TUTORIAL_ID"];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v368];
  }

  else
  {
    [(BTSDeviceConfigController *)self addA2DPDisclosureUISpecifier];
  }

  if ((accessorySettingFeatureBitMask & 0x10) != 0 && productId != 8209)
  {
    v369 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MIC_GROUP_ID"];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v369];
    v370 = MEMORY[0x277D3FAD8];
    v371 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v372 = [v371 localizedStringForKey:@"MICROPHONE" value:&stru_286339F58 table:@"DeviceConfig"];
    v373 = [v370 preferenceSpecifierNamed:v372 target:self set:sel_setMicMode_ get:sel_micMode detail:objc_opt_class() cell:2 edit:0];

    v543 = v369;
    v525 = v373;
    if (productId == 8203)
    {
      v374 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v375 = @"DeviceConfig";
      v376 = [v374 localizedStringForKey:@"MIC_FOOTER_PB" value:&stru_286339F58 table:@"DeviceConfig"];
      [v373 setProperty:v376 forKey:*MEMORY[0x277D40118]];

      v377 = objc_alloc(MEMORY[0x277CBEA60]);
      v378 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v379 = [v378 localizedStringForKey:@"MIC_AUTOMATIC_PB" value:&stru_286339F58 table:@"DeviceConfig"];
      v380 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v381 = [v380 localizedStringForKey:@"MIC_LEFT_PB" value:&stru_286339F58 table:@"DeviceConfig"];
      v382 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v383 = v382;
      v384 = @"MIC_RIGHT_PB";
    }

    else
    {
      if (productId != 8210)
      {
        switch(productId)
        {
          case 0x2026:
            v389 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v390 = v389;
            v391 = @"DeviceConfig-B463";
            break;
          case 0x202F:
            v389 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v390 = v389;
            v391 = @"DeviceConfig-B494b";
            break;
          case 0x201D:
            v389 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v390 = v389;
            v391 = @"DeviceConfig-B498-v2";
            break;
          default:
            v486 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v487 = v486;
            v488 = MEMORY[0x277D40118];
            if (productId == 8214)
            {
              v489 = @"DeviceConfig-B607";
            }

            else
            {
              v489 = @"DeviceConfig";
            }

            v490 = [v486 localizedStringForKey:@"MIC_FOOTER" value:&stru_286339F58 table:v489];
            [v373 setProperty:v490 forKey:*v488];

            v491 = objc_alloc(MEMORY[0x277CBEA60]);
            v378 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v379 = [v378 localizedStringForKey:@"MIC_AUTOMATIC" value:&stru_286339F58 table:v489];
            v380 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v381 = [v380 localizedStringForKey:@"MIC_LEFT" value:&stru_286339F58 table:v489];
            v383 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v387 = [v383 localizedStringForKey:@"MIC_RIGHT" value:&stru_286339F58 table:v489];
            v388 = [v491 initWithObjects:{v379, v381, v387, 0}];
            goto LABEL_163;
        }

        v392 = [v389 localizedStringForKey:@"MIC_FOOTER" value:&stru_286339F58 table:v391];
        [v373 setProperty:v392 forKey:*MEMORY[0x277D40118]];

        v518 = objc_alloc(MEMORY[0x277CBEA60]);
        v378 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v379 = [v378 localizedStringForKey:@"MIC_AUTOMATIC" value:&stru_286339F58 table:v391];
        v380 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v381 = [v380 localizedStringForKey:@"MIC_LEFT" value:&stru_286339F58 table:v391];
        v383 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v387 = [v383 localizedStringForKey:@"MIC_RIGHT" value:&stru_286339F58 table:v391];
        v388 = [v518 initWithObjects:{v379, v381, v387, 0}];
LABEL_163:
        v519 = v388;

        v393 = objc_alloc(MEMORY[0x277CBEA60]);
        v394 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v395 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v396 = [MEMORY[0x277CCABB0] numberWithInt:1];
        v397 = [v393 initWithObjects:{v394, v395, v396, 0}];

        v398 = objc_alloc(MEMORY[0x277CBEA60]);
        v399 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v400 = [v399 localizedStringForKey:@"MIC_AUTOMATIC_SHORT" value:&stru_286339F58 table:@"DeviceConfig"];
        v401 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v402 = [v401 localizedStringForKey:@"MIC_LEFT_SHORT" value:&stru_286339F58 table:@"DeviceConfig"];
        v403 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        productId = [v403 localizedStringForKey:@"MIC_RIGHT_SHORT" value:&stru_286339F58 table:@"DeviceConfig"];
        v404 = [v398 initWithObjects:{v400, v402, productId, 0}];

        [v525 setValues:v397 titles:v519 shortTitles:v404];
        [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v525];

        LODWORD(productId) = v544;
        goto LABEL_164;
      }

      v385 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v375 = @"DeviceConfig-B494";
      v386 = [v385 localizedStringForKey:@"MIC_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B494"];
      [v373 setProperty:v386 forKey:*MEMORY[0x277D40118]];

      v377 = objc_alloc(MEMORY[0x277CBEA60]);
      v378 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v379 = [v378 localizedStringForKey:@"MIC_AUTOMATIC" value:&stru_286339F58 table:@"DeviceConfig-B494"];
      v380 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v381 = [v380 localizedStringForKey:@"MIC_LEFT" value:&stru_286339F58 table:@"DeviceConfig-B494"];
      v382 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v383 = v382;
      v384 = @"MIC_RIGHT";
    }

    v387 = [v382 localizedStringForKey:v384 value:&stru_286339F58 table:v375];
    v388 = [v377 initWithObjects:{v379, v381, v387, 0}];
    goto LABEL_163;
  }

LABEL_164:
  if (_os_feature_enabled_impl() && [_TtC16HeadphoneConfigs28BobbleSettingsViewController bobbleSupported:self->_device])
  {
    v405 = +[_TtC16HeadphoneConfigs28BobbleSettingsViewController bobbleMainSepcifier];
    firstObject = [v405 firstObject];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:firstObject];
    lastObject = [v405 lastObject];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [lastObject setUserInfo:dictionary];

    userInfo = [lastObject userInfo];
    v410 = self->_device;
    v411 = +[HPSDevice deviceKey];
    [userInfo setObject:v410 forKey:v411];

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:lastObject];
  }

  getOptimizedBatteryFeatureSpecifiers = [(BTSDeviceConfigController *)self getOptimizedBatteryFeatureSpecifiers];
  if ([getOptimizedBatteryFeatureSpecifiers count])
  {
    [(NSMutableArray *)self->_aacpControlSpecifiers addObjectsFromArray:getOptimizedBatteryFeatureSpecifiers];
  }

  if ([(BTSDeviceConfigController *)self shouldShowCaseSoundForNewAccessories:self->_device productID:productId])
  {
    [(BTSDeviceConfigController *)self initializeCaseConnection];
    [(BTSDeviceConfigController *)self getSoundMode];
    v413 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CASE_SOUND_GROUP_ID"];
    v414 = MEMORY[0x277D3FAD8];
    v415 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v416 = [v415 localizedStringForKey:@"CASE_SOUND" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    v417 = [v414 preferenceSpecifierNamed:v416 target:self set:sel_setCaseSoundEnabled_specifier_ get:sel_getCaseSoundEnabled_ detail:0 cell:6 edit:0];

    [v417 setIdentifier:@"CASE_SOUND_ID"];
    if (!self->_caseSoundSupport)
    {
      [v417 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v413];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v417];
  }

  classicDevice21 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  isAppleAudioDevice = [classicDevice21 isAppleAudioDevice];

  if (isAppleAudioDevice)
  {
    [(BTSDeviceConfigController *)self refreshFindMyStatus];
  }

  classicDevice22 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if (![classicDevice22 isAppleAudioDevice])
  {
    goto LABEL_191;
  }

  classicDevice23 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if (![HPSProductUtils isFeatureSupported:1 byDevice:classicDevice23])
  {

LABEL_191:
    goto LABEL_192;
  }

  findMySupport = self->_findMySupport;

  if (!findMySupport)
  {
LABEL_192:
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_199;
    }

    classicDevice24 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if (![HPSProductUtils isFeatureSupported:1 byDevice:classicDevice24]|| ![(BTSDeviceConfigController *)self isiCloudEnabled])
    {
      goto LABEL_198;
    }

    classicDevice25 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    connected2 = [classicDevice25 connected];

    if (!connected2)
    {
      goto LABEL_199;
    }

    classicDevice24 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIND_MY_GROUP_ID"];
    v443 = MEMORY[0x277D3FAD8];
    v444 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v445 = [v444 localizedStringForKey:@"FIND_MY" value:&stru_286339F58 table:@"DeviceConfig"];
    v428 = [v443 preferenceSpecifierNamed:v445 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v428 setButtonAction:sel_presentFindMyLink];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:classicDevice24];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v428];
    goto LABEL_197;
  }

  classicDevice24 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIND_MY_GROUP_ID"];
  findMyEnable = self->_findMyEnable;
  v425 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v426 = v425;
  if (findMyEnable)
  {
    v427 = @"FIND_MY_NETWORK_GROUP_FOOTER_ENABLED";
  }

  else
  {
    v427 = @"FIND_MY_NETWORK_GROUP_FOOTER_DISABLED";
  }

  v428 = [v425 localizedStringForKey:v427 value:&stru_286339F58 table:@"DeviceConfig"];

  [classicDevice24 setProperty:v428 forKey:*MEMORY[0x277D3FF88]];
  [(NSMutableArray *)self->_aacpControlSpecifiers addObject:classicDevice24];
  classicDevice26 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v430 = [HPSProductUtils isFeatureSupported:0 byDevice:classicDevice26];

  if (v430)
  {
    v431 = MEMORY[0x277D3FAD8];
    v432 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v433 = [v432 localizedStringForKey:@"FIND_MY_NETWORK" value:&stru_286339F58 table:@"DeviceConfig"];
    v434 = [v431 preferenceSpecifierNamed:v433 target:self set:sel_setFindMyEnable_specifier_ get:sel_getFindMyEnable_ detail:0 cell:6 edit:0];

    [v434 setIdentifier:@"FIND_MY_ID"];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v434];
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_197;
  }

  classicDevice27 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if (![HPSProductUtils isAppleHeadphone:classicDevice27]|| ![(BTSDeviceConfigController *)self isiCloudEnabled])
  {
    goto LABEL_188;
  }

  classicDevice28 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  connected3 = [classicDevice28 connected];

  if (connected3)
  {
    v438 = MEMORY[0x277D3FAD8];
    v439 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v440 = [v439 localizedStringForKey:@"FIND_MY" value:&stru_286339F58 table:@"DeviceConfig"];
    classicDevice27 = [v438 preferenceSpecifierNamed:v440 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [classicDevice27 setButtonAction:sel_presentFindMyLink];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:classicDevice27];
LABEL_188:
  }

LABEL_197:

LABEL_198:
LABEL_199:
  mEMORY[0x277CE7CF8] = [MEMORY[0x277CE7CF8] sharedInstance];
  pairedAirPods = [mEMORY[0x277CE7CF8] pairedAirPods];

  v547 = 0u;
  v548 = 0u;
  v545 = 0u;
  v546 = 0u;
  v448 = pairedAirPods;
  v449 = [v448 countByEnumeratingWithState:&v545 objects:v551 count:16];
  if (v449)
  {
    v450 = v449;
    v451 = *v546;
    while (2)
    {
      for (i = 0; i != v450; ++i)
      {
        if (*v546 != v451)
        {
          objc_enumerationMutation(v448);
        }

        address = [*(*(&v545 + 1) + 8 * i) address];
        classicDevice29 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
        address2 = [classicDevice29 address];
        v456 = [address isEqualToString:address2];

        if (v456)
        {
          v457 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"AX_LINK_GROUP_ID"];
          v458 = MEMORY[0x277D3FAD8];
          v459 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v460 = [v459 localizedStringForKey:@"AX_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
          v461 = [v458 preferenceSpecifierNamed:v460 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          classicDevice30 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
          v550 = classicDevice30;
          v463 = [MEMORY[0x277CBEA60] arrayWithObjects:&v550 count:1];
          [v461 setProperty:v463 forKey:@"AirPods"];

          [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v457];
          [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v461];

          goto LABEL_209;
        }
      }

      v450 = [v448 countByEnumeratingWithState:&v545 objects:v551 count:16];
      if (v450)
      {
        continue;
      }

      break;
    }
  }

LABEL_209:

  if (v544 != 8221)
  {
    classicDevice31 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if (![classicDevice31 featureCapability:30])
    {
LABEL_227:

      goto LABEL_228;
    }

    classicDevice32 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v485 = [classicDevice32 getAACPCapabilityBit:12];

    if (v485)
    {
      goto LABEL_228;
    }
  }

  classicDevice33 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v465 = [HPSProductUtils isBeatsNonWx:classicDevice33];

  v468 = v544 != 8222 && (v544 & 0xFFFFFFFD) != 8217 && v544 != 8224;
  shouldForceShowFitTest = [(BTSDeviceConfigController *)self shouldForceShowFitTest];
  classicDevice34 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId3 = [classicDevice34 productId];

  if (productId3 != 8230 && (v468 && !v465 || shouldForceShowFitTest))
  {
    v472 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    classicDevice31 = [v472 localizedStringForKey:@"FIT_TEST_FOOTER" value:&stru_286339F58 table:@"DeviceConfig"];

    if (v544 == 8221)
    {
      v474 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v475 = [v474 localizedStringForKey:@"FIT_TEST_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

      classicDevice31 = v475;
    }

    v476 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIT_TEST_GROUP_ID"];
    v477 = MEMORY[0x277D3FAD8];
    v478 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v479 = [v478 localizedStringForKey:@"FIT_TEST" value:&stru_286339F58 table:@"DeviceConfig"];
    v480 = [v477 preferenceSpecifierNamed:v479 target:self set:sel_sealDetectSet_ get:sel_sealDetect detail:0 cell:13 edit:0];

    [v476 setProperty:classicDevice31 forKey:*MEMORY[0x277D3FF88]];
    [v480 setButtonAction:sel_presentFitTestController_];
    v481 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v482 = self->_device;
    v483 = +[HPSDevice deviceKey];
    [v481 setObject:v482 forKey:v483];

    [v480 setUserInfo:v481];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v476];
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v480];

    goto LABEL_227;
  }

LABEL_228:
}

- (void)addA2DPDisclosureUISpecifier
{
  if (!+[HPSProductUtils isRealityDevice])
  {
    return;
  }

  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice productId];
  if (productId >= 0x2002)
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if ([classicDevice2 productId] < 0x200A)
    {
      goto LABEL_8;
    }
  }

  classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([classicDevice3 productId] == 8208)
  {
LABEL_7:

    if (productId <= 0x2001)
    {
LABEL_9:

LABEL_10:
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v8 localizedStringForKey:@"SPATIAL_TUTORIAL_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];

      v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [v9 setProperty:@"SPATIAL_AUDIO_GROUP_ID_A2DP" forKey:*MEMORY[0x277D3FFB8]];
      classicDevice4 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      productId2 = [classicDevice4 productId];

      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v13;
      if (productId2 == 8194)
      {
        v15 = [v13 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_REALITYDEVICE_AIRPODS" value:&stru_286339F58 table:@"DeviceConfig"];
        classicDevice5 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
        productName = [classicDevice5 productName];
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
        v20 = [v12 stringWithFormat:v15, productName, v19];
      }

      else
      {
        v15 = [v13 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_REALITYDEVICE_BEATS" value:&stru_286339F58 table:@"DeviceConfig"];
        classicDevice5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        productName = [classicDevice5 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
        v20 = [v12 stringWithFormat:v15, productName];
      }

      [v9 setProperty:v20 forKey:*MEMORY[0x277D3FF88]];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v9 setProperty:v22 forKey:*MEMORY[0x277D3FF48]];

      [v9 setProperty:v20 forKey:*MEMORY[0x277D3FF70]];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"LEARN_MORE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
      v31.location = [v20 rangeOfString:v24];
      v25 = NSStringFromRange(v31);
      [v9 setProperty:v25 forKey:*MEMORY[0x277D3FF58]];

      v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v9 setProperty:v26 forKey:*MEMORY[0x277D3FF68]];

      [v9 setProperty:@"userDidTapSpatialA2DPLatencyDisclosure:" forKey:*MEMORY[0x277D3FF50]];
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v9];

      return;
    }

LABEL_8:

    goto LABEL_9;
  }

  classicDevice6 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([classicDevice6 productId] == 8214)
  {

    goto LABEL_7;
  }

  classicDevice7 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId3 = [classicDevice7 productId];

  if (productId > 0x2001)
  {
  }

  if (productId3 == 8209)
  {
    goto LABEL_10;
  }
}

- (void)addHearingSpecifiers
{
  v27 = *MEMORY[0x277D85DE8];
  adaptiveTransparencySpecifier = [(BTSDeviceConfigController *)self adaptiveTransparencySpecifier];
  adaptiveVolumeSupported = [(BTSDeviceConfigController *)self adaptiveVolumeSupported];
  if (adaptiveVolumeSupported & 1) != 0 || (adaptiveVolumeSupported = [(BTSDeviceConfigController *)self conversationDetectSupported], (adaptiveVolumeSupported) || adaptiveTransparencySpecifier)
  {
    v5 = sharedBluetoothSettingsLogComponent(adaptiveVolumeSupported);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Hearing: Device Supported, Adding Hearing Specifiers", buf, 2u);
    }

    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"AUDIO" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    v9 = [v6 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:0 edit:0];

    if (+[HPSProductUtils isRealityDevice])
    {
      classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      v11 = +[HPSProductUtils getProductSpecificString:descriptionKey:](HPSProductUtils, "getProductSpecificString:descriptionKey:", [classicDevice productId], @"AUDIO_GROUP_FOOTER");

      [v9 setProperty:v11 forKey:*MEMORY[0x277D3FF88]];
    }

    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v9];
    [(BTSDeviceConfigController *)self addAdaptiveVolumeSpecifier];
    [(BTSDeviceConfigController *)self addConversationDetectSpecifier];
    if (adaptiveTransparencySpecifier)
    {
      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:adaptiveTransparencySpecifier];
    }

    if ([(BTSDeviceConfigController *)self supportAutoAncStrength])
    {
      v12 = MEMORY[0x277D3FAD8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"ADAPTIVE_AUDIO" value:&stru_286339F58 table:@"DeviceConfig"];
      v15 = [v12 preferenceSpecifierNamed:v14 target:self set:sel_setAdaptiveStrengthWithValue_ get:sel_getAdaptiveStrength detail:objc_opt_class() cell:2 edit:0];

      v16 = +[HPSDevice deviceKey];
      device = self->_device;
      v19 = v16;
      v20 = device;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v15 setUserInfo:v18];

      [v15 setIdentifier:@"ADAPTIVE_STRENGTH"];
      if (+[HPSProductUtils isRealityDevice])
      {
        [v15 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      }

      [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v15];
    }
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent(adaptiveVolumeSupported);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      adaptiveVolumeSupported2 = [(BTSDeviceConfigController *)self adaptiveVolumeSupported];
      v23 = 1024;
      conversationDetectSupported = [(BTSDeviceConfigController *)self conversationDetectSupported];
      v25 = 2112;
      v26 = 0;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Hearing: showHearing == False %i %i %@,", buf, 0x18u);
    }
  }
}

- (id)adaptiveTransparencySpecifier
{
  v44 = *MEMORY[0x277D85DE8];
  if (!+[HPSProductUtils isRealityDevice])
  {
    if (![(BTSDeviceConfigController *)self shouldShowLoudSoundReduction])
    {
LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

    mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    address = [classicDevice address];
    v28 = [mEMORY[0x277D12DF8] activeHearingProtectionAvailableForAddress:address];

    if (!v28)
    {
      if (!self->_adaptiveTransparencyRetrieved)
      {
        v35 = sharedBluetoothSettingsLogComponent(v29);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          adaptiveTransparencyRetrieved = self->_adaptiveTransparencyRetrieved;
          adaptiveTransparencyIndex = self->_adaptiveTransparencyIndex;
          *buf = 67109376;
          v41 = adaptiveTransparencyRetrieved;
          v42 = 2048;
          v43 = adaptiveTransparencyIndex;
          _os_log_impl(&dword_251143000, v35, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveTransparency:  initial _adaptiveTransparencyRetrieved %d  _adaptiveTransparencyIndex %lu", buf, 0x12u);
        }

        self->_adaptiveTransparencyIndex = [(NSMutableArray *)self->_aacpControlSpecifiers count];
        mEMORY[0x277D12DF8]2 = [MEMORY[0x277D12DF8] sharedInstance];
        [mEMORY[0x277D12DF8]2 registerUpdateBlock:&__block_literal_global_1710 forRetrieveSelector:sel_activeHearingProtectionAvailable withListener:self];
      }

      goto LABEL_23;
    }

    v30 = objc_alloc(MEMORY[0x277D3FAD8]);
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"ADAPTIVE_TRANSPARENCY" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    v10 = [v30 initWithName:v32 target:self set:sel_setHearingProtectionEnabled_specifier_ get:sel_getHearingProtectionEnabled_ detail:0 cell:6 edit:0];

    [v10 setIdentifier:@"ADAPTIVE_TRANSPARENCY_ID"];
    [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"ADAPTIVE_TRANSPARENCY_DESC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    v24 = *MEMORY[0x277D40160];
    v22 = v10;
    v23 = v21;
LABEL_15:
    [v22 setProperty:v23 forKey:v24];

    goto LABEL_24;
  }

  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice2 productId];

  if (productId != 8212 && productId != 8228)
  {
    v33 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v33, OS_LOG_TYPE_DEFAULT, "Hearing: Adaptive Transparency: accessory doesn't  support the feature, returning", buf, 2u);
    }

    goto LABEL_23;
  }

  v7 = objc_alloc(MEMORY[0x277D3FAD8]);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ADAPTIVE_TRANSPARENCY" value:&stru_286339F58 table:@"DeviceConfig-B698"];
  v10 = [v7 initWithName:v9 target:self set:sel_setHearingProtectionEnabled_specifier_ get:sel_getHearingProtectionEnabled_ detail:0 cell:6 edit:0];

  [v10 setIdentifier:@"ADAPTIVE_TRANSPARENCY_ID"];
  [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ADAPTIVE_TRANSPARENCY_DESC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
  [v10 setProperty:v12 forKey:*MEMORY[0x277D40160]];

  v13 = [(BTSDeviceConfigController *)self getHearingProtectionEnabled:v10];
  bOOLValue = [v13 BOOLValue];
  v15 = @"CELL_LABEL_OFF";
  if (bOOLValue)
  {
    v15 = @"CELL_LABEL_ON";
  }

  v16 = v15;

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v16 value:&stru_286339F58 table:@"DeviceConfig-B698"];

  v19 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell onOffKey];
  [v10 setProperty:v18 forKey:v19];

  if (productId == 8228 || productId == 8212)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v21 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell cellDisabledKey];
    v22 = v10;
    v23 = v20;
    v24 = v21;
    goto LABEL_15;
  }

LABEL_24:

  return v10;
}

void __58__BTSDeviceConfigController_adaptiveTransparencySpecifier__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HPSSoundProtectionUpdated" object:0];
}

- (id)getHearingProtectionEnabled:(id)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  if (+[HPSProductUtils isRealityDevice])
  {
    v4 = 1;
  }

  else
  {
    mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    address = [classicDevice address];
    v4 = [mEMORY[0x277D12DF8] activeHearingProtectionEnabledForAddress:address];

    v9 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = v4;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveTransparency: getHearingProtectionEnabled %d", v13, 8u);
    }

    if (v4)
    {
      v10 = @"On";
    }

    else
    {
      v10 = @"Off";
    }

    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:1 value:0 featureValueString:v10];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  return v11;
}

- (void)setHearingProtectionEnabled:(id)enabled specifier:(id)specifier
{
  v12 = *MEMORY[0x277D85DE8];
  bOOLValue = [enabled BOOLValue];
  v6 = sharedBluetoothSettingsLogComponent(bOOLValue);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = bOOLValue;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveTransparency: setHearingProtectionEnabled %d", v11, 8u);
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:0];
  if (bOOLValue)
  {
    v7 = @"On";
  }

  else
  {
    v7 = @"Off";
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:1 value:0 featureValueString:v7];
  mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  address = [classicDevice address];
  [mEMORY[0x277D12DF8] setActiveHearingProtectionEnabled:bOOLValue forAddress:address];
}

- (void)updateHearingProtectionSpecifiers
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_adaptiveTransparencyRetrieved)
  {
    v2 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController updateHearingProtectionSpecifiers];
    }

    goto LABEL_17;
  }

  self->_adaptiveTransparencyRetrieved = 1;
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    adaptiveTransparencyIndex = self->_adaptiveTransparencyIndex;
    *buf = 134217984;
    v27 = adaptiveTransparencyIndex;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveTransparency: hearingProtectionGroupSpecifier inserting at _adaptiveTransparencyIndex %lu", buf, 0xCu);
  }

  v6 = MEMORY[0x277D3FAD8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ADAPTIVE_TRANSPARENCY" value:&stru_286339F58 table:@"DeviceConfig-B698"];
  v2 = [v6 preferenceSpecifierNamed:v8 target:self set:sel_setHearingProtectionEnabled_specifier_ get:sel_getHearingProtectionEnabled_ detail:0 cell:6 edit:0];

  [v2 setIdentifier:@"ADAPTIVE_TRANSPARENCY_ID"];
  if (+[HPSProductUtils isRealityDevice])
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [v2 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v9 = [(BTSDeviceConfigController *)self getHearingProtectionEnabled:v2];
    v10 = @"CELL_LABEL_ON";
    if (!v9)
    {
      v10 = @"CELL_LABEL_OFF";
    }

    v11 = v10;

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:v11 value:&stru_286339F58 table:@"DeviceConfig-B698"];

    v14 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell onOffKey];
    [v2 setProperty:v13 forKey:v14];

    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if ([classicDevice productId] == 8228)
    {

LABEL_13:
      v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v19 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell cellDisabledKey];
      [v2 setProperty:v18 forKey:v19];

      goto LABEL_14;
    }

    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    productId = [classicDevice2 productId];

    if (productId == 8212)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [v2 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

LABEL_14:
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"ADAPTIVE_TRANSPARENCY_DESC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
  [v2 setProperty:v21 forKey:*MEMORY[0x277D40160]];

  v23 = sharedBluetoothSettingsLogComponent(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_adaptiveTransparencyIndex;
    *buf = 134217984;
    v27 = v24;
    _os_log_impl(&dword_251143000, v23, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveTransparency: hearingProtectionSpecifier inserting at index %lu", buf, 0xCu);
  }

  [(NSMutableArray *)self->_aacpControlSpecifiers insertObject:v2 atIndex:self->_adaptiveTransparencyIndex];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTSDeviceConfigController_updateHearingProtectionSpecifiers__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_17:
}

- (void)addConversationDetectSpecifier
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = +[HPSProductUtils isRealityDevice];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v6 = classicDevice;
    if (v4)
    {
      v7 = [classicDevice getAACPCapabilityBit:160];

      if ((v7 & 1) == 0)
      {
        v9 = sharedBluetoothSettingsLogComponent(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 0;
          v10 = "Hearing: ConversationDetect: Accessory doesn't support the feature";
          v11 = &v34;
LABEL_8:
          _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      getConversationDetectSupport = [classicDevice getConversationDetectSupport];

      if ((getConversationDetectSupport & 1) == 0)
      {
        v9 = sharedBluetoothSettingsLogComponent(v8);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v33 = 0;
        v10 = "Hearing: ConversationDetect: Support Disabled";
        v11 = &v33;
        goto LABEL_8;
      }
    }

    v13 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Hearing: ConversationDetect: Enabled, adding Specifier", v32, 2u);
    }

    v14 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"SPEECH_DETECTION" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    v9 = [v14 preferenceSpecifierNamed:v16 target:self set:sel_setConversationDetectMode_specifier_ get:sel_getConversationDetectMode_ detail:0 cell:6 edit:0];

    [v9 setIdentifier:@"SPEECH_DETECTION_ID"];
    v17 = objc_opt_class();
    v18 = *MEMORY[0x277D3FE58];
    [v9 setProperty:v17 forKey:*MEMORY[0x277D3FE58]];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"SPEECH_DETECTION_DESC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    [v9 setProperty:v20 forKey:*MEMORY[0x277D40160]];

    if (+[HPSProductUtils isRealityDevice])
    {
      [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v9 setProperty:objc_opt_class() forKey:v18];
      v21 = [(BTSDeviceConfigController *)self getConversationDetectMode:v9];
      v22 = @"CELL_LABEL_ON";
      if (!v21)
      {
        v22 = @"CELL_LABEL_OFF";
      }

      v23 = v22;

      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:v23 value:&stru_286339F58 table:@"DeviceConfig-B698"];

      v26 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell onOffKey];
      [v9 setProperty:v25 forKey:v26];

      classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      if ([classicDevice2 productId] == 8228)
      {

LABEL_20:
        v30 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v31 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell cellDisabledKey];
        [v9 setProperty:v30 forKey:v31];

        goto LABEL_21;
      }

      classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      productId = [classicDevice3 productId];

      if (productId == 8212)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v9];
    goto LABEL_22;
  }

  v9 = sharedBluetoothSettingsLogComponent(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "Hearing: ConversationDetect: Feature Disabled";
    v11 = buf;
    goto LABEL_8;
  }

LABEL_22:
}

- (id)getConversationDetectMode:(id)mode
{
  v14 = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getConversationDetectMode = [classicDevice getConversationDetectMode];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "Disabled";
    if (getConversationDetectMode == 1)
    {
      v8 = "Enabled";
    }

    v12 = 136315138;
    v13 = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Hearing: ConversationDetect: Get Mode: %s", &v12, 0xCu);
  }

  v9 = getConversationDetectMode == 1;

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:53 value:v9 featureValueString:0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];

  return v10;
}

- (void)setConversationDetectMode:(id)mode specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  deviceAnalytics = self->_deviceAnalytics;
  modeCopy = mode;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:52];
  bOOLValue = [modeCopy BOOLValue];

  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Disabled";
    if (bOOLValue)
    {
      v10 = "Enabled";
    }

    v14 = 136315138;
    v15 = v10;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Hearing: ConversationDetect: Set Mode: %s", &v14, 0xCu);
  }

  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v12 = classicDevice;
  if (bOOLValue)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [classicDevice setConversationDetectMode:v13];

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:53 value:bOOLValue featureValueString:0];
}

- (void)addAdaptiveVolumeSpecifier
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = +[HPSProductUtils isRealityDevice];
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v6 = classicDevice;
    if (v4)
    {
      v7 = [classicDevice getAACPCapabilityBit:144];

      if ((v7 & 1) == 0)
      {
        v9 = sharedBluetoothSettingsLogComponent(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 0;
          v10 = "Hearing: AdaptiveVolume: Accessory doesn't support the feature";
          v11 = &v34;
LABEL_8:
          _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      getAdaptiveVolumeSupport = [classicDevice getAdaptiveVolumeSupport];

      if ((getAdaptiveVolumeSupport & 1) == 0)
      {
        v9 = sharedBluetoothSettingsLogComponent(v8);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v33 = 0;
        v10 = "Hearing: AdaptiveVolume: Support Disabled";
        v11 = &v33;
        goto LABEL_8;
      }
    }

    v13 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveVolume: Enabled, adding Specifier", v32, 2u);
    }

    v14 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ADAPTIVE_VOLUME" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    v9 = [v14 preferenceSpecifierNamed:v16 target:self set:sel_setAdaptiveVolumeMode_specifier_ get:sel_getAdaptiveVolumeMode_ detail:0 cell:6 edit:0];

    [v9 setIdentifier:@"ADAPTIVE_VOLUME_ID"];
    v17 = objc_opt_class();
    v18 = *MEMORY[0x277D3FE58];
    [v9 setProperty:v17 forKey:*MEMORY[0x277D3FE58]];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ADAPTIVE_VOLUME_DESC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
    [v9 setProperty:v20 forKey:*MEMORY[0x277D40160]];

    if (+[HPSProductUtils isRealityDevice])
    {
      [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v9 setProperty:objc_opt_class() forKey:v18];
      v21 = [(BTSDeviceConfigController *)self getAdaptiveVolumeMode:v9];
      v22 = @"CELL_LABEL_ON";
      if (!v21)
      {
        v22 = @"CELL_LABEL_OFF";
      }

      v23 = v22;

      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:v23 value:&stru_286339F58 table:@"DeviceConfig-B698"];

      v26 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell onOffKey];
      [v9 setProperty:v25 forKey:v26];

      classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      if ([classicDevice2 productId] == 8228)
      {

LABEL_20:
        v30 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v31 = +[_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell cellDisabledKey];
        [v9 setProperty:v30 forKey:v31];

        goto LABEL_21;
      }

      classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      productId = [classicDevice3 productId];

      if (productId == 8212)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    [(NSMutableArray *)self->_aacpControlSpecifiers addObject:v9];
    goto LABEL_22;
  }

  v9 = sharedBluetoothSettingsLogComponent(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "Hearing: AdaptiveVolume: Feature Disabled";
    v11 = buf;
    goto LABEL_8;
  }

LABEL_22:
}

- (id)getAdaptiveVolumeMode:(id)mode
{
  v14 = *MEMORY[0x277D85DE8];
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  getAdaptiveVolumeMode = [classicDevice getAdaptiveVolumeMode];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "Disabled";
    if (getAdaptiveVolumeMode == 1)
    {
      v8 = "Enabled";
    }

    v12 = 136315138;
    v13 = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveVolume: Get Mode: %s", &v12, 0xCu);
  }

  v9 = getAdaptiveVolumeMode == 1;

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:3 value:v9 featureValueString:0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];

  return v10;
}

- (void)setAdaptiveVolumeMode:(id)mode specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  deviceAnalytics = self->_deviceAnalytics;
  modeCopy = mode;
  [(HPSDeviceAnalytics *)deviceAnalytics updateFeatureChangeCount:2];
  bOOLValue = [modeCopy BOOLValue];

  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Disabled";
    if (bOOLValue)
    {
      v10 = "Enabled";
    }

    v14 = 136315138;
    v15 = v10;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Hearing: AdaptiveVolume: Set Mode: %s", &v14, 0xCu);
  }

  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  v12 = classicDevice;
  if (bOOLValue)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [classicDevice setAdaptiveVolumeMode:v13];

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:3 value:bOOLValue featureValueString:0];
}

- (BOOL)BOOLFromBluetoothPreferences:(id)preferences
{
  keyExistsAndHasValidFormat = 0;
  preferencesCopy = preferences;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(preferencesCopy, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

  if (AppBooleanValue)
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (BOOL)nicknameEnabled
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [BTSDeviceConfigController nicknameEnabled];
  }

  return ![(BTSDeviceConfigController *)self BOOLFromBluetoothPreferences:@"nicknamingDisabled"];
}

- (void)loadAccessoryInfo
{
  v3 = objc_opt_new();
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  isAppleAudioDevice = [classicDevice isAppleAudioDevice];

  if (isAppleAudioDevice)
  {
    [(BTSDeviceConfigController *)self addSmarRoutingSpecifiers:v3];
  }

  if (_os_feature_enabled_impl())
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if ([HPSProductUtils isFeatureSupported:1 byDevice:classicDevice2]&& [(BTSDeviceConfigController *)self isiCloudEnabled])
    {
      classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      connected = [classicDevice3 connected];

      if (connected)
      {
        goto LABEL_9;
      }

      classicDevice2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIND_MY_GROUP_ID"];
      v9 = MEMORY[0x277D3FAD8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FIND_MY" value:&stru_286339F58 table:@"DeviceConfig"];
      v12 = [v9 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v12 setButtonAction:sel_presentFindMyLink];
      [(NSMutableArray *)v3 addObject:classicDevice2];
      [(NSMutableArray *)v3 addObject:v12];
    }
  }

LABEL_9:
  if (_os_feature_enabled_impl())
  {
    turnOffListeningModeSpecifiers = [(BTSDeviceConfigController *)self turnOffListeningModeSpecifiers];
    [(NSMutableArray *)v3 addObjectsFromArray:turnOffListeningModeSpecifiers];
  }

  if (self->_versionInfo)
  {
    v14 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ACCESSORY_ABOUT_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
    v17 = [v14 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:0 edit:0];

    v73 = v17;
    [(NSMutableArray *)v3 addObject:v17];
    v18 = [(BTSDeviceConfigController *)self getModelName:0];

    v19 = MEMORY[0x277D3FED8];
    if (v18)
    {
      v20 = MEMORY[0x277D3FAD8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"ACCESSORY_ABOUT_BUD_MODEL_NAME" value:&stru_286339F58 table:@"DeviceConfig"];
      v23 = [v20 preferenceSpecifierNamed:v22 target:self set:0 get:sel_getModelName_ detail:0 cell:4 edit:0];

      [v23 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
      [(NSMutableArray *)v3 addObject:v23];
    }

    v24 = [(BTSDeviceConfigController *)self getModelNumber:0];

    if (v24)
    {
      v25 = MEMORY[0x277D3FAD8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"ACCESSORY_ABOUT_BUD_MODEL_NUMBER" value:&stru_286339F58 table:@"DeviceConfig"];
      v28 = [v25 preferenceSpecifierNamed:v27 target:self set:0 get:sel_getModelNumber_ detail:0 cell:4 edit:0];

      [v28 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
      [(NSMutableArray *)v3 addObject:v28];
    }

    v29 = [(BTSDeviceConfigController *)self getSystemSerialNumber:0];
    v30 = v29;
    v31 = v29 == 0;
    if (v29)
    {
      v32 = 0;
    }

    else
    {
      v29 = [(BTSDeviceConfigController *)self getBudLeftSerialNumber:0];
      if (!v29)
      {
        v72 = [(BTSDeviceConfigController *)self getBudRightSerialNumber:0];

        if (!v72)
        {
LABEL_26:
          v40 = [(BTSDeviceConfigController *)self getBudFirmwareVersion:0];

          if (v40)
          {
            supportsFirmwareReleaseNotes = [(BTSDeviceConfigController *)self supportsFirmwareReleaseNotes];
            v42 = MEMORY[0x277D3FAD8];
            v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v44 = [v43 localizedStringForKey:@"ACCESSORY_ABOUT_BUD_VERSION_FIRMWARE" value:&stru_286339F58 table:@"DeviceConfig"];
            if (supportsFirmwareReleaseNotes)
            {
              v45 = [v42 preferenceSpecifierNamed:v44 target:self set:0 get:sel_getBudFirmwareVersion_ detail:objc_opt_class() cell:2 edit:0];

              v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v47 = [(BTSDeviceConfigController *)self getBudFirmwareVersion:0];

              if (v47)
              {
                v48 = [(BTSDeviceConfigController *)self getBudFirmwareVersion:0];
                [v46 setObject:v48 forKey:@"device-bud-version"];
              }

              v49 = [(BTSDeviceConfigController *)self getCaseFirmwareVersion:0];

              if (v49)
              {
                v50 = [(BTSDeviceConfigController *)self getCaseFirmwareVersion:0];
                [v46 setObject:v50 forKey:@"device-case-version"];
              }

              [v45 setUserInfo:v46];
            }

            else
            {
              v45 = [v42 preferenceSpecifierNamed:v44 target:self set:0 get:sel_getBudFirmwareVersion_ detail:0 cell:4 edit:0];

              [v45 setIdentifier:@"ACCESSORY_ABOUT_VERSION_ID"];
              v46 = [MEMORY[0x277CCABB0] numberWithInt:0];
              [v45 setProperty:v46 forKey:@"VERSION_TYPE"];
            }

            [v45 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
            [(NSMutableArray *)v3 addObject:v45];
          }

          v51 = [(NSDictionary *)self->_caseInfo objectForKey:@"CaseInfoName"];
          if (v51)
          {
            v52 = MEMORY[0x277D3FAD8];
            v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v54 = [v53 localizedStringForKey:@"ACCESSORY_ABOUT_CASE_NAME" value:&stru_286339F58 table:@"DeviceConfig"];
            v55 = [v52 preferenceSpecifierNamed:v54 target:self set:0 get:sel_getCaseName_ detail:0 cell:4 edit:0];

            [v55 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
            [(NSMutableArray *)v3 addObject:v55];
          }

          goto LABEL_38;
        }

        v31 = 0;
        v32 = 2;
LABEL_21:
        v33 = MEMORY[0x277D3FAD8];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v34 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER" value:&stru_286339F58 table:@"DeviceConfig"];
        v36 = &selRef_getSystemSerialNumber_;
        v37 = &selRef_getBudLeftSerialNumber_;
        if (!v31)
        {
          v37 = &selRef_getBudRightSerialNumber_;
        }

        if (!v30)
        {
          v36 = v37;
        }

        v38 = [v33 preferenceSpecifierNamed:v35 target:self set:0 get:*v36 detail:0 cell:4 edit:0];

        [v38 setIdentifier:@"ACCESSORY_ABOUT_SERIAL_NUMBER_ID"];
        v39 = [MEMORY[0x277CCABB0] numberWithInt:v32];
        [v38 setProperty:v39 forKey:@"SERIAL_NUMBER_TYPE"];

        [v38 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
        [(NSMutableArray *)v3 addObject:v38];

        goto LABEL_26;
      }

      v32 = 1;
    }

    goto LABEL_21;
  }

LABEL_38:
  if (_os_feature_enabled_impl())
  {
    classicDevice4 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v57 = [HPSProductUtils isAppleHeadphone:classicDevice4];

    if (v57)
    {
      v58 = [(BTSDeviceConfigController *)self getSystemSerialNumber:0];
      if (v58)
      {
        ndoController = [(BTSDeviceConfigController *)self ndoController];

        if (!ndoController)
        {
          v60 = [objc_alloc(MEMORY[0x277D2D100]) initWithSerialNumber:v58];
          [(BTSDeviceConfigController *)self setNdoController:v60];
        }

        lastObject = [(NSMutableArray *)v3 lastObject];
        identifier = [lastObject identifier];
        ndoController2 = [(BTSDeviceConfigController *)self ndoController];
        [ndoController2 setSpecifierIDToInsertAfter:identifier];

        ndoController3 = [(BTSDeviceConfigController *)self ndoController];
        specifiers = [ndoController3 specifiers];
        if (!specifiers)
        {
          goto LABEL_46;
        }

        v66 = specifiers;
        ndoController4 = [(BTSDeviceConfigController *)self ndoController];
        specifiers2 = [ndoController4 specifiers];
        v69 = [specifiers2 count];

        if (v69)
        {
          ndoController3 = [(BTSDeviceConfigController *)self ndoController];
          specifiers3 = [ndoController3 specifiers];
          [(NSMutableArray *)v3 addObjectsFromArray:specifiers3];

LABEL_46:
        }
      }
    }
  }

  accessoryInfoSpecifiers = self->_accessoryInfoSpecifiers;
  self->_accessoryInfoSpecifiers = v3;
}

- (void)addSmarRoutingSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if (![classicDevice featureCapability:32])
  {
    goto LABEL_35;
  }

  classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  if ([classicDevice2 smartRouteSupport])
  {
    classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    connected = [classicDevice3 connected];

    if (connected)
    {
      goto LABEL_36;
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    uppercaseString = [MGGetStringAnswer() uppercaseString];
    v10 = [@"SMARTROUTE_" stringByAppendingString:uppercaseString];
    classicDevice = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"DeviceConfig"];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    uppercaseString2 = [MGGetStringAnswer() uppercaseString];
    v13 = [@"SMARTROUTE_MANUAL_" stringByAppendingString:uppercaseString2];
    classicDevice2 = [v11 localizedStringForKey:v13 value:&stru_286339F58 table:@"DeviceConfig"];

    classicDevice4 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    productId = [classicDevice4 productId];

    0x2000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId - 0x2000];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:0x2000 value:&stru_286339F58 table:@"DeviceConfig"];
    v19 = [v18 length];

    v59 = productId;
    if (!v19 || productId >> 4 >= 0x201)
    {

      switch(productId)
      {
        case 0x2012u:
          v55 = 0;
          v54 = 0;
          v57 = 0;
          v52 = 1;
          0x2000 = @"ACCESSORY_MODEL_NAME_18";
          goto LABEL_20;
        case 0x201Du:
          v54 = 0;
          v52 = 0;
          v57 = 0;
          v55 = 1;
          0x2000 = @"ACCESSORY_MODEL_NAME_42";
          goto LABEL_20;
        case 0x202Fu:
          v55 = 0;
          v52 = 0;
          v57 = 0;
          v54 = 1;
          0x2000 = @"ACCESSORY_MODEL_NAME_180";
          goto LABEL_20;
      }

      0x2000 = @"ACCESSORY_MODEL_NAME_15";
    }

    if (productId == 8228)
    {

      v55 = 0;
      v54 = 0;
      v52 = 0;
      v57 = 1;
LABEL_16:
      0x2000 = @"ACCESSORY_MODEL_NAME_20";
      goto LABEL_20;
    }

    if (productId != 8223)
    {
      if (productId != 8212)
      {
        v55 = 0;
        v54 = 0;
        v52 = 0;
        v57 = 0;
        goto LABEL_20;
      }

      v54 = 0;
      v52 = 0;
      v57 = 0;
      v55 = 0x100000000;
      goto LABEL_16;
    }

    v55 = 0;
    v54 = 0;
    v52 = 0;
    v57 = 0;
    0x2000 = @"ACCESSORY_MODEL_NAME_10";
LABEL_20:
    uppercaseString3 = [MGGetStringAnswer() uppercaseString];
    v58 = 0x2000;
    v51 = [@"SMARTROUTE_FOOTER_" stringByAppendingFormat:@"%@_%@", uppercaseString3, 0x2000];

    v56 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SMART_ROUTE_GROUP_ID"];
    v50 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:classicDevice target:self set:sel_setSmartRouteMode_ get:sel_smartRouteMode detail:objc_opt_class() cell:2 edit:0];
    v21 = objc_alloc(MEMORY[0x277CBEA60]);
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SMARTROUTE_AUTOMATIC" value:&stru_286339F58 table:@"DeviceConfig"];
    v24 = [v21 initWithObjects:{v23, classicDevice2, 0}];

    v25 = objc_alloc(MEMORY[0x277CBEA60]);
    v26 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v28 = [v25 initWithObjects:{v26, v27, 0}];

    v29 = objc_alloc(MEMORY[0x277CBEA60]);
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"SMARTROUTE_AUTOMATIC" value:&stru_286339F58 table:@"DeviceConfig"];
    v32 = [v29 initWithObjects:{v31, classicDevice2, 0}];

    v53 = v28;
    v33 = v28;
    v34 = v32;
    [v50 setValues:v33 titles:v24 shortTitles:v32];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig"];
    v37 = *MEMORY[0x277D40118];
    [v50 setProperty:v36 forKey:*MEMORY[0x277D40118]];

    if (v52)
    {
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig-B494"];
      [v50 setProperty:v39 forKey:v37];
    }

    if (v54)
    {
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig-B494b"];
      [v50 setProperty:v41 forKey:v37];
    }

    if (v55)
    {
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
      [v50 setProperty:v43 forKey:v37];
    }

    if (HIDWORD(v55))
    {
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig-B698"];
      [v50 setProperty:v45 forKey:v37];
    }

    if (v57)
    {
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = [v46 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig-B698"];
      [v50 setProperty:v47 forKey:v37];
    }

    if (v59 == 8223 || v59 == 8202)
    {
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v48 localizedStringForKey:v51 value:&stru_286339F58 table:@"DeviceConfig-b515"];
      [v50 setProperty:v49 forKey:v37];
    }

    [specifiersCopy addObject:v56];
    [specifiersCopy addObject:v50];
  }

LABEL_35:
LABEL_36:
}

- (void)initializeCaseConnection
{
  if (!self->_airPodsServiceclient)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF3258]);
    airPodsServiceclient = self->_airPodsServiceclient;
    self->_airPodsServiceclient = v3;
  }

  v5 = [(BTSDeviceConfigController *)self getSystemSerialNumber:0];
  if (v5)
  {
    [(BTAirPodsControlServiceClient *)self->_airPodsServiceclient setDeviceSN:v5];
  }

  else
  {
    v6 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController initializeCaseConnection];
    }
  }
}

- (void)releaseCaseConnection
{
  airPodsServiceclient = self->_airPodsServiceclient;
  if (airPodsServiceclient)
  {
    [(BTAirPodsControlServiceClient *)airPodsServiceclient invalidate];
    v4 = self->_airPodsServiceclient;
    self->_airPodsServiceclient = 0;
  }

  self->_caseSoundRetrieved = 0;
  self->_caseSoundRetrieveInProgress = 0;
}

- (void)getSoundMode
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__BTSDeviceConfigController_getSoundMode__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1648);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__BTSDeviceConfigController_getSoundMode__block_invoke_2;
  v5[3] = &unk_2796AD840;
  v5[4] = v3;
  v6 = v2;
  objc_copyWeak(&v7, (a1 + 48));
  [v4 getSilentModeWithCompletionHandler:v5];
  objc_destroyWeak(&v7);
}

void __41__BTSDeviceConfigController_getSoundMode__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  *(*(a1 + 32) + 1641) = 1;
  *(*(a1 + 32) + 1642) = 0;
  if (v5)
  {
    *(*(a1 + 32) + 1645) = 0;
    v7 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __41__BTSDeviceConfigController_getSoundMode__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(a1 + 32) + 1644) = a2;
    *(*(a1 + 32) + 1645) = 1;
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__BTSDeviceConfigController_getSoundMode__block_invoke_3;
    v9[3] = &unk_2796AD818;
    objc_copyWeak(&v10, (a1 + 48));
    v9[4] = *(a1 + 32);
    dispatch_async(v8, v9);
    objc_destroyWeak(&v10);
  }
}

void __41__BTSDeviceConfigController_getSoundMode__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CASE_SOUND_ID" value:&stru_286339F58 table:@"DeviceConfig"];
  [WeakRetained reloadSpecifierID:v4 animated:1];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 getGroupSpecifierForSpecifierID:@"CASE_SOUND_GROUP_ID"];
  [v6 setProperty:&stru_286339F58 forKey:*MEMORY[0x277D3FF88]];

  v9 = objc_loadWeakRetained((a1 + 40));
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CASE_SOUND_GROUP_ID" value:&stru_286339F58 table:@"DeviceConfig"];
  [v9 reloadSpecifierID:v8 animated:1];
}

- (id)getCaseSoundEnabled:(id)enabled
{
  v21 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_setCaseSoundModeInProgress];
  [enabledCopy setProperty:v5 forKey:*MEMORY[0x277D3FEA8]];

  if (self->_setCaseSoundModeInProgress)
  {
    v6 = MEMORY[0x277CCABB0];
    p_caseSoundEnable = &self->_caseSoundEnable;
  }

  else
  {
    v8 = *MEMORY[0x277D3FF38];
    if (self->_caseSoundSupport)
    {
      [enabledCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
      v9 = [(BTSDeviceConfigController *)self getGroupSpecifierForSpecifierID:@"CASE_SOUND_GROUP_ID"];
      [v9 setProperty:&stru_286339F58 forKey:*MEMORY[0x277D3FF88]];

      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"CASE_SOUND_GROUP_ID" value:&stru_286339F58 table:@"DeviceConfig"];
      [(BTSDeviceConfigController *)self reloadSpecifierID:v11 animated:1];

      v13 = sharedBluetoothSettingsLogComponent(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Case Sound: Releasing case connection", v20, 2u);
      }

      releaseCaseConnection = [(BTSDeviceConfigController *)self releaseCaseConnection];
    }

    else
    {
      releaseCaseConnection = [enabledCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v8];
    }

    p_caseSoundEnable = &self->_caseSoundEnable;
    self->_caseSoundEnable = !self->_caseSilentMode;
    v15 = sharedBluetoothSettingsLogComponent(releaseCaseConnection);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *p_caseSoundEnable;
      v20[0] = 67109120;
      v20[1] = v16;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Case Sound: getCaseSoundEnabled %d", v20, 8u);
    }

    if (*p_caseSoundEnable)
    {
      v17 = @"On";
    }

    else
    {
      v17 = @"Off";
    }

    [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:5 value:0 featureValueString:v17];
    v6 = MEMORY[0x277CCABB0];
  }

  v18 = [v6 numberWithBool:*p_caseSoundEnable];

  return v18;
}

- (void)setCaseSoundEnabled:(id)enabled specifier:(id)specifier
{
  v23 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureChangeCount:4];
  [(BTSDeviceConfigController *)self initializeCaseConnection];
  self->_setCaseSoundModeInProgress = 1;
  [(BTSDeviceConfigController *)self reloadSpecifier:specifierCopy animated:1];
  objc_initWeak(&location, self);
  bOOLValue = [enabledCopy BOOLValue];
  if (bOOLValue)
  {
    v9 = @"On";
  }

  else
  {
    v9 = @"Off";
  }

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFeatureValue:5 value:0 featureValueString:v9];
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  dispatchQueue = [(BTAirPodsControlServiceClient *)self->_airPodsServiceclient dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke;
  block[3] = &unk_2796AD8B8;
  block[4] = self;
  v19 = bOOLValue ^ 1;
  v13 = v10;
  v17 = v10;
  objc_copyWeak(&v18, &location);
  dispatch_async(dispatchQueue, block);

  v15 = sharedBluetoothSettingsLogComponent(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = bOOLValue;
    _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Case Sound: setCaseSoundEnabled %d", buf, 8u);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1648);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke_2;
  v6[3] = &unk_2796AD890;
  v6[4] = v3;
  v9 = v5;
  v7 = v2;
  objc_copyWeak(&v8, (a1 + 48));
  [v4 setSilentMode:v5 completionHandler:v6];
  objc_destroyWeak(&v8);
}

void __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *(*(a1 + 32) + 1646) = 0;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(a1 + 32) + 1645) = 1;
    *(*(a1 + 32) + 1644) = *(a1 + 56);
  }

  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke_1784;
  v7[3] = &unk_2796AD818;
  objc_copyWeak(&v8, (a1 + 48));
  v7[4] = *(a1 + 32);
  dispatch_async(v6, v7);
  objc_destroyWeak(&v8);
}

void __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke_1784(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 localizedStringForKey:@"CASE_SOUND_ID" value:&stru_286339F58 table:@"DeviceConfig"];
  [WeakRetained reloadSpecifierID:v2 animated:1];
}

- (void)updateSerialNumberSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (!specifierCopy)
  {
    goto LABEL_17;
  }

  v13 = specifierCopy;
  v5 = [specifierCopy propertyForKey:@"SERIAL_NUMBER_TYPE"];
  intValue = [v5 intValue];

  v7 = ((intValue + 1) % 3);
  if (v7 == intValue)
  {
LABEL_13:
    v7 = intValue;
    goto LABEL_16;
  }

  v8 = &selRef_getSystemSerialNumber_;
  while (v7 != 2)
  {
    if (v7 == 1)
    {
      v10 = [(BTSDeviceConfigController *)self getBudLeftSerialNumber:v13];

      if (v10)
      {
        v8 = &selRef_getBudLeftSerialNumber_;
        goto LABEL_15;
      }
    }

    else if (!v7)
    {
      v9 = [(BTSDeviceConfigController *)self getSystemSerialNumber:v13];

      if (v9)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v7 = ((v7 + 1) % 3);
    if (v7 == intValue)
    {
      goto LABEL_13;
    }
  }

  v11 = [(BTSDeviceConfigController *)self getBudRightSerialNumber:v13];

  if (!v11)
  {
    goto LABEL_12;
  }

  v8 = &selRef_getBudRightSerialNumber_;
LABEL_15:
  *&v13[*MEMORY[0x277D3FCA8]] = *v8;
LABEL_16:
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [v13 setProperty:v12 forKey:@"SERIAL_NUMBER_TYPE"];

  specifierCopy = v13;
LABEL_17:
}

- (void)updateVersionSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v14 = specifierCopy;
    v5 = [specifierCopy propertyForKey:@"VERSION_TYPE"];
    LODWORD(v6) = [v5 intValue];
    v7 = @"ACCESSORY_ABOUT_BUD_VERSION_FIRMWARE";
    v8 = &selRef_getBudFirmwareVersion_;
LABEL_3:

    do
    {
      while (1)
      {
        v6 = ((v6 + 1) % 3);
        if (v6 == 1)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_10;
        }

        if (v6 == 2)
        {
          v5 = [(BTSDeviceConfigController *)self getANCAssetVersion:v14];
          [v5 length];
          goto LABEL_3;
        }
      }

      v9 = [(BTSDeviceConfigController *)self getCaseFirmwareVersion:v14];
      v10 = [v9 length];
    }

    while (v10 <= 1);
    v8 = &selRef_getCaseFirmwareVersion_;
    v7 = @"ACCESSORY_ABOUT_CASE_VERSION_FIRMWARE";
LABEL_10:
    *&v14[*MEMORY[0x277D3FCA8]] = *v8;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:v7 value:&stru_286339F58 table:@"DeviceConfig"];
    [v14 setName:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v14 setProperty:v13 forKey:@"VERSION_TYPE"];

    specifierCopy = v14;
  }
}

- (id)getAnswerCallOption:(id)option
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PRESS_ONCE" value:&stru_286339F58 table:@"FeatureConfig-CallControls"];

  return v4;
}

- (id)smartRoutingIndicationForRealityDevice:(id)device
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SMARTROUTE_AUTOMATIC" value:&stru_286339F58 table:@"DeviceConfig"];

  return v4;
}

- (id)getModelName:(id)name
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice productId];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", (productId - 0x2000)];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_286339F58 table:@"DeviceConfig"];

  if (productId == 8202 || productId == 8223)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ACCESSORY_MODEL_NAME_10" value:&stru_286339F58 table:@"DeviceConfig-b515"];

    v7 = v10;
  }

  else if (productId == 8208)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"ACCESSORY_MODEL_NAME_16";
    v14 = @"DeviceConfig-B372";
    goto LABEL_28;
  }

  switch(productId)
  {
    case 8209:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_17";
      v14 = @"DeviceConfig-B507";
      goto LABEL_28;
    case 8210:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_18";
      v14 = @"DeviceConfig-B494";
      goto LABEL_28;
    case 8211:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_19";
      v14 = @"DeviceConfig-B688";
      goto LABEL_28;
    case 8212:
    case 8228:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_20";
      v14 = @"DeviceConfig-B698";
      goto LABEL_28;
    case 8214:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_22";
      v14 = @"DeviceConfig-B607";
      goto LABEL_28;
    case 8215:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_23";
      v14 = @"DeviceConfig-B453";
      goto LABEL_28;
    case 8217:
    case 8222:
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"ACCESSORY_MODEL_NAME_25" value:&stru_286339F58 table:@"DeviceConfig-B768"];

      v7 = v16;
      break;
    case 8218:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_26";
      v14 = @"DeviceConfig-B487";
      goto LABEL_28;
    case 8221:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_42";
      v14 = @"DeviceConfig-B498-v2";
      goto LABEL_28;
    case 8229:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_24";
      v14 = @"DeviceConfig-B465";
      goto LABEL_28;
    case 8230:
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"ACCESSORY_MODEL_NAME_38";
      v14 = @"DeviceConfig-B463";
      goto LABEL_28;
    case 8239:
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v12 localizedStringForKey:@"ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
      v7 = v19;
      goto LABEL_29;
    default:
      break;
  }

  if (productId == 8224 || productId == 8219)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"ACCESSORY_MODEL_NAME_27";
    v14 = @"DeviceConfig-B768";
LABEL_28:
    v20 = [v11 localizedStringForKey:v13 value:&stru_286339F58 table:v14];
LABEL_29:

    v7 = v20;
  }

  if ([v7 length] <= 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v7;
  }

  v22 = v21;

  return v21;
}

- (id)getModelNumber:(id)number
{
  v3 = [(NSArray *)self->_versionInfo objectAtIndex:1];
  v4 = [v3 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];

  if ([v4 length] <= 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (id)getSystemSerialNumber:(id)number
{
  v3 = [(NSArray *)self->_versionInfo objectAtIndex:3];
  v4 = [v3 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];

  if ([v4 length] <= 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (id)getBudLeftSerialNumber:(id)number
{
  v3 = [(NSArray *)self->_versionInfo objectAtIndex:8];
  v4 = [v3 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];

  if ([v4 length] < 2)
  {
    v8 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_LEFT" value:&stru_286339F58 table:@"DeviceConfig"];
    v8 = [v5 stringWithFormat:@"%@%@", v7, v4];
  }

  return v8;
}

- (id)getBudRightSerialNumber:(id)number
{
  v3 = [(NSArray *)self->_versionInfo objectAtIndex:9];
  v4 = [v3 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];

  if ([v4 length] < 2)
  {
    v8 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ACCESSORY_ABOUT_SERIAL_NUMBER_RIGHT" value:&stru_286339F58 table:@"DeviceConfig"];
    v8 = [v5 stringWithFormat:@"%@%@", v7, v4];
  }

  return v8;
}

- (id)getBudFirmwareVersion:(id)version
{
  v3 = [(NSArray *)self->_versionInfo objectAtIndex:10];
  v4 = [v3 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];

  if ([v4 length] <= 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (id)getANCAssetVersion:(id)version
{
  v3 = [(NSString *)self->_ancAssetVersion stringByApplyingTransform:@"Any-Hex/Java" reverse:1];
  if ([v3 length] <= 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (id)getCaseName:(id)name
{
  v3 = [(NSDictionary *)self->_caseInfo objectForKey:@"CaseInfoName"];
  v4 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 1}];
  v5 = [v4 isEqualToString:@""]);

  v6 = [v3 length];
  v7 = -4;
  if (v5)
  {
    v7 = -6;
    v8 = @"(%@)";
  }

  else
  {
    v8 = @"%@";
  }

  v9 = [v3 substringToIndex:v6 + v7];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CASE" value:&stru_286339F58 table:@"DeviceConfig"];
  v12 = [v9 stringByAppendingFormat:v8, v11];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v12 length] >= 2)
  {
    v13 = [v12 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getCaseFirmwareVersion:(id)version
{
  v3 = [(NSDictionary *)self->_caseInfo objectForKey:@"CaseInfoVersion"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 length] >= 2)
  {
    v4 = [v3 stringByApplyingTransform:@"Any-Hex/Java" reverse:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = BTSDeviceConfigController;
  changeCopy = change;
  [(BTSDeviceConfigController *)&v15 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(BTSDeviceConfigController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    if ([HPSProductUtils isAppleHeadphone:classicDevice])
    {
      classicDevice2 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
      isTemporaryPaired = [classicDevice2 isTemporaryPaired];

      if ((isTemporaryPaired & 1) == 0)
      {
        classicDevice3 = [(BluetoothDeviceProtocol *)self->_device classicDevice];
        isGenuineAirPods = [classicDevice3 isGenuineAirPods];

        if (isGenuineAirPods)
        {
          batteryStatusView = self->_batteryStatusView;
          if (batteryStatusView)
          {
            self->_batteryStatusView = 0;
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__BTSDeviceConfigController_traitCollectionDidChange___block_invoke;
          block[3] = &unk_2796AD618;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }

    else
    {
    }
  }
}

- (void)updateASKHeader
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    if (([currentThread isMainThread] & 1) == 0)
    {
      [BTSDeviceConfigController updateASKHeader];
    }

    leDevice = [(BTSDeviceConfigController *)self leDevice];
    v6 = leDevice;
    if (leDevice)
    {
      v13 = leDevice;
      leDevice = [leDevice isManagedByDeviceAccess];
      v6 = v13;
      if (leDevice)
      {
        underlyingDADevice = [v13 underlyingDADevice];

        v6 = v13;
        if (underlyingDADevice)
        {
          v8 = MEMORY[0x277CB8900];
          underlyingDADevice2 = [v13 underlyingDADevice];
          v10 = [v8 infoViewControllerFromDevice:underlyingDADevice2];
          accessoryHeaderController = self->_accessoryHeaderController;
          self->_accessoryHeaderController = v10;

          v6 = v13;
        }
      }
    }

    MEMORY[0x2821F96F8](leDevice, v6);
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", buf, 2u);
    }
  }
}

- (id)classicSetupSpecifiers
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    leDevice = [(BTSDeviceConfigController *)self leDevice];
    v5 = leDevice;
    if (leDevice && ([leDevice isManagedByDeviceAccess]&& ([v5 shouldDenyIncomingClassicConnection]& 1) != 0 || self->_devicePendingCTKDConnection))
    {
      v6 = MEMORY[0x277D3FAD8];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:?];
      v27 = [v6 groupSpecifierWithID:v8];

      v9 = MEMORY[0x277D3FAD8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"CLASSIC_SETUP_TITLE" value:&stru_286339F58 table:@"DeviceConfig"];
      v12 = [v9 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:4 edit:0];

      [v12 setIdentifier:@"CLASSIC_SETUP_TITLE_ID"];
      v13 = MEMORY[0x277D3FAD8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"CLASSIC_SETUP_BODY" value:&stru_286339F58 table:@"DeviceConfig"];
      v16 = [v13 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

      [v16 setIdentifier:@"CLASSIC_SETUP_BODY_ID"];
      [v16 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      v17 = MEMORY[0x277D3FAD8];
      devicePendingCTKDConnection = self->_devicePendingCTKDConnection;
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      if (devicePendingCTKDConnection)
      {
        v21 = @"CLASSIC_SETUP_BUTTON_CONNECTING";
      }

      else
      {
        v21 = @"CLASSIC_SETUP_BUTTON";
      }

      v22 = [v19 localizedStringForKey:v21 value:&stru_286339F58 table:@"DeviceConfig"];
      v23 = [v17 preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v23 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v23 setButtonAction:sel_allowClassicConnection];
      [v23 setIdentifier:@"CLASSIC_SETUP_BUTTON_ID"];
      v24 = [MEMORY[0x277CCABB0] numberWithInt:!self->_devicePendingCTKDConnection];
      [v23 setProperty:v24 forKey:*MEMORY[0x277D3FF38]];

      v29[0] = v27;
      v29[1] = v12;
      v29[2] = v16;
      v29[3] = v23;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

      goto LABEL_13;
    }
  }

  else
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", buf, 2u);
    }
  }

  v25 = MEMORY[0x277CBEBF8];
LABEL_13:

  return v25;
}

- (void)updateBatteryStatus
{
  v43[4] = *MEMORY[0x277D85DE8];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (([currentThread isMainThread] & 1) == 0)
  {
    [BTSDeviceConfigController updateBatteryStatus];
  }

  if ([(BTSDeviceConfigController *)self canDisconnect])
  {
    userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    v5 = +[HPSDevice deviceKey];
    v6 = [userInfo objectForKeyedSubscript:v5];

    traitCollection = [(BTSDeviceConfigController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (!self->_batteryStatusView)
    {
      v9 = [_TtC16HeadphoneConfigs23ModernBatteryStatusView alloc];
      v10 = [(ModernBatteryStatusView *)v9 initWithFrame:v6 device:userInterfaceStyle == 2 darkMode:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      batteryStatusView = self->_batteryStatusView;
      self->_batteryStatusView = v10;

      [(ModernBatteryStatusView *)self->_batteryStatusView setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    table = [(BTSDeviceConfigController *)self table];
    tableHeaderView = [table tableHeaderView];

    if (!tableHeaderView)
    {
      v14 = objc_alloc(MEMORY[0x277D75B70]);
      v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      contentView = [v15 contentView];
      [contentView addSubview:self->_batteryStatusView];

      view = [(BTSDeviceConfigController *)self view];
      [view bounds];
      [v15 setFrame:{0.0, 0.0}];

      v35 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(ModernBatteryStatusView *)self->_batteryStatusView leadingAnchor];
      contentView2 = [v15 contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v43[0] = v39;
      trailingAnchor = [(ModernBatteryStatusView *)self->_batteryStatusView trailingAnchor];
      contentView3 = [v15 contentView];
      trailingAnchor2 = [contentView3 trailingAnchor];
      v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v43[1] = v34;
      topAnchor = [(ModernBatteryStatusView *)self->_batteryStatusView topAnchor];
      contentView4 = [v15 contentView];
      topAnchor2 = [contentView4 topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v43[2] = v19;
      bottomAnchor = [(ModernBatteryStatusView *)self->_batteryStatusView bottomAnchor];
      contentView5 = [v15 contentView];
      bottomAnchor2 = [contentView5 bottomAnchor];
      v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v43[3] = v23;
      [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
      v25 = v24 = v6;
      [v35 activateConstraints:v25];

      v6 = v24;
      table2 = [(BTSDeviceConfigController *)self table];
      [table2 setTableHeaderView:v15];
    }
  }

  else
  {
    table3 = [(BTSDeviceConfigController *)self table];
    tableHeaderView2 = [table3 tableHeaderView];
    [tableHeaderView2 removeFromSuperview];

    table4 = [(BTSDeviceConfigController *)self table];
    [table4 setTableHeaderView:0];
  }

  table5 = [(BTSDeviceConfigController *)self table];
  tableHeaderView3 = [table5 tableHeaderView];
  [tableHeaderView3 layoutIfNeeded];
}

- (void)getFindMyUrl
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  address = [classicDevice address];

  if ([address length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"BT_%@", address];
    v6 = [v5 dataUsingEncoding:4];
    fm_sha256Hash = [v6 fm_sha256Hash];
    fm_hexString = [fm_sha256Hash fm_hexString];
    lowercaseString = [fm_hexString lowercaseString];

    v10 = [@"findmy://device/bridgemissingdevice?id=" stringByAppendingString:lowercaseString];
    findMyUrl = self->_findMyUrl;
    self->_findMyUrl = v10;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceConfigController getFindMyUrl];
    }

    v13 = self->_findMyUrl;
    self->_findMyUrl = @"findmy://devices";
  }
}

- (void)spatialAudioProfileUpdateHandler:(id)handler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTSDeviceConfigController_spatialAudioProfileUpdateHandler___block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__BTSDeviceConfigController_spatialAudioProfileUpdateHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) headphoneObserver];
  [v1 reloadAll];
}

- (void)triggerSpatialProfileFeedback:(id)feedback
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Feedback: Received Enrollment Not Completed Notification", &v19, 2u);
  }

  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v5 = CFPreferencesCopyAppValue(@"LastSpatialProfileFeedbackDate", @"com.apple.springboard");
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setDateFormat:@"yyyyMMdd"];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 stringFromDate:date];

  v9 = MGGetBoolAnswer();
  v10 = v9;
  v11 = 0;
  if (v9)
  {
    if (!v5 || (v9 = [(__CFString *)v8 isEqualToString:v5], (v9 & 1) == 0))
    {
      v11 = 1;
    }
  }

  v12 = sharedBluetoothSettingsLogComponent(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Null";
    if (v5)
    {
      v13 = v5;
    }

    v19 = 138413058;
    v20 = v13;
    if (v10)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v14;
    if (v11)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Feedback: Last Feedback Date: %@, Current Feedback Date: %@, Internal Build: %@, Show Feedback: %@", &v19, 0x2Au);
  }

  if (v11)
  {
    v17 = sharedBluetoothSettingsLogComponent(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Feedback: Trigger feedback and update date: %@", &v19, 0xCu);
    }

    v18 = +[_TtC16HeadphoneConfigs25HPSSpatialProfileFeedback getDraftViewController];
    [(BTSDeviceConfigController *)self presentViewController:v18 animated:1 completion:0];
    CFPreferencesSetAppValue(@"LastSpatialProfileFeedbackDate", v8, @"com.apple.springboard");
    CFPreferencesAppSynchronize(@"com.apple.springboard");
  }
}

- (BOOL)supportsFirmwareReleaseNotes
{
  classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
  productId = [classicDevice productId];

  return ((productId - 8202) < 0x1B) & (0x4728631u >> (productId - 10));
}

- (BOOL)shouldShowFindMyNetworkAlert
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[HPSProductUtils isRealityDevice];
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Find My Network: returning, feature not supported on this platform", &v14, 2u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    classicDevice = [(BluetoothDeviceProtocol *)self->_device classicDevice];
    v7 = [HPSProductUtils isFeatureSupported:0 byDevice:classicDevice];

    v5 = 0;
    if (v7)
    {
      v5 = !self->_findMySupport;
    }

    v4 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "No";
      if (v5)
      {
        v10 = "Yes";
      }

      else
      {
        v10 = "No";
      }

      findMySupport = self->_findMySupport;
      if (v7)
      {
        v12 = "Yes";
      }

      else
      {
        v12 = "No";
      }

      v14 = 136315650;
      v15 = v10;
      v16 = 2080;
      if (findMySupport)
      {
        v9 = "Yes";
      }

      v17 = v12;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Find My Network: Should Show Alert: %s, Feature: %s, Support: %s", &v14, 0x20u);
    }
  }

  return v5;
}

- (void)showFindMyNetworkAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FIND_MY_NETWORK_ALERT_TITLE" value:&stru_286339F58 table:@"DeviceConfig-B698"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FIND_MY_NETWORK_ALERT_DESC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
  v16 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"DeviceConfig"];
  v11 = [v8 actionWithTitle:v10 style:0 handler:&__block_literal_global_1917];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"IMPORTANT_MSG_LEARN_MORE" value:&stru_286339F58 table:@"DeviceConfig"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:&__block_literal_global_1919];

  [v16 addAction:v11];
  [v16 addAction:v15];
  [v16 setPreferredAction:v11];
  [(BTSDeviceConfigController *)self presentViewController:v16 animated:1 completion:0];
}

void __51__BTSDeviceConfigController_showFindMyNetworkAlert__block_invoke_2()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht210982?cid=mc-ols-find-my-article_ht210982-settings_ui-07122023"];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openURL:v1 withOptions:0];
}

- (void)hearingModeUpdated
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BTSDeviceConfigController_hearingModeUpdated__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__BTSDeviceConfigController_hearingModeUpdated__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) headphoneObserver];
  [v1 reloadAll];
}

- (void)presentEnrollmentViewController
{
  hearingModeUIService = [(BTSDeviceConfigController *)self hearingModeUIService];
  enrollmentViewController = [hearingModeUIService enrollmentViewController];
  [(BTSDeviceConfigController *)self presentViewController:enrollmentViewController animated:1 completion:0];
}

- (void)presentTuningViewController
{
  hearingModeUIService = [(BTSDeviceConfigController *)self hearingModeUIService];
  tuningViewController = [hearingModeUIService tuningViewController];
  [(BTSDeviceConfigController *)self presentViewController:tuningViewController animated:1 completion:0];
}

- (_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver)headphoneObserver
{
  headphoneObserver = self->_headphoneObserver;
  if (!headphoneObserver)
  {
    userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    v5 = +[HPSDevice deviceKey];
    v6 = [userInfo objectForKeyedSubscript:v5];

    objc_initWeak(&location, self);
    v7 = [_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver alloc];
    headphoneDevice = [v6 headphoneDevice];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__BTSDeviceConfigController_headphoneObserver__block_invoke;
    v14[3] = &unk_2796AD668;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__BTSDeviceConfigController_headphoneObserver__block_invoke_1921;
    v12[3] = &unk_2796AD668;
    objc_copyWeak(&v13, &location);
    v9 = [(BTSHeadphoneDevicePropertyObserver *)v7 initWithDevice:headphoneDevice onChangeAction:v14 onChangeReloadAllAction:v12];
    v10 = self->_headphoneObserver;
    self->_headphoneObserver = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    headphoneObserver = self->_headphoneObserver;
  }

  return headphoneObserver;
}

void __46__BTSDeviceConfigController_headphoneObserver__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Config: Reload observed specifiers for value change", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"LISTENING_MODE_ID"];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 reloadSpecifierID:@"SPEECH_DETECTION_ID"];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifierID:@"ADAPTIVE_VOLUME_ID"];
}

void __46__BTSDeviceConfigController_headphoneObserver__block_invoke_1921(uint64_t a1, uint64_t a2)
{
  v3 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Headphone Config: Reload all specifiers for value change", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)handleTapOnLabel
{
  selfCopy = self;
  sub_2511D911C();
}

- (NSArray)b498Specifiers
{
  selfCopy = self;
  BTSDeviceConfigController.b498Specifiers.getter();

  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v3 = sub_25121186C();

  return v3;
}

- (void)addTopLevelEntryWithHpDevice:(id)device
{
  selfCopy = self;
  specifier = [(BTSDeviceConfigController *)selfCopy specifier];
  if (specifier)
  {

    [(BTSDeviceConfigController *)selfCopy reloadSpecifiers];
  }
}

- (void)removeTopLevelEntryWithHpDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  BTSDeviceConfigController.removeTopLevelEntry(hpDevice:)();
}

- (void)updateTopLevelEntryWithHpDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  _sSo25BTSDeviceConfigControllerC16HeadphoneConfigsE19updateTopLevelEntry8hpDevicey0D7Manager0dK0C_tF_0();
}

- (id)getVoiceAssistant
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  selfCopy = self;
  bundleForClass_ = [v4 bundleForClass_];
  sub_251210D1C();

  v7 = sub_25121176C();

  return v7;
}

- (BOOL)adaptiveVolumeSupported
{
  selfCopy = self;
  v3 = BTSDeviceConfigController.adaptiveVolumeSupported.getter();

  return v3 & 1;
}

- (BOOL)conversationDetectSupported
{
  selfCopy = self;
  v3 = BTSDeviceConfigController.conversationDetectSupported.getter();

  return v3 & 1;
}

- (BOOL)supportAutoAncStrength
{
  selfCopy = self;
  if ([(BTSDeviceConfigController *)selfCopy device]&& (v3 = sub_2511DF9D0(), swift_unknownObjectRelease(), v3))
  {
    v4 = sub_251210FCC();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)shouldShowCaseSoundForNewAccessories:(id)accessories productID:(int64_t)d
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_251211B5C();
  swift_unknownObjectRelease();
  LOBYTE(d) = sub_2511E2034(v8, d);

  __swift_destroy_boxed_opaque_existential_0(v8);
  return d & 1;
}

- (BOOL)shouldShowLoudSoundReduction
{
  selfCopy = self;
  v3 = sub_2511E0654();

  return v3;
}

- (BOOL)isTempPaired
{
  selfCopy = self;
  v3 = sub_2511E0D68();

  return v3;
}

- (id)getPermanentPairSpecifier
{
  selfCopy = self;
  v3 = sub_2511E0F38();

  return v3;
}

- (id)getTemporaryPairSpecifier
{
  selfCopy = self;
  v3 = sub_2511E12D0();

  return v3;
}

- (id)getOptimizedBatteryFeatureSpecifiers
{
  selfCopy = self;
  sub_2511E1658();

  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v3 = sub_25121186C();

  return v3;
}

- (void)setupShowModernHPSButton
{
  selfCopy = self;
  sub_2511E187C();
}

- (void)showModernHPS
{
  selfCopy = self;
  sub_2511E1CA0();
}

- (NSArray)turnOffListeningModeSpecifiers
{
  selfCopy = self;
  BTSDeviceConfigController.turnOffListeningModeSpecifiers.getter();

  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v3 = sub_25121186C();

  return v3;
}

- (void)setUserSelectedDeviceType:(void *)a1 .cold.1(void *a1)
{
  [a1 intValue];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)doubleTapActionLeft
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*self];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_251143000, v2, v3, "Double tap action left : %@", v4, v5, v6, v7);
}

- (void)doubleTapActionRight
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*self];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_251143000, v2, v3, "Double tap action right : %@", v4, v5, v6, v7);
}

- (void)setGestureMode:(id *)a1 specifier:.cold.1(id *a1)
{
  v1 = [*a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __48__BTSDeviceConfigController_refreshFindMyStatus__block_invoke_cold_1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __55__BTSDeviceConfigController_setFindMyEnable_specifier___block_invoke_cold_1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)specifiers
{
  v3 = [self debugDescription];
  userInfo = [*a2 userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HPS_DeviceInfo"];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __41__BTSDeviceConfigController_getSoundMode__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__BTSDeviceConfigController_setCaseSoundEnabled_specifier___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end