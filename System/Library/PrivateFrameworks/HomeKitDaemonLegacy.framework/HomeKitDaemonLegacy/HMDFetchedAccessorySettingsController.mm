@interface HMDFetchedAccessorySettingsController
+ (id)logCategory;
- (HMDFetchedAccessorySettingsController)initWithQueue:(id)queue dataSource:(id)source drivers:(id)drivers;
- (HMDFetchedAccessorySettingsController)initWithQueue:(id)queue dataSource:(id)source drivers:(id)drivers notificationCenter:(id)center;
- (NSNotificationCenter)notificationCenter;
- (id)cachedSettingForKeyPath:(id)path;
- (void)_postNotificationForSettings:(void *)settings;
- (void)_postUpdateEventsIfDifferent:(void *)different;
- (void)_updateCacheWithSettings:(uint64_t)settings;
- (void)applyFetchedSettings:(void *)settings requestedKeyPaths:(void *)paths;
- (void)driver:(id)driver didUpdatePrimaryUserInfo:(id)info;
- (void)driver:(id)driver didUpdateSettings:(id)settings;
- (void)driverDidReload:(id)reload;
- (void)fetchSettingsForKeyPaths:(id)paths completion:(id)completion;
- (void)languageValueListWithCompletion:(id)completion;
- (void)start;
- (void)updateSettingWithKeyPath:(id)path settingValue:(id)value completion:(id)completion;
@end

@implementation HMDFetchedAccessorySettingsController

- (NSNotificationCenter)notificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  return WeakRetained;
}

- (void)driverDidReload:(id)reload
{
  v35 = *MEMORY[0x277D85DE8];
  reloadCopy = reload;
  queue = [(HMDFetchedAccessorySettingsController *)self queue];
  dispatch_assert_queue_V2(queue);

  driverMap = [(HMDFetchedAccessorySettingsController *)self driverMap];
  v8 = driverMap;
  if (driverMap)
  {
    Property = objc_getProperty(driverMap, v7, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke;
  v29[3] = &unk_279732F88;
  v10 = reloadCopy;
  v30 = v10;
  v11 = [Property na_firstObjectPassingTest:v29];

  if (v11 && ([v11 driver], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == v10, v12, v13))
  {
    v18 = MEMORY[0x277CBEB98];
    keyPaths = [v11 keyPaths];
    v20 = [v18 setWithArray:keyPaths];

    pendingFetchKeyPaths = [(HMDFetchedAccessorySettingsController *)self pendingFetchKeyPaths];
    v22 = [pendingFetchKeyPaths setByAddingObjectsFromSet:v20];
    v23 = [v22 mutableCopy];
    [(HMDFetchedAccessorySettingsController *)self setPendingFetchKeyPaths:v23];

    objc_initWeak(buf, self);
    keyPaths2 = [v11 keyPaths];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke_2;
    v26[3] = &unk_279732FB0;
    objc_copyWeak(&v28, buf);
    v25 = v20;
    v27 = v25;
    [v10 fetchSettingsForKeyPaths:keyPaths2 completion:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v17;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Did not find driver in list %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

BOOL __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 driver];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    dispatch_assert_queue_V2(v5);

    [HMDFetchedAccessorySettingsController applyFetchedSettings:v4 requestedKeyPaths:v6];
  }
}

- (void)applyFetchedSettings:(void *)settings requestedKeyPaths:(void *)paths
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__HMDFetchedAccessorySettingsController_applyFetchedSettings_requestedKeyPaths___block_invoke;
  v4[3] = &unk_279732F38;
  v4[4] = settings;
  v3 = [paths na_filter:v4];
  if ([v3 count])
  {
    [(HMDFetchedAccessorySettingsController *)settings _postUpdateEventsIfDifferent:v3];
    [(HMDFetchedAccessorySettingsController *)settings _updateCacheWithSettings:v3];
    [(HMDFetchedAccessorySettingsController *)settings _postNotificationForSettings:v3];
  }
}

uint64_t __80__HMDFetchedAccessorySettingsController_applyFetchedSettings_requestedKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 pendingFetchKeyPaths];
  v5 = [v3 keyPath];

  v6 = [v4 na_safeContainsObject:v5];
  return v6;
}

- (void)_postUpdateEventsIfDifferent:(void *)different
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (different)
  {
    queue = [different queue];
    dispatch_assert_queue_V2(queue);

    dataSource = [different dataSource];
    v45 = [dataSource eventSourceIdentifierNameForFetchedSettingsController:different];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = v6;
    pendingFetchKeyPaths = [different pendingFetchKeyPaths];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = v3;
    obj = v3;
    v47 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (!v47)
    {
      goto LABEL_27;
    }

    v46 = *v51;
    differentCopy = different;
    while (1)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        keyPath = [v9 keyPath];
        if (keyPath)
        {
          v11 = keyPath;
          keyPath2 = [v9 keyPath];
          v13 = [pendingFetchKeyPaths containsObject:keyPath2];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            differentCopy2 = different;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              keyPath3 = [v9 keyPath];
              *buf = 138543618;
              v55 = v17;
              v56 = 2114;
              v57 = keyPath3;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Removing keyPath %{public}@ from pending fetch", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            pendingFetchKeyPaths2 = [differentCopy2 pendingFetchKeyPaths];
            keyPath4 = [v9 keyPath];
            [pendingFetchKeyPaths2 removeObject:keyPath4];
          }
        }

        dataSource2 = [different dataSource];
        keyPath5 = [v9 keyPath];
        v23 = [dataSource2 controller:different topicForKeyPath:keyPath5];

        dataSource3 = [different dataSource];
        eventStoreReadHandle = [dataSource3 eventStoreReadHandle];

        v26 = [eventStoreReadHandle lastEventForTopic:v23];
        if (!v26)
        {
          v27 = 0;
          goto LABEL_24;
        }

        v48 = eventStoreReadHandle;
        v49 = 0;
        v27 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v26 error:&v49];
        v28 = v49;
        if (v28)
        {
          v29 = objc_autoreleasePoolPush();
          differentCopy3 = different;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543874;
            v55 = v32;
            v56 = 2112;
            v57 = v23;
            v58 = 2112;
            v59 = v28;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Error reading stored setting for topic %@, error: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v29);
          different = differentCopy;
        }

        if (!v27 || ![v27 isEqual:v9])
        {
          eventStoreReadHandle = v48;
LABEL_24:
          v38 = [objc_alloc(MEMORY[0x277CD1AD8]) initWithSetting:v9 eventSource:v45 eventTimestamp:v7];
          dataSource4 = [different dataSource];
          eventForwarder = [dataSource4 eventForwarder];
          [eventForwarder forwardEvent:v38 topic:v23 completion:&__block_literal_global_84_175126];

          goto LABEL_25;
        }

        v33 = objc_autoreleasePoolPush();
        differentCopy4 = different;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          keyPath6 = [v9 keyPath];
          *buf = 138543618;
          v55 = v36;
          v56 = 2114;
          v57 = keyPath6;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Skip sending event for keyPath: %{public}@ as it matches stored", buf, 0x16u);

          different = differentCopy;
        }

        objc_autoreleasePoolPop(v33);
        eventStoreReadHandle = v48;
LABEL_25:
      }

      v47 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (!v47)
      {
LABEL_27:

        v3 = v41;
        break;
      }
    }
  }
}

- (void)_updateCacheWithSettings:(uint64_t)settings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (settings)
  {
    os_unfair_lock_lock_with_options();
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = *(settings + 16);
          keyPath = [v8 keyPath];
          [v9 setObject:v8 forKeyedSubscript:keyPath];
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock((settings + 8));
  }
}

- (void)_postNotificationForSettings:(void *)settings
{
  v20 = *MEMORY[0x277D85DE8];
  obj = a2;
  if (settings)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [obj countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          notificationCenter = [settings notificationCenter];
          dataSource = [settings dataSource];
          v17[1] = @"HMDFetchedAccessorySettingsControllerSettingsUpdateNotification";
          v18[0] = v7;
          v17[0] = @"HMDFetchedAccessorySettingsControllerSettingsUpdateNotificationSettingValueCodingKey";
          keyPath = [v7 keyPath];
          v18[1] = keyPath;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
          [notificationCenter postNotificationName:@"HMDFetchedAccessorySettingsControllerSettingsUpdateNotification" object:dataSource userInfo:v11];

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v4);
    }
  }
}

- (void)driver:(id)driver didUpdatePrimaryUserInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  driverCopy = driver;
  infoCopy = info;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Primary user is not supported", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)driver:(id)driver didUpdateSettings:(id)settings
{
  v54 = *MEMORY[0x277D85DE8];
  driverCopy = driver;
  settingsCopy = settings;
  queue = [(HMDFetchedAccessorySettingsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Received setting updates", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  driverMap = [(HMDFetchedAccessorySettingsController *)selfCopy driverMap];
  availableKeyPaths = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)driverMap availableKeyPaths];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __66__HMDFetchedAccessorySettingsController_driver_didUpdateSettings___block_invoke;
  v44[3] = &unk_279732F60;
  v18 = availableKeyPaths;
  v45 = v18;
  v19 = array;
  v46 = v19;
  v20 = array2;
  v47 = v20;
  v21 = [settingsCopy na_filter:v44];
  if ([v20 count])
  {
    v22 = settingsCopy;
    v23 = driverCopy;
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v42 = v19;
      v28 = v27 = v18;
      *buf = 138543618;
      v49 = v28;
      v50 = 2112;
      v51 = v20;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Ignoring updates for unknown keypaths: %@", buf, 0x16u);

      v18 = v27;
      v19 = v42;
    }

    objc_autoreleasePoolPop(v24);
    driverCopy = v23;
    settingsCopy = v22;
  }

  if ([v21 count])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v41 = v18;
      v32 = v43 = driverCopy;
      v33 = settingsCopy;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      *buf = 138543874;
      v49 = v32;
      v50 = 2112;
      v51 = v34;
      v52 = 2112;
      v53 = v35;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Received updates for %@ known key paths and %@ filtered settings", buf, 0x20u);

      settingsCopy = v33;
      v18 = v41;

      driverCopy = v43;
    }

    objc_autoreleasePoolPop(v29);
    v36 = objc_autoreleasePoolPush();
    v37 = v30;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v40 = v39 = v18;
      *buf = 138543874;
      v49 = v40;
      v50 = 2114;
      v51 = v19;
      v52 = 2112;
      v53 = v21;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Received update for keyPaths: %{public}@ settings: %@", buf, 0x20u);

      v18 = v39;
    }

    objc_autoreleasePoolPop(v36);
    [(HMDFetchedAccessorySettingsController *)v37 _updateCacheWithSettings:v21];
    [(HMDFetchedAccessorySettingsController *)v37 _postUpdateEventsIfDifferent:v21];
    [(HMDFetchedAccessorySettingsController *)v37 _postNotificationForSettings:v21];
  }
}

uint64_t __66__HMDFetchedAccessorySettingsController_driver_didUpdateSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 keyPath];
  LODWORD(v3) = [v3 containsObject:v5];

  v6 = 48;
  if (v3)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  v8 = [v4 keyPath];
  [v7 addObject:v8];

  v9 = *(a1 + 32);
  v10 = [v4 keyPath];

  v11 = [v9 containsObject:v10];
  return v11;
}

- (id)cachedSettingForKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_keyPathToSettingCache objectForKeyedSubscript:pathCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)languageValueListWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(HMDFetchedAccessorySettingsController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDFetchedAccessorySettingsController_languageValueListWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __73__HMDFetchedAccessorySettingsController_languageValueListWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) driverMap];
  v2 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v3 objectForKeyedSubscript:?];
  [v2 languageValueListWithCompletion:*(a1 + 40)];
}

- (void)updateSettingWithKeyPath:(id)path settingValue:(id)value completion:(id)completion
{
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  queue = [(HMDFetchedAccessorySettingsController *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMDFetchedAccessorySettingsController_updateSettingWithKeyPath_settingValue_completion___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = pathCopy;
  v17 = valueCopy;
  v18 = completionCopy;
  v12 = valueCopy;
  v13 = completionCopy;
  v14 = pathCopy;
  dispatch_async(queue, v15);
}

void __90__HMDFetchedAccessorySettingsController_updateSettingWithKeyPath_settingValue_completion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) driverMap];
  v4 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v2 availableKeyPaths];
  v5 = [v4 containsObject:*(a1 + 40)];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v36 = 138543618;
      v37 = v10;
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Got setting update request keyPath: %{public}@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = *(a1 + 48);
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

    v15 = *(a1 + 48);
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

    v18 = *(a1 + 48);
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

    if (v14)
    {
      v21 = [*(a1 + 32) driverMap];
      v22 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v21 objectForKeyedSubscript:?];
      [v22 updateSettingWithKeyPath:*(a1 + 40) BOOLSettingValue:v14 completion:*(a1 + 56)];
    }

    else if (v17)
    {
      v21 = [*(a1 + 32) driverMap];
      v22 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v21 objectForKeyedSubscript:?];
      [v22 updateSettingWithKeyPath:*(a1 + 40) integerSettingValue:v17 completion:*(a1 + 56)];
    }

    else
    {
      if (!v20)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = *(a1 + 32);
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = *(a1 + 40);
          v34 = *(a1 + 48);
          v36 = 138543874;
          v37 = v32;
          v38 = 2114;
          v39 = v33;
          v40 = 2112;
          v41 = v34;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Do not support provided type for update keypath: %{public}@ settingValue: %@", &v36, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v35 = *(a1 + 56);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(v35 + 16))(v35, v21);
        goto LABEL_23;
      }

      v21 = [*(a1 + 32) driverMap];
      v22 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v21 objectForKeyedSubscript:?];
      [v22 updateSettingWithKeyPath:*(a1 + 40) languageSettingValue:v20 completion:*(a1 + 56)];
    }

LABEL_23:
    goto LABEL_24;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(a1 + 40);
    v25 = [*(a1 + 32) driverMap];
    v27 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v25 availableKeyPaths];
    v36 = 138543874;
    v37 = v23;
    v38 = 2114;
    v39 = v24;
    v40 = 2114;
    v41 = v27;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Provided keypath: %{public}@ not in available keypaths: %{public}@", &v36, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v28 = *(a1 + 56);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(v28 + 16))(v28, v14);
LABEL_24:
}

- (void)fetchSettingsForKeyPaths:(id)paths completion:(id)completion
{
  pathsCopy = paths;
  completionCopy = completion;
  queue = [(HMDFetchedAccessorySettingsController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = pathsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = pathsCopy;
  dispatch_async(queue, block);
}

void __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke(uint64_t a1)
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v92 = v5;
    v93 = 2114;
    v94 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received fetch request for keyPaths: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v69 = [MEMORY[0x277CBEB18] array];
  v70 = [MEMORY[0x277CBEB18] array];
  v7 = [*(a1 + 32) driverMap];
  v9 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v7 availableKeyPaths];

  v71 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v66 = v9;
  if (([v71 isSubsetOfSet:v9] & 1) == 0)
  {
    v10 = [v71 hmf_removedObjectsFromSet:v9];
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) driverMap];
      v17 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v15 availableKeyPaths];
      *buf = 138543874;
      v92 = v14;
      v93 = 2114;
      v94 = v10;
      v95 = 2114;
      v96 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Some provided keypaths: %{public}@ not in available keypaths: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v70 addObject:v18];
  }

  v19 = dispatch_group_create();
  v20 = [*(a1 + 32) driverMap];
  v65 = a1;
  v21 = *(a1 + 40);
  v63 = v21;
  v64 = v20;
  if (v20)
  {
    v23 = v21;
    v24 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v20 availableKeyPaths];
    v25 = [v24 mutableCopy];

    v26 = [MEMORY[0x277CBEB98] setWithArray:v23];
    v62 = v25;
    v27 = [v25 hmf_removedObjectsFromSet:v26];

    obj = [MEMORY[0x277CBEB18] array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v29 = objc_getProperty(v20, v28, 8, 1);
    v30 = [v29 countByEnumeratingWithState:&v86 objects:buf count:16];
    if (v30)
    {
      v32 = v30;
      v33 = *v87;
      do
      {
        v34 = 0;
        do
        {
          if (*v87 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v86 + 1) + 8 * v34);
          v36 = MEMORY[0x277CBEB98];
          if (v35)
          {
            Property = objc_getProperty(*(*(&v86 + 1) + 8 * v34), v31, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v38 = [v36 setWithArray:Property];
          v39 = [v38 hmf_removedObjectsFromSet:v27];
          v40 = [v39 allObjects];

          if ([v40 count])
          {
            v41 = [HMDFetchedAccessorySettingsControllerKeyPathMapItem alloc];
            v42 = [v35 driver];
            v43 = [(HMDFetchedAccessorySettingsControllerKeyPathMapItem *)v41 initWithDriver:v42 keyPaths:v40];
            [obj addObject:v43];
          }

          ++v34;
        }

        while (v32 != v34);
        v44 = [v29 countByEnumeratingWithState:&v86 objects:buf count:16];
        v32 = v44;
      }

      while (v44);
    }

    v45 = objc_msgSend_copy(obj);
  }

  else
  {
    v45 = 0;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obja = v45;
  v46 = [obja countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v83;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v83 != v48)
        {
          objc_enumerationMutation(obja);
        }

        v50 = *(*(&v82 + 1) + 8 * i);
        dispatch_group_enter(v19);
        v51 = MEMORY[0x277CBEB98];
        v52 = [v50 keyPaths];
        v53 = [v51 setWithArray:v52];
        v54 = [v71 na_setByIntersectingWithSet:v53];
        v55 = [v54 allObjects];

        v56 = [v50 driver];
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_70;
        v78[3] = &unk_279733F88;
        v79 = v69;
        v80 = v70;
        v81 = v19;
        [v56 fetchSettingsForKeyPaths:v55 completion:v78];
      }

      v47 = [obja countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v47);
  }

  v57 = [*(v65 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_2;
  block[3] = &unk_279734668;
  v58 = *(v65 + 32);
  v59 = *(v65 + 40);
  v73 = v70;
  v74 = v58;
  v75 = v59;
  v76 = v69;
  v77 = *(v65 + 48);
  v60 = v69;
  v61 = v70;
  dispatch_group_notify(v19, v57, block);
}

void __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObjectsFromArray:a2];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@At least one of the driver's returned an error setting error on completion", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Finishing fetch request for keyPaths: %{public}@ restuls: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 64) + 16))();
}

- (void)start
{
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LocalSettingsFetch", "", buf, 2u);
  }

  dataSource = [(HMDFetchedAccessorySettingsController *)self dataSource];
  setupActivity = [dataSource setupActivity];
  v7 = setupActivity;
  if (setupActivity)
  {
    *buf = setupActivity;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D0F770]);
    v9 = MEMORY[0x277CCACA8];
    v10 = MEMORY[0x259C01AE0](self, a2);
    v11 = [v9 stringWithFormat:@"%@, %s:%ld", v10, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Media/Media Accessory/Apple/Settings/Fetched Settings/HMDFetchedAccessorySettingsController.m", 184];
    *buf = [v8 initWithName:v11];
  }

  dataSource2 = [(HMDFetchedAccessorySettingsController *)self dataSource];
  currentAccessorySetupMetricDispatcher = [dataSource2 currentAccessorySetupMetricDispatcher];
  [currentAccessorySetupMetricDispatcher markSetupBeginStage:5 error:0];

  queue = [(HMDFetchedAccessorySettingsController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDFetchedAccessorySettingsController_start__block_invoke;
  block[3] = &unk_279732F10;
  block[4] = self;
  v16 = *buf;
  v17 = 0xEEEEB0B5B2B2EEEELL;
  dispatch_async(queue, block);

  __HMFActivityScopeLeave();
}

void __46__HMDFetchedAccessorySettingsController_start__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__175161;
  v42[4] = __Block_byref_object_dispose__175162;
  v43 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [*(a1 + 32) driverMap];
  v5 = v3;
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  obj = Property;

  v7 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v7)
  {
    v23 = *v39;
    do
    {
      v24 = v7;
      for (i = 0; i != v24; ++i)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        dispatch_group_enter(v2);
        v10 = [v9 keyPaths];
        v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
        v12 = [*(a1 + 32) pendingFetchKeyPaths];
        v13 = [v12 setByAddingObjectsFromSet:v11];
        v14 = [v13 mutableCopy];
        [*(a1 + 32) setPendingFetchKeyPaths:v14];

        v15 = *(a1 + 40);
        v44 = @"keyPaths";
        v45 = v10;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

        objc_initWeak(&location, *(a1 + 32));
        v17 = [v9 driver];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __46__HMDFetchedAccessorySettingsController_start__block_invoke_53;
        v29[3] = &unk_279732EC0;
        objc_copyWeak(&v36, &location);
        v30 = v2;
        v18 = v10;
        v31 = v18;
        v32 = v9;
        v33 = *(a1 + 40);
        v35 = v42;
        v19 = v11;
        v34 = v19;
        [v17 startWithKeyPaths:v18 completion:v29];

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v7);
  }

  v20 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDFetchedAccessorySettingsController_start__block_invoke_68;
  block[3] = &unk_279732EE8;
  v21 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v27 = v42;
  v28 = *(a1 + 48);
  v26 = v21;
  dispatch_group_notify(v2, v20, block);

  _Block_object_dispose(v42, 8);
}

void __46__HMDFetchedAccessorySettingsController_start__block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    dispatch_assert_queue_V2(v9);

    v10 = objc_autoreleasePoolPush();
    v11 = v8;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = v8;
      v15 = v6;
      v16 = v5;
      v17 = a3;
      v18 = *(a1 + 40);
      [*(a1 + 48) driver];
      v19 = v37 = a1;
      *buf = 138543874;
      v41 = v13;
      v42 = 2114;
      v43 = v18;
      a3 = v17;
      v5 = v16;
      v6 = v15;
      v8 = v14;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched at startup: keyPaths: %{public}@ settings from driver: %@", buf, 0x20u);

      a1 = v37;
    }

    objc_autoreleasePoolPop(v10);
    v20 = objc_autoreleasePoolPush();
    v21 = v11;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v23;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched at startup: settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = *(a1 + 56);
    v39[0] = *(a1 + 40);
    v38[0] = @"keyPaths";
    v38[1] = @"error.code";
    v25 = MEMORY[0x277CCABB0];
    v26 = v24;
    v27 = [v25 numberWithInteger:{objc_msgSend(v6, "code")}];
    v39[1] = v27;
    v38[2] = @"domain";
    v28 = [v6 domain];
    v29 = v28;
    v30 = &stru_286509E58;
    if (v28)
    {
      v30 = v28;
    }

    v39[2] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

    if (v6)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v21;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v35 = a1;
        *buf = 138543618;
        v41 = v36;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Driver error on start %@", buf, 0x16u);

        a1 = v35;
      }

      objc_autoreleasePoolPop(v32);
      os_unfair_lock_lock_with_options();
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
      os_unfair_lock_unlock(v33 + 2);
    }

    [HMDFetchedAccessorySettingsController applyFetchedSettings:v21 requestedKeyPaths:v5];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __46__HMDFetchedAccessorySettingsController_start__block_invoke_68(uint64_t a1)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(*(*(a1 + 48) + 8) + 40);
  os_unfair_lock_unlock(v2 + 2);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v32 = v3;
  if (v5)
  {
    v7 = [v5 dataSource];
    v37[0] = @"error.code";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v32, "code")}];
    v37[1] = @"domain";
    v38[0] = v8;
    v9 = [v32 domain];
    v10 = v9;
    v11 = &stru_286509E58;
    if (v9)
    {
      v11 = v9;
    }

    v38[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v13 = v5[3];
    v14 = v13;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v14, OS_SIGNPOST_INTERVAL_END, v4, "LocalSettingsFetch", "", buf, 2u);
    }

    [v6 end];
    v15 = objc_autoreleasePoolPush();
    v16 = v5;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v16 dataSource];
      [v19 setupStartTimestamp];
      *buf = 138543618;
      v34 = v18;
      v35 = 2048;
      v36 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Setup start timestamp %f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v22 = [v16 dataSource];
    [v22 setupStartTimestamp];
    v24 = v23;

    v25 = objc_autoreleasePoolPush();
    v26 = v16;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = (v21 / 0x3B9ACA00) - v24;
      if (v28 >= 0.0)
      {
        v29 = (v21 / 0x3B9ACA00) - v24;
      }

      else
      {
        v29 = -v28;
      }

      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v30;
      v35 = 2048;
      v36 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Settings creation latency %f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    [v7 setSetupStartTimestamp:0.0];
    v31 = [v7 currentAccessorySetupMetricDispatcher];
    [v31 markSetupEndStage:5 error:v32];
  }
}

- (HMDFetchedAccessorySettingsController)initWithQueue:(id)queue dataSource:(id)source drivers:(id)drivers notificationCenter:(id)center
{
  v43 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  sourceCopy = source;
  driversCopy = drivers;
  centerCopy = center;
  v40.receiver = self;
  v40.super_class = HMDFetchedAccessorySettingsController;
  v15 = [(HMDFetchedAccessorySettingsController *)&v40 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_dataSource, source);
    v17 = [MEMORY[0x277CBEB58] set];
    pendingFetchKeyPaths = v16->_pendingFetchKeyPaths;
    v16->_pendingFetchKeyPaths = v17;

    v19 = [HMDFetchedAccessorySettingsControllerMutableKeyPathMap alloc];
    v20 = driversCopy;
    if (v19)
    {
      v41.receiver = v19;
      v41.super_class = HMDFetchedAccessorySettingsControllerMutableKeyPathMap;
      v21 = [(HMDFetchedAccessorySettingsController *)&v41 init];
      if (v21)
      {
        v22 = [v20 mutableCopy];
        v23 = *&v21->_lock._os_unfair_lock_opaque;
        *&v21->_lock._os_unfair_lock_opaque = v22;
      }
    }

    else
    {
      v21 = 0;
    }

    driverMap = v16->_driverMap;
    v16->_driverMap = v21;

    v16->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v16->_notificationCenter, centerCopy);
    v25 = objc_opt_new();
    keyPathToSettingCache = v16->_keyPathToSettingCache;
    v16->_keyPathToSettingCache = v25;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v20;
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      do
      {
        v31 = 0;
        do
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v27);
          }

          driver = [*(*(&v36 + 1) + 8 * v31) driver];
          [driver setDelegate:v16];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v29);
    }

    v33 = HMFGetOSLogHandle();
    logger = v16->_logger;
    v16->_logger = v33;
  }

  return v16;
}

- (HMDFetchedAccessorySettingsController)initWithQueue:(id)queue dataSource:(id)source drivers:(id)drivers
{
  v8 = MEMORY[0x277CCAB98];
  driversCopy = drivers;
  sourceCopy = source;
  queueCopy = queue;
  defaultCenter = [v8 defaultCenter];
  v13 = [(HMDFetchedAccessorySettingsController *)self initWithQueue:queueCopy dataSource:sourceCopy drivers:driversCopy notificationCenter:defaultCenter];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_175193 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_175193, &__block_literal_global_36_175194);
  }

  v3 = logCategory__hmf_once_v1_175195;

  return v3;
}

uint64_t __52__HMDFetchedAccessorySettingsController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_175195;
  logCategory__hmf_once_v1_175195 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end