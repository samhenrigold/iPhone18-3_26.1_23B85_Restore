@interface APUISetupViewController
+ (id)_localizedSystemWiFiString;
- (void)_connectToAirPlayReceiverWithDeviceID:(id)d andSetupPayload:(id)payload;
- (void)_getSupportedNetworks:(id)networks withSetupPayload:(id)payload completion:(id)completion;
- (void)_initializeAirPlayConnectionProxCardManagerWithSetupPayload:(id)payload andCompletion:(id)completion;
- (void)_initializeSetupCompletionProxCardManagerWithSetupPayload:(id)payload isAirPlaySetUp:(BOOL)up andCompletion:(id)completion;
- (void)_joinWiFiAndConnectToReceiverWithSetupPayload:(id)payload;
- (void)_performBrokerAuthenticationWithSetupPayload:(id)payload switchWiFiIfFailed:(BOOL)failed;
- (void)_presentAirPlayConnectionProxCardWithSetupPayload:(id)payload;
- (void)_presentInvalidCodeAlertWithSetupPayload:(id)payload;
- (void)_presentProxCardFlowForLaunchType:(int64_t)type andSetupPayload:(id)payload;
- (void)_presentSetupCompletedProxCard:(id)card isAirPlaySetUp:(BOOL)up;
- (void)_presentUnableToConnectToDeviceAlertWithSetupPayload:(id)payload;
- (void)_presentUnableToConnectToWiFiAlertWithSetupPayload:(id)payload;
- (void)_setUpByURL:(id)l;
- (void)_setupAirPlayConnectingProxCardManagerWithSetupPayload:(id)payload withTitle:(id)title withSubTitle:(id)subTitle withImageName:(id)name andCompletion:(id)completion;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)invalidate;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)updateBrokerRTCDictionaryBrokerConnectionSuccess:(BOOL)success error:(id)error;
- (void)updateReceiverRTCDictionaryReceiverConnectionSuccess:(BOOL)success error:(id)error;
- (void)updateWiFiRTCDictionaryAlreadyAssociated:(BOOL)associated associationSucessful:(BOOL)sucessful error:(id)error;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation APUISetupViewController

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = APUISetupViewController;
  [(APUISetupViewController *)&v22 viewDidLoad];
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (IntWithDefault)
  {
    v4 = IntWithDefault;
    v5 = [[AVOutputDeviceDiscoverySession alloc] initWithDeviceFeatures:8];
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000226F0, "[APUISetupViewController viewDidLoad]", 33554482, "[%{ptr}] Starting discovery pre-warm for %ds with session [%{ptr}]", self, v4, v5);
    }

    [v5 setDiscoveryMode:3];
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 1000000000 * v4);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000072D4;
    block[3] = &unk_10001C898;
    objc_copyWeak(&v20, &location);
    v7 = v5;
    v19 = v7;
    dispatch_after(v6, &_dispatch_main_q, block);
    discoverySession = self->_discoverySession;
    self->_discoverySession = v7;
    v9 = v7;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  [(APUISetupViewController *)self setShouldSkipInvalidateOnProxCardFlowDidDismiss:0];
  v10 = +[APUIConnectivityManager sharedInstance];
  [v10 startMonitoringWiFiInterfaceChange];

  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C920(self, v11, v12);
  }

  v13 = +[APUIConnectivityManager sharedInstance];
  [v13 enableCaptiveWebsheet:0];

  v14 = objc_opt_new();
  routeManager = self->_routeManager;
  self->_routeManager = v14;

  APSRTCReportingAgentCreate();
  v16 = objc_alloc_init(NSMutableDictionary);
  rtcReportingDictionary = self->_rtcReportingDictionary;
  self->_rtcReportingDictionary = v16;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = APUISetupViewController;
  [(APUISetupViewController *)&v4 viewWillDisappear:disappear];
  [(APUISetupViewController *)self invalidate];
}

- (void)invalidate
{
  discoverySession = self->_discoverySession;
  if (discoverySession)
  {
    if (dword_1000226F0 <= 50)
    {
      if (dword_1000226F0 != -1 || (v4 = _LogCategory_Initialize(), discoverySession = self->_discoverySession, v4))
      {
        LogPrintF(&dword_1000226F0, "[APUISetupViewController invalidate]", 33554482, "[%{ptr}] Disabling discovery pre-warm session [%{ptr}]", self, discoverySession);
        discoverySession = self->_discoverySession;
      }
    }

    [(AVOutputDeviceDiscoverySession *)discoverySession setDiscoveryMode:0];
    v5 = self->_discoverySession;
    self->_discoverySession = 0;
  }

  v6 = +[APUIConnectivityManager sharedInstance];
  [v6 stopMonitoringWiFiInterfaceChange];

  _remoteViewControllerProxy = [(APUISetupViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy invalidate];
  v8 = +[APUIConnectivityManager sharedInstance];
  [v8 enableCaptiveWebsheet:1];

  [(APUIRouteManager *)self->_routeManager invalidate];
  routeManager = self->_routeManager;
  self->_routeManager = 0;

  if ([(NSMutableDictionary *)self->_rtcReportingDictionary count])
  {
    v10 = dispatch_semaphore_create(0);
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000226F0, "[APUISetupViewController invalidate]", 33554482, "[%{ptr}] sending RTC event: [%p]", self, self->_rtcReportingDictionary);
    }

    v16 = v10;
    v11 = v10;
    APSRTCReportingAgentSendEventWithCompletionHandler();
    v12 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v11, v12);
  }

  rtcReportingDictionary = self->_rtcReportingDictionary;
  self->_rtcReportingDictionary = 0;

  self->_rtcReportingAgent = 0;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C9C8(self, v14, v15);
  }
}

- (void)_setupAirPlayConnectingProxCardManagerWithSetupPayload:(id)payload withTitle:(id)title withSubTitle:(id)subTitle withImageName:(id)name andCompletion:(id)completion
{
  nameCopy = name;
  subTitleCopy = subTitle;
  titleCopy = title;
  v13 = [AirPlayProxCardViewController alloc];
  v14 = +[UIColor systemGrayColor];
  v15 = [(AirPlayProxCardViewController *)v13 initWithTitle:titleCopy subTitle:subTitleCopy imageName:nameCopy tintColor:v14 shouldAnimate:0 actionTitle:0 bottomSubtitle:0 completion:&stru_10001C900];

  [(APUISetupViewController *)self setConnectingProxCardController:v15];
  connectingProxCardController = [(APUISetupViewController *)self connectingProxCardController];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"AirPlaySenderUI_Action_Connecting" value:&stru_10001CEA8 table:0];
  [connectingProxCardController showActivityIndicatorWithStatus:v17];
}

- (void)_initializeAirPlayConnectionProxCardManagerWithSetupPayload:(id)payload andCompletion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"AirPlaySenderUI_AirPlayConnect_Title" value:&stru_10001CEA8 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"AirPlaySenderUI_AirPlayConnect_Subtitle" value:&stru_10001CEA8 table:0];
  wifiSSID = [payloadCopy wifiSSID];
  v12 = [NSString stringWithFormat:v10, wifiSSID];

  v20 = [AirPlayProxCardViewController alloc];
  v13 = +[UIColor systemGrayColor];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"AirPlaySenderUI_Action_Continue" value:&stru_10001CEA8 table:0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100007A80;
  v23[3] = &unk_10001C928;
  v23[4] = self;
  v24 = payloadCopy;
  v25 = v8;
  v26 = v12;
  v27 = @"tv.badge.wifi";
  v28 = completionCopy;
  v21 = completionCopy;
  v16 = v12;
  v17 = v8;
  v18 = payloadCopy;
  v19 = [(AirPlayProxCardViewController *)v20 initWithTitle:v17 subTitle:v16 imageName:@"tv.badge.wifi" tintColor:v13 shouldAnimate:0 actionTitle:v15 bottomSubtitle:0 completion:v23];
  [(APUISetupViewController *)self setSetupProxCardController:v19];
}

- (void)_initializeSetupCompletionProxCardManagerWithSetupPayload:(id)payload isAirPlaySetUp:(BOOL)up andCompletion:(id)completion
{
  upCopy = up;
  payloadCopy = payload;
  completionCopy = completion;
  v9 = +[APUIConnectivityManager sharedInstance];
  currentNetworkSSID = [v9 currentNetworkSSID];

  v11 = +[NSBundle mainBundle];
  v31 = [v11 localizedStringForKey:@"AirPlaySenderUI_AirPlayCompleted_Title" value:&stru_10001CEA8 table:0];

  v12 = [payloadCopy routeToReceiver] | upCopy;
  v13 = +[NSBundle mainBundle];
  v14 = v13;
  if (v12)
  {
    v15 = @"AirPlaySenderUI_AirPlaySetupCompleted_Subtitle";
  }

  else
  {
    v15 = @"AirPlaySenderUI_WiFiSetupCompleted_Subtitle";
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_10001CEA8 table:0];
  v33 = currentNetworkSSID;
  v17 = [NSString stringWithFormat:v16, currentNetworkSSID];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"AirPlaySenderUI_Action_Done" value:&stru_10001CEA8 table:0];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_HelpContact_FrontDesk" value:&stru_10001CEA8 table:0];

  if (upCopy)
  {
    v22 = 0;
    v23 = @"checkmark";
  }

  else
  {
    if ([payloadCopy routeToReceiver])
    {
      v22 = 0;
    }

    else
    {
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"AirPlaySenderUI_UnableToSetUpAirPlay_BottomSubTitle" value:&stru_10001CEA8 table:0];
      v22 = [NSString stringWithFormat:v25, v21];
    }

    v23 = @"wifi";
  }

  v26 = v23;
  v27 = [AirPlayProxCardViewController alloc];
  if (upCopy)
  {
    +[UIColor systemGreenColor];
  }

  else
  {
    +[UIColor systemGrayColor];
  }
  v28 = ;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100007E48;
  v34[3] = &unk_10001C950;
  v35 = completionCopy;
  v29 = completionCopy;
  v30 = [(AirPlayProxCardViewController *)v27 initWithTitle:v31 subTitle:v17 imageName:v26 tintColor:v28 shouldAnimate:upCopy actionTitle:v19 bottomSubtitle:v22 completion:v34];

  [(APUISetupViewController *)self setCompletedProxCardController:v30];
}

+ (id)_localizedSystemWiFiString
{
  v2 = SFLocalizableWAPIStringKeyForKey();
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_10001CEA8 table:0];

  return v4;
}

- (void)_presentUnableToConnectToWiFiAlertWithSetupPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_WiFi_Title" value:&stru_10001CEA8 table:0];
  wifiSSID = [payloadCopy wifiSSID];
  v7 = [NSString stringWithFormat:v5, wifiSSID];

  v8 = +[APUISetupViewController _localizedSystemWiFiString];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_WiFi_Subtitle" value:&stru_10001CEA8 table:0];
  wifiSSID2 = [payloadCopy wifiSSID];

  v12 = [NSString stringWithFormat:v10, v8, wifiSSID2];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_WiFi_Action" value:&stru_10001CEA8 table:0];
  v15 = [NSString stringWithFormat:v14, v8];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"AirPlaySenderUI_Action_Dismiss" value:&stru_10001CEA8 table:0];

  v28[0] = v15;
  v28[1] = v17;
  [NSArray arrayWithObjects:v28 count:2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000081B0;
  block[3] = &unk_10001C9A0;
  block[4] = self;
  v24 = v7;
  v26 = v25 = v12;
  v27 = v15;
  v18 = v15;
  v19 = v26;
  v20 = v12;
  v21 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentUnableToConnectToDeviceAlertWithSetupPayload:(id)payload
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_Title" value:&stru_10001CEA8 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_HelpContact_FrontDesk" value:&stru_10001CEA8 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_Device_Subtitle" value:&stru_10001CEA8 table:0];
  v10 = [NSString stringWithFormat:v9, v7];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AirPlaySenderUI_Action_Dismiss" value:&stru_10001CEA8 table:0];

  v20 = v12;
  [NSArray arrayWithObjects:&v20 count:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008680;
  block[3] = &unk_10001C9F0;
  block[4] = self;
  v17 = v5;
  v19 = v18 = v10;
  v13 = v19;
  v14 = v10;
  v15 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentInvalidCodeAlertWithSetupPayload:(id)payload
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_Title" value:&stru_10001CEA8 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_InvalidQRCode_Subtitle" value:&stru_10001CEA8 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AirPlaySenderUI_Action_Dismiss" value:&stru_10001CEA8 table:0];

  v17 = v9;
  [NSArray arrayWithObjects:&v17 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008A3C;
  v13[3] = &unk_10001C9F0;
  v13[4] = self;
  v14 = v5;
  v16 = v15 = v7;
  v10 = v16;
  v11 = v7;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)_presentProxCardFlowForLaunchType:(int64_t)type andSetupPayload:(id)payload
{
  payloadCopy = payload;
  v8 = payloadCopy;
  v9 = payloadCopy;
  if (dword_1000226F0 <= 50)
  {
    if (dword_1000226F0 != -1 || (payloadCopy = _LogCategory_Initialize(), v8 = v9, payloadCopy))
    {
      payloadCopy = LogPrintF(&dword_1000226F0, "[APUISetupViewController _presentProxCardFlowForLaunchType:andSetupPayload:]", 33554482, "[%{ptr}] presentProxCardFlow for launchType: %d", self, type);
      v8 = v9;
    }
  }

  if (!v8 && dword_1000226F0 <= 90)
  {
    if (dword_1000226F0 != -1 || (payloadCopy = _LogCategory_Initialize(), v8 = v9, payloadCopy))
    {
      payloadCopy = sub_10000CB04(self, v7, v8);
    }
  }

  if ((type - 1) >= 3)
  {
    if (type)
    {
      if (dword_1000226F0 <= 50)
      {
        if (dword_1000226F0 != -1 || (payloadCopy = _LogCategory_Initialize(), payloadCopy))
        {
          payloadCopy = LogPrintF(&dword_1000226F0, "[APUISetupViewController _presentProxCardFlowForLaunchType:andSetupPayload:]", 33554482, "[%{ptr}] presentProxCardFlow invalid launchType: %d", self, type);
        }
      }
    }

    else
    {
      payloadCopy = [(APUISetupViewController *)self _setUpByURL:v9];
    }
  }

  _objc_release_x2(payloadCopy);
}

- (void)_setUpByURL:(id)l
{
  lCopy = l;
  wifiSSID = [lCopy wifiSSID];
  if (wifiSSID && (v7 = wifiSSID, [lCopy wifiSSID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:@"brokerMethodURL" forKey:@"brokerMethod"];
    [(APUISetupViewController *)self _presentAirPlayConnectionProxCardWithSetupPayload:lCopy];
  }

  else if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CB40(self, v5, v6);
  }
}

- (void)_joinWiFiAndConnectToReceiverWithSetupPayload:(id)payload
{
  payloadCopy = payload;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CB7C(self, v4, v5);
  }

  v7 = +[APUIConnectivityManager sharedInstance];
  wifiSSID = [payloadCopy wifiSSID];
  isNetworkHidden = [payloadCopy isNetworkHidden];
  wifiPassphrase = [payloadCopy wifiPassphrase];
  captivePortalAuthToken = [payloadCopy captivePortalAuthToken];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009004;
  v13[3] = &unk_10001CA18;
  v13[4] = self;
  v14 = payloadCopy;
  v12 = payloadCopy;
  [v7 joinWiFiNetworkWithSSID:wifiSSID isNetworkHidden:isNetworkHidden passPhrase:wifiPassphrase captivePortalAuthToken:captivePortalAuthToken completion:v13];
}

- (void)_getSupportedNetworks:(id)networks withSetupPayload:(id)payload completion:(id)completion
{
  networksCopy = networks;
  payloadCopy = payload;
  completionCopy = completion;
  v11 = completionCopy;
  if (networksCopy)
  {
    wifiSSID = [payloadCopy wifiSSID];
    v13 = [wifiSSID isEqualToString:networksCopy];

    if (v13)
    {
      if (v11)
      {
        v11[2](v11, 1);
      }
    }

    else
    {
      v14 = +[APUIBrokerHelper sharedInstance];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000092A4;
      v15[3] = &unk_10001CA40;
      v15[4] = self;
      v17 = v11;
      v16 = networksCopy;
      [v14 getBrokerGroupInfo:0 completion:v15];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_performBrokerAuthenticationWithSetupPayload:(id)payload switchWiFiIfFailed:(BOOL)failed
{
  payloadCopy = payload;
  v7 = +[APUIBrokerHelper sharedInstance];
  brokerToken = [payloadCopy brokerToken];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009534;
  v10[3] = &unk_10001CA68;
  failedCopy = failed;
  v10[4] = self;
  v11 = payloadCopy;
  v9 = payloadCopy;
  [v7 performBrokerAuthenticationForBrokerGroup:0 withBrokerAuth:brokerToken completion:v10];
}

- (void)_connectToAirPlayReceiverWithDeviceID:(id)d andSetupPayload:(id)payload
{
  payloadCopy = payload;
  routeManager = self->_routeManager;
  dCopy = d;
  receiverToken = [payloadCopy receiverToken];
  routeToReceiver = [payloadCopy routeToReceiver];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000980C;
  v12[3] = &unk_10001CA18;
  v12[4] = self;
  v13 = payloadCopy;
  v11 = payloadCopy;
  [(APUIRouteManager *)routeManager pickRouteWithRouteID:dCopy authString:receiverToken useRemoteControl:routeToReceiver ^ 1 completion:v12];
}

- (void)_presentAirPlayConnectionProxCardWithSetupPayload:(id)payload
{
  payloadCopy = payload;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D114(self, v4, v5);
  }

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100009AD0;
  v15 = &unk_10001CAB8;
  v7 = payloadCopy;
  v16 = v7;
  selfCopy = self;
  [(APUISetupViewController *)self _initializeAirPlayConnectionProxCardManagerWithSetupPayload:v7 andCompletion:&v12];
  v8 = [(APUISetupViewController *)self setupProxCardController:v12];

  if (v8)
  {
    setupProxCardController = [(APUISetupViewController *)self setupProxCardController];
    v10 = +[PRXFlowConfiguration defaultConfiguration];
    v11 = [(APUISetupViewController *)self presentProxCardFlowWithDelegate:self initialViewController:setupProxCardController configuration:v10];
    [(APUISetupViewController *)self setProxCardNavigationController:v11];
  }
}

- (void)_presentSetupCompletedProxCard:(id)card isAirPlaySetUp:(BOOL)up
{
  upCopy = up;
  cardCopy = card;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    v7 = @"not set up.";
    if (upCopy)
    {
      v7 = @"set up.";
    }

    LogPrintF(&dword_1000226F0, "[APUISetupViewController _presentSetupCompletedProxCard:isAirPlaySetUp:]", 33554482, "[%{ptr}] presentSetupCompletedProxCard with AirPlay %@", self, v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009EE0;
  block[3] = &unk_10001CB08;
  block[4] = self;
  v10 = cardCopy;
  v11 = upCopy;
  v8 = cardCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)proxCardFlowWillPresent
{
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D318(self, a2, v2);
  }
}

- (void)proxCardFlowDidDismiss
{
  if (![(APUISetupViewController *)self shouldSkipInvalidateOnProxCardFlowDidDismiss])
  {
    [(APUISetupViewController *)self invalidate];
  }

  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D354(self, v3, v4);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A264;
  v7[3] = &unk_10001CAE0;
  v7[4] = self;
  v6 = [(APUISetupViewController *)self _remoteViewControllerProxyWithErrorHandler:v7];
  [v6 setReachabilityDisabled:1];
  [v6 setAllowsAlertStacking:0];
  [v6 setAllowsBanners:1];
  [v6 setAllowsAlertItems:1];
  [v6 setAllowsControlCenter:1];
  [v6 setAllowsSiri:1];
  [v6 setAllowsMenuButtonDismissal:1];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000A560;
  v16[3] = &unk_10001CAE0;
  v16[4] = self;
  contextCopy = context;
  v8 = [(APUISetupViewController *)self _remoteViewControllerProxyWithErrorHandler:v16];
  userInfo = [contextCopy userInfo];

  v10 = [userInfo objectForKey:@"setupPayload"];

  v15 = 0;
  v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v15];
  v14 = v15;
  if (v11)
  {
    [v8 setStatusBarHidden:1 withDuration:0.4];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000226F0, "[APUISetupViewController prepareForActivationWithContext:completion:]", 33554482, "[%{ptr}] - launching flow for type %d payload %@", self, 0, v11);
    }

    [(APUISetupViewController *)self _presentProxCardFlowForLaunchType:0 andSetupPayload:v11];
  }

  else
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D3F8(self, v12, v13);
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else if (!v14)
    {
      goto LABEL_16;
    }

    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000226F0, "[APUISetupViewController prepareForActivationWithContext:completion:]", 33554522, "[%{ptr}]:NSKeyedUnarchiver error: %@", self, v14);
    }
  }

LABEL_16:
}

- (void)updateWiFiRTCDictionaryAlreadyAssociated:(BOOL)associated associationSucessful:(BOOL)sucessful error:(id)error
{
  sucessfulCopy = sucessful;
  associatedCopy = associated;
  errorCopy = error;
  v8 = @"wifiAssociationFail";
  if (sucessfulCopy)
  {
    v8 = @"wifiAssociationSuccess";
  }

  if (associatedCopy)
  {
    v9 = @"wifiAssociationAlready";
  }

  else
  {
    v9 = v8;
  }

  [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:v9 forKey:@"wifiAssociationStatus"];
  rtcReportingDictionary = self->_rtcReportingDictionary;
  if (errorCopy)
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [(NSMutableDictionary *)rtcReportingDictionary setValue:v11 forKey:@"wifiAssociationErrorCode"];
  }

  else
  {
    [(NSMutableDictionary *)rtcReportingDictionary removeObjectForKey:@"wifiAssociationErrorCode"];
  }
}

- (void)updateBrokerRTCDictionaryBrokerConnectionSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (successCopy)
  {
    v6 = @"brokerSuccess";
  }

  else
  {
    v6 = @"brokerFail";
  }

  [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:v6 forKey:@"brokerStatus"];
  rtcReportingDictionary = self->_rtcReportingDictionary;
  if (errorCopy)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [(NSMutableDictionary *)rtcReportingDictionary setValue:v8 forKey:@"brokerErrorCode"];
  }

  else
  {
    [(NSMutableDictionary *)rtcReportingDictionary removeObjectForKey:@"brokerErrorCode"];
  }
}

- (void)updateReceiverRTCDictionaryReceiverConnectionSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (successCopy)
  {
    v6 = @"receiverSuccess";
  }

  else
  {
    v6 = @"receiverFail";
  }

  [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:v6 forKey:@"receiverStatus"];
  rtcReportingDictionary = self->_rtcReportingDictionary;
  if (errorCopy)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [(NSMutableDictionary *)rtcReportingDictionary setValue:v8 forKey:@"receiverErrorCode"];
  }

  else
  {
    [(NSMutableDictionary *)rtcReportingDictionary removeObjectForKey:@"receiverErrorCode"];
  }
}

@end