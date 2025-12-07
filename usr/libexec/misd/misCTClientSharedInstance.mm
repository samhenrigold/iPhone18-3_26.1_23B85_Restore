@interface misCTClientSharedInstance
+ (id)sharedInstance;
- (BOOL)registerCellularDataStatusNotification:(BOOL)notification callback:(void *)callback callbackArg:(void *)arg;
- (__CTServerConnection)ctServerConnection;
- (int)activateTethering:(BOOL)tethering;
- (int)getTetheringInterfaceName:(char *)name;
- (int)getTetheringStatus:(mis_ctinterface_tethering_status *)status;
- (int)isDataPlanEnabled:(BOOL *)enabled;
- (misCTClientSharedInstance)init;
- (void)_setupCTServerConnection;
- (void)_updateDualSimStatus;
- (void)convertConnectionStatus:(id)status ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)connStatus;
- (void)convertTetheringStatus:(mis_ctinterface_tethering_status *)status CTStatus:(id)tStatus;
- (void)dealloc;
- (void)handleCTNotification:(__CFString *)notification notificationInfo:(__CFDictionary *)info;
- (void)processCTConnectionActivationError;
- (void)processCTConnectionStateChangeNotification:(id)notification connection:(int)connection connectionStatus:(id)status ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)connStatus;
- (void)processCTTetheringStatusChangeNotification:(id)notification;
@end

@implementation misCTClientSharedInstance

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E0DC;
  block[3] = &unk_1000310D8;
  block[4] = self;
  if (qword_1000351D8 != -1)
  {
    dispatch_once(&qword_1000351D8, block);
  }

  return qword_1000351E0;
}

- (__CTServerConnection)ctServerConnection
{
  result = self->_ctServerConnection;
  if (!result)
  {
    [(misCTClientSharedInstance *)self _setupCTServerConnection];
    return self->_ctServerConnection;
  }

  return result;
}

- (misCTClientSharedInstance)init
{
  v5.receiver = self;
  v5.super_class = misCTClientSharedInstance;
  v2 = [(misCTClientSharedInstance *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(misCTClientSharedInstance *)v2 _setupCTServerConnection];
    v3->_CTAssertion = 0;
  }

  return v3;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  CTAssertion = self->_CTAssertion;
  if (CTAssertion)
  {
    CFRelease(CTAssertion);
    self->_CTAssertion = 0;
  }

  [(CoreTelephonyClient *)self->_ctClient setDelegate:0];
  sub_100001108(1u, "misCTClientSharedInstance dealloc");
  v5.receiver = self;
  v5.super_class = misCTClientSharedInstance;
  [(misCTClientSharedInstance *)&v5 dealloc];
}

- (void)_setupCTServerConnection
{
  if (!self->_ctServerConnection)
  {
    v3 = _CTServerConnectionCreateOnTargetQueue();
    self->_ctServerConnection = v3;
    if (v3)
    {
      sub_100001108(1u, "created CT server connection");
      v4 = [CoreTelephonyClient alloc];
      self->_ctClient = [v4 initWithQueue:qword_100034BD8];
      self->_ctClientDelegates = objc_alloc_init(misCTClientDelegates);
      if (_CTServerConnectionRegisterForNotification() >> 32)
      {
        sub_100001108(0, "error registering kCTConnectionInvalidatedNotification (%d, %d)");
      }

      else
      {
        if (!(_CTServerConnectionRegisterForNotification() >> 32))
        {
          return;
        }

        sub_100001108(0, "error registering kCTDaemonReadyNotification (%d, %d)");
      }
    }

    else
    {
      sub_100001108(0, "Unable to create CT server connection");
    }

    if (self->_ctServerConnection)
    {
      sub_100001108(0, "%s: closing CT server connection due to init errors", "[misCTClientSharedInstance _setupCTServerConnection]");
      CFRelease(self->_ctServerConnection);
      self->_ctServerConnection = 0;
    }
  }
}

- (BOOL)registerCellularDataStatusNotification:(BOOL)notification callback:(void *)callback callbackArg:(void *)arg
{
  notificationCopy = notification;
  v9 = "NO";
  if (notification)
  {
    v9 = "YES";
  }

  sub_100001108(1u, "registerCellularDataStatusNotification: %s", v9);
  if (!notificationCopy)
  {
    [(CoreTelephonyClient *)self->_ctClient setDelegate:0];
    self->_eventCallback = 0;
    self->_eventCallbackArg = 0;
    return 1;
  }

  if (self->_ctServerConnection)
  {
    [(CoreTelephonyClient *)self->_ctClient setDelegate:self->_ctClientDelegates];
    self->_eventCallback = callback;
    self->_eventCallbackArg = arg;
    return 1;
  }

  sub_100001108(0, "registerCellularDataStatusNotification enable failed due to invalid CT server connection.");
  return 0;
}

- (void)_updateDualSimStatus
{
  v9 = 0;
  self->_isDualSim = 0;
  ctClient = self->_ctClient;
  if (ctClient)
  {
    v4 = [(CoreTelephonyClient *)ctClient getSubscriptionInfoWithError:&v9];
    if (v9)
    {
      v5 = "%s: failed to query cellular subscription info";
    }

    else
    {
      v6 = v4;
      if (v4 && [v4 subscriptionsInUse])
      {
        if ([objc_msgSend(v6 "subscriptionsInUse")] <= 1)
        {
          if (self->_isDualSim)
          {
            v7 = "true";
          }

          else
          {
            v7 = "false";
          }
        }

        else
        {
          self->_isDualSim = 1;
          v7 = "true";
        }

        v8 = v7;
        v5 = "%s: updated dual sim status to %s";
      }

      else
      {
        v5 = "%s: failed to get the subscription contexts";
      }
    }

    sub_100001108(0, v5, "[misCTClientSharedInstance _updateDualSimStatus]", v8);
  }

  else
  {
    sub_100001108(0, "%s: CT client not initialized");
  }
}

- (int)activateTethering:(BOOL)tethering
{
  if (!self->_ctClient)
  {
    sub_100001108(0, "%s: CT client not initialized", "[misCTClientSharedInstance activateTethering:]");
    return -1;
  }

  tetheringCopy = tethering;
  if (![(misCTClientSharedInstance *)self ctServerConnection])
  {
    sub_1000219C4();
  }

  if (tetheringCopy)
  {
    v8 = 0;
    sub_100001108(1u, "%s: creating tethering assertion", "[misCTClientSharedInstance activateTethering:]");
    ctClient = self->_ctClient;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001E680;
    v7[3] = &unk_100031128;
    v7[4] = self;
    self->_CTAssertion = [(CoreTelephonyClient *)ctClient createAssertionForConnectionType:4 allocator:0 error:&v8 onReAssertError:v7];
    result = v8;
    if (v8)
    {
      sub_100001108(0, "%s: failed creating CT tethering context assertion with error '%s'", "-[misCTClientSharedInstance activateTethering:]", [objc_msgSend(v8 "description")]);
      [(misCTClientSharedInstance *)self activateTethering:0];
      return -1;
    }
  }

  else if (self->_CTAssertion)
  {
    sub_100001108(1u, "%s: releasing tethering assertion", "[misCTClientSharedInstance activateTethering:]");
    CFRelease(self->_CTAssertion);
    result = 0;
    self->_CTAssertion = 0;
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)convertConnectionStatus:(id)status ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)connStatus
{
  v6 = [NSMutableString stringWithCapacity:20];
  state = [status state];
  if (state >= 4)
  {
    sub_100001108(0, "%s: unknown connection state %d, ignoring", "-[misCTClientSharedInstance convertConnectionStatus:ctInterfaceConnStatus:]", [status state]);
  }

  else
  {
    v8 = state + 1;
    [(NSMutableString *)v6 setString:*(&off_100031148 + state)];
    connStatus->var0 = v8;
    sub_100001108(1u, "convertConnectionStatus: state: %s, ifname: %s, pdp_idx: %d", -[NSMutableString UTF8String](v6, "UTF8String"), [objc_msgSend(status "interfaceName")], objc_msgSend(objc_msgSend(status, "pdp"), "intValue"));
    if ([status interfaceName])
    {
      strncpy(connStatus->var2, [objc_msgSend(status "interfaceName")], 0xFuLL);
      connStatus->var1 = [objc_msgSend(status "pdp")];
    }

    else
    {
      connStatus->var2[0] = 0;
      connStatus->var1 = -1;
    }
  }
}

- (void)convertTetheringStatus:(mis_ctinterface_tethering_status *)status CTStatus:(id)tStatus
{
  if (![tStatus carrierEnabled] || !objc_msgSend(objc_msgSend(tStatus, "carrierEnabled"), "intValue"))
  {
    status->var0 = 0;
LABEL_9:
    status->var1 = 0;
    goto LABEL_10;
  }

  status->var0 = 1;
  if (![tStatus userAuthenticated] || !objc_msgSend(objc_msgSend(tStatus, "userAuthenticated"), "intValue"))
  {
    goto LABEL_9;
  }

  status->var1 = 1;
  if ([tStatus connectionAvailabilityStatus] && (objc_msgSend(objc_msgSend(tStatus, "connectionAvailabilityStatus"), "available") & 1) != 0)
  {
    v7 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  status->var2 = v7;
  if ([tStatus misPdpMaxHosts])
  {
    v8 = [objc_msgSend(tStatus "misPdpMaxHosts")];
  }

  else
  {
    v8 = 3;
  }

  status->var3 = v8;
  connectionStatus = [tStatus connectionStatus];

  [(misCTClientSharedInstance *)self convertConnectionStatus:connectionStatus ctInterfaceConnStatus:&status->var4];
}

- (int)getTetheringStatus:(mis_ctinterface_tethering_status *)status
{
  v16 = 0;
  ctClient = self->_ctClient;
  if (!ctClient)
  {
    v13 = "[misCTClientSharedInstance getTetheringStatus:]";
    v8 = "%s: CT client not initialized";
    goto LABEL_5;
  }

  v6 = [(CoreTelephonyClient *)ctClient getTetheringStatusSync:&v16 connectionType:4];
  if (v16)
  {
    v7 = [objc_msgSend(v16 "domain")];
    code = [v16 code];
    v15 = [objc_msgSend(v16 "description")];
    v13 = v7;
    v8 = "getTetheringStatusSync() failed, domain: [%s] code: [%ld] desc: [%s]";
LABEL_5:
    sub_100001108(0, v8, v13, code, v15);
    return -1;
  }

  if (!v6)
  {
    v13 = "[misCTClientSharedInstance getTetheringStatus:]";
    v8 = "%s tethering status is empty";
    goto LABEL_5;
  }

  [(misCTClientSharedInstance *)self convertTetheringStatus:status CTStatus:v6];
  if (status->var0)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  if (status->var1)
  {
    v11 = "true";
  }

  else
  {
    v11 = "false";
  }

  if (status->var2)
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  sub_100001108(1u, "getTetheringStatusSync: carrier_enabled: %s, user_auth: %s, conn_avail: %s, max_hosts: %d, ifname: %s", v10, v11, v12, status->var3, [objc_msgSend(objc_msgSend(v6 "connectionStatus")]);
  return 0;
}

- (int)getTetheringInterfaceName:(char *)name
{
  v6 = 0u;
  *v7 = 0u;
  v4 = [(misCTClientSharedInstance *)self getTetheringStatus:&v6];
  result = -1;
  if (!v4)
  {
    if (v7[0])
    {
      strncpy(name, v7, 0xFuLL);
      return 0;
    }
  }

  return result;
}

- (int)isDataPlanEnabled:(BOOL *)enabled
{
  *enabled = 0;
  [(misCTClientSharedInstance *)self ctServerConnection];
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  v4 = 0;
  if (HIDWORD(IsEnabled))
  {
    sub_100001108(0, "%s: error while querying data plan status (domain %d, error %d)", "[misCTClientSharedInstance isDataPlanEnabled:]", IsEnabled, HIDWORD(IsEnabled));
    return 12;
  }

  return v4;
}

- (void)processCTTetheringStatusChangeNotification:(id)notification
{
  if (notification)
  {
    memset(v5, 0, sizeof(v5));
    [(misCTClientSharedInstance *)self convertTetheringStatus:v5 CTStatus:notification];
    eventCallback = self->_eventCallback;
    if (eventCallback)
    {
      eventCallback(1, v5, self->_eventCallbackArg);
    }
  }

  else
  {

    sub_100001108(0, "processCTTetheringStatusChangeNotification: tethering status is empty");
  }
}

- (void)processCTConnectionStateChangeNotification:(id)notification connection:(int)connection connectionStatus:(id)status ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)connStatus
{
  if (connection == 4)
  {
    [(misCTClientSharedInstance *)self convertConnectionStatus:status ctInterfaceConnStatus:connStatus];
    eventCallback = self->_eventCallback;
    if (eventCallback)
    {
      eventCallbackArg = self->_eventCallbackArg;

      eventCallback(2, connStatus, eventCallbackArg);
    }
  }

  else
  {
    sub_100001108(1u, "processCTConnectionStateChangeNotification: ignoring unknown connection type %d", connection);
  }
}

- (void)processCTConnectionActivationError
{
  eventCallback = self->_eventCallback;
  if (eventCallback)
  {
    eventCallback(3, 0, self->_eventCallbackArg);
  }
}

- (void)handleCTNotification:(__CFString *)notification notificationInfo:(__CFDictionary *)info
{
  if (!self->_eventCallback)
  {
    sub_100001108(0, "%s: ignoring CT notification as no service is in progress", notification);
    return;
  }

  if (CFEqual(notification, kCTConnectionInvalidatedNotification))
  {
    v7 = 4;
  }

  else
  {
    if (!CFEqual(notification, kCTDaemonReadyNotification))
    {
      CFStringGetCStringPtr(notification, 0x8000100u);
      sub_100001108(0, "%s: received unknown notification %s", v10, v11);
      return;
    }

    v7 = 5;
  }

  eventCallback = self->_eventCallback;
  eventCallbackArg = self->_eventCallbackArg;

  eventCallback(v7, info, eventCallbackArg);
}

@end