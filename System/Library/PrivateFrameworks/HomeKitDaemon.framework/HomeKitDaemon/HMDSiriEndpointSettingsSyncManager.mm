@interface HMDSiriEndpointSettingsSyncManager
+ (NSArray)siriEndPointHomeKitBackedKeyPaths;
+ (id)logCategory;
- (HMDSiriEndpointSettingsSyncManager)initWithDataSource:(id)source subscriptionProvider:(id)provider notificationCenter:(id)center workQueue:(id)queue;
- (HMDSiriEndpointSettingsSyncManagerDataSource)dataSource;
- (id)readValueValueForAccessoryUUID:(id)d homeUUID:(id)iD forKeyPath:(id)path;
- (int64_t)siriEndpointCertificationReasonForAccessoryUUID:(id)d homeUUID:(id)iD error:(id *)error;
- (void)_beginManagingAccessory:(id)accessory forHome:(id)home;
- (void)_beginManagingHome:(id)home;
- (void)_matchingHomeforUUID:(id)d accessoryUUID:(id)iD home:(id *)home accessory:(id *)accessory;
- (void)_stopManagingAccessory:(id)accessory forHome:(id)home;
- (void)_stopManagingHome:(id)home;
- (void)_synchronizeSettingsForAccessoryUUID:(id)d homeUUID:(id)iD;
- (void)_updateManagedHomes;
- (void)_writeSetting:(id)setting toAccessory:(id)accessory forKeyPath:(id)path;
- (void)_writeSettingValue:(id)value toAccessory:(id)accessory forKeyPath:(id)path completionHandler:(id)handler;
- (void)configure;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)handleAccessoryIsReachableNotification:(id)notification;
- (void)handleCompositeSettingsControllerDidConfigureNotification:(id)notification;
- (void)handleHAPMediaProfileAddedNotification:(id)notification;
- (void)handleHomeAddedNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleSiriEndPointAddedNotification:(id)notification;
- (void)registerForAccessoryNotificationsOnHapAccessory:(id)accessory;
- (void)unregisterFromAccessoryNotificationsOnHapAccessory:(id)accessory;
- (void)writeSettingValue:(id)value accessoryUUID:(id)d homeUUID:(id)iD forKeyPath:(id)path completionHandler:(id)handler;
@end

@implementation HMDSiriEndpointSettingsSyncManager

- (HMDSiriEndpointSettingsSyncManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (int64_t)siriEndpointCertificationReasonForAccessoryUUID:(id)d homeUUID:(id)iD error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v19 = 0;
  v20 = 0;
  [(HMDSiriEndpointSettingsSyncManager *)self _matchingHomeforUUID:iDCopy accessoryUUID:dCopy home:&v20 accessory:&v19];
  v10 = v20;
  v11 = v19;
  v12 = v11;
  if (v11)
  {
    computeSiriEndpointCertification = [v11 computeSiriEndpointCertification];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = dCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = computeSiriEndpointCertification = 0;
    }

    else
    {
      computeSiriEndpointCertification = 0;
    }
  }

  return computeSiriEndpointCertification;
}

- (id)readValueValueForAccessoryUUID:(id)d homeUUID:(id)iD forKeyPath:(id)path
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138544130;
    v32 = v14;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = iDCopy;
    v37 = 2112;
    v38 = pathCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Writing endpoint settings for accessoryUUID: %@, homeUUID: %@, keyPath: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v29 = 0;
  v30 = 0;
  [(HMDSiriEndpointSettingsSyncManager *)selfCopy _matchingHomeforUUID:iDCopy accessoryUUID:dCopy home:&v30 accessory:&v29];
  v15 = v30;
  v16 = v29;
  if (!v16)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v22;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = dCopy;
    v23 = "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings";
    v24 = v21;
    v25 = 32;
LABEL_17:
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);

    goto LABEL_18;
  }

  if ([pathCopy isEqualToString:@"root.siri.allowHeySiri"])
  {
    siriEndpointProfile = [v16 siriEndpointProfile];
    siriListening = [siriEndpointProfile siriListening];

    if (siriListening == -1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_12:
    v27 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:siriListening == 1];
    goto LABEL_19;
  }

  if (![pathCopy isEqualToString:@"root.siri.tapToAccess"])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v22;
    v33 = 2112;
    v34 = pathCopy;
    v23 = "%{public}@Invalid or unrecongnized keyPath: %@";
    v24 = v21;
    v25 = 22;
    goto LABEL_17;
  }

  siriEndpointProfile2 = [v16 siriEndpointProfile];
  siriListening = [siriEndpointProfile2 siriTouchToUse];

  if (siriListening != -1)
  {
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    v22 = HMFGetLogIdentifier();
    *buf = 138544130;
    v32 = v22;
    v33 = 2112;
    v34 = iDCopy;
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = pathCopy;
    v23 = "%{public}@Unknown value for home:%@, accessory:%@, keyPath:%@";
    v24 = v21;
    v25 = 42;
    goto LABEL_17;
  }

LABEL_18:

  objc_autoreleasePoolPop(v19);
  v27 = 0;
LABEL_19:

  return v27;
}

- (void)_matchingHomeforUUID:(id)d accessoryUUID:(id)iD home:(id *)home accessory:(id *)accessory
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dataSource = [(HMDSiriEndpointSettingsSyncManager *)self dataSource];
  v13 = dataSource;
  if (home)
  {
    v14 = [dataSource homesForSiriEndpointSettingsSyncManager:self];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke;
    v28[3] = &unk_278685BA0;
    v29 = dCopy;
    v15 = [v14 na_firstObjectPassingTest:v28];

    if (accessory)
    {
      v16 = v15;
      *home = v15;
      hapAccessories = [v16 hapAccessories];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke_76;
      v26[3] = &unk_2786830C8;
      v27 = iDCopy;
      *accessory = [hapAccessories na_firstObjectPassingTest:v26];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Nil out hap accessory passed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil out parameter home passed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }
}

uint64_t __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)writeSettingValue:(id)value accessoryUUID:(id)d homeUUID:(id)iD forKeyPath:(id)path completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  handlerCopy = handler;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544386;
    v38 = v20;
    v39 = 2112;
    v40 = dCopy;
    v41 = 2112;
    v42 = iDCopy;
    v43 = 2112;
    v44 = valueCopy;
    v45 = 2112;
    v46 = pathCopy;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Writing endpoint settings for accessoryUUID: %@, homeUUID: %@, settingValue: %@, keyPath: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v17);
  v35 = 0;
  v36 = 0;
  [(HMDSiriEndpointSettingsSyncManager *)selfCopy _matchingHomeforUUID:iDCopy accessoryUUID:dCopy home:&v36 accessory:&v35];
  v21 = v36;
  v22 = v35;
  if (v22)
  {
    workQueue = [(HMDSiriEndpointSettingsSyncManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__HMDSiriEndpointSettingsSyncManager_writeSettingValue_accessoryUUID_homeUUID_forKeyPath_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    block[4] = selfCopy;
    v31 = valueCopy;
    v32 = v22;
    v33 = pathCopy;
    v34 = handlerCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v27 = v29 = v24;
      *buf = 138543874;
      v38 = v27;
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = dCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings", buf, 0x20u);

      v24 = v29;
    }

    objc_autoreleasePoolPop(v24);
    if (handlerCopy)
    {
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (*(handlerCopy + 2))(handlerCopy, v28);
    }
  }
}

- (void)_writeSettingValue:(id)value toAccessory:(id)accessory forKeyPath:(id)path completionHandler:(id)handler
{
  v95 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  accessoryCopy = accessory;
  pathCopy = path;
  handlerCopy = handler;
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138544130;
    v88 = v18;
    v89 = 2112;
    v90 = valueCopy;
    v91 = 2112;
    v92 = accessoryCopy;
    v93 = 2112;
    v94 = pathCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Writing setting value: %@ to siri endpoint accessory: %@ for keypath: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  if ([pathCopy isEqualToString:@"root.siri.allowHeySiri"])
  {
    v19 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      bOOLValue = [v21 BOOLValue];
      siriEndpointProfile = [accessoryCopy siriEndpointProfile];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke;
      v83[3] = &unk_27868A528;
      v83[4] = selfCopy;
      v84 = accessoryCopy;
      v85 = v21;
      v86 = handlerCopy;
      [siriEndpointProfile setListening:bOOLValue completionHandler:v83];

      v24 = v84;
LABEL_29:

      goto LABEL_55;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v36;
      v89 = 2112;
      v90 = v19;
      v91 = 2112;
      v92 = pathCopy;
      v93 = 2112;
      v94 = accessoryCopy;
      v37 = "%{public}@heySiriSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
LABEL_52:
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, v37, buf, 0x2Au);

      goto LABEL_53;
    }

    goto LABEL_53;
  }

  if ([pathCopy isEqualToString:@"root.siri.tapToAccess"])
  {
    v25 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v21 = v26;

    if (v21)
    {
      bOOLValue2 = [v21 BOOLValue];
      siriEndpointProfile2 = [accessoryCopy siriEndpointProfile];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_70;
      v79[3] = &unk_27868A528;
      v79[4] = selfCopy;
      v80 = accessoryCopy;
      v81 = v21;
      v82 = handlerCopy;
      [siriEndpointProfile2 setTouchToUse:bOOLValue2 completionHandler:v79];

      v24 = v80;
      goto LABEL_29;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v36;
      v89 = 2112;
      v90 = v25;
      v91 = 2112;
      v92 = pathCopy;
      v93 = 2112;
      v94 = accessoryCopy;
      v37 = "%{public}@tapToAccessSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
      goto LABEL_52;
    }

LABEL_53:

    objc_autoreleasePoolPop(v33);
    if (handlerCopy)
    {
      v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      (*(handlerCopy + 2))(handlerCopy, v52);
    }

    goto LABEL_55;
  }

  if ([pathCopy isEqualToString:@"root.siri.lightWhenUsingSiri"])
  {
    v29 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v21 = v30;

    if (v21)
    {
      bOOLValue3 = [v21 BOOLValue];
      siriEndpointProfile3 = [accessoryCopy siriEndpointProfile];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_71;
      v75[3] = &unk_27868A528;
      v75[4] = selfCopy;
      v76 = accessoryCopy;
      v77 = v21;
      v78 = handlerCopy;
      [siriEndpointProfile3 setLightOnUse:bOOLValue3 completionHandler:v75];

      v24 = v76;
      goto LABEL_29;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v36;
      v89 = 2112;
      v90 = v29;
      v91 = 2112;
      v92 = pathCopy;
      v93 = 2112;
      v94 = accessoryCopy;
      v37 = "%{public}@lightWhenUsingSiriSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if ([pathCopy isEqualToString:@"root.siri.soundAlert"])
  {
    v38 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v21 = v39;

    if (v21)
    {
      bOOLValue4 = [v21 BOOLValue];
      siriEndpointProfile4 = [accessoryCopy siriEndpointProfile];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_72;
      v71[3] = &unk_27868A528;
      v71[4] = selfCopy;
      v72 = accessoryCopy;
      v73 = v21;
      v74 = handlerCopy;
      [siriEndpointProfile4 setSoundOnUse:bOOLValue4 completionHandler:v71];

      v24 = v72;
      goto LABEL_29;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v36;
      v89 = 2112;
      v90 = v38;
      v91 = 2112;
      v92 = pathCopy;
      v93 = 2112;
      v94 = accessoryCopy;
      v37 = "%{public}@soundWhenUsingSiriSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if ([pathCopy isEqualToString:@"root.airPlay.airPlayEnabled"])
  {
    v42 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v21 = v43;

    if (v21)
    {
      mediaProfile = [accessoryCopy mediaProfile];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = mediaProfile;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (v46)
      {
        bOOLValue5 = [v21 BOOLValue];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_74;
        v67[3] = &unk_27868A528;
        v67[4] = selfCopy;
        v68 = accessoryCopy;
        v69 = v21;
        v70 = handlerCopy;
        [v46 setEnable:bOOLValue5 completionHandler:v67];
      }

      else
      {
        v58 = objc_autoreleasePoolPush();
        v59 = selfCopy;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v61 = v62 = v58;
          *buf = 138544130;
          v88 = v61;
          v89 = 2112;
          v90 = v42;
          v91 = 2112;
          v92 = pathCopy;
          v93 = 2112;
          v94 = accessoryCopy;
          _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize airplayEnabledSettingValue (%@) for keypath %@, accessory: %@, as accessory does not have a hapMediaProfile", buf, 0x2Au);

          v58 = v62;
        }

        objc_autoreleasePoolPop(v58);
      }

      goto LABEL_55;
    }

    v53 = objc_autoreleasePoolPush();
    v54 = selfCopy;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v57;
      v89 = 2112;
      v90 = v42;
      v91 = 2112;
      v92 = pathCopy;
      v93 = 2112;
      v94 = accessoryCopy;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@airplayEnabledSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type", buf, 0x2Au);
    }
  }

  else
  {
    if ([pathCopy isEqualToString:@"root.siri.siriEnabled"])
    {
      v48 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v21 = v49;

      if (v21)
      {
        bOOLValue6 = [v21 BOOLValue];
        siriEndpointProfile5 = [accessoryCopy siriEndpointProfile];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_75;
        v63[3] = &unk_27868A528;
        v63[4] = selfCopy;
        v64 = accessoryCopy;
        v65 = v21;
        v66 = handlerCopy;
        [siriEndpointProfile5 setEnable:bOOLValue6 completionHandler:v63];

        v24 = v64;
        goto LABEL_29;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138544130;
        v88 = v36;
        v89 = 2112;
        v90 = v48;
        v91 = 2112;
        v92 = pathCopy;
        v93 = 2112;
        v94 = accessoryCopy;
        v37 = "%{public}@siriEnabledSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v53 = objc_autoreleasePoolPush();
    v54 = selfCopy;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v56;
      v89 = 2112;
      v90 = pathCopy;
      v91 = 2112;
      v92 = valueCopy;
      v93 = 2112;
      v94 = accessoryCopy;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unknown keypath (%@) for homekit backed siri endpoint setting value (%@) accessory: %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v53);
  if (!handlerCopy)
  {
    goto LABEL_56;
  }

  v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
  (*(handlerCopy + 2))(handlerCopy, v21);
LABEL_55:

LABEL_56:
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized hey siri enabled on %@ to %@ with success: %@ (%@)", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_70(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized tap to access on %@ to %@ with success: %@ (%@)", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_71(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized light on use on %@ to %@ with success: %@ (%@)", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_72(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized sound on use on %@ to %@ with success: %@ (%@)", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_74(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized airplayEnabled on %@ to %@ with success: %@ (%@)", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_75(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized siriEnabled on %@ to %@ with success: %@ (%@)", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (void)_writeSetting:(id)setting toAccessory:(id)accessory forKeyPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  accessoryCopy = accessory;
  pathCopy = path;
  v11 = settingCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v13, "BOOLValue")}];
    [(HMDSiriEndpointSettingsSyncManager *)self _writeSettingValue:v14 toAccessory:accessoryCopy forKeyPath:pathCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setting type received.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)_synchronizeSettingsForAccessoryUUID:(id)d homeUUID:(id)iD
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v37 = v12;
    v38 = 2112;
    v39 = dCopy;
    v40 = 2112;
    v41 = iDCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Synchronizing homekit backed siri endpoint settings for accessoryUUID: %@, homeUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  dataSource = [(HMDSiriEndpointSettingsSyncManager *)selfCopy dataSource];
  v14 = [dataSource homesForSiriEndpointSettingsSyncManager:selfCopy];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke;
  v34[3] = &unk_278685BA0;
  v15 = iDCopy;
  v35 = v15;
  v16 = [v14 na_firstObjectPassingTest:v34];

  hapAccessories = [v16 hapAccessories];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_2;
  v32[3] = &unk_2786830C8;
  v18 = dCopy;
  v33 = v18;
  v19 = [hapAccessories na_firstObjectPassingTest:v32];

  if (v19)
  {
    v20 = [dataSource compositeSettingsControllerManagerForSiriEndpointSettingsSyncManager:selfCopy];
    if (v20)
    {
      v21 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_65;
      v30[3] = &unk_27867C870;
      v30[4] = selfCopy;
      v31 = v19;
      [v20 localFetchSettingsForUUID:v18 homeUUID:v15 withKeyPaths:v21 completion:v30];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v29;
        v38 = 2112;
        v39 = v16;
        v40 = 2112;
        v41 = v18;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to data source settings manager to sync settings for home: %@, accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v25;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

uint64_t __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_65(uint64_t a1, void *a2, void *a3, void *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v54 = a3;
  v53 = a4;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v9)
  {
    v10 = v9;
    v55 = *v57;
    v52 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v57 != v55)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v56 + 1) + 8 * v11);
        v13 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
        v14 = [v12 keyPath];
        v15 = [v13 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            v21 = [v12 keyPath];
            *buf = 138544130;
            v61 = v20;
            v62 = 2112;
            v63 = v21;
            v64 = 2112;
            v65 = v54;
            v66 = 2112;
            v67 = v53;
            v23 = v19;
            v24 = OS_LOG_TYPE_INFO;
            v25 = "%{public}@Did fetch settings value event for an unexpected keypath %@, uuid: %@, homeUUID: %@";
            v26 = 42;
            goto LABEL_12;
          }

LABEL_14:

          objc_autoreleasePoolPop(v17);
          goto LABEL_15;
        }

        v16 = [v12 error];

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v20 = HMFGetLogIdentifier();
          v21 = [v12 keyPath];
          v22 = [v12 error];
          *buf = 138544386;
          v61 = v20;
          v62 = 2112;
          v63 = v21;
          v64 = 2112;
          v65 = v54;
          v66 = 2112;
          v67 = v53;
          v68 = 2112;
          v69 = v22;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error fetching settings value event for keypath %@, uuid: %@, homeUUID: %@ error: %@", buf, 0x34u);

          v8 = v52;
LABEL_13:

          goto LABEL_14;
        }

        v27 = [v12 setting];

        if (!v27)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v20 = HMFGetLogIdentifier();
          v21 = [v12 keyPath];
          *buf = 138544386;
          v61 = v20;
          v62 = 2112;
          v63 = v21;
          v64 = 2112;
          v65 = v54;
          v66 = 2112;
          v67 = v53;
          v68 = 2112;
          v69 = v12;
          v23 = v19;
          v24 = OS_LOG_TYPE_ERROR;
          v25 = "%{public}@Error fetching settings value event for keypath %@, uuid: %@, homeUUID: %@ no setting returned in result: %@";
          v26 = 52;
LABEL_12:
          _os_log_impl(&dword_229538000, v23, v24, v25, buf, v26);
          goto LABEL_13;
        }

        v28 = [v12 setting];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        if (v30)
        {
          v31 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v30, "BOOLValue")}];
        }

        else
        {
          v32 = v28;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          if (v34)
          {
            v35 = objc_alloc(MEMORY[0x277CD1DC8]);
            v36 = [v34 stringValue];
            v31 = [v35 initWithStringValue:v36];
          }

          else
          {
            v37 = v32;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v36 = v38;

            if (v36)
            {
              v39 = objc_alloc(MEMORY[0x277CD1DB8]);
              v40 = [v36 numberValue];
              v31 = [v39 initWithIntegerValue:{objc_msgSend(v40, "integerValue")}];
            }

            else
            {
              v41 = v37;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }

              v40 = v42;

              if (v40)
              {
                v49 = objc_alloc(MEMORY[0x277CD1DC0]);
                v51 = [v40 inputLanguageCode];
                v50 = [v40 outputVoiceLanguageCode];
                v48 = [v40 outputVoiceGenderCode];
                v47 = [v40 voiceName];
                v31 = [v49 initWithInputLanguageCode:v51 outputVoiceLanguageCode:v50 outputVoiceGenderCode:v48 voiceName:v47];
              }

              else
              {
                v31 = 0;
              }
            }
          }

          v8 = v52;
        }

        v43 = *(a1 + 32);
        v44 = *(a1 + 40);
        v45 = [v12 keyPath];
        [v43 _writeSettingValue:v31 toAccessory:v44 forKeyPath:v45];

LABEL_15:
        ++v11;
      }

      while (v10 != v11);
      v46 = [v8 countByEnumeratingWithState:&v56 objects:v70 count:16];
      v10 = v46;
    }

    while (v46);
  }
}

- (void)handleAccessoryIsReachableNotification:(id)notification
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    home = [v7 home];
    if (home)
    {
      os_unfair_lock_lock_with_options();
      homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
      uuid = [home uuid];
      v11 = [homeUUIDsManagedByCurrentDevice containsObject:uuid];

      if (v11)
      {
        os_unfair_lock_unlock(&self->_lock);
        workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__HMDSiriEndpointSettingsSyncManager_handleAccessoryIsReachableNotification___block_invoke;
        block[3] = &unk_27868A010;
        block[4] = self;
        v26 = v7;
        v27 = home;
        dispatch_async(workQueue, block);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v29 = v24;
          v30 = 2112;
          v31 = home;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received accessory reachability notification for unmanaged home %@ accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        os_unfair_lock_unlock(&self->_lock);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v20;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = notificationCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint reachable notification with no home for HAP accessory: %@. %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v16;
      v30 = 2112;
      v31 = notificationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint reachable notification with no HAP accessory. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __77__HMDSiriEndpointSettingsSyncManager_handleAccessoryIsReachableNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v3 = [*(a1 + 48) uuid];
  [v2 _synchronizeSettingsForAccessoryUUID:v4 homeUUID:v3];
}

- (void)handleHAPMediaProfileAddedNotification:(id)notification
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    home = [v7 home];
    if (home)
    {
      os_unfair_lock_lock_with_options();
      homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
      uuid = [home uuid];
      v11 = [homeUUIDsManagedByCurrentDevice containsObject:uuid];

      if (v11)
      {
        os_unfair_lock_unlock(&self->_lock);
        workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__HMDSiriEndpointSettingsSyncManager_handleHAPMediaProfileAddedNotification___block_invoke;
        block[3] = &unk_27868A010;
        block[4] = self;
        v26 = v7;
        v27 = home;
        dispatch_async(workQueue, block);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v29 = v24;
          v30 = 2112;
          v31 = home;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received HAPMediaProfileAdded notification for unmanaged home %@ accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        os_unfair_lock_unlock(&self->_lock);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v20;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = notificationCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving HAPMediaProfile notification with no home for HAP accessory: %@. %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v16;
      v30 = 2112;
      v31 = notificationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving HAPMediaProfile added notification with no HAP accessory. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __77__HMDSiriEndpointSettingsSyncManager_handleHAPMediaProfileAddedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v3 = [*(a1 + 48) uuid];
  [v2 _synchronizeSettingsForAccessoryUUID:v4 homeUUID:v3];
}

- (void)handleCompositeSettingsControllerDidConfigureNotification:(id)notification
{
  v35 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did handle CompositeSettingsControllerDidConfigure notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDHomeUUIDOwnerUUIDKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 hmf_UUIDForKey:@"HMDCompositeSettingControllerHomeUUIDNotificationKey"];
  v14 = [v12 hmf_UUIDForKey:@"HMDCompositeSettingControllerOwnerUUIDNotificationKey"];
  if (v14 && v13)
  {
    os_unfair_lock_lock_with_options();
    homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)selfCopy homeUUIDsManagedByCurrentDevice];
    v16 = [homeUUIDsManagedByCurrentDevice containsObject:v13];

    if (v16)
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      workQueue = [(HMDSiriEndpointSettingsSyncManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HMDSiriEndpointSettingsSyncManager_handleCompositeSettingsControllerDidConfigureNotification___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = selfCopy;
      v27 = v14;
      v28 = v13;
      dispatch_async(workQueue, block);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v25;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Home:%@ not managed", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      os_unfair_lock_unlock(&selfCopy->_lock);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v21;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil hapAccessoryUUID:%@ or homeUUID:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }
}

- (void)handleSiriEndPointAddedNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    home = [v7 home];
    if (home)
    {
      os_unfair_lock_lock_with_options();
      homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
      uuid = [home uuid];
      v11 = [homeUUIDsManagedByCurrentDevice containsObject:uuid];

      os_unfair_lock_unlock(&self->_lock);
      if (v11)
      {
        workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HMDSiriEndpointSettingsSyncManager_handleSiriEndPointAddedNotification___block_invoke;
        block[3] = &unk_27868A010;
        block[4] = self;
        v22 = v7;
        v23 = home;
        dispatch_async(workQueue, block);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v20;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = notificationCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint added notification with no home for HAP accessory: %@. %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = notificationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint added notification with no HAP accessory. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)handleHomeAddedNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Settings sync manager received home added notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDSiriEndpointSettingsSyncManager_handleHomeAddedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Settings sync manager received home removed notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    os_unfair_lock_lock_with_options();
    homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)selfCopy homeUUIDsManagedByCurrentDevice];
    uuid = [v12 uuid];
    v15 = [homeUUIDsManagedByCurrentDevice containsObject:uuid];

    if (v15)
    {
      homeUUIDsManagedByCurrentDevice2 = [(HMDSiriEndpointSettingsSyncManager *)selfCopy homeUUIDsManagedByCurrentDevice];
      uuid2 = [v12 uuid];
      [homeUUIDsManagedByCurrentDevice2 removeObject:uuid2];

      os_unfair_lock_unlock(&selfCopy->_lock);
      workQueue = [(HMDSiriEndpointSettingsSyncManager *)selfCopy workQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __68__HMDSiriEndpointSettingsSyncManager_handleHomeRemovedNotification___block_invoke;
      v23[3] = &unk_27868A750;
      v23[4] = selfCopy;
      v24 = v12;
      dispatch_async(workQueue, v23);
    }

    else
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = notificationCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@No home found for home removed notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling %@ notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDSiriEndpointSettingsSyncManager_handlePrimaryResidentUpdateNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v68 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:topicCopy];
  asAccessorySettingTopic = [v8 asAccessorySettingTopic];

  if (!asAccessorySettingTopic)
  {
    goto LABEL_33;
  }

  accessorySettingKeyPath = [asAccessorySettingTopic accessorySettingKeyPath];

  if (!accessorySettingKeyPath)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v32;
      v62 = 2112;
      v63 = eventCopy;
      v64 = 2112;
      v65 = topicCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil Keypath for settings update event: %@ topic: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  homeUUID = [asAccessorySettingTopic homeUUID];

  if (!homeUUID)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v33;
      v62 = 2112;
      v63 = eventCopy;
      v64 = 2112;
      v65 = topicCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil homeUUID for settings update event: %@ topic: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  accessoryUUID = [asAccessorySettingTopic accessoryUUID];

  if (!accessoryUUID)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v34;
      v62 = 2112;
      v63 = eventCopy;
      v64 = 2112;
      v65 = topicCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil accessoryUUID for settings update event: %@ topic: %@", buf, 0x20u);
    }

LABEL_19:

    objc_autoreleasePoolPop(v29);
    goto LABEL_33;
  }

  v59 = 0;
  v13 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:eventCopy error:&v59];
  v50 = v59;
  if (!v13)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v38;
      v62 = 2112;
      v63 = eventCopy;
      v64 = 2112;
      v65 = topicCopy;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil settings value for settings update event: %@ topic: %@", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v14 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
  accessorySettingKeyPath2 = [asAccessorySettingTopic accessorySettingKeyPath];
  v16 = [v14 containsObject:accessorySettingKeyPath2];

  if ((v16 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v40;
      v62 = 2112;
      v63 = eventCopy;
      v64 = 2112;
      v65 = topicCopy;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Did receive settings value event for an unwatched keypath. Event: %@ Topic: %@", buf, 0x20u);
    }

LABEL_24:

    objc_autoreleasePoolPop(v35);
    goto LABEL_33;
  }

  dataSource = [(HMDSiriEndpointSettingsSyncManager *)self dataSource];
  v18 = [dataSource homesForSiriEndpointSettingsSyncManager:self];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke;
  v57[3] = &unk_278685BA0;
  v19 = asAccessorySettingTopic;
  v58 = v19;
  v49 = [v18 na_firstObjectPassingTest:v57];

  os_unfair_lock_lock_with_options();
  homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
  uuid = [v49 uuid];
  v22 = [homeUUIDsManagedByCurrentDevice containsObject:uuid];

  if (v22)
  {
    os_unfair_lock_unlock(&self->_lock);
    hapAccessories = [v49 hapAccessories];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_59;
    v55[3] = &unk_2786830C8;
    v24 = v19;
    v56 = v24;
    v25 = [hapAccessories na_firstObjectPassingTest:v55];

    if (!v25 || ([v25 siriEndpointProfile], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
    {
      v45 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138544130;
        v61 = v48;
        v62 = 2112;
        v63 = v49;
        v64 = 2112;
        v65 = eventCopy;
        v66 = 2112;
        v67 = topicCopy;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching siri endpoint enabled accessory in home (%@) for settings update event: %@ topic: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v45);
    }

    else
    {
      workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_61;
      block[3] = &unk_2786891E0;
      block[4] = self;
      v52 = v13;
      v53 = v25;
      v54 = v24;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v44;
      v62 = 2112;
      v63 = eventCopy;
      v64 = 2112;
      v65 = topicCopy;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Received settings update event: %@ topic: %@ for unmanaged home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    os_unfair_lock_unlock(&self->_lock);
  }

LABEL_33:
}

uint64_t __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) homeUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

uint64_t __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

void __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_61(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) accessorySettingKeyPath];
  [v1 _writeSetting:v2 toAccessory:v3 forKeyPath:v4];
}

- (void)_updateManagedHomes
{
  v69 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating homes for siri endpoint settings sync", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CBEB58] set];
  dataSource = [(HMDSiriEndpointSettingsSyncManager *)selfCopy dataSource];
  v10 = [dataSource homesForSiriEndpointSettingsSyncManager:selfCopy];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v12)
  {
    v13 = *v55;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v54 + 1) + 8 * i);
        if ([v15 isCurrentDeviceConfirmedPrimaryResident])
        {
          [v8 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v12);
  }

  os_unfair_lock_lock_with_options();
  homeUUIDsManagedByCurrentDevice = [(HMDSiriEndpointSettingsSyncManager *)selfCopy homeUUIDsManagedByCurrentDevice];
  v17 = objc_msgSend_copy(homeUUIDsManagedByCurrentDevice);

  os_unfair_lock_unlock(&selfCopy->_lock);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke;
  v52[3] = &unk_278685BA0;
  v18 = v17;
  v53 = v18;
  v19 = [v8 na_filter:v52];
  v20 = [v19 na_map:&__block_literal_global_53_167334];
  v21 = MEMORY[0x277CBEB98];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke_3;
  v49[3] = &unk_278685B48;
  v22 = v18;
  v50 = v22;
  v40 = v8;
  v51 = v40;
  v23 = [v11 na_filter:v49];
  v24 = [v21 setWithArray:v23];

  v25 = [v24 na_map:&__block_literal_global_56_167336];
  os_unfair_lock_lock_with_options();
  homeUUIDsManagedByCurrentDevice2 = [(HMDSiriEndpointSettingsSyncManager *)selfCopy homeUUIDsManagedByCurrentDevice];
  [homeUUIDsManagedByCurrentDevice2 unionSet:v20];

  homeUUIDsManagedByCurrentDevice3 = [(HMDSiriEndpointSettingsSyncManager *)selfCopy homeUUIDsManagedByCurrentDevice];
  [homeUUIDsManagedByCurrentDevice3 minusSet:v25];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = v19;
  v29 = [v28 countByEnumeratingWithState:&v45 objects:v67 count:16];
  if (v29)
  {
    v30 = *v46;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v28);
        }

        [(HMDSiriEndpointSettingsSyncManager *)selfCopy _beginManagingHome:*(*(&v45 + 1) + 8 * j)];
      }

      v29 = [v28 countByEnumeratingWithState:&v45 objects:v67 count:16];
    }

    while (v29);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = v24;
  v33 = [v32 countByEnumeratingWithState:&v41 objects:v66 count:16];
  if (v33)
  {
    v34 = *v42;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [(HMDSiriEndpointSettingsSyncManager *)selfCopy _stopManagingHome:*(*(&v41 + 1) + 8 * k)];
      }

      v33 = [v32 countByEnumeratingWithState:&v41 objects:v66 count:16];
    }

    while (v33);
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138544130;
    v59 = v39;
    v60 = 2112;
    v61 = v32;
    v62 = 2112;
    v63 = v28;
    v64 = 2112;
    v65 = v22;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Updated homes for siri endpoint setting sync by removing: %@ and adding: %@ to existing homes: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v36);
}

uint64_t __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  if ([v4 containsObject:v5])
  {
    v6 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)unregisterFromAccessoryNotificationsOnHapAccessory:(id)accessory
{
  accessoryCopy = accessory;
  notificationCenter = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:accessoryCopy];

  notificationCenter2 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:@"HMDHAPMediaProfileAddedNotification" object:accessoryCopy];
}

- (void)registerForAccessoryNotificationsOnHapAccessory:(id)accessory
{
  accessoryCopy = accessory;
  notificationCenter = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleAccessoryIsReachableNotification_ name:@"HMDAccessoryIsReachableNotification" object:accessoryCopy];

  notificationCenter2 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleHAPMediaProfileAddedNotification_ name:@"HMDHAPMediaProfileAddedNotification" object:accessoryCopy];
}

- (void)_stopManagingAccessory:(id)accessory forHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke;
  v15[3] = &unk_278680A10;
  v16 = homeCopy;
  v17 = accessoryCopy;
  v10 = accessoryCopy;
  v11 = homeCopy;
  v12 = [v9 na_map:v15];

  subscriptionProvider = [(HMDSiriEndpointSettingsSyncManager *)self subscriptionProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke_2;
  v14[3] = &unk_27868A250;
  v14[4] = self;
  [subscriptionProvider unregisterConsumer:self topicFilters:v12 completion:v14];

  [(HMDSiriEndpointSettingsSyncManager *)self unregisterFromAccessoryNotificationsOnHapAccessory:v10];
}

id __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = MEMORY[0x22AAD2730](v5, v6, v4);

  return v7;
}

void __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Unsubscribed endpoint setting sync manager with result: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_beginManagingAccessory:(id)accessory forHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke;
  v21[3] = &unk_278680A10;
  v10 = homeCopy;
  v22 = v10;
  v11 = accessoryCopy;
  v23 = v11;
  v12 = [v9 na_map:v21];

  [(HMDSiriEndpointSettingsSyncManager *)self unregisterFromAccessoryNotificationsOnHapAccessory:v11];
  [(HMDSiriEndpointSettingsSyncManager *)self registerForAccessoryNotificationsOnHapAccessory:v11];
  subscriptionProvider = [(HMDSiriEndpointSettingsSyncManager *)self subscriptionProvider];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke_2;
  v17[3] = &unk_278688E48;
  v17[4] = self;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [subscriptionProvider registerConsumer:self topicFilters:v16 completion:v17];
}

id __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = MEMORY[0x22AAD2730](v5, v6, v4);

  return v7;
}

void __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = HMFBooleanToString();
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Subscribed endpoint setting sync manager for changed topics (%@) with result: %@ (%@)", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 32);
  v14 = [*(a1 + 48) uuid];
  v15 = [*(a1 + 56) uuid];
  [v13 _synchronizeSettingsForAccessoryUUID:v14 homeUUID:v15];
}

- (void)_stopManagingHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  hapAccessories = [homeCopy hapAccessories];
  v7 = [hapAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        siriEndpointProfile = [v11 siriEndpointProfile];

        if (siriEndpointProfile)
        {
          [(HMDSiriEndpointSettingsSyncManager *)self _stopManagingAccessory:v11 forHome:homeCopy];
        }
      }

      v8 = [hapAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_beginManagingHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  hapAccessories = [homeCopy hapAccessories];
  v7 = [hapAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        siriEndpointProfile = [v11 siriEndpointProfile];

        if (siriEndpointProfile)
        {
          [(HMDSiriEndpointSettingsSyncManager *)self _beginManagingAccessory:v11 forHome:homeCopy];
        }
      }

      v8 = [hapAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)configure
{
  notificationCenter = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

  notificationCenter2 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

  notificationCenter3 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

  notificationCenter4 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter4 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

  notificationCenter5 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter5 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter6 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter6 addObserver:self selector:sel_handleSiriEndPointAddedNotification_ name:@"HMDSiriEndpointProfileAddedNotification" object:0];

  notificationCenter7 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter7 addObserver:self selector:sel_handleCompositeSettingsControllerDidConfigureNotification_ name:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0];

  notificationCenter8 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter8 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:0];

  notificationCenter9 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [notificationCenter9 addObserver:self selector:sel_handleHomeAddedNotification_ name:@"HMDHomeAddedNotification" object:0];

  workQueue = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDSiriEndpointSettingsSyncManager_configure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (HMDSiriEndpointSettingsSyncManager)initWithDataSource:(id)source subscriptionProvider:(id)provider notificationCenter:(id)center workQueue:(id)queue
{
  sourceCopy = source;
  providerCopy = provider;
  centerCopy = center;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = HMDSiriEndpointSettingsSyncManager;
  v14 = [(HMDSiriEndpointSettingsSyncManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_dataSource, sourceCopy);
    objc_storeStrong(&v15->_subscriptionProvider, provider);
    v16 = [MEMORY[0x277CBEB58] set];
    homeUUIDsManagedByCurrentDevice = v15->_homeUUIDsManagedByCurrentDevice;
    v15->_homeUUIDsManagedByCurrentDevice = v16;

    objc_storeStrong(&v15->_notificationCenter, center);
    objc_storeStrong(&v15->_workQueue, queue);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_167360 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_167360, &__block_literal_global_38_167361);
  }

  v3 = logCategory__hmf_once_v1_167362;

  return v3;
}

void __49__HMDSiriEndpointSettingsSyncManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_167362;
  logCategory__hmf_once_v1_167362 = v0;
}

+ (NSArray)siriEndPointHomeKitBackedKeyPaths
{
  if (siriEndPointHomeKitBackedKeyPaths_onceToken != -1)
  {
    dispatch_once(&siriEndPointHomeKitBackedKeyPaths_onceToken, &__block_literal_global_167367);
  }

  v3 = siriEndPointHomeKitBackedKeyPaths_siriEndPointHomeKitBackedKeyPaths;

  return v3;
}

void __71__HMDSiriEndpointSettingsSyncManager_siriEndPointHomeKitBackedKeyPaths__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"root.siri.lightWhenUsingSiri";
  v2[1] = @"root.siri.soundAlert";
  v2[2] = @"root.airPlay.airPlayEnabled";
  v2[3] = @"root.siri.siriEnabled";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = siriEndPointHomeKitBackedKeyPaths_siriEndPointHomeKitBackedKeyPaths;
  siriEndPointHomeKitBackedKeyPaths_siriEndPointHomeKitBackedKeyPaths = v0;
}

@end