@interface AAServicesDaemon
+ (id)sharedAAServicesDaemon;
- (AAServicesDaemon)init;
- (BOOL)_shouldRunHeadGesture;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_activateAudioRoutingControl:(id)control completion:(id)completion;
- (void)_activateAudioSessionControl:(id)control completion:(id)completion;
- (void)_activateSystemStateMonitorDirect:(id)direct completion:(id)completion;
- (void)_avSystemControllerServerReset;
- (void)_createBannerSessionMuteActionForIOS:(int)s auditToken:(id *)token appName:(id)name appBundleID:(id)d;
- (void)_createBannerSessionMuteActionForMacOS:(int)s auditToken:(id *)token appName:(id)name appBundleID:(id)d;
- (void)_deregisterFromAVSystemControllerDeathNotifications;
- (void)_deregisterFromAVSystemControllerStateNotifications;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_deviceManagerActivateDirect:(id)direct completion:(id)completion;
- (void)_deviceManagerSendDeviceConfigDirect:(id)direct identifier:(id)identifier completion:(id)completion;
- (void)_ensureHeadGestureDetectionStarted;
- (void)_ensureHeadGestureDetectionStopped;
- (void)_handleCallIsActiveDidChangeNotification:(id)notification;
- (void)_handlePTTCallStatusChangedNotification:(id)notification;
- (void)_invalidateAudioRoutingControl:(id)control completion:(id)completion;
- (void)_invalidateAudioSessionControl:(id)control completion:(id)completion;
- (void)_invalidateMuteBanner;
- (void)_invalidateSystemStateMonitorDirect:(id)direct;
- (void)_playChime:(int)chime;
- (void)_processBannerRequestForMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier completion:(id)completion;
- (void)_processFirstPartyBannerRequestWithCompletion:(id)completion;
- (void)_registerForAVSystemControllerDeathNotifications;
- (void)_registerForAVSystemControllerStateNotifications;
- (void)_reportActiveHRMDeviceUpdated:(id)updated withSREnabled:(BOOL)enabled;
- (void)_reportDeviceBatteryInfoFound:(id)found;
- (void)_reportDeviceBatteryInfoLost:(id)lost;
- (void)_reportDeviceFound:(id)found;
- (void)_reportDeviceLost:(id)lost;
- (void)_reportSensorInfo:(id)info;
- (void)_reportSiriHijackElgibilityUpdated:(BOOL)updated;
- (void)_reverseMuteActionForToken:(id *)token shouldMute:(BOOL)mute;
- (void)_scheduleUpdate;
- (void)_submitMetricsForMuteAction:(int)action auditTokenBundleID:(id)d appName:(id)name appBundleID:(id)iD;
- (void)_toggleInputMuteState;
- (void)_update;
- (void)_updateAudioSessionControl:(id)control;
- (void)_updateBannerChimeSuppressionState;
- (void)_updateDetectedHeadGesture:(id)gesture;
- (void)_updateMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier;
- (void)_xpcConnectionInterrupted:(id)interrupted;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)activateAudioRoutingControl:(id)control completion:(id)completion;
- (void)activateAudioSessionControl:(id)control completion:(id)completion;
- (void)activateSystemStateMonitorDirect:(id)direct completion:(id)completion;
- (void)deviceBatteryInfoLost:(id)lost;
- (void)deviceBatteryInfoUpdated:(id)updated;
- (void)deviceManagerActivateDirect:(id)direct completion:(id)completion;
- (void)deviceManagerInvalidateDirect:(id)direct;
- (void)deviceManagerSendDeviceConfigDirect:(id)direct identifier:(id)identifier completion:(id)completion;
- (void)deviceManagerUpdateDirect:(id)direct;
- (void)invalidate;
- (void)invalidateAudioRoutingControl:(id)control completion:(id)completion;
- (void)invalidateAudioSessionControl:(id)control completion:(id)completion;
- (void)invalidateSystemStateMonitorDirect:(id)direct;
- (void)reportActiveHRMDeviceUpdated:(id)updated withSREnabled:(BOOL)enabled;
- (void)reportDeviceFound:(id)found;
- (void)reportDeviceLost:(id)lost;
- (void)reportHeadGestureDetected:(id)detected;
- (void)reportSensorInfo:(id)info;
- (void)reportSiriHijackElgibilityUpdated:(BOOL)updated;
- (void)updateAudioSessionControl:(id)control;
@end

@implementation AAServicesDaemon

- (BOOL)_shouldRunHeadGesture
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_activatedDeviceManagerSet;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 headGestureUpdateFlags])
        {
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D75F0(v6);
          }

          LOBYTE(v3) = 1;
          goto LABEL_14;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (void)_ensureHeadGestureDetectionStopped
{
  v2 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  [v2 stopHeadGestureManager];
}

- (void)_update
{
  self->_updatePending = 0;
  if ([(AAServicesDaemon *)self _shouldRunHeadGesture])
  {

    [(AAServicesDaemon *)self _ensureHeadGestureDetectionStarted];
  }

  else
  {

    [(AAServicesDaemon *)self _ensureHeadGestureDetectionStopped];
  }
}

+ (id)sharedAAServicesDaemon
{
  if (qword_1002FA088 != -1)
  {
    sub_1001D6DF0();
  }

  v3 = qword_1002FA080;

  return v3;
}

- (AAServicesDaemon)init
{
  v9.receiver = self;
  v9.super_class = AAServicesDaemon;
  v2 = [(AAServicesDaemon *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAServicesDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    *&v2->_muteStateChangedToken = -1;
    tuSharedInst = v2->_tuSharedInst;
    v2->_tuSharedInst = 0;

    objc_storeStrong(&qword_100300AE0, v2);
    v7 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v125 = 0;
  NSAppendPrintF_safe(&v125, "-- AAServicesDaemon --\n");
  v4 = v125;
  v124 = v4;
  NSAppendPrintF(&v124, "Active AudioSesionControl clients count: %d\n", [(NSMutableSet *)self->_activatedAudioSessionControlSet count]);
  v5 = v124;

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v6 = self->_activatedAudioSessionControlSet;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v120 objects:v130 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v121;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v121 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v120 + 1) + 8 * v10);
        v119 = v11;
        NSAppendPrintF(&v119, "    %@\n", v12);
        v5 = v119;

        v10 = v10 + 1;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v120 objects:v130 count:16];
    }

    while (v8);
  }

  v118 = v5;
  NSAppendPrintF(&v118, "\n");
  v13 = v118;

  currentAudioSessionControl = self->_currentAudioSessionControl;
  if (currentAudioSessionControl)
  {
    v117 = v13;
    v15 = currentAudioSessionControl;
    NSAppendPrintF(&v117, "Current AudioSessionControl: %@\n", v15);
    v16 = v117;

    v13 = v16;
  }

  v116 = v13;
  NSAppendPrintF(&v116, "Active AADeviceManager clients count: %d\n", [(NSMutableSet *)self->_activatedDeviceManagerSet count]);
  v17 = v116;

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v18 = self->_activatedDeviceManagerSet;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v112 objects:v129 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v113;
    do
    {
      v22 = 0;
      v23 = v17;
      do
      {
        if (*v113 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v112 + 1) + 8 * v22);
        v111 = v23;
        NSAppendPrintF(&v111, "    %@\n", v24);
        v17 = v111;

        v22 = v22 + 1;
        v23 = v17;
      }

      while (v20 != v22);
      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v112 objects:v129 count:16];
    }

    while (v20);
  }

  v110 = v17;
  NSAppendPrintF(&v110, "\n");
  v25 = v110;

  v109 = v25;
  NSAppendPrintF(&v109, "Active AASensorService clients count: %d\n", [(NSMutableSet *)self->_activatedSensorServiceSet count]);
  v26 = v109;

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v27 = self->_activatedSensorServiceSet;
  v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v105 objects:v128 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v106;
    do
    {
      v31 = 0;
      v32 = v26;
      do
      {
        if (*v106 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v105 + 1) + 8 * v31);
        v104 = v32;
        NSAppendPrintF(&v104, "    %@\n", v33);
        v26 = v104;

        v31 = v31 + 1;
        v32 = v26;
      }

      while (v29 != v31);
      v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v105 objects:v128 count:16];
    }

    while (v29);
  }

  v103 = v26;
  NSAppendPrintF(&v103, "\n");
  v34 = v103;

  uiNotificationSessionMuteControl = self->_uiNotificationSessionMuteControl;
  if (uiNotificationSessionMuteControl)
  {
    v102 = v34;
    v36 = uiNotificationSessionMuteControl;
    NSAppendPrintF(&v102, "UINotification Mute Control: %@\n", v36);
    v37 = v102;

    v34 = v37;
  }

  v101 = v34;
  if (self->_isCallActive)
  {
    v38 = "yes";
  }

  else
  {
    v38 = "no";
  }

  if (self->_isCallHighPriority)
  {
    v39 = "yes";
  }

  else
  {
    v39 = "no";
  }

  NSAppendPrintF_safe(&v101, "_isCallActive %s, _isCallHighPriority %s\n", v38, v39);
  v40 = v101;

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v41 = CFPrefs_CopyKeys();
  v42 = [v41 countByEnumeratingWithState:&v97 objects:v127 count:16];
  if (!v42)
  {
    goto LABEL_43;
  }

  v43 = v42;
  selfCopy = self;
  v44 = 0;
  v45 = *v98;
  do
  {
    for (i = 0; i != v43; i = i + 1)
    {
      if (*v98 != v45)
      {
        objc_enumerationMutation(v41);
      }

      v47 = *(*(&v97 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = CFPrefs_CopyTypedValue();
        v96 = v40;
        NSAppendPrintF(&v96, "Pref: '%@' = '%##@'\n", v47, v48);
        v49 = v96;

        ++v44;
        v40 = v49;
      }
    }

    v43 = [v41 countByEnumeratingWithState:&v97 objects:v127 count:16];
  }

  while (v43);

  if (v44 >= 1)
  {
    v95 = v40;
    NSAppendPrintF(&v95, "\n");
    v41 = v40;
    v40 = v95;
    self = selfCopy;
LABEL_43:

    goto LABEL_45;
  }

  self = selfCopy;
LABEL_45:
  v50 = [(NSMutableSet *)self->_xpcConnections count];
  if (v50)
  {
    v94 = v40;
    NSAppendPrintF(&v94, "XPC Cnx: %d\n", v50);
    v51 = v94;

    v40 = v51;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v52 = self->_xpcConnections;
  v53 = [(NSMutableSet *)v52 countByEnumeratingWithState:&v90 objects:v126 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v91;
    do
    {
      for (j = 0; j != v54; j = j + 1)
      {
        if (*v91 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v90 + 1) + 8 * j);
        v89 = v40;
        xpcCnx = [v57 xpcCnx];
        processIdentifier = [xpcCnx processIdentifier];
        entitled = [v57 entitled];
        v61 = "no";
        if (entitled)
        {
          v61 = "yes";
        }

        NSAppendPrintF(&v89, "    %#{pid}, entitled %s", processIdentifier, v61);
        v62 = v89;

        v88 = v62;
        NSAppendPrintF(&v88, "\n");
        v40 = v88;
      }

      v54 = [(NSMutableSet *)v52 countByEnumeratingWithState:&v90 objects:v126 count:16];
    }

    while (v54);
  }

  v87 = v40;
  NSAppendPrintF(&v87, "\n");
  v63 = v87;

  v86 = v63;
  v64 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  v65 = CUDescriptionWithLevel();
  NSAppendPrintF(&v86, "%@", v65);
  v66 = v86;

  v85 = v66;
  v67 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  v68 = CUDescriptionWithLevel();
  NSAppendPrintF(&v85, "%@", v68);
  v69 = v85;

  v84 = v69;
  v70 = +[AANearbyDeviceManagerDaemon sharedAANearbyDeviceManagerDaemon];
  v71 = CUDescriptionWithLevel();
  NSAppendPrintF(&v84, "%@", v71);
  v72 = v84;

  v83 = v72;
  v73 = +[AASensorServiceDaemon sharedAASensorServiceDaemon];
  v74 = CUDescriptionWithLevel();
  NSAppendPrintF(&v83, "%@", v74);
  v75 = v83;

  v82 = v75;
  v76 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
  v77 = CUDescriptionWithLevel();
  NSAppendPrintF(&v82, "%@", v77);
  v78 = v82;
  v79 = v82;

  return v78;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021828;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[AAConversationDetectSessionManager sharedCDSessionManager];
    [v3 activate];
  }

  if (_os_feature_enabled_impl())
  {
    v4 = +[AAContextManager sharedContextManager];
    [v4 activate];
  }

  v5 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  [v5 activate];
  v6 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  [v6 setPairedDeviceDaemon:v5];
  [v6 setDispatchQueue:self->_dispatchQueue];
  [v6 activate];
  v7 = +[AANearbyDeviceManagerDaemon sharedAANearbyDeviceManagerDaemon];
  [v7 setPairedDeviceDaemon:v5];
  [v7 activate];
  if (_os_feature_enabled_impl())
  {
    v8 = +[AAManagedSettingsDaemon sharedAAManagedSettingsDaemon];
    [v8 activate];
  }

  if (_os_feature_enabled_impl())
  {
    v9 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [v9 subscribeToBatteryInfoUpdates:self];

    v10 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [v10 setServicesDaemon:self];

    v11 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [v11 setPairedDeviceManager:v5];

    v12 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [v12 activate];
  }

  v13 = +[AASensorServiceDaemon sharedAASensorServiceDaemon];
  [v13 activate];
  v14 = +[AAXPCEventPublisherDaemon sharedAAXPCEventPublisherDaemon];
  [v14 activate];

  if (!self->_xpcListener)
  {
    v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.AudioAccessoryServices"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v15;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (self->_muteStateChangedToken == -1)
  {
    v17 = _os_feature_enabled_impl();
    if (v17)
    {
      if (dword_1002F6480 <= 30)
      {
        if (dword_1002F6480 != -1 || (v17 = _LogCategory_Initialize(), v17))
        {
          sub_1001D6E20(v17, v18, v19);
        }
      }

      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100021F54;
      handler[3] = &unk_1002B6DF0;
      handler[4] = self;
      notify_register_dispatch("com.apple.audioaccessoryd.MuteState", &self->_muteStateChangedToken, dispatchQueue, handler);
    }
  }

  [(AAServicesDaemon *)self _registerForAVSystemControllerDeathNotifications];
  [(AAServicesDaemon *)self _registerForAVSystemControllerStateNotifications];
  [(AAServicesDaemon *)self _updateBannerChimeSuppressionState];
  v21 = +[TUCallCenter sharedInstance];
  tuSharedInst = self->_tuSharedInst;
  self->_tuSharedInst = v21;

  if (!self->_tuBargeCallStatusChangedNotificationRegistered)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6E3C();
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:self selector:"_handlePTTCallStatusChangedNotification:" name:TUBargeCallStatusChangedNotification object:0];

    self->_tuBargeCallStatusChangedNotificationRegistered = 1;
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    v24 = self->_dispatchQueue;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100021FD4;
    v50[3] = &unk_1002B6DF0;
    v50[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, v24, v50);
  }

  if (!self->_stateHandle)
  {
    v45 = _NSConcreteStackBlock;
    v46 = 3221225472;
    v47 = sub_10002203C;
    v48 = &unk_1002B7390;
    selfCopy = self;
    self->_stateHandle = os_state_add_handler();
  }

  v25 = self->_connectedDeviceDiscovery;
  if (!v25)
  {
    v26 = objc_alloc_init(CBDiscovery);
    [v26 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_connectedDeviceDiscovery, v26);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100022058;
    v42[3] = &unk_1002B6DA8;
    v27 = v26;
    v43 = v27;
    selfCopy2 = self;
    [v27 setDeviceFoundHandler:v42];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100022074;
    v39[3] = &unk_1002B6DA8;
    v28 = v27;
    v40 = v28;
    selfCopy3 = self;
    [v28 setDeviceLostHandler:v39];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100022090;
    v36[3] = &unk_1002B6D18;
    v29 = v28;
    v37 = v29;
    selfCopy4 = self;
    [v29 setInterruptionHandler:v36];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100022124;
    v34[3] = &unk_1002B6880;
    v30 = v29;
    v35 = v30;
    [v30 setInvalidationHandler:v34];
    [v30 setDiscoveryFlags:{objc_msgSend(v30, "discoveryFlags") | 0x80000200000}];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100022180;
    v31[3] = &unk_1002B68A8;
    v25 = v30;
    v32 = v25;
    selfCopy5 = self;
    [(CBDiscovery *)v25 activateWithCompletion:v31];
  }

  notify_post("com.apple.AudioAccessory.daemonStarted");
  [(AAServicesDaemon *)self _prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022334;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AAServicesXPCDaemonInterface];
  v7 = [NSSet alloc];
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:"systemStateMonitorFetchPairedHRMDevices:" argumentIndex:0 ofReply:1];
  v10 = objc_alloc_init(AAServicesXPCConnection);
  [(AAServicesXPCConnection *)v10 setDaemon:self];
  [(AAServicesXPCConnection *)v10 setDispatchQueue:self->_dispatchQueue];
  [(AAServicesXPCConnection *)v10 setXpcCnx:connectionCopy];
  [(AAServicesXPCConnection *)v10 setConnectionID:sub_100003530()];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v12 = objc_alloc_init(NSMutableSet);
    v13 = self->_xpcConnections;
    self->_xpcConnections = v12;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v10];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AAServicesXPCClientInterface];
  [connectionCopy _setQueue:self->_dispatchQueue];
  [connectionCopy setExportedInterface:v6];
  [connectionCopy setExportedObject:v10];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002281C;
  v17[3] = &unk_1002B6D18;
  v17[4] = self;
  v17[5] = v10;
  [connectionCopy setInterruptionHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100022828;
  v16[3] = &unk_1002B6D18;
  v16[4] = self;
  v16[5] = v10;
  [connectionCopy setInvalidationHandler:v16];
  [connectionCopy setRemoteObjectInterface:v14];
  [connectionCopy resume];
  if (dword_1002F6480 <= 20 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6F44(connectionCopy);
  }

  return 1;
}

- (void)_scheduleUpdate
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000228C0;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_1002F6480 <= 20)
  {
    if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_1001D6F88(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
  [(AAServicesDaemon *)self _update];
}

- (void)_xpcConnectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v5 = interruptedCopy;
  if (dword_1002F6480 <= 20)
  {
    if (dword_1002F6480 != -1 || (v4 = _LogCategory_Initialize(), interruptedCopy = v5, v4))
    {
      sub_1001D6FEC(interruptedCopy);
      interruptedCopy = v5;
    }
  }

  [interruptedCopy xpcConnectionInterrupted];
}

- (void)activateAudioRoutingControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022AB4;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateAudioRoutingControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_activatedAudioRoutingControlSet;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = controlCopy;
        v15 = v13;
        v16 = v15;
        if (v15 == v14)
        {

LABEL_20:
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D7068(v14);
          }

          goto LABEL_23;
        }

        if ((controlCopy != 0) != (v15 == 0))
        {
          v17 = [v14 isEqual:v15];

          if (v17)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1002F6480 < 31 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D70A8(controlCopy);
  }

  activatedAudioRoutingControlSet = self->_activatedAudioRoutingControlSet;
  if (!activatedAudioRoutingControlSet)
  {
    v19 = objc_alloc_init(NSMutableSet);
    v20 = self->_activatedAudioRoutingControlSet;
    self->_activatedAudioRoutingControlSet = v19;

    activatedAudioRoutingControlSet = self->_activatedAudioRoutingControlSet;
  }

  [(NSMutableSet *)activatedAudioRoutingControlSet addObject:controlCopy];
  objc_storeStrong(&self->_currentAudioRoutingControl, control);
LABEL_23:
  [(AAServicesDaemon *)self _update];
  completionCopy[2](completionCopy, 0);
}

- (void)invalidateAudioRoutingControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022DD0;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateAudioRoutingControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_activatedAudioRoutingControlSet;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = *v24;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      v14 = controlCopy;
      v15 = v13;
      v16 = v15;
      if (v15 == v14)
      {

LABEL_15:
        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D70E8(v14);
        }

        [(NSMutableSet *)self->_activatedAudioRoutingControlSet removeObject:v14, v23];
        currentAudioRoutingControl = self->_currentAudioRoutingControl;
        v19 = v16;
        v20 = currentAudioRoutingControl;
        v21 = v20;
        if (v19 == v20)
        {
        }

        else
        {
          if ((v19 != 0) == (v20 == 0))
          {

            goto LABEL_25;
          }

          v22 = [(AAAudioRoutingControl *)v19 isEqual:v20];

          if (!v22)
          {
            goto LABEL_26;
          }
        }

        v19 = self->_currentAudioRoutingControl;
        self->_currentAudioRoutingControl = 0;
LABEL_25:

        goto LABEL_26;
      }

      if ((controlCopy != 0) != (v15 == 0))
      {
        v17 = [v14 isEqual:{v15, v23}];

        if (v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_26:

  [(AAServicesDaemon *)self _update];
  completionCopy[2](completionCopy, 0);
}

- (void)activateAudioSessionControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000230F0;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateAudioSessionControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_activatedAudioSessionControlSet;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = controlCopy;
        v15 = v13;
        v16 = v15;
        if (v15 == v14)
        {

LABEL_20:
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D7128(v14);
          }

          goto LABEL_23;
        }

        if ((controlCopy != 0) != (v15 == 0))
        {
          v17 = [v14 isEqual:v15];

          if (v17)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1002F6480 < 31 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7168(controlCopy);
  }

  activatedAudioSessionControlSet = self->_activatedAudioSessionControlSet;
  if (!activatedAudioSessionControlSet)
  {
    v19 = objc_alloc_init(NSMutableSet);
    v20 = self->_activatedAudioSessionControlSet;
    self->_activatedAudioSessionControlSet = v19;

    activatedAudioSessionControlSet = self->_activatedAudioSessionControlSet;
  }

  [(NSMutableSet *)activatedAudioSessionControlSet addObject:controlCopy];
  objc_storeStrong(&self->_currentAudioSessionControl, control);
LABEL_23:
  [(AAServicesDaemon *)self _update];
  completionCopy[2](completionCopy, 0);
}

- (void)updateAudioSessionControl:(id)control
{
  controlCopy = control;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000233E0;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = controlCopy;
  v6 = controlCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_updateAudioSessionControl:(id)control
{
  controlCopy = control;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_activatedAudioSessionControlSet;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = controlCopy;
        v12 = v10;
        v13 = v12;
        if (v12 == v11)
        {

LABEL_15:
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D71A8(v11);
          }

          [(AAServicesDaemon *)self _update];
          goto LABEL_19;
        }

        if ((controlCopy != 0) != (v12 == 0))
        {
          v14 = [v11 isEqual:{v12, v15}];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

- (void)invalidateAudioSessionControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023660;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateAudioSessionControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_activatedAudioSessionControlSet;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = *v24;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      v14 = controlCopy;
      v15 = v13;
      v16 = v15;
      if (v15 == v14)
      {

LABEL_15:
        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D71E8(v14);
        }

        [(NSMutableSet *)self->_activatedAudioSessionControlSet removeObject:v14, v23];
        currentAudioSessionControl = self->_currentAudioSessionControl;
        v19 = v16;
        v20 = currentAudioSessionControl;
        v21 = v20;
        if (v19 == v20)
        {
        }

        else
        {
          if ((v19 != 0) == (v20 == 0))
          {

            goto LABEL_25;
          }

          v22 = [(AAAudioSessionControl *)v19 isEqual:v20];

          if (!v22)
          {
            goto LABEL_26;
          }
        }

        v19 = self->_currentAudioSessionControl;
        self->_currentAudioSessionControl = 0;
LABEL_25:

        goto LABEL_26;
      }

      if ((controlCopy != 0) != (v15 == 0))
      {
        v17 = [v14 isEqual:{v15, v23}];

        if (v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_26:

  [(AAServicesDaemon *)self _update];
  completionCopy[2](completionCopy, 0);
}

- (void)deviceManagerActivateDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023980;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = directCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = directCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceManagerActivateDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
  activatedDeviceManagerSet = self->_activatedDeviceManagerSet;
  if (!activatedDeviceManagerSet)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_activatedDeviceManagerSet;
    self->_activatedDeviceManagerSet = v9;

    activatedDeviceManagerSet = self->_activatedDeviceManagerSet;
  }

  v31 = completionCopy;
  if ([(NSMutableSet *)activatedDeviceManagerSet containsObject:directCopy])
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7268(directCopy);
    }
  }

  else
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7228(directCopy);
    }

    [(NSMutableSet *)self->_activatedDeviceManagerSet addObject:directCopy];
  }

  [(AAServicesDaemon *)self _update];
  v11 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  availableDevices = [v11 availableDevices];

  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D72A8(availableDevices);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allValues = [availableDevices allValues];
  v14 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D72EC(v18);
        }

        dispatchQueue = [directCopy dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100023DE4;
        block[3] = &unk_1002B6D18;
        v39 = directCopy;
        v40 = v18;
        dispatch_async(dispatchQueue, block);

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v20 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
      v15 = v20;
    }

    while (v20);
  }

  v21 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
  devices = [v21 devices];

  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D732C(devices);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = devices;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v34 + 1) + 8 * i);
        dispatchQueue2 = [directCopy dispatchQueue];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100023DF0;
        v32[3] = &unk_1002B6D18;
        v32[4] = v28;
        v33 = directCopy;
        dispatch_async(dispatchQueue2, v32);
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v25);
  }

  v31[2](v31, 0);
}

- (void)deviceManagerUpdateDirect:(id)direct
{
  directCopy = direct;
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D73B0(directCopy);
  }

  [(AAServicesDaemon *)self _update];
}

- (void)deviceManagerInvalidateDirect:(id)direct
{
  directCopy = direct;
  if (([(NSMutableSet *)self->_activatedDeviceManagerSet containsObject:?]& 1) != 0)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7430(directCopy);
    }

    [(NSMutableSet *)self->_activatedDeviceManagerSet removeObject:directCopy];
    [(AAServicesDaemon *)self _update];
  }

  else if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D73F0(directCopy);
  }
}

- (void)deviceManagerSendDeviceConfigDirect:(id)direct identifier:(id)identifier completion:(id)completion
{
  directCopy = direct;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100024094;
  v15[3] = &unk_1002B6B88;
  v15[4] = self;
  v16 = directCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = directCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_deviceManagerSendDeviceConfigDirect:(id)direct identifier:(id)identifier completion:(id)completion
{
  directCopy = direct;
  identifierCopy = identifier;
  completionCopy = completion;
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6480, "[AAServicesDaemon _deviceManagerSendDeviceConfigDirect:identifier:completion:]", 30, "AADeviceManager: send direct config: %@, to device with identifier: %@", directCopy, identifierCopy);
  }

  v9 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  [v9 sendDeviceConfig:directCopy identifier:identifierCopy completion:completionCopy];
}

- (void)activateSystemStateMonitorDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024250;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = directCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = directCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateSystemStateMonitorDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_activatedSystemStateMonitorSet;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = directCopy;
        v15 = v13;
        v16 = v15;
        if (v15 == v14)
        {

LABEL_20:
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D7470(v14);
          }

          goto LABEL_23;
        }

        if ((directCopy != 0) != (v15 == 0))
        {
          v17 = [v14 isEqual:{v15, v21}];

          if (v17)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1002F6480 < 31 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D74B0(directCopy);
  }

  activatedSystemStateMonitorSet = self->_activatedSystemStateMonitorSet;
  if (!activatedSystemStateMonitorSet)
  {
    v19 = objc_alloc_init(NSMutableSet);
    v20 = self->_activatedSystemStateMonitorSet;
    self->_activatedSystemStateMonitorSet = v19;

    activatedSystemStateMonitorSet = self->_activatedSystemStateMonitorSet;
  }

  [(NSMutableSet *)activatedSystemStateMonitorSet addObject:directCopy, v21];
LABEL_23:
  [(AAServicesDaemon *)self _update];
  completionCopy[2](completionCopy, 0);
}

- (void)invalidateSystemStateMonitorDirect:(id)direct
{
  directCopy = direct;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024530;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = directCopy;
  v6 = directCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_invalidateSystemStateMonitorDirect:(id)direct
{
  directCopy = direct;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_activatedSystemStateMonitorSet;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = directCopy;
        v12 = v10;
        v13 = v12;
        if (v12 == v11)
        {

LABEL_15:
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D74F0(v11);
          }

          [(NSMutableSet *)self->_activatedSystemStateMonitorSet removeObject:v11, v15];
          goto LABEL_19;
        }

        if ((directCopy != 0) != (v12 == 0))
        {
          v14 = [v11 isEqual:{v12, v15}];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  [(AAServicesDaemon *)self _update];
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  p_currentAudioOwnerDevice = &self->_currentAudioOwnerDevice;
  identifier2 = [(CBDevice *)self->_currentAudioOwnerDevice identifier];
  v8 = identifier;
  v9 = identifier2;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v8 != 0) == (v9 == 0))
    {

      goto LABEL_14;
    }

    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
LABEL_14:
      if (([foundCopy deviceFlags] & 0x40) != 0 && objc_msgSend(foundCopy, "audioStreamState") == 3)
      {
        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D7530(foundCopy);
        }

        objc_storeStrong(&self->_currentAudioOwnerDevice, found);
      }

      [(AAServicesDaemon *)self _update];
      goto LABEL_21;
    }
  }

  if (([foundCopy deviceFlags] & 0x40) != 0 && objc_msgSend(foundCopy, "audioStreamState") == 3)
  {
    objc_storeStrong(&self->_currentAudioOwnerDevice, found);
  }

  else
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7570(foundCopy);
    }

    v12 = *p_currentAudioOwnerDevice;
    *p_currentAudioOwnerDevice = 0;
  }

LABEL_21:
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  identifier2 = [(CBDevice *)self->_currentAudioOwnerDevice identifier];
  currentAudioOwnerDevice = identifier;
  v7 = identifier2;
  v8 = v7;
  if (currentAudioOwnerDevice == v7)
  {

    goto LABEL_6;
  }

  if ((currentAudioOwnerDevice != 0) == (v7 == 0))
  {

LABEL_11:
    goto LABEL_12;
  }

  v9 = [(CBDevice *)currentAudioOwnerDevice isEqual:v7];

  if (v9)
  {
LABEL_6:
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D75B0(lostCopy);
    }

    currentAudioOwnerDevice = self->_currentAudioOwnerDevice;
    self->_currentAudioOwnerDevice = 0;
    goto LABEL_11;
  }

LABEL_12:
  [(AAServicesDaemon *)self _update];
}

- (void)_ensureHeadGestureDetectionStarted
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_activatedDeviceManagerSet;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 headGestureUpdateFlags])
        {
          v8 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
          [v8 startHeadGestureManagerWithFlags:{objc_msgSend(v7, "headGestureUpdateFlags")}];
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_updateDetectedHeadGesture:(id)gesture
{
  gestureCopy = gesture;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        deviceManager = [v10 deviceManager];
        headGestureUpdateFlags = [deviceManager headGestureUpdateFlags];

        if (headGestureUpdateFlags)
        {
          [v10 deviceManagerHeadGestureDetected:gestureCopy];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_activatedDeviceManagerSet;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        if ([v18 direct] && objc_msgSend(v18, "headGestureUpdateFlags"))
        {
          dispatchQueue = [v18 dispatchQueue];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100024D88;
          v20[3] = &unk_1002B6D18;
          v20[4] = v18;
          v21 = gestureCopy;
          dispatch_async(dispatchQueue, v20);
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }
}

- (void)reportHeadGestureDetected:(id)detected
{
  dispatchQueue = self->_dispatchQueue;
  detectedCopy = detected;
  dispatch_assert_queue_V2(dispatchQueue);
  [(AAServicesDaemon *)self _updateDetectedHeadGesture:detectedCopy];
}

- (void)deviceBatteryInfoUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024E88;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportDeviceBatteryInfoFound:(id)found
{
  foundCopy = found;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        deviceManager = [v10 deviceManager];
        if (deviceManager)
        {
          [v10 deviceManagerReportDeviceBatteryInfoFound:foundCopy];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_activatedDeviceManagerSet;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        if ([v17 direct])
        {
          v18 = [foundCopy copy];
          dispatchQueue = [v17 dispatchQueue];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000250E8;
          v21[3] = &unk_1002B6D18;
          v21[4] = v17;
          v22 = v18;
          v20 = v18;
          dispatch_async(dispatchQueue, v21);
        }
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)deviceBatteryInfoLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002518C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportDeviceBatteryInfoLost:(id)lost
{
  lostCopy = lost;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v25 + 1) + 8 * i) deviceManagerReportDeviceBatteryInfoLost:lostCopy];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_activatedDeviceManagerSet;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * j);
        if ([v15 direct])
        {
          v16 = [lostCopy copy];
          dispatchQueue = [v15 dispatchQueue];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1000253D0;
          v19[3] = &unk_1002B6D18;
          v19[4] = v15;
          v20 = v16;
          v18 = v16;
          dispatch_async(dispatchQueue, v19);
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }
}

- (void)reportDeviceFound:(id)found
{
  v4 = [found copy];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025478;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportDeviceFound:(id)found
{
  foundCopy = found;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        deviceManager = [v10 deviceManager];
        if (deviceManager)
        {
          [v10 deviceManagerReportDeviceFound:foundCopy];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_activatedDeviceManagerSet;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        if ([v17 direct])
        {
          v18 = [foundCopy copy];
          dispatchQueue = [v17 dispatchQueue];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000256D8;
          v21[3] = &unk_1002B6D18;
          v21[4] = v17;
          v22 = v18;
          v20 = v18;
          dispatch_async(dispatchQueue, v21);
        }
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)reportDeviceLost:(id)lost
{
  v4 = [lost copy];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025780;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportDeviceLost:(id)lost
{
  lostCopy = lost;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v25 + 1) + 8 * i) deviceManagerReportDeviceLost:lostCopy];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_activatedDeviceManagerSet;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * j);
        if ([v15 direct])
        {
          v16 = [lostCopy copy];
          dispatchQueue = [v15 dispatchQueue];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1000259C4;
          v19[3] = &unk_1002B6D18;
          v19[4] = v15;
          v20 = v16;
          v18 = v16;
          dispatch_async(dispatchQueue, v19);
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }
}

- (void)_handleCallIsActiveDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025A68;
  v7[3] = &unk_1002B6D18;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handlePTTCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  isPTT = [object isPTT];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  status = [object status];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025CFC;
  block[3] = &unk_1002B73B8;
  block[5] = v10;
  block[6] = v8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

- (void)_updateBannerChimeSuppressionState
{
  selfCopy = self;
  if (self->_isCallActive)
  {
    isPTTCallActive = self->_isPTTCallActive;
    self->_shouldSuppressMuteBanner = isPTTCallActive;
    p_shouldSuppressMuteBanner = &self->_shouldSuppressMuteBanner;
    isCallHighPriority = self->_isCallHighPriority;
  }

  else
  {
    isPTTCallActive = 1;
    self->_shouldSuppressMuteBanner = 1;
    p_shouldSuppressMuteBanner = &self->_shouldSuppressMuteBanner;
    isCallHighPriority = 1;
  }

  self->_shouldSuppressMuteChime = isCallHighPriority;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 == -1)
    {
      self = _LogCategory_Initialize();
      isPTTCallActive = *p_shouldSuppressMuteBanner;
      if (!self)
      {
        goto LABEL_14;
      }

      isCallHighPriority = selfCopy->_shouldSuppressMuteChime;
    }

    if (isPTTCallActive)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (isCallHighPriority)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    self = LogPrintF(&dword_1002F6480, "[AAServicesDaemon _updateBannerChimeSuppressionState]", 30, "Mute Control: shouldSuppressBanner: %s, shouldSuppressChime: %s", v7, v8);
    isPTTCallActive = *p_shouldSuppressMuteBanner;
  }

LABEL_14:
  if ((isPTTCallActive & 1) != 0 && selfCopy->_muteBanner)
  {
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D7750(self, a2, v2);
      }
    }

    [(AAServicesDaemon *)selfCopy _invalidateMuteBanner];
  }
}

- (void)_createBannerSessionMuteActionForIOS:(int)s auditToken:(id *)token appName:(id)name appBundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (self->_muteBanner)
  {
    [(AAServicesDaemon *)self _invalidateMuteBanner];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003908;
  v26 = sub_100003830;
  v27 = objc_alloc_init(BTBannerUISession);
  objc_storeStrong(&self->_muteBanner, v23[5]);
  [v23[5] setBannerAppID:dCopy];
  [v23[5] setBannerType:2];
  [v23[5] setCenterContentText:nameCopy];
  if (s == 1)
  {
    productName2 = @"mute";
    goto LABEL_12;
  }

  if (s == 2)
  {
    productName2 = @"unmute";
LABEL_12:
    [v23[5] setCenterContentItemsText:productName2];
    [v23[5] setDispatchQueue:self->_dispatchQueue];
    [v23[5] setTimeoutSeconds:4.0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v16 = *&token->var0[4];
    v19 = *token->var0;
    v17[2] = sub_100026270;
    v17[3] = &unk_1002B73E0;
    v17[4] = self;
    v17[5] = &v22;
    sCopy = s;
    v20 = v16;
    v21 = s == 2;
    [v23[5] setActionHandler:v17];
    [v23[5] activate];

    goto LABEL_19;
  }

  currentAudioOwnerDevice = self->_currentAudioOwnerDevice;
  if (currentAudioOwnerDevice)
  {
    productName = [(CBDevice *)currentAudioOwnerDevice productName];
    if (productName)
    {
      v15 = [(CBDevice *)self->_currentAudioOwnerDevice productID]- 8194;
      if (v15 <= 0x2D && ((1 << v15) & 0x207C7BB7FF9BLL) != 0)
      {

        productName2 = [(CBDevice *)self->_currentAudioOwnerDevice productName];
        goto LABEL_12;
      }
    }
  }

  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6480, "[AAServicesDaemon _createBannerSessionMuteActionForIOS:auditToken:appName:appBundleID:]", 30, "Mute Control: Cannot show reject banner, invalid audio owner device: %@", self->_currentAudioOwnerDevice);
  }

  [(AAServicesDaemon *)self _invalidateMuteBanner];
LABEL_19:
  _Block_object_dispose(&v22, 8);
}

- (void)_createBannerSessionMuteActionForMacOS:(int)s auditToken:(id *)token appName:(id)name appBundleID:(id)d
{
  dCopy = d;
  v10 = _os_feature_enabled_impl();
  if (v10)
  {
    if (self->_uiNotificationSessionMuteControl)
    {
      [(AAServicesDaemon *)self _invalidateMuteBanner];
    }

    v13 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.MuteControlUserNotifications.bundle"];
    v14 = objc_alloc_init(CUUserNotificationSession);
    uiNotificationSessionMuteControl = self->_uiNotificationSessionMuteControl;
    self->_uiNotificationSessionMuteControl = v14;

    [(CUUserNotificationSession *)v14 setBundleID:@"com.apple.MuteControlUserNotifications"];
    [(CUUserNotificationSession *)v14 setCategoryID:@"MuteControlUserNotifications"];
    [(CUUserNotificationSession *)v14 setDispatchQueue:self->_dispatchQueue];
    [(CUUserNotificationSession *)v14 setFlags:81];
    [(CUUserNotificationSession *)v14 setIconAppIdentifier:dCopy];
    [(CUUserNotificationSession *)v14 setLabel:@"MuteControl"];
    [(CUUserNotificationSession *)v14 setSubtitleKey:@"TITLE_FORMAT"];
    [(CUUserNotificationSession *)v14 setTimeoutSeconds:20.0];
    [(CUUserNotificationSession *)v14 setTitleKey:@"TITLE_FORMAT"];
    v16 = CULocalizedStringEx();
    v41 = v16;
    v17 = [NSArray arrayWithObjects:&v41 count:1];
    [(CUUserNotificationSession *)v14 setTitleArguments:v17];

    [(CUUserNotificationSession *)v14 removeAllActions];
    v18 = &off_100225000;
    switch(s)
    {
      case 3:
        p_currentAudioOwnerDevice = &self->_currentAudioOwnerDevice;
        currentAudioOwnerDevice = self->_currentAudioOwnerDevice;
        if (currentAudioOwnerDevice)
        {
          productName = [(CBDevice *)currentAudioOwnerDevice productName];
          if (productName)
          {
            v28 = productName;
            v29 = [(CBDevice *)*p_currentAudioOwnerDevice productID]- 8194;
            if (v29 <= 0x2D && ((1 << v29) & 0x207C7BB7FF9BLL) != 0)
            {

              v23 = CULocalizedStringEx();
              if (v23)
              {
                productName2 = [(CBDevice *)*p_currentAudioOwnerDevice productName];
                v31 = [NSString stringWithFormat:v23, productName2];

                v18 = &off_100225000;
              }

              else
              {
                v31 = &stru_1002C1358;
              }

              v38 = v31;
              v32 = [NSArray arrayWithObjects:&v38 count:1];
              [(CUUserNotificationSession *)v14 setSubtitleArguments:v32];

              goto LABEL_18;
            }
          }
        }

        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D78BC(&self->_currentAudioOwnerDevice);
        }

        break;
      case 2:
        if (objc_opt_respondsToSelector())
        {
          [(CUUserNotificationSession *)v14 setUserInfo:&off_1002CBC48];
        }

        v19 = CULocalizedStringEx();
        v39 = v19;
        v20 = 1;
        v21 = &v39;
        goto LABEL_17;
      case 1:
        if (objc_opt_respondsToSelector())
        {
          [(CUUserNotificationSession *)v14 setUserInfo:&off_1002CBC20];
        }

        v19 = CULocalizedStringEx();
        v20 = 0;
        v40 = v19;
        v21 = &v40;
LABEL_17:
        v22 = [NSArray arrayWithObjects:v21 count:1];
        [(CUUserNotificationSession *)v14 setSubtitleArguments:v22];

        v23 = CULocalizedStringEx();
        v34[0] = _NSConcreteStackBlock;
        v18 = &off_100225000;
        v34[1] = 3221225472;
        v34[2] = sub_1000269E0;
        v34[3] = &unk_1002B7408;
        v34[4] = v14;
        v34[5] = self;
        v24 = *&token->var0[4];
        v35 = *token->var0;
        v36 = v24;
        v37 = v20;
        [(CUUserNotificationSession *)v14 addActionWithIdentifier:@"ReverseMuteAction" title:v23 flags:0 handler:v34];
LABEL_18:

        v33[0] = _NSConcreteStackBlock;
        v33[1] = *(v18 + 428);
        v33[2] = sub_100026A84;
        v33[3] = &unk_1002B7430;
        v33[4] = v14;
        v33[5] = self;
        [(CUUserNotificationSession *)v14 setActionHandler:v33];
        [(CUUserNotificationSession *)v14 activate];
LABEL_36:

        goto LABEL_37;
      default:
        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D7900(s);
        }

        break;
    }

    [(AAServicesDaemon *)self _invalidateMuteBanner];
    goto LABEL_36;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1 || (v10 = _LogCategory_Initialize(), v10))
    {
      sub_1001D78A0(v10, v11, v12);
    }
  }

LABEL_37:
}

- (void)_invalidateMuteBanner
{
  muteBanner = self->_muteBanner;
  if (muteBanner)
  {
    [(BTBannerUISession *)muteBanner invalidate];
    v4 = self->_muteBanner;
    self->_muteBanner = 0;
  }
}

- (void)_toggleInputMuteState
{
  if (_os_feature_enabled_impl())
  {
    v7 = 0;
    [AVAudioApplication toggleInputMute:&v7];
    v3 = v7;
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7A1C(v3);
    }
  }

  else
  {
    v3 = +[AVSystemController sharedAVSystemController];
    toggleInputMute = [v3 toggleInputMute];
    if (dword_1002F6480 <= 30)
    {
      v5 = toggleInputMute;
      if (dword_1002F6480 != -1 || _LogCategory_Initialize())
      {
        sub_1001D79DC(v5);
      }
    }
  }

  muteActionTrigger = self->_muteActionTrigger;
  self->_muteActionTrigger = @"stemClick";
}

- (void)_playChime:(int)chime
{
  if (chime > 6)
  {
LABEL_17:
    if (dword_1002F6480 <= 90)
    {
      if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D7B4C(self, a2, *&chime);
      }
    }

    return;
  }

  if (((1 << chime) & 0x18) != 0)
  {
    goto LABEL_21;
  }

  if (((1 << chime) & 0x22) == 0)
  {
    if (((1 << chime) & 0x44) != 0)
    {
      if (self->_shouldSuppressMuteChime)
      {
        if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D7A5C(chime);
        }

        return;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!self->_shouldSuppressMuteChime)
  {
LABEL_21:
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7AAC(chime);
    }

    AudioServicesPlaySystemSoundWithOptions();
    return;
  }

  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7AFC(chime);
  }
}

- (void)_processFirstPartyBannerRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(TUCallCenter *)self->_tuSharedInst queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026ED8;
  v7[3] = &unk_1002B6948;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_processBannerRequestForMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  selfCopy = self;
  if (identifierCopy)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7BC0(identifierCopy);
    }

    v33 = 0;
    v12 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v33];
    v13 = v33;
    if (!v13)
    {
      v14 = identifierCopy;
      localizedName = [v12 localizedName];
      v29 = [v12 URL];

      v16 = 0;
      if (localizedName)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6480, "[AAServicesDaemon _processBannerRequestForMuteAction:auditToken:bundleIdentifier:completion:]", 90, "Mute Control: Failed to get bundle record from bundleID %@ with error: %@", identifierCopy, v13);
    }
  }

  else
  {
    v13 = 0;
  }

  v29 = 0;
  v14 = 0;
LABEL_15:
  v32 = v13;
  v17 = *&token->var0[4];
  v30 = *token->var0;
  v31 = v17;
  v18 = [LSBundleRecord bundleRecordForAuditToken:&v30 error:&v32];
  v19 = v32;

  if (v19)
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7C00(v19);
    }

    v20 = v29;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v14, v19);
    }

    v16 = 0;
    localizedName = 0;
    goto LABEL_59;
  }

  localizedName = [v18 localizedName];
  bundleIdentifier = [v18 bundleIdentifier];

  v14 = bundleIdentifier;
  v16 = v14;
  if (!localizedName)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (!v14)
  {
LABEL_29:
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6480, "[AAServicesDaemon _processBannerRequestForMuteAction:auditToken:bundleIdentifier:completion:]", 90, "Mute Control: Invalid data received from bundle record, app name: %@, appBundleID: %@", localizedName, v14);
    }

    NSErrorF(NSOSStatusErrorDomain, 4294960591, "invalid application parameters");
    goto LABEL_40;
  }

  if ((action - 4) <= 2)
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7C40(action);
    }

    NSErrorF(NSOSStatusErrorDomain, 4294960591, "invalid mute action input");
    v19 = LABEL_40:;
    v20 = v29;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v16, localizedName, v14, v19);
    }

    goto LABEL_59;
  }

  if (![(NSString *)selfCopy->_muteActionTrigger isEqualToString:@"stemClick"]&& ![(NSString *)selfCopy->_muteActionTrigger isEqualToString:@"bannerAction"])
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v23 = sub_10002645C(action);
      muteActionTrigger = selfCopy->_muteActionTrigger;
      if (!muteActionTrigger)
      {
        muteActionTrigger = @"nil";
      }

      LogPrintF(&dword_1002F6480, "[AAServicesDaemon _processBannerRequestForMuteAction:auditToken:bundleIdentifier:completion:]", 90, "Mute Control: Returning without showing banner for app name: %@, appBundleID: %@, mute action: %s, invalid mute action trigger: %@", localizedName, v14, v23, muteActionTrigger);
    }

    [(AAServicesDaemon *)selfCopy _invalidateMuteBanner];
    NSErrorF(NSOSStatusErrorDomain, 4294960591, "invalid mute action trigger");
    goto LABEL_40;
  }

  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    if (action > 3)
    {
      v22 = "?";
    }

    else
    {
      v22 = (&off_1002B7690)[action];
    }

    LogPrintF(&dword_1002F6480, "[AAServicesDaemon _processBannerRequestForMuteAction:auditToken:bundleIdentifier:completion:]", 30, "Mute Control: Show Banner for app name: %@, appBundleID: %@, mute action: %s", localizedName, v14, v22);
  }

  selfCopy->_currentMuteControlAction = action;
  objc_storeStrong(&selfCopy->_currentMuteControlAppName, localizedName);
  v25 = *token->var0;
  *&selfCopy->_currentMuteControlAuditToken.val[4] = *&token->var0[4];
  *selfCopy->_currentMuteControlAuditToken.val = v25;
  objc_storeStrong(&selfCopy->_currentMuteControlAuditTokenBundleIdentifier, v16);
  objc_storeStrong(&selfCopy->_currentMuteControlBundleIdentifier, identifier);
  if ([v14 caseInsensitiveCompare:@"com.apple.facetime"] && objc_msgSend(v14, "caseInsensitiveCompare:", @"com.apple.mobilephone"))
  {
    v26 = *&token->var0[4];
    v30 = *token->var0;
    v31 = v26;
    [(AAServicesDaemon *)selfCopy _createBannerSessionMuteActionForIOS:action auditToken:&v30 appName:localizedName appBundleID:v14];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v16, localizedName, v14, 0);
    }
  }

  else
  {
    [(AAServicesDaemon *)selfCopy _processFirstPartyBannerRequestWithCompletion:completionCopy];
  }

  v19 = 0;
  v20 = v29;
LABEL_59:
}

- (void)_reverseMuteActionForToken:(id *)token shouldMute:(BOOL)mute
{
  muteCopy = mute;
  v7 = [AVAudioApplication alloc];
  v8 = *&token->var0[4];
  v14[0] = *token->var0;
  v14[1] = v8;
  v9 = [v7 initProxyForProcess:v14];
  v10 = v9;
  if (v9)
  {
    v13 = 0;
    [v9 setInputMuted:muteCopy error:&v13];
    v11 = v13;
    if (v11)
    {
      if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D7C90(v11);
      }
    }

    else if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7CD0(muteCopy);
    }

    muteActionTrigger = self->_muteActionTrigger;
    self->_muteActionTrigger = @"bannerAction";
  }

  else if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7D28();
  }
}

- (void)_submitMetricsForMuteAction:(int)action auditTokenBundleID:(id)d appName:(id)name appBundleID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  if (action > 6)
  {
    v13 = "?";
  }

  else
  {
    v13 = (&off_1002B7748)[action];
  }

  v14 = [NSString stringWithUTF8String:v13];
  v15 = v14;
  v27[0] = @"action";
  v27[1] = @"attributionAppName";
  v16 = @"unknown";
  if (nameCopy)
  {
    v17 = nameCopy;
  }

  else
  {
    v17 = @"unknown";
  }

  v28[0] = v14;
  v28[1] = v17;
  if (iDCopy)
  {
    v18 = iDCopy;
  }

  else
  {
    v18 = @"unknown";
  }

  v27[2] = @"attributionBundleID";
  v27[3] = @"bundleID";
  if (dCopy)
  {
    v19 = dCopy;
  }

  else
  {
    v19 = @"unknown";
  }

  v28[2] = v18;
  v28[3] = v19;
  muteActionTrigger = self->_muteActionTrigger;
  if (!muteActionTrigger)
  {
    muteActionTrigger = @"appUITapAction";
  }

  v27[4] = @"trigger";
  v27[5] = @"isSupportedAccessoryRouted";
  currentAudioOwnerDevice = self->_currentAudioOwnerDevice;
  v22 = &off_1002CB660;
  if (!currentAudioOwnerDevice)
  {
    v22 = &off_1002CB678;
  }

  v28[4] = muteActionTrigger;
  v28[5] = v22;
  v27[6] = @"accessoryProductID";
  productID = [(CBDevice *)currentAudioOwnerDevice productID];
  if (productID)
  {
    productID2 = [(CBDevice *)self->_currentAudioOwnerDevice productID];
    if (productID2 <= 21759)
    {
      if (productID2 > 8193)
      {
        switch(productID2)
        {
          case 8194:
            v25 = "AirPods1,1";
            break;
          case 8195:
            v25 = "PowerBeats3,1";
            break;
          case 8197:
            v25 = "BeatsX1,1";
            break;
          case 8198:
            v25 = "BeatsSolo3,1";
            break;
          case 8201:
            v25 = "BeatsStudio3,2";
            break;
          case 8202:
            v25 = "Device1,8202";
            break;
          case 8203:
            v25 = "PowerbeatsPro1,1";
            break;
          case 8204:
            v25 = "BeatsSoloPro1,1";
            break;
          case 8205:
            v25 = "Powerbeats4,1";
            break;
          case 8206:
            v25 = "AirPodsPro1,1";
            break;
          case 8207:
            v25 = "AirPods1,3";
            break;
          case 8208:
            v25 = "Device1,8208";
            break;
          case 8209:
            v25 = "BeatsStudioBuds1,1";
            break;
          case 8210:
            v25 = "Device1,8210";
            break;
          case 8211:
            v25 = "Device1,8211";
            break;
          case 8212:
            v25 = "Device1,8212";
            break;
          case 8213:
            v25 = "Device1,8213";
            break;
          case 8214:
            v25 = "BeatsStudioBuds1,2";
            break;
          case 8215:
            v25 = "BeatsStudioPro1,1";
            break;
          case 8216:
            v25 = "Device1,8216";
            break;
          case 8217:
            v25 = "Device1,8217";
            break;
          case 8218:
            v25 = "Device1,8218";
            break;
          case 8219:
            v25 = "Device1,8219";
            break;
          case 8220:
            v25 = "Device1,8220";
            break;
          case 8221:
            v25 = "Powerb3,1";
            break;
          case 8222:
            v25 = "Device1,8222";
            break;
          case 8223:
            v25 = "Device1,8223";
            break;
          case 8224:
            v25 = "Device1,8224";
            break;
          case 8228:
            v25 = "Device1,8228";
            break;
          case 8229:
            v25 = "Device1,8229";
            break;
          case 8230:
            v25 = "Device1,8230";
            break;
          case 8231:
            v25 = "AirPods3,4";
            break;
          case 8232:
            v25 = "Device1,8232";
            break;
          case 8233:
            v25 = "Device1,8233";
            break;
          case 8239:
            v25 = "Device1,8239";
            break;
          default:
            goto LABEL_85;
        }

        goto LABEL_86;
      }

      switch(productID2)
      {
        case 0:
          v25 = "Invalid";
          goto LABEL_86;
        case 614:
          v25 = "ATVRemote1,1";
          goto LABEL_86;
        case 621:
          v25 = "ATVRemote1,2";
          goto LABEL_86;
      }

LABEL_85:
      v25 = "?";
      goto LABEL_86;
    }

    if (productID2 > 28943)
    {
      if (productID2 <= 29714)
      {
        if (productID2 == 28944)
        {
          v25 = "AudioAccessory1,2";
          goto LABEL_86;
        }

        if (productID2 == 29455)
        {
          v25 = "AppleTV11,1";
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      if (productID2 == 29715)
      {
        v25 = "AudioAccessory5,1";
        goto LABEL_86;
      }

      if (productID2 == 65533)
      {
        v25 = "HeGn";
        goto LABEL_86;
      }

      if (productID2 != 65534)
      {
        goto LABEL_85;
      }

      v25 = "ApGn";
    }

    else
    {
      if (productID2 <= 28419)
      {
        if (productID2 == 21760)
        {
          v25 = "Device1,21760";
          goto LABEL_86;
        }

        if (productID2 == 22034)
        {
          v25 = "Device1,22034";
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      if (productID2 == 28420)
      {
        v25 = "AppleTV5,3";
        goto LABEL_86;
      }

      if (productID2 == 28936)
      {
        v25 = "AppleTV6,2";
        goto LABEL_86;
      }

      if (productID2 != 28943)
      {
        goto LABEL_85;
      }

      v25 = "AudioAccessory1,1";
    }

LABEL_86:
    v16 = [NSString stringWithUTF8String:v25];
  }

  v28[6] = v16;
  v26 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:7];
  CUMetricsLog();

  if (productID)
  {
  }
}

- (void)_updateMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier
{
  v6 = *&action;
  identifierCopy = identifier;
  [(AAServicesDaemon *)self _playChime:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027FA8;
  v11[3] = &unk_1002B74A8;
  v11[4] = self;
  v12 = v6;
  v9 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v9;
  [(AAServicesDaemon *)self _processBannerRequestForMuteAction:v6 auditToken:v10 bundleIdentifier:identifierCopy completion:v11];
}

- (void)_avSystemControllerServerReset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000281A4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deregisterFromAVSystemControllerDeathNotifications
{
  if (self->_avSystemControllerServerDeathNotificationRegistered)
  {
    v9 = v3;
    selfCopy = self;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D7D78(self, a2, v2);
      }
    }

    v8 = [NSNotificationCenter defaultCenter:v4];
    [v8 removeObserver:selfCopy name:AVSystemController_ServerConnectionDiedNotification object:0];

    selfCopy->_avSystemControllerServerDeathNotificationRegistered = 0;
  }
}

- (void)_deregisterFromAVSystemControllerStateNotifications
{
  if (self->_avSystemControllerStateNotificationRegistered)
  {
    v13 = v3;
    selfCopy = self;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D7D94(self, a2, v2);
      }
    }

    v10 = [NSNotificationCenter defaultCenter:v6];
    v11 = AVSystemController_CallIsActiveDidChangeNotification;
    v12 = +[AVSystemController sharedAVSystemController];
    [v10 removeObserver:selfCopy name:v11 object:v12];

    selfCopy->_avSystemControllerStateNotificationRegistered = 0;
  }
}

- (void)_registerForAVSystemControllerDeathNotifications
{
  if (!self->_avSystemControllerServerDeathNotificationRegistered)
  {
    selfCopy = self;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D7DB0(self, a2, v2);
      }
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:selfCopy selector:"_avSystemControllerServerReset" name:AVSystemController_ServerConnectionDiedNotification object:0];

    selfCopy->_avSystemControllerServerDeathNotificationRegistered = 1;
  }
}

- (void)_registerForAVSystemControllerStateNotifications
{
  if (!self->_avSystemControllerStateNotificationRegistered)
  {
    selfCopy = self;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D7DCC(self, a2, v2);
      }
    }

    v4 = +[AVSystemController sharedAVSystemController];
    v9 = AVSystemController_CallIsActiveDidChangeNotification;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    [v4 setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = AVSystemController_CallIsActiveDidChangeNotification;
    v8 = +[AVSystemController sharedAVSystemController];
    [v6 addObserver:selfCopy selector:"_handleCallIsActiveDidChangeNotification:" name:v7 object:v8];

    selfCopy->_avSystemControllerStateNotificationRegistered = 1;
  }
}

- (void)reportSensorInfo:(id)info
{
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028600;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportSensorInfo:(id)info
{
  infoCopy = info;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        sensorService = [v10 sensorService];
        if (sensorService)
        {
          v12 = [infoCopy copy];
          [v10 sensorServiceReportSensorInfo:v12];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)reportActiveHRMDeviceUpdated:(id)updated withSREnabled:(BOOL)enabled
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000287F0;
  block[3] = &unk_1002B7170;
  block[4] = self;
  v10 = updatedCopy;
  enabledCopy = enabled;
  v8 = updatedCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_reportActiveHRMDeviceUpdated:(id)updated withSREnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  updatedCopy = updated;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_xpcConnections;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        systemStateMonitor = [v12 systemStateMonitor];
        if (systemStateMonitor)
        {
          [v12 systemStateMonitorReportActiveHRMDeviceChanged:updatedCopy withSREnabled:enabledCopy];
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_activatedSystemStateMonitorSet;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        if ([v19 direct])
        {
          dispatchQueue = [v19 dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100028A58;
          block[3] = &unk_1002B7170;
          block[4] = v19;
          v22 = updatedCopy;
          v23 = enabledCopy;
          dispatch_async(dispatchQueue, block);
        }
      }

      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }
}

- (void)reportSiriHijackElgibilityUpdated:(BOOL)updated
{
  if (_os_feature_enabled_impl())
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100028B04;
    v6[3] = &unk_1002B67F0;
    v6[4] = self;
    updatedCopy = updated;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)_reportSiriHijackElgibilityUpdated:(BOOL)updated
{
  updatedCopy = updated;
  selfCopy = self;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D7DE8(self, a2, updated);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = selfCopy->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        systemStateMonitor = [v10 systemStateMonitor];
        if (systemStateMonitor)
        {
          [v10 systemStateMonitorReportSiriHijackEligibilityChanged:updatedCopy];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = selfCopy->_activatedSystemStateMonitorSet;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if ([v17 direct])
        {
          dispatchQueue = [v17 dispatchQueue];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100028D70;
          v19[3] = &unk_1002B67F0;
          v19[4] = v17;
          v20 = updatedCopy;
          dispatch_async(dispatchQueue, v19);
        }
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }
}

@end