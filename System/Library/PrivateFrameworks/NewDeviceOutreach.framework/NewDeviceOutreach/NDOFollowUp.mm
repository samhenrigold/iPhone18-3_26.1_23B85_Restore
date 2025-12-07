@interface NDOFollowUp
+ (id)allPossibleFollowUpTargetBundleIdentifiers;
+ (id)followUpTargetBundleIDsForDevice:(id)device;
+ (id)possibleUniqueIdentifiersForSerialNumber:(id)number;
+ (id)uniqueFollowUpIdentifiersForDevice:(id)device;
+ (id)uniqueIdentfierForSerialNumber:(id)number bundleId:(id)id;
- (BOOL)_checkConversionEligibilityForDevice:(id)device;
- (BOOL)_postFollowUpWithDevicesInfo:(id)info repostAllowed:(BOOL)allowed;
- (NDOFollowUp)init;
- (NDOFollowUp)initWithFollowUpProvider:(id)provider;
- (id)_pendingFollowUpItemsForSerialNumber:(id)number;
- (id)_setupFollowUpNotificationWithDeviceInfo:(id)info;
- (id)followUpItemsForDeviceInfo:(id)info;
- (id)followUpSaleFlowSourceForBundleId:(id)id device:(id)device;
- (id)refreshFollowupWithDeviceInfo:(id)info andForcePostFollowup:(BOOL)followup;
- (id)refreshFollowupWithDeviceInfos:(id)infos clearUntrackedDeviceFollowups:(BOOL)followups andForcePostFollowup:(BOOL)followup;
- (unint64_t)pendingFollowUpCount;
- (void)_clearFollowUpForSerialNumber:(id)number;
- (void)_clearFollowUpWithDevices:(id)devices;
- (void)_setupFollowUpItem:(id)item withDeviceInfo:(id)info;
- (void)dismissFollowUpForSerialNumber:(id)number;
- (void)dismissNotificationForSerialNumber:(id)number;
- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)info;
- (void)postFollowUpWithDeviceInfo:(id)info;
@end

@implementation NDOFollowUp

- (NDOFollowUp)init
{
  v3 = objc_opt_new();
  v4 = [(NDOFollowUp *)self initWithFollowUpProvider:v3];

  return v4;
}

- (NDOFollowUp)initWithFollowUpProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = NDOFollowUp;
  v5 = [(NDOFollowUp *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NDOFollowUp *)v5 setFollowUpProvider:providerCopy];
  }

  return v6;
}

+ (id)uniqueIdentfierForSerialNumber:(id)number bundleId:(id)id
{
  numberCopy = number;
  idCopy = id;
  v7 = [NDOTypeChecking isNotEmptyString:numberCopy];
  if (v7 && (v7 = [NDOTypeChecking isNotEmptyString:idCopy], v7) && (v7 = [NDOTypeChecking isNotEmptyString:@"com.apple.NewDeviceOutreach"], v7))
  {
    sha256Hash = [numberCopy sha256Hash];
    v9 = [@"com.apple.NewDeviceOutreach" stringByAppendingFormat:@".%@.%@", idCopy, sha256Hash];
  }

  else
  {
    v10 = _NDOLogSystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[NDOFollowUp uniqueIdentfierForSerialNumber:bundleId:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_postFollowUpWithDevicesInfo:(id)info repostAllowed:(BOOL)allowed
{
  v6 = MEMORY[0x277CBEB18];
  infoCopy = info;
  array = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__NDOFollowUp__postFollowUpWithDevicesInfo_repostAllowed___block_invoke;
  v12[3] = &unk_279975CA8;
  allowedCopy = allowed;
  v12[4] = self;
  v13 = array;
  v9 = array;
  [infoCopy enumerateObjectsUsingBlock:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NDOFollowUp__postFollowUpWithDevicesInfo_repostAllowed___block_invoke_70;
  v11[3] = &unk_279975CD0;
  v11[4] = self;
  [v9 enumerateObjectsUsingBlock:v11];
  LOBYTE(self) = [v9 count] != 0;

  return self;
}

void __58__NDOFollowUp__postFollowUpWithDevicesInfo_repostAllowed___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 warranty];

  if (!v4)
  {
    v22 = _NDOLogSystem(v5);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v23 = [v3 device];
    v44 = 136446467;
    v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v46 = 2113;
    v47 = v23;
    v24 = "%{public}s: No warranty downloaded for device. Don't post a followup for %{private}@";
LABEL_15:
    _os_log_impl(&dword_25BD52000, v22, OS_LOG_TYPE_DEFAULT, v24, &v44, 0x16u);

    goto LABEL_31;
  }

  v6 = [v3 warranty];
  v7 = [v6 acOfferDisplay];

  if (!v7)
  {
    v22 = _NDOLogSystem(v8);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v23 = [v3 device];
    v44 = 136446467;
    v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v46 = 2113;
    v47 = v23;
    v24 = "%{public}s: Device NOT eligible. Don't post a followup for %{private}@";
    goto LABEL_15;
  }

  v9 = [v3 warranty];
  v10 = [v9 acOfferEligibleUntil];
  [v10 timeIntervalSinceNow];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v22 = _NDOLogSystem(v13);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v23 = [v3 device];
    v44 = 136446467;
    v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v46 = 2113;
    v47 = v23;
    v24 = "%{public}s: Device no longer eligible. Don't post a followup for %{private}@";
    goto LABEL_15;
  }

  v14 = [v3 device];
  v15 = [v14 serialNumber];
  v16 = [NDOFollowUpDismissalTracker followUpIsDismissedForSerial:v15];

  if (v16 && (*(a1 + 48) & 1) == 0)
  {
    v17 = [*(a1 + 32) _checkConversionEligibilityForDevice:v3];
    if (!v17)
    {
      v22 = _NDOLogSystem(v17);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v23 = [v3 device];
      v44 = 136446467;
      v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
      v46 = 2113;
      v47 = v23;
      v24 = "%{public}s: Followup already dismissed for %{private}@, leaving unposted";
      goto LABEL_15;
    }
  }

  v18 = [v3 warranty];
  v19 = [v18 acOfferFollowupDisplayDate];

  v20 = [v3 warranty];
  v21 = v20;
  if (v19)
  {
    v22 = [v20 acOfferFollowupDisplayDate];
  }

  else
  {
    v25 = [v20 acOfferEligibleUntil];
    v26 = [v3 warranty];
    [v26 acOfferDurationBeforeEndDate];
    v22 = [v25 dateByAddingTimeInterval:-v27];
  }

  v28 = [v3 device];
  v29 = [v28 activationDate];

  if (v29)
  {
    [v29 timeIntervalSinceNow];
    v31 = v30;
    v32 = [v22 timeIntervalSinceNow];
    if (v31 > v33)
    {
      v34 = _NDOLogSystem(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v44 = 136446210;
        v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
        _os_log_impl(&dword_25BD52000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: Using initial postdate as it is later than FollowupDisplay Date", &v44, 0xCu);
      }

      v35 = v29;
      v22 = v35;
    }
  }

  v36 = [v22 timeIntervalSinceNow];
  if (v37 <= 0.0)
  {
    v42 = _NDOLogSystem(v36);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v3 device];
      v44 = 136446467;
      v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
      v46 = 2113;
      v47 = v43;
      _os_log_impl(&dword_25BD52000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible. Post new  followup for %{private}@", &v44, 0x16u);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    v38 = [v22 timeIntervalSinceNow];
    if (v39 > 0.0)
    {
      v40 = _NDOLogSystem(v38);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v3 device];
        v44 = 136446723;
        v45 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
        v46 = 2113;
        v47 = v41;
        v48 = 2112;
        v49 = v22;
        _os_log_impl(&dword_25BD52000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible with future post date. Cannot post followup for %{private}@ on: %@", &v44, 0x20u);
      }
    }
  }

LABEL_31:
}

+ (id)followUpTargetBundleIDsForDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceType = [deviceCopy deviceType];
  v5 = objc_opt_new();
  v6 = v5;
  switch(deviceType)
  {
    case 3:
      goto LABEL_4;
    case 1:
      [v5 addObject:*MEMORY[0x277CFE3F8]];
      isActiveWatch = [deviceCopy isActiveWatch];
      if (isActiveWatch)
      {
        v7 = MEMORY[0x277CFE3D8];
        goto LABEL_5;
      }

      break;
    case 0:
LABEL_4:
      v7 = MEMORY[0x277CFE3F8];
LABEL_5:
      isActiveWatch = [v6 addObject:*v7];
      break;
    default:
      v9 = _NDOLogSystem(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[NDOFollowUp followUpTargetBundleIDsForDevice:];
      }

      break;
  }

  v10 = _NDOLogSystem(isActiveWatch);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:deviceType];
    v14 = 136446722;
    v15 = "+[NDOFollowUp followUpTargetBundleIDsForDevice:]";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25BD52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s DeviceType:%@ bundleIDs%@", &v14, 0x20u);
  }

  v12 = [v6 copy];

  return v12;
}

- (id)followUpItemsForDeviceInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  warranty = [infoCopy warranty];
  device = [infoCopy device];
  serialNumber = [device serialNumber];

  if (warranty && (v7 = [warranty acOfferDisplay], v7) && serialNumber)
  {
    v23 = serialNumber;
    v24 = warranty;
    device2 = [infoCopy device];
    v9 = [NDOFollowUp followUpTargetBundleIDsForDevice:device2];

    v26 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      v14 = *MEMORY[0x277CFE448];
      obj = v10;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = objc_alloc_init(MEMORY[0x277CFE508]);
          device3 = [infoCopy device];
          serialNumber2 = [device3 serialNumber];
          v20 = [NDOFollowUp uniqueIdentfierForSerialNumber:serialNumber2 bundleId:v16];

          [v17 setUniqueIdentifier:v20];
          [v17 setGroupIdentifier:v14];
          [v17 setExtensionIdentifier:@"com.apple.NewDeviceOutreach.Extension"];
          [v17 setTargetBundleIdentifier:v16];
          [(NDOFollowUp *)self _setupFollowUpItem:v17 withDeviceInfo:infoCopy];
          [v26 addObject:v17];
        }

        v10 = obj;
        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v21 = [v26 copy];
    serialNumber = v23;
    warranty = v24;
  }

  else
  {
    v10 = _NDOLogSystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp followUpItemsForDeviceInfo:];
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  return v21;
}

- (void)postFollowUpWithDeviceInfo:(id)info
{
  v89 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  warranty = [infoCopy warranty];
  v64 = infoCopy;
  device = [infoCopy device];
  serialNumber = [device serialNumber];

  v67 = warranty;
  if (warranty && (v8 = [warranty acOfferDisplay], v8) && serialNumber)
  {
    [(NDOFollowUp *)self followUpItemsForDeviceInfo:v64];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v79 = 0u;
    v9 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v77;
      v13 = 0x277CBE000uLL;
      *&v10 = 136446722;
      v60 = v10;
      v61 = serialNumber;
      selfCopy = self;
      v63 = *v77;
      do
      {
        v14 = 0;
        v65 = v11;
        do
        {
          if (*v77 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v76 + 1) + 8 * v14);
          followUpProvider = [(NDOFollowUp *)self followUpProvider];
          v75 = 0;
          v17 = [followUpProvider postFollowUpItem:v15 error:&v75];
          v18 = v75;

          v20 = _NDOLogSystem(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v21 = @"success";
            if (!v17)
            {
              v21 = v18;
            }

            v81 = serialNumber;
            v82 = 2112;
            v83 = v21;
            _os_log_impl(&dword_25BD52000, v20, OS_LOG_TYPE_DEFAULT, "Posted follow-up: serialNumber:%@ -> %@", buf, 0x16u);
          }

          if (v17)
          {
            v22 = MEMORY[0x277CBEB18];
            standardUserDefaults = [*(v13 + 3024) standardUserDefaults];
            v24 = [standardUserDefaults objectForKey:@"FollowupPostedSerialNumberHashes"];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = MEMORY[0x277CBEBF8];
            }

            v27 = [v22 arrayWithArray:v26];

            sha256Hash = [serialNumber sha256Hash];
            v29 = [v27 containsObject:sha256Hash];

            if ((v29 & 1) == 0)
            {
              sha256Hash2 = [serialNumber sha256Hash];
              [v27 addObject:sha256Hash2];

              standardUserDefaults2 = [*(v13 + 3024) standardUserDefaults];
              [standardUserDefaults2 setObject:v27 forKey:@"FollowupPostedSerialNumberHashes"];

              v86 = @"devicetype";
              device2 = [v64 device];
              deviceTypeString = [device2 deviceTypeString];
              v87 = deviceTypeString;
              v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];

              v70 = MEMORY[0x277D85DD0];
              v71 = 3221225472;
              v72 = __42__NDOFollowUp_postFollowUpWithDeviceInfo___block_invoke;
              v73 = &unk_279975CF8;
              v74 = v34;
              v35 = v34;
              AnalyticsSendEventLazy();
            }

            standardUserDefaults3 = [*(v13 + 3024) standardUserDefaults];
            v37 = [standardUserDefaults3 dictionaryForKey:@"FollowupDisplayedSerialNumberHashesWithEvents"];
            v38 = [v37 mutableCopy];

            if (v38)
            {
              allKeys = [v38 allKeys];
              v40 = [allKeys count];

              if (v40)
              {
                v41 = MEMORY[0x277CBEB58];
                sha256Hash3 = [serialNumber sha256Hash];
                v43 = [v38 objectForKeyedSubscript:sha256Hash3];
                v44 = v43;
                if (v43)
                {
                  v45 = v43;
                }

                else
                {
                  v45 = MEMORY[0x277CBEBF8];
                }

                v46 = [v41 setWithArray:v45];

                self = selfCopy;
                if (!v46)
                {
LABEL_27:
                  v46 = [MEMORY[0x277CBEB58] set];
                }

                eligibilityEventId = [v67 eligibilityEventId];
                v49 = [NDOTypeChecking isNotEmptyString:eligibilityEventId];

                if (v49)
                {
                  eligibilityEventId2 = [v67 eligibilityEventId];
                  [v46 addObject:eligibilityEventId2];

                  allObjects = [v46 allObjects];
                  device3 = [v64 device];
                  serialNumber2 = [device3 serialNumber];
                  sha256Hash4 = [serialNumber2 sha256Hash];
                  [v38 setObject:allObjects forKeyedSubscript:sha256Hash4];

                  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
                  [standardUserDefaults4 setObject:v38 forKey:@"FollowupDisplayedSerialNumberHashesWithEvents"];

                  v58 = _NDOLogSystem(v57);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                  {
                    eligibilityEventId3 = [v67 eligibilityEventId];
                    *buf = v60;
                    v81 = "[NDOFollowUp postFollowUpWithDeviceInfo:]";
                    v82 = 2112;
                    v83 = eligibilityEventId3;
                    v84 = 2112;
                    v85 = v46;
                    _os_log_debug_impl(&dword_25BD52000, v58, OS_LOG_TYPE_DEBUG, "%{public}s: saving for event: %@ with events: %@", buf, 0x20u);
                  }

                  serialNumber = v61;
                  self = selfCopy;
                  v11 = v65;
                }

                else
                {
                  v58 = _NDOLogSystem(v50);
                  v11 = v65;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    [(NDOFollowUp *)&v68 postFollowUpWithDeviceInfo:v69, v58];
                  }
                }

                v12 = v63;
                v13 = 0x277CBE000;
                goto LABEL_35;
              }
            }

            v47 = objc_opt_new();

            v38 = v47;
            goto LABEL_27;
          }

LABEL_35:

          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v11);
    }
  }

  else
  {
    obj = _NDOLogSystem(v8);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp postFollowUpWithDeviceInfo:];
    }
  }
}

id __42__NDOFollowUp_postFollowUpWithDeviceInfo___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412546;
    v7 = @"com.apple.newdeviceoutreach.followupDisplayCount";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "Posting for event: %@ with value: %@", &v6, 0x16u);
  }

  v4 = *(a1 + 32);

  return v4;
}

- (BOOL)_checkConversionEligibilityForDevice:(id)device
{
  deviceCopy = device;
  device = [deviceCopy device];
  serialNumber = [device serialNumber];
  sha256Hash = [serialNumber sha256Hash];
  v7 = [sha256Hash stringByAppendingString:@".dismissed"];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:v7];

  if (!v9 || ([deviceCopy warranty], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "acOfferFollowupDisplayDate"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  warranty = [deviceCopy warranty];
  acOfferFollowupDisplayDate = [warranty acOfferFollowupDisplayDate];
  v14 = [v9 compare:acOfferFollowupDisplayDate];

  if (v14 != -1)
  {
    v16 = _NDOLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(NDOFollowUp *)deviceCopy _checkConversionEligibilityForDevice:v9, v16];
    }

    goto LABEL_7;
  }

  v19 = MEMORY[0x277CBEB18];
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v21 = [standardUserDefaults2 objectForKey:@"FollowupPostedSerialNumberHashes"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v24 = [v19 arrayWithArray:v23];

  device2 = [deviceCopy device];
  serialNumber2 = [device2 serialNumber];
  sha256Hash2 = [serialNumber2 sha256Hash];
  v28 = [v24 containsObject:sha256Hash2];

  if (v28)
  {
    device3 = [deviceCopy device];
    serialNumber3 = [device3 serialNumber];
    sha256Hash3 = [serialNumber3 sha256Hash];
    [v24 removeObject:sha256Hash3];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults3 setObject:v24 forKey:@"FollowupPostedSerialNumberHashes"];
  }

  v17 = 1;
LABEL_8:

  return v17;
}

+ (id)uniqueFollowUpIdentifiersForDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  serialNumber = [deviceCopy serialNumber];

  if (serialNumber)
  {
    v6 = objc_opt_new();
    v7 = [NDOFollowUp followUpTargetBundleIDsForDevice:deviceCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([NDOTypeChecking isNotEmptyString:v12])
          {
            serialNumber2 = [deviceCopy serialNumber];
            v14 = [NDOFollowUp uniqueIdentfierForSerialNumber:serialNumber2 bundleId:v12];
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
  }

  else
  {
    v6 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[NDOFollowUp uniqueFollowUpIdentifiersForDevice:];
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

+ (id)allPossibleFollowUpTargetBundleIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFE3F8];
  v5[0] = *MEMORY[0x277CFE3D8];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)possibleUniqueIdentifiersForSerialNumber:(id)number
{
  v20 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = [NDOTypeChecking isNotEmptyString:numberCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    allPossibleFollowUpTargetBundleIdentifiers = [self allPossibleFollowUpTargetBundleIdentifiers];
    v8 = [allPossibleFollowUpTargetBundleIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allPossibleFollowUpTargetBundleIdentifiers);
          }

          v12 = [self uniqueIdentfierForSerialNumber:numberCopy bundleId:*(*(&v15 + 1) + 8 * i)];
          [v6 addObject:v12];
        }

        v9 = [allPossibleFollowUpTargetBundleIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v6 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[NDOFollowUp possibleUniqueIdentifiersForSerialNumber:];
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)_clearFollowUpWithDevices:(id)devices
{
  v26 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = devicesCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NDOFollowUp uniqueFollowUpIdentifiersForDevice:*(*(&v19 + 1) + 8 * v10)];
        [array addObjectsFromArray:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  followUpProvider = [(NDOFollowUp *)self followUpProvider];
  v18 = 0;
  v13 = [followUpProvider clearPendingFollowUpItemsWithUniqueIdentifiers:array error:&v18];
  v14 = v18;

  v16 = _NDOLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"success";
    if (!v13)
    {
      v17 = v14;
    }

    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&dword_25BD52000, v16, OS_LOG_TYPE_DEFAULT, "Cleared follow-up: %@", buf, 0xCu);
  }
}

- (id)_pendingFollowUpItemsForSerialNumber:(id)number
{
  numberCopy = number;
  followUpProvider = [(NDOFollowUp *)self followUpProvider];
  v19 = 0;
  v6 = [followUpProvider pendingFollowUpItems:&v19];
  v7 = v19;

  if (v7)
  {
    v9 = _NDOLogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _pendingFollowUpItemsForSerialNumber:];
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = MEMORY[0x277CCAC30];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __52__NDOFollowUp__pendingFollowUpItemsForSerialNumber___block_invoke;
    v17 = &unk_279975D20;
    v18 = numberCopy;
    v12 = [v11 predicateWithBlock:&v14];
    v10 = [v6 filteredArrayUsingPredicate:{v12, v14, v15, v16, v17}];

    v9 = v18;
  }

  return v10;
}

uint64_t __52__NDOFollowUp__pendingFollowUpItemsForSerialNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"FollowupSerialNumber"];
  if ([NDOTypeChecking isNotEmptyString:v4])
  {
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_clearFollowUpForSerialNumber:(id)number
{
  v31 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = numberCopy;
  v6 = [(NDOFollowUp *)self _pendingFollowUpItemsForSerialNumber:numberCopy];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        uniqueIdentifier = [v11 uniqueIdentifier];
        v13 = [NDOTypeChecking isNotEmptyString:uniqueIdentifier];

        if (v13)
        {
          uniqueIdentifier2 = [v11 uniqueIdentifier];
          [v5 addObject:uniqueIdentifier2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  followUpProvider = [(NDOFollowUp *)self followUpProvider];
  v16 = [v5 copy];
  v23 = 0;
  v17 = [followUpProvider clearPendingFollowUpItemsWithUniqueIdentifiers:v16 error:&v23];
  v18 = v23;

  v20 = _NDOLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"success";
    if (!v17)
    {
      v21 = v18;
    }

    *buf = 138412290;
    v29 = v21;
    _os_log_impl(&dword_25BD52000, v20, OS_LOG_TYPE_DEFAULT, "Cleared follow-up: %@", buf, 0xCu);
  }
}

- (void)dismissFollowUpForSerialNumber:(id)number
{
  v15 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  followUpProvider = [(NDOFollowUp *)self followUpProvider];
  v6 = [NDOFollowUp possibleUniqueIdentifiersForSerialNumber:numberCopy];

  v12 = 0;
  v7 = [followUpProvider clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:&v12];
  v8 = v12;

  v10 = _NDOLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"success";
    if (!v7)
    {
      v11 = v8;
    }

    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_25BD52000, v10, OS_LOG_TYPE_DEFAULT, "Dismissed follow-up: %@", buf, 0xCu);
  }
}

- (void)dismissNotificationForSerialNumber:(id)number
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(NDOFollowUp *)self _pendingFollowUpItemsForSerialNumber:number];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        followUpProvider = [(NDOFollowUp *)self followUpProvider];
        v18 = 0;
        v12 = [followUpProvider clearNotificationForItem:v10 error:&v18];
        v13 = v18;

        v15 = _NDOLogSystem(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v16 = @"success";
          if (!v12)
          {
            v16 = v13;
          }

          v24 = v16;
          v25 = 2112;
          v26 = v10;
          _os_log_impl(&dword_25BD52000, v15, OS_LOG_TYPE_DEFAULT, "Cleared follow-up notification: %@ for item: %@", buf, 0x16u);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }
}

- (id)refreshFollowupWithDeviceInfo:(id)info andForcePostFollowup:(BOOL)followup
{
  followupCopy = followup;
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = MEMORY[0x277CBEA60];
  infoCopy2 = info;
  v8 = [v6 arrayWithObjects:&infoCopy count:1];

  v9 = [(NDOFollowUp *)self refreshFollowupWithDeviceInfos:v8 clearUntrackedDeviceFollowups:0 andForcePostFollowup:followupCopy, infoCopy, v12];

  return v9;
}

- (id)refreshFollowupWithDeviceInfos:(id)infos clearUntrackedDeviceFollowups:(BOOL)followups andForcePostFollowup:(BOOL)followup
{
  followupsCopy = followups;
  v73 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  selfCopy = self;
  followUpProvider = [(NDOFollowUp *)self followUpProvider];
  v68 = 0;
  v9 = [followUpProvider pendingFollowUpItems:&v68];
  v10 = v68;

  if (v10)
  {
    v12 = _NDOLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:];
    }
  }

  v47 = v10;
  v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v65;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(obj);
        }

        userInfo = [*(*(&v64 + 1) + 8 * i) userInfo];
        v19 = [userInfo objectForKeyedSubscript:@"FollowupSerialNumber"];

        if (v19)
        {
          [v13 addObject:v19];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v15);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  if (followupsCopy)
  {
    v23 = [MEMORY[0x277CBEB58] setWithSet:v13];
  }

  else
  {
    v23 = 0;
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke;
  v58[3] = &unk_279975D48;
  v24 = v23;
  v59 = v24;
  v45 = v13;
  v60 = v45;
  v44 = array;
  v61 = v44;
  v42 = array2;
  v62 = v42;
  v25 = array3;
  v63 = v25;
  v48 = infosCopy;
  [infosCopy enumerateObjectsUsingBlock:v58];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v55;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [NDODevice deviceWithName:*(*(&v54 + 1) + 8 * j) serialNumber:*(*(&v54 + 1) + 8 * j) activationDate:0 deviceType:0, v42];
        v32 = _NDOLogSystem(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v70 = v31;
          _os_log_impl(&dword_25BD52000, v32, OS_LOG_TYPE_DEFAULT, "No longer tracking device %{private}@, clearing", buf, 0xCu);
        }

        [v25 addObject:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v54 objects:v71 count:16];
    }

    while (v28);
  }

  if (v25 && [v25 count])
  {
    [(NDOFollowUp *)selfCopy _clearFollowUpWithDevices:v25];
  }

  array4 = [MEMORY[0x277CBEB18] array];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_116;
  v50[3] = &unk_279975D70;
  v51 = obj;
  v52 = selfCopy;
  v34 = array4;
  v53 = v34;
  v35 = obj;
  [v44 enumerateObjectsUsingBlock:v50];
  if (v43 && [v43 count])
  {
    v36 = [(NDOFollowUp *)selfCopy _postFollowUpWithDevicesInfo:v43 repostAllowed:1];
    v37 = v36;
    v38 = _NDOLogSystem(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = @"NO";
      if (v37)
      {
        v39 = @"success";
      }

      *buf = 138412290;
      v70 = v39;
      _os_log_impl(&dword_25BD52000, v38, OS_LOG_TYPE_DEFAULT, "Reposted follow-up: %@", buf, 0xCu);
    }

    if (v37)
    {
      [v34 addObjectsFromArray:v43];
    }
  }

  v40 = [v34 copy];

  return v40;
}

void __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 device];
  v5 = [v4 serialNumber];

  if (!v5)
  {
    v26 = _NDOLogSystem(v6);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_cold_1();
    }

    goto LABEL_13;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v3 device];
    v9 = [v8 serialNumber];
    [v7 removeObject:v9];
  }

  v10 = [v3 warranty];

  if (!v10)
  {
    v27 = _NDOLogSystem(v11);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v28 = [v3 device];
    v62 = 136446467;
    v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
    v64 = 2113;
    v65 = v28;
    v29 = "%{public}s: No warranty downloaded for device. Remove the followup for %{private}@";
LABEL_20:
    _os_log_impl(&dword_25BD52000, v27, OS_LOG_TYPE_DEFAULT, v29, &v62, 0x16u);

    goto LABEL_21;
  }

  v12 = [v3 warranty];
  v13 = [v12 acOfferDisplay];

  if (!v13)
  {
    v27 = _NDOLogSystem(v14);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v28 = [v3 device];
    v62 = 136446467;
    v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
    v64 = 2113;
    v65 = v28;
    v29 = "%{public}s: Device NOT eligible. Remove the followup for %{private}@";
    goto LABEL_20;
  }

  v15 = [v3 warranty];
  v16 = [v15 acOfferEligibleUntil];
  [v16 timeIntervalSinceNow];
  v18 = v17;

  if (v18 <= 0.0)
  {
    v27 = _NDOLogSystem(v19);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v3 device];
      v62 = 136446467;
      v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v64 = 2113;
      v65 = v28;
      v29 = "%{public}s: Device no longer eligible. Remove the followup for %{private}@";
      goto LABEL_20;
    }

LABEL_21:

    v30 = *(a1 + 64);
    v31 = [v3 device];
    [v30 addObject:v31];

    goto LABEL_22;
  }

  v20 = *(a1 + 40);
  v21 = [v3 device];
  v22 = [v21 serialNumber];
  LODWORD(v20) = [v20 containsObject:v22];

  if (v20)
  {
    v24 = _NDOLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v3 device];
      v62 = 136446467;
      v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v64 = 2113;
      v65 = v25;
      _os_log_impl(&dword_25BD52000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible. Update the followup for %{private}@", &v62, 0x16u);
    }

    [*(a1 + 48) addObject:v3];
    goto LABEL_22;
  }

  v32 = [v3 warranty];
  if (![v32 scIntervalFollowupEligible])
  {
    goto LABEL_30;
  }

  v33 = [v3 warranty];
  v34 = [v33 eligibilityEventId];
  if (!v34)
  {

LABEL_30:
LABEL_31:
    v26 = _NDOLogSystem(v39);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [v3 device];
      v62 = 136446467;
      v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v64 = 2113;
      v65 = v50;
      _os_log_impl(&dword_25BD52000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: Followup already dismissed/not present for %{private}@, leaving unposted", &v62, 0x16u);
    }

LABEL_13:

    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v3 warranty];
  v37 = [v36 eligibilityEventId];
  v38 = [v37 isEqualToString:&stru_286D686B8];

  if (v38)
  {
    goto LABEL_31;
  }

  v40 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v41 = [v40 dictionaryForKey:@"FollowupDisplayedSerialNumberHashesWithEvents"];

  if (v41 && ([v3 device], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "serialNumber"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "sha256Hash"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "objectForKeyedSubscript:", v44), v45 = objc_claimAutoreleasedReturnValue(), v45, v44, v43, v42, v45))
  {
    v46 = [v3 device];
    v47 = [v46 serialNumber];
    v48 = [v47 sha256Hash];
    v49 = [v41 objectForKeyedSubscript:v48];
  }

  else
  {
    v49 = 0;
  }

  v51 = [v3 warranty];
  v52 = [v51 eligibilityEventId];
  v53 = [v49 containsObject:v52];

  v54 = [v3 device];
  v55 = [v54 serialNumber];
  v56 = [NDOFollowUpDismissalTracker followUpIsDismissedForSerial:v55];

  v58 = _NDOLogSystem(v57);
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (v53 && v56)
  {
    if (v59)
    {
      v60 = [v3 device];
      v62 = 136446467;
      v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v64 = 2113;
      v65 = v60;
      _os_log_impl(&dword_25BD52000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: Followup already dismissed/not present/no eligible events found for %{private}@, leaving unposted", &v62, 0x16u);
    }
  }

  else
  {
    if (v59)
    {
      v61 = [v3 device];
      v62 = 136446467;
      v63 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v64 = 2113;
      v65 = v61;
      _os_log_impl(&dword_25BD52000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible for re-post due to eligible event. Re-post the followup for %{private}@", &v62, 0x16u);
    }

    [*(a1 + 56) addObject:v3];
  }

LABEL_22:
}

void __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_116(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v3 device];
        v10 = [v9 serialNumber];
        v11 = [v8 userInfo];
        v12 = [v11 objectForKeyedSubscript:@"FollowupSerialNumber"];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          [*(v20 + 40) _setupFollowUpItem:v8 withDeviceInfo:v3];
          v14 = [*(v20 + 40) followUpProvider];
          v22 = 0;
          v15 = [v14 postFollowUpItem:v8 error:&v22];
          v16 = v22;

          v18 = _NDOLogSystem(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = @"success";
            if (!v15)
            {
              v19 = v16;
            }

            *buf = 138412290;
            v28 = v19;
            _os_log_impl(&dword_25BD52000, v18, OS_LOG_TYPE_DEFAULT, "Updated follow-up: %@", buf, 0xCu);
          }

          [*(v20 + 48) addObject:v3];
          goto LABEL_15;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (unint64_t)pendingFollowUpCount
{
  followUpProvider = [(NDOFollowUp *)self followUpProvider];
  v9 = 0;
  v3 = [followUpProvider pendingFollowUpItems:&v9];
  v4 = v9;
  v5 = [v3 count];

  if (v4)
  {
    v7 = _NDOLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:];
    }
  }

  return v5;
}

- (id)followUpSaleFlowSourceForBundleId:(id)id device:(id)device
{
  idCopy = id;
  deviceCopy = device;
  if (deviceCopy && [idCopy isEqualToString:*MEMORY[0x277CFE3F8]])
  {
    if ([deviceCopy deviceType] == 1)
    {
      v7 = @"WATCH_SETTINGS_FOLLOWUP";
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      sourceFromDeviceType = [deviceCopy sourceFromDeviceType];
      v7 = [v9 stringWithFormat:@"%@%@", sourceFromDeviceType, @"_FOLLOWUP"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setupFollowUpItem:(id)item withDeviceInfo:(id)info
{
  v100 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  infoCopy = info;
  v7 = _NDOLogSystem(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v97 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
    v98 = 2113;
    v99 = infoCopy;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private}@", buf, 0x16u);
  }

  warranty = [infoCopy warranty];
  acOfferEligibleUntil = [warranty acOfferEligibleUntil];
  v10 = [acOfferEligibleUntil dateByAddingTimeInterval:-0.001];
  [itemCopy setExpirationDate:v10];

  warranty2 = [infoCopy warranty];
  LODWORD(acOfferEligibleUntil) = [warranty2 acOfferSettingsRowBadge];

  if (acOfferEligibleUntil)
  {
    warranty3 = [infoCopy warranty];
    acOfferEligibleUntil2 = [warranty3 acOfferEligibleUntil];
    warranty4 = [infoCopy warranty];
    [warranty4 acOfferBadgeDurationBeforeEndDate];
    v17 = [acOfferEligibleUntil2 dateByAddingTimeInterval:-v16];

    date = [MEMORY[0x277CBEAA8] date];
    if ([v17 compare:date] == -1)
    {
      warranty5 = [infoCopy warranty];
      acOfferEligibleUntil3 = [warranty5 acOfferEligibleUntil];
      date2 = [MEMORY[0x277CBEAA8] date];
      v19 = [acOfferEligibleUntil3 compare:date2] == 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = _NDOLogSystem(v12);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v97 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
    v98 = 1024;
    LODWORD(v99) = v19;
    _os_log_impl(&dword_25BD52000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: shouldShowRowBadge: %d", buf, 0x12u);
  }

  if (v19)
  {
    v24 = 2;
  }

  else
  {
    v24 = 18;
  }

  v92 = itemCopy;
  [itemCopy setDisplayStyle:v24];
  v25 = objc_alloc(MEMORY[0x277CBEB38]);
  v94[0] = @"FollowupWarranty";
  warranty6 = [infoCopy warranty];
  dictionaryRepresentation = [warranty6 dictionaryRepresentation];
  v28 = dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    v28 = objc_opt_new();
  }

  v95[0] = v28;
  v94[1] = @"FollowupSerialNumber";
  device = [infoCopy device];
  serialNumber = [device serialNumber];
  v31 = *MEMORY[0x277CFE3F0];
  v32 = *MEMORY[0x277CFE3E8];
  v95[1] = serialNumber;
  v95[2] = v32;
  v33 = *MEMORY[0x277CFE4D0];
  v94[2] = v31;
  v94[3] = v33;
  v95[3] = MEMORY[0x277CBEC38];
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:4];
  v35 = [v25 initWithDictionary:v34];

  if (!dictionaryRepresentation)
  {
  }

  v36 = itemCopy;
  targetBundleIdentifier = [itemCopy targetBundleIdentifier];
  device2 = [infoCopy device];
  v39 = [(NDOFollowUp *)self followUpSaleFlowSourceForBundleId:targetBundleIdentifier device:device2];

  if ([NDOTypeChecking isNotEmptyString:v39])
  {
    [v35 setObject:v39 forKey:@"com.applecare.followup.saleflowsource"];
  }

  warranty7 = [infoCopy warranty];
  eligibilityEventId = [warranty7 eligibilityEventId];
  v42 = [NDOTypeChecking isNotEmptyString:eligibilityEventId];

  if (v42)
  {
    warranty8 = [infoCopy warranty];
    eligibilityEventId2 = [warranty8 eligibilityEventId];
    [v35 setObject:eligibilityEventId2 forKey:@"FollowupEligibilityEventId"];
  }

  warranty9 = [infoCopy warranty];
  acLocalizedOfferSingularDesc = [warranty9 acLocalizedOfferSingularDesc];

  if (acLocalizedOfferSingularDesc)
  {
    warranty10 = [infoCopy warranty];
    acLocalizedOfferSingularDesc2 = [warranty10 acLocalizedOfferSingularDesc];
    [v35 setObject:acLocalizedOfferSingularDesc2 forKey:*MEMORY[0x277CFE4E0]];
  }

  else
  {
    warranty10 = _NDOLogSystem(v47);
    if (os_log_type_enabled(warranty10, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpItem:withDeviceInfo:];
    }
  }

  warranty11 = [infoCopy warranty];
  acLocalizedOfferPluralDescFormat = [warranty11 acLocalizedOfferPluralDescFormat];

  if (acLocalizedOfferPluralDescFormat)
  {
    warranty12 = [infoCopy warranty];
    acLocalizedOfferPluralDescFormat2 = [warranty12 acLocalizedOfferPluralDescFormat];
    [v35 setObject:acLocalizedOfferPluralDescFormat2 forKey:*MEMORY[0x277CFE4D8]];
  }

  else
  {
    warranty12 = _NDOLogSystem(v52);
    if (os_log_type_enabled(warranty12, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpItem:withDeviceInfo:];
    }
  }

  warranty13 = [infoCopy warranty];
  acLocalizedGroupedOfferFooterLabel = [warranty13 acLocalizedGroupedOfferFooterLabel];
  v57 = acLocalizedGroupedOfferFooterLabel;
  if (acLocalizedGroupedOfferFooterLabel)
  {
    v58 = acLocalizedGroupedOfferFooterLabel;
  }

  else
  {
    v58 = &stru_286D686B8;
  }

  [v35 setObject:v58 forKey:*MEMORY[0x277CFE4B0]];

  device3 = [infoCopy device];
  name = [device3 name];

  if (name || ([infoCopy warranty], v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "acLocalizedOfferLongLabel"), v65 = objc_claimAutoreleasedReturnValue(), v65, v64, v65) && (objc_msgSend(infoCopy, "warranty"), v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "acLocalizedOfferLongLabel"), name = objc_claimAutoreleasedReturnValue(), v66, name))
  {
    [v35 setObject:name forKey:*MEMORY[0x277CFE4B8]];
  }

  [itemCopy setUserInfo:v35];
  warranty14 = [infoCopy warranty];
  acLocalizedGroupedOfferCTA = [warranty14 acLocalizedGroupedOfferCTA];
  if (acLocalizedGroupedOfferCTA)
  {
    goto LABEL_36;
  }

  warranty15 = [infoCopy warranty];
  acLocalizedOfferCTA = [warranty15 acLocalizedOfferCTA];

  if (!acLocalizedOfferCTA)
  {
    warranty14 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    acLocalizedGroupedOfferCTA = [warranty14 localizedStringForKey:@"FUP_ACTION_LABEL" value:&stru_286D686B8 table:@"Localizable"];
LABEL_36:
    acLocalizedOfferCTA = acLocalizedGroupedOfferCTA;
  }

  v68 = [MEMORY[0x277CFE4F8] actionWithLabel:acLocalizedOfferCTA url:0];
  [v68 setIdentifier:@"com.followup.ndo_followup_open_action"];
  warranty16 = [infoCopy warranty];
  acLocalizedOfferLabel = [warranty16 acLocalizedOfferLabel];
  [itemCopy setTitle:acLocalizedOfferLabel];

  warranty17 = [infoCopy warranty];
  acLocalizedOfferDesc = [warranty17 acLocalizedOfferDesc];
  [itemCopy setInformativeFooterText:acLocalizedOfferDesc];

  v93 = v68;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
  [itemCopy setActions:v73];

  warranty18 = [infoCopy warranty];
  LODWORD(acLocalizedOfferDesc) = [warranty18 showNotificationToggle];

  if (acLocalizedOfferDesc)
  {
    v90 = v39;
    warranty19 = [infoCopy warranty];
    acOfferEligibleUntil4 = [warranty19 acOfferEligibleUntil];
    warranty20 = [infoCopy warranty];
    [warranty20 showNotificationBeforeEndDate];
    v80 = [acOfferEligibleUntil4 dateByAddingTimeInterval:-v79];

    date3 = [MEMORY[0x277CBEAA8] date];
    if ([v80 compare:date3] == -1)
    {
      warranty21 = [infoCopy warranty];
      acOfferEligibleUntil5 = [warranty21 acOfferEligibleUntil];
      date4 = [MEMORY[0x277CBEAA8] date];
      v82 = [acOfferEligibleUntil5 compare:date4] == 1;
    }

    else
    {
      v82 = 0;
    }

    v87 = _NDOLogSystem(v86);
    v36 = v92;
    v39 = v90;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v97 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
      v98 = 2112;
      v99 = v80;
      _os_log_impl(&dword_25BD52000, v87, OS_LOG_TYPE_DEFAULT, "%{public}s: NotificationDate: %@", buf, 0x16u);
    }

    if (v82)
    {
      v88 = [(NDOFollowUp *)self _setupFollowUpNotificationWithDeviceInfo:infoCopy];
      [v92 setNotification:v88];

      v82 = 1;
    }
  }

  else
  {
    v82 = 0;
  }

  v89 = _NDOLogSystem(v75);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v97 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
    v98 = 1024;
    LODWORD(v99) = v82;
    _os_log_impl(&dword_25BD52000, v89, OS_LOG_TYPE_DEFAULT, "%{public}s: shouldShowNotification: %d", buf, 0x12u);
  }
}

- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)info
{
  infoCopy = info;
  device = [infoCopy device];
  serialNumber = [device serialNumber];
  [(NDOFollowUp *)self dismissFollowUpForSerialNumber:serialNumber];

  [(NDOFollowUp *)self postFollowUpWithDeviceInfo:infoCopy];
}

- (id)_setupFollowUpNotificationWithDeviceInfo:(id)info
{
  v30[4] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = objc_alloc_init(MEMORY[0x277CFE510]);
  warranty = [infoCopy warranty];
  acNotificationLocalizedOfferLabel = [warranty acNotificationLocalizedOfferLabel];

  warranty2 = [infoCopy warranty];
  v8 = warranty2;
  if (acNotificationLocalizedOfferLabel)
  {
    [warranty2 acNotificationLocalizedOfferLabel];
  }

  else
  {
    [warranty2 acLocalizedOfferLabel];
  }
  v9 = ;
  [v4 setTitle:v9];

  warranty3 = [infoCopy warranty];
  acLocalizedNotificationOfferDesc = [warranty3 acLocalizedNotificationOfferDesc];

  if (acLocalizedNotificationOfferDesc)
  {
    warranty4 = [infoCopy warranty];
    acLocalizedNotificationOfferDesc2 = [warranty4 acLocalizedNotificationOfferDesc];
    [v4 setInformativeText:acLocalizedNotificationOfferDesc2];
  }

  v14 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v15 = v14;
  if (v14)
  {
    [v14 setIdentifier:@"com.followup.ndo_notification_open_action"];
    v16 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v17 = [v16 localizedStringForKey:@"DETAILS" value:&stru_286D686B8 table:@"Localizable"];
    [v15 setLabel:v17];

    [v4 setActivateAction:v15];
  }

  else
  {
    v18 = _NDOLogSystem(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpNotificationWithDeviceInfo:];
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v20 = v19;
  if (v19)
  {
    [v19 setIdentifier:@"com.followup.ndo_notification_clear_action"];
    v21 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v22 = [v21 localizedStringForKey:@"CLEAR_NOTIFICATION" value:&stru_286D686B8 table:@"Localizable"];
    [v20 setLabel:v22];

    [v4 setClearAction:v20];
  }

  else
  {
    v23 = _NDOLogSystem(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpNotificationWithDeviceInfo:];
    }
  }

  [v4 setFrequency:0.0];
  options = [v4 options];
  v25 = *MEMORY[0x277CFE4A0];
  v30[0] = *MEMORY[0x277CFE498];
  v30[1] = v25;
  v26 = *MEMORY[0x277CFE480];
  v30[2] = *MEMORY[0x277CFE478];
  v30[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v28 = [options setByAddingObjectsFromArray:v27];
  [v4 setOptions:v28];

  return v4;
}

- (void)followUpItemsForDeviceInfo:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)postFollowUpWithDeviceInfo:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "Missing eventID", buf, 2u);
}

- (void)_checkConversionEligibilityForDevice:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 device];
  v7 = [a1 warranty];
  v8 = [v7 acOfferFollowupDisplayDate];
  v9 = 138478339;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&dword_25BD52000, a3, OS_LOG_TYPE_DEBUG, "Device not eligible for conversion. %{private}@, followup dismissed date: %@, fup display date: %@", &v9, 0x20u);
}

+ (void)uniqueFollowUpIdentifiersForDevice:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)possibleUniqueIdentifiersForSerialNumber:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pendingFollowUpItemsForSerialNumber:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupFollowUpItem:withDeviceInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupFollowUpItem:withDeviceInfo:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupFollowUpNotificationWithDeviceInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupFollowUpNotificationWithDeviceInfo:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end