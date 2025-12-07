@interface WiFiUtils
+ (BOOL)network:(id)network shouldBeIgnored:(int)ignored;
+ (BOOL)networkIsApple:(id)apple productID:(unsigned int *)d;
+ (BOOL)networkIsSecure:(id)secure secMode:(int *)mode isEnterprise:(BOOL *)enterprise;
+ (BOOL)scanInfoIsAirPlayDevice:(id)device;
+ (BOOL)scanInfoIsAudioDevice:(id)device;
+ (BOOL)scanInfoIsDWDSCapable:(id)capable isDWDSEnabled:(BOOL *)enabled;
+ (BOOL)scanInfoIsGuestNetwork:(id)network;
+ (BOOL)scanInfoIsHomeKitSecureWAC:(id)c;
+ (BOOL)scanInfoIsInSoftReset:(id)reset;
+ (BOOL)scanInfoIsMFIAirPlayDevice:(id)device;
+ (BOOL)scanInfoIsSTAOnly:(id)only;
+ (BOOL)scanInfoIsUnconfigured:(id)unconfigured;
+ (BOOL)scanInfoTestBitFromAppleDeviceIE:(id)e forType:(int64_t)type;
+ (BOOL)stringArray:(id)array containsBSSID:(id)d;
+ (id)copyFilteredNetworks:(id)networks ignoreOptions:(int)options;
+ (id)getNetworkPassword:(id)password;
+ (id)scanInfoAirPortUniqueIdentifier:(id)identifier;
+ (id)scanInfoBSSIDStr:(id)str;
+ (id)scanInfoDataFromAppleDeviceIE:(id)e forType:(int64_t)type;
+ (id)scanInfoDeviceID:(id)d;
+ (id)scanInfoStringFromAppleDeviceIE:(id)e forType:(int64_t)type;
+ (id)sharedInstance;
+ (int)barsForRSSI:(int)i;
+ (int)scanInfoDeviceKind:(id)kind;
+ (unsigned)scanInfoAppleProductID:(id)d;
+ (unsigned)scanInfoSubAppleProductID:(id)d;
+ (void)sharedInstanceRelease;
- (BOOL)getAutoJoinState;
- (BOOL)isCurrentlyAssociatedToAnInfrastructureNetwork:(BOOL *)network;
- (BOOL)isJoinInProgress;
- (BOOL)isScanInProgress;
- (WiFiUtils)init;
- (id)getCurrentAssociationInfo;
- (id)getCurrentAssociationInfoOrNil;
- (id)getCurrentAssociationScanInfo;
- (id)getIfList;
- (id)getLinkStatus;
- (id)getNetworkPasswordForNetworkNamed:(id)named;
- (id)getPreferredNetworks:(BOOL)networks;
- (id)mergedScanInfoArray;
- (id)resetScanInfosOfType:(int)type;
- (id)scanInfoForMACAddress:(id)address;
- (id)scanInfoForName:(id)name wifiType:(int)type;
- (id)unconfiguredScanInfosOfType:(int)type;
- (id)unmergedScanInfoArray;
- (id)unmergedScanInfoDict;
- (int)_asyncWiFiScan:(id)scan wifiType:(int)type merge:(BOOL)merge maxAge:(unint64_t)age isPeriodic:(BOOL)periodic;
- (int)clearScanCacheSync;
- (int)closeWiFi;
- (int)disassociateSync;
- (int)joinNetworkWithNameAsync:(id)async password:(id)password rememberChoice:(int)choice;
- (int)joinNetworkWithScanInfoAsync:(id)async password:(id)password rememberChoice:(int)choice;
- (int)joinNetworkWithScanInfoSync:(id)sync password:(id)password rememberChoice:(int)choice;
- (int)openWiFi;
- (int)setAutoJoinState:(BOOL)state;
- (void)activateScanning:(BOOL)scanning;
- (void)asyncWiFiScanThread:(id)thread;
- (void)cancelAsync;
- (void)clearScanCache;
- (void)dealloc;
- (void)joinNetworkWithNameThread:(id)thread;
- (void)joinNetworkWithScanInfoThread:(id)thread;
- (void)mergeScanResults:(id)results ageOut:(BOOL)out;
- (void)scanTimerCallback:(id)callback;
- (void)setJoinInProgress:(BOOL)progress;
- (void)setScanInProgress:(BOOL)progress;
- (void)setScanOnlyWhenAppActive:(BOOL)active;
- (void)setUnmergedScanInfoDict:(id)dict;
- (void)triggerScan;
@end

@implementation WiFiUtils

+ (id)sharedInstance
{
  result = qword_27E383420;
  if (!qword_27E383420)
  {
    result = objc_alloc_init(WiFiUtils);
    qword_27E383420 = result;
  }

  return result;
}

+ (void)sharedInstanceRelease
{
  if (qword_27E383420)
  {
    v4 = objc_msgSend__scanTimer(qword_27E383420, a2, v2, v3);
    objc_msgSend_invalidate(v4, v5, v6, v7);
    objc_msgSend_set_scanTimer_(qword_27E383420, v8, 0, v9);

    qword_27E383420 = 0;
  }
}

- (WiFiUtils)init
{
  v50.receiver = self;
  v50.super_class = WiFiUtils;
  v2 = [(WiFiUtils *)&v50 init];
  v6 = v2;
  if (v2)
  {
    v7 = objc_msgSend_openWiFi(v2, v3, v4, v5);
    if (v7)
    {
      if (dword_27E381870 <= 800)
      {
        v10 = v7;
        if (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u))
        {
          sub_23EB75374(&dword_27E381870, "[WiFiUtils init]", 800, "Could not init WIFi err: %ld\n", v10);
        }
      }
    }

    objc_msgSend_setPeriodicScanType_(v6, v8, 3, v9);
    objc_msgSend_setPeriodicScanInterval_(v6, v11, v12, v13, 15.0);
    v6->_wifiBusy = dispatch_semaphore_create(1);
    v6->_missingBSSIDCounts = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15, v16);
    v20 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18, v19);
    objc_msgSend_setUnmergedScanInfoDict_(v6, v21, v20, v22);
    v23 = MEMORY[0x277CBEBB8];
    v27 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v24, v25, v26);
    v31 = objc_msgSend_date(MEMORY[0x277CBEAA8], v28, v29, v30);
    objc_msgSend_timeIntervalSinceDate_(v27, v32, v31, v33);
    v35 = objc_msgSend_timerWithTimeInterval_target_selector_userInfo_repeats_(v23, v34, v6, sel_scanTimerCallback_, 0, 1);
    objc_msgSend_set_scanTimer_(v6, v36, v35, v37);
    v41 = objc_msgSend_mainRunLoop(MEMORY[0x277CBEB88], v38, v39, v40);
    v45 = objc_msgSend__scanTimer(v6, v42, v43, v44);
    objc_msgSend_addTimer_forMode_(v41, v46, v45, *MEMORY[0x277CBE640]);
    objc_msgSend_activateScanning_(v6, v47, 0, v48);
  }

  return v6;
}

- (void)dealloc
{
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils dealloc]", 800, "%s\n", "[WiFiUtils dealloc]");
  }

  dispatch_semaphore_wait(self->_wifiBusy, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_closeWiFi(self, v3, v4, v5);
  dispatch_semaphore_signal(self->_wifiBusy);
  dispatch_release(self->_wifiBusy);
  self->_wifiBusy = 0;
  objc_msgSend_setUnmergedScanInfoDict_(self, v6, 0, v7);

  self->_missingBSSIDCounts = 0;
  v8.receiver = self;
  v8.super_class = WiFiUtils;
  [(WiFiUtils *)&v8 dealloc];
}

- (void)setScanOnlyWhenAppActive:(BOOL)active
{
  if (self->_scanOnlyWhenAppActive != active)
  {
    self->_scanOnlyWhenAppActive = active;
    if (!active && self->_scanningActive)
    {
      (MEMORY[0x2821F9670])(self, sel_triggerScan, active);
    }
  }
}

- (void)activateScanning:(BOOL)scanning
{
  scanningCopy = scanning;
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils activateScanning:]", 800, "flag: %d _scanningActive: %d\n", scanningCopy, self->_scanningActive);
  }

  if (self->_scanningActive != scanningCopy)
  {
    self->_scanningActive = scanningCopy;
    if (scanningCopy)
    {

      MEMORY[0x2821F9670](self, sel_triggerScan, scanning, v3);
    }
  }
}

- (BOOL)isScanInProgress
{
  objc_sync_enter(self);
  scanInProgress = self->_scanInProgress;
  objc_sync_exit(self);
  return scanInProgress;
}

- (BOOL)isJoinInProgress
{
  objc_sync_enter(self);
  joinInProgress = self->_joinInProgress;
  objc_sync_exit(self);
  return joinInProgress;
}

- (void)cancelAsync
{
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils cancelAsync]", 800, "%s\n", "[WiFiUtils cancelAsync]");
  }

  if (objc_msgSend_isScanInProgress(self, a2, v2, v3))
  {
    sub_23EC0BD4C(self->_wifiShim);
    objc_msgSend_setScanInProgress_(self, v8, 0, v9);
  }

  else
  {
    if (!objc_msgSend_isJoinInProgress(self, v5, v6, v7))
    {
      return;
    }

    sub_23EC0BD4C(self->_wifiShim);
    objc_msgSend_setJoinInProgress_(self, v10, 0, v11);
  }

  wifiBusy = self->_wifiBusy;

  dispatch_semaphore_signal(wifiBusy);
}

- (void)clearScanCache
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);

  objc_msgSend_setUnmergedScanInfoDict_(self, v5, v6, v7);
}

- (id)unmergedScanInfoArray
{
  v4 = objc_msgSend_unmergedScanInfoDict(self, a2, v2, v3);
  v8 = objc_msgSend_allValues(v4, v5, v6, v7);

  return v8;
}

- (id)mergedScanInfoArray
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  v9 = objc_msgSend_unmergedScanInfoArray(self, v6, v7, v8);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = objc_msgSend_objectForKey_(v18, v12, @"SSID_STR", v14);
        if (v19)
        {
          v20 = v19;
          v21 = objc_msgSend_objectForKey_(v5, v12, v19, v14);
          if (!v21 || sub_23EB6B174(v18, v21, v22, v23))
          {
            objc_msgSend_setObject_forKey_(v5, v12, v18, v20);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v25, v29, 16);
    }

    while (v15);
  }

  return objc_msgSend_allValues(v5, v12, v13, v14);
}

- (id)unconfiguredScanInfosOfType:(int)type
{
  v34 = *MEMORY[0x277D85DE8];
  if (!type)
  {
    return 0;
  }

  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, *&type, v3);
  v10 = objc_msgSend_unmergedScanInfoArray(self, v7, v8, v9);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v33, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if (objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, v13, v18, v14))
        {
          v19 = objc_msgSend_scanInfoIs5GHz_(WiFiUtils, v13, v18, v14);
          if ((((type & 2) == 0) & v19) != 0 || ((type | v19) & 1) == 0)
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v24 = objc_msgSend_objectForKey_(v18, v13, @"SSID_STR", v14);
              v27 = objc_msgSend_objectForKey_(v18, v25, @"CHANNEL", v26);
              sub_23EB75374(&dword_27E381870, "[WiFiUtils unconfiguredScanInfosOfType:]", 800, "Skipping Unconfigured %@ for Channel %@\n", v24, v27);
            }
          }

          else
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v20 = objc_msgSend_objectForKey_(v18, v13, @"SSID_STR", v14);
              v23 = objc_msgSend_objectForKey_(v18, v21, @"CHANNEL", v22);
              sub_23EB75374(&dword_27E381870, "[WiFiUtils unconfiguredScanInfosOfType:]", 800, "Adding Unconfigured %@ for Channel %@\n", v20, v23);
            }

            objc_msgSend_addObject_(v6, v13, v18, v14);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v29, v33, 16);
    }

    while (v15);
  }

  return v6;
}

- (id)resetScanInfosOfType:(int)type
{
  v34 = *MEMORY[0x277D85DE8];
  if (!type)
  {
    return 0;
  }

  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, *&type, v3);
  v10 = objc_msgSend_unmergedScanInfoArray(self, v7, v8, v9);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v33, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if (objc_msgSend_scanInfoIsInSoftReset_(WiFiUtils, v13, v18, v14))
        {
          v19 = objc_msgSend_scanInfoIs5GHz_(WiFiUtils, v13, v18, v14);
          if ((((type & 2) == 0) & v19) != 0 || ((type | v19) & 1) == 0)
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v24 = objc_msgSend_objectForKey_(v18, v13, @"SSID_STR", v14);
              v27 = objc_msgSend_objectForKey_(v18, v25, @"CHANNEL", v26);
              sub_23EB75374(&dword_27E381870, "[WiFiUtils resetScanInfosOfType:]", 800, "Skipping reset %@ for Channel %@\n", v24, v27);
            }
          }

          else
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v20 = objc_msgSend_objectForKey_(v18, v13, @"SSID_STR", v14);
              v23 = objc_msgSend_objectForKey_(v18, v21, @"CHANNEL", v22);
              sub_23EB75374(&dword_27E381870, "[WiFiUtils resetScanInfosOfType:]", 800, "Adding reset %@ for Channel %@\n", v20, v23);
            }

            objc_msgSend_addObject_(v6, v13, v18, v14);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v29, v33, 16);
    }

    while (v15);
  }

  return v6;
}

- (id)scanInfoForMACAddress:(id)address
{
  v25 = *MEMORY[0x277D85DE8];
  if (!address)
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(address, a2, @"00:00:00:00:00:00", v3))
  {
    return 0;
  }

  v9 = objc_msgSend_unmergedScanInfoArray(self, v6, v7, v8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (!v11)
  {
    return 0;
  }

  v14 = v11;
  v15 = *v21;
LABEL_5:
  v16 = 0;
  while (1)
  {
    if (*v21 != v15)
    {
      objc_enumerationMutation(v9);
    }

    v17 = *(*(&v20 + 1) + 8 * v16);
    v18 = objc_msgSend_objectForKey_(v17, v12, @"BSSID", v13);
    if (sub_23EBAFDF4(address, v18))
    {
      return v17;
    }

    if (v14 == ++v16)
    {
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
      v17 = 0;
      if (v14)
      {
        goto LABEL_5;
      }

      return v17;
    }
  }
}

- (id)scanInfoForName:(id)name wifiType:(int)type
{
  v4 = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (name && type)
  {
    v7 = objc_msgSend_unmergedScanInfoArray(self, a2, name, *&type);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v21;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v4 = *(*(&v20 + 1) + 8 * v14);
        v15 = objc_msgSend_scanInfoIs5GHz_(WiFiUtils, v10, v4, v11);
        if (((type & 2) == 0) & v15) == 0 && ((type | v15))
        {
          v16 = objc_msgSend_objectForKey_(v4, v10, @"SSID_STR", v11);
          if (objc_msgSend_isEqualToString_(name, v17, v16, v18))
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
          v4 = 0;
          if (v12)
          {
            goto LABEL_5;
          }

          return v4;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (id)scanInfoBSSIDStr:(id)str
{
  v4 = 0;
  if (!str)
  {
    return 0;
  }

  sub_23EB6FF14(str, &v4, "%kO", @"BSSID");
  return v4;
}

+ (id)scanInfoDeviceID:(id)d
{
  v3 = objc_msgSend_scanInfoDataFromAppleDeviceIE_forType_(WiFiUtils, a2, d, 7);
  if (v3 && (v7 = v3, objc_msgSend_length(v3, v4, v5, v6) == 6) && (v11 = objc_msgSend_bytes(v7, v8, v9, v10)) != 0)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%02x%02x%02x%02x%02x%02x", v13, *v11, v11[1], v11[2], v11[3], v11[4], v11[5]);
  }

  else
  {
    return 0;
  }
}

+ (id)scanInfoStringFromAppleDeviceIE:(id)e forType:(int64_t)type
{
  if (!e)
  {
    return 0;
  }

  typeCopy = type;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  Value = CFDictionaryGetValue(e, @"IE");
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  if (sub_23EB78B74(BytePtr, &BytePtr[Length], 10502144, &v12, &v11, 0) || sub_23EB78B04(v12, &v12[v11], typeCopy, &v14, &v13, 0))
  {
    return 0;
  }

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  return objc_msgSend_initWithBytes_length_encoding_(v9, v10, v14, v13, 4);
}

+ (id)scanInfoDataFromAppleDeviceIE:(id)e forType:(int64_t)type
{
  if (!e)
  {
    return 0;
  }

  typeCopy = type;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  Value = CFDictionaryGetValue(e, @"IE");
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  if (sub_23EB78B74(BytePtr, &BytePtr[Length], 10502144, &v12, &v11, 0))
  {
    return 0;
  }

  result = 0;
  if (v12)
  {
    if (v11)
    {
      v10 = sub_23EB78B04(v12, &v12[v11], typeCopy, &v14, &v13, 0);
      result = 0;
      if (!v10)
      {
        if (v14)
        {
          if (v13)
          {
            return objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v14, v13);
          }
        }
      }
    }
  }

  return result;
}

+ (id)scanInfoAirPortUniqueIdentifier:(id)identifier
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (sub_23EB81F28(identifier, &v8, &v6) || sub_23EB78D24(v8, &v8[v6], 1, &v7, &v5, 0))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v3, v7, v5);
  }
}

+ (unsigned)scanInfoSubAppleProductID:(id)d
{
  v9 = 0;
  v7 = 0;
  v8 = 0;
  if (!sub_23EB81F28(d, &v9, &v7) && ((v6 = 0, !sub_23EB78D24(v9, &v9[v7], 2, &v8, &v6, 0)) ? (v3 = v8 == 0) : (v3 = 1), !v3 ? (v4 = v6 == 1) : (v4 = 0), v4))
  {
    return *v8;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)scanInfoAppleProductID:(id)d
{
  if (d)
  {
    Value = CFDictionaryGetValue(d, @"IE");
    if (Value)
    {
      v4 = Value;
      v8 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v4);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], &v8, 0))
      {
        LODWORD(Value) = 0;
      }

      else
      {
        LODWORD(Value) = v8;
      }
    }
  }

  else
  {
    LODWORD(Value) = 0;
  }

  return Value;
}

+ (int)scanInfoDeviceKind:(id)kind
{
  if (!kind)
  {
    return 0;
  }

  if (objc_msgSend_scanInfoIsMFIAirPlayDevice_(WiFiUtils, a2, kind, v3))
  {
    return 3;
  }

  if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v5, kind, v6) & 1) != 0 || objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v8, kind, v9) && !objc_msgSend_scanInfoSupportsSecureWAC_(WiFiUtils, v10, kind, v11))
  {
    return 4;
  }

  if (objc_msgSend_scanInfoIsAirPlayDevice_(WiFiUtils, v10, kind, v11))
  {
    return 2;
  }

  return 1;
}

+ (BOOL)scanInfoIsUnconfigured:(id)unconfigured
{
  if (unconfigured)
  {
    Value = CFDictionaryGetValue(unconfigured, @"IE");
    if (Value)
    {
      v5 = Value;
      v10 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v5);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v10))
      {
        LOBYTE(Value) = objc_msgSend_scanInfoTestBitFromAppleDeviceIE_forType_(WiFiUtils, v8, unconfigured, 1);
      }

      else
      {
        LODWORD(Value) = (v10 >> 1) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsGuestNetwork:(id)network
{
  if (network)
  {
    Value = CFDictionaryGetValue(network, @"IE");
    if (Value)
    {
      v4 = Value;
      v8 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v4);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v8))
      {
        LOBYTE(Value) = 0;
      }

      else
      {
        LODWORD(Value) = (v8 >> 3) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsAudioDevice:(id)device
{
  if (device)
  {
    Value = CFDictionaryGetValue(device, @"IE");
    if (Value)
    {
      v5 = Value;
      v10 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v5);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v10))
      {
        LOBYTE(Value) = objc_msgSend_scanInfoTestBitFromAppleDeviceIE_forType_(WiFiUtils, v8, device, 0);
      }

      else
      {
        LODWORD(Value) = (v10 >> 11) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsSTAOnly:(id)only
{
  if (only)
  {
    Value = CFDictionaryGetValue(only, @"IE");
    if (Value)
    {
      v5 = Value;
      v13 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v5);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v13))
      {
        if (objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v8, only, v9))
        {
          LOBYTE(Value) = 1;
        }

        else
        {
          LOBYTE(Value) = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v10, only, v11);
        }
      }

      else
      {
        LODWORD(Value) = (v13 >> 7) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsMFIAirPlayDevice:(id)device
{
  v5 = objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, a2, device, v3);
  if (v5)
  {

    LOBYTE(v5) = objc_msgSend_scanInfoIsAirPlayDevice_(WiFiUtils, v6, device, v7);
  }

  return v5;
}

+ (BOOL)scanInfoIsHomeKitSecureWAC:(id)c
{
  v5 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, a2, c, v3);
  if (v5)
  {

    LOBYTE(v5) = objc_msgSend_scanInfoSupportsSecureWAC_(WiFiUtils, v6, c, v7);
  }

  return v5;
}

+ (BOOL)scanInfoIsAirPlayDevice:(id)device
{
  IsSTAOnly = objc_msgSend_scanInfoIsSTAOnly_(WiFiUtils, a2, device, v3);
  if (IsSTAOnly)
  {

    LOBYTE(IsSTAOnly) = MEMORY[0x2821F9670](WiFiUtils, sel_scanInfoIsAudioDevice_, device, v6);
  }

  return IsSTAOnly;
}

+ (BOOL)scanInfoTestBitFromAppleDeviceIE:(id)e forType:(int64_t)type
{
  if (e)
  {
    Value = CFDictionaryGetValue(e, @"IE");
    if (Value)
    {
      v6 = Value;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v6);
      if (sub_23EB78B74(BytePtr, &BytePtr[Length], 10502144, &v13, &v11, 0) || (v9 = v11, v11 = 0, sub_23EB78B04(v13, &v13[v9], 0, &v12, &v11, 0)) || type >= (8 * v11))
      {
        LOBYTE(Value) = 0;
      }

      else
      {
        LODWORD(Value) = (v12[type / 8] >> (~type & 7)) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsInSoftReset:(id)reset
{
  if (reset)
  {
    Value = CFDictionaryGetValue(reset, @"IE");
    if (Value)
    {
      v4 = Value;
      v8 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v4);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v8))
      {
        LOBYTE(Value) = 0;
      }

      else
      {
        LODWORD(Value) = (v8 >> 10) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsDWDSCapable:(id)capable isDWDSEnabled:(BOOL *)enabled
{
  if (!capable)
  {
    return 0;
  }

  v6 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, capable, enabled);
  result = 0;
  v8 = v6 > 3 || v6 == 2;
  if (v8 && v6 != 102)
  {
    if (enabled)
    {
      v12 = 0;
      sub_23EB6FF14(capable, &v12, "%kO.%kO:int", @"DWDS_IE", @"IE_KEY_DWDS_ROLE");
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = v12 == 0;
      }

      v11 = !v10;
      *enabled = v11;
    }

    return 1;
  }

  return result;
}

- (int)joinNetworkWithScanInfoAsync:(id)async password:(id)password rememberChoice:(int)choice
{
  v34 = 0;
  if (!async)
  {
    v12 = -6705;
LABEL_7:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v12;
  }

  if (!objc_msgSend_airPortIsOn(self, a2, async, password))
  {
    v12 = -6735;
    goto LABEL_7;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  if (objc_msgSend_length(password, v9, v10, v11))
  {
    passwordCopy = password;
  }

  else
  {
    passwordCopy = 0;
  }

  if (!passwordCopy && objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v14, async, 0, &v34) && v34 != 1)
  {
    v12 = -16;
    goto LABEL_7;
  }

  v17 = MEMORY[0x277CBEAC0];
  v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, choice, v15);
  v21 = objc_msgSend_dictionaryWithObjectsAndKeys_(v17, v19, async, v20, @"JoinParam_ScanInfo", v18, @"JoinParam_RememberChoice", passwordCopy, @"JoinParam_Password", 0);
  if (!v21)
  {
    v12 = -6728;
    goto LABEL_7;
  }

  v22 = v21;
  v23 = objc_allocWithZone(MEMORY[0x277CCACC8]);
  v25 = objc_msgSend_initWithTarget_selector_object_(v23, v24, self, sel_joinNetworkWithScanInfoThread_, v22);
  objc_msgSend_start(v25, v26, v27, v28);
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils joinNetworkWithScanInfoAsync:password:rememberChoice:]", 800, "starting Join thread\n");
  }

  v32 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v29, v30, v31);
  objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v32, v33, @"com.apple.WiFiUtils.Join.Start", self, async, 0);
  return 0;
}

- (int)joinNetworkWithNameAsync:(id)async password:(id)password rememberChoice:(int)choice
{
  if (!async)
  {
    v11 = -6705;
LABEL_7:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v11;
  }

  if (!objc_msgSend_airPortIsOn(self, a2, async, password))
  {
    v11 = -6735;
    goto LABEL_7;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  v13 = MEMORY[0x277CBEAC0];
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, choice, v10);
  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(v13, v15, async, v16, @"JoinParam_Name", v14, @"JoinParam_RememberChoice", password, @"JoinParam_Password", 0);
  if (!v17)
  {
    v11 = -6728;
    goto LABEL_7;
  }

  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CCACC8]);
  v21 = objc_msgSend_initWithTarget_selector_object_(v19, v20, self, sel_joinNetworkWithNameThread_, v18);
  objc_msgSend_start(v21, v22, v23, v24);
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils joinNetworkWithNameAsync:password:rememberChoice:]", 800, "starting Join (with name) thread\n");
  }

  v28 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v25, v26, v27);
  objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v28, v29, @"com.apple.WiFiUtils.Join.Start", self, 0, 0);
  return 0;
}

- (int)disassociateSync
{
  if (!objc_msgSend_airPortIsOn(self, a2, v2, v3))
  {
    v6 = -6735;
    goto LABEL_5;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    v6 = -6718;
    goto LABEL_5;
  }

  v6 = sub_23EC0B7DC(wifiShim);
  result = -6721;
  if (v6 != -6721)
  {
LABEL_5:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v6;
  }

  return result;
}

- (int)clearScanCacheSync
{
  if (!objc_msgSend_airPortIsOn(self, a2, v2, v3))
  {
    v6 = -6735;
    goto LABEL_5;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    v6 = -6718;
    goto LABEL_5;
  }

  v6 = sub_23EC0ABD0(wifiShim);
  result = -6721;
  if (v6 != -6721)
  {
LABEL_5:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v6;
  }

  return result;
}

- (id)getCurrentAssociationInfo
{
  v5 = 0;
  result = self->_wifiShim;
  if (result)
  {
    v3 = sub_23EC0AFA4(result, &v5);
    result = v5;
    if (!v3)
    {
      if (v5)
      {
        v4 = v5;
        return v5;
      }
    }
  }

  return result;
}

- (id)getCurrentAssociationInfoOrNil
{
  if (!objc_msgSend_airPortIsOn(self, a2, v2, v3))
  {
    return 0;
  }

  return objc_msgSend_getCurrentAssociationInfo(self, v5, v6, v7);
}

- (id)getCurrentAssociationScanInfo
{
  CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(self, a2, v2, v3);
  result = objc_msgSend_objectForKey_(CurrentAssociationInfo, v6, @"BSSID", v7);
  if (result)
  {

    return objc_msgSend_scanInfoForMACAddress_(self, v9, result, v10);
  }

  return result;
}

- (id)getIfList
{
  v5 = 0;
  result = self->_wifiShim;
  if (result)
  {
    v3 = sub_23EC0BE3C(result, &v5);
    result = v5;
    if (!v3)
    {
      if (v5)
      {
        v4 = v5;
        return v5;
      }
    }
  }

  return result;
}

- (id)getLinkStatus
{
  v6 = 0;
  result = self->_wifiShim;
  if (result)
  {
    sub_23EC0A048(result, &v6);
    v4 = v3;
    result = v6;
    if (!v4)
    {
      if (v6)
      {
        v5 = v6;
        return v6;
      }
    }
  }

  return result;
}

- (int)setAutoJoinState:(BOOL)state
{
  wifiShim = self->_wifiShim;
  if (wifiShim)
  {
    return sub_23EC0B530(wifiShim, state);
  }

  else
  {
    return -6718;
  }
}

- (BOOL)getAutoJoinState
{
  wifiShim = self->_wifiShim;
  if (wifiShim)
  {
    v4 = 0;
    if (sub_23EC0C008(wifiShim, &v4))
    {
      LOBYTE(wifiShim) = 0;
    }

    else
    {
      LOBYTE(wifiShim) = v4;
    }
  }

  return wifiShim;
}

+ (id)getNetworkPassword:(id)password
{
  v5 = 0;
  if (!password)
  {
    return 0;
  }

  sub_23EC0C054(password, &v5);
  v3 = v5;
  return v5;
}

- (BOOL)isCurrentlyAssociatedToAnInfrastructureNetwork:(BOOL *)network
{
  CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(self, a2, network, v3);
  if (CurrentAssociationInfo)
  {
    v9 = CurrentAssociationInfo;
    v10 = objc_msgSend_objectForKey_(CurrentAssociationInfo, v7, @"STATE", v8);
    if (objc_msgSend_integerValue(v10, v11, v12, v13) == 4 && (v16 = objc_msgSend_objectForKey_(v9, v14, @"AP_MODE", v15), objc_msgSend_integerValue(v16, v17, v18, v19) == 2))
    {
      if (network)
      {
        *network = 0;
        CurrentAssociationScanInfo = objc_msgSend_getCurrentAssociationScanInfo(self, v20, v21, v22);
        if (CurrentAssociationScanInfo)
        {
          *network = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v24, CurrentAssociationScanInfo, v25) != 0;
        }
      }

      LOBYTE(CurrentAssociationInfo) = 1;
    }

    else
    {
      LOBYTE(CurrentAssociationInfo) = 0;
    }
  }

  return CurrentAssociationInfo;
}

+ (BOOL)networkIsSecure:(id)secure secMode:(int *)mode isEnterprise:(BOOL *)enterprise
{
  v7 = sub_23EC0A274(secure, a2, secure, mode);
  if (mode)
  {
    *mode = v7;
  }

  if (enterprise)
  {
    *enterprise = (v7 - 9) < 4;
  }

  return v7 != 1;
}

+ (BOOL)networkIsApple:(id)apple productID:(unsigned int *)d
{
  v5 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, apple, d);
  if (d)
  {
    *d = v5;
  }

  return v5 != 0;
}

- (id)getPreferredNetworks:(BOOL)networks
{
  v7 = 0;
  result = self->_wifiShim;
  if (result)
  {
    v5 = sub_23EC0AC78(result, networks, &v7, v3);
    result = v7;
    if (!v5)
    {
      if (v7)
      {
        v6 = v7;
        return v7;
      }
    }
  }

  return result;
}

+ (id)copyFilteredNetworks:(id)networks ignoreOptions:(int)options
{
  v4 = *&options;
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (networks)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(networks, v6, &v16, v20, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(networks);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ((objc_msgSend_network_shouldBeIgnored_(WiFiUtils, v9, v13, v4) & 1) == 0)
          {
            objc_msgSend_addObject_(v7, v9, v13, v14);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(networks, v9, &v16, v20, 16);
      }

      while (v10);
    }
  }

  return v7;
}

+ (BOOL)network:(id)network shouldBeIgnored:(int)ignored
{
  ignoredCopy = ignored;
  if ((ignored & 1) != 0 && !objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, network, *&ignored))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this non-Apple network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 2) != 0 && objc_msgSend_scanInfoIsIBSS_(WiFiUtils, a2, network, *&ignored))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this IBSS network:%@ (%@)\n";
LABEL_60:
    v10 = objc_msgSend_objectForKey_(network, a2, @"SSID_STR", *&ignored);
    v13 = objc_msgSend_objectForKey_(network, v11, @"BSSID", v12);
    sub_23EB75374(&dword_27E381870, "+[WiFiUtils network:shouldBeIgnored:]", 800, v6, v10, v13);
    return 1;
  }

  if ((ignoredCopy & 0x20) != 0 && objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, a2, network, *&ignored))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this unconfigured network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 0x40) != 0 && objc_msgSend_scanInfoIsGuestNetwork_(WiFiUtils, a2, network, *&ignored))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this guest network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 0x80) != 0 && (objc_msgSend_scanInfoIsDWDSCapable_isDWDSEnabled_(WiFiUtils, a2, network, 0) & 1) == 0)
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this DWDS Incapable network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 0x100) != 0 && objc_msgSend_scanInfoIs5GHz_(WiFiUtils, a2, network, *&ignored))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this 5GHz network:%@ (%@)\n";
    goto LABEL_60;
  }

  v7 = sub_23EC0A274(network, a2, network, *&ignored);
  if (v7 == 1)
  {
    if ((ignoredCopy & 0x10) == 0)
    {
      return 0;
    }

    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this unsecured network:%@ (%@)\n";
    goto LABEL_60;
  }

  v9 = v7;
  if ((ignoredCopy & 4) != 0 && v7 - 9 <= 3)
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this Enterprise network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 8) != 0 && v7 <= 0xB && ((1 << v7) & 0xB5C) != 0 || (result = 0, (ignoredCopy & 0x200) != 0) && v9 == 13)
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this legacy Sec Mode network:%@ (%@)\n";
    goto LABEL_60;
  }

  return result;
}

+ (int)barsForRSSI:(int)i
{
  iCopy = i - 100;
  if (i < 0)
  {
    iCopy = i;
  }

  if (iCopy < -99)
  {
    return 0;
  }

  v5 = 0;
  while (v5 != 3)
  {
    result = v5 + 1;
    v6 = dword_23EC21E20[++v5];
    if (iCopy < v6)
    {
      return result;
    }
  }

  return 4;
}

- (id)getNetworkPasswordForNetworkNamed:(id)named
{
  v3 = objc_msgSend_scanInfoForName_wifiType_(self, a2, named, 3);
  result = objc_msgSend_count(v3, v4, v5, v6);
  if (result)
  {

    return objc_msgSend_getNetworkPassword_(WiFiUtils, v8, v3, v9);
  }

  return result;
}

- (int)_asyncWiFiScan:(id)scan wifiType:(int)type merge:(BOOL)merge maxAge:(unint64_t)age isPeriodic:(BOOL)periodic
{
  periodicCopy = periodic;
  mergeCopy = merge;
  if (!objc_msgSend_airPortIsOn(self, a2, scan, *&type))
  {
    v15 = -6735;
LABEL_5:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v15;
  }

  if (!dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    v17 = MEMORY[0x277CBEAC0];
    v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, type, v14);
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, periodicCopy, v20);
    v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, age, v23);
    v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v25, mergeCopy, v26);
    v30 = objc_msgSend_dictionaryWithObjectsAndKeys_(v17, v28, v18, v29, @"ScanParam_WiFiType", v21, @"ScanParam_IsPeriodic", v24, @"ScanParam_MaxAge", v27, @"ScanParam_MergeResults", scan, @"ScanParam_Name", 0);
    if (v30)
    {
      v31 = v30;
      v32 = objc_allocWithZone(MEMORY[0x277CCACC8]);
      v34 = objc_msgSend_initWithTarget_selector_object_(v32, v33, self, sel_asyncWiFiScanThread_, v31);
      objc_msgSend_start(v34, v35, v36, v37);
      return 0;
    }

    v15 = -6728;
    goto LABEL_5;
  }

  return -6721;
}

- (int)openWiFi
{
  result = sub_23EC0A8C8(&self->_wifiShim);
  if (!result)
  {
    if (self->_wifiShim)
    {
      return 0;
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)closeWiFi
{
  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    return -6718;
  }

  result = sub_23EC0A9F4(wifiShim);
  self->_wifiShim = 0;
  return result;
}

- (void)scanTimerCallback:(id)callback
{
  if (self->_scanOnlyWhenAppActive)
  {
    v6 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, callback, v3);
    v10 = objc_msgSend_applicationState(v6, v7, v8, v9) == 0;
  }

  else
  {
    v10 = 1;
  }

  v14 = objc_msgSend_airPortIsOn(self, a2, callback, v3);
  v15 = self->_scanningActive && v10;
  if (!v15)
  {
    v32 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v11, v12, v13);
    objc_msgSend_setFireDate_(callback, v33, v32, v34);
    objc_msgSend_activateScanning_(self, v35, 0, v36);
    goto LABEL_9;
  }

  if (!objc_msgSend_airPortIsOn(self, v11, v12, v13))
  {
LABEL_9:
    isPeriodic = 0;
    goto LABEL_10;
  }

  v19 = objc_msgSend_periodicScanType(self, v16, v17, v18);
  isPeriodic = objc_msgSend__asyncWiFiScan_wifiType_merge_maxAge_isPeriodic_(self, v20, 0, v19, 0, 0, 1);
  if (isPeriodic)
  {
    v25 = MEMORY[0x277CBEAA8];
    objc_msgSend_periodicScanInterval(self, v21, v22, v23);
    v29 = objc_msgSend_dateWithTimeIntervalSinceNow_(v25, v26, v27, v28);
    objc_msgSend_setFireDate_(callback, v30, v29, v31);
  }

LABEL_10:
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils scanTimerCallback:]", 800, "_scanOnlyWhenAppActive: %d scanRightNow: %d airPortIsOn: %d asyncWiFiScan err: %d\n", self->_scanOnlyWhenAppActive, v15, v14, isPeriodic);
  }
}

- (void)triggerScan
{
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils triggerScan]", 800, "_scanningActive: %d\n", self->_scanningActive);
  }

  if (self->_scanningActive)
  {
    scanTimer = self->_scanTimer;
    v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2, v3);

    objc_msgSend_setFireDate_(scanTimer, v6, v7, v8);
  }
}

- (void)setScanInProgress:(BOOL)progress
{
  objc_sync_enter(self);
  self->_scanInProgress = progress;

  objc_sync_exit(self);
}

- (void)setJoinInProgress:(BOOL)progress
{
  objc_sync_enter(self);
  self->_joinInProgress = progress;

  objc_sync_exit(self);
}

- (void)joinNetworkWithScanInfoThread:(id)thread
{
  v34 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (thread && (v8 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_ScanInfo", v7)) != 0 && (v9 = v8, (v10 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_RememberChoice", v7)) != 0))
  {
    v11 = v10;
    v12 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_Password", v7);
    objc_msgSend_setJoinInProgress_(self, v13, 1, v14);
    v18 = objc_msgSend_integerValue(v11, v15, v16, v17);
    v20 = objc_msgSend_joinNetworkWithScanInfoSync_password_rememberChoice_(self, v19, v9, v12, v18);
  }

  else
  {
    v20 = -6705;
  }

  if (objc_msgSend_isJoinInProgress(self, v5, v6, v7))
  {
    objc_msgSend_setJoinInProgress_(self, v21, 0, v22);
    dispatch_semaphore_signal(self->_wifiBusy);
    v26 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v23, v24, v25);
    v27 = MEMORY[0x277CBEAC0];
    v30 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v28, v20, v29);
    v32 = objc_msgSend_dictionaryWithObject_forKey_(v27, v31, v30, @"WiFiUtils_OSStatus");
    objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v26, v33, @"com.apple.WiFiUtils.Join.Complete", self, v32, 0);
  }
}

- (void)joinNetworkWithNameThread:(id)thread
{
  v34 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (thread && (v8 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_Name", v7)) != 0 && (v9 = v8, (v10 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_RememberChoice", v7)) != 0))
  {
    v11 = v10;
    v12 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_Password", v7);
    objc_msgSend_setJoinInProgress_(self, v13, 1, v14);
    wifiShim = self->_wifiShim;
    v19 = objc_msgSend_integerValue(v11, v16, v17, v18);
    v20 = sub_23EC0A0C8(wifiShim, v9, v12, 3, v19, 0);
  }

  else
  {
    v20 = -6705;
  }

  if (objc_msgSend_isJoinInProgress(self, v5, v6, v7))
  {
    objc_msgSend_setJoinInProgress_(self, v21, 0, v22);
    dispatch_semaphore_signal(self->_wifiBusy);
    v26 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v23, v24, v25);
    v27 = MEMORY[0x277CBEAC0];
    v30 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v28, v20, v29);
    v32 = objc_msgSend_dictionaryWithObject_forKey_(v27, v31, v30, @"WiFiUtils_OSStatus");
    objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v26, v33, @"com.apple.WiFiUtils.Join.Complete", self, v32, 0);
  }
}

- (int)joinNetworkWithScanInfoSync:(id)sync password:(id)password rememberChoice:(int)choice
{
  if (!objc_msgSend_airPortIsOn(self, a2, sync, password))
  {
    return -6735;
  }

  if (!sync)
  {
    return -6705;
  }

  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    return -6718;
  }

  return sub_23EC0B188(wifiShim, sync, password, choice);
}

- (void)asyncWiFiScanThread:(id)thread
{
  v8 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v62 = 0;
  if (self->_wifiShim)
  {
    if (thread)
    {
      v9 = objc_msgSend_objectForKey_(thread, v5, @"ScanParam_Name", v7);
      v12 = objc_msgSend_objectForKey_(thread, v10, @"ScanParam_IsPeriodic", v11);
      v15 = objc_msgSend_objectForKey_(thread, v13, @"ScanParam_WiFiType", v14);
      v18 = objc_msgSend_objectForKey_(thread, v16, @"ScanParam_MaxAge", v17);
      v21 = objc_msgSend_objectForKey_(thread, v19, @"ScanParam_MergeResults", v20);
      objc_msgSend_setScanInProgress_(self, v22, 1, v23);
      wifiShim = self->_wifiShim;
      if (v15)
      {
        v28 = objc_msgSend_integerValue(v15, v24, v25, v26);
      }

      else
      {
        v28 = 3;
      }

      v30 = objc_msgSend_BOOLValue(v21, v24, v25, v26);
      v34 = objc_msgSend_unsignedIntegerValue(v18, v31, v32, v33);
      v29 = sub_23EC0B89C(wifiShim, v9, v28, v30, v34, &v62);
      if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
      {
        sub_23EB75374(&dword_27E381870, "[WiFiUtils asyncWiFiScanThread:]", 800, "err: %d\n", v29);
      }

      if (!v29)
      {
        v6 = v62;
        if (v62)
        {
          objc_msgSend_mergeScanResults_ageOut_(self, v5, v62, v9 == 0);
        }

        v29 = 0;
      }
    }

    else
    {
      v12 = 0;
      v29 = -6705;
    }
  }

  else
  {
    v12 = 0;
    v29 = -6718;
  }

  if (objc_msgSend_isScanInProgress(self, v5, v6, v7))
  {
    objc_msgSend_setScanInProgress_(self, v35, 0, v37);
    dispatch_semaphore_signal(self->_wifiBusy);
    v41 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v38, v39, v40);
    v42 = MEMORY[0x277CBEAC0];
    v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v43, v29, v44);
    v48 = objc_msgSend_dictionaryWithObjectsAndKeys_(v42, v46, v45, v47, @"WiFiUtils_OSStatus", v62, @"WiFiUtils_ScanInfos", 0);
    objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v41, v49, @"com.apple.WiFiUtils.Scan.Complete", self, v48, 0);
  }

  if (objc_msgSend_BOOLValue(v12, v35, v36, v37))
  {
    v53 = 1.0;
    if (v29 != 16)
    {
      objc_msgSend_periodicScanInterval(self, v50, v51, v52);
      v53 = v54;
    }

    v55 = objc_msgSend__scanTimer(self, v50, v51, v52);
    v59 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v56, v57, v58, v53);
    objc_msgSend_setFireDate_(v55, v60, v59, v61);
  }
}

+ (BOOL)stringArray:(id)array containsBSSID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, a2, &v12, v16, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(array);
        }

        if (sub_23EBAFDF4(*(*(&v12 + 1) + 8 * v9), d))
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, v10, &v12, v16, 16);
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)mergeScanResults:(id)results ageOut:(BOOL)out
{
  v69 = *MEMORY[0x277D85DE8];
  if (results)
  {
    outCopy = out;
    v6 = objc_msgSend_unmergedScanInfoDict(self, a2, results, out);
    v10 = objc_msgSend_mutableCopy(v6, v7, v8, v9);
    v11 = MEMORY[0x277CBEB18];
    v58 = v10;
    v15 = objc_msgSend_allKeys(v10, v12, v13, v14);
    v18 = objc_msgSend_arrayWithArray_(v11, v16, v15, v17);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(results, v19, &v63, v68, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v64;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(results);
          }

          v26 = *(*(&v63 + 1) + 8 * i);
          v27 = objc_msgSend_objectForKey_(v26, v21, @"BSSID", v22);
          if (v27)
          {
            v28 = v27;
            v29 = objc_msgSend_indexOfObject_(v18, v21, v27, v22);
            if (v29 != 0x7FFFFFFFFFFFFFFFLL)
            {
              objc_msgSend_removeObjectAtIndex_(v18, v30, v29, v31);
            }

            objc_msgSend_setObject_forKey_(v58, v30, v26, v28);
            objc_msgSend_removeObjectForKey_(self->_missingBSSIDCounts, v32, v28, v33);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(results, v21, &v63, v68, 16);
      }

      while (v23);
    }

    if (outCopy)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v59, v67, 16);
      if (v34)
      {
        v35 = v34;
        v36 = *v60;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v60 != v36)
            {
              objc_enumerationMutation(v18);
            }

            v38 = *(*(&v59 + 1) + 8 * j);
            v39 = objc_msgSend_objectForKey_(self->_missingBSSIDCounts, v21, v38, v22);
            if (v39 && (v39 = objc_msgSend_integerValue(v39, v40, v41, v42), v39 > 1))
            {
              if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
              {
                v51 = objc_msgSend_objectForKey_(v58, v40, v38, v42);
                v54 = objc_msgSend_objectForKey_(v51, v52, @"SSID_STR", v53);
                sub_23EB75374(&dword_27E381870, "[WiFiUtils mergeScanResults:ageOut:]", 800, "Network: %@ is GONE\n", v54);
              }

              objc_msgSend_removeObjectForKey_(v58, v40, v38, v42);
              objc_msgSend_removeObjectForKey_(self->_missingBSSIDCounts, v55, v38, v56);
            }

            else
            {
              missingBSSIDCounts = self->_missingBSSIDCounts;
              v44 = v39 + 1;
              v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v40, v39 + 1, v42);
              objc_msgSend_setObject_forKey_(missingBSSIDCounts, v46, v45, v38);
              if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
              {
                v47 = objc_msgSend_objectForKey_(v58, v21, v38, v22);
                v50 = objc_msgSend_objectForKey_(v47, v48, @"SSID_STR", v49);
                sub_23EB75374(&dword_27E381870, "[WiFiUtils mergeScanResults:ageOut:]", 800, "Network: %@ is %ld scan(s) old\n", v50, v44);
              }
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v59, v67, 16);
        }

        while (v35);
      }
    }

    objc_msgSend_setUnmergedScanInfoDict_(self, v21, v58, v22);
  }
}

- (id)unmergedScanInfoDict
{
  objc_sync_enter(self);
  v3 = self->_unmergedScanInfoDict;
  objc_sync_exit(self);
  return v3;
}

- (void)setUnmergedScanInfoDict:(id)dict
{
  objc_sync_enter(self);
  if (self->_unmergedScanInfoDict != dict)
  {
    dictCopy = dict;

    self->_unmergedScanInfoDict = dict;
  }

  objc_sync_exit(self);
}

@end