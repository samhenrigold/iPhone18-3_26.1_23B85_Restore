@interface AUMFiSetupController
+ (id)setupController;
- (AUMFiSetupController)init;
- (id)targetBaseInfoDict;
- (int)cancelSetup;
- (int)endSetup:(int)setup;
- (int)joinTargetSWAP;
- (int)sendProgressToUI:(int)i withParamDict:(id)dict;
- (int)sendSetupCompleteToUIWithResult:(int)result;
- (int)sendiAPOverWiFiDeviceConfiguredXPCMessage;
- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options;
- (int)updateSettingsAsync;
- (void)_startEasyConfigWhenReady;
- (void)acquireDestinationNetworkPassword;
- (void)askUserForNetworkPassword:(id)password;
- (void)askUserForSetupCodeWithRetryStatus:(BOOL)status;
- (void)askUserForUncertified;
- (void)callbackAskUserForPasswordResult:(int)result password:(id)password remember:(int)remember;
- (void)callbackAskUserForSetupCodeResult:(int)result password:(id)password;
- (void)callbackAskUserForUncertifiedResult:(int)result;
- (void)createEasyConfigDeviceConfiguration;
- (void)dealloc;
- (void)handleEasyConfigProgress:(id)progress;
- (void)handleEasyConfigProgressAppliedConfigurationToDevice:(id)device;
- (void)handleEasyConfigProgressSearchingForPostConfigDevice:(id)device;
- (void)handleEasyConfigStopped:(id)stopped;
- (void)invalidateLinkUpOnDestinationNetworkTimer;
- (void)joinDestinationAPDone:(id)done;
- (void)joinDestinationNetworkTimeoutFired:(id)fired;
- (void)joinSWAPDone:(id)done;
- (void)linkChangeNotification:(id)notification;
- (void)linkUpOnDestinationAP:(id)p;
- (void)linkUpOnSWAP:(id)p;
- (void)logCompletionStatus:(int)status;
- (void)startEasyConfigWhenReady;
- (void)startListeningForEasyConfigDeviceStatusNotifications;
- (void)stopListeningToAllNotifications;
- (void)stopListeningToEasyConfigDeviceStatusNotifications;
@end

@implementation AUMFiSetupController

+ (id)setupController
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "+[AUMFiSetupController setupController]", 800, "\n");
  }

  v2 = objc_alloc_init(AUMFiSetupController);

  return v2;
}

- (AUMFiSetupController)init
{
  v4.receiver = self;
  v4.super_class = AUMFiSetupController;
  v2 = [(AUSetupController *)&v4 init];
  if (v2)
  {
    v2->_mfiSetupDelegates = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController init]", 800, "\n");
  }

  v2->_successfullyEstablishedLinkOnTargetDeviceSWAP = 0;
  v2->_successfullyEstablishedLinkOnDestinationAP = 0;
  v2->_promptedUserForDestinationWiFiPSK = 0;
  v2->_postediAPAccessoryConfiguredNotification = 0;
  v2->_destinationNetworkPasswordAccepted = 0;
  v2->_setupEnded = 0;
  v2->_waitingForLinkState = 0;
  v2->_easyConfigPreConfigMetrics.hitJoiningTargetSWAPTimeout = 0;
  v2->_easyConfigPostConfigMetrics.hitJoiningDestinationAPTimeout = 0;
  return v2;
}

- (void)dealloc
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController dealloc]", 800, "\n");
  }

  objc_msgSend_invalidateLinkUpOnDestinationNetworkTimer(self, a2, v2, v3);
  objc_msgSend_stopListeningToAllNotifications(self, v5, v6, v7);
  objc_msgSend_closeAllConnections(self, v8, v9, v10);

  self->_mfiSetupDelegates = 0;
  self->_autoGuessRecommendationDict = 0;

  self->_setupOptionsDict = 0;
  self->_destinationNetworkScanRecord = 0;

  self->_targetMFiDeviceScanRecord = 0;
  self->_destinationNetworkSSID = 0;

  self->_destinationNetworkPassword = 0;
  self->_accessoryResponseDict = 0;
  askUserForPasswordSemaphore = self->_askUserForPasswordSemaphore;
  if (askUserForPasswordSemaphore)
  {
    dispatch_release(askUserForPasswordSemaphore);
  }

  linkUpOnTargetSWAPSemaphore = self->_linkUpOnTargetSWAPSemaphore;
  if (linkUpOnTargetSWAPSemaphore)
  {
    dispatch_release(linkUpOnTargetSWAPSemaphore);
  }

  self->_askUserForPasswordSemaphore = 0;
  self->_linkUpOnTargetSWAPSemaphore = 0;
  v13.receiver = self;
  v13.super_class = AUMFiSetupController;
  [(AUSetupController *)&v13 dealloc];
}

- (int)cancelSetup
{
  v6.receiver = self;
  v6.super_class = AUMFiSetupController;
  cancelSetup = [(AUSetupController *)&v6 cancelSetup];
  linkUpOnTargetSWAPSemaphore = self->_linkUpOnTargetSWAPSemaphore;
  if (linkUpOnTargetSWAPSemaphore)
  {
    dispatch_semaphore_signal(linkUpOnTargetSWAPSemaphore);
  }

  if (cancelSetup == -6771)
  {
    return 0;
  }

  else
  {
    return cancelSetup;
  }
}

- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options
{
  self->_easyConfigPreConfigMetrics.startTime = CFAbsoluteTimeGetCurrent();
  self->_autoGuessRecommendationDict = recommendation;
  setupOptionsDict = options;
  self->_setupOptionsDict = setupOptionsDict;
  if (self->_autoGuessRecommendationDict)
  {
    v10 = setupOptionsDict == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return -6762;
  }

  if (dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || (v11 = sub_23EB74AC8(&dword_27E383310, 0x320u), setupOptionsDict = self->_setupOptionsDict, v11))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController setupFromAutoguessRecommendation:withOptions:]", 800, "Setup Options: %@\n", setupOptionsDict);
      setupOptionsDict = self->_setupOptionsDict;
    }
  }

  v12 = objc_msgSend_objectForKey_(setupOptionsDict, v8, @"kBSAutoGuessSetupOptionKey_BaseName", v9);
  self->_postConfigTargetDeviceFriendlyName = v12;
  if (!objc_msgSend_length(v12, v13, v14, v15))
  {
    return -6762;
  }

  self->_destinationNetworkScanRecord = objc_msgSend_objectForKey_(self->_setupOptionsDict, v16, @"kBSAutoGuessSetupOptionKey_SourceNetwork", v17);
  v22 = objc_msgSend_objectForKey_(self->_setupOptionsDict, v18, @"BSAutoGuess_UnconfiguredNetwork", v19);
  self->_targetMFiDeviceScanRecord = v22;
  result = -6762;
  if (self->_destinationNetworkScanRecord && v22)
  {
    v24 = objc_msgSend_objectForKey_(v22, v20, @"SNR", v21);
    v27 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v25, @"RSSI", v26);
    v30 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v28, @"CHANNEL", v29);
    self->_easyConfigPreConfigMetrics.snrOfSWAP = objc_msgSend_integerValue(v24, v31, v32, v33);
    self->_easyConfigPreConfigMetrics.rssiOfSWAP = objc_msgSend_integerValue(v27, v34, v35, v36);
    self->_easyConfigPreConfigMetrics.channelOfSWAP = objc_msgSend_integerValue(v30, v37, v38, v39);
    v42 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v40, @"SNR", v41);
    v45 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v43, @"RSSI", v44);
    v48 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v46, @"CHANNEL", v47);
    self->_easyConfigPostConfigMetrics.snrOfDestinationAP = objc_msgSend_integerValue(v42, v49, v50, v51);
    self->_easyConfigPostConfigMetrics.rssiOfDestinationAP = objc_msgSend_integerValue(v45, v52, v53, v54);
    self->_easyConfigPostConfigMetrics.channelOfDestinationAP = objc_msgSend_integerValue(v48, v55, v56, v57);
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController setupFromAutoguessRecommendation:withOptions:]", 800, "Destination Network Scan Record: %@\n", self->_destinationNetworkScanRecord);
    }

    v58 = objc_alloc(MEMORY[0x277CCACA8]);
    v61 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v59, self->_destinationNetworkScanRecord, v60);
    v64 = objc_msgSend_initWithString_(v58, v62, v61, v63);
    self->_destinationNetworkSSID = v64;
    if (v64)
    {
      v67 = objc_msgSend_objectForKey_(self->_autoGuessRecommendationDict, v65, @"BSAutoGuess_SourceNetwork", v66);
      v70 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v68, v67, v69);
      self->_easyConfigPreConfigMetrics.destinationNetworkRecommendationUsed = objc_msgSend_isEqualToString_(self->_destinationNetworkSSID, v71, v70, v72);
      postConfigTargetDeviceFriendlyName = self->_postConfigTargetDeviceFriendlyName;
      v76 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v74, self->_targetMFiDeviceScanRecord, v75);
      self->_easyConfigPreConfigMetrics.userChangedFriendlyName = objc_msgSend_isEqualToString_(postConfigTargetDeviceFriendlyName, v77, v76, v78) ^ 1;
      v82 = objc_msgSend_sharedInstance(WiFiUtils, v79, v80, v81);
      objc_msgSend_setAutoJoinState_(v82, v83, 0, v84);
      v85 = dispatch_semaphore_create(0);
      result = 0;
      self->_linkUpOnTargetSWAPSemaphore = v85;
      return result;
    }

    return -6762;
  }

  return result;
}

- (int)updateSettingsAsync
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23EC13F7C;
  block[3] = &unk_278C66C50;
  block[4] = self;
  dispatch_async(global_queue, block);
  return 0;
}

- (void)linkChangeNotification:(id)notification
{
  if (!self->_waitingForLinkState || (v5 = objc_msgSend_userInfo(notification, a2, notification, v3)) == 0)
  {
    v28 = 0;
LABEL_22:
    v22 = &stru_285145FE8;
    v20 = &stru_285145FE8;
    goto LABEL_23;
  }

  v8 = v5;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "linkDict: %@\n", v8);
  }

  v9 = objc_msgSend_objectForKey_(v8, v6, @"kNetworkLinkManager_LinkChangeKey_LinkState", v7);
  v13 = objc_msgSend_integerValue(v9, v10, v11, v12);
  if (v13 != 1)
  {
    v28 = v13;
    goto LABEL_22;
  }

  objc_msgSend_objectForKey_(v8, v14, @"kNetworkLinkManager_LinkChangeKey_IfName", v15);
  v20 = objc_msgSend_objectForKey_(v8, v16, @"kNetworkLinkManager_LinkChangeKey_WiFiName", v17);
  if (v20)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "Link Up on SSID: %@\n", v20);
    }

    if (self->_waitingForLinkState == 1)
    {
      v21 = &OBJC_IVAR___AUMFiSetupController__targetMFiDeviceScanRecord;
    }

    else
    {
      v21 = &OBJC_IVAR___AUMFiSetupController__destinationNetworkScanRecord;
    }

    v22 = objc_msgSend_objectForKey_(*(&self->super.super.super.isa + *v21), v18, @"SSID_STR", v19);
    if (objc_msgSend_isEqualToString_(v22, v23, v20, v24))
    {
      waitingForLinkState = self->_waitingForLinkState;
      if (waitingForLinkState == 2)
      {
        objc_msgSend_linkUpOnDestinationAP_(self, v25, v20, v26);
      }

      else if (waitingForLinkState == 1)
      {
        objc_msgSend_linkUpOnSWAP_(self, v25, v20, v26);
      }
    }
  }

  else
  {
    v22 = &stru_285145FE8;
  }

  v28 = 1;
LABEL_23:
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "eWaitingForLinkState: %d\n", self->_waitingForLinkState);
  }

  v29 = self->_waitingForLinkState;
  if (!v29)
  {
    return;
  }

  if (!v28)
  {
    if (dword_27E383310 > 800 || dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      return;
    }

    v31 = "Link Down\n";
    goto LABEL_41;
  }

  if (!v20)
  {
    if (dword_27E383310 > 800 || dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      return;
    }

    v31 = "No SSID Associated\n";
LABEL_41:

    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, v31);
    return;
  }

  if (v29 == 1)
  {
    v30 = 269;
  }

  else
  {
    if (v29 != 2)
    {
      return;
    }

    v30 = 270;
  }

  if ((*(&self->super.super.super.isa + v30) & 1) == 0 && dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "ERROR: Currently associated to: %@, expected: %@\n", v20, v22);
  }
}

- (void)linkUpOnSWAP:(id)p
{
  self->_easyConfigPreConfigMetrics.secondsToGetLinkUpOnSWAP = CFAbsoluteTimeGetCurrent() - self->_timeSWAPJoinStarted;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkUpOnSWAP:]", 800, "SSID: %@\n", p);
  }

  dispatch_semaphore_signal(self->_linkUpOnTargetSWAPSemaphore);
  self->_successfullyEstablishedLinkOnTargetDeviceSWAP = 1;
  self->_waitingForLinkState = 0;
}

- (void)linkUpOnDestinationAP:(id)p
{
  self->_easyConfigPostConfigMetrics.secondsToGetLinkUpOnDestination = CFAbsoluteTimeGetCurrent() - self->_timeDestinationAPJoinStarted;
  objc_msgSend_invalidateLinkUpOnDestinationNetworkTimer(self, v5, v6, v7);
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9, v10);
  objc_msgSend_removeObserver_name_object_(v11, v12, self, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
  objc_msgSend_resumePostConfig(self->_easyConfigDevice, v13, v14, v15);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkUpOnDestinationAP:]", 800, "SSID: %@\n", p);
  }

  self->_successfullyEstablishedLinkOnDestinationAP = 1;
  self->_waitingForLinkState = 0;
}

- (int)joinTargetSWAP
{
  self->_waitingForLinkState = 1;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    v4 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, a2, @"SSID_STR", v2);
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinTargetSWAP]", 800, "%@\n", v4);
  }

  self->_timeSWAPJoinStarted = CFAbsoluteTimeGetCurrent();
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6, v7);
  objc_msgSend_addObserver_selector_name_object_(v8, v9, self, sel_joinSWAPDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
  v13 = objc_msgSend_sharedInstance(WiFiUtils, v10, v11, v12);
  targetMFiDeviceScanRecord = self->_targetMFiDeviceScanRecord;

  return objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v13, v14, targetMFiDeviceScanRecord, 0, 1);
}

- (void)joinDestinationNetworkTimeoutFired:(id)fired
{
  linkUpOnDestinationNetworkTimer = self->_linkUpOnDestinationNetworkTimer;
  if (linkUpOnDestinationNetworkTimer)
  {
    if (objc_msgSend_isValid(linkUpOnDestinationNetworkTimer, a2, fired, v3))
    {
      objc_msgSend_invalidateLinkUpOnDestinationNetworkTimer(self, v6, v7, v8);
      if (!self->_successfullyEstablishedLinkOnDestinationAP)
      {
        self->_easyConfigPostConfigMetrics.hitJoiningDestinationAPTimeout = 1;
        v12 = objc_msgSend_sharedInstance(WiFiUtils, v9, v10, v11);
        objc_msgSend_cancelAsync(v12, v13, v14, v15);
        if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinDestinationNetworkTimeoutFired:]", 800, "ERROR: Did not successfully join destination network. Hit %d sec timeout.\n", 60);
        }

        objc_msgSend_endSetup_(self, v16, 4294960574, v17);
      }
    }
  }
}

- (void)joinDestinationAPDone:(id)done
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done, v3);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v11 = objc_msgSend_userInfo(done, v8, v9, v10);
  v14 = objc_msgSend_objectForKey_(v11, v12, @"WiFiUtils_OSStatus", v13);
  if (v14)
  {
    v18 = objc_msgSend_integerValue(v14, v15, v16, v17);
    v21 = v18;
    if (v18)
    {
      if (v18 == -16)
      {
        if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinDestinationAPDone:]", 800, "ERROR: Incorrect destination network password for %@\n", self->_destinationNetworkSSID);
        }

        objc_msgSend_endSetup_(self, v19, 4294960534, v20);
        LODWORD(v21) = -16;
      }

      else if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinDestinationAPDone:]", 800, "ERROR: %#m\n", v21);
      }
    }

    else
    {
      self->_destinationNetworkPasswordAccepted = 1;
    }
  }

  else
  {
    LODWORD(v21) = -6705;
  }

  self->_easyConfigPostConfigMetrics.wifiJoinDestinationAPError = v21;
}

- (void)joinSWAPDone:(id)done
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done, v3);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v11 = objc_msgSend_userInfo(done, v8, v9, v10);
  v14 = objc_msgSend_objectForKey_(v11, v12, @"WiFiUtils_OSStatus", v13);
  if (v14)
  {
    v18 = objc_msgSend_integerValue(v14, v15, v16, v17);
  }

  else
  {
    v18 = -6705;
  }

  self->_easyConfigPreConfigMetrics.wifiJoinSWAPError = v18;
}

- (void)invalidateLinkUpOnDestinationNetworkTimer
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController invalidateLinkUpOnDestinationNetworkTimer]", 800, "\n");
  }

  objc_msgSend_invalidate(self->_linkUpOnDestinationNetworkTimer, a2, v2, v3);

  objc_msgSend_setLinkUpOnDestinationNetworkTimer_(self, v5, 0, v6);
}

- (void)acquireDestinationNetworkPassword
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController acquireDestinationNetworkPassword]", 800, "\n");
  }

  v12 = 0;
  if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, a2, self->_destinationNetworkScanRecord, 0, &v12))
  {
    if (v12 == 1)
    {
      if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController acquireDestinationNetworkPassword]", 800, "ERROR: Destination network has Enterprise security.\n");
      }

LABEL_11:
      objc_msgSend_endSetup_(self, v3, 4294960534, v4);
      return;
    }

    NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v3, self->_destinationNetworkScanRecord, v4);
    objc_msgSend_setDestinationNetworkPassword_(self, v6, NetworkPassword, v7);
    self->_easyConfigPostConfigMetrics.destinationNetworkPSKInKeychain = 1;
    if (!self->_destinationNetworkPassword)
    {
      self->_askUserForPasswordSemaphore = dispatch_semaphore_create(0);
      objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v8, sel_askUserForNetworkPassword_, self->_destinationNetworkSSID, 0);
      dispatch_semaphore_wait(self->_askUserForPasswordSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      self->_easyConfigPostConfigMetrics.destinationNetworkPSKInKeychain = 0;
      if (!objc_msgSend_length(self->_destinationNetworkPassword, v9, v10, v11))
      {
        if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController acquireDestinationNetworkPassword]", 800, "ERROR: Network is secure, but _destinationNetworkPassword is zero length!\n");
        }

        goto LABEL_11;
      }
    }
  }
}

- (void)startListeningForEasyConfigDeviceStatusNotifications
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController startListeningForEasyConfigDeviceStatusNotifications]", 800, "\n");
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_addObserver_selector_name_object_(v5, v6, self, sel_handleEasyConfigProgress_, *MEMORY[0x277D06AD0], 0);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9);
  v12 = *MEMORY[0x277D06AD8];

  objc_msgSend_addObserver_selector_name_object_(v10, v11, self, sel_handleEasyConfigStopped_, v12, 0);
}

- (void)stopListeningToEasyConfigDeviceStatusNotifications
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController stopListeningToEasyConfigDeviceStatusNotifications]", 800, "\n");
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, *MEMORY[0x277D06AD0], 0);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9);
  v12 = *MEMORY[0x277D06AD8];

  objc_msgSend_removeObserver_name_object_(v10, v11, self, v12, 0);
}

- (void)handleEasyConfigProgress:(id)progress
{
  lastHeardEasyConfigProgressNotification = self->_lastHeardEasyConfigProgressNotification;
  v7 = objc_msgSend_userInfo(progress, a2, progress, v3);
  v10 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x277D06B40], v9);
  v14 = objc_msgSend_integerValue(v10, v11, v12, v13);
  self->_lastHeardEasyConfigProgressNotification = v14;
  if (v14 != 50)
  {
    v17 = v14;
    if (v14 != 40)
    {
      if (v14 == 10)
      {
        if (lastHeardEasyConfigProgressNotification >= 0xB && dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {

          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgress:]", 800, "RETRY: EasyConfig backed up states\n");
        }

        return;
      }

      if (dword_27E383310 > 800)
      {
        return;
      }

      if (dword_27E383310 == -1)
      {
        if (!sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          return;
        }

        v17 = self->_lastHeardEasyConfigProgressNotification;
      }

      if (v17 > 29)
      {
        if (v17 <= 49)
        {
          if (v17 == 30)
          {
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Applying configuration to device", v16);
            goto LABEL_60;
          }

          if (v17 == 40)
          {
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Applied configuration to device", v16);
            goto LABEL_60;
          }
        }

        else
        {
          switch(v17)
          {
            case '2':
              v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Searching for post-config device", v16);
              goto LABEL_60;
            case '<':
              v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Performing post-config check of device", v16);
              goto LABEL_60;
            case 'F':
              v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Performed post-config check of device", v16);
              goto LABEL_60;
          }
        }
      }

      else if (v17 <= 2)
      {
        if (v17 == 1)
        {
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Start", v16);
          goto LABEL_60;
        }

        if (v17 == 2)
        {
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Final", v16);
          goto LABEL_60;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Error", v16);
            goto LABEL_60;
          case 10:
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Search for pre-config device", v16);
            goto LABEL_60;
          case 20:
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Authenticating pre-config device", v16);
LABEL_60:
            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgress:]", 800, "Unhandled: %@\n", v18);
            return;
        }
      }

      if (v17 == 100)
      {
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Configuration complete", v16);
      }

      else
      {
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "?", v16);
      }

      goto LABEL_60;
    }

    if (lastHeardEasyConfigProgressNotification <= 0x27)
    {

      MEMORY[0x2821F9670](self, sel_handleEasyConfigProgressAppliedConfigurationToDevice_, progress, v16);
      return;
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1)
    {
      v19 = MEMORY[0x277CCACA8];
LABEL_31:
      v20 = objc_msgSend_stringWithUTF8String_(v19, v15, "Applied configuration to device", v16);
LABEL_32:
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgress:]", 800, "Ignoring duplicate %@\n", v20);
      return;
    }

    if (!sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      return;
    }

    v21 = self->_lastHeardEasyConfigProgressNotification;
    v19 = MEMORY[0x277CCACA8];
    if (v21 > 29)
    {
      if (v21 <= 49)
      {
        if (v21 == 30)
        {
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Applying configuration to device", v16);
          goto LABEL_32;
        }

        if (v21 == 40)
        {
          goto LABEL_31;
        }
      }

      else
      {
        switch(v21)
        {
          case '2':
            v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Searching for post-config device", v16);
            goto LABEL_32;
          case '<':
            v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Performing post-config check of device", v16);
            goto LABEL_32;
          case 'F':
            v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Performed post-config check of device", v16);
            goto LABEL_32;
        }
      }
    }

    else if (v21 <= 2)
    {
      if (v21 == 1)
      {
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Start", v16);
        goto LABEL_32;
      }

      if (v21 == 2)
      {
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Final", v16);
        goto LABEL_32;
      }
    }

    else
    {
      switch(v21)
      {
        case 3:
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Error", v16);
          goto LABEL_32;
        case 10:
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Search for pre-config device", v16);
          goto LABEL_32;
        case 20:
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Authenticating pre-config device", v16);
          goto LABEL_32;
      }
    }

    if (v21 == 100)
    {
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "Configuration complete", v16);
    }

    else
    {
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "?", v16);
    }

    goto LABEL_32;
  }

  MEMORY[0x2821F9670](self, sel_handleEasyConfigProgressSearchingForPostConfigDevice_, progress, v16);
}

- (void)handleEasyConfigProgressAppliedConfigurationToDevice:(id)device
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgressAppliedConfigurationToDevice:]", 800, "\n");
  }

  self->_waitingForLinkState = 2;
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, device, v3);
  objc_msgSend_addObserver_selector_name_object_(v6, v7, self, sel_joinDestinationAPDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgressAppliedConfigurationToDevice:]", 800, "Asking WiFiUtils to join destination network: %@\n", self->_destinationNetworkSSID);
  }

  self->_timeDestinationAPJoinStarted = CFAbsoluteTimeGetCurrent();
  v11 = objc_msgSend_sharedInstance(WiFiUtils, v8, v9, v10);
  objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v11, v12, self->_destinationNetworkScanRecord, self->_destinationNetworkPassword, 2);
  v14 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v13, self, sel_joinDestinationNetworkTimeoutFired_, 0, 0, 60.0);
  objc_msgSend_setLinkUpOnDestinationNetworkTimer_(self, v15, v14, v16);
  v20 = objc_msgSend_userInfo(device, v17, v18, v19);
  self->_accessoryResponseDict = objc_msgSend_objectForKey_(v20, v21, *MEMORY[0x277D06B50], v22);
}

- (void)handleEasyConfigProgressSearchingForPostConfigDevice:(id)device
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = objc_msgSend_objectForKey_(self->_setupOptionsDict, a2, @"kBSAutoGuessSetupOptionKey_BaseName", v3);
  v9 = objc_msgSend_dictionaryWithObject_forKey_(v5, v7, v6, @"BSAssistantProgressKey_StringParameter");

  objc_msgSend_sendProgressToUI_withParamDict_(self, v8, 7, v9);
}

- (void)handleEasyConfigStopped:(id)stopped
{
  v5 = objc_msgSend_userInfo(stopped, a2, stopped, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x277D06B48], v7);
  v13 = objc_msgSend_code(v8, v9, v10, v11);

  objc_msgSend_endSetup_(self, v12, v13, v14);
}

- (void)createEasyConfigDeviceConfiguration
{
  v4 = objc_msgSend_objectForKey_(self->_autoGuessRecommendationDict, a2, @"BSAutoGuess_UnconfiguredNetwork", v2);
  v7 = objc_msgSend_deviceWithScanRecord_(MEMORY[0x277D06B70], v5, v4, v6);
  self->_easyConfigDevice = v7;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23EC15690;
  v31[3] = &unk_278C69420;
  v31[4] = self;
  objc_msgSend_setPromptForSetupCodeHandler_(v7, v8, v31, v9);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_msgSend_setObject_forKey_(v10, v11, self->_destinationNetworkSSID, *MEMORY[0x277D06B68]);
  objc_msgSend_acquireDestinationNetworkPassword(self, v12, v13, v14);
  if (objc_msgSend_length(self->_destinationNetworkPassword, v15, v16, v17))
  {
    objc_msgSend_setObject_forKey_(v10, v18, self->_destinationNetworkPassword, *MEMORY[0x277D06B60]);
  }

  objc_msgSend_setObject_forKey_(v10, v18, self->_postConfigTargetDeviceFriendlyName, *MEMORY[0x277D06B30]);
  if (objc_msgSend_scanInfoIsMFIAirPlayDevice_(WiFiUtils, v19, self->_targetMFiDeviceScanRecord, v20))
  {
    v23 = objc_msgSend_objectForKey_(self->_setupOptionsDict, v21, @"kBSAutoGuessSetupOptionKey_AirPlayPassword", v22);
    v27 = objc_msgSend_length(v23, v24, v25, v26);
    v28 = v27 != 0;
    if (v27)
    {
      objc_msgSend_setObject_forKey_(v10, v21, v23, *MEMORY[0x277D06B38]);
    }

    self->_easyConfigPreConfigMetrics.playPasswordSet = v28;
  }

  objc_msgSend_setConfiguration_(self->_easyConfigDevice, v21, v10, v22);
  objc_msgSend_setPausesAfterApply_(self->_easyConfigDevice, v29, 1, v30);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController createEasyConfigDeviceConfiguration]", 800, "Config dict: %@\n", v10);
  }
}

- (void)startEasyConfigWhenReady
{
  if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, a2, self->_targetMFiDeviceScanRecord, v2) & 1) != 0 || !objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v4, self->_targetMFiDeviceScanRecord, v6))
  {

    MEMORY[0x2821F9670](self, sel__startEasyConfigWhenReady, v5, v6);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_askUserForUncertified, v5, v6);
  }
}

- (void)_startEasyConfigWhenReady
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23EC15A28;
  block[3] = &unk_278C66C50;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_msgSend_createEasyConfigDeviceConfiguration(self, v3, v4, v5);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "_joinTargetSWAPCompleteSemaphore - WAITING\n");
  }

  linkUpOnTargetSWAPSemaphore = self->_linkUpOnTargetSWAPSemaphore;
  v7 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(linkUpOnTargetSWAPSemaphore, v7);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "_joinTargetSWAPCompleteSemaphore - DONE\n");
  }

  successfullyEstablishedLinkOnTargetDeviceSWAP = self->_successfullyEstablishedLinkOnTargetDeviceSWAP;
  self->_easyConfigPreConfigMetrics.hitJoiningTargetSWAPTimeout = !successfullyEstablishedLinkOnTargetDeviceSWAP;
  if (successfullyEstablishedLinkOnTargetDeviceSWAP)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "Successfully joined target device SWAP\n");
    }

    objc_msgSend_startListeningForEasyConfigDeviceStatusNotifications(self, v8, v9, v10);
    objc_msgSend_start(self->_easyConfigDevice, v12, v13, v14);
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "ERROR: Did not successfully join target device SWAP. Hit %d sec timeout\n", 30);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23EC15A38;
    v15[3] = &unk_278C66C50;
    v15[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

- (id)targetBaseInfoDict
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(self->_autoGuessRecommendationDict, v10, @"BSAutoGuess_Recommendation", v11);
  objc_msgSend_setObject_forKey_(v5, v13, v12, @"BSAutoGuess_Recommendation");
  objc_msgSend_setObject_forKey_(v5, v14, self->_autoGuessRecommendationDict, @"kSetupBaseStationInfoKey_RecommendationInfo");
  objc_msgSend_setObject_forKey_(v5, v15, self->_targetMFiDeviceScanRecord, @"kSetupBaseStationInfoKey_BrowseRecord");
  destinationNetworkSSID = self->_destinationNetworkSSID;
  v17 = sub_23EB6CDF8(1918979693);
  objc_msgSend_setObject_forKey_(v9, v18, destinationNetworkSSID, v17);
  objc_msgSend_setObject_forKey_(v5, v19, v9, @"kSetupBaseStationInfoKey_RadioInfo");
  accessoryResponseDict = self->_accessoryResponseDict;
  if (accessoryResponseDict)
  {
    objc_msgSend_setObject_forKey_(v5, v20, accessoryResponseDict, @"kSetupBaseStationInfoKey_MFiAccessoryResponse");
  }

  return v5;
}

- (void)askUserForUncertified
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController askUserForUncertified]", 800, "\n");
  }

  uiDelegate = self->super.super._uiDelegate;

  MEMORY[0x2821F9670](uiDelegate, sel_callbackAskUserForUncertifiedForController_, self, v2);
}

- (void)callbackAskUserForUncertifiedResult:(int)result
{
  if (result)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForUncertifiedResult:]", 800, "User denied uncertified accessory.\n");
    }

    objc_msgSend_endSetup_(self, a2, 4294960573, v3);
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForUncertifiedResult:]", 800, "User approved uncertified accessory.\n");
    }

    objc_msgSend_performSelectorInBackground_withObject_(self, a2, sel__startEasyConfigWhenReady, 0);
  }
}

- (void)askUserForSetupCodeWithRetryStatus:(BOOL)status
{
  statusCopy = status;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController askUserForSetupCodeWithRetryStatus:]", 800, "\n");
  }

  uiDelegate = self->super.super._uiDelegate;

  MEMORY[0x2821F9670](uiDelegate, sel_callbackAskUserForSetupCode_isRetry_forController_, 2, statusCopy);
}

- (void)callbackAskUserForSetupCodeResult:(int)result password:(id)password
{
  if (result)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForSetupCodeResult:password:]", 800, "Failed to obtain MFi setup code from user.\n");
    }

    easyConfigDevice = self->_easyConfigDevice;

    objc_msgSend_stop(easyConfigDevice, a2, *&result, password);
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForSetupCodeResult:password:]", 800, "Successfully obtained MFi setup code from user.\n");
    }

    v7 = self->_easyConfigDevice;

    MEMORY[0x2821F9670](v7, sel_trySetupCode_, password, password);
  }
}

- (void)askUserForNetworkPassword:(id)password
{
  self->_promptedUserForDestinationWiFiPSK = 1;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController askUserForNetworkPassword:]", 800, "\n");
  }

  uiDelegate = self->super.super._uiDelegate;

  objc_msgSend_callbackAskUserForPassword_param_forController_(uiDelegate, a2, 1, password, self);
}

- (void)callbackAskUserForPasswordResult:(int)result password:(id)password remember:(int)remember
{
  v25 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForPasswordResult:password:remember:]", 800, "Did NOT get destination network password from user\n");
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = objc_msgSend_copy(self->_mfiSetupDelegates, a2, *&result, password, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v16 = objc_msgSend_targetBaseInfoDict(self, v13, v14, v15);
            objc_msgSend_setupCompleteWithResult_baseStationInfo_forController_(v12, v17, 4294960527, v16, self);
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v20, v24, 16);
      }

      while (v9);
    }
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForPasswordResult:password:remember:]", 800, "Successfully obtained destination network password from user.\n");
    }

    objc_msgSend_setDestinationNetworkPassword_(self, a2, password, password);
    askUserForPasswordSemaphore = self->_askUserForPasswordSemaphore;

    dispatch_semaphore_signal(askUserForPasswordSemaphore);
  }
}

- (int)sendProgressToUI:(int)i withParamDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  mfiSetupDelegates = self->_mfiSetupDelegates;
  if (!mfiSetupDelegates)
  {
    return -6762;
  }

  v7 = *&i;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_copy(mfiSetupDelegates, a2, *&i, dict, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (!v10)
  {
    return -6700;
  }

  v11 = v10;
  v12 = *v19;
  v13 = -6700;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v18 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_setupProgressUpdated_status_paramDict_forController_(v15, v16, v7, 0, dict, self);
        v13 = 0;
      }
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v18, v22, 16);
  }

  while (v11);
  return v13;
}

- (int)sendSetupCompleteToUIWithResult:(int)result
{
  v4 = *&result;
  v26 = *MEMORY[0x277D85DE8];
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController sendSetupCompleteToUIWithResult:]", 800, "%#m\n", v4);
  }

  mfiSetupDelegates = self->_mfiSetupDelegates;
  if (!mfiSetupDelegates)
  {
    return -6762;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_copy(mfiSetupDelegates, a2, *&result, v3);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (!v9)
  {
    return -6700;
  }

  v10 = v9;
  v11 = *v22;
  v12 = -6700;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v18 = objc_msgSend_targetBaseInfoDict(self, v15, v16, v17);
        objc_msgSend_setupCompleteWithResult_baseStationInfo_forController_(v14, v19, v4, v18, self);
        v12 = 0;
      }
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v21, v25, 16);
  }

  while (v10);
  return v12;
}

- (int)sendiAPOverWiFiDeviceConfiguredXPCMessage
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController sendiAPOverWiFiDeviceConfiguredXPCMessage]", 800, "\n");
  }

  mach_service = xpc_connection_create_mach_service("com.apple.iaptransportd.xpc", 0, 0);
  qword_27E3834E0 = mach_service;
  if (!mach_service && dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController sendiAPOverWiFiDeviceConfiguredXPCMessage]", 800, "ERROR: Unable to get iaptransportd xpc connection\n");
    }

    mach_service = qword_27E3834E0;
  }

  if (mach_service && (xpc_connection_set_event_handler(mach_service, &unk_285145828), xpc_connection_resume(qword_27E3834E0), (v4 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v5 = v4;
    xpc_dictionary_set_string(v4, "requestType", "kAirPortAssistantKey_ConfigurediAP");
    v8 = objc_msgSend_cStringUsingEncoding_(self->_postConfigTargetDeviceFriendlyName, v6, 4, v7);
    xpc_dictionary_set_string(v5, "kAirPortAssistantKey_ConfigurediAP_Name", v8);
    v11 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v9, @"BSSID", v10);
    v14 = objc_msgSend_cStringUsingEncoding_(v11, v12, 4, v13);
    xpc_dictionary_set_string(v5, "kAirPortAssistantKey_ConfigurediAP_MAC_Address", v14);
    v17 = objc_msgSend_cStringUsingEncoding_(self->_destinationNetworkSSID, v15, 4, v16);
    xpc_dictionary_set_string(v5, "kAirPortAssistantKey_ConfigurediAP_Destination_Network_SSID", v17);
    xpc_connection_send_message(qword_27E3834E0, v5);
    xpc_release(v5);
    v18 = 0;
    self->_postediAPAccessoryConfiguredNotification = 1;
  }

  else
  {
    v18 = -6762;
  }

  xpc_release(qword_27E3834E0);
  return v18;
}

- (int)endSetup:(int)setup
{
  v4 = *&setup;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController endSetup:]", 800, "%#m\n", v4);
  }

  objc_msgSend_stopListeningToAllNotifications(self, a2, *&setup, v3);
  if (self->_setupEnded)
  {
    v9 = 0;
  }

  else
  {
    self->_setupEnded = 1;
    objc_msgSend_sendSetupCompleteToUIWithResult_(self, v6, v4, v8);
    if (v4 || !objc_msgSend_scanInfoIsiAPOverWiFiDevice_(WiFiUtils, v10, self->_targetMFiDeviceScanRecord, v11))
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_sendiAPOverWiFiDeviceConfiguredXPCMessage(self, v10, v12, v11);
      if (v9 && dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController endSetup:]", 800, "ERROR: Unable to send iAP Accessory Configured XPC message\n");
      }
    }

    objc_msgSend_logCompletionStatus_(self, v10, v4, v11);
  }

  configContext = self->super._configContext;
  if (configContext)
  {
    v14 = sub_23EBBD2B8(configContext);
    sub_23EBEE150(v14);
  }

  v15 = objc_msgSend_sharedInstance(WiFiUtils, v6, v7, v8);
  objc_msgSend_setAutoJoinState_(v15, v16, 1, v17);
  easyConfigDevice = self->_easyConfigDevice;
  if (easyConfigDevice)
  {
    objc_msgSend_setPreConfigMetrics_(easyConfigDevice, v18, &self->_easyConfigPreConfigMetrics, v19);
    objc_msgSend_setPostConfigMetrics_(self->_easyConfigDevice, v21, &self->_easyConfigPostConfigMetrics, v22);
    objc_msgSend_stop(self->_easyConfigDevice, v23, v24, v25);
  }

  return v9;
}

- (void)stopListeningToAllNotifications
{
  objc_msgSend_stopListeningToEasyConfigDeviceStatusNotifications(self, a2, v2, v3);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
  v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11, v12);

  objc_msgSend_removeObserver_name_object_(v13, v14, self, @"com.apple.WiFiUtils.Join.Complete", 0);
}

- (void)logCompletionStatus:(int)status
{
  v3 = *&status;
  if (dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "************************ MFI CONFIG RESULTS *************************\n");
    }

    if (dword_27E383310 <= 800)
    {
      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "TARGET INFO:\n");
      }

      if (dword_27E383310 <= 800)
      {
        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          v7 = MEMORY[0x277CCACA8];
          if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v5, self->_targetMFiDeviceScanRecord, v6))
          {
            if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v8, self->_targetMFiDeviceScanRecord, v9) == 1)
            {
              v12 = objc_msgSend_stringWithUTF8String_(v7, v10, "Base Station", v11);
            }

            else if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v10, self->_targetMFiDeviceScanRecord, v11) == 2)
            {
              v12 = objc_msgSend_stringWithUTF8String_(v7, v13, "Apple AirPlay Device", v14);
            }

            else if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v13, self->_targetMFiDeviceScanRecord, v14) == 3)
            {
              v12 = objc_msgSend_stringWithUTF8String_(v7, v15, "MFi AirPlay Device", v16);
            }

            else if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v15, self->_targetMFiDeviceScanRecord, v16) == 4)
            {
              v12 = objc_msgSend_stringWithUTF8String_(v7, v17, "MFi Device", v18);
            }

            else
            {
              v12 = objc_msgSend_stringWithUTF8String_(v7, v17, "?", v18);
            }
          }

          else
          {
            v12 = objc_msgSend_stringWithUTF8String_(v7, v8, "Unknown", v9);
          }

          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    DEVICE KIND..: %@\n", v12);
        }

        if (dword_27E383310 <= 800)
        {
          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
          {
            v19 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v5, self->_targetMFiDeviceScanRecord, v6);
            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    FRIENDLY NAME: %@\n", v19);
          }

          if (dword_27E383310 <= 800)
          {
            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
            {
              v20 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v5, @"SSID_STR", v6);
              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    SSID.........: %@\n", v20);
            }

            if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
            {
              v21 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v5, @"BSSID", v6);
              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    MAC..........: %@\n", v21);
            }
          }
        }
      }
    }
  }

  if (self->_accessoryResponseDict)
  {
    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    APP MATCHING VALUES:\n");
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v24 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06AE8], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        BUNDLE SEED ID: %@\n", v24);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v25 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B18], v23);
      v28 = objc_msgSend_componentsJoinedByString_(v25, v26, @", ", v27);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        PROTOCOLS.....: %@\n", v28);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v29 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B30], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        NAME..........: %@\n", v29);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v30 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B20], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        MANUFACTURER..: %@\n", v30);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v31 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B28], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        MODEL.........: %@\n", v31);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v32 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B00], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        FIRMWARE REV..: %@\n", v32);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v33 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B10], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        HARDWARE REV..: %@\n", v33);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v58 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v22, *MEMORY[0x277D06B58], v23);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SERIAL NUMBER.: %@\n", v58);
    }
  }

  else
  {
    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    APP MATCHING VALUES: <<NULL>>\n", v57);
    }
  }

  if (dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "CONFIGURATION:\n");
    }

    if (dword_27E383310 <= 800)
    {
      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    FRIENDLY NAME: %@\n", self->_postConfigTargetDeviceFriendlyName);
      }

      if (dword_27E383310 <= 800)
      {
        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          v36 = objc_msgSend_objectForKey_(self->_setupOptionsDict, v34, @"kBSAutoGuessSetupOptionKey_AirPlayPassword", v35);
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    PLAY PASSWORD: %@\n", v36);
        }

        if (dword_27E383310 <= 800)
        {
          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
          {
            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    DESTINATION:\n");
          }

          if (dword_27E383310 <= 800)
          {
            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
            {
              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SSID...........: %@\n", self->_destinationNetworkSSID);
            }

            if (dword_27E383310 <= 800)
            {
              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
              {
                v39 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v37, @"BSSID", v38);
                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        MAC............: %@\n", v39);
              }

              if (dword_27E383310 <= 800)
              {
                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                {
                  if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v37, self->_destinationNetworkScanRecord, 0, 0))
                  {
                    v42 = @"Yes";
                  }

                  else
                  {
                    v42 = @"No";
                  }

                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SECURED........: %@\n", v42);
                }

                if (dword_27E383310 <= 800)
                {
                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                  {
                    if (objc_msgSend_length(self->_destinationNetworkPassword, v37, v40, v41))
                    {
                      v43 = @"Yes";
                    }

                    else
                    {
                      v43 = @"No";
                    }

                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        WIFI PSK VALID.: %@\n", v43);
                  }

                  if (dword_27E383310 <= 800)
                  {
                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                    {
                      if (self->_promptedUserForDestinationWiFiPSK)
                      {
                        v44 = @"User";
                      }

                      else
                      {
                        v44 = @"Keychain";
                      }

                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        WIFI PSK ORIGIN: %@\n", v44);
                    }

                    if (dword_27E383310 <= 800)
                    {
                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                      {
                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "AWD:\n");
                      }

                      if (dword_27E383310 <= 800)
                      {
                        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                        {
                          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    SWAP:\n");
                        }

                        if (dword_27E383310 <= 800)
                        {
                          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                          {
                            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        LINK UP TIME: %.3f seconds\n", self->_easyConfigPreConfigMetrics.secondsToGetLinkUpOnSWAP);
                          }

                          if (dword_27E383310 <= 800)
                          {
                            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                            {
                              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        JOIN ERROR..: %#m\n", self->_easyConfigPreConfigMetrics.wifiJoinSWAPError);
                            }

                            if (dword_27E383310 <= 800)
                            {
                              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                              {
                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        RSSI........: %d\n", self->_easyConfigPreConfigMetrics.rssiOfSWAP);
                              }

                              if (dword_27E383310 <= 800)
                              {
                                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                {
                                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SNR.........: %d\n", self->_easyConfigPreConfigMetrics.snrOfSWAP);
                                }

                                if (dword_27E383310 <= 800)
                                {
                                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                  {
                                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        CHANNEL.....: %d\n", self->_easyConfigPreConfigMetrics.channelOfSWAP);
                                  }

                                  if (dword_27E383310 <= 800)
                                  {
                                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                    {
                                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    DESTINATION AP:\n");
                                    }

                                    if (dword_27E383310 <= 800)
                                    {
                                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                      {
                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        LINK UP TIME: %.3f seconds\n", self->_easyConfigPostConfigMetrics.secondsToGetLinkUpOnDestination);
                                      }

                                      if (dword_27E383310 <= 800)
                                      {
                                        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                        {
                                          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        JOIN ERROR..: %#m\n", self->_easyConfigPostConfigMetrics.wifiJoinDestinationAPError);
                                        }

                                        if (dword_27E383310 <= 800)
                                        {
                                          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                          {
                                            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        RSSI........: %d\n", self->_easyConfigPostConfigMetrics.rssiOfDestinationAP);
                                          }

                                          if (dword_27E383310 <= 800)
                                          {
                                            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                            {
                                              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SNR.........: %d\n", self->_easyConfigPostConfigMetrics.snrOfDestinationAP);
                                            }

                                            if (dword_27E383310 <= 800)
                                            {
                                              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                              {
                                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        CHANNEL.....: %d\n", self->_easyConfigPostConfigMetrics.channelOfDestinationAP);
                                              }

                                              if (dword_27E383310 <= 800)
                                              {
                                                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                {
                                                  if (self->_easyConfigPreConfigMetrics.destinationNetworkRecommendationUsed)
                                                  {
                                                    v45 = @"Yes";
                                                  }

                                                  else
                                                  {
                                                    v45 = @"No";
                                                  }

                                                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    AUTOGUESS NETWORK USED....: %@\n", v45);
                                                }

                                                if (dword_27E383310 <= 800)
                                                {
                                                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                  {
                                                    if (self->_easyConfigPreConfigMetrics.userChangedFriendlyName)
                                                    {
                                                      v46 = @"Yes";
                                                    }

                                                    else
                                                    {
                                                      v46 = @"No";
                                                    }

                                                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    USER CHANGED FRIENDLY NAME: %@\n", v46);
                                                  }

                                                  if (dword_27E383310 <= 800)
                                                  {
                                                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                    {
                                                      if (self->_easyConfigPreConfigMetrics.playPasswordSet)
                                                      {
                                                        v47 = @"Yes";
                                                      }

                                                      else
                                                      {
                                                        v47 = @"No";
                                                      }

                                                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    PLAY PASSWORD SET.........: %@\n", v47);
                                                    }

                                                    if (dword_27E383310 <= 800)
                                                    {
                                                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                      {
                                                        Current = CFAbsoluteTimeGetCurrent();
                                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    TOTAL TIME TO CONFIG......: %.3f seconds\n", Current - self->_easyConfigPreConfigMetrics.startTime);
                                                      }

                                                      if (dword_27E383310 <= 800)
                                                      {
                                                        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                        {
                                                          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "STATUS:\n");
                                                        }

                                                        if (dword_27E383310 <= 800)
                                                        {
                                                          if (dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                          {
LABEL_233:
                                                            if (dword_27E383310 <= 800)
                                                            {
                                                              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                              {
                                                                if (self->_successfullyEstablishedLinkOnTargetDeviceSWAP)
                                                                {
                                                                  v53 = @"Yes";
                                                                }

                                                                else
                                                                {
                                                                  v53 = @"No";
                                                                }

                                                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     ESTABLISHED LINK ON TARGET SWAP...: %@\n", v53);
                                                              }

                                                              if (dword_27E383310 <= 800)
                                                              {
                                                                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                {
                                                                  if (self->_successfullyEstablishedLinkOnDestinationAP)
                                                                  {
                                                                    v54 = @"Yes";
                                                                  }

                                                                  else
                                                                  {
                                                                    v54 = @"No";
                                                                  }

                                                                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     ESTABLISHED LINK ON DESTINATION AP: %@\n", v54);
                                                                }

                                                                if (dword_27E383310 <= 800)
                                                                {
                                                                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                  {
                                                                    if (self->_destinationNetworkPasswordAccepted)
                                                                    {
                                                                      v55 = @"Yes";
                                                                    }

                                                                    else
                                                                    {
                                                                      v55 = @"No";
                                                                    }

                                                                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     DESTINATION AP PASSWORD ACCEPTED..: %@\n", v55);
                                                                  }

                                                                  if (dword_27E383310 <= 800)
                                                                  {
                                                                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                    {
                                                                      if (self->_postediAPAccessoryConfiguredNotification)
                                                                      {
                                                                        v56 = @"Yes";
                                                                      }

                                                                      else
                                                                      {
                                                                        v56 = @"No";
                                                                      }

                                                                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     POSTED iAP OVER WIFI NOTIFICATION.: %@\n", v56);
                                                                    }

                                                                    if (dword_27E383310 <= 800)
                                                                    {
                                                                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                      {
                                                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     RESULT............................: %#m\n", v3);
                                                                      }

                                                                      if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
                                                                      {

                                                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "*********************************************************************\n");
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }

                                                            return;
                                                          }

                                                          lastHeardEasyConfigProgressNotification = self->_lastHeardEasyConfigProgressNotification;
                                                          if (lastHeardEasyConfigProgressNotification > 29)
                                                          {
                                                            if (lastHeardEasyConfigProgressNotification <= 49)
                                                            {
                                                              if (lastHeardEasyConfigProgressNotification == 30)
                                                              {
                                                                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Applying configuration to device", v50);
                                                                goto LABEL_232;
                                                              }

                                                              if (lastHeardEasyConfigProgressNotification == 40)
                                                              {
                                                                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Applied configuration to device", v50);
                                                                goto LABEL_232;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              switch(lastHeardEasyConfigProgressNotification)
                                                              {
                                                                case '2':
                                                                  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Searching for post-config device", v50);
                                                                  goto LABEL_232;
                                                                case '<':
                                                                  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Performing post-config check of device", v50);
                                                                  goto LABEL_232;
                                                                case 'F':
                                                                  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Performed post-config check of device", v50);
                                                                  goto LABEL_232;
                                                              }
                                                            }
                                                          }

                                                          else if (lastHeardEasyConfigProgressNotification <= 2)
                                                          {
                                                            if (lastHeardEasyConfigProgressNotification == 1)
                                                            {
                                                              v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Start", v50);
                                                              goto LABEL_232;
                                                            }

                                                            if (lastHeardEasyConfigProgressNotification == 2)
                                                            {
                                                              v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Final", v50);
                                                              goto LABEL_232;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            switch(lastHeardEasyConfigProgressNotification)
                                                            {
                                                              case 3:
                                                                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Error", v50);
                                                                goto LABEL_232;
                                                              case 10:
                                                                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Search for pre-config device", v50);
                                                                goto LABEL_232;
                                                              case 20:
                                                                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Authenticating pre-config device", v50);
LABEL_232:
                                                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     LAST EASYCONFIG NOTIFICATION......: %@\n", v52);
                                                                goto LABEL_233;
                                                            }
                                                          }

                                                          if (lastHeardEasyConfigProgressNotification == 100)
                                                          {
                                                            v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "Configuration complete", v50);
                                                          }

                                                          else
                                                          {
                                                            v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "?", v50);
                                                          }

                                                          goto LABEL_232;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end