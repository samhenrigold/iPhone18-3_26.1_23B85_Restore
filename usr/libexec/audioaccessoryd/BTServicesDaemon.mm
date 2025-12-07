@interface BTServicesDaemon
+ (id)sharedBTServicesDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BTServicesDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_audioQualityShowBanner:(int)banner title:(id)title deviceAddressString:(id)string messageKey:(id)key messageArgs:(id)args timeoutSeconds:(double)seconds;
- (void)_cbConnectedDiscoveryEnsureStarted;
- (void)_cbConnectedDiscoveryEnsureStopped;
- (void)_fileRadar:(id)radar;
- (void)_fileRadarForFWCrash:(id)crash;
- (void)_fileRadarForHIDLag:(id)lag;
- (void)_prefsChanged;
- (void)_scheduleUpdate;
- (void)_shareAudioActionScannerDeviceFound:(id)found;
- (void)_shareAudioActionScannerDeviceLost:(id)lost;
- (void)_shareAudioActionScannerEnsureStarted;
- (void)_shareAudioActionScannerEnsureStopped;
- (void)_shareAudioConnectedDeviceFound:(id)found;
- (void)_shareAudioConnectedDeviceLost:(id)lost;
- (void)_shareAudioConnectedDiscoveryEnsureStarted;
- (void)_shareAudioConnectedDiscoveryEnsureStopped;
- (void)_shareAudioSessionEnded:(id)ended;
- (void)_shareAudioSessionProgressEvent:(int)event info:(id)info;
- (void)_shareAudioSessionStartWithDarwinDevice:(id)device cbDevice:(id)cbDevice;
- (void)_shareAudioShowConnectBanner:(id)banner;
- (void)_showConnectBannerIfEnabled:(id)enabled;
- (void)_showHIDConnected:(id)connected;
- (void)_showHIDIntervalBannerIfEnabled:(id)enabled;
- (void)_showHIDLagBannerIfEnabled:(id)enabled;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)invalidate;
- (void)openRadarforAudioQuality;
- (void)showCrashBannerIfNeeded:(id)needed;
@end

@implementation BTServicesDaemon

+ (id)sharedBTServicesDaemon
{
  if (qword_1002FA258[0] != -1)
  {
    sub_1001FCDF4();
  }

  v3 = qword_1002FA250;

  return v3;
}

- (BTServicesDaemon)init
{
  v8.receiver = self;
  v8.super_class = BTServicesDaemon;
  v2 = [(BTServicesDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTServicesDaemon", v3);
    v5 = *(v2 + 6);
    *(v2 + 6) = v4;

    *(v2 + 2) = -1;
    *(v2 + 60) = -1;
    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_1000039F8;
  v79 = sub_1000038A8;
  v80 = 0;
  obj = 0;
  v4 = +[BTIdentityDaemon sharedBTIdentityDaemon];
  v5 = CUDescriptionWithLevel();
  NSAppendPrintF(&obj, "%@", v5);
  objc_storeStrong(&v80, obj);

  v6 = (v76 + 5);
  v73 = v76[5];
  v7 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v8 = CUDescriptionWithLevel();
  NSAppendPrintF(&v73, "%@", v8);
  objc_storeStrong(v6, v73);

  v9 = (v76 + 5);
  v72 = v76[5];
  NSAppendPrintF(&v72, "-- BTShareAudioTV (trig %d)--\n", [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices count]);
  objc_storeStrong(v9, v72);
  v10 = self->_shareAudioActionScanner;
  if (v10)
  {
    v11 = (v76 + 5);
    v71 = v76[5];
    v12 = CUDescriptionWithLevel();
    NSAppendPrintF(&v71, "%@\n", v12);
    objc_storeStrong(v11, v71);
  }

  shareAudioActionTriggeredDevices = self->_shareAudioActionTriggeredDevices;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1000DFA6C;
  v70[3] = &unk_1002B7DC8;
  v70[4] = &v75;
  [(NSMutableDictionary *)shareAudioActionTriggeredDevices enumerateKeysAndObjectsUsingBlock:v70];
  v14 = self->_shareAudioConnectedDeviceMap;
  if (v14)
  {
    v15 = (v76 + 5);
    v69 = v76[5];
    v16 = CUDescriptionWithLevel();
    NSAppendPrintF(&v69, "%@\n", v16);
    objc_storeStrong(v15, v69);
  }

  v17 = self->_shareAudioActionUINoteSession;
  if (v17)
  {
    v18 = (v76 + 5);
    v68 = v76[5];
    v19 = CUDescriptionWithLevel();
    NSAppendPrintF(&v68, "%@\n", v19);
    objc_storeStrong(v18, v68);
  }

  v20 = (v76 + 5);
  v67 = v76[5];
  NSAppendPrintF(&v67, "\n");
  objc_storeStrong(v20, v67);
  v21 = [(NSMutableSet *)self->_xpcConnections count];
  if (v21)
  {
    v22 = (v76 + 5);
    v66 = v76[5];
    NSAppendPrintF(&v66, "XPC Cnx: %d\n", v21);
    objc_storeStrong(v22, v66);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = self->_xpcConnections;
  v23 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v23)
  {
    v24 = *v63;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(v51);
        }

        v26 = *(*(&v62 + 1) + 8 * i);
        v27 = (v76 + 5);
        v61 = v76[5];
        xpcCnx = [v26 xpcCnx];
        processIdentifier = [xpcCnx processIdentifier];
        entitled = [v26 entitled];
        v31 = "no";
        if (entitled)
        {
          v31 = "yes";
        }

        NSAppendPrintF(&v61, "    %#{pid}, entitled %s", processIdentifier, v31);
        objc_storeStrong(v27, v61);

        audioSession = [v26 audioSession];
        v33 = audioSession;
        if (audioSession)
        {
          v34 = (v76 + 5);
          v60 = v76[5];
          NSAppendPrintF(&v60, ", %@", audioSession);
          objc_storeStrong(v34, v60);
        }

        shareAudioSession = [v26 shareAudioSession];
        v36 = shareAudioSession;
        if (shareAudioSession)
        {
          v37 = (v76 + 5);
          v59 = v76[5];
          NSAppendPrintF(&v59, ", %@", shareAudioSession);
          objc_storeStrong(v37, v59);
        }

        v38 = (v76 + 5);
        v58 = v76[5];
        NSAppendPrintF(&v58, "\n");
        objc_storeStrong(v38, v58);
      }

      v23 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v23);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = CFPrefs_CopyKeys();
  v40 = [v39 countByEnumeratingWithState:&v54 objects:v81 count:16];
  if (!v40)
  {
    goto LABEL_33;
  }

  v41 = 0;
  v42 = *v55;
  do
  {
    for (j = 0; j != v40; j = j + 1)
    {
      if (*v55 != v42)
      {
        objc_enumerationMutation(v39);
      }

      v44 = *(*(&v54 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = CFPrefs_CopyTypedValue();
        v46 = (v76 + 5);
        v53 = v76[5];
        NSAppendPrintF(&v53, "Pref: '%@' = '%##@'\n", v44, v45);
        objc_storeStrong(v46, v53);

        ++v41;
      }
    }

    v40 = [v39 countByEnumeratingWithState:&v54 objects:v81 count:16];
  }

  while (v40);

  if (v41 >= 1)
  {
    v47 = v76;
    v52 = v76[5];
    NSAppendPrintF(&v52, "\n");
    v48 = v52;
    v39 = v47[5];
    v47[5] = v48;
LABEL_33:
  }

  v49 = v76[5];
  _Block_object_dispose(&v75, 8);

  return v49;
}

- (void)openRadarforAudioQuality
{
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001FCE08(self, a2, v2);
    }
  }

  v21[0] = @"Classification";
  v21[1] = @"ComponentID";
  v22[0] = @"Performance";
  v22[1] = @"815886";
  v21[2] = @"ComponentName";
  v21[3] = @"ComponentVersion";
  v22[2] = @"CoreBluetooth - HFP Audio | iOS";
  v22[3] = @"iOS";
  v21[4] = @"ExtensionIdentifiers";
  v21[5] = @"Reproducibility";
  v22[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v22[5] = @"I Didn't Try";
  v21[6] = @"Keywords";
  v21[7] = @"Title";
  v22[6] = @"1551854";
  v22[7] = @"Bluetooth Audio Quality Feedback";
  v3 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:8];
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v16}];
        v12 = [NSURLQueryItem queryItemWithName:v10 value:v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v13 setQueryItems:v4];
  v14 = +[LSApplicationWorkspace defaultWorkspace];
  v15 = [v13 URL];
  [v14 openURL:v15 configuration:0 completionHandler:0];
}

- (void)_audioQualityShowBanner:(int)banner title:(id)title deviceAddressString:(id)string messageKey:(id)key messageArgs:(id)args timeoutSeconds:(double)seconds
{
  titleCopy = title;
  keyCopy = key;
  v13 = objc_alloc_init(BTBannerUISession);
  audioQualityBanner = self->_audioQualityBanner;
  self->_audioQualityBanner = v13;
  v15 = v13;

  if (titleCopy)
  {
    v16 = titleCopy;
  }

  else
  {
    v16 = &stru_1002C1358;
  }

  [(BTBannerUISession *)v15 setCenterContentText:v16];
  [(BTBannerUISession *)v15 setCenterContentItemsText:keyCopy];

  [(BTBannerUISession *)v15 setDispatchQueue:self->_dispatchQueue];
  [(BTBannerUISession *)v15 setTimeoutSeconds:seconds];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000DFEBC;
  v18[3] = &unk_1002BB740;
  v18[4] = v15;
  v18[5] = self;
  v19 = titleCopy;
  v17 = titleCopy;
  [(BTBannerUISession *)v15 setActionHandler:v18];
  [(BTBannerUISession *)v15 activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E00E0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.BluetoothServices"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000E04F8;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  if (self->_ignoreResetNotifyToken == -1)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FCF38();
    }

    v6 = self->_dispatchQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E0560;
    v15[3] = &unk_1002B6DF0;
    v15[4] = self;
    notify_register_dispatch("com.apple.bluetooth.ignoreReset", &self->_ignoreResetNotifyToken, v6, v15);
  }

  if (IsAppleInternalBuild() && self->_audioQualityNotifyToken == -1)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FCF6C();
    }

    v7 = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E05C0;
    v14[3] = &unk_1002B6DF0;
    v14[4] = self;
    notify_register_dispatch("com.apple.bluetooth.audioQuality", &self->_audioQualityNotifyToken, v7, v14);
  }

  if (!self->_stateHandle)
  {
    v13[5] = _NSConcreteStackBlock;
    v13[6] = 3221225472;
    v13[7] = sub_1000E064C;
    v13[8] = &unk_1002B7390;
    v13[9] = self;
    self->_stateHandle = os_state_add_handler();
  }

  v8 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.ShareAudioNotifications"];
  [v8 setWantsNotificationResponsesDelivered];
  [(BTServicesDaemon *)self _prefsChanged];
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FCFA0();
  }

  v9 = objc_alloc_init(CBController);
  cbController = self->_cbController;
  self->_cbController = v9;

  [(CBController *)self->_cbController setDispatchQueue:self->_dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E0668;
  v13[3] = &unk_1002B6880;
  v13[4] = self;
  [(CBController *)self->_cbController setInterruptionHandler:v13];
  v11 = self->_cbController;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E06DC;
  v12[3] = &unk_1002B6A38;
  v12[4] = self;
  [(CBController *)v11 activateWithCompletion:v12];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E07DC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefShareAudioTV != v3)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD0A0();
    }

    self->_prefShareAudioTV = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_dontShowConnectBanner != v4)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD0F8();
    }

    self->_dontShowConnectBanner = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_dontShowCrashBanner != v5)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD150();
    }

    self->_dontShowCrashBanner = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_dontShowHIDLagBanner != v6)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD1A8();
    }

    self->_dontShowHIDLagBanner = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_doesShowHIDIntervalBanner != v7)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD200();
    }

    self->_doesShowHIDIntervalBanner = v7;
  }

  [(BTServicesDaemon *)self _scheduleUpdate];
}

- (void)_scheduleUpdate
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E0BF0;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_update
{
  self->_updatePending = 0;
  if (self->_dontShowConnectBanner)
  {
    [(BTServicesDaemon *)self _cbConnectedDiscoveryEnsureStopped];
  }

  else
  {
    [(BTServicesDaemon *)self _cbConnectedDiscoveryEnsureStarted];
  }

  if (self->_prefShareAudioTV)
  {
    [(BTServicesDaemon *)self _shareAudioActionScannerEnsureStarted];
  }

  else
  {
    [(BTServicesDaemon *)self _shareAudioActionScannerEnsureStopped];
  }

  if (self->_prefShareAudioTV)
  {

    [(BTServicesDaemon *)self _shareAudioConnectedDiscoveryEnsureStarted];
  }

  else
  {

    [(BTServicesDaemon *)self _shareAudioConnectedDiscoveryEnsureStopped];
  }
}

- (void)showCrashBannerIfNeeded:(id)needed
{
  neededCopy = needed;
  mach_absolute_time();
  v5 = UpTicksToSeconds();
  if (!self->_showFirmwareCrashLastTicks || (v8 = v5, v5 >= 0x3C))
  {
    self->_showFirmwareCrashLastTicks = mach_absolute_time();
    v9 = IsAppleInternalBuild();
    if (v9 && !self->_dontShowCrashBanner)
    {
      if (self->_uiNoteSession)
      {
        if (dword_1002F76E0 <= 30)
        {
          if (dword_1002F76E0 != -1 || (v9 = _LogCategory_Initialize(), v9))
          {
            sub_1001FD274(v9, v10, v11);
          }
        }

        [(CUUserNotificationSession *)self->_uiNoteSession removeAllActions];
        [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
      }

      v12 = [neededCopy objectForKeyedSubscript:@"_input"];
      v13 = [v12 isEqual:@"HostCrashed"];

      if (v13)
      {
        v17 = @"Bluetooth host has crashed";
      }

      else
      {
        v17 = @"Bluetooth firmware has crashed";
      }

      if (dword_1002F76E0 <= 30)
      {
        if (dword_1002F76E0 != -1 || (v14 = _LogCategory_Initialize(), v14))
        {
          sub_1001FD290(v14, v15, v16);
        }
      }

      v18 = objc_alloc_init(NSDateFormatter);
      [v18 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
      v19 = +[NSDate date];
      v20 = [v18 stringFromDate:v19];

      v21 = objc_alloc_init(CUUserNotificationSession);
      uiNoteSession = self->_uiNoteSession;
      self->_uiNoteSession = v21;
      v23 = v21;

      [(CUUserNotificationSession *)v23 setBundleID:@"com.apple.BTUserNotifications"];
      [(CUUserNotificationSession *)v23 setCategoryID:@"BTUserNotifications"];
      [(CUUserNotificationSession *)v23 setDispatchQueue:self->_dispatchQueue];
      [(CUUserNotificationSession *)v23 setIconName:@"Bluetooth.icns"];
      [(CUUserNotificationSession *)v23 setTitleKey:v17];
      [(CUUserNotificationSession *)v23 setBodyKey:v20];
      [(CUUserNotificationSession *)v23 setTimeoutSeconds:43200.0];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000E1050;
      v27[3] = &unk_1002BB768;
      v27[4] = v23;
      [(CUUserNotificationSession *)v23 setActionHandler:v27];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000E10DC;
      v25[3] = &unk_1002B6CF0;
      v25[4] = v23;
      v25[5] = self;
      v26 = neededCopy;
      [(CUUserNotificationSession *)v23 addActionWithIdentifier:@"FileRadarAction" title:@"File Radar" flags:0 handler:v25];
      [(CUUserNotificationSession *)v23 activate];
    }

    goto LABEL_22;
  }

  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1001FD258(v5, v6, v7);
    }
  }

  if (v8 >= 0xA)
  {
LABEL_22:
    v28 = @"CrashType";
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v24 = [NSDictionary dictionaryWithObjects:&TypedValue forKeys:&v28 count:1];
    CUMetricsLog();
  }
}

- (void)_fileRadarForFWCrash:(id)crash
{
  crashCopy = crash;
  v7 = crashCopy;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (crashCopy = _LogCategory_Initialize(), crashCopy))
    {
      sub_1001FD30C(crashCopy, v5, v6);
    }
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = [[NSString alloc] initWithFormat:@"Bluetooth Crashed: %@", v8];
  v11[0] = @"Classification";
  v11[1] = @"ComponentID";
  v12[0] = @"Crash/Hang/Data Loss";
  v12[1] = @"161045";
  v11[2] = @"ComponentName";
  v11[3] = @"ComponentVersion";
  v12[2] = @"Bluetooth (New Bugs)";
  v12[3] = @"iOS";
  v11[4] = @"ExtensionIdentifiers";
  v11[5] = @"Reproducibility";
  v12[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v12[5] = @"I Didn't Try";
  v11[6] = @"Title";
  v12[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
  [(BTServicesDaemon *)self _fileRadar:v10];
}

- (void)_fileRadarForHIDLag:(id)lag
{
  lagCopy = lag;
  v7 = lagCopy;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (lagCopy = _LogCategory_Initialize(), lagCopy))
    {
      sub_1001FD328(lagCopy, v5, v6);
    }
  }

  v8 = [[NSString alloc] initWithFormat:@"Bluetooth HID Lag Detected"];
  v10[0] = @"Classification";
  v10[1] = @"ComponentID";
  v11[0] = @"Crash/Hang/Data Loss";
  v11[1] = @"183565";
  v10[2] = @"ComponentName";
  v10[3] = @"ComponentVersion";
  v11[2] = @"CoreBluetooth - HID Lag";
  v11[3] = @"iOS";
  v10[4] = @"ExtensionIdentifiers";
  v10[5] = @"Reproducibility";
  v11[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v11[5] = @"I Didn't Try";
  v10[6] = @"Title";
  v11[6] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
  [(BTServicesDaemon *)self _fileRadar:v9];
}

- (void)_fileRadar:(id)radar
{
  radarCopy = radar;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = radarCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v16}];
        v12 = [NSURLQueryItem queryItemWithName:v10 value:v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v13 setQueryItems:v4];
  v14 = +[LSApplicationWorkspace defaultWorkspace];
  v15 = [v13 URL];
  [v14 openURL:v15 configuration:0 completionHandler:0];
}

- (void)_showConnectBannerIfEnabled:(id)enabled
{
  enabledCopy = enabled;
  mach_absolute_time();
  v5 = UpTicksToSeconds();
  if (self->_showConnectBannerLastTicks)
  {
    v6 = v5 >= 0xA;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    self->_showConnectBannerLastTicks = mach_absolute_time();
    if (IsAppleInternalBuild())
    {
      if (!self->_dontShowConnectBanner)
      {
        name = [enabledCopy name];
        if (![name length])
        {
LABEL_20:

          goto LABEL_21;
        }

        connectedServices = [enabledCopy connectedServices];

        if (connectedServices && ([enabledCopy connectedServices] & 0x1000000) == 0)
        {
          if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FD344(enabledCopy);
          }

          name = objc_alloc_init(NSDateFormatter);
          [name setDateFormat:@"hh:mm:ss a"];
          v9 = +[NSDate date];
          v10 = [name stringFromDate:v9];

          btAddressData = [enabledCopy btAddressData];
          v12 = CUPrintNSDataAddress();

          v13 = [v12 substringFromIndex:{objc_msgSend(v12, "length") - 5}];
          if (([enabledCopy connectedServices] & 0x400000) != 0)
          {
            [NSString stringWithFormat:@"LE Connection at %@", v10];
          }

          else if (([enabledCopy connectedServices] & 0x800000) != 0)
          {
            [NSString stringWithFormat:@"Classic Connection at %@", v10];
          }

          else
          {
            [NSString stringWithFormat:@"Connected at %@", v10];
          }
          v14 = ;
          v15 = objc_alloc_init(CUUserNotificationSession);
          [v15 setBundleID:@"com.apple.BTUserNotifications"];
          [v15 setCategoryID:@"BTUserNotifications"];
          [v15 setDispatchQueue:self->_dispatchQueue];
          [v15 setIconName:@"Bluetooth.icns"];
          name2 = [enabledCopy name];
          v17 = [NSString stringWithFormat:@"%@%@%@%@", name2, @" ("), v13, @""];
          [v15 setTitleKey:v17];

          [v15 setSubtitleKey:v14];
          [v15 activate];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000E18FC;
          v18[3] = &unk_1002BB768;
          v18[4] = v15;
          [v15 setActionHandler:v18];

          goto LABEL_20;
        }
      }
    }
  }

LABEL_21:
}

- (void)_showHIDLagBannerIfEnabled:(id)enabled
{
  enabledCopy = enabled;
  mach_absolute_time();
  v5 = UpTicksToSeconds();
  if (self->_showHIDLagBannerLastTicks && v5 < 0x3C)
  {
    if (dword_1002F76E0 <= 30)
    {
      if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001FD3E8(v5, v6, v7);
      }
    }
  }

  else
  {
    self->_showHIDLagBannerLastTicks = mach_absolute_time();
    v8 = IsAppleInternalBuild();
    if (v8 && !self->_dontShowHIDLagBanner)
    {
      if (self->_uiNoteSession)
      {
        if (dword_1002F76E0 <= 30)
        {
          if (dword_1002F76E0 != -1 || (v8 = _LogCategory_Initialize(), v8))
          {
            sub_1001FD404(v8, v9, v10);
          }
        }

        [(CUUserNotificationSession *)self->_uiNoteSession removeAllActions];
        [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
      }

      v11 = [enabledCopy objectForKeyedSubscript:@"_input"];
      v12 = [v11 isEqual:@"HIDLagDetected"];

      if (v12)
      {
        v16 = @"Bluetooth HID Lag Detected";
      }

      else
      {
        v16 = @"Bluetooth HID Lag detected";
      }

      if (dword_1002F76E0 <= 30)
      {
        if (dword_1002F76E0 != -1 || (v13 = _LogCategory_Initialize(), v13))
        {
          sub_1001FD420(v13, v14, v15);
        }
      }

      v17 = objc_alloc_init(CUUserNotificationSession);
      uiNoteSession = self->_uiNoteSession;
      self->_uiNoteSession = v17;
      v19 = v17;

      [(CUUserNotificationSession *)v19 setBundleID:@"com.apple.BTUserNotifications"];
      [(CUUserNotificationSession *)v19 setCategoryID:@"BTUserNotifications"];
      [(CUUserNotificationSession *)v19 setDispatchQueue:self->_dispatchQueue];
      [(CUUserNotificationSession *)v19 setIconName:@"Bluetooth.icns"];
      [(CUUserNotificationSession *)v19 setTitleKey:v16];
      [(CUUserNotificationSession *)v19 setBodyKey:@"Please file a radar"];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000E1C4C;
      v27[3] = &unk_1002BB768;
      v27[4] = v19;
      [(CUUserNotificationSession *)v19 setActionHandler:v27];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000E1CD8;
      v23 = &unk_1002B6CF0;
      v24 = v19;
      selfCopy = self;
      v26 = enabledCopy;
      [(CUUserNotificationSession *)v19 addActionWithIdentifier:@"FileRadarAction" title:@"File Radar" flags:0 handler:&v20];
      [(CUUserNotificationSession *)v19 activate:v20];
    }
  }
}

- (void)_showHIDIntervalBannerIfEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = IsAppleInternalBuild();
  if (v4 && self->_doesShowHIDIntervalBanner)
  {
    if (dword_1002F76E0 <= 30)
    {
      if (dword_1002F76E0 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_1001FD49C(v4, v5, v6);
      }
    }

    v7 = [enabledCopy objectForKeyedSubscript:@"DeviceName"];
    v8 = [enabledCopy objectForKeyedSubscript:@"Intervalms"];
    [v8 doubleValue];
    v10 = [NSString stringWithFormat:@"%@ is %.2f ms", v7, v9];
    v11 = objc_alloc_init(CUUserNotificationSession);
    [v11 setBundleID:@"com.apple.BTUserNotifications"];
    [v11 setCategoryID:@"BTUserNotifications"];
    [v11 setFlags:8];
    [v11 setDispatchQueue:self->_dispatchQueue];
    [v11 setIconName:@"Bluetooth.icns"];
    [v11 setTimeoutSeconds:5.0];
    [v11 setTitleKey:@"Update HID interval"];
    [v11 setSubtitleKey:v10];
    [v11 activate];
  }
}

- (void)_showHIDConnected:(id)connected
{
  connectedCopy = connected;
  [connectedCopy batteryLevelMain];
  v6 = v5;
  name = [connectedCopy name];
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD4B8(connectedCopy);
  }

  p_uiHIDDeviceBanner = &self->_uiHIDDeviceBanner;
  uiHIDDeviceBanner = self->_uiHIDDeviceBanner;
  if (uiHIDDeviceBanner)
  {
    [(BTBannerUISession *)uiHIDDeviceBanner invalidate];
    v10 = *p_uiHIDDeviceBanner;
    *p_uiHIDDeviceBanner = 0;
  }

  v11 = objc_alloc_init(BTBannerUISession);
  [v11 setDispatchQueue:self->_dispatchQueue];
  [v11 setBatteryLevelInfo:v6];
  [v11 setTimeoutSeconds:10.0];
  [v11 setBannerType:3];
  objc_storeStrong(&self->_uiHIDDeviceBanner, v11);
  [v11 setCenterContentText:name];
  deviceType = [connectedCopy deviceType];
  v13 = @"gamecontroller.fill";
  if (deviceType == 24)
  {
    v13 = @"keyboard.fill";
  }

  if (deviceType == 25)
  {
    v13 = @"magicmouse.fill";
  }

  if (deviceType == 49)
  {
    v14 = @"rectangle.fill";
  }

  else
  {
    v14 = v13;
  }

  [v11 setLeadingAccessoryImageName:v14];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CONNECTED" value:&stru_1002C1358 table:0];
  [v11 setCenterContentItemsText:v16];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E20A0;
  v17[3] = &unk_1002B7430;
  v17[4] = v11;
  v17[5] = self;
  [v11 setActionHandler:v17];
  [v11 activate];
}

- (void)_cbConnectedDiscoveryEnsureStarted
{
  if (!self->_cbConnectedDiscovery)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1002F76E0 <= 30)
    {
      if (dword_1002F76E0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001FD558(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    cbConnectedDiscovery = selfCopy->_cbConnectedDiscovery;
    selfCopy->_cbConnectedDiscovery = v8;

    [(CBDiscovery *)selfCopy->_cbConnectedDiscovery setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBDiscovery *)selfCopy->_cbConnectedDiscovery setDiscoveryFlags:[(CBDiscovery *)selfCopy->_cbConnectedDiscovery discoveryFlags]| 0x200000];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E22A0;
    v12[3] = &unk_1002B6858;
    v12[4] = selfCopy;
    [(CBDiscovery *)selfCopy->_cbConnectedDiscovery setDeviceFoundHandler:v12];
    v10 = selfCopy->_cbConnectedDiscovery;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E22AC;
    v11[3] = &unk_1002B6A38;
    v11[4] = selfCopy;
    [(CBDiscovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_cbConnectedDiscoveryEnsureStopped
{
  if (self->_cbConnectedDiscovery)
  {
    selfCopy = self;
    if (dword_1002F76E0 <= 30)
    {
      if (dword_1002F76E0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001FD5B4(self, a2, v2);
      }
    }

    [(CBDiscovery *)selfCopy->_cbConnectedDiscovery invalidate];
    cbConnectedDiscovery = selfCopy->_cbConnectedDiscovery;
    selfCopy->_cbConnectedDiscovery = 0;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_alloc_init(BTServicesXPCConnection);
  [(BTServicesXPCConnection *)v6 setDaemon:self];
  [(BTServicesXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(BTServicesXPCConnection *)v6 setXpcCnx:connectionCopy];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v31 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BTServicesXPCClientInterface];
  v32 = [NSSet alloc];
  v29 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v34 = v6;
  v16 = objc_opt_class();
  v33 = [v32 initWithObjects:{v29, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  [v31 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v30 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BTServicesXPCDaemonInterface];
  v28 = [NSSet alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v27 = objc_opt_class();
  v25 = [v28 initWithObjects:{v17, v18, v19, v20, v21, v22, v23, v24, v27, objc_opt_class(), 0}];
  [v30 setClasses:v25 forSelector:"showHIDConnectedBannerAperture:completion:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v30];
  [connectionCopy setExportedObject:v34];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000E276C;
  v35[3] = &unk_1002B6D18;
  v35[4] = self;
  v35[5] = v34;
  [connectionCopy setInvalidationHandler:v35];
  [connectionCopy setRemoteObjectInterface:v31];
  [connectionCopy resume];
  if (dword_1002F76E0 <= 20 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD5D0(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_1002F76E0 <= 20)
  {
    if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_1001FD614(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
}

- (void)_shareAudioActionScannerEnsureStarted
{
  if (!self->_shareAudioActionScanner)
  {
    v12[6] = v5;
    v12[7] = v4;
    v12[12] = v2;
    v12[13] = v3;
    v7 = objc_alloc_init(SFDeviceDiscovery);
    shareAudioActionScanner = self->_shareAudioActionScanner;
    self->_shareAudioActionScanner = v7;

    [(SFDeviceDiscovery *)v7 setChangeFlags:5];
    [(SFDeviceDiscovery *)v7 setDiscoveryFlags:16];
    [(SFDeviceDiscovery *)v7 setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)v7 setPurpose:@"ShareAudio"];
    [(SFDeviceDiscovery *)v7 setRssiThreshold:-70];
    [(SFDeviceDiscovery *)v7 setScanRate:20];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E2A34;
    v12[3] = &unk_1002B8428;
    v12[4] = self;
    v12[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003498;
    v11[3] = &unk_1002B8428;
    v11[4] = self;
    v11[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000304C;
    v10[3] = &unk_1002B8450;
    v10[4] = self;
    v10[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceChangedHandler:v10];
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD678();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E2A58;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v9[5] = v7;
    [(SFDeviceDiscovery *)v7 activateWithCompletion:v9];
  }
}

- (void)_shareAudioActionScannerEnsureStopped
{
  if (self->_shareAudioActionScanner)
  {
    selfCopy = self;
    if (dword_1002F7810 <= 30)
    {
      if (dword_1002F7810 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001FD6EC(self, a2, v2);
      }
    }

    [(SFDeviceDiscovery *)selfCopy->_shareAudioActionScanner invalidate];
    shareAudioActionScanner = selfCopy->_shareAudioActionScanner;
    selfCopy->_shareAudioActionScanner = 0;
  }
}

- (void)_shareAudioConnectedDiscoveryEnsureStarted
{
  if (!self->_shareAudioConnectedDeviceDiscovery)
  {
    v13[6] = v6;
    v13[7] = v5;
    v13[12] = v3;
    v13[13] = v4;
    selfCopy = self;
    if (dword_1002F7810 <= 30)
    {
      if (dword_1002F7810 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001FD708(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    shareAudioConnectedDeviceDiscovery = selfCopy->_shareAudioConnectedDeviceDiscovery;
    selfCopy->_shareAudioConnectedDeviceDiscovery = v8;
    v10 = v8;

    [(CBDiscovery *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBDiscovery *)v10 setDiscoveryFlags:[(CBDiscovery *)v10 discoveryFlags]| 0x200000];
    [(CBDiscovery *)v10 setLabel:@"ShareAudio"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E2D34;
    v13[3] = &unk_1002B6DA8;
    v13[4] = v10;
    v13[5] = selfCopy;
    [(CBDiscovery *)v10 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E2D50;
    v12[3] = &unk_1002B6DA8;
    v12[4] = v10;
    v12[5] = selfCopy;
    [(CBDiscovery *)v10 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E2D6C;
    v11[3] = &unk_1002B6A38;
    v11[4] = selfCopy;
    [(CBDiscovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_shareAudioConnectedDiscoveryEnsureStopped
{
  if (self->_shareAudioConnectedDeviceDiscovery)
  {
    selfCopy = self;
    if (dword_1002F7810 <= 30)
    {
      if (dword_1002F7810 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001FD764(self, a2, v2);
      }
    }

    [(CBDiscovery *)selfCopy->_shareAudioConnectedDeviceDiscovery invalidate];
    shareAudioConnectedDeviceDiscovery = selfCopy->_shareAudioConnectedDeviceDiscovery;
    selfCopy->_shareAudioConnectedDeviceDiscovery = 0;
  }
}

- (void)_shareAudioConnectedDeviceFound:(id)found
{
  foundCopy = found;
  deviceFlags = [foundCopy deviceFlags];
  v5 = foundCopy;
  if ((deviceFlags & 4) != 0)
  {
    identifier = [foundCopy identifier];
    if (identifier)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FD780(foundCopy);
      }

      shareAudioConnectedDeviceMap = self->_shareAudioConnectedDeviceMap;
      if (!shareAudioConnectedDeviceMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_shareAudioConnectedDeviceMap;
        self->_shareAudioConnectedDeviceMap = v8;

        shareAudioConnectedDeviceMap = self->_shareAudioConnectedDeviceMap;
      }

      [(NSMutableDictionary *)shareAudioConnectedDeviceMap setObject:foundCopy forKeyedSubscript:identifier];
    }

    v5 = foundCopy;
  }

  _objc_release_x1(deviceFlags, v5);
}

- (void)_shareAudioConnectedDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap objectForKeyedSubscript:identifier];

    if (v5)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FD7C0(lostCopy);
      }

      [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap setObject:0 forKeyedSubscript:identifier];
    }
  }
}

- (void)_shareAudioShowConnectBanner:(id)banner
{
  bannerCopy = banner;
  allValues = [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap allValues];
  firstObject = [allValues firstObject];

  if (firstObject)
  {
    name = [bannerCopy name];
    if (![name length])
    {
      v11 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.ShareAudioNotifications.bundle"];
      v12 = CULocalizedStringEx();

      name = v12;
    }

    v13 = objc_alloc_init(CUUserNotificationSession);
    shareAudioActionUINoteSession = self->_shareAudioActionUINoteSession;
    self->_shareAudioActionUINoteSession = v13;
    v15 = v13;

    [(CUUserNotificationSession *)v15 setBundleID:@"com.apple.ShareAudioNotifications"];
    [(CUUserNotificationSession *)v15 setCategoryID:@"ShareAudioCategoryID"];
    [(CUUserNotificationSession *)v15 setDispatchQueue:self->_dispatchQueue];
    [(CUUserNotificationSession *)v15 setFlags:9];
    identifier = [bannerCopy identifier];
    uUIDString = [identifier UUIDString];
    [(CUUserNotificationSession *)v15 setIdentifier:uUIDString];

    [(CUUserNotificationSession *)v15 setLabel:@"ShareAudio"];
    [(CUUserNotificationSession *)v15 setTitleKey:name];
    [(CUUserNotificationSession *)v15 setBodyKey:@"SHARE_AUDIO_BODY_FORMAT"];
    name2 = [firstObject name];
    v19 = name2;
    v20 = @"?";
    if (name2)
    {
      v20 = name2;
    }

    v31 = v20;
    v21 = [NSArray arrayWithObjects:&v31 count:1];
    [(CUUserNotificationSession *)v15 setBodyArguments:v21];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E3310;
    v30[3] = &unk_1002B7430;
    v30[4] = v15;
    v30[5] = self;
    [(CUUserNotificationSession *)v15 setActionHandler:v30];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000E33C0;
    v25 = &unk_1002B7B18;
    v26 = v15;
    selfCopy = self;
    v28 = bannerCopy;
    v29 = firstObject;
    [(CUUserNotificationSession *)v15 addActionWithIdentifier:@"ShareAudioActionIDConnect" title:@"SHARE_AUDIO_BUTTON" flags:0 handler:&v22];
    [(CUUserNotificationSession *)v15 activate:v22];
  }

  else
  {
    sub_1001FD800(v7, v8, v9);
  }
}

- (void)_shareAudioSessionStartWithDarwinDevice:(id)device cbDevice:(id)cbDevice
{
  deviceCopy = device;
  cbDeviceCopy = cbDevice;
  if (self->_shareAudioSession)
  {
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD8DC(deviceCopy);
    }

    [(BTShareAudioSessionDaemon *)self->_shareAudioSession invalidate];
  }

  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioSessionStartWithDarwinDevice:cbDevice:]", 30, "Session start: Darwin %@, CB %@", deviceCopy, cbDeviceCopy);
  }

  v8 = objc_alloc_init(BTShareAudioSessionDaemon);
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = v8;
  v10 = v8;

  [(BTShareAudioSessionDaemon *)v10 setDarwinDevice:deviceCopy];
  [(BTShareAudioSessionDaemon *)v10 setDispatchQueue:self->_dispatchQueue];
  [(BTShareAudioSessionDaemon *)v10 setMode:1];
  [(BTShareAudioSessionDaemon *)v10 setCbDevice:cbDeviceCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E35F4;
  v11[3] = &unk_1002BB790;
  v11[4] = v10;
  v11[5] = self;
  [(BTShareAudioSessionDaemon *)v10 setProgressHandler:v11];
  [(BTShareAudioSessionDaemon *)v10 activate];
}

- (void)_shareAudioSessionEnded:(id)ended
{
  endedCopy = ended;
  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD91C(endedCopy);
  }

  [(BTShareAudioSessionDaemon *)self->_shareAudioSession invalidate];
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = 0;
}

- (void)_shareAudioSessionProgressEvent:(int)event info:(id)info
{
  infoCopy = info;
  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD95C(event, infoCopy);
  }

  if (event == 50)
  {
    CFErrorGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      [(BTServicesDaemon *)self _shareAudioSessionEnded:v6];
    }

    else
    {
      v7 = BTErrorF(4294960596, "Failed without error?");
      [(BTServicesDaemon *)self _shareAudioSessionEnded:v7];
    }
  }

  else if (event == 40)
  {
    [(BTServicesDaemon *)self _shareAudioSessionEnded:0];
  }
}

- (void)_shareAudioActionScannerDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if ([foundCopy deviceActionType] == 31)
    {
      bleDevice = [foundCopy bleDevice];
      if (self->_shareAudioActionUINoteSession)
      {
        if (dword_1002F7810 <= 10 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceFound:]", 10, "Action scanner ignoring: already prompted, %@", bleDevice);
        }
      }

      else if (self->_shareAudioSession)
      {
        if (dword_1002F7810 <= 10 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceFound:]", 10, "Action scanner ignoring: already in-progress, %@", bleDevice);
        }
      }

      else
      {
        v7 = [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices objectForKeyedSubscript:uUIDString];

        if (v7)
        {
          if (dword_1002F7810 <= 10 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceFound:]", 10, "Action scanner ignoring: triggered, %@", bleDevice);
          }
        }

        else
        {
          smoothedRSSI = [bleDevice smoothedRSSI];
          if (smoothedRSSI <= -71)
          {
            if (dword_1002F7810 <= 10)
            {
              v15 = smoothedRSSI;
              if (dword_1002F7810 != -1 || _LogCategory_Initialize())
              {
                LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceFound:]", 10, "Action scanner ignoring: weak RSSI %d, %@", v15, bleDevice);
              }
            }
          }

          else if ([(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap count])
          {
            if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceFound:]", 30, "Action scanner triggering connect banner: %@", bleDevice);
            }

            shareAudioActionTriggeredDevices = self->_shareAudioActionTriggeredDevices;
            v10 = foundCopy;
            if (!shareAudioActionTriggeredDevices)
            {
              v11 = objc_alloc_init(NSMutableDictionary);
              v12 = self->_shareAudioActionTriggeredDevices;
              self->_shareAudioActionTriggeredDevices = v11;

              v10 = foundCopy;
              shareAudioActionTriggeredDevices = self->_shareAudioActionTriggeredDevices;
            }

            [(NSMutableDictionary *)shareAudioActionTriggeredDevices setObject:v10 forKeyedSubscript:uUIDString];
            allValues = [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap allValues];
            firstObject = [allValues firstObject];

            if (firstObject && ([foundCopy deviceFlags] & 8) != 0)
            {
              [(BTServicesDaemon *)self _shareAudioSessionStartWithDarwinDevice:foundCopy cbDevice:firstObject];
            }

            else
            {
              [(BTServicesDaemon *)self _shareAudioShowConnectBanner:foundCopy];
            }
          }

          else if (dword_1002F7810 <= 10 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceFound:]", 10, "Action scanner ignoring: no self ShareAudio, %@", bleDevice);
          }
        }
      }
    }

    else
    {
      [(BTServicesDaemon *)self _shareAudioActionScannerDeviceLost:foundCopy];
    }
  }
}

- (void)_shareAudioActionScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v6 = [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices objectForKeyedSubscript:uUIDString];

    if (v6)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        bleDevice = [lostCopy bleDevice];
        LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceLost:]", 30, "Action scanner lost: %@", bleDevice);
      }

      [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices setObject:0 forKeyedSubscript:uUIDString];
    }

    identifier2 = [(CUUserNotificationSession *)self->_shareAudioActionUINoteSession identifier];
    v9 = [identifier2 isEqual:uUIDString];

    if (v9)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        bleDevice2 = [lostCopy bleDevice];
        LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioActionScannerDeviceLost:]", 30, "Action scanner canceling banner: lost, %@", bleDevice2);
      }

      [(CUUserNotificationSession *)self->_shareAudioActionUINoteSession invalidate];
      shareAudioActionUINoteSession = self->_shareAudioActionUINoteSession;
      self->_shareAudioActionUINoteSession = 0;
    }
  }
}

@end