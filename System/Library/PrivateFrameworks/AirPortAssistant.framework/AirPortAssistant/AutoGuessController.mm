@interface AutoGuessController
+ (BOOL)isRestoreAnOptionForTheRecommendations:(id)recommendations;
+ (BOOL)shouldShowPasswordUIForRecommendation:(id)recommendation;
+ (id)fullAutoGuessDictionaryFromCompletionDict:(id)dict;
+ (id)primaryRecommendationDictionaryFromCompletionDict:(id)dict;
+ (id)recommendationStringFromCompletionDict:(id)dict;
+ (id)recommendationToActionChoice:(id)choice;
+ (id)restoreOfferFromCompletionDict:(id)dict;
+ (id)restoreRecommendationDictionaryFromCompletionDict:(id)dict;
+ (id)shortProductNameForUnconfiguredDeviceFromAutoGuessResults:(id)results;
+ (id)shortProductNameFromBaseStationDictionary:(id)dictionary;
+ (id)sourceBaseStationFromRecommendation:(id)recommendation;
+ (id)sourceNetworkFromRecommendation:(id)recommendation;
+ (id)unconfiguredBaseStationCanBeConfiguredFromCompletionDict:(id)dict;
+ (id)unconfiguredBaseStationFromGuessCompleteDict:(id)dict;
+ (id)unconfiguredBaseStationFromRecommendation:(id)recommendation;
- (AutoGuessController)init;
- (BOOL)okToSwitchToShortBonjourTimeout:(id)timeout;
- (id)createCompletionDictFromAutoGuessResults:(id)results;
- (id)targetInfo;
- (int)bonjourBrowseStatus;
- (int)cancelAutoGuess;
- (int)runAutoGuessWithWifiScanInfos:(id)infos;
- (int)startAutoGuessForUnconfiguredMACAddress:(id)address withWifiScanInfos:(id)infos;
- (int)startBonjourBrowser;
- (int)startWiFiScanner;
- (int)wifiScanStatus;
- (void)autoGuessEngineComplete;
- (void)bonjourTXTRemoved:(id)removed;
- (void)bonjourTXTUpdated:(id)updated;
- (void)browseReadyTimerCallback:(id)callback;
- (void)cancelBonjourBrowser;
- (void)cancelWiFiScanner;
- (void)dealloc;
- (void)runAutoGuessThread:(id)thread;
- (void)setBonjourBrowseStatus:(int)status;
- (void)setWiFiScanStatus:(int)status;
- (void)startAutoGuessIfReady;
- (void)stopBonjourBrowser;
- (void)stopWiFiScanner;
- (void)uiAssetsUpdated:(id)updated;
- (void)updateTargetInfo:(BOOL)info;
- (void)wirelessScanDone:(id)done;
@end

@implementation AutoGuessController

- (AutoGuessController)init
{
  v22.receiver = self;
  v22.super_class = AutoGuessController;
  v5 = [(AssistantCallbackController *)&v22 init];
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3, v4);
    objc_msgSend_set_browsedBases_(v5, v7, v6, v8);
    objc_msgSend_setWiFiScanStatus_(v5, v9, 0, v10);
    objc_msgSend_setBonjourBrowseStatus_(v5, v11, 0, v12);
    sub_23EBE2958(&v5->_guessContext);
    guessContext = v5->_guessContext;
    v17 = objc_msgSend_assistantCallback(v5, v14, v15, v16);
    sub_23EBE2AD8(guessContext, v17, v5);
    sub_23EBE2B88(v5->_guessContext, sub_23EB4FA00, v5);
  }

  v18 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v2, v3, v4);
  objc_msgSend_addSuiteNamed_(v18, v19, @"com.apple.airport.airportassistant", v20);
  return v5;
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.airport.airportutility.DataCache.UIAssets.Refresh.Notification", 0);
  sub_23EBE2A44(self->_guessContext);
  self->_guessContext = 0;
  objc_msgSend_set_browsedBases_(self, v7, 0, v8);
  v12 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v9, v10, v11);
  objc_msgSend_removeSuiteNamed_(v12, v13, @"com.apple.airport.airportassistant", v14);
  v15.receiver = self;
  v15.super_class = AutoGuessController;
  [(AssistantCallbackController *)&v15 dealloc];
}

- (int)startWiFiScanner
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController startWiFiScanner]", 100, "\n");
  }

  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
  if (objc_msgSend_airPortIsOn(v5, v6, v7, v8))
  {
    objc_msgSend_setWiFiScanStatus_(self, v9, 1, v10);
    v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v11, v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v14, v15, self, sel_wirelessScanDone_, @"com.apple.WiFiUtils.Scan.Complete", 0);
    objc_msgSend_asyncWiFiScan_wifiType_merge_maxAge_(v5, v16, 0, 3, 0, 0);
  }

  else
  {
    objc_msgSend_setWiFiScanStatus_(self, v9, 2, v10);
  }

  return 0;
}

- (int)runAutoGuessWithWifiScanInfos:(id)infos
{
  infosCopy = infos;
  if (!objc_msgSend_targetMACAddress(self, a2, infos, v3) && !objc_msgSend_targetScanRecord(self, v6, v7, v8) && !objc_msgSend_targetBrowseRecord(self, v6, v7, v8))
  {
    return -6705;
  }

  self->_updatedTargetInfo = 0;
  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7, v8);
  objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel_uiAssetsUpdated_, @"com.apple.airport.airportutility.DataCache.UIAssets.Refresh.Notification", 0);
  if (infosCopy)
  {
    if (objc_msgSend_count(infosCopy, v11, v12, v13))
    {
      v17 = infosCopy;
    }

    else
    {
      v17 = 0;
    }

    if (objc_msgSend_targetScanRecord(self, v14, v15, v16) || !v17)
    {
      infosCopy = v17;
    }

    else if (objc_msgSend_targetMACAddress(self, v11, v12, v13))
    {
      v18 = objc_msgSend_targetMACAddress(self, v11, v12, v13);
      v19 = sub_23EB6B8F0(v18, 0, v17);
      if (v19 != -1)
      {
        v20 = objc_msgSend_objectAtIndex_(v17, v11, v19, v13);
        objc_msgSend_setTargetScanRecord_(self, v21, v20, v22);
      }
    }
  }

  if (!objc_msgSend_targetMACAddress(self, v11, v12, v13))
  {
    v26 = objc_msgSend_targetInfo(self, v23, v24, v25);
    if (!v26)
    {
      return -6705;
    }

    v29 = objc_msgSend_objectForKey_(v26, v27, @"kRecommendationTargetInfoKey_MACAddress", v28);
    objc_msgSend_setTargetMACAddress_(self, v30, v29, v31);
  }

  if (!objc_msgSend_targetMACAddress(self, v23, v24, v25))
  {
    return -6705;
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_autoguessProgressUpdated_paramString_(self->_delegate, v32, 15, 0);
  }

  objc_msgSend_setGuessCompletionDict_(self, v32, 0, v33);
  v37 = objc_msgSend_targetMACAddress(self, v34, v35, v36);

  return MEMORY[0x2821F9670](self, sel_startAutoGuessForUnconfiguredMACAddress_withWifiScanInfos_, v37, infosCopy);
}

- (int)cancelAutoGuess
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_autoguessProgressUpdated_paramString_(self->_delegate, a2, 19, 0);
  }

  objc_msgSend_cancel(self->_autoGuessThread, a2, v2, v3);
  if (objc_msgSend_wifiScanStatus(self, v5, v6, v7) == 1)
  {
    objc_msgSend_cancelWiFiScanner(self, v8, v9, v10);
  }

  else
  {
    objc_msgSend_setWiFiScanStatus_(self, v8, 3, v10);
  }

  if (objc_msgSend_bonjourBrowseStatus(self, v11, v12, v13) == 1)
  {
    objc_msgSend_cancelBonjourBrowser(self, v14, v15, v16);
  }

  else
  {
    objc_msgSend_setBonjourBrowseStatus_(self, v14, 3, v16);
  }

  guessContext = self->_guessContext;

  return sub_23EBE967C(guessContext);
}

- (int)startAutoGuessForUnconfiguredMACAddress:(id)address withWifiScanInfos:(id)infos
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    v7 = objc_msgSend_count(infos, a2, address, infos);
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) startAutoGuessForUnconfiguredMACAddress:withWifiScanInfos:]", 100, "macAddress: %@ [scanInfos count]: %d\n", address, v7);
  }

  if (!address || !objc_msgSend_length(address, a2, address, infos))
  {
    return -6705;
  }

  objc_msgSend_removeAllObjects(self->_browsedBases, v8, v9, v10);
  if (infos)
  {
    objc_msgSend_set_wifiScanInfos_(self, v11, infos, v13);
  }

  if (objc_msgSend_targetScanRecord(self, v11, v12, v13) && (v17 = objc_msgSend_targetScanRecord(self, v14, v15, v16), objc_msgSend_scanInfoIsSTAOnly_(WiFiUtils, v18, v17, v19)))
  {
    objc_msgSend_setBonjourBrowseStatus_(self, v14, 2, v16);
  }

  else
  {
    result = objc_msgSend_startBonjourBrowser(self, v14, v15, v16);
    if (result)
    {
      return result;
    }
  }

  if (self->_wifiScanInfos || objc_msgSend_wifiScanStatus(self, v20, v21, v22) || (result = objc_msgSend_startWiFiScanner(self, v20, v21, v22)) == 0)
  {
    objc_msgSend_startAutoGuessIfReady(self, v20, v21, v22);
    return 0;
  }

  return result;
}

- (void)startAutoGuessIfReady
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) startAutoGuessIfReady]", 100, "\n");
  }

  if (!self->_autoGuessThread && objc_msgSend_wifiScanStatus(self, a2, v2, v3) != 3 && objc_msgSend_bonjourBrowseStatus(self, v5, v6, v7) != 3)
  {
    objc_msgSend_updateTargetInfo_(self, v8, 0, v9);
    if ((self->_wifiScanInfos || objc_msgSend_wifiScanStatus(self, v10, v11, v12) == 2) && objc_msgSend_bonjourBrowseStatus(self, v10, v11, v12) == 2)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CCACC8]);
      v17 = objc_msgSend_targetMACAddress(self, v14, v15, v16);
      v19 = objc_msgSend_initWithTarget_selector_object_(v13, v18, self, sel_runAutoGuessThread_, v17);
      self->_autoGuessThread = v19;

      objc_msgSend_start(v19, v20, v21, v22);
    }
  }
}

- (void)autoGuessEngineComplete
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) autoGuessEngineComplete]", 100, "\n");
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.airport.airportutility.DataCache.UIAssets.Refresh.Notification", 0);
  if (self->_autoJoinState)
  {
    v10 = objc_msgSend_sharedInstanceRef(WiFiUtils, v7, v8, v9);
    objc_msgSend_setAutoJoinState_(v10, v11, self->_autoJoinState, v12);
  }

  self->_autoJoinState = 0;

  selfCopy = self;
}

- (id)targetInfo
{
  if (!objc_msgSend_targetScanRecord(self, a2, v2, v3) && !objc_msgSend_targetBrowseRecord(self, v5, v6, v7))
  {
    return 0;
  }

  v8 = objc_msgSend_targetBrowseRecord(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, @"syAP", v10);
  v18 = objc_msgSend_integerValue(v11, v12, v13, v14);
  if (v18)
  {
    v19 = objc_msgSend_targetBrowseRecord(self, v15, v16, v17);
    v20 = sub_23EB6A294(v19);
  }

  else
  {
    v24 = objc_msgSend_targetScanRecord(self, v15, v16, v17);
    v18 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v25, v24, v26);
    v30 = objc_msgSend_targetScanRecord(self, v27, v28, v29);
    v20 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v31, v30, v32);
  }

  v33 = v20;
  if (v20 - 3 > 1)
  {
    v41 = objc_msgSend_targetBrowseRecord(self, v21, v22, v23);
    v44 = objc_msgSend_objectForKey_(v41, v42, @"name", v43);
    if (v44)
    {
      goto LABEL_11;
    }

    v45 = objc_msgSend_targetScanRecord(self, v38, v39, v40);
    v37 = objc_msgSend_objectForKey_(v45, v46, @"SSID_STR", v47);
  }

  else
  {
    v34 = objc_msgSend_targetScanRecord(self, v21, v22, v23);
    v37 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v35, v34, v36);
  }

  v44 = v37;
LABEL_11:
  v48 = objc_msgSend_targetBrowseRecord(self, v38, v39, v40);
  v54 = objc_msgSend_objectForKey_(v48, v49, @"raMA", v50);
  if (v54)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    v55 = objc_msgSend_targetScanRecord(self, v51, v52, v53);
    v54 = objc_msgSend_objectForKey_(v55, v56, @"BSSID", v57);
    if (!v44)
    {
      return 0;
    }
  }

  if (v54)
  {
    v58 = MEMORY[0x277CBEAC0];
    v59 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v51, v18, v53);
    v62 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v60, v33, v61);
    return objc_msgSend_dictionaryWithObjectsAndKeys_(v58, v63, v44, v64, @"kRecommendationTargetInfoKey_BaseName", v59, @"kRecommendationTargetInfoKey_ProductID", v54, @"kRecommendationTargetInfoKey_MACAddress", v62, @"kRecommendationTargetInfoKey_DeviceKind", 0);
  }

  return 0;
}

- (void)updateTargetInfo:(BOOL)info
{
  infoCopy = info;
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) updateTargetInfo:]", 100, "inForceUpdate: %d _updatedTargetInfo: %d\n", infoCopy, self->_updatedTargetInfo);
  }

  if (!self->_updatedTargetInfo || infoCopy)
  {
    v7 = objc_msgSend_targetInfo(self, a2, info, v3);
    if (v7)
    {
      v8 = v7;
      if (self->_delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_autoguessUpdateTargetInfo_(self->_delegate, v9, v8, v10);
          self->_updatedTargetInfo = 1;
        }
      }
    }
  }
}

- (void)uiAssetsUpdated:(id)updated
{
  v5 = objc_msgSend_userInfo(updated, a2, updated, v3);
  if (v5)
  {
    v8 = objc_msgSend_objectForKey_(v5, v6, @"productID", v7);
    v15 = objc_msgSend_integerValue(v8, v9, v10, v11);
    if (v15)
    {
      v16 = objc_msgSend_targetInfo(self, v12, v13, v14);
      v19 = objc_msgSend_objectForKey_(v16, v17, @"kRecommendationTargetInfoKey_ProductID", v18);
      v25 = objc_msgSend_integerValue(v19, v20, v21, v22);
      if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
      {
        sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) uiAssetsUpdated:]", 100, "asset updated id: %d my target id: %d\n", v15, v25);
      }

      if (v15 == v25)
      {

        objc_msgSend_updateTargetInfo_(self, v23, 1, v24);
      }
    }
  }
}

- (BOOL)okToSwitchToShortBonjourTimeout:(id)timeout
{
  LOBYTE(onShortTimer) = self->_onShortTimer;
  if (!onShortTimer)
  {
    v7 = objc_msgSend_sharedInstance(WiFiUtils, a2, timeout, v3);
    if (objc_msgSend_airPortIsOn(v7, v8, v9, v10))
    {
      onShortTimer = sub_23EB6A530(timeout);
      self->_onShortTimer = onShortTimer;
      if (dword_27E380EB8 <= 100)
      {
        if (dword_27E380EB8 != -1 || (v13 = sub_23EB74AC8(&dword_27E380EB8, 0x64u), onShortTimer = self->_onShortTimer, v13))
        {
          v14 = objc_msgSend_objectForKey_(timeout, v11, @"raMA", v12);
          sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) okToSwitchToShortBonjourTimeout:]", 100, "_onShortTimer: %d inBaseStation: %@\n", onShortTimer, v14);
          LOBYTE(onShortTimer) = self->_onShortTimer;
        }
      }
    }

    else
    {
      LOBYTE(onShortTimer) = 1;
      self->_onShortTimer = 1;
    }
  }

  return onShortTimer;
}

- (void)setWiFiScanStatus:(int)status
{
  objc_sync_enter(self);
  self->_wifiScanStatus = status;

  objc_sync_exit(self);
}

- (int)wifiScanStatus
{
  objc_sync_enter(self);
  wifiScanStatus = self->_wifiScanStatus;
  objc_sync_exit(self);
  return wifiScanStatus;
}

- (void)setBonjourBrowseStatus:(int)status
{
  objc_sync_enter(self);
  self->_bonjourBrowseStatus = status;

  objc_sync_exit(self);
}

- (int)bonjourBrowseStatus
{
  objc_sync_enter(self);
  bonjourBrowseStatus = self->_bonjourBrowseStatus;
  objc_sync_exit(self);
  return bonjourBrowseStatus;
}

- (int)startBonjourBrowser
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) startBonjourBrowser]", 100, "\n");
  }

  if (self->_acpBrowserSession)
  {
    objc_msgSend_stopBonjourBrowser(self, a2, v2, v3);
  }

  result = sub_23EB54398("com.apple.bonjour.txt.Updated", "com.apple.bonjour.txt.Removed", "AutoGuess:BrowseSession", &self->_acpBrowserSession);
  if (!result)
  {
    if (self->_acpBrowserSession)
    {
      v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7, v8);
      objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel_bonjourTXTUpdated_, @"com.apple.bonjour.txt.Updated", 0);
      v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v11, v12, v13);
      objc_msgSend_addObserver_selector_name_object_(v14, v15, self, sel_bonjourTXTRemoved_, @"com.apple.bonjour.txt.Removed", 0);
      self->_onShortTimer = 0;
      acpBrowserSession = self->_acpBrowserSession;
      v20 = objc_msgSend_UTF8String(0, v17, v18, v19);
      result = sub_23EB548B0(acpBrowserSession, v20);
      if (result)
      {
        v22 = result == -6745;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v23 = 15.0;
        if (result == -6745)
        {
          v23 = 0.0;
        }

        v24 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v21, self, sel_browseReadyTimerCallback_, 0, 0, v23);
        objc_msgSend_set_browseReadyTimer_(self, v25, v24, v26);
        objc_msgSend_setBonjourBrowseStatus_(self, v27, 1, v28);
        return 0;
      }
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (void)cancelBonjourBrowser
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) cancelBonjourBrowser]", 100, "\n");
  }

  objc_msgSend_stopBonjourBrowser(self, a2, v2, v3);

  objc_msgSend_setBonjourBrowseStatus_(self, v5, 3, v6);
}

- (void)stopBonjourBrowser
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) stopBonjourBrowser]", 100, "\n");
  }

  objc_msgSend_invalidate(self->_browseReadyTimer, a2, v2, v3);
  objc_msgSend_set_browseReadyTimer_(self, v5, 0, v6);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9);
  objc_msgSend_removeObserver_name_object_(v10, v11, self, @"com.apple.bonjour.txt.Updated", 0);
  v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13, v14);
  objc_msgSend_removeObserver_name_object_(v15, v16, self, @"com.apple.bonjour.txt.Removed", 0);
  acpBrowserSession = self->_acpBrowserSession;
  if (acpBrowserSession)
  {
    if (!sub_23EB54AE0(acpBrowserSession))
    {
      sub_23EB54BC4(self->_acpBrowserSession);
    }

    self->_acpBrowserSession = 0;
  }

  objc_msgSend_setBonjourBrowseStatus_(self, v17, 0, v18);
}

- (void)wirelessScanDone:(id)done
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) wirelessScanDone:]", 100, "\n");
  }

  objc_msgSend_stopWiFiScanner(self, a2, done, v3);
  v8 = objc_msgSend_sharedInstance(WiFiUtils, v5, v6, v7);
  v12 = objc_msgSend_unmergedScanInfoArray(v8, v9, v10, v11);
  objc_msgSend_set_wifiScanInfos_(self, v13, v12, v14);
  if (!objc_msgSend_targetScanRecord(self, v15, v16, v17))
  {
    v21 = objc_msgSend_targetMACAddress(self, v18, v19, v20);
    v22 = sub_23EB6B8F0(v21, 0, self->_wifiScanInfos);
    if (v22 != -1)
    {
      v23 = objc_msgSend_objectAtIndex_(self->_wifiScanInfos, v18, v22, v20);
      objc_msgSend_setTargetScanRecord_(self, v24, v23, v25);
    }
  }

  objc_msgSend_startAutoGuessIfReady(self, v18, v19, v20);
}

- (void)cancelWiFiScanner
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) cancelWiFiScanner]", 100, "\n");
  }

  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
  objc_msgSend_cancelAsync(v5, v6, v7, v8);
  objc_msgSend_stopWiFiScanner(self, v9, v10, v11);

  objc_msgSend_setWiFiScanStatus_(self, v12, 3, v13);
}

- (void)stopWiFiScanner
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) stopWiFiScanner]", 100, "\n");
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Scan.Complete", 0);

  objc_msgSend_setWiFiScanStatus_(self, v7, 2, v8);
}

- (void)browseReadyTimerCallback:(id)callback
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) browseReadyTimerCallback:]", 100, "\n");
  }

  objc_msgSend_invalidate(self->_browseReadyTimer, a2, callback, v3);
  objc_msgSend_set_browseReadyTimer_(self, v5, 0, v6);
  if (objc_msgSend_bonjourBrowseStatus(self, v7, v8, v9) != 3)
  {
    if (!objc_msgSend_targetBrowseRecord(self, v10, v11, v12))
    {
      v21 = objc_msgSend_allValues(self->_browsedBases, v13, v14, v15);
      if (v21)
      {
        v22 = v21;
        v23 = objc_msgSend_targetMACAddress(self, v13, v14, v15);
        v24 = sub_23EB6B3A8(v22, v23);
        if (v24 != -1)
        {
          v25 = objc_msgSend_objectAtIndex_(v22, v13, v24, v15);
          objc_msgSend_setTargetBrowseRecord_(self, v26, v25, v27);
        }
      }
    }

    objc_msgSend_stopBonjourBrowser(self, v13, v14, v15);
    objc_msgSend_setBonjourBrowseStatus_(self, v16, 2, v17);

    objc_msgSend_startAutoGuessIfReady(self, v18, v19, v20);
  }
}

- (void)bonjourTXTUpdated:(id)updated
{
  v5 = objc_msgSend_userInfo(updated, a2, updated, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"name", v7);
  if (v5)
  {
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_objectForKey_(v5, v9, @"raMA", v10);
      if (objc_msgSend_okToSwitchToShortBonjourTimeout_(self, v13, v5, v14))
      {
        v16 = 2.0;
      }

      else
      {
        v16 = 5.0;
      }

      objc_msgSend_setObject_forKey_(self->_browsedBases, v15, v5, v11);
      browseReadyTimer = self->_browseReadyTimer;
      v21 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v18, v19, v20, v16);
      objc_msgSend_setFireDate_(browseReadyTimer, v22, v21, v23);
      if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
      {
        sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) bonjourTXTUpdated:]", 100, "MAC: %@\n", v12);
      }
    }
  }
}

- (void)bonjourTXTRemoved:(id)removed
{
  v5 = objc_msgSend_userInfo(removed, a2, removed, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"name", v7);
  if (v5)
  {
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_objectForKey_(v5, v9, @"raMA", v10);
      objc_msgSend_removeObjectForKey_(self->_browsedBases, v13, v11, v14);
      browseReadyTimer = self->_browseReadyTimer;
      v19 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v16, v17, v18, 5.0);
      objc_msgSend_setFireDate_(browseReadyTimer, v20, v19, v21);
      if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
      {
        sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) bonjourTXTRemoved:]", 100, "MAC: %@\n", v12);
      }
    }
  }
}

- (void)runAutoGuessThread:(id)thread
{
  v61 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if ((objc_msgSend_isCancelled(self->_autoGuessThread, v5, v6, v7) & 1) == 0)
  {
    if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
    {
      sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) runAutoGuessThread:]", 100, "unconfiguredMACAddress: %@\n", thread);
    }

    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9, v10);
    v15 = objc_msgSend_sharedInstance(WiFiUtils, v12, v13, v14);
    v19 = objc_msgSend_airPortIsOn(v15, v16, v17, v18);
    v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, v19 ^ 1u, v21);
    objc_msgSend_setValue_forKey_(v11, v23, v22, @"BSAutoGuessContext_HostNotUsingWireless");
    v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v24, 1, v25);
    objc_msgSend_setValue_forKey_(v11, v27, v26, @"BSAutoGuessContext_HostHasPreferredNetworkSupport");
    PreferredNetworks = objc_msgSend_getPreferredNetworks_(v15, v28, 0, v29);
    if (PreferredNetworks)
    {
      objc_msgSend_setObject_forKey_(v11, v31, PreferredNetworks, @"BSAutoGuessContext_HostPreferredNetworks");
    }

    v34 = MEMORY[0x277CBEA60];
    v35 = objc_msgSend_allValues(self->_browsedBases, v31, v32, v33);
    v38 = objc_msgSend_arrayWithArray_(v34, v36, v35, v37);
    if (v38)
    {
      objc_msgSend_setObject_forKey_(v11, v39, v38, @"BSAutoGuessContext_HostBrowsedBaseStations");
    }

    if (thread)
    {
      if (objc_msgSend_targetBrowseRecord(self, v39, v40, v41))
      {
        v45 = objc_msgSend_targetBrowseRecord(self, v42, v43, v44);
        objc_msgSend_setObject_forKey_(v11, v46, v45, @"BSAutoGuessContext_ChosenUnconfiguredBrowseRecord");
      }

      else if (objc_msgSend_targetScanRecord(self, v42, v43, v44))
      {
        v47 = objc_msgSend_targetScanRecord(self, v39, v40, v41);
        objc_msgSend_setObject_forKey_(v11, v48, v47, @"BSAutoGuessContext_ChosenUnconfiguredScanRecord");
      }
    }

    if (v19)
    {
      wifiScanInfos = self->_wifiScanInfos;
      if (wifiScanInfos)
      {
        v50 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v39, wifiScanInfos, v41);
        objc_msgSend_setObject_forKey_(v11, v51, v50, @"BSAutoGuessContext_HostScannedNetworks");
      }

      if (objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v15, v39, 0, v41))
      {
        CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v15, v39, v40, v41);
        if (CurrentAssociationInfo)
        {
          objc_msgSend_setObject_forKey_(v11, v39, CurrentAssociationInfo, @"BSAutoGuessContext_HostCurrentWirelessAssociation");
        }
      }
    }

    self->super._callbackContext = 0;
    if ((objc_msgSend_isCancelled(self->_autoGuessThread, v39, v40, v41) & 1) == 0)
    {
      guessContext = self->_guessContext;
      if (guessContext)
      {
        if (!sub_23EBE2C38(guessContext, v11))
        {
          AutoJoinState = objc_msgSend_getAutoJoinState(v15, v54, v55, v56);
          self->_autoJoinState = AutoJoinState;
          if (AutoJoinState)
          {
            objc_msgSend_setAutoJoinState_(v15, v58, 0, v59);
          }

          selfCopy = self;
        }
      }
    }
  }

  self->_autoGuessThread = 0;
}

+ (id)recommendationToActionChoice:(id)choice
{
  if (!choice)
  {
    return 0;
  }

  v4 = objc_msgSend_objectForKey_(choice, a2, @"BSAutoGuess_Recommendation", v3);
  if (!v4)
  {
    return 0;
  }

  v5 = qword_27E383800;

  return sub_23EB6CD3C(v4, v5);
}

+ (BOOL)isRestoreAnOptionForTheRecommendations:(id)recommendations
{
  v19 = *MEMORY[0x277D85DE8];
  if (recommendations)
  {
    v4 = objc_msgSend_valueForKey_(recommendations, a2, @"BSAutoGuessComplete_Suggestions", v3);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = objc_msgSend_objectForKey_(*(*(&v14 + 1) + 8 * i), v7, @"BSAutoGuess_Recommendation", v8);
          if (v12 && (objc_msgSend_isEqualToString_(v12, v7, @"BSSetupRecommend_OfferRestore", v8) & 1) != 0)
          {
            LOBYTE(v6) = 1;
            return v6;
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
        LOBYTE(v6) = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (id)shortProductNameFromBaseStationDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v5 = objc_msgSend_objectForKey_(dictionary, a2, @"syAP", v3);
  if (!v5)
  {
    return 0;
  }

  v9 = objc_msgSend_integerValue(v5, v6, v7, v8);
  v10 = sub_23EB6A294(dictionary);

  return sub_23EB6CEE0(v9, v10, 0);
}

+ (id)shortProductNameForUnconfiguredDeviceFromAutoGuessResults:(id)results
{
  if (!results)
  {
    return 0;
  }

  v5 = objc_msgSend_valueForKey_(results, a2, @"BSAutoGuessComplete_Suggestions", v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  if (!objc_msgSend_count(v5, v6, v7, v8))
  {
    return 0;
  }

  v12 = objc_msgSend_objectAtIndex_(v9, v10, 0, v11);
  if (!v12)
  {
    return 0;
  }

  v15 = v12;
  v16 = objc_msgSend_valueForKey_(v12, v13, @"BSAutoGuess_UnconfiguredBase", v14);
  if (v16)
  {

    return MEMORY[0x2821F9670](self, sel_shortProductNameFromBaseStationDictionary_, v16, v18);
  }

  v19 = objc_msgSend_valueForKey_(v15, v17, @"BSAutoGuess_UnconfiguredNetwork", v18);
  if (!v19)
  {
    return 0;
  }

  v22 = v19;
  v23 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v20, v19, v21);
  v26 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v24, v22, v25);

  return sub_23EB6CEE0(v23, v26, 0);
}

+ (id)sourceBaseStationFromRecommendation:(id)recommendation
{
  if (recommendation)
  {
    return objc_msgSend_objectForKey_(recommendation, a2, @"BSAutoGuess_SourceBase", v3);
  }

  else
  {
    return 0;
  }
}

+ (id)sourceNetworkFromRecommendation:(id)recommendation
{
  if (recommendation)
  {
    return objc_msgSend_objectForKey_(recommendation, a2, @"BSAutoGuess_SourceNetwork", v3);
  }

  else
  {
    return 0;
  }
}

+ (id)unconfiguredBaseStationFromGuessCompleteDict:(id)dict
{
  result = objc_msgSend_valueForKey_(dict, a2, @"primaryRecommendationDict", v3);
  if (result)
  {
    v7 = result;
    result = objc_msgSend_valueForKey_(result, v5, @"BSAutoGuess_UnconfiguredBase", v6);
    if (!result)
    {

      return objc_msgSend_valueForKey_(v7, v8, @"BSAutoGuess_UnconfiguredNetwork", v9);
    }
  }

  return result;
}

+ (id)unconfiguredBaseStationFromRecommendation:(id)recommendation
{
  if (recommendation)
  {
    return objc_msgSend_objectForKey_(recommendation, a2, @"BSAutoGuess_UnconfiguredBase", v3);
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldShowPasswordUIForRecommendation:(id)recommendation
{
  if ((objc_msgSend_isEqualToString_(recommendation, a2, @"BSSetupRecommend_OfferCreate", v3) & 1) != 0 || (isEqualToString = objc_msgSend_isEqualToString_(recommendation, v5, @"BSSetupRecommend_OfferJoinNetwork", v6)) != 0)
  {
    LOBYTE(isEqualToString) = 1;
  }

  return isEqualToString;
}

+ (id)restoreOfferFromCompletionDict:(id)dict
{
  if (!dict)
  {
    return 0;
  }

  v4 = objc_msgSend_restoreRecommendationDictionaryFromCompletionDict_(AutoGuessController, a2, dict, v3);

  return objc_msgSend_objectForKey_(v4, v5, @"BSAutoGuess_Recommendation", v6);
}

+ (id)recommendationStringFromCompletionDict:(id)dict
{
  if (dict)
  {
    return objc_msgSend_valueForKey_(dict, a2, @"recommendationText", v3);
  }

  else
  {
    return 0;
  }
}

+ (id)unconfiguredBaseStationCanBeConfiguredFromCompletionDict:(id)dict
{
  if (dict)
  {
    return objc_msgSend_valueForKey_(dict, a2, @"baseStationCanBeConfigured", v3);
  }

  else
  {
    return 0;
  }
}

+ (id)primaryRecommendationDictionaryFromCompletionDict:(id)dict
{
  if (dict)
  {
    return objc_msgSend_valueForKey_(dict, a2, @"primaryRecommendationDict", v3);
  }

  else
  {
    return 0;
  }
}

+ (id)restoreRecommendationDictionaryFromCompletionDict:(id)dict
{
  if (dict)
  {
    return objc_msgSend_valueForKey_(dict, a2, @"restoreRecommendationDict", v3);
  }

  else
  {
    return 0;
  }
}

+ (id)fullAutoGuessDictionaryFromCompletionDict:(id)dict
{
  if (dict)
  {
    return objc_msgSend_valueForKey_(dict, a2, @"fullGuessResults", v3);
  }

  else
  {
    return 0;
  }
}

- (id)createCompletionDictFromAutoGuessResults:(id)results
{
  v168 = *MEMORY[0x277D85DE8];
  v166 = 0;
  v161 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, results, v3);
  resultsCopy = results;
  sub_23EB6FF14(results, &v166, "%ks:int", "BSAutoGuessComplete_ErrorResult");
  if (v7)
  {
    return v161;
  }

  if (v166 == -6723)
  {
    v138 = @"kSetup_SetupRecommendationErrorCanceled";
    goto LABEL_77;
  }

  if (v166)
  {
    v138 = @"kSetup_SetupRecommendationErrorGeneric";
LABEL_77:
    v139 = MEMORY[0x277CCAB68];
    v140 = sub_23EB6CD3C(v138, qword_27E383800);
    v12 = objc_msgSend_stringWithString_(v139, v141, v140, v142);
    v154 = 0;
    v155 = 0;
    v156 = 0;
    if (!v12)
    {
      return v161;
    }

    goto LABEL_78;
  }

  obj = objc_msgSend_objectForKey_(results, v5, @"BSAutoGuessComplete_Suggestions", v6);
  if (!obj)
  {
    return v161;
  }

  v12 = objc_msgSend_string(MEMORY[0x277CCAB68], v9, v10, v11);
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v162, v167, 16);
  if (v160)
  {
    v153 = v12;
    v155 = 0;
    v156 = 0;
    v159 = *v163;
    v154 = 1;
LABEL_8:
    v16 = 0;
    while (1)
    {
      if (*v163 != v159)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v162 + 1) + 8 * v16);
      v18 = objc_msgSend_objectForKey_(v17, v14, @"BSAutoGuess_Recommendation", v15);
      if (!v18)
      {
        return v161;
      }

      v21 = v18;
      v22 = objc_msgSend_objectForKey_(v17, v19, @"BSAutoGuess_AskUserList", v20);
      v25 = objc_msgSend_objectForKey_(v17, v23, @"BSAutoGuess_UnconfiguredBase", v24);
      v28 = objc_msgSend_objectForKey_(v17, v26, @"BSAutoGuess_UnconfiguredNetwork", v27);
      v31 = v28;
      if (v25)
      {
        break;
      }

      if (v28)
      {
        v32 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v29, v28, v30);
        v33 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v48, v31, v49);
        if ((v33 - 3) > 1)
        {
          v34 = objc_msgSend_shortProductNameForUnconfiguredDeviceFromAutoGuessResults_(AutoGuessController, v50, resultsCopy, v51);
        }

        else
        {
          v34 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v50, v31, v51);
        }

        goto LABEL_14;
      }

      v35 = 0;
      v32 = 0;
      v33 = 0;
LABEL_15:
      v36 = sub_23EB6CE6C(v32, v33);
      if (objc_msgSend_isEqualToString_(v21, v37, @"BSSetupRecommend_OfferCreate", v38))
      {
        v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"PrimarySetupRecommendation_Create%@", v40, v36);
LABEL_19:
        valid = sub_23EB6CD3C(v41, qword_27E383800);
        goto LABEL_20;
      }

      if (objc_msgSend_isEqualToString_(v21, v39, @"BSSetupRecommend_OfferExtendOverEthernet", v40))
      {
        v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"PrimarySetupRecommendation_ExtendEthernet%@", v43, v36);
        goto LABEL_19;
      }

      if (objc_msgSend_isEqualToString_(v21, v42, @"BSSetupRecommend_OfferExtendWirelessly", v43))
      {
        v54 = objc_msgSend_objectForKey_(v17, v52, @"BSAutoGuess_SourceBase", v53);
        v57 = objc_msgSend_valueForKey_(v54, v55, @"raNm", v56);
        v61 = objc_msgSend_length(v57, v58, v59, v60);
        v64 = MEMORY[0x277CCACA8];
        v65 = v61 == 0;
        v66 = @"PrimarySetupRecommendation_ExtendWireless.Specific%@";
        v67 = @"PrimarySetupRecommendation_ExtendWireless%@";
LABEL_34:
        if (v65)
        {
          v77 = objc_msgSend_stringWithFormat_(v64, v62, v67, v63, v36);
        }

        else
        {
          v77 = objc_msgSend_stringWithFormat_(v64, v62, v66, v63, v36);
        }

        v47 = sub_23EB6CD3C(v77, qword_27E383800);
        if (!objc_msgSend_length(v57, v78, v79, v80))
        {
          goto LABEL_21;
        }

        v81 = MEMORY[0x277CCACA8];
        v149 = v57;
        goto LABEL_42;
      }

      if (objc_msgSend_isEqualToString_(v21, v52, @"BSSetupRecommend_OfferJoinNetwork", v53))
      {
        v70 = objc_msgSend_objectForKey_(v17, v68, @"BSAutoGuess_SourceBase", v69);
        v57 = objc_msgSend_valueForKey_(v70, v71, @"raNm", v72);
        v76 = objc_msgSend_length(v57, v73, v74, v75);
        v64 = MEMORY[0x277CCACA8];
        v65 = v76 == 0;
        v66 = @"PrimarySetupRecommendation_Join.Specific%@";
        v67 = @"PrimarySetupRecommendation_Join%@";
        goto LABEL_34;
      }

      if (objc_msgSend_isEqualToString_(v21, v68, @"BSSetupRecommend_OfferReplace", v69))
      {
        v84 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v82, @"PrimarySetupRecommendation_Replace%@", v83, v36);
        v87 = objc_msgSend_objectForKey_(v17, v85, @"BSAutoGuess_SourceBase", v86);
        v88 = MEMORY[0x277CCACA8];
        v47 = sub_23EB6CD3C(v84, qword_27E383800);
        v149 = objc_msgSend_objectForKey_(v87, v89, @"raNm", v90);
        v81 = v88;
LABEL_42:
        v91 = v47;
LABEL_43:
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v81, v45, v91, @"%@", 0, v149, v150, v152);
        goto LABEL_20;
      }

      if (objc_msgSend_isEqualToString_(v21, v82, @"BSSetupRecommend_OfferRestore", v83) & 1) != 0 || (objc_msgSend_isEqualToString_(v21, v45, @"BSSetupRecommend_OfferNoRestore", v46))
      {
        v155 = v17;
LABEL_47:
        v47 = &stru_285145FE8;
        goto LABEL_21;
      }

      if (objc_msgSend_isEqualToString_(v21, v45, @"BSSetupRecommend_TellUserCannotFindDevices", v46) || objc_msgSend_isEqualToString_(v21, v92, @"BSSetupRecommend_WaitForBaseStation", v93))
      {
        v96 = qword_27E383800;
        v97 = @"kProgress_NothingNewFoundError";
LABEL_51:
        v98 = sub_23EB6CD3C(v97, v96);
        goto LABEL_52;
      }

      if (objc_msgSend_isEqualToString_(v21, v94, @"BSSetupRecommend_DeviceIsTooNewToSetUp", v95))
      {
        v97 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v99, @"BaseStationTooNew%@", v100, v36);
        v96 = qword_27E383800;
        goto LABEL_51;
      }

      if (objc_msgSend_isEqualToString_(v21, v99, @"BSSetupRecommend_AskUserChooseBaseWired", v100) || objc_msgSend_isEqualToString_(v21, v101, @"BSSetupRecommend_AskUserChooseBaseWireless", v103))
      {
        v104 = objc_msgSend_count(v22, v101, v102, v103);
        v105 = MEMORY[0x277CCACA8];
        if (v104 <= 3)
        {
          v106 = sub_23EB6CD3C(@"CantPickNamedBasesToExtend", qword_27E383800);
          v109 = objc_msgSend_valueForKey_(v25, v107, @"name", v108);
          v110 = sub_23EB6CD3C(@"Conjunction_Or", qword_27E383800);
          v113 = sub_23EB52350(v22, v110, v111, v112);
          goto LABEL_62;
        }

        v115 = sub_23EB6CD3C(@"CantPickOneOfManyBasesToExtend", qword_27E383800);
        v151 = objc_msgSend_valueForKey_(v25, v116, @"name", v117);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v105, v118, v115, @"%@%@", 0, v35, v151, v152);
LABEL_20:
        v47 = valid;
        goto LABEL_21;
      }

      if (objc_msgSend_isEqualToString_(v21, v101, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v103))
      {
        v105 = MEMORY[0x277CCACA8];
        v106 = sub_23EB6CD3C(@"CantPickNamedBasesToJoin", qword_27E383800);
        v109 = objc_msgSend_valueForKey_(v25, v121, @"name", v122);
        v123 = sub_23EB6CD3C(@"Conjunction_Or", qword_27E383800);
        v113 = sub_23EB5252C(v22, v123, v124, v125);
LABEL_62:
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v105, v114, v106, @"%@%@%@", 0, v35, v109, v113);
        goto LABEL_20;
      }

      if ((objc_msgSend_isEqualToString_(v21, v119, @"BSSetupRecommend_UseAUFor80211g", v120) & 1) == 0 && !objc_msgSend_isEqualToString_(v21, v45, @"BSSetupRecommend_FirmwareUpdateRequired", v46))
      {
        if (objc_msgSend_isEqualToString_(v21, v45, @"BSSetupRecommend_NoNetworkToJoin", v46))
        {
          v136 = MEMORY[0x277CCACA8];
          v91 = sub_23EB6CD3C(@"CantFindNetworksToJoin", qword_27E383800);
          v149 = v35;
          v81 = v136;
          goto LABEL_43;
        }

        goto LABEL_47;
      }

      if (v25)
      {
        v126 = MEMORY[0x277CCACA8];
        v127 = sub_23EB6CD3C(@"UseAirPortUtilityFor80211g", qword_27E383800);
        v150 = objc_msgSend_valueForKey_(v25, v128, @"name", v129);
        v98 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v126, v130, v127, @"%@%@", 0, v35);
      }

      else
      {
        if (!v31)
        {
          v154 = 0;
          goto LABEL_47;
        }

        v131 = MEMORY[0x277CCACA8];
        v132 = sub_23EB6CD3C(@"UseAirPortUtilityFor80211g", qword_27E383800);
        v150 = objc_msgSend_valueForKey_(v31, v133, @"SSID_STR", v134);
        v98 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v131, v135, v132, @"%@%@", 0, v35);
      }

LABEL_52:
      v47 = v98;
      v154 = 0;
LABEL_21:
      if ((objc_msgSend_isEqualToString_(v21, v45, @"BSSetupRecommend_OfferRestore", v46) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v14, @"BSSetupRecommend_OfferNoRestore", v15) & 1) == 0)
      {
        objc_msgSend_setString_(v153, v14, v47, v15);
        v156 = v17;
      }

      if (v160 == ++v16)
      {
        v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v162, v167, 16);
        v160 = v137;
        if (v137)
        {
          goto LABEL_8;
        }

        v12 = v153;
        if (v153)
        {
          goto LABEL_78;
        }

        return v161;
      }
    }

    v32 = sub_23EB6A2C0(v25);
    v33 = sub_23EB6A294(v25);
    v34 = sub_23EB6CEE0(v32, v33, 0);
LABEL_14:
    v35 = v34;
    goto LABEL_15;
  }

  v155 = 0;
  v156 = 0;
  v154 = 1;
  if (!v12)
  {
    return v161;
  }

LABEL_78:
  objc_msgSend_setValue_forKey_(v161, v14, resultsCopy, @"fullGuessResults");
  objc_msgSend_setValue_forKey_(v161, v143, v12, @"recommendationText");
  v146 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v144, v154 & 1, v145);
  objc_msgSend_setValue_forKey_(v161, v147, v146, @"baseStationCanBeConfigured");
  if (v156)
  {
    objc_msgSend_setValue_forKey_(v161, v148, v156, @"primaryRecommendationDict");
  }

  if (v155)
  {
    objc_msgSend_setValue_forKey_(v161, v148, v155, @"restoreRecommendationDict");
  }

  return v161;
}

@end