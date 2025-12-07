@interface APUIConnectivityManager
+ (BOOL)nwPathHasWiFiConnectivity:(id)connectivity;
+ (BOOL)shouldUpdateNetworkProfile;
+ (id)sharedInstance;
- (APUIConnectivityManager)init;
- (int64_t)connectivityState;
- (void)_associateWithNetworkWithPassPhrase:(id)phrase captivePortalAuthToken:(id)token scanResults:(id)results completion:(id)completion;
- (void)_initWifiInterface;
- (void)_monitorWiFiIPAddressConfigurationWithCompletion:(id)completion;
- (void)_startMonitoringWiFiEvents;
- (void)_startWiFiNetworkScanWithScanParameters:(id)parameters passPhrase:(id)phrase captivePortalAuthToken:(id)token completion:(id)completion;
- (void)_stopMonitoringWiFiEvents;
- (void)dealloc;
- (void)enableCaptiveWebsheet:(unsigned __int8)websheet;
- (void)handleUSBInterfaceChangedWithEventInfo:(id)info;
- (void)handleWiFiInterfaceChangedWithEventInfo:(id)info;
- (void)joinWiFiNetworkWithSSID:(id)d isNetworkHidden:(BOOL)hidden passPhrase:(id)phrase captivePortalAuthToken:(id)token completion:(id)completion;
- (void)startMonitoringUSBInterfaceChange;
- (void)startMonitoringWiFiInterfaceChange;
- (void)stopMonitoringUSBInterfaceChange;
- (void)stopMonitoringWiFiInterfaceChange;
- (void)tagAirPlayNetwork;
@end

@implementation APUIConnectivityManager

- (int64_t)connectivityState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectivityState = selfCopy->_connectivityState;
  objc_sync_exit(selfCopy);

  return connectivityState;
}

- (void)_initWifiInterface
{
  v3 = [[CWFInterface alloc] initWithServiceType:2];
  cwInterface = self->_cwInterface;
  self->_cwInterface = v3;

  [(CWFInterface *)self->_cwInterface activate];
  v5 = self->_cwInterface;

  [(CWFInterface *)v5 setInvalidationHandler:&stru_10001C7D0];
}

- (void)_startMonitoringWiFiEvents
{
  if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BF78(self);
  }

  cwInterface = self->_cwInterface;
  v8 = 0;
  [(CWFInterface *)cwInterface startMonitoringEventType:19 error:&v8];
  v4 = v8;
  if (v4 && dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BFB8(v4);
  }

  v5 = self->_cwInterface;
  v7 = 0;
  [(CWFInterface *)v5 startMonitoringEventType:20 error:&v7];
  v6 = v7;
  if (v6 && dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C014(v6);
  }
}

- (void)_stopMonitoringWiFiEvents
{
  if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C070(self);
  }

  [(CWFInterface *)self->_cwInterface stopMonitoringEventType:19];
  cwInterface = self->_cwInterface;

  [(CWFInterface *)cwInterface stopMonitoringEventType:20];
}

- (void)_monitorWiFiIPAddressConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  monitorQueue = self->_monitorQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005288;
  v7[3] = &unk_10001C820;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(monitorQueue, v7);
}

- (void)joinWiFiNetworkWithSSID:(id)d isNetworkHidden:(BOOL)hidden passPhrase:(id)phrase captivePortalAuthToken:(id)token completion:(id)completion
{
  hiddenCopy = hidden;
  dCopy = d;
  phraseCopy = phrase;
  tokenCopy = token;
  completionCopy = completion;
  v15 = objc_alloc_init(CWFScanParameters);
  [v15 setSSID:dCopy];
  [v15 setIncludeHiddenNetworks:hiddenCopy];
  [v15 setMaximumCacheAge:0];
  [v15 setNumberOfScans:1];
  [v15 setMergeScanResults:1];
  if (tokenCopy)
  {
    if (IsAppleInternalBuild() && dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100022610, "[APUIConnectivityManager joinWiFiNetworkWithSSID:isNetworkHidden:passPhrase:captivePortalAuthToken:completion:]", 33554482, "[%{ptr}] Starts captive portal authentication with token %@.", self, tokenCopy);
    }

    if ([objc_opt_class() isCaptivePortalMitigationSupported])
    {
      [tokenCopy dataUsingEncoding:4];
      CNSetCaptivePortalAuthenticationCredentials();
    }
  }

  [(APUIConnectivityManager *)self _startWiFiNetworkScanWithScanParameters:v15 passPhrase:phraseCopy captivePortalAuthToken:tokenCopy completion:completionCopy];
}

- (void)enableCaptiveWebsheet:(unsigned __int8)websheet
{
  v5 = CNEnableWebSheetLaunch();
  if (dword_100022610 <= 50)
  {
    v6 = v5;
    if (dword_100022610 != -1 || _LogCategory_Initialize())
    {
      sub_10000C34C(websheet, v6, self);
    }
  }
}

- (void)tagAirPlayNetwork
{
  if ([objc_opt_class() shouldUpdateNetworkProfile])
  {
    currentKnownNetworkProfile = [(CWFInterface *)self->_cwInterface currentKnownNetworkProfile];
    if (objc_opt_respondsToSelector())
    {
      [currentKnownNetworkProfile performSelector:"setPublicAirPlayNetwork:" withObject:&__kCFBooleanTrue];
      cwInterface = self->_cwInterface;
      v5 = [NSSet setWithObject:&off_10001D7F0];
      v7 = 0;
      [(CWFInterface *)cwInterface updateKnownNetworkProfile:currentKnownNetworkProfile properties:v5 error:&v7];
      v6 = v7;

      if (v6)
      {
        if (dword_100022610 <= 90 && (dword_100022610 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100022610, "[APUIConnectivityManager tagAirPlayNetwork]", 33554522, "[%{ptr}] Update network profile with error: %@.", self, v6);
        }
      }

      else if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
      {
        sub_10000C3C0(self);
      }
    }
  }
}

- (void)_startWiFiNetworkScanWithScanParameters:(id)parameters passPhrase:(id)phrase captivePortalAuthToken:(id)token completion:(id)completion
{
  parametersCopy = parameters;
  phraseCopy = phrase;
  tokenCopy = token;
  completionCopy = completion;
  if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C400(self);
  }

  cwInterface = self->_cwInterface;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005C3C;
  v18[3] = &unk_10001C848;
  v18[4] = self;
  v19 = phraseCopy;
  v20 = tokenCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = tokenCopy;
  v17 = phraseCopy;
  [(CWFInterface *)cwInterface performScanWithParameters:parametersCopy reply:v18];
}

- (void)_associateWithNetworkWithPassPhrase:(id)phrase captivePortalAuthToken:(id)token scanResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  resultsCopy = results;
  phraseCopy = phrase;
  v12 = objc_alloc_init(CWFAssocParameters);
  [v12 setScanResult:resultsCopy];

  [v12 setPassword:phraseCopy];
  [v12 setRememberUponSuccessfulAssociation:1];
  if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C4BC(self);
  }

  cwInterface = self->_cwInterface;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005F68;
  v15[3] = &unk_10001C870;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [(CWFInterface *)cwInterface associateWithParameters:v12 reply:v15];
}

- (void)handleUSBInterfaceChangedWithEventInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = infoCopy;
  connectivityState = selfCopy->_connectivityState;
  if (!selfCopy->_activeUSBInterfaces)
  {
    v7 = objc_alloc_init(NSMutableSet);
    activeUSBInterfaces = selfCopy->_activeUSBInterfaces;
    selfCopy->_activeUSBInterfaces = v7;

    v5 = infoCopy;
  }

  v9 = [v5 objectForKey:kAPConnectivityHelperEventInfoKey_IsAddEvent];
  bOOLValue = [v9 BOOLValue];

  v11 = selfCopy->_activeUSBInterfaces;
  if (bOOLValue)
  {
    v12 = [infoCopy objectForKey:kAPConnectivityHelperEventInfoKey_NetworkInterfaceName];
    [(NSMutableSet *)v11 addObject:v12];

    v13 = selfCopy->_connectivityState | 2;
  }

  else
  {
    v14 = [infoCopy objectForKey:kAPConnectivityHelperEventInfoKey_NetworkInterfaceName];
    [(NSMutableSet *)v11 removeObject:v14];

    v15 = [(NSMutableSet *)selfCopy->_activeUSBInterfaces count];
    v13 = selfCopy->_connectivityState;
    if (v15)
    {
      goto LABEL_8;
    }

    v13 &= ~2uLL;
  }

  selfCopy->_connectivityState = v13;
LABEL_8:
  objc_sync_exit(selfCopy);

  if (v13 != connectivityState)
  {
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:@"kAPUIConnectivityManagerNotification_ConnectivityStateChanged" object:selfCopy];
  }
}

- (void)handleWiFiInterfaceChangedWithEventInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectivityState = selfCopy->_connectivityState;
  v6 = kAPConnectivityHelperEventInfoKey_WiFiNetworkSSID;
  v7 = [infoCopy objectForKeyedSubscript:kAPConnectivityHelperEventInfoKey_WiFiNetworkSSID];

  v8 = selfCopy->_connectivityState;
  if (v7)
  {
    selfCopy->_connectivityState = v8 | 1;
    v9 = [infoCopy objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = 0;
    selfCopy->_connectivityState = v8 & 0xFFFFFFFFFFFFFFFELL;
  }

  currentNetworkSSID = selfCopy->_currentNetworkSSID;
  selfCopy->_currentNetworkSSID = v9;

  v11 = selfCopy->_connectivityState;
  if (v11 == connectivityState)
  {
    objc_sync_exit(selfCopy);
    goto LABEL_11;
  }

  if (dword_100022610 <= 50)
  {
    if (dword_100022610 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v11 = selfCopy->_connectivityState;
    }

    LogPrintF(&dword_100022610, "[APUIConnectivityManager handleWiFiInterfaceChangedWithEventInfo:]", 33554482, "[%{ptr}] previous state: %d, currentState: %d.", selfCopy, connectivityState, v11);
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v12 = +[NSNotificationCenter defaultCenter];
  [(APUIConnectivityManager *)v12 postNotificationName:@"kAPUIConnectivityManagerNotification_ConnectivityStateChanged" object:selfCopy];
  selfCopy = v12;
LABEL_11:
}

- (void)startMonitoringWiFiInterfaceChange
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_isListeningForWiFiInterfaceChange)
  {
    if (APConnectivityHelperRegisterForEvent())
    {
      APSLogErrorAt();
      v2 = obj;
    }

    else
    {
      v2 = obj;
      obj->_isListeningForWiFiInterfaceChange = 1;
    }
  }

  objc_sync_exit(v2);
}

- (void)stopMonitoringWiFiInterfaceChange
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_isListeningForWiFiInterfaceChange)
  {
    if (APConnectivityHelperDeregisterForEvent())
    {
      APSLogErrorAt();
      v2 = obj;
    }

    else
    {
      v2 = obj;
      obj->_isListeningForWiFiInterfaceChange = 0;
    }
  }

  objc_sync_exit(v2);
}

- (void)startMonitoringUSBInterfaceChange
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_isListeningForUSBInterfaceChange)
  {
    if (APConnectivityHelperRegisterForEvent())
    {
      APSLogErrorAt();
      v2 = obj;
    }

    else
    {
      v2 = obj;
      obj->_isListeningForUSBInterfaceChange = 1;
    }
  }

  objc_sync_exit(v2);
}

- (void)stopMonitoringUSBInterfaceChange
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_isListeningForUSBInterfaceChange)
  {
    if (APConnectivityHelperDeregisterForEvent())
    {
      APSLogErrorAt();
      v2 = obj;
    }

    else
    {
      v2 = obj;
      obj->_isListeningForUSBInterfaceChange = 0;
    }
  }

  objc_sync_exit(v2);
}

- (APUIConnectivityManager)init
{
  v9.receiver = self;
  v9.super_class = APUIConnectivityManager;
  v2 = [(APUIConnectivityManager *)&v9 init];
  if (v2)
  {
    if (dword_100022610 <= 50 && (dword_100022610 != -1 || _LogCategory_Initialize()))
    {
      sub_10000C6CC(v2);
    }

    SharedHelper = APConnectivityHelperGetSharedHelper();
    v2->_connectivityHelper = SharedHelper;
    if (SharedHelper && (CFRetain(SharedHelper), v2->_connectivityHelper))
    {
      v4 = APConnectivityHelperRegisterEventHandler();
      if (!v4)
      {
        [(APUIConnectivityManager *)v2 _initWifiInterface];
        p_super = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        v6 = dispatch_queue_create("AirPlaySenderUIApp.networkObserverQueue", p_super);
        monitorQueue = v2->_monitorQueue;
        v2->_monitorQueue = v6;

LABEL_9:
        return v2;
      }

      sub_10000C70C(v4);
    }

    else
    {
      sub_10000C734();
    }

    p_super = &v2->super;
    v2 = 0;
    goto LABEL_9;
  }

  return v2;
}

- (void)dealloc
{
  connectivityHelper = self->_connectivityHelper;
  if (connectivityHelper)
  {
    CFRelease(connectivityHelper);
    self->_connectivityHelper = 0;
  }

  [(APUIConnectivityManager *)self _stopMonitoringWiFiEvents];
  [(CWFInterface *)self->_cwInterface invalidate];
  v4.receiver = self;
  v4.super_class = APUIConnectivityManager;
  [(APUIConnectivityManager *)&v4 dealloc];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000069AC;
  block[3] = &unk_10001C740;
  block[4] = self;
  if (qword_100022960 != -1)
  {
    dispatch_once(&qword_100022960, block);
  }

  v2 = qword_100022968;

  return v2;
}

+ (BOOL)nwPathHasWiFiConnectivity:(id)connectivity
{
  connectivityCopy = connectivity;
  v4 = connectivityCopy;
  v5 = connectivityCopy && nw_path_uses_interface_type(connectivityCopy, nw_interface_type_wifi) && ((nw_path_get_status(v4) - 1) & 0xFFFFFFFD) == 0;

  return v5;
}

+ (BOOL)shouldUpdateNetworkProfile
{
  BooleanIfPresent = APSSettingsGetBooleanIfPresent();
  if (dword_100022610 <= 50)
  {
    v3 = BooleanIfPresent;
    if (dword_100022610 != -1 || _LogCategory_Initialize())
    {
      sub_10000C760(1, v3 == 0);
    }
  }

  return 1;
}

@end