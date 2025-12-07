@interface AirPortAssistantController
+ (BOOL)isUnconfiguredDevice:(id)device;
+ (BOOL)launchAUForNetwork:(id)network withMacAddress:(id)address getAUFromAppStore:(BOOL)store viewController:(id)controller;
+ (id)assistantUIViewControllerWithParameters:(id)parameters;
+ (id)sharedInstance;
+ (id)unconfiguredDeviceName:(id)name;
+ (id)uniqueBaseStationName:(id)name withBssid:(id)bssid;
+ (void)cancelAirPortAssistantController;
- (id)WACDeviceFromScanInfo:(id)info;
- (int)configureUIViewControllerWithParameters:(id)parameters;
- (int)start2_4WiFiScan;
- (void)assistantCompleteWithResult:(int)result;
- (void)dealloc;
- (void)stop2_4WiFiScan;
- (void)updateWACListeners;
- (void)wirelessScanDone:(id)done;
@end

@implementation AirPortAssistantController

+ (id)sharedInstance
{
  result = qword_27E3833B8;
  if (!qword_27E3833B8)
  {
    result = objc_alloc_init(AirPortAssistantController);
    qword_27E3833B8 = result;
  }

  return result;
}

+ (id)assistantUIViewControllerWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if (parameters)
  {
    v5 = objc_msgSend_objectForKey_(parameters, a2, @"scanRecord", v3);
    v8 = objc_msgSend_objectForKey_(parametersCopy, v6, @"currentWiFiScan", v7);
    v11 = objc_msgSend_objectForKey_(parametersCopy, v9, @"deviceMACAddr", v10);
    if (!(v5 | v11))
    {
      return 0;
    }

    v15 = v11;
    parametersCopy = objc_msgSend_sharedInstance(AirPortAssistantController, v12, v13, v14);
    if (parametersCopy)
    {
      v16 = [AssistantUIViewController alloc];
      v18 = objc_msgSend_initWithNibName_bundle_(v16, v17, 0, 0);
      if (v18)
      {
        v21 = v18;
        objc_msgSend_setAssistantDelegate_(v18, v19, parametersCopy, v20);
        objc_msgSend_setMacAddress_(v21, v22, v15, v23);
        objc_msgSend_setScanInfoRecord_(v21, v24, v5, v25);
        objc_msgSend_setParamScanResults_(v21, v26, v8, v27);
        objc_msgSend_setViewController_(parametersCopy, v28, v21, v29);

        v32 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v30, v5, v31);
        objc_msgSend_setConfiguredSSID_(parametersCopy, v33, v32, v34);
        return parametersCopy;
      }

      return 0;
    }
  }

  return parametersCopy;
}

+ (void)cancelAirPortAssistantController
{
  objc_msgSend_downloadAssetsCancel(AirPortAssistantController, a2, v2, v3);
  if (qword_27E3833B0)
  {
    v7 = objc_msgSend_uiAlert(qword_27E3833B0, v4, v5, v6);
    objc_msgSend_dismissWithCancelActionAnimated_(v7, v8, 0, v9);
  }

  if (qword_27E3833B8)
  {
    v10 = objc_msgSend_delegate(qword_27E3833B8, v4, v5, v6);
    objc_msgSend_setDelegate_(qword_27E3833B8, v11, 0, v12);
    v16 = objc_msgSend_viewController(qword_27E3833B8, v13, v14, v15);
    objc_msgSend_handeImmediateCancel(v16, v17, v18, v19);
    v20 = qword_27E3833B8;
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = qword_27E3833B8;
        v27 = objc_msgSend_context(qword_27E3833B8, v23, v24, v25);
        objc_msgSend_airPortAssistantComplete_result_context_animated_(v10, v28, v26, 4294960573, v27, 0);
      }

      else if (objc_opt_respondsToSelector())
      {
        objc_msgSend_airPortAssistantComplete_animated_(v10, v29, qword_27E3833B8, 0);
      }

      else if (objc_opt_respondsToSelector())
      {
        objc_msgSend_airPortAssistantComplete_(v10, v21, qword_27E3833B8, v22);
      }
    }

    v30 = qword_27E3833B8;

    objc_msgSend_setContext_(v30, v21, 0, v22);
  }
}

- (void)assistantCompleteWithResult:(int)result
{
  v3 = *&result;
  selfCopy = self;
  if (self->_delegate)
  {
    v8 = objc_opt_respondsToSelector();
    delegate = self->_delegate;
    if (v8)
    {
      v11 = objc_msgSend_context(self, v6, v9, v7);
      objc_msgSend_airPortAssistantComplete_result_context_animated_(delegate, v12, self, v3, v11, 1);
    }

    else if (delegate)
    {
      v13 = objc_opt_respondsToSelector();
      v14 = self->_delegate;
      if (v13)
      {
        objc_msgSend_airPortAssistantComplete_animated_(v14, v6, self, 1);
      }

      else if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_airPortAssistantComplete_(self->_delegate, v6, self, v7);
      }
    }
  }

  objc_msgSend_setContext_(self, v6, 0, v7);
}

+ (BOOL)isUnconfiguredDevice:(id)device
{
  objc_msgSend_downloadAssetsIfNeeded(AirPortAssistantController, a2, device, v3);
  IsUnconfigured = objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, v5, device, v6);
  v10 = objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v8, device, v9);
  v13 = objc_msgSend_scanInfoSupportsACPConfigV1_(WiFiUtils, v11, device, v12);
  v16 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v14, device, v15);
  v19 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v17, device, v18);
  if (IsUnconfigured)
  {
    v20 = (v19 != 0) | v10 | v13 | v16;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

+ (id)unconfiguredDeviceName:(id)name
{
  v5 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, name, v3);

  return sub_23EB6D0E0(name, v5, 0, v6);
}

+ (id)uniqueBaseStationName:(id)name withBssid:(id)bssid
{
  v5 = sub_23EB6D320(bssid, 0, name, bssid);
  v6 = MEMORY[0x277CCAB68];
  v9 = objc_msgSend_substringFromIndex_(v5, v7, 9, v8);
  v12 = objc_msgSend_stringWithString_(v6, v10, v9, v11);
  v16 = objc_msgSend_length(v12, v13, v14, v15);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v12, v17, @":", &stru_285145FE8, 0, 0, v16 - 1);
  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%@ %@", v19, name, v12);
}

+ (BOOL)launchAUForNetwork:(id)network withMacAddress:(id)address getAUFromAppStore:(BOOL)store viewController:(id)controller
{
  storeCopy = store;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"apmanage://manage?", address);
  if (address)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@macaddr=%@", v12, v11, address);
  }

  if (network)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@&network=%@", v12, v11, network);
    v17 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v14, v15, v16);
    v11 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v13, v18, v17, v19);
  }

  v20 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v10, v11, v12);
  v21 = sub_23EC0F534(v20);
  if (!v21 && storeCopy)
  {
    sub_23EB6CCD4(@"SetupRecommendations");
    v22 = [AUUIAlert alloc];
    v25 = objc_msgSend_initWithViewController_(v22, v23, controller, v24);
    v26 = sub_23EB6CD3C(@"AskToGetAirPortUtility1", qword_27E383800);
    objc_msgSend_setTitle_(v25, v27, v26, v28);
    v29 = sub_23EB6CD3C(@"AskToGetAirPortUtility2", qword_27E383800);
    objc_msgSend_setMessage_(v25, v30, v29, v31);
    v32 = sub_23EB6CD3C(@"kOK", qword_27E383800);
    objc_msgSend_setOkButtonTitle_(v25, v33, v32, v34);
    v35 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
    objc_msgSend_setCancelButtonTitle_(v25, v36, v35, v37);
    qword_27E3833B0 = objc_alloc_init(AUUIAlertDelegateClass);
    objc_msgSend_setDelegate_(v25, v38, qword_27E3833B0, v39);
    objc_msgSend_setUiAlert_(qword_27E3833B0, v40, v25, v41);
    objc_msgSend_show(v25, v42, v43, v44);
  }

  return v21;
}

- (int)start2_4WiFiScan
{
  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
  if (!v5)
  {
    return -6728;
  }

  v9 = v5;
  if (!objc_msgSend_airPortIsOn(v5, v6, v7, v8))
  {
    return -6729;
  }

  if (objc_msgSend_isScanningActive(v9, v10, v11, v12))
  {
    return -6709;
  }

  objc_msgSend_setUnconfiguredWACDevices_(self, v13, 0, v14);
  objc_msgSend_clearScanCache(v9, v16, v17, v18);
  objc_msgSend_setPeriodicScanType_(v9, v19, 1, v20);
  objc_msgSend_setPeriodicScanInterval_(v9, v21, v22, v23, 10.0);
  objc_msgSend_activateScanning_(v9, v24, 1, v25);
  v29 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v26, v27, v28);
  objc_msgSend_addObserver_selector_name_object_(v29, v30, self, sel_wirelessScanDone_, @"com.apple.WiFiUtils.Scan.Complete", 0);
  return 0;
}

- (void)stop2_4WiFiScan
{
  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    if (objc_msgSend_isScanningActive(v5, v6, v7, v8))
    {
      objc_msgSend_activateScanning_(v9, v6, 0, v8);
      objc_msgSend_cancelAsync(v9, v10, v11, v12);
    }
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7, v8);

  objc_msgSend_removeObserver_name_object_(v13, v14, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
}

- (int)configureUIViewControllerWithParameters:(id)parameters
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (!parameters)
  {
    return -6762;
  }

  v6 = objc_msgSend_objectForKey_(parameters, a2, @"scanRecord", v3);
  v9 = objc_msgSend_objectForKey_(parameters, v7, @"currentWiFiScan", v8);
  v12 = objc_msgSend_objectForKey_(parameters, v10, @"deviceMACAddr", v11);
  v15 = objc_msgSend_objectForKey_(parameters, v13, @"wacShouldHideFindAppUI", v14);
  if (!(v6 | v12))
  {
    return -6762;
  }

  v16 = v15;
  v17 = [AssistantUIViewController alloc];
  v19 = objc_msgSend_initWithNibName_bundle_(v17, v18, 0, 0);
  if (!v19)
  {
    return -6762;
  }

  v22 = v19;
  objc_msgSend_setAssistantDelegate_(v19, v20, self, v21);
  objc_msgSend_setMacAddress_(v22, v23, v12, v24);
  objc_msgSend_setScanInfoRecord_(v22, v25, v6, v26);
  objc_msgSend_setParamScanResults_(v22, v27, v9, v28);
  if (v16)
  {
    v35 = @"wacShouldHideFindAppUI";
    v36[0] = v16;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v36, &v35, 1);
    objc_msgSend_setCallerParamDict_(v22, v32, v31, v33);
  }

  objc_msgSend_setViewController_(self, v29, v22, v30);

  return 0;
}

- (void)wirelessScanDone:(id)done
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {

    MEMORY[0x2821F9670](self, sel_updateWACListeners, v4, v5);
  }
}

- (void)updateWACListeners
{
  v127 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
  v9 = objc_msgSend_mergedScanInfoArray(v5, v6, v7, v8);
  v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12);
  v104 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15, v16);
  if (objc_msgSend_count(self->_unconfiguredWACDevices, v17, v18, v19))
  {
    v23 = MEMORY[0x277CBEB38];
    v24 = objc_msgSend_unconfiguredWACDevices(self, v20, v21, v22);
    v106 = objc_msgSend_dictionaryWithDictionary_(v23, v25, v24, v26);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v27, &v115, v125, 16);
    if (v28)
    {
      v32 = v28;
      v33 = *v116;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v116 != v33)
          {
            objc_enumerationMutation(v9);
          }

          v35 = *(*(&v115 + 1) + 8 * i);
          if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v29, v35, v31) & 1) != 0 || objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v29, v35, v31))
          {
            v37 = objc_msgSend_unconfiguredWACDevices(self, v29, v36, v31);
            v40 = objc_msgSend_scanInfoBSSIDStr_(WiFiUtils, v38, v35, v39);
            if (!objc_msgSend_objectForKey_(v37, v41, v40, v42))
            {
              v43 = objc_msgSend_WACDeviceFromScanInfo_(self, v29, v35, v31);
              v46 = objc_msgSend_objectForKey_(v43, v44, @"wacMACAddress", v45);
              objc_msgSend_setObject_forKey_(v13, v47, v43, v46);
              objc_msgSend_setObject_forKey_(v106, v48, v43, v46);
            }
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v29, &v115, v125, 16);
      }

      while (v32);
    }

    v49 = objc_msgSend_unconfiguredWACDevices(self, v29, v30, v31);
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = objc_msgSend_allValues(v49, v50, v51, v52);
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v111, v124, 16);
    if (v54)
    {
      v57 = v54;
      v102 = v13;
      selfCopy = self;
      v58 = *v112;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v112 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v111 + 1) + 8 * j);
          v61 = objc_msgSend_objectForKey_(v60, v55, @"wacMACAddress", v56);
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v62, &v107, v123, 16);
          if (v63)
          {
            v64 = v63;
            v65 = *v108;
LABEL_20:
            v66 = 0;
            while (1)
            {
              if (*v108 != v65)
              {
                objc_enumerationMutation(v9);
              }

              v67 = objc_msgSend_scanInfoBSSIDStr_(WiFiUtils, v55, *(*(&v107 + 1) + 8 * v66), v56);
              if (objc_msgSend_isEqualToString_(v61, v68, v67, v69))
              {
                break;
              }

              if (v64 == ++v66)
              {
                v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v55, &v107, v123, 16);
                if (v64)
                {
                  goto LABEL_20;
                }

                goto LABEL_26;
              }
            }
          }

          else
          {
LABEL_26:
            objc_msgSend_setObject_forKey_(v104, v55, v60, v61);
            objc_msgSend_removeObjectForKey_(v106, v70, v61, v71);
          }
        }

        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v111, v124, 16);
      }

      while (v57);
      v13 = v102;
      self = selfCopy;
    }

    objc_msgSend_setUnconfiguredWACDevices_(self, v55, v106, v56);
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v20, &v119, v126, 16);
    v78 = v13;
    if (v75)
    {
      v79 = v75;
      v80 = *v120;
      do
      {
        for (k = 0; k != v79; ++k)
        {
          if (*v120 != v80)
          {
            objc_enumerationMutation(v9);
          }

          v82 = *(*(&v119 + 1) + 8 * k);
          if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v76, v82, v77) & 1) != 0 || objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v76, v82, v77))
          {
            v83 = objc_msgSend_WACDeviceFromScanInfo_(self, v76, v82, v77);
            v86 = objc_msgSend_objectForKey_(v83, v84, @"wacMACAddress", v85);
            objc_msgSend_setObject_forKey_(v13, v87, v83, v86);
          }
        }

        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v76, &v119, v126, 16);
      }

      while (v79);
      v78 = v13;
    }

    objc_msgSend_setUnconfiguredWACDevices_(self, v76, v78, v77);
  }

  if (objc_msgSend_count(v13, v72, v73, v74) || objc_msgSend_count(v104, v88, v89, v90))
  {
    delegate = self->_delegate;
    v92 = objc_msgSend_allValues(v13, v88, v89, v90);
    v96 = objc_msgSend_allValues(v104, v93, v94, v95);
    objc_msgSend_wacDevicesAdded_andWACDevicesRemoved_withController_(delegate, v97, v92, v96, self);
  }

  v98 = objc_msgSend_sharedInstance(WiFiUtils, v88, v89, v90);
  objc_msgSend_clearScanCache(v98, v99, v100, v101);
}

- (id)WACDeviceFromScanInfo:(id)info
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, info, v3);
  v6 = MEMORY[0x277CCABB0];
  IsMFIAirPlayDevice = objc_msgSend_scanInfoIsMFIAirPlayDevice_(WiFiUtils, v7, info, v8);
  v49 = objc_msgSend_numberWithBool_(v6, v10, IsMFIAirPlayDevice, v11);
  v12 = MEMORY[0x277CCABB0];
  v15 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v13, info, v14);
  v18 = objc_msgSend_numberWithBool_(v12, v16, v15, v17);
  v19 = MEMORY[0x277CCABB0];
  v22 = objc_msgSend_scanInfoSupportsSecureWAC_(WiFiUtils, v20, info, v21);
  v25 = objc_msgSend_numberWithBool_(v19, v23, v22, v24);
  v28 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v26, info, v27);
  v31 = objc_msgSend_scanInfoDeviceID_(WiFiUtils, v29, info, v30);
  v34 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v32, info, v33);
  v37 = objc_msgSend_scanInfoBSSIDStr_(WiFiUtils, v35, info, v36);
  v40 = objc_msgSend_scanInfoModelName_(WiFiUtils, v38, info, v39);
  v43 = objc_msgSend_scanInfoManufacturerName_(WiFiUtils, v41, info, v42);
  objc_msgSend_setObject_forKey_(v5, v44, v49, @"wacSupportsAirPlay");
  objc_msgSend_setObject_forKey_(v5, v45, v18, @"wacSupportsSpruce");
  objc_msgSend_setObject_forKey_(v5, v46, v25, @"wacSupportsSecureWAC");
  if (v28)
  {
    objc_msgSend_setObject_forKey_(v5, v47, v28, @"wacFriendlyName");
  }

  if (v31)
  {
    objc_msgSend_setObject_forKey_(v5, v47, v31, @"wacDeviceID");
  }

  if (v34)
  {
    objc_msgSend_setObject_forKey_(v5, v47, v34, @"wacSSID");
  }

  if (v37)
  {
    objc_msgSend_setObject_forKey_(v5, v47, v37, @"wacMACAddress");
  }

  if (v40)
  {
    objc_msgSend_setObject_forKey_(v5, v47, v40, @"wacModelName");
  }

  if (v43)
  {
    objc_msgSend_setObject_forKey_(v5, v47, v43, @"wacManufacturerName");
  }

  return v5;
}

- (void)dealloc
{
  qword_27E3833B8 = 0;
  objc_msgSend_sharedInstanceRelease(WiFiUtils, v3, v4, v5);

  self->_configuredSSID = 0;
  objc_msgSend_setUnconfiguredWACDevices_(self, v6, 0, v7);
  v8.receiver = self;
  v8.super_class = AirPortAssistantController;
  [(AirPortAssistantController *)&v8 dealloc];
}

@end