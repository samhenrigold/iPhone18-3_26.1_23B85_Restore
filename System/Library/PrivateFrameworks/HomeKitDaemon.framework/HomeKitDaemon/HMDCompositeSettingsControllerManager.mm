@interface HMDCompositeSettingsControllerManager
+ (id)immutableSettingFromFetchReturn:(id)return;
+ (id)logCategory;
- (HMDCompositeSettingsControllerManager)initWithDataSource:(id)source;
- (HMDCompositeSettingsControllerManager)initWithDataSource:(id)source registry:(id)registry controllerFactory:(id)factory stateManagerFactory:(id)managerFactory logEventSubmitter:(id)submitter;
- (HMDCompositeSettingsControllerManagerDataSource)dataSource;
- (NSArray)homes;
- (id)dataSourceIsCurrentDevicePrimaryResidentForHomeUUID:(void *)d;
- (void)_createSettingControllerForAccessory:(id)accessory homeUUID:(id)d;
- (void)_manageCharacteristicsBackedSettingsChangeForHomeUUID:(void *)d accessoryUUID:;
- (void)_postSettingUpdatesIfDifferentWithHome:(void *)home uuid:(void *)uuid settings:(void *)settings metadata:;
- (void)_publishCharacteristicBackedSettingsChangeForHomeUUID:(void *)d accessoryUUID:(void *)iD allowHeySiri:(void *)siri tapToAccess:;
- (void)_updateLanguageEventIfNeededWithHome:(void *)home uuid:;
- (void)accessorySettingsLocalMessageHandler:(id)handler didReceiveFetchRequestMessage:(id)message withHomeUUID:(id)d accessoryUUID:(id)iD keyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege siriAvailableLanguagesSetting:(id)self0;
- (void)accessorySettingsLocalMessageHandler:(id)handler didReceiveUpdateRequestMessage:(id)message withHomeUUID:(id)d accessoryUUID:(id)iD keyPath:(id)path value:(id)value callerVersion:(id)version;
- (void)applyOnboardingSelections:(id)selections accessoryUUID:(id)d homeUUID:(id)iD completion:(id)completion;
- (void)didConfigureCompositeSettingsControllerForHomeUUID:(id)d accessoryUUID:(id)iD;
- (void)didUpdateCurrentRunState:(int64_t)state updatedState:(int64_t)updatedState forHome:(id)home;
- (void)didUpdateSiriEndpointSettingForHomeUUID:(id)d accessoryUUID:(id)iD;
- (void)languagesDidChangeForHome:(id)home;
- (void)localFetchSettingsForUUID:(id)d homeUUID:(id)iD withKeyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege completion:(id)completion;
- (void)localFetchSettingsForUUID:(id)d homeUUID:(id)iD withKeyPaths:(id)paths completion:(id)completion;
- (void)localUpdateSettingForUUID:(id)d homeUUID:(id)iD keyPath:(id)path value:(id)value callerVersion:(id)version completion:(id)completion;
- (void)localUpdateSettingForUUID:(id)d homeUUID:(id)iD keyPath:(id)path value:(id)value completion:(id)completion;
- (void)removeHomeZone:(id)zone;
- (void)settingsController:(id)controller didUpdateSettings:(id)settings metadata:(id)metadata;
@end

@implementation HMDCompositeSettingsControllerManager

- (HMDCompositeSettingsControllerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NSArray)homes
{
  dataSource = [(HMDCompositeSettingsControllerManager *)self dataSource];
  homes = [dataSource homes];

  return homes;
}

- (void)languagesDidChangeForHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = homeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling languages changed for homeUUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v9, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HMDCompositeSettingsControllerManager_languagesDidChangeForHome___block_invoke;
  v12[3] = &unk_27868A750;
  v12[4] = selfCopy;
  v13 = homeCopy;
  v11 = homeCopy;
  dispatch_async(Property, v12);
}

void __67__HMDCompositeSettingsControllerManager_languagesDidChangeForHome___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) stringToCompositeSettingsController];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 homeUUID];
        LODWORD(v9) = [v9 hmf_isEqualToUUID:v10];

        if (v9)
        {
          v11 = *(a1 + 32);
          v12 = [v8 homeUUID];
          v13 = [v8 uuid];
          [(HMDCompositeSettingsControllerManager *)v11 _updateLanguageEventIfNeededWithHome:v12 uuid:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_updateLanguageEventIfNeededWithHome:(void *)home uuid:
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  homeCopy = home;
  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
    dispatch_assert_queue_V2(Property);
    dataSource = [self dataSource];
    eventStoreReadHandle = [dataSource eventStoreReadHandle];
    stateManager = [self stateManager];
    v12 = [stateManager stateForHomeUUID:v5];

    if (v12 == 3 && eventStoreReadHandle)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v14 = v13;
      eventSourceForCompositeSettingsController = [dataSource eventSourceForCompositeSettingsController];
      v16 = [dataSource languageListProviderForHomeUUID:v5];
      languageValueList = [v16 languageValueList];
      v18 = languageValueList;
      v19 = MEMORY[0x277CBEBF8];
      if (languageValueList)
      {
        v19 = languageValueList;
      }

      v20 = v19;

      if ([v20 count])
      {
        v44 = MEMORY[0x22AAD2730](v5, homeCopy, @"root.siri.availableLanguages");
        v21 = [eventStoreReadHandle lastEventForTopic:?];
        v40 = v21;
        v41 = eventSourceForCompositeSettingsController;
        if (v21)
        {
          v45 = 0;
          v22 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v21 error:&v45];
          v23 = v45;
          if (v23)
          {
            v42 = v22;
            context = objc_autoreleasePoolPush();
            selfCopy = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              *buf = 138543874;
              v47 = v26;
              v48 = 2112;
              v49 = v44;
              v50 = 2112;
              v51 = v23;
              _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Error reading stored setting for topic %@, error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            eventSourceForCompositeSettingsController = v41;
            v22 = v42;
          }
        }

        else
        {
          v22 = 0;
        }

        v31 = [objc_alloc(MEMORY[0x277CD1B00]) initWithKeyPath:@"root.siri.availableLanguages" readOnly:1 languageValues:v20];
        v32 = v31;
        if (!v22 || ([v31 isEqual:v22] & 1) == 0)
        {
          v43 = v22;
          v33 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543874;
            v47 = v36;
            v48 = 2112;
            v49 = v44;
            v50 = 2112;
            v51 = v32;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Updating language event for topic %@, with Value: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v33);
          eventSourceForCompositeSettingsController = v41;
          v37 = [objc_alloc(MEMORY[0x277CD1AD8]) initWithSetting:v32 eventSource:v41 eventTimestamp:v14];
          eventForwarder = [dataSource eventForwarder];
          [eventForwarder forwardEvent:v37 topic:v44 completion:&__block_literal_global_121_228573];

          v22 = v43;
        }
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Not checking for need to post language events because this device is not the primary resident.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
    }
  }
}

- (void)didUpdateCurrentRunState:(int64_t)state updatedState:(int64_t)updatedState forHome:(id)home
{
  v36 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138544130;
    v29 = v12;
    v30 = 2048;
    stateCopy = state;
    v32 = 2048;
    updatedStateCopy = updatedState;
    v34 = 2112;
    v35 = homeCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@CurrentState: %ld, UpdatedState: %ld, Home:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  dataSource = [(HMDCompositeSettingsControllerManager *)selfCopy dataSource];
  homes = [dataSource homes];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __87__HMDCompositeSettingsControllerManager_didUpdateCurrentRunState_updatedState_forHome___block_invoke;
  v26[3] = &unk_278685BA0;
  v15 = homeCopy;
  v27 = v15;
  v16 = [homes na_firstObjectPassingTest:v26];

  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      stateCopy = v15;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Home not found %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v17, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDCompositeSettingsControllerManager_didUpdateCurrentRunState_updatedState_forHome___block_invoke_144;
  block[3] = &unk_27868A750;
  block[4] = selfCopy;
  v25 = v16;
  v23 = v16;
  dispatch_async(Property, block);
}

uint64_t __87__HMDCompositeSettingsControllerManager_didUpdateCurrentRunState_updatedState_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void __87__HMDCompositeSettingsControllerManager_didUpdateCurrentRunState_updatedState_forHome___block_invoke_144(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v1)
  {
    goto LABEL_42;
  }

  Property = objc_getProperty(v1, v2, 24, 1);
  dispatch_assert_queue_V2(Property);
  v5 = [v1 stateManager];
  v6 = [v3 uuid];
  v7 = [v5 stateForHomeUUID:v6];

  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_42;
      }

      v8 = 0;
      goto LABEL_15;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = v1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v12;
      v72 = 2048;
      v73 = 1;
      v13 = "%{public}@Not creating controllers for state %ld";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      goto LABEL_42;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = v1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v12;
      v13 = "%{public}@In uninitialized/Unknown state";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 12;
LABEL_12:
      _os_log_impl(&dword_229538000, v14, v15, v13, buf, v16);
    }

LABEL_13:

    objc_autoreleasePoolPop(v9);
    goto LABEL_42;
  }

  v8 = 1;
LABEL_15:
  v17 = objc_autoreleasePoolPush();
  v18 = v1;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v20;
    v72 = 2048;
    v73 = v7;
    v74 = 2112;
    v75 = v3;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@creating controller for state %ld, home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = v3;
  v23 = objc_getProperty(v18, v22, 24, 1);
  dispatch_assert_queue_V2(v23);
  if (v8)
  {
    v51 = v21;
    v52 = v3;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v24 = [v18 stringToCompositeSettingsController];
    v25 = [v24 objectEnumerator];

    obj = v25;
    v56 = [v25 countByEnumeratingWithState:&v65 objects:buf count:16];
    if (v56)
    {
      v54 = *v66;
      v55 = v18;
      do
      {
        v26 = 0;
        do
        {
          if (*v66 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v58 = v26;
          v27 = *(*(&v65 + 1) + 8 * v26);
          v28 = +[HMDCompositeSettingsAccessorySettingsModel allKeyPaths];
          v29 = +[HMDHomeKitVersion currentVersion];
          v57 = v27;
          v30 = [v27 fetchSynchronousSettingsForKeyPaths:v28 callerVersion:v29 callerPrivilege:3];

          v31 = [MEMORY[0x277CBEB38] dictionary];
          v32 = [MEMORY[0x277CBEB38] dictionary];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v33 = v30;
          v34 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v62;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v62 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v61 + 1) + 8 * i);
                v39 = [v38 setting];
                v40 = [v38 metadata];
                v41 = [v38 metadata];
                v42 = [v41 keyPath];

                if (v39)
                {
                  v43 = v40 == 0;
                }

                else
                {
                  v43 = 1;
                }

                if (!v43 && v42 != 0)
                {
                  [v31 setObject:v39 forKeyedSubscript:v42];
                  [v32 setObject:v40 forKeyedSubscript:v42];
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v35);
          }

          v45 = [v57 homeUUID];
          v46 = [v57 uuid];
          v18 = v55;
          [(HMDCompositeSettingsControllerManager *)v55 _postSettingUpdatesIfDifferentWithHome:v45 uuid:v46 settings:v31 metadata:v32];

          v26 = v58 + 1;
        }

        while (v58 + 1 != v56);
        v56 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
      }

      while (v56);
    }

    v21 = v51;
    v3 = v52;
  }

  v47 = [v21 accessories];
  v48 = [v47 na_filter:&__block_literal_global_152_228585];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __87__HMDCompositeSettingsControllerManager__actualScanHomeAndCreateControllers_isPrimary___block_invoke_2;
  v59[3] = &unk_278682298;
  v59[4] = v18;
  v49 = v21;
  v60 = v49;
  v50 = [v48 na_map:v59];

LABEL_42:
}

- (void)_postSettingUpdatesIfDifferentWithHome:(void *)home uuid:(void *)uuid settings:(void *)settings metadata:
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a2;
  homeCopy = home;
  uuidCopy = uuid;
  settingsCopy = settings;
  if (self)
  {
    Property = objc_getProperty(self, v11, 24, 1);
    dispatch_assert_queue_V2(Property);
    dataSource = [self dataSource];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v15 = v14;
    eventSourceForCompositeSettingsController = [dataSource eventSourceForCompositeSettingsController];
    v52 = dataSource;
    eventStoreReadHandle = [dataSource eventStoreReadHandle];
    stateManager = [self stateManager];
    v17 = [stateManager stateForHomeUUID:v9];

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138544130;
      v69 = v21;
      v70 = 2112;
      v71 = eventStoreReadHandle;
      v72 = 2048;
      v73 = [uuidCopy count];
      v74 = 2048;
      v75 = v17;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Posting updates with eventStoreHandle:%@, for settings count:%lu, with run state:%ld", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    if (v17 == 3 && eventStoreReadHandle)
    {
      v54 = selfCopy;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v50 = uuidCopy;
      obj = uuidCopy;
      v58 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v58)
      {
        v55 = *v64;
        v53 = v9;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v64 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v63 + 1) + 8 * i);
            v24 = [obj objectForKeyedSubscript:v23];
            v25 = MEMORY[0x22AAD2730](v9, homeCopy, v23);
            v26 = [eventStoreReadHandle lastEventForTopic:v25];
            v61 = v26;
            if (v26)
            {
              v62 = 0;
              v27 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v26 error:&v62];
              v28 = v62;
              if (v28)
              {
                v29 = objc_autoreleasePoolPush();
                v30 = v54;
                v31 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v33 = v32 = v24;
                  *buf = 138543874;
                  v69 = v33;
                  v70 = 2112;
                  v71 = v25;
                  v72 = 2112;
                  v73 = v28;
                  _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Error reading stored setting for topic %@, error: %@", buf, 0x20u);

                  v24 = v32;
                }

                objc_autoreleasePoolPop(v29);
                v9 = v53;
              }
            }

            else
            {
              v27 = 0;
            }

            v34 = [HMDCompositeSettingOperationResult alloc];
            v35 = [settingsCopy objectForKeyedSubscript:v23];
            v36 = v24;
            v37 = [(HMDCompositeSettingOperationResult *)v34 initWithKeyPath:v23 setting:v24 metadata:v35 error:0];
            v38 = [HMDCompositeSettingsControllerManager immutableSettingFromFetchReturn:v37];

            if (v27 && [v27 isEqual:v38])
            {
              v39 = objc_autoreleasePoolPush();
              v40 = v54;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = HMFGetLogIdentifier();
                *buf = 138543874;
                v69 = v42;
                v70 = 2112;
                v71 = homeCopy;
                v72 = 2112;
                v73 = v23;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Skip sending event for accessory %@ setting %@ as it matches stored", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v39);
              v9 = v53;
            }

            else
            {
              v43 = [objc_alloc(MEMORY[0x277CD1AD8]) initWithSetting:v38 eventSource:eventSourceForCompositeSettingsController eventTimestamp:v15];
              eventForwarder = [v52 eventForwarder];
              [eventForwarder forwardEvent:v43 topic:v25 completion:&__block_literal_global_118_228600];
            }
          }

          v58 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
        }

        while (v58);
      }

      v45 = objc_autoreleasePoolPush();
      v46 = v54;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = HMFBooleanToString();
        *buf = 138543618;
        v69 = v48;
        v70 = 2112;
        v71 = v49;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Diff from persistent store?: %@, skipping all updates", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v45);
      [(HMDCompositeSettingsControllerManager *)v46 _updateLanguageEventIfNeededWithHome:v9 uuid:homeCopy];
      uuidCopy = v50;
    }
  }
}

uint64_t __87__HMDCompositeSettingsControllerManager__actualScanHomeAndCreateControllers_isPrimary___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    v8 = [v3 uuid];

    if (v8)
    {
      v9 = [v3 uuid];
      [v9 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v26 = *buf;
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 1040;
    *&buf[14] = 16;
    *&buf[18] = 2096;
    *&buf[20] = &v26;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating controller for: %{uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 40) uuid];
  v11 = [v3 uuid];
  v12 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [*(a1 + 32) stringToCompositeSettingsController];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v10, v11];
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      *&buf[24] = v10;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@controller for uuid:%@, homeUUID:%@ already exists", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = [*(a1 + 40) uuid];
    [v22 _createSettingControllerForAccessory:v14 homeUUID:v23];
  }

  return 0;
}

BOOL __87__HMDCompositeSettingsControllerManager__actualScanHomeAndCreateControllers_isPrimary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 siriEndpointProfile];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didUpdateSiriEndpointSettingForHomeUUID:(id)d accessoryUUID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  stateManager = [(HMDCompositeSettingsControllerManager *)self stateManager];
  v9 = [stateManager stateForHomeUUID:dCopy];

  if (v9 == 3)
  {
    if (self)
    {
      Property = objc_getProperty(self, v10, 24, 1);
    }

    else
    {
      Property = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__HMDCompositeSettingsControllerManager_didUpdateSiriEndpointSettingForHomeUUID_accessoryUUID___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v17 = dCopy;
    v18 = iDCopy;
    dispatch_async(Property, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = dCopy;
      v23 = 2112;
      v24 = iDCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Ignoring siri endpoint setting update as we are not the primary resident for home:%@ accessory:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_manageCharacteristicsBackedSettingsChangeForHomeUUID:(void *)d accessoryUUID:
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dCopy = d;
  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
    dispatch_assert_queue_V2(Property);
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2112;
      v53 = dCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@managing characteristic backed settings for home:%@, accessory:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    dataSource = [selfCopy dataSource];
    siriEndpointBridge = [dataSource siriEndpointBridge];

    if (siriEndpointBridge)
    {
      v15 = [siriEndpointBridge readValueValueForAccessoryUUID:dCopy homeUUID:v5 forKeyPath:@"root.siri.allowHeySiri"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      v51 = siriEndpointBridge;
      v18 = [siriEndpointBridge readValueValueForAccessoryUUID:dCopy homeUUID:v5 forKeyPath:@"root.siri.tapToAccess"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      bOOLValue = [(HMDCompositeBoolSetting *)v17 BOOLValue];
      bOOLValue2 = [v20 BOOLValue];

      if (v17)
      {
        v23 = [HMDCompositeBoolSetting alloc];
        v24 = +[HMDHomeKitVersion version7];
        v25 = +[HMDHomeKitVersion version7];
        v17 = [(HMDCompositeBoolSetting *)v23 initWithValue:bOOLValue readVersion:v24 writeVersion:v25];
      }

      if (v20)
      {
        v26 = [HMDCompositeBoolSetting alloc];
        v27 = +[HMDHomeKitVersion version7];
        v28 = +[HMDHomeKitVersion version7];
        v29 = [(HMDCompositeBoolSetting *)v26 initWithValue:bOOLValue2 readVersion:v27 writeVersion:v28];
      }

      else
      {
        v29 = 0;
      }

      v34 = v5;
      v35 = dCopy;
      v36 = v17;
      v37 = v29;
      v39 = objc_getProperty(selfCopy, v38, 24, 1);
      dispatch_assert_queue_V2(v39);
      if (v36 && v37 && ![(HMDCompositeBoolSetting *)v36 BOOLValue]&& ![(HMDCompositeBoolSetting *)v37 BOOLValue])
      {
        v44 = objc_autoreleasePoolPush();
        v45 = selfCopy;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v47;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Setting Siri enabled to NO", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v44);
        v48 = [[HMDCompositeSettingBoolValue alloc] initWithValue:0];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __134__HMDCompositeSettingsControllerManager__processCharacteristicBackedSettingsChangeForHomeUUID_accessoryUUID_allowHeySiri_tapToAccess___block_invoke;
        v53 = &unk_278682228;
        v54 = v45;
        v49 = v34;
        v55 = v49;
        v50 = v35;
        v56 = v50;
        v57 = v36;
        v58 = v37;
        [v45 localUpdateSettingForUUID:v50 homeUUID:v49 keyPath:@"root.siri.siriEnabled" value:v48 completion:buf];
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v43;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Not transforming allowHeySiri and tapToAccess settings", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        [(HMDCompositeSettingsControllerManager *)v41 _publishCharacteristicBackedSettingsChangeForHomeUUID:v34 accessoryUUID:v35 allowHeySiri:v36 tapToAccess:v37];
      }

      siriEndpointBridge = v51;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Nil siriEndpointBridge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }
  }
}

void __134__HMDCompositeSettingsControllerManager__processCharacteristicBackedSettingsChangeForHomeUUID_accessoryUUID_allowHeySiri_tapToAccess___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = a1[4];
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = 138544130;
    v15 = v13;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Siri enabled setting update returned result:%@, home:%@ accessory:%@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDCompositeSettingsControllerManager *)a1[4] _publishCharacteristicBackedSettingsChangeForHomeUUID:a1[6] accessoryUUID:a1[7] allowHeySiri:a1[8] tapToAccess:?];
}

- (void)_publishCharacteristicBackedSettingsChangeForHomeUUID:(void *)d accessoryUUID:(void *)iD allowHeySiri:(void *)siri tapToAccess:
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dCopy = d;
  iDCopy = iD;
  siriCopy = siri;
  if (self)
  {
    stringToCompositeSettingsController = [self stringToCompositeSettingsController];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, dCopy];
    v15 = [stringToCompositeSettingsController objectForKey:dCopy];

    if (v15)
    {
      v54 = @"root.siri.siriEnabled";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v17 = +[HMDHomeKitVersion currentVersion];
      v18 = [v15 fetchSynchronousSettingsForKeyPaths:v16 callerVersion:v17 callerPrivilege:3];

      if ([v18 count] && (objc_msgSend(v18, "firstObject"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "setting"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
      {
        firstObject = [v18 firstObject];
        setting = [firstObject setting];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = setting;
        }

        else
        {
          v23 = 0;
        }

        v52 = v23;

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v51 = iDCopy;
        v53 = siriCopy;
        if (iDCopy)
        {
          v24 = [HMDCompositeBoolSetting alloc];
          if ([iDCopy BOOLValue])
          {
            bOOLValue = [v52 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v35 = +[HMDHomeKitVersion version7];
          v36 = +[HMDHomeKitVersion version7];
          v48 = [(HMDCompositeBoolSetting *)v24 initWithValue:bOOLValue readVersion:v35 writeVersion:v36];

          v37 = [HMDCompositeSettingMetadata alloc];
          v38 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
          v47 = [(HMDCompositeSettingMetadata *)v37 initWithKeyPath:@"root.siri.allowHeySiri" constraint:0 privileges:v38];

          siriCopy = v53;
        }

        else
        {
          v48 = 0;
          v47 = 0;
        }

        if (siriCopy)
        {
          v39 = [HMDCompositeBoolSetting alloc];
          if ([siriCopy BOOLValue])
          {
            bOOLValue2 = [v52 BOOLValue];
          }

          else
          {
            bOOLValue2 = 0;
          }

          v43 = +[HMDHomeKitVersion version7];
          v44 = +[HMDHomeKitVersion version7];
          v41 = [(HMDCompositeBoolSetting *)v39 initWithValue:bOOLValue2 readVersion:v43 writeVersion:v44];

          v45 = [HMDCompositeSettingMetadata alloc];
          v46 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
          v42 = [(HMDCompositeSettingMetadata *)v45 initWithKeyPath:@"root.siri.tapToAccess" constraint:0 privileges:v46];
        }

        else
        {
          v41 = 0;
          v42 = 0;
        }

        [dictionary setObject:v48 forKeyedSubscript:@"root.siri.allowHeySiri"];
        [dictionary setObject:v41 forKeyedSubscript:@"root.siri.tapToAccess"];
        [dictionary2 setObject:v47 forKeyedSubscript:@"root.siri.allowHeySiri"];
        [dictionary2 setObject:v42 forKeyedSubscript:@"root.siri.tapToAccess"];
        [(HMDCompositeSettingsControllerManager *)self _postSettingUpdatesIfDifferentWithHome:v9 uuid:dCopy settings:dictionary metadata:dictionary2];

        iDCopy = v51;
        siriCopy = v53;
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v30 = v29 = siriCopy;
          *buf = 138543618;
          v56 = v30;
          v57 = 2112;
          v58 = v18;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch SiriEnabled setting operation result:%@", buf, 0x16u);

          siriCopy = v29;
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v34;
        v57 = 2112;
        v58 = v9;
        v59 = 2112;
        v60 = dCopy;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@No controller for home:%@ accessory:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }
  }
}

- (void)didConfigureCompositeSettingsControllerForHomeUUID:(id)d accessoryUUID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  stateManager = [(HMDCompositeSettingsControllerManager *)self stateManager];
  v9 = [stateManager stateForHomeUUID:dCopy];

  if (v9 == 3)
  {
    if (self)
    {
      Property = objc_getProperty(self, v10, 24, 1);
    }

    else
    {
      Property = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__HMDCompositeSettingsControllerManager_didConfigureCompositeSettingsControllerForHomeUUID_accessoryUUID___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v17 = dCopy;
    v18 = iDCopy;
    dispatch_async(Property, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = dCopy;
      v23 = 2112;
      v24 = iDCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Ignoring composite setting controller configuration update as we are not the primary resident for home:%@ accessory:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)removeHomeZone:(id)zone
{
  zoneCopy = zone;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCompositeSettingsControllerManager_removeHomeZone___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = zoneCopy;
  v7 = zoneCopy;
  dispatch_async(Property, v8);
}

void __56__HMDCompositeSettingsControllerManager_removeHomeZone___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v6 = [objc_opt_class() zoneNameForHomeUUID:v2];
    v4 = objc_getProperty(v1, v3, 16, 1);
    [v4 removeZoneWithZoneName:v6 uuid:v2 workQueue:{objc_getProperty(v1, v5, 24, 1)}];
  }
}

- (void)applyOnboardingSelections:(id)selections accessoryUUID:(id)d homeUUID:(id)iD completion:(id)completion
{
  selectionsCopy = selections;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v13, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMDCompositeSettingsControllerManager_applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke;
  block[3] = &unk_278688978;
  block[4] = self;
  v21 = selectionsCopy;
  v22 = dCopy;
  v23 = iDCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = iDCopy;
  v18 = dCopy;
  v19 = selectionsCopy;
  dispatch_async(Property, block);
}

void __101__HMDCompositeSettingsControllerManager_applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v10 = v8;
  if (!v1)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v6)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (v8)
  {
    Property = objc_getProperty(v1, v9, 24, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke;
    block[3] = &unk_278688978;
    block[4] = v1;
    v14 = v7;
    v17 = v10;
    v15 = v6;
    v16 = v5;
    dispatch_async(Property, block);

LABEL_7:
    return;
  }

LABEL_11:
  v12 = _HMFPreconditionFailure();
  __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke(v12);
}

void __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke(id *a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] stateManager];
  v3 = [v2 stateForHomeUUID:a1[5]];

  if (v3 != 3)
  {
    v50 = objc_autoreleasePoolPush();
    v51 = a1[4];
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543362;
      v93 = v53;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Device is not a primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v50);
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
    v54 = *(a1[8] + 2);
    goto LABEL_12;
  }

  v4 = [a1[4] stringToCompositeSettingsController];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a1[5], a1[6]];
  v6 = [v4 objectForKey:v5];

  if (!v6 || ([v6 configured] & 1) == 0)
  {
    v55 = objc_autoreleasePoolPush();
    v56 = a1[4];
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v93 = v58;
      _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Controller is not created or not configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v55);
    v54 = *(a1[8] + 2);
LABEL_12:
    v54();
    goto LABEL_13;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
  v8 = HMDThreadNetworkStabilityLogEvent;
  v9 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v10 = HMDThreadNetworkStabilityLogEvent;
  v11 = [[HMDCompositeSettingBoolValue alloc] initWithValue:1];
  v12 = [(HMDCompositeSettingsKeyPathValueItem *)v9 initWithKeyPath:@"root.siriEndpoint.enabled" value:v11];
  [v7 addObject:v12];

  v13 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v14 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] allowHeySiri]);
  v15 = [(HMDCompositeSettingsKeyPathValueItem *)v13 initWithKeyPath:@"root.siri.siriEnabled" value:v14];
  [v7 addObject:v15];

  v16 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v17 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] isAirPlayEnabled]);
  v18 = [(HMDCompositeSettingsKeyPathValueItem *)v16 initWithKeyPath:@"root.airPlay.airPlayEnabled" value:v17];
  [v7 addObject:v18];

  v19 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v20 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] isExplicitContentAllowed]);
  v21 = [(HMDCompositeSettingsKeyPathValueItem *)v19 initWithKeyPath:@"root.music.allowExplicitContent" value:v20];
  [v7 addObject:v21];

  v22 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v23 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] isShareSiriAnalyticsEnabled]);
  v24 = [(HMDCompositeSettingsKeyPathValueItem *)v22 initWithKeyPath:@"root.general.analytics.shareSiriAnalytics" value:v23];
  [v7 addObject:v24];

  v25 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v26 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] isDoorbellChimeEnabled]);
  v27 = [(HMDCompositeSettingsKeyPathValueItem *)v25 initWithKeyPath:@"root.doorbellChime.enabled" value:v26];
  [v7 addObject:v27];

  v28 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v29 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] isLightWhenUsingSiriEnabled]);
  v30 = [(HMDCompositeSettingsKeyPathValueItem *)v28 initWithKeyPath:@"root.siri.lightWhenUsingSiri" value:v29];
  [v7 addObject:v30];

  v31 = [HMDCompositeSettingsKeyPathValueItem alloc];
  v32 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [a1[7] isAnnounceEnabled]);
  v33 = [(HMDCompositeSettingsKeyPathValueItem *)v31 initWithKeyPath:@"root.announce.enabled" value:v32];
  v81 = v7;
  [v7 addObject:v33];

  v34 = [a1[7] languageValue];

  if (v34)
  {
    v35 = [HMDCompositeSettingLanguageValue alloc];
    v79 = [a1[7] languageValue];
    v36 = [v79 inputLanguageCode];
    v37 = [a1[7] languageValue];
    v38 = [v37 outputVoiceLanguageCode];
    v39 = [a1[7] languageValue];
    v40 = [v39 outputVoiceGenderCode];
    v41 = [a1[7] languageValue];
    v42 = [v41 voiceName];
    v43 = v35;
    v44 = v6;
    v45 = v36;
    v46 = [(HMDCompositeSettingLanguageValue *)v43 initWithInputLanguage:v36 outputVoiceLanguageCode:v38 outputVoiceGenderCode:v40 voiceName:v42];

    v10 = HMDThreadNetworkStabilityLogEvent;
    v47 = v46;
    v48 = v45;
    v6 = v44;
    v49 = v79;

    v8 = HMDThreadNetworkStabilityLogEvent;
  }

  else
  {
    v49 = [MEMORY[0x277CD1798] defaultLanguageValue];
    v59 = [HMDCompositeSettingLanguageValue alloc];
    v48 = [v49 inputLanguageCode];
    v37 = [v49 outputVoiceLanguageCode];
    v38 = [v49 outputVoiceGenderCode];
    v39 = [v49 voiceName];
    v47 = [(HMDCompositeSettingLanguageValue *)v59 initWithInputLanguage:v48 outputVoiceLanguageCode:v37 outputVoiceGenderCode:v38 voiceName:v39];
  }

  v80 = v47;
  v60 = [objc_alloc(&v8[72]) initWithKeyPath:@"root.siri.language" value:v47];
  [v81 addObject:v60];

  v61 = +[HMDHomeKitVersion currentVersion];
  v62 = [objc_alloc(&v10[71]) initWithValue:{objc_msgSend(a1[7], "allowHeySiri")}];
  v63 = [a1[4] dataSource];
  v64 = [v63 siriEndpointBridge];
  v66 = a1[5];
  v65 = a1[6];
  v91 = 0;
  v67 = [v64 siriEndpointCertificationReasonForAccessoryUUID:v65 homeUUID:v66 error:&v91];
  v68 = v91;

  if (v68)
  {
    v69 = objc_autoreleasePoolPush();
    v70 = a1[4];
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v72;
      v94 = 2112;
      v95 = v68;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Error while checking certification status error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v69);
  }

  v74 = a1[5];
  v73 = a1[6];
  v75 = a1[4];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke_131;
  v82[3] = &unk_278682200;
  v90 = v67;
  v82[4] = v75;
  v89 = a1[8];
  v83 = a1[6];
  v84 = a1[5];
  v85 = v62;
  v6 = v6;
  v86 = v6;
  v87 = v81;
  v88 = v61;
  v76 = v61;
  v77 = v81;
  v78 = v62;
  [v75 localUpdateSettingForUUID:v73 homeUUID:v74 keyPath:@"root.siri.allowHeySiri" value:v78 completion:v82];

LABEL_13:
}

void __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke_131(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 error];

  if (v10)
  {
    v11 = [HMDCompositeSettingsControllerManagerOnboardingLogEvent alloc];
    v12 = [v7 error];
    v13 = [(HMDCompositeSettingsControllerManagerOnboardingLogEvent *)v11 initWithError:v12 siriEndpointCertificationReason:*(a1 + 96)];

    v14 = [*(a1 + 32) logEventSubmitter];
    [v14 submitLogEvent:v13];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 error];
      *buf = 138543618;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Applying onboarding selections to controller failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = *(a1 + 88);
    v21 = [v7 error];
    (*(v20 + 16))(v20, v21, 1);
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v25 = *(a1 + 48);
    v24 = *(a1 + 56);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke_133;
    v27[3] = &unk_2786821D8;
    v26 = *(a1 + 88);
    v32 = *(a1 + 96);
    v27[4] = v22;
    v31 = v26;
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v30 = *(a1 + 80);
    [v22 localUpdateSettingForUUID:v23 homeUUID:v25 keyPath:@"root.siri.tapToAccess" value:v24 completion:v27];
  }
}

void __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke_133(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 error];

  if (v10)
  {
    v11 = [HMDCompositeSettingsControllerManagerOnboardingLogEvent alloc];
    v12 = [v7 error];
    v13 = [(HMDCompositeSettingsControllerManagerOnboardingLogEvent *)v11 initWithError:v12 siriEndpointCertificationReason:*(a1 + 72)];

    v14 = [*(a1 + 32) logEventSubmitter];
    [v14 submitLogEvent:v13];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 error];
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Applying onboarding selections to controller failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = *(a1 + 64);
    v21 = [v7 error];
    (*(v20 + 16))(v20, v21, 1);
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v25 = *(a1 + 56);
    v24 = *(a1 + 64);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke_134;
    v27[3] = &unk_2786821B0;
    v26 = *(a1 + 32);
    v29 = *(a1 + 72);
    v27[4] = v26;
    v28 = v24;
    [v22 updateSettingsForKeyPaths:v23 callerVersion:v25 completion:v27];
  }
}

void __102__HMDCompositeSettingsControllerManager__applyOnboardingSelections_accessoryUUID_homeUUID_completion___block_invoke_134(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  v5 = [HMDCompositeSettingsControllerManagerOnboardingLogEvent alloc];
  v6 = v5;
  if (v4)
  {
    v7 = [v3 error];
    v8 = [(HMDCompositeSettingsControllerManagerOnboardingLogEvent *)v6 initWithError:v7 siriEndpointCertificationReason:*(a1 + 48)];

    v9 = [*(a1 + 32) logEventSubmitter];
    [v9 submitLogEvent:v8];

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v3 error];
      v22 = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Applying onboarding selections to controller failed with error: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = *(a1 + 40);
    v16 = [v3 error];
    (*(v15 + 16))(v15, v16, 1);
  }

  else
  {
    v8 = [(HMDCompositeSettingsControllerManagerOnboardingLogEvent *)v5 initWithError:0 siriEndpointCertificationReason:*(a1 + 48)];
    v17 = [*(a1 + 32) logEventSubmitter];
    [v17 submitLogEvent:v8];

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Applying onboarding selections to controller successful", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)settingsController:(id)controller didUpdateSettings:(id)settings metadata:(id)metadata
{
  metadataCopy = metadata;
  settingsCopy = settings;
  controllerCopy = controller;
  homeUUID = [controllerCopy homeUUID];
  uuid = [controllerCopy uuid];

  [(HMDCompositeSettingsControllerManager *)self _postSettingUpdatesIfDifferentWithHome:homeUUID uuid:uuid settings:settingsCopy metadata:metadataCopy];
}

- (void)localUpdateSettingForUUID:(id)d homeUUID:(id)iD keyPath:(id)path value:(id)value completion:(id)completion
{
  completionCopy = completion;
  valueCopy = value;
  pathCopy = path;
  iDCopy = iD;
  dCopy = d;
  v17 = +[HMDHomeKitVersion currentVersion];
  [(HMDCompositeSettingsControllerManager *)self localUpdateSettingForUUID:dCopy homeUUID:iDCopy keyPath:pathCopy value:valueCopy callerVersion:v17 completion:completionCopy];
}

- (void)localUpdateSettingForUUID:(id)d homeUUID:(id)iD keyPath:(id)path value:(id)value callerVersion:(id)version completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  valueCopy = value;
  versionCopy = version;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v19, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__HMDCompositeSettingsControllerManager_localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke;
  block[3] = &unk_2786873D8;
  block[4] = self;
  v29 = dCopy;
  v30 = iDCopy;
  v31 = pathCopy;
  v32 = valueCopy;
  v33 = versionCopy;
  v34 = completionCopy;
  v22 = completionCopy;
  v23 = versionCopy;
  v24 = valueCopy;
  v25 = pathCopy;
  v26 = iDCopy;
  v27 = dCopy;
  dispatch_async(Property, block);
}

void __115__HMDCompositeSettingsControllerManager_localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke(uint64_t a1)
{
  v79[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v71 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v70 = v5;
  v11 = v6;
  if (v1)
  {
    Property = objc_getProperty(v1, v10, 24, 1);
    dispatch_assert_queue_V2(Property);
    if (v71)
    {
      if (v7)
      {
        if (v8)
        {
          if (v9)
          {
            if (v70)
            {
              if (v11)
              {
                v13 = [(HMDCompositeSettingsControllerManager *)v1 dataSourceIsCurrentDevicePrimaryResidentForHomeUUID:v7];
                v14 = v13;
                if (!v13 || ([v13 BOOLValue] & 1) == 0)
                {
                  v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Not a primary resident" reason:0 suggestion:0];
                  v32 = objc_autoreleasePoolPush();
                  v33 = v1;
                  v34 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v69 = v7;
                    v36 = v35 = v9;
                    *buf = 138543618;
                    *&buf[4] = v36;
                    *&buf[12] = 2112;
                    *&buf[14] = v17;
                    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);

                    v9 = v35;
                    v7 = v69;
                  }

                  objc_autoreleasePoolPop(v32);
                  v19 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v8 setting:0 metadata:0 error:v17];
                  v11[2](v11, v19, v71, v7);
                  goto LABEL_25;
                }

                v68 = v9;
                v15 = [v1 stringToCompositeSettingsController];
                v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, v71];
                v17 = [v15 objectForKey:v16];

                v66 = v17;
                if (!v17)
                {
                  v67 = v14;
                  v37 = objc_autoreleasePoolPush();
                  v38 = v1;
                  v39 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    v40 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    *&buf[4] = v40;
                    *&buf[12] = 2112;
                    *&buf[14] = v71;
                    *&buf[22] = 2112;
                    v73 = v7;
                    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unconfigured controller for uuid:%@, home:%@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v37);
                  v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
                  v41 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v8 setting:0 metadata:0 error:v19];
                  v11[2](v11, v41, v71, v7);

                  v17 = 0;
                  v14 = v67;
                  v9 = v68;
                  goto LABEL_25;
                }

                v18 = [v1 dataSource];
                v19 = [v18 siriEndpointBridge];

                if (([v8 isEqualToString:@"root.siri.tapToAccess"] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"root.siri.allowHeySiri"))
                {
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke_2_113;
                  v73 = &unk_278682188;
                  *&v74[16] = v11;
                  *v74 = v71;
                  *&v74[8] = v7;
                  v9 = v68;
                  [v17 updateSettingForKeyPath:v8 value:v68 callerVersion:v70 completion:buf];

LABEL_25:
                  goto LABEL_26;
                }

                v20 = objc_autoreleasePoolPush();
                v21 = v1;
                v22 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  v23 = HMFGetLogIdentifier();
                  *buf = 138544386;
                  *&buf[4] = v23;
                  *&buf[12] = 2112;
                  *&buf[14] = v7;
                  *&buf[22] = 2112;
                  v73 = v71;
                  *v74 = 2112;
                  *&v74[2] = v8;
                  *&v74[10] = 2112;
                  *&v74[12] = v68;
                  _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Characteristic backed keyPath update for home:%@, accessory:%@, keyPath:%@, value:%@", buf, 0x34u);
                }

                objc_autoreleasePoolPop(v20);
                v24 = v68;
                objc_opt_class();
                v25 = objc_opt_isKindOfClass() & 1;
                if (v25)
                {
                  v26 = v24;
                }

                else
                {
                  v26 = 0;
                }

                v27 = v26;

                if (!v25)
                {
                  v42 = v21;
                  v43 = v27;
                  v44 = v24;
                  contexta = objc_autoreleasePoolPush();
                  v45 = v42;
                  v46 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v47 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    *&buf[4] = v47;
                    *&buf[12] = 2112;
                    *&buf[14] = v44;
                    _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Invalid BOOL value:%@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(contexta);
                  v48 = [HMDCompositeSettingOperationResult alloc];
                  v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43 userInfo:0];
                  v50 = [(HMDCompositeSettingOperationResult *)v48 initWithKeyPath:v8 setting:0 metadata:0 error:v49];

                  v27 = v43;
                  goto LABEL_42;
                }

                if ([v24 BOOLValue])
                {
                  if (v19)
                  {
                    v62 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:1];
                    *buf = MEMORY[0x277D85DD0];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke;
                    v73 = &unk_278682160;
                    v28 = v8;
                    *v74 = v28;
                    context = v79;
                    v79[0] = v11;
                    v27 = v24;
                    v29 = v71;
                    *&v74[8] = v29;
                    v30 = v7;
                    *&v74[16] = v30;
                    v75 = v66;
                    v76 = v27;
                    v77 = v70;
                    v78 = v21;
                    [(HMDCompositeSettingOperationResult *)v19 writeSettingValue:v62 accessoryUUID:v29 homeUUID:v30 forKeyPath:v28 completionHandler:buf];

                    v31 = v75;
LABEL_36:

LABEL_43:
                    v17 = v66;
                    v9 = v68;
                    goto LABEL_25;
                  }

                  v53 = [HMDCompositeSettingOperationResult alloc];
                  v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27 userInfo:0];
                  v50 = [(HMDCompositeSettingOperationResult *)v53 initWithKeyPath:v8 setting:0 metadata:0 error:v54];

                  v55 = objc_autoreleasePoolPush();
                  v56 = v21;
                  v57 = HMFGetOSLogHandle();
                  if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_41;
                  }
                }

                else
                {
                  if (v19)
                  {
                    v31 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v24, "BOOLValue")}];
                    *buf = MEMORY[0x277D85DD0];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke_112;
                    v73 = &unk_27868A528;
                    v51 = v8;
                    *v74 = v51;
                    context = &v75;
                    v75 = v11;
                    v27 = v24;
                    v52 = v71;
                    *&v74[8] = v52;
                    *&v74[16] = v7;
                    [(HMDCompositeSettingOperationResult *)v19 writeSettingValue:v31 accessoryUUID:v52 homeUUID:*&v74[16] forKeyPath:v51 completionHandler:buf];
                    goto LABEL_36;
                  }

                  v58 = [HMDCompositeSettingOperationResult alloc];
                  v59 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27 userInfo:0];
                  v50 = [(HMDCompositeSettingOperationResult *)v58 initWithKeyPath:v8 setting:0 metadata:0 error:v59];

                  v55 = objc_autoreleasePoolPush();
                  v56 = v21;
                  v57 = HMFGetOSLogHandle();
                  if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_41;
                  }
                }

                HMFGetLogIdentifier();
                contextb = v56;
                v61 = v60 = v55;
                *buf = 138543362;
                *&buf[4] = v61;
                _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@No Siri endpoint bridge", buf, 0xCu);

                v55 = v60;
                v56 = contextb;
LABEL_41:

                objc_autoreleasePoolPop(v55);
LABEL_42:
                v11[2](v11, v50, v71, v7);

                goto LABEL_43;
              }

LABEL_49:
              _HMFPreconditionFailure();
            }

LABEL_48:
            _HMFPreconditionFailure();
            goto LABEL_49;
          }

LABEL_47:
          _HMFPreconditionFailure();
          goto LABEL_48;
        }

LABEL_46:
        _HMFPreconditionFailure();
        goto LABEL_47;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
    goto LABEL_46;
  }

LABEL_26:
}

- (id)dataSourceIsCurrentDevicePrimaryResidentForHomeUUID:(void *)d
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dataSource = [d dataSource];
  if (dataSource)
  {
    stateManager = [d stateManager];
    v6 = [stateManager stateForHomeUUID:v3] == 3;

    v7 = [MEMORY[0x277D0F788] BOOLeanWithBool:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    dCopy = d;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine current device is primary resident due to no data source", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

void __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:*(a1 + 32) setting:0 metadata:0 error:v3];
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a1 + 72);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke_2;
    v10[3] = &unk_278682138;
    v8 = *(a1 + 32);
    v9 = *(a1 + 80);
    v11 = v8;
    v12 = v9;
    v13 = *(a1 + 48);
    v14 = *(a1 + 40);
    v15 = *(a1 + 88);
    [v6 updateSettingForKeyPath:@"root.siri.siriEnabled" value:v5 callerVersion:v7 completion:v10];
  }
}

void __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke_112(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:*(a1 + 32) setting:0 metadata:0 error:v12];
  }

  else
  {
    v4 = [HMDCompositeBoolSetting alloc];
    v5 = +[HMDHomeKitVersion version7];
    v6 = +[HMDHomeKitVersion version7];
    v7 = [(HMDCompositeBoolSetting *)v4 initWithValue:0 readVersion:v5 writeVersion:v6];

    v8 = [HMDCompositeSettingMetadata alloc];
    v9 = *(a1 + 32);
    v10 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
    v11 = [(HMDCompositeSettingMetadata *)v8 initWithKeyPath:v9 constraint:0 privileges:v10];

    v3 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:*(a1 + 32) setting:v7 metadata:v11 error:0];
  }

  (*(*(a1 + 56) + 16))();
}

void __116__HMDCompositeSettingsControllerManager__localUpdateSettingForUUID_homeUUID_keyPath_value_callerVersion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = [HMDCompositeSettingOperationResult alloc];
    v6 = *(a1 + 32);
    v7 = [v3 error];

    v11 = [(HMDCompositeSettingOperationResult *)v5 initWithKeyPath:v6 setting:0 metadata:0 error:v7];
  }

  else
  {
    [(HMDCompositeSettingsControllerManager *)*(a1 + 40) _manageCharacteristicsBackedSettingsChangeForHomeUUID:*(a1 + 56) accessoryUUID:?];
    v8 = [HMDCompositeSettingOperationResult alloc];
    v9 = *(a1 + 32);
    v7 = [v3 setting];
    v10 = [v3 metadata];

    v11 = [(HMDCompositeSettingOperationResult *)v8 initWithKeyPath:v9 setting:v7 metadata:v10 error:0];
  }

  (*(*(a1 + 64) + 16))();
}

- (void)localFetchSettingsForUUID:(id)d homeUUID:(id)iD withKeyPaths:(id)paths completion:(id)completion
{
  completionCopy = completion;
  pathsCopy = paths;
  iDCopy = iD;
  dCopy = d;
  v14 = +[HMDHomeKitVersion currentVersion];
  [(HMDCompositeSettingsControllerManager *)self localFetchSettingsForUUID:dCopy homeUUID:iDCopy withKeyPaths:pathsCopy callerVersion:v14 callerPrivilege:3 completion:completionCopy];
}

- (void)localFetchSettingsForUUID:(id)d homeUUID:(id)iD withKeyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  pathsCopy = paths;
  versionCopy = version;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v18, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__HMDCompositeSettingsControllerManager_localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege_completion___block_invoke;
  block[3] = &unk_2786820E8;
  block[4] = self;
  v27 = dCopy;
  v28 = iDCopy;
  v29 = pathsCopy;
  v31 = completionCopy;
  privilegeCopy = privilege;
  v30 = versionCopy;
  v21 = completionCopy;
  v22 = versionCopy;
  v23 = pathsCopy;
  v24 = iDCopy;
  v25 = dCopy;
  dispatch_async(Property, block);
}

void __130__HMDCompositeSettingsControllerManager_localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege_completion___block_invoke(uint64_t a1)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v53 = *(a1 + 40);
  v7 = v3;
  v56 = v4;
  v9 = v5;
  if (v2)
  {
    Property = objc_getProperty(v2, v8, 24, 1);
    dispatch_assert_queue_V2(Property);
    v11 = [(HMDCompositeSettingsControllerManager *)v2 dataSourceIsCurrentDevicePrimaryResidentForHomeUUID:v7];
    v12 = v11;
    if (v11 && ([v11 BOOLValue] & 1) != 0)
    {
      v13 = [v2 stringToCompositeSettingsController];
      v14 = v53;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, v53];
      v16 = [v13 objectForKey:v15];

      v52 = v16;
      if (v16)
      {
        v54 = [v56 na_filter:&__block_literal_global_228672];
        if ([v54 count])
        {
          v64[0] = @"root.siri.siriEnabled";
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
          v18 = [v16 fetchSynchronousSettingsForKeyPaths:v17 callerVersion:v9 callerPrivilege:v6];
        }

        else
        {
          v18 = 0;
        }

        v50 = v6;
        v51 = v18;
        if ([v18 count])
        {
          v33 = [v18 firstObject];
          v34 = [v33 setting];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;

          v37 = [v36 BOOLValue];
        }

        else
        {
          v37 = 0;
        }

        v38 = objc_autoreleasePoolPush();
        v39 = v2;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v49 = v38;
          v42 = v41 = v37;
          v43 = HMFBooleanToString();
          *buf = 138544130;
          *&buf[4] = v42;
          *&buf[12] = 2112;
          *&buf[14] = v43;
          *&buf[22] = 2112;
          v60 = v53;
          LOWORD(v61) = 2112;
          *(&v61 + 2) = v7;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Siri is enabled:%@ for owner:%@, home:%@", buf, 0x2Au);

          v37 = v41;
          v38 = v49;
        }

        objc_autoreleasePoolPop(v38);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke_87;
        v60 = &unk_278682110;
        *&v61 = v39;
        *(&v61 + 1) = v53;
        v62 = v7;
        v63 = v37;
        v44 = [v54 na_map:buf];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke_2_92;
        v57[3] = &unk_278684F48;
        v26 = v54;
        v58 = v26;
        v45 = [v56 na_filter:v57];
        v46 = [MEMORY[0x277CBEB18] array];
        if ([v45 count])
        {
          v47 = [v52 fetchSynchronousSettingsForKeyPaths:v45 callerVersion:v9 callerPrivilege:v50];
          v48 = [v47 mutableCopy];

          v14 = v53;
          v46 = v48;
        }

        [v46 na_safeAddObjectsFromArray:v44];
        v55 = objc_msgSend_copy(v46);

        v32 = v51;
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v2;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v53;
          *&buf[22] = 2112;
          v60 = v7;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unconfigured controller for uuid:%@, home:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke_84;
        v60 = &unk_278686D38;
        *&v61 = v31;
        v26 = v31;
        v55 = [v56 na_map:buf];
        v32 = v61;
      }

      v25 = v52;
    }

    else
    {
      v19 = v9;
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Not a primary resident" reason:0 suggestion:0];
      v21 = objc_autoreleasePoolPush();
      v22 = v2;
      v23 = HMFGetOSLogHandle();
      v14 = v53;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138544130;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        *&buf[22] = 2112;
        v60 = v53;
        LOWORD(v61) = 2112;
        *(&v61 + 2) = v7;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Error: %@, owner:%@, home:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke;
      v60 = &unk_278686D38;
      *&v61 = v20;
      v25 = v20;
      v55 = [v56 na_map:buf];
      v26 = v61;
      v9 = v19;
    }
  }

  else
  {
    v55 = 0;
    v14 = v53;
  }

  (*(*(a1 + 72) + 16))();
}

HMDCompositeSettingOperationResult *__120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:0 metadata:0 error:*(a1 + 32)];

  return v4;
}

HMDCompositeSettingOperationResult *__120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:0 metadata:0 error:*(a1 + 32)];

  return v4;
}

HMDCompositeSettingOperationResult *__120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 siriEndpointBridge];
  v6 = [v5 readValueValueForAccessoryUUID:*(a1 + 40) homeUUID:*(a1 + 48) forKeyPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [HMDCompositeBoolSetting alloc];
    if ([v8 BOOLValue])
    {
      v10 = *(a1 + 56);
    }

    else
    {
      v10 = 0;
    }

    v14 = +[HMDHomeKitVersion version7];
    v15 = +[HMDHomeKitVersion version7];
    v12 = [(HMDCompositeBoolSetting *)v9 initWithValue:v10 & 1 readVersion:v14 writeVersion:v15];

    v16 = [HMDCompositeSettingMetadata alloc];
    v17 = [[HMDCompositeSettingPrivileges alloc] initWithMinReadUserPrivilege:4];
    v18 = [(HMDCompositeSettingMetadata *)v16 initWithKeyPath:v3 constraint:0 privileges:v17];

    v13 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:v12 metadata:v18 error:0];
  }

  else
  {
    v11 = [HMDCompositeSettingOperationResult alloc];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:74];
    v13 = [(HMDCompositeSettingOperationResult *)v11 initWithKeyPath:v3 setting:0 metadata:0 error:v12];
  }

  return v13;
}

uint64_t __120__HMDCompositeSettingsControllerManager__localFetchSettingsForUUID_homeUUID_withKeyPaths_callerVersion_callerPrivilege___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"root.siri.tapToAccess"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"root.siri.allowHeySiri"];
  }

  return v3;
}

- (void)_createSettingControllerForAccessory:(id)accessory homeUUID:(id)d
{
  v61 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  if (!self)
  {
    goto LABEL_26;
  }

  for (i = objc_getProperty(self, v7, 24, 1); ; i = 0)
  {
    dispatch_assert_queue_V2(i);
    stateManager = [(HMDCompositeSettingsControllerManager *)self stateManager];
    v11 = [stateManager stateForHomeUUID:dCopy];

    if ((v11 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        uuid = [accessoryCopy uuid];
        *buf = 138543874;
        v52 = v15;
        v53 = 2112;
        v54 = uuid;
        v55 = 2112;
        v56 = dCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Current state is not resident or primary resident for owner:%@, home:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_23;
    }

    if (!dCopy)
    {
      _HMFPreconditionFailure();
      goto LABEL_25;
    }

    uuid2 = [accessoryCopy uuid];

    if (uuid2)
    {
      break;
    }

LABEL_25:
    _HMFPreconditionFailure();
LABEL_26:
    ;
  }

  if (self)
  {
    Property = objc_getProperty(self, v18, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v20 = Property;
  uuid3 = [accessoryCopy uuid];
  if (self)
  {
    v23 = objc_getProperty(self, v21, 24, 1);
    v24 = [objc_opt_class() zoneNameForHomeUUID:dCopy];
    [v20 createDatabaseAdapterIfNotExistForUUID:uuid3 homeUUID:dCopy accessory:accessoryCopy workQueue:v23 zoneName:v24];

    v26 = objc_getProperty(self, v25, 16, 1);
  }

  else
  {
    v50 = [objc_opt_class() zoneNameForHomeUUID:dCopy];
    [v20 createDatabaseAdapterIfNotExistForUUID:uuid3 homeUUID:dCopy accessory:accessoryCopy workQueue:0 zoneName:v50];

    v26 = 0;
  }

  v27 = v26;
  uuid4 = [accessoryCopy uuid];
  v29 = [v27 databaseAdapterForUUID:uuid4];

  if (v11 == 3)
  {
    if (self)
    {
      v30 = [&unk_283E75BF0 arrayByAddingObjectsFromArray:&unk_283E75C08];
      v32 = objc_getProperty(self, v31, 32, 1);
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = v32;
    v34 = objc_opt_class();
    uuid5 = [accessoryCopy uuid];
    v36 = (*(v32 + 2))(v33, v29, v34, dCopy, uuid5, v30);

    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      uuid6 = [accessoryCopy uuid];
      *buf = 138544386;
      v52 = v40;
      v53 = 2112;
      v54 = v36;
      v55 = 2112;
      v56 = uuid6;
      v57 = 2112;
      v58 = dCopy;
      v59 = 2112;
      v60 = v30;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Created setting controller %@ for owner:%@ home:%@ blocklist: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v37);
    stringToCompositeSettingsController = [(HMDCompositeSettingsControllerManager *)selfCopy2 stringToCompositeSettingsController];
    uuid7 = [accessoryCopy uuid];
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", dCopy, uuid7];
    [stringToCompositeSettingsController setObject:v36 forKey:v44];
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      uuid8 = [accessoryCopy uuid];
      *buf = 138543874;
      v52 = v48;
      v53 = 2112;
      v54 = uuid8;
      v55 = 2112;
      v56 = dCopy;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Current state is not primary resident for owner:%@, home:%@ so skipping controller creation", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v45);
  }

LABEL_23:
}

- (HMDCompositeSettingsControllerManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(HMDCompositeSettingsOwnerToDatabaseAdapterRegistry);
  v6 = +[HMDMetricsManager sharedLogEventSubmitter];
  v7 = [(HMDCompositeSettingsControllerManager *)self initWithDataSource:sourceCopy registry:v5 controllerFactory:0 stateManagerFactory:0 logEventSubmitter:v6];

  return v7;
}

- (HMDCompositeSettingsControllerManager)initWithDataSource:(id)source registry:(id)registry controllerFactory:(id)factory stateManagerFactory:(id)managerFactory logEventSubmitter:(id)submitter
{
  sourceCopy = source;
  registryCopy = registry;
  factoryCopy = factory;
  managerFactoryCopy = managerFactory;
  submitterCopy = submitter;
  if (sourceCopy)
  {
    v17 = submitterCopy;
    v46.receiver = self;
    v46.super_class = HMDCompositeSettingsControllerManager;
    v18 = [(HMDCompositeSettingsControllerManager *)&v46 init];
    if (!v18)
    {
LABEL_9:

      return v18;
    }

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    stringToCompositeSettingsController = v18->_stringToCompositeSettingsController;
    v18->_stringToCompositeSettingsController = strongToStrongObjectsMapTable;

    objc_storeWeak(&v18->_dataSource, sourceCopy);
    workQueue = [sourceCopy workQueue];
    workQueue = v18->_workQueue;
    v18->_workQueue = workQueue;

    objc_storeStrong(&v18->_registry, registry);
    v23 = _Block_copy(factoryCopy);
    compositeSettingsControllerFactory = v18->_compositeSettingsControllerFactory;
    v18->_compositeSettingsControllerFactory = v23;

    objc_storeStrong(&v18->_logEventSubmitter, submitter);
    if (factoryCopy)
    {
      if (managerFactoryCopy)
      {
LABEL_5:
        uuid = [sourceCopy uuid];
        v26 = (*(managerFactoryCopy + 2))(managerFactoryCopy, uuid);
        stateManager = v18->_stateManager;
        v18->_stateManager = v26;
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      objc_initWeak(&location, v18);
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __125__HMDCompositeSettingsControllerManager_initWithDataSource_registry_controllerFactory_stateManagerFactory_logEventSubmitter___block_invoke;
      v43 = &unk_2786820C0;
      objc_copyWeak(&v44, &location);
      v28 = _Block_copy(&v40);
      v29 = v18->_compositeSettingsControllerFactory;
      v18->_compositeSettingsControllerFactory = v28;

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
      if (managerFactoryCopy)
      {
        goto LABEL_5;
      }
    }

    v30 = [HMDCompositeSettingControllerManagerStateManager alloc];
    uuid = [MEMORY[0x277CCAB98] defaultCenter];
    stateManager = [sourceCopy uuid];
    v31 = [(HMDCompositeSettingControllerManagerStateManager *)v30 initWithDataSource:v18 notificationRegistrationProvider:uuid subscribeWithOptions:15 delegate:v18 uuid:stateManager];
    v32 = v18->_stateManager;
    v18->_stateManager = v31;

    goto LABEL_8;
  }

  v34 = _HMFPreconditionFailure();
  return __125__HMDCompositeSettingsControllerManager_initWithDataSource_registry_controllerFactory_stateManagerFactory_logEventSubmitter___block_invoke(v34, v35, v36, v37, v38, v39);
}

HMDCompositeSettingsController *__125__HMDCompositeSettingsControllerManager_initWithDataSource_registry_controllerFactory_stateManagerFactory_logEventSubmitter___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [[HMDCompositeSettingsController alloc] initWithDatabaseAdapter:v14 model:a3 homeUUID:v13 ownerUUID:v12 settingKeyPathBlockList:v11];

  [(HMDCompositeSettingsController *)v16 setDelegate:WeakRetained];
  [(HMDCompositeSettingsController *)v16 start];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t35_228727 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t35_228727, &__block_literal_global_138_228728);
  }

  v3 = logCategory__hmf_once_v36_228729;

  return v3;
}

void __52__HMDCompositeSettingsControllerManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v36_228729;
  logCategory__hmf_once_v36_228729 = v0;
}

+ (id)immutableSettingFromFetchReturn:(id)return
{
  returnCopy = return;
  setting = [returnCopy setting];
  metadata = [returnCopy metadata];
  if (!setting)
  {
    v12 = 0;
    goto LABEL_30;
  }

  v6 = setting;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ((isKindOfClass & 1) == 0)
  {
    v13 = v6;
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    keyPath3 = v15;

    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x277CD1AE0]);
      keyPath = [returnCopy keyPath];
      stringValue = [v13 stringValue];
      v12 = [v16 initWithKeyPath:keyPath readOnly:0 stringValue:stringValue];
    }

    else
    {
      v45 = v9;
      v19 = v13;
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      keyPath = v21;

      if (v20)
      {
        v44 = keyPath;
        constraint = [metadata constraint];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = constraint;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        v40 = objc_alloc(MEMORY[0x277CD1870]);
        stringValue = [returnCopy keyPath];
        numberValue = [v19 numberValue];
        integerValue = [numberValue integerValue];
        v26 = [v24 max];
        v27 = [v24 min];
        step = [v24 step];

        v12 = [v40 initWithKeyPath:stringValue readOnly:0 integerValue:integerValue maxValue:v26 minValue:v27 valueStepSize:step];
      }

      else
      {
        v29 = v19;
        objc_opt_class();
        v30 = objc_opt_isKindOfClass();
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        stringValue = v31;

        if ((v30 & 1) == 0)
        {
          v12 = 0;
          v9 = v45;
          goto LABEL_28;
        }

        v44 = keyPath;
        v43 = objc_alloc(MEMORY[0x277CD1AF8]);
        keyPath2 = [returnCopy keyPath];
        v39 = objc_alloc(MEMORY[0x277CD1DC0]);
        inputLanguageCode = [v29 inputLanguageCode];
        outputVoiceLanguageCode = [v29 outputVoiceLanguageCode];
        outputVoiceGenderCode = [v29 outputVoiceGenderCode];
        voiceName = [v29 voiceName];
        v36 = [v39 initWithInputLanguageCode:inputLanguageCode outputVoiceLanguageCode:outputVoiceLanguageCode outputVoiceGenderCode:outputVoiceGenderCode voiceName:voiceName];
        v37 = v43;
        numberValue = keyPath2;
        v12 = [v37 initWithKeyPath:keyPath2 readOnly:0 languageValue:v36];
      }

      keyPath = v44;
      v9 = v45;
    }

LABEL_28:

    goto LABEL_29;
  }

  v10 = objc_alloc(MEMORY[0x277CD1868]);
  keyPath3 = [returnCopy keyPath];
  v12 = [v10 initWithKeyPath:keyPath3 readOnly:0 BOOLValue:{objc_msgSend(v6, "BOOLValue")}];
LABEL_29:

LABEL_30:

  return v12;
}

- (void)accessorySettingsLocalMessageHandler:(id)handler didReceiveUpdateRequestMessage:(id)message withHomeUUID:(id)d accessoryUUID:(id)iD keyPath:(id)path value:(id)value callerVersion:(id)version
{
  v54 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  valueCopy = value;
  versionCopy = version;
  dataSource = [(HMDCompositeSettingsControllerManager *)self dataSource];
  v22 = [dataSource settingsControllerForAccessoryUUID:iDCopy homeUUID:dCopy];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      contexta = iDCopy;
      v26 = dCopy;
      v27 = messageCopy;
      v29 = v28 = versionCopy;
      *buf = 138543874;
      v49 = v29;
      v50 = 2114;
      v51 = pathCopy;
      v52 = 2112;
      v53 = valueCopy;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Update using current accessory keyPath: %{public}@, value: %@", buf, 0x20u);

      versionCopy = v28;
      messageCopy = v27;
      dCopy = v26;
      iDCopy = contexta;
    }

    objc_autoreleasePoolPop(v23);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __210__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveUpdateRequestMessage_withHomeUUID_accessoryUUID_keyPath_value_callerVersion___block_invoke;
    v45[3] = &unk_278688D58;
    v45[4] = selfCopy;
    v46 = pathCopy;
    v47 = messageCopy;
    [v22 updateSettingWithKeyPath:v46 settingValue:valueCopy completion:v45];
  }

  else
  {
    v30 = [HMDCompositeSettingValue compositeSettingValueFromImmutableSettingsValue:valueCopy];
    if (v30)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __210__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveUpdateRequestMessage_withHomeUUID_accessoryUUID_keyPath_value_callerVersion___block_invoke_11;
      v43[3] = &unk_278688D80;
      v43[4] = self;
      v44 = messageCopy;
      [(HMDCompositeSettingsControllerManager *)self localUpdateSettingForUUID:iDCopy homeUUID:dCopy keyPath:pathCopy value:v30 callerVersion:versionCopy completion:v43];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v39 = pathCopy;
        v33 = iDCopy;
        v34 = dCopy;
        v35 = messageCopy;
        v37 = v36 = versionCopy;
        *buf = 138543618;
        v49 = v37;
        v50 = 2112;
        v51 = valueCopy;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting due to no composite setting value conversion for setting value: %@", buf, 0x16u);

        versionCopy = v36;
        messageCopy = v35;
        dCopy = v34;
        iDCopy = v33;
        pathCopy = v39;
      }

      objc_autoreleasePoolPop(context);
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [messageCopy respondWithError:v38];
    }
  }
}

void __210__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveUpdateRequestMessage_withHomeUUID_accessoryUUID_keyPath_value_callerVersion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Update %{public}@ result: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 48);
  if (v3)
  {
    [v9 respondWithError:v3];
  }

  else
  {
    [v9 respondWithSuccess];
  }
}

void __210__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveUpdateRequestMessage_withHomeUUID_accessoryUUID_keyPath_value_callerVersion___block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 error];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Update completed with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) respondWithError:v10];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Update complete", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) respondWithSuccess];
  }
}

- (void)accessorySettingsLocalMessageHandler:(id)handler didReceiveFetchRequestMessage:(id)message withHomeUUID:(id)d accessoryUUID:(id)iD keyPaths:(id)paths callerVersion:(id)version callerPrivilege:(unint64_t)privilege siriAvailableLanguagesSetting:(id)self0
{
  v45 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  pathsCopy = paths;
  versionCopy = version;
  settingCopy = setting;
  dataSource = [(HMDCompositeSettingsControllerManager *)self dataSource];
  v23 = [dataSource settingsControllerForAccessoryUUID:iDCopy homeUUID:dCopy];

  if (v23)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v32 = settingCopy;
      v28 = v27 = versionCopy;
      *buf = 138543618;
      v42 = v28;
      v43 = 2114;
      v44 = pathsCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch using current accessory %{public}@", buf, 0x16u);

      versionCopy = v27;
      settingCopy = v32;
    }

    objc_autoreleasePoolPop(v24);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __250__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveFetchRequestMessage_withHomeUUID_accessoryUUID_keyPaths_callerVersion_callerPrivilege_siriAvailableLanguagesSetting___block_invoke;
    v39[3] = &unk_278688CE8;
    v39[4] = selfCopy;
    v40 = messageCopy;
    v29 = messageCopy;
    [v23 fetchSettingsForKeyPaths:pathsCopy completion:v39];
  }

  else
  {
    v30 = [pathsCopy na_filter:&__block_literal_global_272250];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __250__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveFetchRequestMessage_withHomeUUID_accessoryUUID_keyPaths_callerVersion_callerPrivilege_siriAvailableLanguagesSetting___block_invoke_2;
    v34[3] = &unk_278688D30;
    v35 = settingCopy;
    selfCopy2 = self;
    v37 = iDCopy;
    v38 = messageCopy;
    v31 = messageCopy;
    [(HMDCompositeSettingsControllerManager *)self localFetchSettingsForUUID:v37 homeUUID:dCopy withKeyPaths:v30 callerVersion:versionCopy callerPrivilege:privilege completion:v34];

    pathsCopy = v30;
  }
}

void __250__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveFetchRequestMessage_withHomeUUID_accessoryUUID_keyPaths_callerVersion_callerPrivilege_siriAvailableLanguagesSetting___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched settings %@, error: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = objc_alloc_init(MEMORY[0x277CD1C28]);
  v12 = [objc_alloc(MEMORY[0x277CD17A8]) initWithSettings:v5 failureInformation:v11];
  v13 = *(a1 + 40);
  v14 = [v12 payloadCopy];
  [v13 respondWithPayload:v14 error:v6];
}

void __250__HMDCompositeSettingsControllerManager_AccessorySettingsLocalMessageHandlerDelegate__accessorySettingsLocalMessageHandler_didReceiveFetchRequestMessage_withHomeUUID_accessoryUUID_keyPaths_callerVersion_callerPrivilege_siriAvailableLanguagesSetting___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v36 = a3;
  v34 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CD1C28]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [HMDCompositeSettingsControllerManager immutableSettingFromFetchReturn:v15, v34, v36, v37];
        if (v16)
        {
          [v9 addObject:v16];
        }

        else
        {
          v17 = [v15 keyPath];
          [v8 setFetchFailureType:0 forKeyPath:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v12);
  }

  if (*(a1 + 32))
  {
    [v9 addObject:?];
  }

  v18 = [v8 failedKeyPaths];
  v19 = [v18 count];

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 40);
  v22 = HMFGetOSLogHandle();
  v23 = v22;
  if (v19)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 48);
      *buf = 138544130;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v9;
      v47 = 2112;
      v48 = v8;
      v26 = "%{public}@Fetch completed for accessory uuid: %@ settings: %@ failures: %@";
      v27 = v23;
      v28 = OS_LOG_TYPE_ERROR;
      v29 = 42;
LABEL_18:
      _os_log_impl(&dword_229538000, v27, v28, v26, buf, v29);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v30 = *(a1 + 48);
    *buf = 138543874;
    v42 = v24;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v9;
    v26 = "%{public}@Fetch completed for accessory uuid: %@ settings: %@";
    v27 = v23;
    v28 = OS_LOG_TYPE_INFO;
    v29 = 32;
    goto LABEL_18;
  }

  objc_autoreleasePoolPop(v20);
  v31 = [objc_alloc(MEMORY[0x277CD17A8]) initWithSettings:v9 failureInformation:v8];
  v32 = *(a1 + 56);
  v33 = [v31 payloadCopy];
  [v32 respondWithPayload:v33 error:0];
}

@end