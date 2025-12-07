@interface SDSetupAgent
+ (SDSetupAgent)sharedSetupAgent;
- (BOOL)_deviceHandlesDovePeaceSetup;
- (BOOL)_screenLocked;
- (BOOL)_shouldOfferPassword:(id)password;
- (BOOL)_useSymptomsReport;
- (BOOL)reenableProxCardType:(unsigned __int8)type;
- (SDSetupAgent)init;
- (id)_watchMigrating:(id)migrating;
- (id)descriptionWithLevel:(int)level;
- (int64_t)extractParameter:(id)parameter inString:(id)string;
- (void)_activate;
- (void)_appleAccountSignIn:(id)in;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_ensureClientStarted;
- (void)_ensureClientStopped;
- (void)_ensureServerStarted;
- (void)_ensureServerStopped;
- (void)_fetchSymptomsReport;
- (void)_iTunesAccountsChanged;
- (void)_invalidate;
- (void)_launchAppWithMachServiceName:(id)name;
- (void)_openSetupURL:(id)l;
- (void)_pinPairHandleRequest:(id)request;
- (void)_postDeviceSetupNotificationForDevice:(id)device present:(BOOL)present;
- (void)_primaryAccountChanged;
- (void)_pwsHandleProgressEvent:(unsigned int)event info:(id)info;
- (void)_pwsHandleUserResponse:(int)response device:(id)device info:(id)info;
- (void)_renewAccountIfNecessaryForCFUItems:(id)items completion:(id)completion;
- (void)_repairEnsuredStarted;
- (void)_repairEnsuredStopped;
- (void)_repairHandleCFUItems:(id)items;
- (void)_repairHandleCFUItemsChanged;
- (void)_repairHandleCNSStateChanged;
- (void)_repairHandleCompletion;
- (void)_repairHandleManateeChanged;
- (void)_repairProblemCheck;
- (void)_repairProblemFlagsChanged;
- (void)_repairSilentProgress:(unsigned int)progress info:(id)info;
- (void)_repairSilentStart:(id)start;
- (void)_repairUpdateIDSCache;
- (void)_repairVPNError:(id)error;
- (void)_resetTriggers;
- (void)_scanTimerFired;
- (void)_screenStateChanged;
- (void)_uiLockStatusChanged;
- (void)_uiStartAppleTVSetup:(id)setup extraInfo:(id)info;
- (void)_uiStartAuthenticateAccounts:(id)accounts;
- (void)_uiStartForMacWithDevice:(id)device label:(id)label extraInfo:(id)info;
- (void)_uiStartHomeKitDeviceDetectedWithURL:(id)l;
- (void)_uiStartRepair:(id)repair flags:(unsigned int)flags;
- (void)_uiStartSetupB238:(id)b238 extraInfo:(id)info;
- (void)_uiStartSetupDovePeace:(id)peace actionType:(unsigned __int8)type payload:(id)payload autoStart:(BOOL)start;
- (void)_uiStartSetupWatch:(id)watch;
- (void)_uiStartSetupiOS:(id)s autoStart:(BOOL)start;
- (void)_uiStartTVLatencyBanner:(id)banner forActionType:(unsigned __int8)type;
- (void)_uiStartTVLatencySetup:(id)setup extraInfo:(id)info forActionType:(unsigned __int8)type;
- (void)_uiStartTVLatencySetup:(id)setup forActionType:(unsigned __int8)type withBLEDevice:(id)device;
- (void)_uiStartWiFiPasswordSharing:(id)sharing;
- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label extraInfo:(id)info;
- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label unlessApps:(id)apps extraInfo:(id)info;
- (void)_uiStopIfNeededWithDevice:(id)device;
- (void)_update;
- (void)_watchFastScanStartIfAllowed:(id)allowed;
- (void)_watchFastScanStop;
- (void)_watchFound:(id)found;
- (void)_watchStartMigration:(id)migration;
- (void)_wifiStateChanged;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)nfcTagReaderUIActivateWithEndpoint:(id)endpoint params:(id)params completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openSetupURL:(id)l;
- (void)prefsChanged;
- (void)proximityDeviceDidTrigger:(id)trigger;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)repairDevice:(id)device flags:(unsigned int)flags completion:(id)completion;
- (void)retriggerProximitySetup:(id)setup;
- (void)setPreventRepair:(BOOL)repair;
- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion;
- (void)showDevicePickerWithInfo:(id)info completion:(id)completion;
- (void)testHomeKitDeviceDetected:(id)detected;
- (void)testNFCUI:(id)i;
- (void)testPairUI:(id)i;
- (void)testProxCardKit:(id)kit;
- (void)testRepairUI:(id)i;
- (void)testSetupUIB238:(id)b238;
- (void)testSetupUIPasswordSharing:(id)sharing;
- (void)testSetupUIWHA:(id)a;
- (void)testSetupUIWatch:(id)watch;
- (void)testSetupUIiOS:(id)s;
- (void)testUIAppleTVSetup:(id)setup;
- (void)testUIShareAudio:(id)audio;
- (void)testUITVLatencyColorimeterSetup:(id)setup;
- (void)testUITVLatencySetup:(id)setup;
- (void)triggerHomeKitDeviceDetectedWithURL:(id)l completion:(id)completion;
@end

@implementation SDSetupAgent

+ (SDSetupAgent)sharedSetupAgent
{
  if (qword_100989AB8 != -1)
  {
    sub_1000A47D8();
  }

  v3 = gSDSetupAgent;

  return v3;
}

- (SDSetupAgent)init
{
  v6.receiver = self;
  v6.super_class = SDSetupAgent;
  v2 = [(SDSetupAgent *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    v4 = *(v2 + 46);
    *(v2 + 46) = v3;

    *(v2 + 252) = -1;
    *(v2 + 18) = -1;
    *(v2 + 69) = -1;
    *(v2 + 85) = -1;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_deviceDiscovery)
  {
    sub_1000A47EC();
    goto LABEL_6;
  }

  if (self->_scanTimer)
  {
LABEL_6:
    sub_1000A4804();
    goto LABEL_7;
  }

  if (!self->_pinPairService)
  {
    v5.receiver = self;
    v5.super_class = SDSetupAgent;
    [(SDSetupAgent *)&v5 dealloc];
    return;
  }

LABEL_7:
  v2 = sub_1000A481C();
  [(SDSetupAgent *)v2 setPreventRepair:v3, v4];
}

- (void)setPreventRepair:(BOOL)repair
{
  repairCopy = repair;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_preventRepair != repairCopy)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4834();
    }

    self->_preventRepair = repairCopy;

    [(SDSetupAgent *)self _update];
  }
}

- (id)descriptionWithLevel:(int)level
{
  v141 = 0;
  NSAppendPrintF(&v141, "-- SDSetupAgent --\n");
  v4 = v141;
  v140 = v4;
  if (self->_deviceDiscovery)
  {
    deviceDiscovery = self->_deviceDiscovery;
  }

  else
  {
    deviceDiscovery = @"off";
  }

  NSAppendPrintF(&v140, "Discovery: %@, %ld needSetup, %ld triggered\n", deviceDiscovery, [(NSMutableDictionary *)self->_devices count], [(NSMutableDictionary *)self->_triggeredDevices count]);
  v6 = v140;

  p_triggeredDevices = &self->_triggeredDevices;
  scanSeconds = self->_scanSeconds;
  if (scanSeconds >= 1)
  {
    v139 = v6;
    if (self->_scanTimer)
    {
      v9 = "on";
    }

    else
    {
      v9 = "off";
    }

    NSAppendPrintF(&v139, "ScanTimer: %s, %d seconds\n", v9, scanSeconds);
    v10 = v139;

    v6 = v10;
  }

  if (self->_remoteAlertHandle)
  {
    v138 = v6;
    NSAppendPrintF(&v138, "Client UI Active: %s\n", "yes");
    v11 = v138;

    v6 = v11;
  }

  selfCopy = self;
  if ([(NSMutableDictionary *)self->_devices count])
  {
    p_devices = &self->_devices;
  }

  else
  {
    p_devices = &self->_triggeredDevices;
  }

  v13 = *p_devices;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = v13;
  v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v134 objects:v147 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v135;
    do
    {
      v17 = 0;
      v18 = v6;
      do
      {
        if (*v135 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v134 + 1) + 8 * v17);
        v133 = v18;
        v20 = [(NSMutableDictionary *)*p_triggeredDevices objectForKeyedSubscript:v19];
        if (v20)
        {
          v21 = "TRIG";
        }

        else
        {
          v21 = "----";
        }

        v22 = [(NSMutableDictionary *)obj objectForKeyedSubscript:v19];
        v23 = [v22 description];
        NSAppendPrintF(&v133, "    %s %@\n", v21, v23);
        v6 = v133;

        v17 = v17 + 1;
        v18 = v6;
      }

      while (v15 != v17);
      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v134 objects:v147 count:16];
    }

    while (v15);
  }

  pinPairService = selfCopy->_pinPairService;
  if (pinPairService)
  {
    v132 = v6;
    NSAppendPrintF(&v132, "PINPair service: %@\n", pinPairService);
    v25 = v132;

    v6 = v25;
  }

  pinPairSession = selfCopy->_pinPairSession;
  if (pinPairSession)
  {
    v131 = v6;
    NSAppendPrintF(&v131, "PINPair session: %@, UUID %@\n", pinPairSession, selfCopy->_pinPairUUID);
    v27 = v131;

    v6 = v27;
  }

  if (selfCopy->_repairEnabled)
  {
    v130 = v6;
    NSAppendPrintF(&v130, "Problems: %#ll{flags}", selfCopy->_problemFlags, &unk_1007F4888);
    v28 = v130;

    if (selfCopy->_repairService)
    {
      v129 = v28;
      NSAppendPrintF(&v129, ", RepairService On");
      v29 = v129;

      v28 = v29;
    }

    wifiHealthMonitor = selfCopy->_wifiHealthMonitor;
    if (wifiHealthMonitor)
    {
      v128 = v28;
      NSAppendPrintF(&v128, ", %@", wifiHealthMonitor);
      v31 = v128;

      v28 = v31;
    }

    v127 = v28;
    NSAppendPrintF(&v127, "\n");
    v6 = v127;
  }

  repairSession = selfCopy->_repairSession;
  if (repairSession)
  {
    v126 = v6;
    peerDevice = [(SFDeviceRepairSession *)repairSession peerDevice];
    identifier = [peerDevice identifier];
    NSAppendPrintF(&v126, "RepairSession: Yes, %@\n", identifier);
    v35 = v126;

    v6 = v35;
  }

  watchSetupScanner = selfCopy->_watchSetupScanner;
  if (watchSetupScanner)
  {
    v125 = v6;
    NSAppendPrintF(&v125, "WatchScanner: %@\n", watchSetupScanner);
    v37 = v125;

    v6 = v37;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v38 = selfCopy->_watchSetupDevices;
  v39 = [(NSMutableDictionary *)v38 countByEnumeratingWithState:&v121 objects:v146 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v122;
    do
    {
      v42 = 0;
      v43 = v6;
      do
      {
        if (*v122 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v44 = *(*(&v121 + 1) + 8 * v42);
        v120 = v43;
        v45 = [(NSMutableDictionary *)selfCopy->_watchSetupDevices objectForKeyedSubscript:v44];
        NSAppendPrintF(&v120, "    %@\n", v45);
        v6 = v120;

        v42 = v42 + 1;
        v43 = v6;
      }

      while (v40 != v42);
      v40 = [(NSMutableDictionary *)v38 countByEnumeratingWithState:&v121 objects:v146 count:16];
    }

    while (v40);
  }

  v46 = +[SDStatusMonitor sharedMonitor];
  wifiPasswordSharingAvailability = [v46 wifiPasswordSharingAvailability];

  v119 = v6;
  if (selfCopy->_pwsGrantingEnabled)
  {
    v48 = "enabled";
  }

  else
  {
    v48 = "disabled";
  }

  NSAppendPrintF(&v119, "Wi-Fi Password Sharing: granting %s, requesting availability: %#{flags}\n", v48, wifiPasswordSharingAvailability, &unk_1007F49A0);
  v49 = v119;

  if (level <= 10)
  {
    v50 = +[SDAppleIDAgent sharedAgent];
    myAccount = [v50 myAccount];
    validationRecord = [myAccount validationRecord];

    myAppleIDPhoneHash = [(SDStatusMonitor *)selfCopy->_statusMonitor myAppleIDPhoneHash];
    v53 = [myAppleIDPhoneHash componentsSeparatedByString:{@", "}];

    if ([v53 count])
    {
      v118 = v49;
      NSAppendPrintF(&v118, "Status Monitor Phone Hashes:\n");
      v54 = v118;

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v55 = v53;
      v56 = [v55 countByEnumeratingWithState:&v114 objects:v145 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v115;
        do
        {
          v59 = 0;
          v60 = v54;
          do
          {
            if (*v115 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v113 = v60;
            v61 = SFHexStringForBase64EncodedString();
            NSAppendPrintF(&v113, "    %@\n", v61);
            v54 = v113;

            ++v59;
            v60 = v54;
          }

          while (v57 != v59);
          v57 = [v55 countByEnumeratingWithState:&v114 objects:v145 count:16];
        }

        while (v57);
      }

      v49 = v54;
    }

    validatedPhoneHashes = [validationRecord validatedPhoneHashes];

    if ([validatedPhoneHashes count])
    {
      v112 = v49;
      NSAppendPrintF(&v112, "Validation Record Phone Hashes:\n");
      v63 = v112;

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v64 = validatedPhoneHashes;
      v65 = [v64 countByEnumeratingWithState:&v108 objects:v144 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v109;
        do
        {
          v68 = 0;
          v69 = v63;
          do
          {
            if (*v109 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v70 = *(*(&v108 + 1) + 8 * v68);
            v107 = v69;
            NSAppendPrintF(&v107, "    %@\n", v70);
            v63 = v107;

            v68 = v68 + 1;
            v69 = v63;
          }

          while (v66 != v68);
          v66 = [v64 countByEnumeratingWithState:&v108 objects:v144 count:16];
        }

        while (v66);
      }

      v49 = v63;
    }

    myAppleIDEmailHash = [(SDStatusMonitor *)selfCopy->_statusMonitor myAppleIDEmailHash];
    v72 = [myAppleIDEmailHash componentsSeparatedByString:{@", "}];

    if ([v72 count])
    {
      v106 = v49;
      NSAppendPrintF(&v106, "Status Monitor Email Hashes:\n");
      v73 = v106;

      v105 = 0u;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      v74 = v72;
      v75 = [v74 countByEnumeratingWithState:&v102 objects:v143 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v103;
        do
        {
          v78 = 0;
          v79 = v73;
          do
          {
            if (*v103 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v101 = v79;
            v80 = SFHexStringForBase64EncodedString();
            NSAppendPrintF(&v101, "    %@\n", v80);
            v73 = v101;

            ++v78;
            v79 = v73;
          }

          while (v76 != v78);
          v76 = [v74 countByEnumeratingWithState:&v102 objects:v143 count:16];
        }

        while (v76);
      }

      v49 = v73;
    }

    validatedEmailHashes = [validationRecord validatedEmailHashes];

    if ([validatedEmailHashes count])
    {
      v100 = v49;
      NSAppendPrintF(&v100, "Validation Record Email Hashes:\n");
      v82 = v100;

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v83 = validatedEmailHashes;
      v84 = [v83 countByEnumeratingWithState:&v96 objects:v142 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v97;
        do
        {
          v87 = 0;
          v88 = v82;
          do
          {
            if (*v97 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v89 = *(*(&v96 + 1) + 8 * v87);
            v95 = v88;
            NSAppendPrintF(&v95, "    %@\n", v89);
            v82 = v95;

            v87 = v87 + 1;
            v88 = v82;
          }

          while (v85 != v87);
          v85 = [v83 countByEnumeratingWithState:&v96 objects:v142 count:16];
        }

        while (v85);
      }

      v49 = v82;
    }
  }

  return v49;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096818;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000A488C(v3, v4, v5);
    }
  }

  if (self->_profilesNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000968F8;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &self->_profilesNotifyToken, dispatchQueue, handler);
  }

  [(SDSetupAgent *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000969E8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000A48C4(v3, v4, v5);
    }
  }

  profilesNotifyToken = self->_profilesNotifyToken;
  if (profilesNotifyToken != -1)
  {
    notify_cancel(profilesNotifyToken);
    self->_profilesNotifyToken = -1;
  }

  [(SDSetupAgent *)self _ensureClientStopped];

  [(SDSetupAgent *)self _ensureServerStopped];
}

- (void)nfcTagReaderUIActivateWithEndpoint:(id)endpoint params:(id)params completion:(id)completion
{
  endpointCopy = endpoint;
  paramsCopy = params;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096B70;
  v15[3] = &unk_1008CE6B8;
  v15[4] = self;
  v16 = endpointCopy;
  v17 = paramsCopy;
  v18 = completionCopy;
  v12 = paramsCopy;
  v13 = endpointCopy;
  v14 = completionCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)openSetupURL:(id)l
{
  lCopy = l;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_remoteAlertHandle)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4918(lCopy);
    }

    objc_storeStrong(&self->_setupURL, l);
  }

  else
  {
    [(SDSetupAgent *)self _openSetupURL:lCopy];
  }
}

- (void)_openSetupURL:(id)l
{
  lCopy = l;
  v9[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v9[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v10[0] = &__kCFBooleanTrue;
  v10[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = 0;
  v6 = [v5 openSensitiveURL:lCopy withOptions:v4 error:&v8];
  v7 = v8;

  if (v6)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4958(lCopy);
    }
  }

  else if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_10096FEF8, "[SDSetupAgent _openSetupURL:]", 60, "### Open setup URL failed: %@, %{error}\n", lCopy, v7);
  }
}

- (void)prefsChanged
{
  v25 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  CFPrefs_GetData();
  v3 = [[NSData alloc] initWithBytes:&v25 length:0];
  bleAuthTagFilter = self->_bleAuthTagFilter;
  v5 = v3;
  v6 = bleAuthTagFilter;
  v7 = v6;
  if (v5 == v6)
  {

    v9 = v5;
LABEL_12:

    goto LABEL_13;
  }

  if ((v5 != 0) == (v6 == 0))
  {

LABEL_7:
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent prefsChanged]", 40, "AuthTag filter: %@ -> %@\n", self->_bleAuthTagFilter, v5);
    }

    v10 = v5;
    v9 = self->_bleAuthTagFilter;
    self->_bleAuthTagFilter = v10;
    goto LABEL_12;
  }

  v8 = [(NSData *)v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  v11 = CFPrefs_GetInt64() != 0;
  if (self->_cdpEnabled != v11)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4998();
    }

    self->_cdpEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_clientEnabled != v12)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A49F0();
    }

    self->_clientEnabled = v12;
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (!IsAppleInternalBuild())
  {
    v13 = 0;
  }

  if (self->_pwsAutoGrantingEnabled != v13)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4A48();
    }

    self->_pwsAutoGrantingEnabled = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  if (self->_pwsGrantingEnabled != v14)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4AA0();
    }

    self->_pwsGrantingEnabled = v14;
  }

  v15 = CFPrefs_GetInt64() != 0;
  if (self->_repairEnabled != v15)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4AF8();
    }

    self->_repairEnabled = v15;
  }

  *&self->_prefRepairAccounts = 0;
  v16 = SFIsDeviceAudioAccessory();
  self->_prefRepairVPN = v16;
  self->_prefRepairWiFi = v16;
  v17 = CFPrefs_GetInt64() != 0;
  if (self->_repairSilent != v17)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4B50();
    }

    self->_repairSilent = v17;
  }

  Int64 = CFPrefs_GetInt64();
  if (Int64 < 0)
  {
    v19 = -1;
  }

  else
  {
    v19 = Int64;
  }

  if (v19 >= 100000)
  {
    v19 = 100000;
  }

  v20 = v19;
  scanSeconds = self->_scanSeconds;
  if (v19 != scanSeconds)
  {
    if (dword_10096FEF8 <= 40)
    {
      if (dword_10096FEF8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_55;
        }

        LODWORD(scanSeconds) = self->_scanSeconds;
      }

      LogPrintF(&dword_10096FEF8, "[SDSetupAgent prefsChanged]", 40, "Scan seconds: %d -> %lld\n", scanSeconds, v20);
    }

LABEL_55:
    self->_scanSeconds = v20;
  }

  v22 = CFPrefs_GetInt64() != 0;
  if (self->_serverEnabled != v22)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4BA8();
    }

    self->_serverEnabled = v22;
  }

  v23 = CFPrefs_GetInt64() != 0;
  if (self->_watchMigrationEnabled != v23)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4C00();
    }

    self->_watchMigrationEnabled = v23;
  }

  v24 = CFPrefs_GetInt64() != 0;
  if (self->_watchSetupEnabled != v24)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4C58();
    }

    self->_watchSetupEnabled = v24;
  }

  [(SDSetupAgent *)self _update];
}

- (BOOL)reenableProxCardType:(unsigned __int8)type
{
  v5 = 0;
  if (type <= 24)
  {
    if (type <= 8)
    {
      switch(type)
      {
        case 1u:
          v6 = 153;
          break;
        case 5u:
          v6 = 168;
          break;
        case 6u:
          v6 = 152;
          break;
        default:
          return v5;
      }

      goto LABEL_36;
    }

    if (type <= 10)
    {
      if (type == 9)
      {
        v6 = 156;
      }

      else
      {
        v6 = 157;
      }

      goto LABEL_36;
    }

    if (type != 11)
    {
      if (type != 13)
      {
        return v5;
      }

      v6 = 169;
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  if (type <= 35)
  {
    if (type <= 31)
    {
      if (type != 25 && type != 30)
      {
        return v5;
      }

      v6 = 158;
      goto LABEL_36;
    }

    if (type != 32)
    {
      if (type != 33)
      {
        return v5;
      }

LABEL_24:
      v6 = 155;
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (type <= 89)
  {
    if (type != 36)
    {
      if (type != 43)
      {
        return v5;
      }

LABEL_31:
      v6 = 171;
      goto LABEL_36;
    }

LABEL_32:
    v6 = 170;
LABEL_36:
    *(&self->super.isa + v6) = 0;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4CCC(type);
    }

    LOBYTE(v5) = 1;
    return v5;
  }

  if (type == 90)
  {
    goto LABEL_32;
  }

  if (type == 100)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1000A4CB0(v5, a2, type);
      }
    }

    LOBYTE(v5) = 1;
    self->_renableB238SetupAfterWiFi = 1;
  }

  return v5;
}

- (void)repairDevice:(id)device flags:(unsigned int)flags completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009782C;
  v13[3] = &unk_1008CE6E0;
  v13[4] = self;
  v14 = deviceCopy;
  flagsCopy = flags;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)retriggerProximitySetup:(id)setup
{
  setupCopy = setup;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100097914;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = setupCopy;
  v6 = setupCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097D20;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v13 = deviceCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)showDevicePickerWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097E38;
  block[3] = &unk_1008CE758;
  v12 = infoCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = infoCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)triggerHomeKitDeviceDetectedWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098058;
  block[3] = &unk_1008CE758;
  v12 = lCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = lCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientEnabled)
  {
    [(SDSetupAgent *)self _ensureClientStarted];
  }

  else
  {
    [(SDSetupAgent *)self _ensureClientStopped];
  }

  if (self->_serverEnabled)
  {
    [(SDSetupAgent *)self _ensureServerStarted];
  }

  else
  {
    [(SDSetupAgent *)self _ensureServerStopped];
  }

  if (self->_repairEnabled && !self->_preventRepair)
  {

    [(SDSetupAgent *)self _repairEnsuredStarted];
  }

  else
  {

    [(SDSetupAgent *)self _repairEnsuredStopped];
  }
}

- (void)_ensureClientStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_iTunesNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100098BDC;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.itunesstored.accountschanged", &self->_iTunesNotifyToken, dispatchQueue, handler);
  }

  if (!self->_statusMonitor)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_appleAccountSignIn:" name:@"com.apple.sharingd.AppleAccountSignIn" object:0];
    [v4 addObserver:self selector:"_screenStateChanged" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    v5 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v5;
  }

  if (!self->_systemMonitor)
  {
    v7 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v7;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100098C58;
    v52[3] = &unk_1008CDEA0;
    v52[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v52];
    [(CUSystemMonitor *)self->_systemMonitor setCallChangedHandler:&stru_1008CE778];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100098C60;
    v51[3] = &unk_1008CDEA0;
    v51[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenLockedChangedHandler:v51];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100098C68;
    v50[3] = &unk_1008CDEA0;
    v50[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v50];
    v9 = self->_systemMonitor;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100098C70;
    v49[3] = &unk_1008CDEA0;
    v49[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v49];
  }

  scanEligible = self->_scanEligible;
  screenOn = [(SDStatusMonitor *)self->_statusMonitor screenOn];
  self->_scanEligible = screenOn;
  v12 = scanEligible;
  if (scanEligible == screenOn)
  {
    goto LABEL_19;
  }

  if (dword_10096FEF8 > 30)
  {
    v12 = screenOn;
    goto LABEL_19;
  }

  if (dword_10096FEF8 == -1)
  {
    v15 = _LogCategory_Initialize();
    LOBYTE(screenOn) = self->_scanEligible;
    v12 = screenOn;
    if (!v15)
    {
LABEL_19:
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_16:
      self->_shouldScan = 0;
      goto LABEL_29;
    }
  }

  v13 = "no";
  if (scanEligible)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (screenOn)
  {
    v13 = "yes";
  }

  LogPrintF(&dword_10096FEF8, "[SDSetupAgent _ensureClientStarted]", 30, "ScanEligible: %s -> %s\n", v14, v13);
  if (!self->_scanEligible)
  {
    goto LABEL_16;
  }

LABEL_20:
  if ((scanEligible & 1) == 0)
  {
    self->_shouldScan = 1;
    scanTimer = self->_scanTimer;
    if (scanTimer)
    {
      v17 = scanTimer;
      dispatch_source_cancel(v17);
      v18 = self->_scanTimer;
      self->_scanTimer = 0;
    }

    scanSeconds = self->_scanSeconds;
    if (scanSeconds >= 1)
    {
      if (dword_10096FEF8 <= 30)
      {
        if (dword_10096FEF8 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }

          scanSeconds = self->_scanSeconds;
        }

        LogPrintF(&dword_10096FEF8, "[SDSetupAgent _ensureClientStarted]", 30, "Start scan timer for %{dur}\n", scanSeconds);
      }

LABEL_28:
      v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v21 = self->_scanTimer;
      self->_scanTimer = v20;

      v22 = self->_scanTimer;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100098CAC;
      v48[3] = &unk_1008CDEA0;
      v48[4] = self;
      dispatch_source_set_event_handler(v22, v48);
      v23 = 1000000000 * self->_scanSeconds;
      v24 = self->_scanTimer;
      v25 = dispatch_time(0, v23);
      dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, v23 / 0xA);
      dispatch_resume(self->_scanTimer);
    }
  }

LABEL_29:
  if (self->_shouldScan)
  {
    if (!self->_deviceDiscovery)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4F08();
      }

      v26 = objc_alloc_init(SFDeviceDiscovery);
      deviceDiscovery = self->_deviceDiscovery;
      self->_deviceDiscovery = v26;

      [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:5];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:235011968];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setFastScanMode:2];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"SetupAgent"];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:20];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:-70];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100098CB4;
      v47[3] = &unk_1008CE7A0;
      v47[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v47];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100098CC0;
      v46[3] = &unk_1008CE7A0;
      v46[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v46];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10002FBEC;
      v45[3] = &unk_1008CE7C8;
      v45[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v45];
      [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1008CE7E8];
    }

    if (self->_watchSetupEnabled && !self->_watchSetupScanner)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4F3C();
      }

      v28 = [[SFBLEScanner alloc] initWithType:17];
      watchSetupScanner = self->_watchSetupScanner;
      self->_watchSetupScanner = v28;

      [(SFBLEScanner *)self->_watchSetupScanner setDispatchQueue:self->_dispatchQueue];
      [(SFBLEScanner *)self->_watchSetupScanner setChangeFlags:13];
      [(SFBLEScanner *)self->_watchSetupScanner setRssiThreshold:-60];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100098D7C;
      v44[3] = &unk_1008CE810;
      v44[4] = self;
      [(SFBLEScanner *)self->_watchSetupScanner setDeviceFoundHandler:v44];
      [(SFBLEScanner *)self->_watchSetupScanner setDeviceLostHandler:&stru_1008CE850];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100098E84;
      v43[3] = &unk_1008CE878;
      v43[4] = self;
      [(SFBLEScanner *)self->_watchSetupScanner setDeviceChangedHandler:v43];
      [(SFBLEScanner *)self->_watchSetupScanner activateWithCompletion:&stru_1008CE898];
      if (!self->_proximityController)
      {
        v30 = +[SDProximityController sharedController];
        proximityController = self->_proximityController;
        self->_proximityController = v30;
      }
    }
  }

  else
  {
    v32 = self->_scanTimer;
    if (v32)
    {
      v33 = v32;
      dispatch_source_cancel(v33);
      v34 = self->_scanTimer;
      self->_scanTimer = 0;
    }

    if (self->_deviceDiscovery)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4EA0();
      }

      [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
      v35 = self->_deviceDiscovery;
      self->_deviceDiscovery = 0;

      [(NSMutableDictionary *)self->_devices removeAllObjects];
      devices = self->_devices;
      self->_devices = 0;

      [(SDSetupAgent *)self _resetTriggers];
    }

    [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
    unoteTVLatencySetup = self->_unoteTVLatencySetup;
    self->_unoteTVLatencySetup = 0;

    watchFastScanTimer = self->_watchFastScanTimer;
    if (watchFastScanTimer)
    {
      v39 = watchFastScanTimer;
      dispatch_source_cancel(v39);
      v40 = self->_watchFastScanTimer;
      self->_watchFastScanTimer = 0;
    }

    if (self->_watchSetupScanner)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4ED4();
      }

      [(SFBLEScanner *)self->_watchSetupScanner invalidate];
      v41 = self->_watchSetupScanner;
      self->_watchSetupScanner = 0;

      [(NSMutableDictionary *)self->_watchSetupDevices removeAllObjects];
      watchSetupDevices = self->_watchSetupDevices;
      self->_watchSetupDevices = 0;

      self->_triggeredUIWatchSetup = 0;
    }
  }
}

- (void)_ensureClientStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  iTunesNotifyToken = self->_iTunesNotifyToken;
  if (iTunesNotifyToken != -1)
  {
    notify_cancel(iTunesNotifyToken);
    self->_iTunesNotifyToken = -1;
  }

  if (self->_statusMonitor)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.sharingd.AppleAccountSignIn" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  if (self->_deviceDiscovery)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_1000A50E8(v7, v8, v9);
      }
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  self->_scanEligible = 0;
  scanTimer = self->_scanTimer;
  if (scanTimer)
  {
    v13 = scanTimer;
    dispatch_source_cancel(v13);
    v14 = self->_scanTimer;
    self->_scanTimer = 0;
  }

  self->_shouldScan = 0;
  [(SDSetupAgent *)self _resetTriggers];
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v16 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;
  }

  [(SFDeviceRepairSession *)self->_repairSession invalidate];
  repairSession = self->_repairSession;
  self->_repairSession = 0;

  setupURL = self->_setupURL;
  self->_setupURL = 0;

  [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
  unoteTVLatencySetup = self->_unoteTVLatencySetup;
  self->_unoteTVLatencySetup = 0;

  watchFastScanTimer = self->_watchFastScanTimer;
  if (watchFastScanTimer)
  {
    v24 = watchFastScanTimer;
    dispatch_source_cancel(v24);
    v25 = self->_watchFastScanTimer;
    self->_watchFastScanTimer = 0;
  }

  if (self->_watchSetupScanner)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v20 = _LogCategory_Initialize(), v20))
      {
        sub_1000A5104(v20, v21, v22);
      }
    }

    [(SFBLEScanner *)self->_watchSetupScanner invalidate];
    watchSetupScanner = self->_watchSetupScanner;
    self->_watchSetupScanner = 0;
  }

  [(NSMutableDictionary *)self->_watchSetupDevices removeAllObjects];
  watchSetupDevices = self->_watchSetupDevices;
  self->_watchSetupDevices = 0;

  self->_triggeredUIWatchSetup = 0;
}

- (void)_launchAppWithMachServiceName:(id)name
{
  nameCopy = name;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5120(nameCopy);
  }

  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    mach_service = xpc_connection_create_mach_service(uTF8String, self->_dispatchQueue, 0);
    xpc_connection_set_event_handler(mach_service, &stru_1008CE8D8);
    xpc_connection_activate(mach_service);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, "SharingXPCLaunch", 1);
    xpc_connection_send_message(mach_service, v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009939C;
    v9[3] = &unk_1008CE028;
    v10 = mach_service;
    v11 = nameCopy;
    v8 = mach_service;
    xpc_connection_send_barrier(v8, v9);
  }
}

- (void)_postDeviceSetupNotificationForDevice:(id)device present:(BOOL)present
{
  presentCopy = present;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v11[0] = @"deviceID";
    v11[1] = @"needsSetup";
    v12[0] = uUIDString;
    v8 = &__kCFBooleanFalse;
    if (presentCopy && [deviceCopy needsSetup])
    {
      v8 = &__kCFBooleanTrue;
    }

    v12[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = +[NSDistributedNotificationCenter defaultCenter];
    [v10 postNotificationName:@"com.apple.sharing.DeviceSetup" object:@"com.apple.sharingd" userInfo:v9 deliverImmediately:1];
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A51E4(v9);
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000995F0;
  v7[3] = &unk_1008CE028;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009970C;
  v7[3] = &unk_1008CE028;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099854;
  block[3] = &unk_1008CE900;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_appleAccountSignIn:(id)in
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000999A8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_primaryAccountChanged
{
  systemMonitor = self->_systemMonitor;
  if (systemMonitor)
  {
    manateeAvailable = [(CUSystemMonitor *)systemMonitor manateeAvailable];
    if (self->_d2dEncryptionAvailable != manateeAvailable)
    {
      v5 = manateeAvailable;
      self->_d2dEncryptionAvailable = manateeAvailable;
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A5340(v5);
      }

      [(SDSetupAgent *)self _resetTriggers];
    }
  }
}

- (void)_iTunesAccountsChanged
{
  selfCopy = self;
  if (self->_triggeredUIB238Setup || self->_triggeredUIRepair)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000A5380(self, a2, v2);
      }
    }

    [(SDSetupAgent *)selfCopy _resetTriggers];
  }
}

- (void)_resetTriggers
{
  [(NSMutableDictionary *)self->_triggeredDevices removeAllObjects];
  triggeredDevices = self->_triggeredDevices;
  self->_triggeredDevices = 0;

  *&self->_triggeredUIWHASetup = 0;
  self->_triggeredUIAuthenticateAccounts = 0;
  *&self->_triggeredUIAppleTVPair = 0;
  *&self->_triggeredUIB238Setup = 0;
}

- (void)_scanTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1000A539C(v3, v4, v5);
    }
  }

  scanTimer = self->_scanTimer;
  if (scanTimer)
  {
    v7 = scanTimer;
    dispatch_source_cancel(v7);
    v8 = self->_scanTimer;
    self->_scanTimer = 0;
  }

  self->_shouldScan = 0;

  [(SDSetupAgent *)self _update];
}

- (BOOL)_screenLocked
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v2 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagLocked = [v2 deviceKeyBagLocked];

  return deviceKeyBagLocked;
}

- (void)_screenStateChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099CD8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_shouldOfferPassword:(id)password
{
  passwordCopy = password;
  v20 = 0;
  requestSSID = [passwordCopy requestSSID];
  contactIdentifier = [passwordCopy contactIdentifier];

  if (!contactIdentifier)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_1000A54F4(v6, v7, v8);
      }
    }

    goto LABEL_23;
  }

  v9 = +[SDStatusMonitor sharedMonitor];
  contactIdentifier2 = [passwordCopy contactIdentifier];
  v11 = [v9 contactIdentifierIsBlocked:contactIdentifier2];

  if (v11)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        sub_1000A54D8(v12, v13, v14);
      }
    }

    goto LABEL_23;
  }

  if (!requestSSID)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        sub_1000A54BC(v12, v13, v14);
      }
    }

LABEL_23:
    v15 = 0;
    v17 = 0;
    goto LABEL_11;
  }

  v21 = @"ssid";
  v22 = requestSSID;
  [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v15 = WiFiCopyNetworkInfo();
  v19 = 0;
  if (CFDictionaryGetInt64Ranged() == 3)
  {
    v16 = SFShareablePasswordForSSID();
    v17 = v16 != 0;
  }

  else
  {
    v17 = 0;
  }

  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5440(requestSSID, v17);
  }

LABEL_11:

  return v17;
}

- (void)_uiLockStatusChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A218;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_uiStartAppleTVSetup:(id)setup extraInfo:(id)info
{
  if (info)
  {
    setupCopy = setup;
    v8 = [info mutableCopy];
  }

  else
  {
    setupCopy2 = setup;
    v8 = +[NSMutableDictionary dictionary];
  }

  v12 = v8;
  v10 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [setup deviceModelCode]);
  [v12 setObject:v10 forKeyedSubscript:@"deviceModelCode"];

  v11 = [v12 copy];
  [(SDSetupAgent *)self _uiStartWithDevice:setup viewControllerName:@"TVSetupUIService.TVSetupAlertViewController" label:@"AppleTVSetupUI" unlessApps:0 extraInfo:v11];
}

- (void)_uiStartHomeKitDeviceDetectedWithURL:(id)l
{
  absoluteString = [l absoluteString];
  if (absoluteString)
  {
    v5 = objc_alloc_init(SFDevice);
    v6 = +[NSUUID UUID];
    [v5 setIdentifier:v6];

    v8 = @"urlStr";
    v9 = absoluteString;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [(SDSetupAgent *)self _uiStartWithDevice:v5 viewControllerName:@"HomeKitDeviceDetectedMainController" label:@"HomeKitDeviceDetected" unlessApps:0 extraInfo:v7];
  }
}

- (void)_uiStartRepair:(id)repair flags:(unsigned int)flags
{
  v4 = *&flags;
  v9 = @"repairFlags";
  repairCopy = repair;
  v7 = [NSNumber numberWithUnsignedInt:v4];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(SDSetupAgent *)self _uiStartWithDevice:repairCopy viewControllerName:@"RepairMainController" label:@"RepairUI" unlessApps:0 extraInfo:v8];
}

- (void)_uiStartSetupB238:(id)b238 extraInfo:(id)info
{
  if (info)
  {
    b238Copy = b238;
    v8 = [info mutableCopy];
  }

  else
  {
    b238Copy2 = b238;
    v8 = objc_opt_new();
  }

  v12 = v8;
  v10 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [b238 deviceModelCode]);
  [v12 setValue:v10 forKey:@"deviceModelCode"];

  [b238 setDeviceActionType:33];
  v11 = [v12 copy];
  [(SDSetupAgent *)self _uiStartWithDevice:b238 viewControllerName:@"HDSViewService.HomePodSetupFlowViewController" label:@"B238SetupUI" unlessApps:0 extraInfo:v11];
}

- (void)_uiStartSetupiOS:(id)s autoStart:(BOOL)start
{
  startCopy = start;
  v11[0] = @"autoStart";
  sCopy = s;
  v7 = [NSNumber numberWithBool:startCopy];
  v12[0] = v7;
  v11[1] = @"deviceClassCode";
  v8 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sCopy deviceClassCode]);
  v12[1] = v8;
  v11[2] = @"deviceModelCode";
  v9 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [sCopy deviceModelCode]);
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [(SDSetupAgent *)self _uiStartWithDevice:sCopy viewControllerName:@"SharingViewService.D2DSetupFlowViewController" label:@"iOSSetupUI" unlessApps:0 extraInfo:v10];
}

- (void)_uiStartSetupDovePeace:(id)peace actionType:(unsigned __int8)type payload:(id)payload autoStart:(BOOL)start
{
  startCopy = start;
  typeCopy = type;
  peaceCopy = peace;
  payloadCopy = payload;
  if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartSetupDovePeace:actionType:payload:autoStart:]", 40, "in _uiStartSetupDovePeace notice. actionType: %i DovePeacePayload %@", typeCopy, payloadCopy);
  }

  if (payloadCopy)
  {
    v12 = payloadCopy;
  }

  else
  {
    v12 = &off_10090B868;
  }

  if ([(SDSetupAgent *)self _deviceHandlesDovePeaceSetup])
  {
    v18[0] = @"dpActionType";
    v13 = [NSNumber numberWithUnsignedChar:typeCopy];
    v19[0] = v13;
    v19[1] = v12;
    v18[1] = @"dpPayload";
    v18[2] = @"autoStart";
    v14 = [NSNumber numberWithBool:startCopy];
    v19[2] = v14;
    v18[3] = @"deviceClassCode";
    v15 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [peaceCopy deviceClassCode]);
    v19[3] = v15;
    v18[4] = @"deviceModelCode";
    v16 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [peaceCopy deviceModelCode]);
    v19[4] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
    [(SDSetupAgent *)self _uiStartWithDevice:peaceCopy viewControllerName:@"BYDovePeaceRemoteViewController" label:@"dovePeaceSetupUI" unlessApps:0 extraInfo:v17];
  }
}

- (BOOL)_deviceHandlesDovePeaceSetup
{
  if (SFDeviceClassCodeGet() == 3)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = SFDeviceClassCodeGet();
    if (v2 != 1)
    {
      LOBYTE(v2) = SFDeviceClassCodeGet() == 2;
    }
  }

  return v2;
}

- (void)_uiStartSetupWatch:(id)watch
{
  watchCopy = watch;
  v4 = +[NSMutableDictionary dictionary];
  if (!_os_feature_enabled_impl())
  {
    name = [watchCopy name];
    if (name)
    {
      [v4 setObject:name forKeyedSubscript:@"advertisingName"];
    }

    bleDevice = [watchCopy bleDevice];
    v12 = objc_msgSend_advertisementFields(bleDevice);
    v13 = [v12 objectForKeyedSubscript:@"wpv"];

    if (v13)
    {
      [v4 setObject:v13 forKeyedSubscript:@"pairingVersion"];
    }

    goto LABEL_9;
  }

  bleDevice2 = [watchCopy bleDevice];
  v6 = objc_msgSend_advertisementFields(bleDevice2);
  name = [v6 objectForKeyedSubscript:@"wd"];

  if (name)
  {
    [v4 setObject:name forKeyedSubscript:@"watchData"];
LABEL_9:

    [(SDSetupAgent *)self _uiStartWithDevice:watchCopy viewControllerName:@"WatchSetupViewControllerProxy" label:@"WatchSetupUI" unlessApps:&off_10090FF50 extraInfo:v4];
    goto LABEL_10;
  }

  if (dword_10096FEF8 <= 90)
  {
    if (dword_10096FEF8 != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      sub_1000A5510(v8, v9, v10);
    }
  }

LABEL_10:
}

- (void)_uiStartAuthenticateAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = @"SharingViewService.AuthenticateAccountsFlowViewController";
  if (_os_feature_enabled_impl() && [accountsCopy osVersion] > 0xC)
  {
    v4 = @"AppleIDSetupUIService.SetupAlertViewController";
  }

  [(SDSetupAgent *)self _uiStartWithDevice:accountsCopy viewControllerName:v4 label:@"AuthenticateAccountsUI" unlessApps:0 extraInfo:0];
}

- (void)_uiStartTVLatencySetup:(id)setup forActionType:(unsigned __int8)type withBLEDevice:(id)device
{
  typeCopy = type;
  setupCopy = setup;
  deviceCopy = device;
  DeviceClass = GestaltGetDeviceClass();
  v10 = @"ColorCalibration";
  if (typeCopy == 25)
  {
    v10 = &stru_1008EFBD0;
  }

  v11 = v10;
  if ((DeviceClass - 3) <= 0xFFFFFFFD)
  {
    sub_1000A55AC(deviceCopy, v11);
  }

  else if (-[SDSetupAgent _screenLocked](self, "_screenLocked") || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 deviceUIUnlocked], v12, (v13 & 1) == 0))
  {
    if (self->_triggeredUITVLatencySetup || self->_unoteTVLatencySetup)
    {
      sub_1000A552C(v11, deviceCopy);
    }

    else
    {
      [(SDSetupAgent *)self _uiStartTVLatencyBanner:setupCopy forActionType:typeCopy];
    }
  }

  else if (self->_triggeredUITVLatencySetup)
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartTVLatencySetup:forActionType:withBLEDevice:]", 50, "Ignoring proximity TVLatency%@ with another %@\n", v11, deviceCopy);
    }
  }

  else
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartTVLatencySetup:forActionType:withBLEDevice:]", 50, "Triggering proximity TVLatency%@ with %@\n", v11, deviceCopy);
    }

    self->_triggeredUITVLatencySetup = 1;
    [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
    unoteTVLatencySetup = self->_unoteTVLatencySetup;
    self->_unoteTVLatencySetup = 0;

    [(SDSetupAgent *)self _uiStartTVLatencySetup:setupCopy extraInfo:0 forActionType:typeCopy];
  }
}

- (void)_uiStartTVLatencyBanner:(id)banner forActionType:(unsigned __int8)type
{
  typeCopy = type;
  bannerCopy = banner;
  unoteTVLatencySetup = self->_unoteTVLatencySetup;
  if (!unoteTVLatencySetup || (-[CUUserNotificationSession identifier](unoteTVLatencySetup, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), [bannerCopy identifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "UUIDString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, (v11 & 1) == 0))
  {
    DeviceClass = GestaltGetDeviceClass();
    if (DeviceClass == 1 && (DeviceClass = MGIsQuestionValid(), DeviceClass))
    {
      DeviceClass = MGGetBoolAnswer();
      v15 = DeviceClass ^ 1;
    }

    else
    {
      v15 = 1;
    }

    if (typeCopy == 30 && v15)
    {
      if (dword_10096FEF8 <= 50)
      {
        if (dword_10096FEF8 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
        {
          sub_1000A562C(DeviceClass, v13, v14);
        }
      }
    }

    else
    {
      [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
      v16 = objc_alloc_init(CUUserNotificationSession);
      v17 = self->_unoteTVLatencySetup;
      self->_unoteTVLatencySetup = v16;

      [(CUUserNotificationSession *)v16 setBundleID:@"com.apple.SFUserNotificationTVLatency"];
      [(CUUserNotificationSession *)v16 setCategoryID:@"SFUserNotificationTVLatency"];
      [(CUUserNotificationSession *)v16 setDispatchQueue:self->_dispatchQueue];
      v18 = SFLocalizedStringForKey();
      [(CUUserNotificationSession *)v16 setHeader:v18];

      [(CUUserNotificationSession *)v16 setFlags:1];
      identifier = [bannerCopy identifier];
      uUIDString = [identifier UUIDString];
      [(CUUserNotificationSession *)v16 setIdentifier:uUIDString];

      if (typeCopy == 25)
      {
        [(CUUserNotificationSession *)v16 setTitleKey:@"TV_LATENCY_TITLE"];
        v21 = SFAddSuffixForCurrentDeviceClass();
        [(CUUserNotificationSession *)v16 setBodyKey:v21];
      }

      else
      {
        v22 = SFLocalizedStringForKeyInStringsFileNamed();
        [(CUUserNotificationSession *)v16 setTitleKey:v22];

        v21 = SFAddSuffixForCurrentDeviceClass();
        v23 = SFLocalizedStringForKeyInStringsFileNamed();
        [(CUUserNotificationSession *)v16 setBodyKey:v23];
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10009B1E0;
      v24[3] = &unk_1008CE928;
      v24[4] = self;
      v25 = bannerCopy;
      v26 = typeCopy;
      [(CUUserNotificationSession *)v16 setActionHandler:v24];
      [(CUUserNotificationSession *)v16 activate];
    }
  }
}

- (void)_uiStartTVLatencySetup:(id)setup extraInfo:(id)info forActionType:(unsigned __int8)type
{
  if (type == 25)
  {
    v6 = @"TVLatencySetupMainController";
  }

  else
  {
    v6 = @"TVLatencyColorimeterSetupMainController";
  }

  [(SDSetupAgent *)self _uiStartWithDevice:setup viewControllerName:v6 label:@"TVLatencySetupUI" unlessApps:0 extraInfo:info];
}

- (void)_uiStartWiFiPasswordSharing:(id)sharing
{
  sharingCopy = sharing;
  v5 = +[SDHotspotAgent sharedAgent];
  contactIdentifier = [sharingCopy contactIdentifier];
  requestSSID = [sharingCopy requestSSID];
  v10 = requestSSID;
  if (!contactIdentifier)
  {
    sub_1000A5878(requestSSID, v8, v9);
    goto LABEL_19;
  }

  if (!requestSSID)
  {
    sub_1000A5818(0, v8, v9);
    goto LABEL_19;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  computerName = [(SDStatusMonitor *)self->_statusMonitor computerName];
  myAppleIDEmailHash = [(SDStatusMonitor *)self->_statusMonitor myAppleIDEmailHash];
  myAppleIDPhoneHash = [(SDStatusMonitor *)self->_statusMonitor myAppleIDPhoneHash];
  v17 = myAppleIDPhoneHash;
  if (!(myAppleIDEmailHash | myAppleIDPhoneHash) && dword_10096FEF8 <= 60)
  {
    if (dword_10096FEF8 != -1 || (myAppleIDPhoneHash = _LogCategory_Initialize(), myAppleIDPhoneHash))
    {
      sub_1000A56A8(myAppleIDPhoneHash, v15, v16);
    }
  }

  [v11 setObject:contactIdentifier forKeyedSubscript:@"cid"];
  if (computerName)
  {
    [v11 setObject:computerName forKeyedSubscript:@"dn"];
  }

  if (myAppleIDEmailHash)
  {
    [v11 setObject:myAppleIDEmailHash forKeyedSubscript:@"eh"];
  }

  if (v17)
  {
    [v11 setObject:v17 forKeyedSubscript:@"ph"];
  }

  [v11 setObject:v10 forKeyedSubscript:@"nw"];
  if ([v5 isTetheringInUse])
  {
    [v5 hotspotName];
    v18 = v25 = v5;
    v19 = [v10 isEqualToString:v18];

    v5 = v25;
    if (v19)
    {
      v24 = contactIdentifier;
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      hotspotName = [v25 hotspotName];
      hotspotPassword = [v25 hotspotPassword];
      v22 = WPAHashPSK();

      if (v22)
      {
        sub_1000A56C4(v22, &v27, &v28, &v26);
        v23 = v26;
      }

      else
      {
        v23 = [NSString stringWithUTF8String:v29];
        if ([v23 length] == 64)
        {
          [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hs"];
          [v11 setObject:v23 forKeyedSubscript:@"psk"];

          contactIdentifier = v24;
          v5 = v25;
          goto LABEL_18;
        }
      }

      contactIdentifier = v24;

      v5 = v25;
      goto LABEL_19;
    }
  }

LABEL_18:
  [(SDSetupAgent *)self _uiStartWithDevice:sharingCopy viewControllerName:@"SharingViewService.PasswordSharingFlowViewController" xpcEndpoint:0 label:@"WiFiPasswordSharing" extraInfo:v11];

LABEL_19:
}

- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label unlessApps:(id)apps extraInfo:(id)info
{
  deviceCopy = device;
  nameCopy = name;
  endpointCopy = endpoint;
  labelCopy = label;
  appsCopy = apps;
  infoCopy = info;
  v34 = deviceCopy;
  v35 = endpointCopy;
  v33 = appsCopy;
  if (appsCopy)
  {
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v55 = 0;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartWithDevice:viewControllerName:xpcEndpoint:label:unlessApps:extraInfo:]", 30, "%@: Checking if apps are frontmost: %##@\n", labelCopy, appsCopy);
    }

    v22 = dispatch_group_create();
    v23 = [BKSApplicationStateMonitor alloc];
    v24 = [v23 initWithBundleIDs:appsCopy states:BKSApplicationStateAll];
    selfCopy = self;
    v32 = infoCopy;
    v21 = labelCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = appsCopy;
    v25 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v25)
    {
      v26 = *v51;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v50 + 1) + 8 * i);
          dispatch_group_enter(v22);
          if (dword_10096FEF8 <= 20 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartWithDevice:viewControllerName:xpcEndpoint:label:unlessApps:extraInfo:]", 20, "%@: Checking frontmost state of %@\n", v21, v28);
          }

          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10009BA38;
          v45[3] = &unk_1008CE950;
          v46 = v21;
          v47 = v28;
          v49 = v54;
          v48 = v22;
          [v24 applicationInfoForApplication:v28 completion:v45];
        }

        v25 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v25);
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009BAE4;
    block[3] = &unk_1008CE978;
    v44 = v54;
    block[4] = selfCopy;
    v38 = v34;
    v39 = nameCopy;
    v40 = v35;
    v41 = v21;
    v42 = v32;
    v43 = v24;
    v30 = v24;
    dispatch_group_notify(v22, dispatchQueue, block);

    _Block_object_dispose(v54, 8);
    infoCopy = v32;
  }

  else
  {
    selfCopy2 = self;
    v21 = labelCopy;
    [(SDSetupAgent *)selfCopy2 _uiStartWithDevice:deviceCopy viewControllerName:nameCopy xpcEndpoint:endpointCopy label:labelCopy extraInfo:infoCopy];
  }
}

- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label extraInfo:(id)info
{
  deviceCopy = device;
  nameCopy = name;
  endpointCopy = endpoint;
  labelCopy = label;
  infoCopy = info;
  bleDevice = [deviceCopy bleDevice];
  smoothedRSSI = [bleDevice smoothedRSSI];
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  v52 = uUIDString;
  v49 = bleDevice;
  v50 = deviceCopy;
  if (uUIDString)
  {
    v47 = nameCopy;
    v48 = labelCopy;
    v20 = objc_msgSend_advertisementFields(bleDevice);
    Int64Ranged = CFDictionaryGetInt64Ranged();

    v22 = +[NSUUID UUID];
    uUIDString2 = [v22 UUIDString];

    v23 = infoCopy;
    v24 = endpointCopy;
    if ([bleDevice foundTicks])
    {
      mach_absolute_time();
      [bleDevice foundTicks];
      UpTicksToSecondsF();
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v54[0] = @"colorCode";
    v27 = [NSNumber numberWithUnsignedChar:Int64Ranged];
    v55[0] = v27;
    v54[1] = @"deviceActionType";
    v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [deviceCopy deviceActionType]);
    v55[1] = v28;
    v55[2] = v52;
    v54[2] = @"deviceIdentifier";
    v54[3] = @"name";
    name = [deviceCopy name];
    v30 = name;
    v31 = &stru_1008EFBD0;
    if (name)
    {
      v31 = name;
    }

    v55[3] = v31;
    v54[4] = @"osVersion";
    v32 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [deviceCopy osVersion]);
    v55[4] = v32;
    v54[5] = @"rssi";
    v33 = [NSNumber numberWithInteger:smoothedRSSI];
    v55[5] = v33;
    v55[6] = uUIDString2;
    v54[6] = @"sessionUUID";
    v54[7] = @"triggerSecs";
    v34 = [NSNumber numberWithDouble:v26];
    v55[7] = v34;
    v35 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:8];

    infoCopy = v23;
    v36 = v23;
    if (v36)
    {
      v37 = [v35 mutableCopy];
      [v37 addEntriesFromDictionary:v36];

      v35 = v37;
    }

    nameCopy = v47;
    if ([v47 isEqualToString:@"HDSViewService.HomePodSetupFlowViewController"])
    {
      v38 = @"com.apple.HDSViewService";
    }

    else
    {
      v38 = @"com.apple.SharingViewService";
    }

    endpointCopy = v24;
    if ([v47 isEqualToString:@"BYDovePeaceRemoteViewController"])
    {
      labelCopy = v48;
      if ([(SDSetupAgent *)self _deviceHandlesDovePeaceSetup])
      {
        if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A597C();
        }

        v38 = @"com.apple.TDGSharingViewService";
      }
    }

    else
    {
      labelCopy = v48;
    }

    if ([v47 isEqualToString:@"TVSetupUIService.TVSetupAlertViewController"])
    {
      v38 = @"com.apple.TVSetupUIService";
    }

    if ([v47 isEqualToString:@"AppleIDSetupUIService.SetupAlertViewController"])
    {
      v38 = @"com.apple.AppleIDSetupUIService";
    }

    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A59C4(v38);
    }

    v39 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v38 viewControllerClassName:v47];
    v40 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    if (endpointCopy)
    {
      _endpoint = [endpointCopy _endpoint];
      [v40 setXpcEndpoint:_endpoint];
    }

    [v40 setUserInfo:v35];
    remoteAlertHandle = self->_remoteAlertHandle;
    if (remoteAlertHandle)
    {
      [(SBSRemoteAlertHandle *)remoteAlertHandle removeObserver:self];
      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    }

    v43 = [SBSRemoteAlertHandle newHandleWithDefinition:v39 configurationContext:v40];
    v44 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v43;

    v45 = self->_remoteAlertHandle;
    if (v45)
    {
      [(SBSRemoteAlertHandle *)v45 addObserver:self];
      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:0];
      if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartWithDevice:viewControllerName:xpcEndpoint:label:extraInfo:]", 50, "%@: StartRemoteAlert SID %@, RSSI %ld", labelCopy, uUIDString2, smoothedRSSI);
      }

      goto LABEL_35;
    }

    if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5A04(labelCopy);
    }

    v46 = 4294960556;
  }

  else
  {
    if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartWithDevice:viewControllerName:xpcEndpoint:label:extraInfo:]", 60, "%@: ### No device identifier for %@\n", labelCopy, deviceCopy);
    }

    v35 = 0;
    v36 = 0;
    v39 = 0;
    v40 = 0;
    uUIDString2 = 0;
    v46 = 4294960535;
  }

  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_10096FEF8, "[SDSetupAgent _uiStartWithDevice:viewControllerName:xpcEndpoint:label:extraInfo:]", 60, "%@: ### Start UI failed: %#m\n", labelCopy, v46);
  }

LABEL_35:
}

- (void)_uiStartForMacWithDevice:(id)device label:(id)label extraInfo:(id)info
{
  deviceCopy = device;
  labelCopy = label;
  infoCopy = info;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5A44(labelCopy);
  }
}

- (void)_uiStopIfNeededWithDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (dword_10096FEF8 <= 30)
  {
    v6 = deviceCopy;
    if (dword_10096FEF8 != -1 || (deviceCopy = _LogCategory_Initialize(), v5 = v6, deviceCopy))
    {
      sub_1000A5A84(deviceCopy, v5, v4);
      v5 = v6;
    }
  }
}

- (void)_watchFastScanStartIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  mach_absolute_time();
  if (UpTicksToSeconds() >= 0x64 && [(SFBLEScanner *)self->_watchSetupScanner scanRate]!= 50)
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5AA0(allowedCopy);
    }

    [(SFBLEScanner *)self->_watchSetupScanner setScanRate:50];
    if (!self->_watchFastScanTimer)
    {
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      watchFastScanTimer = self->_watchFastScanTimer;
      self->_watchFastScanTimer = v5;

      v7 = self->_watchFastScanTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10009C414;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      SFDispatchTimerSet();
      dispatch_resume(self->_watchFastScanTimer);
    }
  }
}

- (void)_watchFastScanStop
{
  scanRate = [(SFBLEScanner *)self->_watchSetupScanner scanRate];
  if (scanRate != 20)
  {
    if (dword_10096FEF8 <= 50)
    {
      if (dword_10096FEF8 != -1 || (scanRate = _LogCategory_Initialize(), scanRate))
      {
        sub_1000A5AE0(scanRate, v4, v5);
      }
    }

    [(SFBLEScanner *)self->_watchSetupScanner setScanRate:20];
    self->_watchFastScanLastEndTicks = mach_absolute_time();
    watchFastScanTimer = self->_watchFastScanTimer;
    if (watchFastScanTimer)
    {
      v8 = watchFastScanTimer;
      dispatch_source_cancel(v8);
      v7 = self->_watchFastScanTimer;
      self->_watchFastScanTimer = 0;
    }
  }
}

- (id)_watchMigrating:(id)migrating
{
  migratingCopy = migrating;
  if (self->_watchMigrationEnabled)
  {
    sharedInstance = [(objc_class *)off_10096FF68() sharedInstance];
    v6 = [sharedInstance getDevicesMatching:&stru_1008CE9B8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v9 = v8;
    if (v8)
    {
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = off_10096FF80(v8);
          v14 = [v12 valueForProperty:{v13, v16}];

          if ([v14 isEqual:migratingCopy])
          {
            v9 = v12;

            goto LABEL_13;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v9 = v8;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_watchStartMigration:(id)migration
{
  migrationCopy = migration;
  sharedMigrator = [(objc_class *)off_10096FF88(migrationCopy) sharedMigrator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009C7FC;
  v6[3] = &unk_1008CDF90;
  v7 = migrationCopy;
  v5 = migrationCopy;
  [sharedMigrator beginMigrationWithDevice:v5 withCompletion:v6];
}

- (void)_wifiStateChanged
{
  wifiState = [(CUSystemMonitor *)self->_systemMonitor wifiState];
  if (wifiState == 40 && (self->_renableB238SetupAfterWiFi || self->_triggeredUIRepair))
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (wifiState = _LogCategory_Initialize(), wifiState))
      {
        sub_1000A5B40(wifiState, v4, v5);
      }
    }

    [(SDSetupAgent *)self _resetTriggers];
  }
}

- (void)_ensureServerStarted
{
  if (!self->_pinPairService)
  {
    v13[5] = v6;
    v13[6] = v5;
    v13[9] = v3;
    v13[10] = v4;
    selfCopy = self;
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000A5B5C(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(SFService);
    pinPairService = selfCopy->_pinPairService;
    selfCopy->_pinPairService = v8;

    [(SFService *)selfCopy->_pinPairService setIdentifier:SFServiceIdentifierPINPair];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009CB08;
    v13[3] = &unk_1008CDF90;
    v13[4] = selfCopy;
    [(SFService *)selfCopy->_pinPairService setErrorHandler:v13];
    [(SFService *)selfCopy->_pinPairService setInvalidationHandler:&stru_1008CE9D8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009CBF8;
    v12[3] = &unk_1008CEA00;
    v12[4] = selfCopy;
    [(SFService *)selfCopy->_pinPairService setRequestMessageHandler:v12];
    v10 = selfCopy->_pinPairService;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009CC88;
    v11[3] = &unk_1008CDF90;
    v11[4] = selfCopy;
    [(SFService *)v10 activateWithCompletion:v11];
  }
}

- (void)_ensureServerStopped
{
  selfCopy = self;
  if (self->_pinPairService)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000A5C70(self, a2, v2);
      }
    }

    [(SFService *)selfCopy->_pinPairService invalidate];
    pinPairService = selfCopy->_pinPairService;
    selfCopy->_pinPairService = 0;
  }

  if (selfCopy->_pinPairSession)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000A5C8C(self, a2, v2);
      }
    }

    [(SFPINPairSession *)selfCopy->_pinPairSession invalidate];
    pinPairSession = selfCopy->_pinPairSession;
    selfCopy->_pinPairSession = 0;
  }

  pinPairUUID = selfCopy->_pinPairUUID;
  selfCopy->_pinPairUUID = 0;
}

- (void)_pinPairHandleRequest:(id)request
{
  requestCopy = request;
  v16[0] = 0;
  v16[1] = 0;
  headerFields = [requestCopy headerFields];
  UUIDEx = CFDictionaryGetUUIDEx();

  if (UUIDEx)
  {
    sub_1000A5CA8(UUIDEx);
  }

  else
  {
    v7 = [[NSUUID alloc] initWithUUIDBytes:v16];
    if (v7)
    {
      v8 = v7;
      if (([(NSUUID *)self->_pinPairUUID isEqual:v7]& 1) == 0 && self->_pinPairSession)
      {
        if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_10096FEF8, "[SDSetupAgent _pinPairHandleRequest:]", 30, "PINPair session %@ ending for %@\n", self->_pinPairUUID, v8);
        }

        [(SFPINPairSession *)self->_pinPairSession invalidate];
        pinPairSession = self->_pinPairSession;
        self->_pinPairSession = 0;
      }

      v10 = self->_pinPairSession;
      if (!v10)
      {
        if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A5D28(v8);
        }

        objc_storeStrong(&self->_pinPairUUID, v8);
        v11 = objc_alloc_init(SFPINPairSession);
        v12 = self->_pinPairSession;
        self->_pinPairSession = v11;

        [(SFPINPairSession *)self->_pinPairSession setDispatchQueue:self->_dispatchQueue];
        [(SFPINPairSession *)self->_pinPairSession setSfService:self->_pinPairService];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10009D108;
        v15[3] = &unk_1008CDF90;
        v15[4] = self;
        [(SFPINPairSession *)self->_pinPairSession setCompletionHandler:v15];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10009D1A4;
        v14[3] = &unk_1008CEA28;
        v14[4] = self;
        [(SFPINPairSession *)self->_pinPairSession setShowPINHandler:v14];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10009D1AC;
        v13[3] = &unk_1008CDEA0;
        v13[4] = self;
        [(SFPINPairSession *)self->_pinPairSession setHidePINHandler:v13];
        [(SFPINPairSession *)self->_pinPairSession activate];
        v10 = self->_pinPairSession;
      }

      [(SFPINPairSession *)v10 handleServerRequest:requestCopy];
    }

    else
    {
      sub_1000A5D68();
    }
  }
}

- (void)_pwsHandleUserResponse:(int)response device:(id)device info:(id)info
{
  deviceCopy = device;
  infoCopy = info;
  v9 = infoCopy;
  if (dword_10096FEF8 <= 60)
  {
    if (dword_10096FEF8 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
    {
      sub_1000A5E18(infoCopy, v7, v8);
    }
  }
}

- (void)_pwsHandleProgressEvent:(unsigned int)event info:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (dword_10096FEF8 <= 30)
  {
    v8 = infoCopy;
    if (dword_10096FEF8 != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
    {
      sub_1000A5E34(event, v8);
      v6 = v8;
    }
  }
}

- (void)_repairEnsuredStarted
{
  selfCopy = self;
  if (self->_problemNotifyToken == -1)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000A5FE4(self, a2, v2);
      }
    }

    self = notify_register_check("com.apple.sharing.problems", &selfCopy->_problemNotifyToken);
  }

  p_cfuNotifyToken = &selfCopy->_cfuNotifyToken;
  if (selfCopy->_cfuNotifyToken == -1 && (selfCopy->_prefRepairAccounts || selfCopy->_prefRepairHomeKit))
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10009D84C;
    handler[3] = &unk_1008CE690;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.corefollowup.items_changed", p_cfuNotifyToken, dispatchQueue, handler);
    self = [(SDSetupAgent *)selfCopy _repairHandleCFUItemsChanged];
  }

  if (!selfCopy->_manateeMonitor && selfCopy->_cdpEnabled)
  {
    v6 = objc_alloc_init(CUSystemMonitor);
    manateeMonitor = selfCopy->_manateeMonitor;
    selfCopy->_manateeMonitor = v6;

    [(CUSystemMonitor *)selfCopy->_manateeMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10009D8C8;
    v28[3] = &unk_1008CDEA0;
    v28[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_manateeMonitor setManateeChangedHandler:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10009D8D0;
    v27[3] = &unk_1008CDEA0;
    v27[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_manateeMonitor setPrimaryAppleIDChangedHandler:v27];
    v8 = selfCopy->_manateeMonitor;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10009D8D8;
    v26[3] = &unk_1008CDEA0;
    v26[4] = selfCopy;
    self = [(CUSystemMonitor *)v8 activateWithCompletion:v26];
  }

  if (!selfCopy->_vpnCnx && selfCopy->_prefRepairVPN)
  {
    v9 = [off_10096FF90(self p_cfuNotifyToken)];
    vpnCnx = selfCopy->_vpnCnx;
    selfCopy->_vpnCnx = v9;

    [(NEVPNConnection *)selfCopy->_vpnCnx addObserver:selfCopy forKeyPath:@"lastDisconnectError" options:0 context:0];
    lastDisconnectError = [(NEVPNConnection *)selfCopy->_vpnCnx lastDisconnectError];
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6000(lastDisconnectError);
    }

    [(SDSetupAgent *)selfCopy _repairVPNError:lastDisconnectError];
  }

  if (!selfCopy->_wifiHealthMonitor && selfCopy->_prefRepairWiFi)
  {
    v12 = objc_alloc_init(SFWiFiHealthMonitor);
    wifiHealthMonitor = selfCopy->_wifiHealthMonitor;
    selfCopy->_wifiHealthMonitor = v12;

    [(SFWiFiHealthMonitor *)selfCopy->_wifiHealthMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009D8E0;
    v25[3] = &unk_1008CEA50;
    v25[4] = selfCopy;
    [(SFWiFiHealthMonitor *)selfCopy->_wifiHealthMonitor setStatusHandler:v25];
    [(SFWiFiHealthMonitor *)selfCopy->_wifiHealthMonitor activate];
  }

  if (SFDeviceClassCodeGet() == 4 && selfCopy->_cnsNotifyToken == -1)
  {
    v14 = selfCopy->_dispatchQueue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009D9D4;
    v24[3] = &unk_1008CE690;
    v24[4] = selfCopy;
    notify_register_dispatch(kCNUserInteractionRequirementNotifyKey, &selfCopy->_cnsNotifyToken, v14, v24);
    [(SDSetupAgent *)selfCopy _repairHandleCNSStateChanged];
  }

  if (!selfCopy->_repairService)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6040();
    }

    v15 = objc_alloc_init(SFDeviceRepairService);
    repairService = selfCopy->_repairService;
    selfCopy->_repairService = v15;

    [(SFDeviceRepairService *)selfCopy->_repairService setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFDeviceRepairService *)selfCopy->_repairService setProblemFlags:0];
    v17 = +[SDStatusMonitor sharedMonitor];
    myAltDSID = [v17 myAltDSID];
    [(SFDeviceRepairService *)selfCopy->_repairService setAltDSID:myAltDSID];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009DA50;
    v23[3] = &unk_1008CEA78;
    v23[4] = selfCopy;
    [(SFDeviceRepairService *)selfCopy->_repairService setProgressHandler:v23];
    [(SFDeviceRepairService *)selfCopy->_repairService activate];
  }

  if (!selfCopy->_repairTimer)
  {
    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
    repairTimer = selfCopy->_repairTimer;
    selfCopy->_repairTimer = v19;

    v21 = selfCopy->_repairTimer;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009E34C;
    v22[3] = &unk_1008CDEA0;
    v22[4] = selfCopy;
    dispatch_source_set_event_handler(v21, v22);
    SFDispatchTimerSet();
    dispatch_activate(selfCopy->_repairTimer);
  }

  [(SDSetupAgent *)selfCopy _repairProblemFlagsChanged];
}

- (void)_repairEnsuredStopped
{
  cfuNotifyToken = self->_cfuNotifyToken;
  if (cfuNotifyToken != -1)
  {
    notify_cancel(cfuNotifyToken);
    self->_cfuNotifyToken = -1;
  }

  [(CUSystemMonitor *)self->_manateeMonitor invalidate];
  manateeMonitor = self->_manateeMonitor;
  self->_manateeMonitor = 0;

  self->_manateeProblem = 0;
  repairTimer = self->_repairTimer;
  if (repairTimer)
  {
    v6 = repairTimer;
    dispatch_source_cancel(v6);
    v7 = self->_repairTimer;
    self->_repairTimer = 0;
  }

  vpnCnx = self->_vpnCnx;
  if (vpnCnx)
  {
    [(NEVPNConnection *)vpnCnx removeObserver:self forKeyPath:@"lastDisconnectError"];
    v9 = self->_vpnCnx;
    self->_vpnCnx = 0;
  }

  [(SFWiFiHealthMonitor *)self->_wifiHealthMonitor invalidate];
  wifiHealthMonitor = self->_wifiHealthMonitor;
  self->_wifiHealthMonitor = 0;

  *&self->_wifiBad = 0;
  cnsNotifyToken = self->_cnsNotifyToken;
  if (cnsNotifyToken != -1)
  {
    notify_cancel(cnsNotifyToken);
    self->_cnsNotifyToken = -1;
  }

  self->_cnsNeedsUI = 0;
  self->_problemFlags = 0;
  _repairProblemFlagsChanged = [(SDSetupAgent *)self _repairProblemFlagsChanged];
  if (self->_repairService)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (_repairProblemFlagsChanged = _LogCategory_Initialize(), _repairProblemFlagsChanged))
      {
        sub_1000A616C(_repairProblemFlagsChanged, v13, v14);
      }
    }

    [(SFDeviceRepairService *)self->_repairService invalidateWithFlags:1];
    repairService = self->_repairService;
    self->_repairService = 0;
  }

  problemNotifyToken = self->_problemNotifyToken;
  if (problemNotifyToken != -1)
  {
    v17 = notify_cancel(problemNotifyToken);
    self->_problemNotifyToken = -1;
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v17 = _LogCategory_Initialize(), v17))
      {
        sub_1000A6188(v17, v18, v19);
      }
    }
  }
}

- (void)_renewAccountIfNecessaryForCFUItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_prefRepairAccounts)
  {
    v9 = [itemsCopy indexesOfObjectsPassingTest:&stru_1008CEAB8];
    if ([v9 count])
    {
      if (!self->_lastRenewalAttempt)
      {
        goto LABEL_6;
      }

      v10 = +[NSDate now];
      [v10 timeIntervalSinceDate:self->_lastRenewalAttempt];
      v12 = v11;
      v13 = +[NSDate now];
      [v13 timeIntervalSinceDate:self->_lastRenewalAttempt];
      v15 = v14;

      if (v12 >= 0.0)
      {
        if (v15 >= 86400.0)
        {
LABEL_6:
          v19 = +[ACAccountStore defaultStore];
          v20 = sub_10001F47C(v19);
          v23 = v20;
          if (v20)
          {
            isWarmingUp = [v20 isWarmingUp];
            if (!isWarmingUp)
            {
              if (dword_10096FEF8 <= 30)
              {
                if (dword_10096FEF8 != -1 || (isWarmingUp = _LogCategory_Initialize(), isWarmingUp))
                {
                  sub_1000A61C0(isWarmingUp, v25, v26);
                }
              }

              v27 = +[NSDate now];
              lastRenewalAttempt = self->_lastRenewalAttempt;
              self->_lastRenewalAttempt = v27;

              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_10009E930;
              v29[3] = &unk_1008CEAE0;
              v32 = v8;
              v30 = itemsCopy;
              v31 = v9;
              [v19 renewCredentialsForAccount:v23 completion:v29];

              goto LABEL_26;
            }

            if (dword_10096FEF8 <= 30)
            {
              if (dword_10096FEF8 != -1 || (isWarmingUp = _LogCategory_Initialize(), isWarmingUp))
              {
                sub_1000A61DC(isWarmingUp, v25, v26);
              }
            }
          }

          else if (dword_10096FEF8 <= 90)
          {
            if (dword_10096FEF8 != -1 || (v20 = _LogCategory_Initialize(), v20))
            {
              sub_1000A61F8(v20, v21, v22);
            }
          }

          (v8)[2](v8, itemsCopy);
LABEL_26:

          goto LABEL_27;
        }
      }

      else if (v15 <= -86400.0)
      {
        goto LABEL_6;
      }

      if (dword_10096FEF8 <= 30)
      {
        if (dword_10096FEF8 != -1 || (v16 = _LogCategory_Initialize(), v16))
        {
          sub_1000A61A4(v16, v17, v18);
        }
      }
    }

    (v8)[2](v8, itemsCopy);
LABEL_27:

    goto LABEL_28;
  }

  (*(completionCopy + 2))(completionCopy, itemsCopy);
LABEL_28:
}

- (void)_repairHandleCFUItemsChanged
{
  v3 = [objc_alloc(off_10096FF98(self a2))];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009EADC;
  v4[3] = &unk_1008CEB08;
  v4[4] = self;
  [v3 pendingFollowUpItemsWithCompletion:v4];
}

- (void)_repairHandleCFUItems:(id)items
{
  itemsCopy = items;
  problemFlags = self->_problemFlags;
  if ([(SDSetupAgent *)self _useSymptomsReport])
  {
    v6 = problemFlags & 0xFFBAFFA7;
  }

  else
  {
    v6 = problemFlags & 0xFFB8FFA1;
    if (self->_manateeProblem)
    {
      v6 = problemFlags & 0xFFB8FFA1 | 0x20000;
    }
  }

  if (self->_wifiBad || self->_cnsNeedsUI)
  {
    v6 |= 0x10uLL;
  }

  if (self->_wifiBad8021x)
  {
    v7 = v6 | 0x10000;
  }

  else
  {
    v7 = v6;
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = v28;
    p_cache = _TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet.cache;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        uniqueIdentifier = [v14 uniqueIdentifier];
        v16 = uniqueIdentifier;
        v17 = *(p_cache + 958);
        if (uniqueIdentifier)
        {
          if (v17 <= 50)
          {
            if (v17 != -1 || (uniqueIdentifier = _LogCategory_Initialize(), uniqueIdentifier))
            {
              uniqueIdentifier = sub_1000A62DC(v16);
            }
          }

          if (self->_prefRepairHomeKit)
          {
            v18 = off_10096FFA0(uniqueIdentifier);
            v19 = [v16 isEqual:v18];

            p_cache = (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet + 16);
            if (v19)
            {
LABEL_22:
              v7 |= 8uLL;
              goto LABEL_56;
            }
          }

          if ([v16 isEqual:@"com.apple.homekit.PrimaryResident"])
          {
            v7 |= 0x400000uLL;
            goto LABEL_56;
          }

          if (self->_prefRepairAccounts && sub_10009E7B0(v14) && ![(SDSetupAgent *)self _useSymptomsReport])
          {
            [(CUSystemMonitor *)self->_manateeMonitor forceManateeStateRefresh];
            [(SDSetupAgent *)self _fetchSymptomsReport];
            if (SFIsDeviceAppleTV())
            {
              v21 = 2;
            }

            else
            {
              defaultStore = [(objc_class *)off_10096FFA8() defaultStore];
              activeAccount = [defaultStore activeAccount];

              v24 = activeAccount == 0;
              p_cache = (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet + 16);
              v21 = 2;
              if (!v24)
              {
                v21 = 6;
              }
            }

            v7 |= v21;
          }

          else
          {
            if (self->_prefRepairAccounts && [v16 isEqual:@"com.apple.SSFollowUpIdentifier.RenewCredentials"] && !-[SDSetupAgent _useSymptomsReport](self, "_useSymptomsReport"))
            {
              goto LABEL_55;
            }

            if ([v16 isEqual:@"RepairCDPState"])
            {
              dispatchQueue = self->_dispatchQueue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              v28[0] = sub_10009F2BC;
              v28[1] = &unk_1008CDEA0;
              v28[2] = self;
              dispatch_async(dispatchQueue, block);
              goto LABEL_56;
            }

            if ([v16 isEqual:@"x-bt"])
            {
              v7 |= 0x200uLL;
              goto LABEL_56;
            }

            if ([v16 isEqual:@"x-cdp"])
            {
              v7 |= 0x20000uLL;
              goto LABEL_56;
            }

            if ([v16 isEqual:@"x-homekit"])
            {
              goto LABEL_22;
            }

            if ([v16 isEqual:@"x-hw"])
            {
              v7 |= 0x100uLL;
              goto LABEL_56;
            }

            if ([v16 isEqual:@"x-icloud"])
            {
              v7 |= 2uLL;
              goto LABEL_56;
            }

            if ([v16 isEqual:@"x-inet"])
            {
              v7 |= 0x80uLL;
              goto LABEL_56;
            }

            if ([v16 isEqual:@"x-itunes"])
            {
LABEL_55:
              v7 |= 4uLL;
            }

            else if ([v16 isEqual:@"x-profile"])
            {
              v7 |= 0x40000uLL;
            }

            else if ([v16 isEqual:@"x-recovery"])
            {
              v7 |= 0x800uLL;
            }

            else if ([v16 isEqual:@"x-StereoError"])
            {
              v7 |= 0x4000uLL;
            }

            else if ([v16 isEqual:@"x-StereoNotFound"])
            {
              v7 |= 0x1000uLL;
            }

            else if ([v16 isEqual:@"x-StereoVersion"])
            {
              v7 |= 0x2000uLL;
            }

            else if ([v16 isEqual:@"x-thermal"])
            {
              v7 |= 0x400uLL;
            }

            else if ([v16 isEqual:@"x-wifi"])
            {
              v7 |= 0x10uLL;
            }

            else if ([v16 isEqual:@"x-wifi8021x"])
            {
              v7 |= 0x10000uLL;
            }

            else if ([v16 isEqual:@"x-wifiperf"])
            {
              v7 |= 0x40uLL;
            }

            else if ([v16 isEqual:@"x-vpn"])
            {
              v7 |= 0x8000uLL;
            }

            else if ([v16 isEqual:@"x-netnoshare"])
            {
              v7 |= 0x80000uLL;
            }

            else if ([v16 isEqual:@"x-netneedprofile"])
            {
              v7 |= 0x100000uLL;
            }

            else if ([v16 isEqual:@"x-captivenetwork"])
            {
              v7 |= 0x200000uLL;
            }

            else if ([v16 isEqual:@"x-hkprimary"])
            {
              v7 |= 0x400000uLL;
            }
          }
        }

        else if (v17 <= 60 && (v17 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A631C(v14);
        }

LABEL_56:

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v25 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v10 = v25;
    }

    while (v25);
  }

  if (v7 != self->_problemFlags)
  {
    self->_problemFlags = v7;
    [(SDSetupAgent *)self _repairProblemFlagsChanged];
  }
}

- (BOOL)_useSymptomsReport
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = SFDeviceClassCodeGet() == 6;
  }

  return v2;
}

- (void)_fetchSymptomsReport
{
  v3 = +[SDStatusMonitor sharedMonitor];
  myAltDSID = [v3 myAltDSID];

  if (myAltDSID)
  {
    if (!self->_repairController)
    {
      v8 = objc_alloc_init(off_10096FFB0());
      repairController = self->_repairController;
      self->_repairController = v8;
    }

    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1000A635C(v5, v6, v7);
      }
    }

    v10 = [objc_alloc(off_10096FFB8()) initWithAltDSID:myAltDSID];
    v11 = [NSSet setWithObjects:AIDAServiceTypeCloud, AIDAServiceTypeStore, 0];
    [v10 setRequiredServiceTypes:v11];

    v12 = self->_repairController;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009F4A0;
    v13[3] = &unk_1008CEB30;
    v13[4] = self;
    [(AISRepairController *)v12 generateSymptomReportWithContext:v10 completionHandler:v13];
  }

  else if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1000A6378(v5, v6, v7);
    }
  }
}

- (void)_repairHandleCompletion
{
  selfCopy = self;
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1000A63E4(self, a2, v2);
    }
  }

  if (selfCopy->_repairTimer)
  {
    SFDispatchTimerSet();
  }

  selfCopy->_problemFlags = 0;
  [(SDSetupAgent *)selfCopy _repairProblemFlagsChanged];
  wifiHealthMonitor = selfCopy->_wifiHealthMonitor;

  [(SFWiFiHealthMonitor *)wifiHealthMonitor reset];
}

- (void)_repairHandleManateeChanged
{
  manateeMonitor = self->_manateeMonitor;
  if (manateeMonitor && [(CUSystemMonitor *)manateeMonitor primaryAppleIDIsHSA2])
  {
    if ([(SDSetupAgent *)self _useSymptomsReport])
    {

      [(SDSetupAgent *)self _fetchSymptomsReport];
    }

    else
    {
      manateeState = [(CUSystemMonitor *)self->_manateeMonitor manateeState];
      self->_manateeProblem = manateeState == 1;
      problemFlags = self->_problemFlags;
      v6 = problemFlags | 0x20000;
      if (manateeState != 1)
      {
        v6 = self->_problemFlags & 0xFFFDFFFF;
      }

      if (v6 != problemFlags)
      {
        self->_problemFlags = v6;

        [(SDSetupAgent *)self _repairProblemFlagsChanged];
      }
    }
  }
}

- (void)_repairHandleCNSStateChanged
{
  problemFlags = self->_problemFlags;
  IsRequired = CNUserInteractionIsRequired();
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6400(self, IsRequired != 0);
    if (IsRequired)
    {
LABEL_5:
      self->_cnsNeedsUI = 1;
      if (_os_feature_enabled_impl())
      {
        problemFlags |= 0x200010uLL;
      }

      else
      {
        problemFlags |= 0x10uLL;
      }

      goto LABEL_13;
    }
  }

  else if (IsRequired)
  {
    goto LABEL_5;
  }

  if (self->_cnsNeedsUI)
  {
    self->_cnsNeedsUI = 0;
    if (self->_wifiBad)
    {
      problemFlags |= 0x10uLL;
    }

    else
    {
      problemFlags = problemFlags & 0xFFFFFFEF;
    }
  }

LABEL_13:
  if (problemFlags != self->_problemFlags)
  {
    self->_problemFlags = problemFlags;

    [(SDSetupAgent *)self _repairProblemFlagsChanged];
  }
}

- (void)_repairProblemCheck
{
  [(CUSystemMonitor *)self->_manateeMonitor forceManateeStateRefresh];
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6448(&self->_manateeMonitor);
  }

  [(SDSetupAgent *)self _repairHandleManateeChanged];
}

- (void)_repairProblemFlagsChanged
{
  IsRequired = CNUserInteractionIsRequired();
  v6 = IsRequired;
  if (dword_10096FEF8 > 30 || dword_10096FEF8 == -1 && (IsRequired = _LogCategory_Initialize(), !IsRequired))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    problemFlags = self->_problemFlags;
    goto LABEL_11;
  }

  IsRequired = sub_1000A64B0(v6 == 0);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (IsRequired = _LogCategory_Initialize(), IsRequired))
    {
      sub_1000A6508(IsRequired, v4, v5);
    }
  }

  problemFlags = self->_problemFlags | 0x200010;
  self->_problemFlags = problemFlags;
LABEL_11:
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6524(problemFlags);
  }

  if (problemFlags)
  {
    v8 = problemFlags | 1;
  }

  else
  {
    v8 = 0;
  }

  [(SFDeviceRepairService *)self->_repairService setProblemFlags:v8];
  problemNotifyToken = self->_problemNotifyToken;
  if (problemNotifyToken != -1)
  {
    notify_set_state(problemNotifyToken, v8);

    notify_post("com.apple.sharing.problems");
  }
}

- (void)_repairSilentStart:(id)start
{
  startCopy = start;
  problemFlags = [startCopy problemFlags];
  if ((problemFlags & 0x10000) != 0)
  {
    if (dword_10096FEF8 <= 50)
    {
      if (dword_10096FEF8 != -1 || (problemFlags = _LogCategory_Initialize(), problemFlags))
      {
        sub_1000A656C(problemFlags, v6, v7);
      }
    }
  }

  else
  {
    if (([startCopy problemFlags] & 0x10) != 0)
    {
      model = [startCopy model];
      v9 = [model hasPrefix:@"AudioAccessory"];

      if (v9)
      {
        v10 = WiFiCopyCurrentNetworkInfo();
        Int64 = CFDictionaryGetInt64();
        if (Int64 || (Int64 = [startCopy problemFlags], (Int64 & 0x200000) != 0))
        {
          if (dword_10096FEF8 <= 50)
          {
            if (dword_10096FEF8 != -1 || (Int64 = _LogCategory_Initialize(), Int64))
            {
              sub_1000A6588(Int64, v12, v13);
            }
          }

          goto LABEL_27;
        }
      }
    }

    if (([startCopy problemFlags] & 0x22001E) != 0)
    {
      [(SFDeviceRepairSession *)self->_repairSession invalidate];
      v14 = objc_alloc_init(SFDeviceRepairSession);
      repairSession = self->_repairSession;
      self->_repairSession = v14;

      [(SFDeviceRepairSession *)self->_repairSession setPeerDevice:startCopy];
      v16 = +[SDStatusMonitor sharedMonitor];
      myAltDSID = [v16 myAltDSID];
      [(SFDeviceRepairSession *)self->_repairSession setAltDSID:myAltDSID];

      [(SFDeviceRepairSession *)self->_repairSession setOperationType:3];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10009FD48;
      v22[3] = &unk_1008CEA78;
      v22[4] = self;
      [(SFDeviceRepairSession *)self->_repairSession setProgressHandler:v22];
      bleDevice = [startCopy bleDevice];
      foundTicks = [bleDevice foundTicks];

      if (foundTicks)
      {
        mach_absolute_time();
        v20 = UpTicksToMilliseconds();
      }

      else
      {
        v20 = 0;
      }

      [(SFDeviceRepairSession *)self->_repairSession setTriggerMs:v20];
      v21 = +[IDSServerBag sharedInstance];
      v10 = [v21 objectForKey:@"SDDisableRepairSilentAuth"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 BOOLValue])
      {
        [(SFDeviceRepairSession *)self->_repairSession setDisableSilentAuth:1];
      }

      [(SFDeviceRepairSession *)self->_repairSession activate];
LABEL_27:

      goto LABEL_28;
    }

    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A65A4(startCopy);
    }
  }

LABEL_28:
}

- (void)_repairSilentProgress:(unsigned int)progress info:(id)info
{
  infoCopy = info;
  v12 = infoCopy;
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
    {
      infoCopy = sub_1000A65F0(progress, v12);
    }
  }

  if (progress == 20)
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
      {
        sub_1000A6650(infoCopy, v7, v8);
      }
    }

    self->_triggeredUIRepair = 0;
  }

  else
  {
    if (progress == 96)
    {
      peerDevice = [(SFDeviceRepairSession *)self->_repairSession peerDevice];
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A666C(peerDevice);
      }

      [(SFDeviceRepairSession *)self->_repairSession invalidate];
      repairSession = self->_repairSession;
      self->_repairSession = 0;

      self->_triggeredUIRepair = 0;
    }

    else
    {
      if (progress != 30)
      {
        goto LABEL_20;
      }

      CFErrorGetTypeID();
      peerDevice = CFDictionaryGetTypedValue();
      [(SDSetupAgent *)self _repairUpdateIDSCache];
      [(SFDeviceRepairSession *)self->_repairSession invalidate];
      v10 = self->_repairSession;
      self->_repairSession = 0;

      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A66AC(peerDevice);
      }
    }
  }

LABEL_20:
}

- (void)_repairUpdateIDSCache
{
  idsIdentifier = [(SFDeviceRepairSession *)self->_repairSession idsIdentifier];
  if (idsIdentifier)
  {
    v6 = idsIdentifier;
    peerDevice = [(SFDeviceRepairSession *)self->_repairSession peerDevice];
    if (peerDevice)
    {
      v5 = +[SDNearbyAgent sharedNearbyAgent];
      [v5 idsAddCachedIDSIdentifier:v6 device:peerDevice];
    }

    idsIdentifier = v6;
  }
}

- (void)_repairVPNError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqual:@"NEVPNConnectionErrorDomainIPSec"];

  if (v5)
  {
    code = [errorCopy code];
    problemFlags = self->_problemFlags;
    v8 = problemFlags | 0x8000;
    if (code != 21)
    {
      v8 = self->_problemFlags & 0xFFFF7FFF;
    }
  }

  else
  {
    problemFlags = self->_problemFlags;
    v8 = problemFlags & 0xFFFF7FFF;
  }

  if (v8 != problemFlags)
  {
    self->_problemFlags = v8;
    [(SDSetupAgent *)self _repairProblemFlagsChanged];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"lastDisconnectError", object, change, context}])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A00D8;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A0220;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = triggerCopy;
  v6 = triggerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)testHomeKitDeviceDetected:(id)detected
{
  detectedCopy = detected;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6868(detectedCopy);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A04B0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)testNFCUI:(id)i
{
  iCopy = i;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A68A8(iCopy);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A05DC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)testPairUI:(id)i
{
  iCopy = i;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A68E8(iCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A07CC;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = iCopy;
  v9 = iCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testRepairUI:(id)i
{
  iCopy = i;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6928(iCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([iCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([iCopy isEqual:@"-nowifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([iCopy isEqual:@"-badwifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  [v5 setName:@"Living Room"];
  v9 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v9];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A0A40;
  v12[3] = &unk_1008CE028;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  dispatch_async(dispatchQueue, v12);
}

- (void)testSetupUIB238:(id)b238
{
  b238Copy = b238;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6968(b238Copy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([b238Copy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([b238Copy isEqual:@"-code"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([b238Copy isEqual:@"-nowifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else if ([b238Copy isEqual:@"-badwifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000005";
  }

  else if ([b238Copy isEqual:@"-noicloud"])
  {
    v7 = @"00000000-0000-0000-0000-000000000006";
  }

  else if ([b238Copy isEqual:@"-nohsa2"])
  {
    v7 = @"00000000-0000-0000-0000-000000000007";
  }

  else if ([b238Copy isEqual:@"-noitunes"])
  {
    v7 = @"00000000-0000-0000-0000-000000000008";
  }

  else if ([b238Copy isEqual:@"-nohome"])
  {
    v7 = @"00000000-0000-0000-0000-000000000009";
  }

  else if ([b238Copy isEqual:@"-nokeychain"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000A";
  }

  else if ([b238Copy isEqual:@"-sharesplit"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000B";
  }

  else if ([b238Copy isEqual:@"-audio"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000C";
  }

  else if ([b238Copy isEqual:@"-siri"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000D";
  }

  else if ([b238Copy isEqual:@"-AppleMusic"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000E";
  }

  else if ([b238Copy isEqual:@"-WiFiBadEnterprise"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000F";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  [v5 setOsVersion:13];
  v9 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v9];
  [v5 setDeviceClassCode:4];
  v10 = [(SDSetupAgent *)self extractParameter:@"device" inString:b238Copy];
  [v5 setDeviceModelCode:v10];
  v11 = [(SDSetupAgent *)self extractParameter:@"color" inString:b238Copy];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 2;
  }

  [v5 setDeviceActionType:33];
  v21 = @"cc";
  v13 = [NSNumber numberWithInteger:v12];
  v22 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v9 setAdvertisementFields:v14];

  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A69A8(v5, v10, v12);
  }

  dispatchQueue = self->_dispatchQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A0EAC;
  v18[3] = &unk_1008CE900;
  v18[4] = self;
  v19 = v5;
  v20 = b238Copy;
  v16 = b238Copy;
  v17 = v5;
  dispatch_async(dispatchQueue, v18);
}

- (int64_t)extractParameter:(id)parameter inString:(id)string
{
  parameterCopy = parameter;
  [string componentsSeparatedByString:{@", "}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  intValue = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (intValue)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != intValue; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasPrefix:{parameterCopy, v14}])
        {
          v11 = [v10 componentsSeparatedByString:@"="];
          lastObject = [v11 lastObject];
          intValue = [lastObject intValue];

          goto LABEL_11;
        }
      }

      intValue = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (intValue)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return intValue;
}

- (void)testSetupUIiOS:(id)s
{
  sCopy = s;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6A04(sCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  if ([sCopy hasSuffix:@"-ipad"])
  {
    v6 = 3;
LABEL_8:
    v7 = [sCopy substringToIndex:{objc_msgSend(sCopy, "length") - 5}];

    sCopy = v7;
    goto LABEL_10;
  }

  if ([sCopy hasSuffix:@"-ipod"])
  {
    v6 = 2;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_10:
  [v5 setDeviceClassCode:v6];
  v8 = [NSUUID alloc];
  if ([sCopy isEqual:@"-fail"])
  {
    v9 = @"00000000-0000-0000-0000-000000000002";
  }

  else
  {
    v9 = @"00000000-0000-0000-0000-000000000001";
  }

  v10 = [v8 initWithUUIDString:v9];
  [v5 setIdentifier:v10];

  v11 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v11];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A1294;
  v14[3] = &unk_1008CE028;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  dispatch_async(dispatchQueue, v14);
}

- (void)testSetupUIPasswordSharing:(id)sharing
{
  sharingCopy = sharing;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6A44(sharingCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  [v5 setContactIdentifier:@"00000000-0000-0000-0000-000000000000"];
  [v5 setRequestSSID:@"WiFiNetwork"];
  v6 = [NSUUID alloc];
  if ([sharingCopy isEqual:@"-rich"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([sharingCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([sharingCopy isEqual:@"-hs"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else if ([sharingCopy isEqual:@"-hsfail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000005";
  }

  else if ([sharingCopy isEqual:@"-device"])
  {
    v7 = @"00000000-0000-0000-0000-000000000006";
  }

  else if ([sharingCopy isEqual:@"-long"])
  {
    v7 = @"00000000-0000-0000-0000-000000000007";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A14A4;
  v11[3] = &unk_1008CE028;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(dispatchQueue, v11);
}

- (void)testSetupUIWatch:(id)watch
{
  watchCopy = watch;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6A84(watchCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  [v5 setName:@"05938CDC"];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A15DC;
  v9[3] = &unk_1008CE028;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);
}

- (void)testSetupUIWHA:(id)a
{
  aCopy = a;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6AC4(aCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([aCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([aCopy isEqual:@"-code"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([aCopy isEqual:@"-nowifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else if ([aCopy isEqual:@"-badwifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000005";
  }

  else if ([aCopy isEqual:@"-noicloud"])
  {
    v7 = @"00000000-0000-0000-0000-000000000006";
  }

  else if ([aCopy isEqual:@"-nohsa2"])
  {
    v7 = @"00000000-0000-0000-0000-000000000007";
  }

  else if ([aCopy isEqual:@"-noitunes"])
  {
    v7 = @"00000000-0000-0000-0000-000000000008";
  }

  else if ([aCopy isEqual:@"-nohome"])
  {
    v7 = @"00000000-0000-0000-0000-000000000009";
  }

  else if ([aCopy isEqual:@"-mismatch"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000A";
  }

  else if ([aCopy isEqual:@"-keychain"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000B";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  v9 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v9];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A1874;
  v12[3] = &unk_1008CE028;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  dispatch_async(dispatchQueue, v12);
}

- (void)testUIAppleTVSetup:(id)setup
{
  setupCopy = setup;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6B04(setupCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A19D8;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = setupCopy;
  v9 = setupCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testUIShareAudio:(id)audio
{
  audioCopy = audio;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6B44(audioCopy);
  }

  v4 = objc_alloc_init(SFProxCardSessionClient);
  [v4 setViewControllerClassName:@"ShareAudioAcceptMainController"];
  v5 = audioCopy;
  v6 = v5;
  if (v5)
  {
    v9 = @"_proxTestParams";
    v10 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v4 setUserInfo:v7];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1C04;
  v8[3] = &unk_1008CDF90;
  v8[4] = v4;
  [v4 setErrorHandler:v8];
  [v4 setInvalidationHandler:&stru_1008CEB50];
  [v4 activateWithCompletion:&stru_1008CEB70];
}

- (void)testUITVLatencySetup:(id)setup
{
  setupCopy = setup;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6C20(setupCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1EA4;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = setupCopy;
  v9 = setupCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testUITVLatencyColorimeterSetup:(id)setup
{
  setupCopy = setup;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6C60(setupCopy);
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A20B0;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = setupCopy;
  v9 = setupCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testProxCardKit:(id)kit
{
  v4 = objc_alloc_init(SFDevice);
  v5 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v4 setIdentifier:v5];

  v6 = objc_alloc_init(SFBLEDevice);
  [v4 setBleDevice:v6];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A225C;
  v9[3] = &unk_1008CE028;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(dispatchQueue, v9);
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  deviceActionType = [foundCopy deviceActionType];
  bleDevice = [foundCopy bleDevice];
  identifier = [foundCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = 0;
  if (!self->_deviceDiscovery || !identifier)
  {
    goto LABEL_200;
  }

  v8 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
  if ([foundCopy needsSetup])
  {
    devices = self->_devices;
    if (!devices)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = self->_devices;
      self->_devices = v10;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:foundCopy forKeyedSubscript:identifier];
    if ((gSDProxCardsSuppressed & 1) == 0 && ![(SDSetupAgent *)self _uiShowing])
    {
      systemUIFlags = [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
      if (deviceActionType == 30 || deviceActionType == 25)
      {
        if ((systemUIFlags & 0x7C808) != 0)
        {
          goto LABEL_200;
        }
      }

      else
      {
        if ((systemUIFlags & 0x7C809) != 0)
        {
          goto LABEL_200;
        }

        if (deviceActionType <= 0x1B && ((1 << deviceActionType) & 0x8021100) != 0)
        {
          v18 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:identifier];

          if (v18)
          {
            goto LABEL_200;
          }
        }
      }

      [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:foundCopy];
      if ([bleDevice triggered])
      {
        sub_1000A2A90();
        if (v20 ^ v21 | v25 && (v19 != -1 || _LogCategory_Initialize()))
        {
          deviceActionType2 = [foundCopy deviceActionType];
          v23 = [foundCopy description];
          LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "#ni_estimator SDSetupAgent trigger launched with actiontype: %d for device: %@", deviceActionType2, v23);
        }

        v25 = deviceActionType == 33 || deviceActionType == 11;
        if (!v25 || ![(CUSystemMonitor *)self->_systemMonitor activeCallCount])
        {
          _screenLocked = [(SDSetupAgent *)self _screenLocked];
          if (deviceActionType <= 0x24 && ((1 << deviceActionType) & 0x1042000200) != 0 || deviceActionType == 90)
          {
            if (_screenLocked)
            {
              v27 = CACurrentMediaTime();
              BKSHIDServicesLastUserEventTime();
              if (v27 - v28 > 30.0)
              {
                if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  v77 = bleDevice;
                  v29 = "Ignoring proximity for non-user initiated lock screen: %@\n";
                  v30 = 30;
LABEL_46:
                  LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", v30, v29, v77);
                }

                goto LABEL_200;
              }
            }
          }

          else if (_screenLocked)
          {
            goto LABEL_200;
          }

          if (!self->_bleAuthTagFilter)
          {
            goto LABEL_54;
          }

          v31 = objc_msgSend_advertisementFields(bleDevice);
          CFDataGetTypeID();
          v32 = CFDictionaryGetTypedValue();

          bleAuthTagFilter = self->_bleAuthTagFilter;
          v34 = v32;
          v35 = bleAuthTagFilter;
          v36 = v35;
          if (v34 == v35)
          {

LABEL_54:
            if (SFStoreDemoMode() & 1) != 0 || (SFLostMode())
            {
              goto LABEL_200;
            }

            triggeredDevices = self->_triggeredDevices;
            if (!triggeredDevices)
            {
              v39 = objc_alloc_init(NSMutableDictionary);
              v40 = self->_triggeredDevices;
              self->_triggeredDevices = v39;

              triggeredDevices = self->_triggeredDevices;
            }

            [(NSMutableDictionary *)triggeredDevices setObject:foundCopy forKeyedSubscript:identifier];
            [sub_100021E5C() _postDeviceSetupNotificationForDevice:? present:?];
            [(SFDeviceDiscovery *)self->_deviceDiscovery fastScanCancel:@"Triggered"];
            switch(deviceActionType)
            {
              case 1:
                if ([foundCopy osVersion] >= 0xE)
                {
                  if (dword_10096FEF8 <= 10 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 10, "Ignoring non-legacy AppleTVSetup: %@", bleDevice);
                  }
                }

                else if (self->_triggeredUIAppleTVSetup)
                {
                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity AppleTVSetup with another %@\n";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v52 = +[MCProfileConnection sharedConnection];
                  isProximitySetupToNewDeviceAllowed = [v52 isProximitySetupToNewDeviceAllowed];

                  if (isProximitySetupToNewDeviceAllowed)
                  {
                    self->_triggeredUIAppleTVSetup = 1;
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity AppleTVSetup with %@\n", bleDevice);
                    }

                    [sub_100021E5C() _uiStartAppleTVSetup:? extraInfo:?];
                    goto LABEL_198;
                  }

                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity AppleTVSetup when not allowed for %@\n";
                    goto LABEL_103;
                  }
                }

                goto LABEL_200;
              case 2:
              case 3:
              case 4:
              case 5:
              case 7:
              case 14:
              case 15:
              case 16:
              case 18:
              case 19:
              case 20:
              case 21:
              case 22:
              case 23:
              case 24:
              case 26:
              case 28:
              case 29:
              case 31:
              case 34:
              case 35:
                goto LABEL_200;
              case 6:
                if (self->_triggeredUIAppleTVPair)
                {
                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity AppleTVPair with another %@\n";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v54 = +[MCProfileConnection sharedConnection];
                  isProximitySetupToNewDeviceAllowed2 = [v54 isProximitySetupToNewDeviceAllowed];

                  if (isProximitySetupToNewDeviceAllowed2)
                  {
                    self->_triggeredUIAppleTVPair = 1;
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity AppleTVPair with %@\n", bleDevice);
                    }

                    [sub_100021E5C() _uiStartPair:? extraInfo:?];
                    goto LABEL_198;
                  }

                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity AppleTVPair when not allowed for %@\n";
                    goto LABEL_103;
                  }
                }

                goto LABEL_200;
              case 8:
                v56 = +[MCProfileConnection sharedConnection];
                isWiFiPasswordSharingAllowed = [v56 isWiFiPasswordSharingAllowed];

                if (isWiFiPasswordSharingAllowed)
                {
                  if (self->_pwsGrantingEnabled && [sub_100021E5C() _shouldOfferPassword:?])
                  {
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "WPS: Triggering Wi-Fi Password Sharing with %@\n", bleDevice);
                    }

                    [sub_100021E5C() _uiStartWiFiPasswordSharing:?];
                  }

                  else if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v76 = bleDevice;
                    v47 = "WPS: Shouldn't offer password, ignoring triggered device: %@\n";
                    v62 = 30;
                    goto LABEL_143;
                  }

                  goto LABEL_198;
                }

                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  v77 = bleDevice;
                  v29 = "WPS: Ignoring Wi-Fi Password Sharing request when not allowed for %@";
                  goto LABEL_103;
                }

                goto LABEL_200;
              case 9:
                if (self->_triggeredUIiOSSetup)
                {
                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity iOSSetup with another %@\n";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v58 = +[MCProfileConnection sharedConnection];
                  isProximitySetupToNewDeviceAllowed3 = [v58 isProximitySetupToNewDeviceAllowed];

                  if (isProximitySetupToNewDeviceAllowed3)
                  {
                    if (([foundCopy deviceFlags] & 0x100) == 0)
                    {
                      if ([(SDStatusMonitor *)self->_statusMonitor eduModeEnabled])
                      {
                        if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                        {
                          v47 = "Ignoring proximity iOSSetup in EDU mode\n";
                          goto LABEL_139;
                        }
                      }

                      else
                      {
                        if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity iOSSetup with %@\n", bleDevice);
                        }

                        self->_triggeredUIiOSSetup = 1;
                        [sub_100021E5C() _uiStartSetupiOS:? autoStart:?];
                      }

                      goto LABEL_198;
                    }

                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      v77 = bleDevice;
                      v29 = "Ignoring proximity iOSSetup during resume: %@\n";
                      goto LABEL_103;
                    }
                  }

                  else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity iOSSetup when not allowed for %@\n";
                    goto LABEL_103;
                  }
                }

                goto LABEL_200;
              case 10:
                if (self->_triggeredUIRepair)
                {
                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity Repair with another %@\n";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v50 = +[MCProfileConnection sharedConnection];
                  isProximitySetupToNewDeviceAllowed4 = [v50 isProximitySetupToNewDeviceAllowed];

                  if (isProximitySetupToNewDeviceAllowed4)
                  {
                    if (([foundCopy paired] & 1) != 0 || objc_msgSend(foundCopy, "systemPairState") > 0x13)
                    {
                      if (self->_repairSilent)
                      {
                        self->_triggeredUIRepair = 1;
                        if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity Repair silent with %@\n", bleDevice);
                        }

                        [sub_100021E5C() _repairSilentStart:?];
                      }

                      goto LABEL_198;
                    }

                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      v77 = bleDevice;
                      v29 = "Ignoring unpaired proximity Repair with %@\n";
                      goto LABEL_103;
                    }
                  }

                  else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity Repair when not allowed for %@\n";
                    goto LABEL_103;
                  }
                }

                goto LABEL_200;
              case 11:
              case 33:
                if (self->_triggeredUIB238Setup)
                {
                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity HomePodSetup with another %@\n";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v41 = +[MCProfileConnection sharedConnection];
                  isProximitySetupToNewDeviceAllowed5 = [v41 isProximitySetupToNewDeviceAllowed];

                  if (isProximitySetupToNewDeviceAllowed5)
                  {
                    self->_triggeredUIB238Setup = 1;
                    sub_1000A2A84();
                    if (v20 ^ v21 | v25)
                    {
                      if (v43 != -1 || _LogCategory_Initialize())
                      {
                        LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity HomePodSetup with %@\n", bleDevice);
                      }

                      sub_1000A2A84();
                      if (v20 ^ v21 | v25 && (v64 != -1 || _LogCategory_Initialize()))
                      {
                        v65 = sub_10009773C(deviceActionType);
                        LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "HomePodSetup action type is %s\n", v65);
                      }
                    }

                    [sub_100021E5C() _uiStartSetupB238:? extraInfo:?];
                    goto LABEL_198;
                  }

                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity HomePodSetup when not allowed for %@\n";
                    goto LABEL_103;
                  }
                }

                goto LABEL_200;
              case 12:
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity ApplePay with %@\n", bleDevice);
                }

                notify_post("com.apple.applepay.proximity");
                goto LABEL_198;
              case 13:
                if (self->_triggeredUIWHASetup)
                {
                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity WHASetup with another %@\n";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v60 = +[MCProfileConnection sharedConnection];
                  isProximitySetupToNewDeviceAllowed6 = [v60 isProximitySetupToNewDeviceAllowed];

                  if (isProximitySetupToNewDeviceAllowed6)
                  {
                    self->_triggeredUIWHASetup = 1;
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity WHASetup with %@\n", bleDevice);
                    }

                    [sub_100021E5C() _uiStartSetupWHA:?];
                    goto LABEL_198;
                  }

                  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                  {
                    v77 = bleDevice;
                    v29 = "Ignoring proximity WHASetup when not allowed for %@\n";
                    goto LABEL_103;
                  }
                }

                goto LABEL_200;
              case 17:
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity DeviceDiagnostics with %@\n", bleDevice);
                }

                [(SDSetupAgent *)self _launchAppWithMachServiceName:@"com.apple.diagnosticextensionsd.sharing-wakeup"];
                goto LABEL_198;
              case 25:
                if (!self->_triggeredUITVLatencySetup)
                {
                  goto LABEL_92;
                }

                if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                {
                  goto LABEL_200;
                }

                v77 = bleDevice;
                v29 = "Ignoring proximity TVLatency with another %@\n";
                goto LABEL_103;
              case 27:
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity ShareAudio: %@\n", bleDevice);
                }

                v66 = +[SDNearbyAgent sharedNearbyAgent];
                [v66 setBoostNearbyInfo:1];

                goto LABEL_198;
              case 30:
                if (!self->_triggeredUITVLatencySetup)
                {
LABEL_92:
                  [sub_100021E5C() _uiStartTVLatencySetup:? forActionType:? withBLEDevice:?];
                  goto LABEL_198;
                }

                if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                {
                  goto LABEL_200;
                }

                v77 = bleDevice;
                v29 = "Ignoring proximity TVColorCalibration with another %@\n";
                goto LABEL_103;
              case 32:
                goto LABEL_79;
              case 36:
                goto LABEL_70;
              default:
                if (deviceActionType == 43)
                {
LABEL_79:
                  if (self->_triggeredUIAuthenticateAccounts)
                  {
                    if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_200;
                    }

                    v77 = bleDevice;
                    v29 = "Ignoring proximity AuthenticateAccounts with another %@\n";
                  }

                  else
                  {
                    v48 = +[MCProfileConnection sharedConnection];
                    isProximitySetupToNewDeviceAllowed7 = [v48 isProximitySetupToNewDeviceAllowed];

                    if (isProximitySetupToNewDeviceAllowed7)
                    {
                      self->_triggeredUIAuthenticateAccounts = 1;
                      if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity AuthenticateAccounts with %@\n", bleDevice);
                      }

                      [sub_100021E5C() _uiStartAuthenticateAccounts:?];
                      goto LABEL_198;
                    }

                    if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_200;
                    }

                    v77 = bleDevice;
                    v29 = "Ignoring proximity AuthenticateAccounts when not allowed for %@\n";
                  }
                }

                else
                {
                  if (deviceActionType != 90)
                  {
                    goto LABEL_200;
                  }

LABEL_70:
                  if (![(SDSetupAgent *)self _deviceHandlesDovePeaceSetup])
                  {
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      v47 = "Ignoring proximity dovePeace setup on this type of device\n";
LABEL_139:
                      v62 = 50;
LABEL_143:
                      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", v62, v47, v76);
                    }

LABEL_198:
                    if (!arc4random_uniform(0xAu))
                    {
                      v80[0] = @"_cat";
                      v80[1] = @"_op";
                      v81[0] = @"Setup";
                      v81[1] = @"Triggered";
                      v80[2] = @"action";
                      v69 = [NSNumber numberWithUnsignedChar:deviceActionType];
                      v81[2] = v69;
                      v80[3] = @"rssi";
                      v70 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [bleDevice rssiEstimate]);
                      v81[3] = v70;
                      v71 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:4];
                      SFDashboardLogJSON();

                      v78[0] = @"action";
                      v72 = [NSNumber numberWithUnsignedChar:deviceActionType];
                      v78[1] = @"rssi";
                      v79[0] = v72;
                      v73 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [bleDevice rssiEstimate]);
                      v79[1] = v73;
                      v74 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
                      SFMetricsLog();
                    }

                    goto LABEL_200;
                  }

                  if (self->_triggeredUIDovePeace)
                  {
                    if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_200;
                    }

                    v77 = bleDevice;
                    v29 = "Ignoring proximity dovePeace setup with another %@\n";
                  }

                  else
                  {
                    v44 = +[MCProfileConnection sharedConnection];
                    isProximitySetupToNewDeviceAllowed8 = [v44 isProximitySetupToNewDeviceAllowed];

                    if (isProximitySetupToNewDeviceAllowed8)
                    {
                      if (([foundCopy deviceFlags] & 0x100) == 0)
                      {
                        if ([(SDStatusMonitor *)self->_statusMonitor eduModeEnabled])
                        {
                          sub_1000A2A84();
                          if (v20 ^ v21 | v25 && (v46 != -1 || _LogCategory_Initialize()))
                          {
                            v47 = "Ignoring proximity dovePeace setup in EDU mode\n";
                            goto LABEL_139;
                          }
                        }

                        else if (_os_feature_enabled_impl())
                        {
                          sub_1000A2A84();
                          if (v20 ^ v21 | v25 && (v63 != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF(&dword_10096FEF8, "[SDSetupAgent _deviceFound:]", 50, "Triggering proximity dovePeace setup with %@\n", bleDevice);
                          }

                          self->_triggeredUIDovePeace = 1;
                          if (deviceActionType == 90)
                          {
                            v67 = objc_msgSend_advertisementFields(bleDevice);
                            v68 = [v67 objectForKeyedSubscript:@"dpp"];
                          }

                          else
                          {
                            v68 = 0;
                          }

                          [sub_100021E5C() _uiStartSetupDovePeace:? actionType:? payload:? autoStart:?];
                        }

                        goto LABEL_198;
                      }

                      sub_1000A2A84();
                      if (!(v20 ^ v21 | v25) || v75 == -1 && !_LogCategory_Initialize())
                      {
                        goto LABEL_200;
                      }

                      v77 = bleDevice;
                      v29 = "Ignoring proximity dovePeace setup during resume: %@\n";
                    }

                    else
                    {
                      if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                      {
                        goto LABEL_200;
                      }

                      v77 = bleDevice;
                      v29 = "Ignoring proximity dovePeace setup when not allowed for %@\n";
                    }
                  }
                }

LABEL_103:
                v30 = 50;
                goto LABEL_46;
            }
          }

          if ((v34 != 0) == (v35 == 0))
          {

            goto LABEL_200;
          }

          v37 = [(NSData *)v34 isEqual:v35];

          if (v37)
          {
            goto LABEL_54;
          }
        }
      }
    }
  }

  else
  {
    if (v8)
    {
      [sub_100021E5C() _postDeviceSetupNotificationForDevice:? present:?];
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
    if ([v8 deviceActionType] == 12 || objc_msgSend(v8, "deviceActionType") == 17)
    {
      [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier];
    }

    else if ([v8 deviceActionType] == 27)
    {
      v24 = +[SDNearbyAgent sharedNearbyAgent];
      [v24 setBoostNearbyInfo:0];
    }

    else if ([v8 deviceActionType] == 8)
    {
      [(SDSetupAgent *)self _uiStopIfNeededWithDevice:identifier];
    }

    unoteTVLatencySetup = self->_unoteTVLatencySetup;
    if (unoteTVLatencySetup)
    {
      identifier2 = [(CUUserNotificationSession *)unoteTVLatencySetup identifier];
      uUIDString = [identifier UUIDString];
      v16 = [identifier2 isEqual:uUIDString];

      if (v16)
      {
        [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
        v17 = self->_unoteTVLatencySetup;
        self->_unoteTVLatencySetup = 0;
      }
    }
  }

LABEL_200:
}

- (void)_deviceLost:(id)lost
{
  identifier = [lost identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    if (v4)
    {
      v5 = v4;
      [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
      if ([v5 deviceActionType] == 17)
      {
        [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier];
      }

      if ([v5 deviceActionType] == 27)
      {
        v6 = +[SDNearbyAgent sharedNearbyAgent];
        [v6 setBoostNearbyInfo:0];
      }

      unoteTVLatencySetup = self->_unoteTVLatencySetup;
      if (unoteTVLatencySetup)
      {
        identifier2 = [(CUUserNotificationSession *)unoteTVLatencySetup identifier];
        uUIDString = [identifier UUIDString];
        v10 = [identifier2 isEqual:uUIDString];

        if (v10)
        {
          [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
          v11 = self->_unoteTVLatencySetup;
          self->_unoteTVLatencySetup = 0;
        }
      }

      [(SDSetupAgent *)self _postDeviceSetupNotificationForDevice:v5 present:0];
    }
  }

  _objc_release_x2(v4);
}

- (void)_watchFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_watchSetupScanner || (gSDProxCardsSuppressed & 1) != 0 || [(SDSetupAgent *)self _uiShowing]|| ([(SDStatusMonitor *)self->_statusMonitor systemUIFlags]& 0x7C809) != 0)
  {
    goto LABEL_47;
  }

  v6 = 0;
  setupProximityEstimator = 0;
  v8 = 0;
  if ([(SDSetupAgent *)self _screenLocked]|| !identifier)
  {
    goto LABEL_46;
  }

  v9 = [(NSMutableDictionary *)self->_watchSetupDevices objectForKeyedSubscript:identifier];

  if (v9)
  {
LABEL_47:
    v6 = 0;
    setupProximityEstimator = 0;
    v8 = 0;
    goto LABEL_46;
  }

  [(SDSetupAgent *)self _watchFastScanStartIfAllowed:foundCopy];
  v8 = objc_alloc_init(SFDevice);
  [v8 updateWithBLEDevice:foundCopy];
  [v8 setDeviceActionType:5];
  setupProximityEstimator = [foundCopy setupProximityEstimator];
  if (!setupProximityEstimator)
  {
    v10 = +[SDNearbyAgent sharedNearbyAgent];
    setupProximityEstimator = [v10 bleProximityEstimatorForActionType:5 device:v8];

    [foundCopy setSetupProximityEstimator:setupProximityEstimator];
  }

  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

  if (!v11)
  {
    [(NSMutableDictionary *)self->_devices setObject:v8 forKeyedSubscript:identifier];
  }

  [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v8];
  v12 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v8];
  if (v12 == 2)
  {
    sub_1000A2A90();
    if (v15 ^ v16 | v14)
    {
      if (v13 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&dword_10096FEF8, "[SDSetupAgent _watchFound:]", 50, "#ni_estimator watch triggered");
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    [foundCopy setTriggered:v12 == 2];
  }

  else
  {
    [setupProximityEstimator updateWithSFBLEDevice:foundCopy];
  }

  if (![foundCopy triggered] || (SFStoreDemoMode() & 1) != 0 || (SFLostMode() & 1) != 0)
  {
LABEL_41:
    v6 = 0;
    goto LABEL_46;
  }

  watchSetupDevices = self->_watchSetupDevices;
  if (!watchSetupDevices)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = self->_watchSetupDevices;
    self->_watchSetupDevices = v18;

    watchSetupDevices = self->_watchSetupDevices;
  }

  [(NSMutableDictionary *)watchSetupDevices setObject:foundCopy forKeyedSubscript:identifier];
  if (self->_triggeredUIWatchSetup)
  {
    sub_1000A2A90();
    if (v15 ^ v16 | v14 && (v27 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _watchFound:]", 50, "Ignoring proximity WatchSetup with another %@\n", foundCopy);
    }

    goto LABEL_41;
  }

  self->_triggeredUIWatchSetup = 1;
  v20 = [(SDSetupAgent *)self _watchMigrating:identifier];
  if (!v20)
  {
    sub_1000A2A90();
    if (v15 ^ v16 | v14 && (v24 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _watchFound:]", 50, "Triggering proximity WatchSetup with %@\n", foundCopy);
    }

    [(SDSetupAgent *)self _watchFastScanStop];
    [(SDSetupAgent *)self _uiStartSetupWatch:v8];
    v28[0] = @"_cat";
    v28[1] = @"_op";
    v29[0] = @"WatchSetup";
    v29[1] = @"Triggered";
    v28[2] = @"rssi";
    v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [setupProximityEstimator estimatedRSSI]);
    v29[2] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    SFDashboardLogJSON();

    goto LABEL_41;
  }

  v6 = v20;
  v21 = mach_absolute_time();
  v22 = v21 - self->_watchMigrationLastTicks;
  if (v22 >= SecondsToUpTicks())
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10096FEF8, "[SDSetupAgent _watchFound:]", 50, "Triggering proximity WatchMigration with %@\n", foundCopy);
    }

    [(SDSetupAgent *)self _watchFastScanStop];
    self->_watchMigrationLastTicks = v21;
    [(SDSetupAgent *)self _watchStartMigration:v6];
  }

  else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    v23 = UpTicksToSeconds();
    LogPrintF(&dword_10096FEF8, "[SDSetupAgent _watchFound:]", 50, "Ignoring WatchMigration...too soon (%llu < %d secs)\n", v23, 14400);
  }

LABEL_46:
}

@end