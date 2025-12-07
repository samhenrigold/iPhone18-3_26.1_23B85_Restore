@interface HMDSiriEndpointProfile
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (id)namespace;
+ (id)uniqueIdentifierFromAccessory:(id)accessory;
- (BOOL)_notificationEnabledForType:(unint64_t)type;
- (BOOL)manuallyDisabled;
- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services;
- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services notificationCenter:(id)center;
- (NSArray)_allEndpointCharacteristicsToMonitor;
- (NSArray)_allSettingsCharacteristicsToMonitor;
- (NSArray)assistants;
- (NSArray)profileServices;
- (NSNumber)activeIdentifier;
- (NSNumber)needsOnboarding;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (id)_siriEndpointActiveIdentifierCharacteristic;
- (id)_siriEndpointActiveIdentifierReadRequest;
- (id)_siriEndpointManuallyDisabledCharacteristic;
- (id)_siriEndpointManuallyDisabledReadRequest;
- (id)_siriEndpointSessionStatusCharacteristic;
- (id)_siriEndpointSessionStatusReadRequest;
- (id)_siriEndpointVersionCharacteristic;
- (id)_siriEndpointVersionReadRequest;
- (id)_siriSettingMultifunctionButtonCharacteristic;
- (id)_siriSettingMultifunctionButtonReadRequest;
- (id)_siriSettingSiriEnableCharacteristic;
- (id)_siriSettingSiriEnableReadRequest;
- (id)_siriSettingSiriEngineVersionCharacteristic;
- (id)_siriSettingSiriEngineVersionReadRequest;
- (id)_siriSettingSiriLightOnUseCharacteristic;
- (id)_siriSettingSiriLightOnUseReadRequest;
- (id)_siriSettingSiriListeningCharacteristic;
- (id)_siriSettingSiriListeningReadRequest;
- (id)_siriSettingSiriTouchCharacteristic;
- (id)_siriSettingSiriTouchReadRequest;
- (id)attributeDescriptions;
- (int64_t)multifunctionButton;
- (int64_t)siriEnable;
- (int64_t)siriLightOnUse;
- (int64_t)siriListening;
- (int64_t)siriTouchToUse;
- (unint64_t)_capability;
- (void)_handleCharacteristicChanges:(id)changes;
- (void)_handleRefreshProfileState:(id)state;
- (void)_handleRefreshProfileState:(id)state completionHandler:(id)handler;
- (void)_notificationEnable:(BOOL)enable forType:(unint64_t)type;
- (void)_notifyProfileSettingsUpdated:(id)updated;
- (void)_setNotifications:(BOOL)notifications options:(unint64_t)options;
- (void)_updateSessionState:(id)state settings:(id)settings message:(id)message;
- (void)addService:(id)service;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleDeviceCapabilitiesUpdated:(id)updated;
- (void)handleEnableNotifications:(id)notifications;
- (void)handleHomeCharacteristicValuesChanged:(id)changed;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleUpdateNeedsOnboarding:(id)onboarding;
- (void)notifyClientsDidUpdateStagedNeedsOnboarding;
- (void)refreshStateWithCompletionHandler:(id)handler;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)setActiveIdentifier:(id)identifier;
- (void)setAssistants:(id)assistants;
- (void)setEnable:(int64_t)enable completionHandler:(id)handler;
- (void)setLightOnUse:(int64_t)use completionHandler:(id)handler;
- (void)setListening:(int64_t)listening completionHandler:(id)handler;
- (void)setManuallyDisabled:(BOOL)disabled;
- (void)setMultifunctionButton:(int64_t)button;
- (void)setNotifications:(BOOL)notifications options:(unint64_t)options;
- (void)setProfileServices:(id)services;
- (void)setSessionHubIdentifier:(id)identifier;
- (void)setSiriEnable:(int64_t)enable;
- (void)setSiriEndpointVersion:(id)version;
- (void)setSiriEngineVersion:(id)version;
- (void)setSiriLightOnUse:(int64_t)use;
- (void)setSiriListening:(int64_t)listening;
- (void)setSiriTouchToUse:(int64_t)use;
- (void)setSoundOnUse:(int64_t)use completionHandler:(id)handler;
- (void)setTouchToUse:(int64_t)use completionHandler:(id)handler;
- (void)stageNeedsOnboarding:(int64_t)onboarding;
- (void)stageNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)unregisterForNotifications;
- (void)updateNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout;
@end

@implementation HMDSiriEndpointProfile

- (void)_setNotifications:(BOOL)notifications options:(unint64_t)options
{
  notificationsCopy = notifications;
  v37 = *MEMORY[0x277D85DE8];
  if (options == 2)
  {
    _allSettingsCharacteristicsToMonitor = [(HMDSiriEndpointProfile *)self _allSettingsCharacteristicsToMonitor];
    clientSettingsIdentifier = [(HMDSiriEndpointProfile *)self clientSettingsIdentifier];
LABEL_5:
    v9 = clientSettingsIdentifier;
    if (clientSettingsIdentifier && [_allSettingsCharacteristicsToMonitor count])
    {
      accessory = [(HMDAccessoryProfile *)self accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = accessory;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      v16 = v15;
      if (v12)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v18 = @"Disabling";
          v29 = 138544130;
          v30 = v17;
          if (notificationsCopy)
          {
            v18 = @"Enabling";
          }

          v31 = 2112;
          optionsCopy = v18;
          v33 = 2112;
          v34 = v9;
          v35 = 2112;
          v36 = _allSettingsCharacteristicsToMonitor;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Profile Notifications] %@ notifications for characteristics for %@: %@", &v29, 0x2Au);
        }

        objc_autoreleasePoolPop(v13);
        [v12 enableNotification:notificationsCopy forCharacteristics:_allSettingsCharacteristicsToMonitor message:0 clientIdentifier:v9];
        [(HMDSiriEndpointProfile *)selfCopy _notificationEnable:notificationsCopy forType:options];
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = 138543362;
          v30 = v28;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Profile Notifications] accessory not part of profile", &v29, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        if (notificationsCopy)
        {
          v23 = @"enable";
        }

        else
        {
          v23 = @"disable";
        }

        v29 = 138544130;
        v30 = v22;
        v31 = 2112;
        optionsCopy = v23;
        v33 = 2048;
        v34 = [_allSettingsCharacteristicsToMonitor count];
        v35 = 2112;
        v36 = v9;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Profile Notifications] nothing to %@ because characteristic.count (%ld) or client identifier %@", &v29, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
    }

    return;
  }

  if (options == 1)
  {
    _allSettingsCharacteristicsToMonitor = [(HMDSiriEndpointProfile *)self _allEndpointCharacteristicsToMonitor];
    clientSettingsIdentifier = [(HMDSiriEndpointProfile *)self clientEndpointIdentifier];
    goto LABEL_5;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v27;
    v31 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Profile Notifications] options is not valid: %ld", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
}

- (void)setNotifications:(BOOL)notifications options:(unint64_t)options
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDSiriEndpointProfile_setNotifications_options___block_invoke;
  block[3] = &unk_27972A540;
  block[4] = self;
  block[5] = options;
  notificationsCopy = notifications;
  dispatch_async(workQueue, block);
}

void __51__HMDSiriEndpointProfile_setNotifications_options___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    [*(a1 + 32) _setNotifications:*(a1 + 48) options:1];
    if ((*(a1 + 40) & 2) == 0)
    {
      return;
    }
  }

  else if ((v2 & 2) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v10 = 138543618;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@[Notifications] options is not valid: %ld", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    return;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);

  [v8 _setNotifications:v9 options:2];
}

- (NSArray)_allSettingsCharacteristicsToMonitor
{
  v24 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  _siriSettingSiriEnableCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
  if (_siriSettingSiriEnableCharacteristic)
  {
    [array addObject:_siriSettingSiriEnableCharacteristic];
  }

  _siriSettingSiriListeningCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];

  if (_siriSettingSiriListeningCharacteristic)
  {
    [array addObject:_siriSettingSiriListeningCharacteristic];
  }

  _siriSettingSiriTouchCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];

  if (_siriSettingSiriTouchCharacteristic)
  {
    [array addObject:_siriSettingSiriTouchCharacteristic];
  }

  _siriSettingSiriLightOnUseCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];

  if (_siriSettingSiriLightOnUseCharacteristic)
  {
    [array addObject:_siriSettingSiriLightOnUseCharacteristic];
  }

  _siriEndpointActiveIdentifierCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointActiveIdentifierCharacteristic];

  if (_siriEndpointActiveIdentifierCharacteristic)
  {
    [array addObject:_siriEndpointActiveIdentifierCharacteristic];
  }

  _siriEndpointManuallyDisabledCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointManuallyDisabledCharacteristic];

  if (_siriEndpointManuallyDisabledCharacteristic)
  {
    [array addObject:_siriEndpointManuallyDisabledCharacteristic];
  }

  _siriSettingMultifunctionButtonCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingMultifunctionButtonCharacteristic];

  if (_siriSettingMultifunctionButtonCharacteristic)
  {
    [array addObject:_siriSettingMultifunctionButtonCharacteristic];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  assistants = [(HMDSiriEndpointProfile *)self assistants];
  v12 = [assistants countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(assistants);
        }

        characteristicsToMonitor = [*(*(&v19 + 1) + 8 * i) characteristicsToMonitor];
        [array addObjectsFromArray:characteristicsToMonitor];
      }

      v13 = [assistants countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = objc_msgSend_copy(array);

  return v17;
}

- (NSArray)_allEndpointCharacteristicsToMonitor
{
  array = [MEMORY[0x277CBEB18] array];
  _siriEndpointSessionStatusCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointSessionStatusCharacteristic];
  if (_siriEndpointSessionStatusCharacteristic)
  {
    [array addObject:_siriEndpointSessionStatusCharacteristic];
  }

  v5 = objc_msgSend_copy(array);

  return v5;
}

- (void)_notificationEnable:(BOOL)enable forType:(unint64_t)type
{
  enableCopy = enable;
  os_unfair_lock_lock_with_options();
  if (enableCopy)
  {
    v7 = [(HMDSiriEndpointProfile *)self notifications]| type;
  }

  else
  {
    notifications = [(HMDSiriEndpointProfile *)self notifications];
    if (type)
    {
      v7 = 0;
    }

    else
    {
      v7 = notifications & 1;
    }
  }

  [(HMDSiriEndpointProfile *)self setNotifications:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_notificationEnabledForType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  LOBYTE(type) = (type & ~[(HMDSiriEndpointProfile *)self notifications]) == 0;
  os_unfair_lock_unlock(&self->_lock);
  return type;
}

- (void)refreshStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (void)setSoundOnUse:(int64_t)use completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v4);
  }
}

- (void)setLightOnUse:(int64_t)use completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (use < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriLightOnUseCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];
      if (_siriSettingSiriLightOnUseCharacteristic && ([MEMORY[0x277CCABB0] numberWithInteger:use == 1], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_siriSettingSiriLightOnUseCharacteristic, "authorizationData"), v13 = objc_claimAutoreleasedReturnValue(), +[HMDCharacteristicWriteRequest writeRequestWithCharacteristic:value:authorizationData:type:](HMDCharacteristicWriteRequest, "writeRequestWithCharacteristic:value:authorizationData:type:", _siriSettingSiriLightOnUseCharacteristic, v12, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
      {
        objc_initWeak(location, self);
        v30 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __58__HMDSiriEndpointProfile_setLightOnUse_completionHandler___block_invoke;
        v26[3] = &unk_279731288;
        objc_copyWeak(v29, location);
        v17 = v14;
        v27 = v17;
        v28 = handlerCopy;
        v29[1] = use;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v26];

        objc_destroyWeak(v29);
        objc_destroyWeak(location);
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Light On Use] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Light On Use] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriLightOnUseCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriLightOnUseCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
    }
  }
}

void __58__HMDSiriEndpointProfile_setLightOnUse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v39;
      do
      {
        v9 = 0;
        v36 = v6;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v45 = v18;
              v46 = 2112;
              v47 = v19;
              v48 = 2112;
              v49 = v20;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v36;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000258-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriLightOnUse:v35[7]];
              v42 = @"settings-light";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriLightOnUse")}];
              v43 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v35[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v34;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v35[4];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v35[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }
}

- (void)setTouchToUse:(int64_t)use completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (use < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriTouchCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];
      if (_siriSettingSiriTouchCharacteristic && ([MEMORY[0x277CCABB0] numberWithInteger:use == 1], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_siriSettingSiriTouchCharacteristic, "authorizationData"), v13 = objc_claimAutoreleasedReturnValue(), +[HMDCharacteristicWriteRequest writeRequestWithCharacteristic:value:authorizationData:type:](HMDCharacteristicWriteRequest, "writeRequestWithCharacteristic:value:authorizationData:type:", _siriSettingSiriTouchCharacteristic, v12, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
      {
        objc_initWeak(location, self);
        v30 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __58__HMDSiriEndpointProfile_setTouchToUse_completionHandler___block_invoke;
        v26[3] = &unk_279731288;
        objc_copyWeak(v29, location);
        v17 = v14;
        v27 = v17;
        v28 = handlerCopy;
        v29[1] = use;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v26];

        objc_destroyWeak(v29);
        objc_destroyWeak(location);
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Touch To Use] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Touch To Use] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriTouchCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriTouchCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
    }
  }
}

void __58__HMDSiriEndpointProfile_setTouchToUse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v39;
      do
      {
        v9 = 0;
        v36 = v6;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v45 = v18;
              v46 = 2112;
              v47 = v19;
              v48 = 2112;
              v49 = v20;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v36;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000257-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriTouchToUse:v35[7]];
              v42 = @"settings-touch";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriTouchToUse")}];
              v43 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v35[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v34;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v35[4];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v35[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }
}

- (void)setListening:(int64_t)listening completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (listening < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriListeningCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];
      if (_siriSettingSiriListeningCharacteristic && ([MEMORY[0x277CCABB0] numberWithInteger:listening == 1], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_siriSettingSiriListeningCharacteristic, "authorizationData"), v13 = objc_claimAutoreleasedReturnValue(), +[HMDCharacteristicWriteRequest writeRequestWithCharacteristic:value:authorizationData:type:](HMDCharacteristicWriteRequest, "writeRequestWithCharacteristic:value:authorizationData:type:", _siriSettingSiriListeningCharacteristic, v12, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
      {
        objc_initWeak(location, self);
        v30 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __57__HMDSiriEndpointProfile_setListening_completionHandler___block_invoke;
        v26[3] = &unk_279731288;
        objc_copyWeak(v29, location);
        v17 = v14;
        v27 = v17;
        v28 = handlerCopy;
        v29[1] = listening;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v26];

        objc_destroyWeak(v29);
        objc_destroyWeak(location);
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Listening] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Listening] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriListeningCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriListeningCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
    }
  }
}

void __57__HMDSiriEndpointProfile_setListening_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v39;
      do
      {
        v9 = 0;
        v36 = v6;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v45 = v18;
              v46 = 2112;
              v47 = v19;
              v48 = 2112;
              v49 = v20;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v36;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000256-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriListening:v35[7]];
              v42 = @"settings-listening";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriListening")}];
              v43 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v35[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v34;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v35[4];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v35[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }
}

- (void)setEnable:(int64_t)enable completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (enable < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriEnableCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
      if (_siriSettingSiriEnableCharacteristic && ([MEMORY[0x277CCABB0] numberWithInteger:enable == 1], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_siriSettingSiriEnableCharacteristic, "authorizationData"), v13 = objc_claimAutoreleasedReturnValue(), +[HMDCharacteristicWriteRequest writeRequestWithCharacteristic:value:authorizationData:type:](HMDCharacteristicWriteRequest, "writeRequestWithCharacteristic:value:authorizationData:type:", _siriSettingSiriEnableCharacteristic, v12, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
      {
        objc_initWeak(location, self);
        v30 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __54__HMDSiriEndpointProfile_setEnable_completionHandler___block_invoke;
        v26[3] = &unk_279731288;
        objc_copyWeak(v29, location);
        v17 = v14;
        v27 = v17;
        v28 = handlerCopy;
        v29[1] = enable;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v26];

        objc_destroyWeak(v29);
        objc_destroyWeak(location);
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Enable] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Enable] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriEnableCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriEnableCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
    }
  }
}

void __54__HMDSiriEndpointProfile_setEnable_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v39;
      do
      {
        v9 = 0;
        v36 = v6;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v45 = v18;
              v46 = 2112;
              v47 = v19;
              v48 = 2112;
              v49 = v20;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v36;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000255-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriEnable:v35[7]];
              v42 = @"settings-enable";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriEnable")}];
              v43 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v35[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v34;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v35[4];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v35[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = HMDSiriEndpointProfile;
  coderCopy = coder;
  [(HMDAccessoryProfile *)&v15 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](self, "sessionState", v15.receiver, v15.super_class)}];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD1038]];

  sessionHubIdentifier = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
  uUIDString = [sessionHubIdentifier UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CD1030]];

  siriEndpointVersion = [(HMDSiriEndpointProfile *)self siriEndpointVersion];
  [coderCopy encodeObject:siriEndpointVersion forKey:*MEMORY[0x277CD1058]];

  _capability = [(HMDSiriEndpointProfile *)self _capability];
  [coderCopy encodeInteger:_capability forKey:*MEMORY[0x277CD0FE8]];
  siriEngineVersion = [(HMDSiriEndpointProfile *)self siriEngineVersion];
  [coderCopy encodeObject:siriEngineVersion forKey:*MEMORY[0x277CD1048]];

  activeIdentifier = [(HMDSiriEndpointProfile *)self activeIdentifier];
  [coderCopy encodeObject:activeIdentifier forKey:*MEMORY[0x277CD0FC0]];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
  [coderCopy encodeObject:v12 forKey:*MEMORY[0x277CD1008]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
  [coderCopy encodeObject:v13 forKey:*MEMORY[0x277CD1010]];

  assistants = [(HMDSiriEndpointProfile *)self assistants];
  [coderCopy encodeObject:assistants forKey:*MEMORY[0x277CD0FE0]];
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v5 = [v3 initWithName:@"uniqueIdentifier" value:uniqueIdentifier];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDSiriEndpointProfile *)self sessionState];
  v7 = HMSiriEndpointProfileSessionStateTypeToString();
  v8 = [v6 initWithName:@"sessionState" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (unint64_t)_capability
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessory;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    needsOnboarding = [(HMDSiriEndpointProfile *)self needsOnboarding];
    integerValue = [needsOnboarding integerValue];

    supportsSiriEndpointOnBoarding = [v5 supportsSiriEndpointOnBoarding];
    v9 = 2;
    if (!integerValue)
    {
      v9 = 3;
    }

    if (supportsSiriEndpointOnBoarding)
    {
      v10 = v9;
    }

    else
    {
      v10 = integerValue == 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateSessionState:(id)state settings:(id)settings message:(id)message
{
  v115 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  settingsCopy = settings;
  messageCopy = message;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:6];
  v110 = v11;
  if (stateCopy)
  {
    sessionState = [stateCopy sessionState];
    value = [sessionState value];
    if (value >= 4)
    {
      v14 = -1;
    }

    else
    {
      v14 = value;
    }

    if (v14 != [(HMDSiriEndpointProfile *)self sessionState])
    {
      v108 = stateCopy;
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = HMSiriEndpointProfileSessionStateTypeToString();
        *buf = 138543618;
        v112 = v18;
        v113 = 2112;
        v114 = v19;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating session state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](selfCopy, "sessionState")}];
      v11 = v110;
      [v110 setValue:v20 forKey:@"HMDSiriEndpointProfilePreviousSessionStateKey"];

      stateCopy = v108;
    }

    [(HMDSiriEndpointProfile *)self setSessionState:v14];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](self, "sessionState")}];
    [v10 setValue:v21 forKey:*MEMORY[0x277CD1038]];

    hubUUID = [stateCopy hubUUID];
    sessionHubIdentifier = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
    v24 = HMFEqualObjects();

    if ((v24 & 1) == 0)
    {
      sessionHubIdentifier2 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
      uUIDString = [sessionHubIdentifier2 UUIDString];
      [v11 setValue:uUIDString forKey:@"HMDSiriEndpointProfilePreviousSessionHubIdentiferKey"];
    }

    [(HMDSiriEndpointProfile *)self setSessionHubIdentifier:hubUUID];
    sessionHubIdentifier3 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
    uUIDString2 = [sessionHubIdentifier3 UUIDString];
    [v10 setValue:uUIDString2 forKey:*MEMORY[0x277CD1030]];
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  if (settingsCopy)
  {
    siriEnable = [settingsCopy siriEnable];

    if (siriEnable)
    {
      siriEnable2 = [settingsCopy siriEnable];
      integerValue = [siriEnable2 integerValue];
      v33 = integerValue == 1 ? 1 : -1;
      v34 = integerValue ? v33 : 0;

      if ([(HMDSiriEndpointProfile *)self siriEnable]!= v34)
      {
        [(HMDSiriEndpointProfile *)self setSiriEnable:v34];
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriEnable](self, "siriEnable")}];
        [v29 setValue:v35 forKey:@"settings-enable"];
      }
    }

    siriListening = [settingsCopy siriListening];

    if (siriListening)
    {
      siriListening2 = [settingsCopy siriListening];
      integerValue2 = [siriListening2 integerValue];
      v39 = integerValue2 == 1 ? 1 : -1;
      v40 = integerValue2 ? v39 : 0;

      if ([(HMDSiriEndpointProfile *)self siriListening]!= v40)
      {
        [(HMDSiriEndpointProfile *)self setSiriListening:v40];
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriListening](self, "siriListening")}];
        [v29 setValue:v41 forKey:@"settings-listening"];
      }
    }

    siriTouchToUse = [settingsCopy siriTouchToUse];

    if (siriTouchToUse)
    {
      siriTouchToUse2 = [settingsCopy siriTouchToUse];
      integerValue3 = [siriTouchToUse2 integerValue];
      v45 = integerValue3 == 1 ? 1 : -1;
      v46 = integerValue3 ? v45 : 0;

      if ([(HMDSiriEndpointProfile *)self siriTouchToUse]!= v46)
      {
        [(HMDSiriEndpointProfile *)self setSiriTouchToUse:v46];
        v47 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriTouchToUse](self, "siriTouchToUse")}];
        [v29 setValue:v47 forKey:@"settings-touch"];
      }
    }

    siriLightOnUse = [settingsCopy siriLightOnUse];

    if (siriLightOnUse)
    {
      siriLightOnUse2 = [settingsCopy siriLightOnUse];
      integerValue4 = [siriLightOnUse2 integerValue];
      v51 = integerValue4 == 1 ? 1 : -1;
      v52 = integerValue4 ? v51 : 0;

      if ([(HMDSiriEndpointProfile *)self siriLightOnUse]!= v52)
      {
        [(HMDSiriEndpointProfile *)self setSiriLightOnUse:v52];
        v53 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriLightOnUse](self, "siriLightOnUse")}];
        [v29 setValue:v53 forKey:@"settings-light"];
      }
    }

    siriEndpointVersion = [settingsCopy siriEndpointVersion];

    if (siriEndpointVersion)
    {
      siriEndpointVersion2 = [settingsCopy siriEndpointVersion];
      [(HMDSiriEndpointProfile *)self setSiriEndpointVersion:siriEndpointVersion2];

      siriEndpointVersion3 = [(HMDSiriEndpointProfile *)self siriEndpointVersion];
      [v10 setValue:siriEndpointVersion3 forKey:*MEMORY[0x277CD1058]];
    }

    siriEngineVersion = [settingsCopy siriEngineVersion];

    if (siriEngineVersion)
    {
      siriEngineVersion2 = [settingsCopy siriEngineVersion];
      siriEngineVersion3 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
      v60 = HMFEqualObjects();

      if ((v60 & 1) == 0)
      {
        siriEngineVersion4 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
        [v11 setValue:siriEngineVersion4 forKey:@"HMDSiriEndpointProfilePreviousSiriEngineVersionKey"];
      }

      siriEngineVersion5 = [settingsCopy siriEngineVersion];
      [(HMDSiriEndpointProfile *)self setSiriEngineVersion:siriEngineVersion5];

      siriEngineVersion6 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
      [v10 setValue:siriEngineVersion6 forKey:*MEMORY[0x277CD1048]];
    }

    activeIdentifier = [settingsCopy activeIdentifier];

    if (activeIdentifier)
    {
      activeIdentifier2 = [(HMDSiriEndpointProfile *)self activeIdentifier];
      if (activeIdentifier2)
      {
        v66 = activeIdentifier2;
        activeIdentifier3 = [settingsCopy activeIdentifier];
        activeIdentifier4 = [(HMDSiriEndpointProfile *)self activeIdentifier];
        v69 = HMFEqualObjects();

        if ((v69 & 1) == 0)
        {
          activeIdentifier5 = [(HMDSiriEndpointProfile *)self activeIdentifier];
          [v110 setValue:activeIdentifier5 forKey:@"HMDSiriEndpointProfilePreviousActiveIdentifierKey"];
        }
      }

      activeIdentifier6 = [settingsCopy activeIdentifier];
      [(HMDSiriEndpointProfile *)self setActiveIdentifier:activeIdentifier6];

      activeIdentifier7 = [(HMDSiriEndpointProfile *)self activeIdentifier];
      [v10 setValue:activeIdentifier7 forKey:*MEMORY[0x277CD0FC0]];

      v11 = v110;
    }

    manuallyDisabled = [settingsCopy manuallyDisabled];

    if (manuallyDisabled)
    {
      manuallyDisabled2 = [settingsCopy manuallyDisabled];
      bOOLValue = [manuallyDisabled2 BOOLValue];
      manuallyDisabled3 = [(HMDSiriEndpointProfile *)self manuallyDisabled];

      if (bOOLValue != manuallyDisabled3)
      {
        v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
        [v11 setValue:v77 forKey:@"HMDSiriEndpointProfilePreviousManuallyDisabledKey"];
      }

      manuallyDisabled4 = [settingsCopy manuallyDisabled];
      -[HMDSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [manuallyDisabled4 BOOLValue]);

      v79 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
      [v10 setValue:v79 forKey:*MEMORY[0x277CD1008]];
    }

    multifunctionButton = [settingsCopy multifunctionButton];

    if (multifunctionButton)
    {
      multifunctionButton2 = [settingsCopy multifunctionButton];
      integerValue5 = [multifunctionButton2 integerValue];
      if (integerValue5 == 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = -1;
      }

      if (integerValue5)
      {
        v84 = v83;
      }

      else
      {
        v84 = 0;
      }

      if (v84 != [(HMDSiriEndpointProfile *)self multifunctionButton])
      {
        v85 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
        [v11 setValue:v85 forKey:@"HMDSiriEndpointProfilePreviousMultifunctionButtonKey"];
      }

      [(HMDSiriEndpointProfile *)self setMultifunctionButton:v84];
      v86 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
      [v10 setValue:v86 forKey:*MEMORY[0x277CD1010]];
    }

    if ([settingsCopy assistantsUpdated])
    {
      assistants = [(HMDSiriEndpointProfile *)self assistants];
      v88 = encodeRootObjectForIncomingXPCMessage(assistants, 0);
      [v10 setValue:v88 forKey:*MEMORY[0x277CD0FE0]];
    }
  }

  v89 = [v10 count];
  v90 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v92 = HMFGetOSLogHandle();
  v93 = os_log_type_enabled(v92, OS_LOG_TYPE_INFO);
  if (v89)
  {
    v94 = stateCopy;
    if (v93)
    {
      v95 = HMFGetLogIdentifier();
      *buf = 138543618;
      v112 = v95;
      v113 = 2112;
      v114 = v10;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Notifying XPC clients of updated profile state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v90);
    v96 = objc_alloc(MEMORY[0x277D0F820]);
    uniqueIdentifier = [(HMDAccessoryProfile *)selfCopy2 uniqueIdentifier];
    v98 = [v96 initWithTarget:uniqueIdentifier];

    v99 = MEMORY[0x277D0F848];
    v100 = *MEMORY[0x277CD1050];
    v101 = objc_msgSend_copy(v10);
    v102 = [v99 messageWithName:v100 destination:v98 payload:v101];

    identifier = [messageCopy identifier];
    if (identifier)
    {
      [v102 setIdentifier:identifier];
    }

    [v102 setRequiresSPIEntitlement];
    msgDispatcher = [(HMDAccessoryProfile *)selfCopy2 msgDispatcher];
    v105 = objc_msgSend_copy(v102);
    [msgDispatcher sendMessage:v105 completionHandler:0];

    stateCopy = v94;
  }

  else
  {
    if (v93)
    {
      v106 = HMFGetLogIdentifier();
      *buf = 138543362;
      v112 = v106;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@No changes, not notifying XPC clients", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v90);
  }

  if ([v110 count])
  {
    notificationCenter = [(HMDSiriEndpointProfile *)selfCopy2 notificationCenter];
    [notificationCenter postNotificationName:@"HMDSiriEndpointProfileUpdatedNotification" object:selfCopy2 userInfo:v110];
  }

  [(HMDSiriEndpointProfile *)selfCopy2 _notifyProfileSettingsUpdated:v29];
}

- (void)_notifyProfileSettingsUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy count])
  {
    notificationCenter = [(HMDSiriEndpointProfile *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDSiriEndpointProfileSettingsUpdatedNotification" object:self userInfo:updatedCopy];
  }
}

- (void)_handleRefreshProfileState:(id)state completionHandler:(id)handler
{
  v119 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  handlerCopy = handler;
  val = self;
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = accessory;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v83 = v8;
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v10 = [stateCopy arrayForKey:*MEMORY[0x277CD1018]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v18 = *MEMORY[0x277CD1040];
      v114[0] = *MEMORY[0x277CD1028];
      v114[1] = v18;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
    }

    v19 = v12;

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = v19;
    v89 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
    if (v89)
    {
      v86 = *MEMORY[0x277CD1028];
      v87 = *v108;
      v82 = *MEMORY[0x277CD1040];
      do
      {
        v20 = 0;
        do
        {
          if (*v108 != v87)
          {
            v21 = v20;
            objc_enumerationMutation(obj);
            v20 = v21;
          }

          v91 = v20;
          v22 = *(*(&v107 + 1) + 8 * v20);
          if ([v22 isEqual:v86])
          {
            _siriEndpointSessionStatusReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointSessionStatusReadRequest];
            if (_siriEndpointSessionStatusReadRequest)
            {
              [v9 addObject:_siriEndpointSessionStatusReadRequest];
            }

            else
            {
              v25 = objc_autoreleasePoolPush();
              v26 = val;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v28;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint session status is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v25);
            }

            _siriEndpointVersionReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointVersionReadRequest];

            if (_siriEndpointVersionReadRequest)
            {
              [v9 addObject:_siriEndpointVersionReadRequest];
            }

            else
            {
              v30 = objc_autoreleasePoolPush();
              v31 = val;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v33;
                _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint version is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v30);
            }

            _siriEndpointActiveIdentifierReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointActiveIdentifierReadRequest];

            if (_siriEndpointActiveIdentifierReadRequest)
            {
              [v9 addObject:_siriEndpointActiveIdentifierReadRequest];
            }

            else
            {
              v35 = objc_autoreleasePoolPush();
              v36 = val;
              v37 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v38;
                _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint active identifier is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v35);
            }

            _siriEndpointManuallyDisabledReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointManuallyDisabledReadRequest];

            if (_siriEndpointManuallyDisabledReadRequest)
            {
              [v9 addObject:_siriEndpointManuallyDisabledReadRequest];
            }

            else
            {
              v40 = objc_autoreleasePoolPush();
              v41 = val;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v43;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint manually disable is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v40);
            }

            _siriSettingMultifunctionButtonReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingMultifunctionButtonReadRequest];

            if (_siriSettingMultifunctionButtonReadRequest)
            {
              [v9 addObject:?];
            }

            else
            {
              v44 = objc_autoreleasePoolPush();
              v45 = val;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v47;
                _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint multifunction button is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v44);
            }

            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            assistants = [(HMDSiriEndpointProfile *)val assistants];
            v48 = [assistants countByEnumeratingWithState:&v103 objects:v112 count:16];
            if (v48)
            {
              v49 = *v104;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v104 != v49)
                  {
                    objc_enumerationMutation(assistants);
                  }

                  v51 = *(*(&v103 + 1) + 8 * i);
                  v99 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  allCharacteristics = [v51 allCharacteristics];
                  v53 = [allCharacteristics countByEnumeratingWithState:&v99 objects:v111 count:16];
                  if (v53)
                  {
                    v54 = *v100;
                    do
                    {
                      for (j = 0; j != v53; ++j)
                      {
                        if (*v100 != v54)
                        {
                          objc_enumerationMutation(allCharacteristics);
                        }

                        v56 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v99 + 1) + 8 * j)];
                        if (v56)
                        {
                          [v9 addObject:v56];
                        }
                      }

                      v53 = [allCharacteristics countByEnumeratingWithState:&v99 objects:v111 count:16];
                    }

                    while (v53);
                  }
                }

                v48 = [assistants countByEnumeratingWithState:&v103 objects:v112 count:16];
              }

              while (v48);
            }

            _siriSettingSiriEngineVersionReadRequest = _siriSettingMultifunctionButtonReadRequest;
          }

          else
          {
            if (![v22 isEqual:v82])
            {
              goto LABEL_87;
            }

            _siriSettingSiriEnableReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriEnableReadRequest];
            if (_siriSettingSiriEnableReadRequest)
            {
              [v9 addObject:_siriSettingSiriEnableReadRequest];
            }

            else
            {
              v58 = objc_autoreleasePoolPush();
              v59 = val;
              v60 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v61 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v61;
                _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri enable is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v58);
            }

            _siriSettingSiriListeningReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriListeningReadRequest];

            if (_siriSettingSiriListeningReadRequest)
            {
              [v9 addObject:_siriSettingSiriListeningReadRequest];
            }

            else
            {
              v63 = objc_autoreleasePoolPush();
              v64 = val;
              v65 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                v66 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v66;
                _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri listening is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v63);
            }

            _siriSettingSiriTouchReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriTouchReadRequest];

            if (_siriSettingSiriTouchReadRequest)
            {
              [v9 addObject:_siriSettingSiriTouchReadRequest];
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              v69 = val;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v71;
                _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri touch is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v68);
            }

            _siriSettingSiriLightOnUseReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriLightOnUseReadRequest];

            if (_siriSettingSiriLightOnUseReadRequest)
            {
              [v9 addObject:_siriSettingSiriLightOnUseReadRequest];
            }

            else
            {
              v73 = objc_autoreleasePoolPush();
              v74 = val;
              v75 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v76 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v76;
                _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri light on use is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v73);
            }

            _siriSettingSiriEngineVersionReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriEngineVersionReadRequest];

            if (_siriSettingSiriEngineVersionReadRequest)
            {
              [v9 addObject:_siriSettingSiriEngineVersionReadRequest];
            }

            else
            {
              v77 = objc_autoreleasePoolPush();
              v78 = val;
              v79 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v80 = HMFGetLogIdentifier();
                *buf = 138543362;
                v116 = v80;
                _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri engine is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v77);
              _siriSettingSiriEngineVersionReadRequest = 0;
            }
          }

LABEL_87:
          v20 = v91 + 1;
        }

        while (v91 + 1 != v89);
        v89 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
      }

      while (v89);
    }

    objc_initWeak(buf, val);
    workQueue = [(HMDAccessoryProfile *)val workQueue];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __71__HMDSiriEndpointProfile__handleRefreshProfileState_completionHandler___block_invoke;
    v94[3] = &unk_27972A518;
    objc_copyWeak(&v98, buf);
    v17 = v9;
    v95 = v17;
    v96 = stateCopy;
    v97 = handlerCopy;
    [v83 readCharacteristicValues:v17 source:1190 queue:workQueue completionHandler:v94];

    objc_destroyWeak(&v98);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = val;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v116 = v16;
      v117 = 2112;
      v118 = v14;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile] accessory not part of profile (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [stateCopy respondWithError:v17];
    if (handlerCopy)
    {
      handlerCopy[2]();
    }
  }
}

void __71__HMDSiriEndpointProfile__handleRefreshProfileState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v89 = WeakRetained;
  if ([v3 count])
  {
    v83 = a1;
    v88 = objc_alloc_init(HMDSiriEndpointHAPSettings);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v84 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (!v6)
    {
      v8 = 0;
      v90 = 0;
      goto LABEL_81;
    }

    v7 = v6;
    v8 = 0;
    v90 = 0;
    v91 = *v98;
    v86 = *MEMORY[0x277CCFB98];
    v85 = *MEMORY[0x277CCF750];
    while (1)
    {
      v9 = 0;
      v87 = v7;
      do
      {
        if (*v98 != v91)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v97 + 1) + 8 * v9);
        v11 = [v10 error];

        if (!v11)
        {
          v18 = [v10 request];
          v19 = [v18 characteristic];

          v20 = [v19 type];
          v21 = [v20 isEqual:@"00000254-0000-1000-8000-0026BB765291"];

          if (v21)
          {
            v22 = v5;
            v23 = [v10 value];
            v96 = 0;
            v24 = [HMDSiriEndpointSessionStateTLV parsedFromData:v23 error:&v96];
            v25 = v96;

            v26 = objc_autoreleasePoolPush();
            v27 = WeakRetained;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = HMFGetLogIdentifier();
              *buf = 138543874;
              v103 = v29;
              v104 = 2112;
              v105 = v24;
              v106 = 2112;
              v107 = v25;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Response Parsed HMDSiriEndpointSessionStateTLV: %@ with error: %@", buf, 0x20u);

              WeakRetained = v89;
            }

            objc_autoreleasePoolPop(v26);
            v5 = v22;
            goto LABEL_15;
          }

          v30 = [v19 type];
          v31 = [v30 isEqualToString:v86];

          if (v31)
          {
            v32 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v25 = v33;

            [(HMDSiriEndpointHAPSettings *)v88 setSiriEndpointVersion:v25];
            goto LABEL_71;
          }

          v34 = [v19 type];
          v35 = [v34 isEqual:@"00000255-0000-1000-8000-0026BB765291"];

          if (v35)
          {
            v36 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }

            v25 = v37;

            [(HMDSiriEndpointHAPSettings *)v88 setSiriEnable:v25];
            goto LABEL_71;
          }

          v38 = [v19 type];
          v39 = [v38 isEqual:@"00000256-0000-1000-8000-0026BB765291"];

          if (v39)
          {
            v40 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            v25 = v41;

            [(HMDSiriEndpointHAPSettings *)v88 setSiriListening:v25];
            goto LABEL_71;
          }

          v42 = [v19 type];
          v43 = [v42 isEqual:@"00000257-0000-1000-8000-0026BB765291"];

          if (v43)
          {
            v44 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v25 = v45;

            [(HMDSiriEndpointHAPSettings *)v88 setSiriTouchToUse:v25];
            goto LABEL_71;
          }

          v46 = [v19 type];
          v47 = [v46 isEqual:@"00000258-0000-1000-8000-0026BB765291"];

          if (v47)
          {
            v48 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = v48;
            }

            else
            {
              v49 = 0;
            }

            v25 = v49;

            [(HMDSiriEndpointHAPSettings *)v88 setSiriLightOnUse:v25];
            goto LABEL_71;
          }

          v50 = [v19 type];
          v51 = [v50 isEqualToString:@"0000025A-0000-1000-8000-0026BB765291"];

          if (v51)
          {
            v52 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = v52;
            }

            else
            {
              v53 = 0;
            }

            v25 = v53;

            [(HMDSiriEndpointHAPSettings *)v88 setSiriEngineVersion:v25];
            goto LABEL_71;
          }

          v54 = [v19 type];
          v55 = [v54 isEqualToString:v85];

          if (v55)
          {
            v56 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            v25 = v57;

            [(HMDSiriEndpointHAPSettings *)v88 setActiveIdentifier:v25];
            goto LABEL_71;
          }

          v58 = [v19 type];
          v59 = [v58 isEqualToString:@"00000227-0000-1000-8000-0026BB765291"];

          if (v59)
          {
            v60 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            v25 = v61;

            [(HMDSiriEndpointHAPSettings *)v88 setManuallyDisabled:v25];
            goto LABEL_71;
          }

          v62 = [v19 type];
          v63 = [v62 isEqualToString:@"0000026B-0000-1000-8000-0026BB765291"];

          if (v63)
          {
            v64 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v65 = v64;
            }

            else
            {
              v65 = 0;
            }

            v25 = v65;

            [(HMDSiriEndpointHAPSettings *)v88 setMultifunctionButton:v25];
LABEL_71:
            v24 = v90;
          }

          else
          {
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v25 = [WeakRetained assistants];
            v66 = [v25 countByEnumeratingWithState:&v92 objects:v101 count:16];
            if (!v66)
            {
              goto LABEL_71;
            }

            v67 = v66;
            v82 = v5;
            v68 = *v93;
            do
            {
              for (i = 0; i != v67; ++i)
              {
                if (*v93 != v68)
                {
                  objc_enumerationMutation(v25);
                }

                v70 = *(*(&v92 + 1) + 8 * i);
                v71 = [v10 value];
                LODWORD(v70) = [v70 updateCharacteristic:v19 value:v71];

                if (v70)
                {
                  [(HMDSiriEndpointHAPSettings *)v88 setAssistantsUpdated:1];
                }

                WeakRetained = v89;
              }

              v67 = [v25 countByEnumeratingWithState:&v92 objects:v101 count:16];
            }

            while (v67);
            v24 = v90;
            v5 = v82;
LABEL_15:
            v7 = v87;
          }

          v90 = v24;
          goto LABEL_73;
        }

        v12 = [v10 error];

        v13 = objc_autoreleasePoolPush();
        v14 = WeakRetained;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v17 = [v10 error];
          *buf = 138543618;
          v103 = v16;
          v104 = 2112;
          v105 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Read failed with error %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v8 = v12;
LABEL_73:
        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v97 objects:v108 count:16];
      if (!v7)
      {
LABEL_81:

        v77 = v90;
        [WeakRetained _updateSessionState:v90 settings:v88 message:*(v83 + 40)];
        v79 = [*(v83 + 40) responseHandler];

        if (v79)
        {
          v80 = [*(v83 + 40) responseHandler];
          (v80)[2](v80, v8, 0);
        }

        v81 = *(v83 + 48);
        v3 = v84;
        if (v81)
        {
          (*(v81 + 16))(v81, v8);
        }

        goto LABEL_86;
      }
    }
  }

  v72 = objc_autoreleasePoolPush();
  v73 = WeakRetained;
  v74 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    v75 = HMFGetLogIdentifier();
    v76 = *(a1 + 32);
    *buf = 138543618;
    v103 = v75;
    v104 = 2112;
    v105 = v76;
    _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);

    WeakRetained = v89;
  }

  objc_autoreleasePoolPop(v72);
  v77 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  [*(a1 + 40) respondWithError:v77];
  v78 = *(a1 + 48);
  if (v78)
  {
    (*(v78 + 16))(v78, v77);
  }

LABEL_86:
}

- (void)_handleRefreshProfileState:(id)state
{
  v11 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle refresh profile state", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSiriEndpointProfile *)selfCopy _handleRefreshProfileState:stateCopy completionHandler:0];
}

- (void)notifyClientsDidUpdateStagedNeedsOnboarding
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDSiriEndpointProfile_notifyClientsDidUpdateStagedNeedsOnboarding__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __69__HMDSiriEndpointProfile_notifyClientsDidUpdateStagedNeedsOnboarding__block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = *MEMORY[0x277CD0FE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "_capability")}];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying XPC clients of updated needsOnboarding: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_alloc(MEMORY[0x277D0F820]);
  v9 = [*(a1 + 32) uniqueIdentifier];
  v10 = [v8 initWithTarget:v9];

  v11 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD1050] destination:v10 payload:v3];
  [v11 setRequiresSPIEntitlement];
  v12 = [*(a1 + 32) msgDispatcher];
  v13 = objc_msgSend_copy(v11);
  [v12 sendMessage:v13 completionHandler:0];
}

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  stagedNeedsOnboarding = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];

  if (stagedNeedsOnboarding == valueCopy)
  {
    stagedNeedsOnboarding2 = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];
    [stagedNeedsOnboarding2 commitValue:&unk_2866286F0];

    [(HMDSiriEndpointProfile *)self notifyClientsDidUpdateStagedNeedsOnboarding];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = valueCopy;
      v18 = 2112;
      v19 = expireValueCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)handleEnableNotifications:(id)notifications
{
  v15 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = [notificationsCopy numberForKey:*MEMORY[0x277CD0FF0]];
  v6 = [notificationsCopy numberForKey:*MEMORY[0x277CD1000]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Profile Notifications] parameters not specific", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [notificationsCopy respondWithError:v12];
  }

  -[HMDSiriEndpointProfile setNotifications:options:](self, "setNotifications:options:", [v5 BOOLValue], unsignedIntegerValue);
  [notificationsCopy respondWithSuccess];
}

- (void)handleUpdateNeedsOnboarding:(id)onboarding
{
  v30 = *MEMORY[0x277D85DE8];
  onboardingCopy = onboarding;
  userInfo = [onboardingCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"accessoryUUID"];

  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = accessory;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v6)
  {
    if (v9)
    {
      uuid = [v9 uuid];
      v11 = [uuid isEqual:v6];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          name = [onboardingCopy name];
          userInfo2 = [onboardingCopy userInfo];
          v24 = 138543874;
          v25 = v15;
          v26 = 2112;
          v27 = name;
          v28 = 2112;
          v29 = userInfo2;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling %@/%@", &v24, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        userInfo3 = [onboardingCopy userInfo];
        v19 = [userInfo3 objectForKeyedSubscript:@"HMDSiriEndpointProfileNeedsOnboardingResultCodingKey"];

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

        integerValue = [v21 integerValue];
        if (integerValue == 3)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2 * (integerValue == 2);
        }

        [(HMDSiriEndpointProfile *)selfCopy stageNeedsOnboarding:v23];
        [(HMDSiriEndpointProfile *)selfCopy notifyClientsDidUpdateStagedNeedsOnboarding];
      }
    }
  }
}

- (void)updateNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout
{
  [(HMDSiriEndpointProfile *)self stageNeedsOnboarding:onboarding withTimeout:timeout];

  [(HMDSiriEndpointProfile *)self notifyClientsDidUpdateStagedNeedsOnboarding];
}

- (void)handleDeviceCapabilitiesUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDSiriEndpointProfile_handleDeviceCapabilitiesUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __58__HMDSiriEndpointProfile_handleDeviceCapabilitiesUpdated___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = [*(a1 + 32) userInfo];
  v6 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [v5 hmf_arrayForKey:@"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey" ofClasses:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    v27 = 138543874;
    v28 = v13;
    v29 = 2112;
    v30 = v4;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling updated resident capabilities: %@ notification: %@", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [*(a1 + 40) accessory];
  v16 = [v15 home];
  v17 = [v16 residentDeviceManager];
  v18 = [v17 residentDevices];
  v19 = [v18 na_firstObjectPassingTest:&__block_literal_global_164_96623];

  v20 = [v19 device];
  if (v19 && [v19 isConfirmed])
  {
    v21 = [v20 capabilities];
    if (v21 == v4 && ([v9 containsObject:@"supportsSiriEndpointSetup"] & 1) != 0)
    {
      v22 = [v4 supportsSiriEndpointSetup];

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v27 = 138543618;
          v28 = v26;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Current device was updated to support Siri Endpoint Settings (%@)", &v27, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        [*(a1 + 40) _setNotifications:1 options:2];
        [*(a1 + 40) _handleRefreshProfileState:0 completionHandler:0];
      }
    }

    else
    {
    }
  }
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDSiriEndpointProfile_handlePrimaryResidentChanged___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __55__HMDSiriEndpointProfile_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v1 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 home];
  v4 = [v3 residentDeviceManager];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = v4;
  v5 = [v4 residentDevices];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v22 = v1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 isCurrentDevice])
        {
          v11 = [v10 capabilities];
          v12 = [v11 supportsSiriEndpointSetup];

          if (v12)
          {
            v13 = [v10 isConfirmed];
            v14 = objc_autoreleasePoolPush();
            v15 = *(v1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v18 = v17 = v5;
              v19 = HMFBooleanToString();
              *buf = 138543618;
              v28 = v18;
              v29 = 2112;
              v30 = v19;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Current device is primary:%@ and does not support home hub", buf, 0x16u);

              v5 = v17;
              v1 = v22;
            }

            objc_autoreleasePoolPop(v14);
            v20 = *(v1 + 32);
            if (v13)
            {
              [v20 _setNotifications:1 options:2];
              [*(v1 + 32) _handleRefreshProfileState:0 completionHandler:0];
            }

            else
            {
              [v20 _setNotifications:0 options:2];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }
}

- (void)handleAccessoryConfigured:(id)configured
{
  configuredCopy = configured;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDSiriEndpointProfile_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = configuredCopy;
  v6 = configuredCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __52__HMDSiriEndpointProfile_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) accessory];
  v8 = [v7 home];
  v9 = [v8 currentDeviceSupportsSidekickSettings];

  if (v9)
  {
    [*(a1 + 32) _setNotifications:1 options:2];
  }

  if ([*(a1 + 32) _notificationEnabledForType:1])
  {
    [*(a1 + 32) _setNotifications:1 options:1];
  }

  [*(a1 + 32) setSessionState:-1];
  return [*(a1 + 32) _handleRefreshProfileState:0 completionHandler:0];
}

- (void)handleHomeCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v6 count])
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke;
    block[3] = &unk_2797359B0;
    v18 = v6;
    selfCopy = self;
    dispatch_async(workQueue, block);

    v8 = v18;
  }

  else
  {
    userInfo2 = [changedCopy userInfo];
    v8 = [userInfo2 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];

    accessory = [(HMDAccessoryProfile *)self accessory];
    uuid = [accessory uuid];
    uUIDString = [uuid UUIDString];
    v13 = [v8 hmf_dictionaryForKey:uUIDString];

    if (v13)
    {
      workQueue2 = [(HMDAccessoryProfile *)self workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke_2;
      v15[3] = &unk_2797359B0;
      v15[4] = self;
      v16 = v13;
      dispatch_async(workQueue2, v15);
    }
  }
}

void __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v41;
    v29 = *MEMORY[0x277CD21B8];
    v31 = *v41;
    v32 = a1;
    do
    {
      v5 = 0;
      v33 = v3;
      do
      {
        if (*v41 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * v5);
        v7 = [*(a1 + 40) accessory];
        v8 = [v7 uuid];
        v9 = [v6 accessory];
        v10 = [v9 uuid];
        v11 = HMFEqualObjects();

        if (v11)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v12 = [*(a1 + 40) services];
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v37;
            v35 = v5;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v37 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v36 + 1) + 8 * i);
                v18 = [v17 instanceID];
                v19 = [v6 service];
                v20 = [v19 instanceID];
                v21 = HMFEqualObjects();

                if (v21)
                {
                  v22 = [v17 instanceID];
                  v23 = [v22 stringValue];

                  v24 = [v30 objectForKeyedSubscript:v23];
                  if (!v24)
                  {
                    v24 = [MEMORY[0x277CBEB38] dictionary];
                    [v30 setObject:v24 forKeyedSubscript:v23];
                  }

                  v25 = [v6 instanceID];
                  v26 = [v25 stringValue];

                  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
                  v28 = [v6 value];
                  [v27 setObject:v28 forKeyedSubscript:v29];

                  [v24 setObject:v27 forKeyedSubscript:v26];
                  v5 = v35;
                  goto LABEL_19;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
              v5 = v35;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v4 = v31;
          a1 = v32;
          v3 = v33;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v3);
  }

  [*(a1 + 40) _handleCharacteristicChanges:v30];
}

- (void)_handleCharacteristicChanges:(id)changes
{
  v142 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  selfCopy = self;
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessory;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v104 = objc_alloc_init(HMDSiriEndpointHAPSettings);
  v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = changesCopy;
  v90 = [obj countByEnumeratingWithState:&v128 objects:v141 count:16];
  if (v90)
  {
    context = 0;
    v89 = *v129;
    v112 = *MEMORY[0x277CD2128];
    v107 = *MEMORY[0x277CD21B8];
    v101 = *MEMORY[0x277CCFB98];
    v92 = *MEMORY[0x277CCF750];
    v102 = v7;
    v108 = v8;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v129 != v89)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v91 = v9;
        v95 = *(*(&v128 + 1) + 8 * v9);
        v114 = [v8 numberFromString:v89];
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        services = [(HMDSiriEndpointProfile *)selfCopy services];
        v11 = [services countByEnumeratingWithState:&v124 objects:v140 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v125;
          v94 = *v125;
          do
          {
            v14 = 0;
            v96 = v12;
            do
            {
              if (*v125 != v13)
              {
                objc_enumerationMutation(services);
              }

              instanceID = [*(*(&v124 + 1) + 8 * v14) instanceID];
              v16 = HMFEqualObjects();

              if (v16)
              {
                v98 = v14;
                v17 = [obj hmf_dictionaryForKey:v95];
                v120 = 0u;
                v121 = 0u;
                v122 = 0u;
                v123 = 0u;
                v18 = v17;
                v19 = [v18 countByEnumeratingWithState:&v120 objects:v139 count:16];
                if (!v19)
                {
                  goto LABEL_95;
                }

                v20 = v19;
                v113 = *v121;
                while (1)
                {
                  v21 = 0;
                  v109 = v20;
                  do
                  {
                    if (*v121 != v113)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = *(*(&v120 + 1) + 8 * v21);
                    v23 = [v8 numberFromString:v22];
                    v24 = [v7 findCharacteristic:v23 forService:v114];
                    if (v24)
                    {
                      v25 = [v18 hmf_dictionaryForKey:v22];
                      v26 = [v25 hmf_dataForKey:v112];
                      if (v26)
                      {
LABEL_43:

                        goto LABEL_44;
                      }

                      v27 = v18;
                      v28 = v7;
                      v29 = [v25 objectForKeyedSubscript:v107];
                      null = [MEMORY[0x277CBEB68] null];
                      v31 = [v29 isEqual:null];

                      if (v31)
                      {
                        v110 = v29;
                        v7 = v28;
                        v18 = v27;
                        v8 = v108;
                        v20 = v109;

                        goto LABEL_43;
                      }

                      if (!v29)
                      {
                        v7 = v28;
                        v18 = v27;
                        v8 = v108;
                        v20 = v109;
                        goto LABEL_43;
                      }

                      v111 = v29;
                      type = [v24 type];
                      v33 = [type isEqualToString:@"00000254-0000-1000-8000-0026BB765291"];

                      if (v33)
                      {
                        v119 = 0;
                        v34 = [HMDSiriEndpointSessionStateTLV parsedFromData:v29 error:&v119];
                        v35 = v119;

                        contexta = objc_autoreleasePoolPush();
                        v36 = selfCopy;
                        v37 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                        {
                          v99 = HMFGetLogIdentifier();
                          *buf = 138543874;
                          v134 = v99;
                          v135 = 2112;
                          v136 = v34;
                          v137 = 2112;
                          v138 = v35;
                          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Parsed HMDSiriEndpointSessionStateTLV: %@ with error: %@", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(contexta);
                        v7 = v102;
                        v38 = v35;
LABEL_40:
                        v18 = v27;
LABEL_41:
                        v20 = v109;
                      }

                      else
                      {
                        type2 = [v24 type];
                        v40 = [type2 isEqualToString:v101];

                        if (v40)
                        {
                          v41 = v29;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v42 = v41;
                          }

                          else
                          {
                            v42 = 0;
                          }

                          v43 = v42;

                          v38 = v43;
                          [(HMDSiriEndpointHAPSettings *)v104 setSiriEndpointVersion:v43];
                          v34 = context;
                          v7 = v28;
                          goto LABEL_40;
                        }

                        type3 = [v24 type];
                        v45 = [type3 isEqualToString:@"00000255-0000-1000-8000-0026BB765291"];

                        v7 = v28;
                        if (v45)
                        {
                          v46 = v111;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v47 = v46;
                          }

                          else
                          {
                            v47 = 0;
                          }

                          v48 = v47;

                          v38 = v48;
                          [(HMDSiriEndpointHAPSettings *)v104 setSiriEnable:v48];
                          v34 = context;
                          goto LABEL_40;
                        }

                        type4 = [v24 type];
                        v50 = [type4 isEqualToString:@"00000256-0000-1000-8000-0026BB765291"];

                        v18 = v27;
                        if (v50)
                        {
                          v51 = v111;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v52 = v51;
                          }

                          else
                          {
                            v52 = 0;
                          }

                          v53 = v52;

                          v38 = v53;
                          [(HMDSiriEndpointHAPSettings *)v104 setSiriListening:v53];
                          v34 = context;
                          goto LABEL_41;
                        }

                        type5 = [v24 type];
                        v55 = [type5 isEqualToString:@"00000257-0000-1000-8000-0026BB765291"];

                        v20 = v109;
                        if (v55)
                        {
                          v56 = v111;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v57 = v56;
                          }

                          else
                          {
                            v57 = 0;
                          }

                          v58 = v57;

                          v38 = v58;
                          [(HMDSiriEndpointHAPSettings *)v104 setSiriTouchToUse:v58];
                        }

                        else
                        {
                          type6 = [v24 type];
                          v60 = [type6 isEqualToString:@"00000258-0000-1000-8000-0026BB765291"];

                          if (v60)
                          {
                            v61 = v111;
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v62 = v61;
                            }

                            else
                            {
                              v62 = 0;
                            }

                            v63 = v62;

                            v38 = v63;
                            [(HMDSiriEndpointHAPSettings *)v104 setSiriLightOnUse:v63];
                          }

                          else
                          {
                            type7 = [v24 type];
                            v65 = [type7 isEqualToString:@"0000025A-0000-1000-8000-0026BB765291"];

                            if (v65)
                            {
                              v66 = v111;
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v67 = v66;
                              }

                              else
                              {
                                v67 = 0;
                              }

                              v68 = v67;

                              v38 = v68;
                              [(HMDSiriEndpointHAPSettings *)v104 setSiriEngineVersion:v68];
                            }

                            else
                            {
                              type8 = [v24 type];
                              v70 = [type8 isEqualToString:v92];

                              if (v70)
                              {
                                v71 = v111;
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v72 = v71;
                                }

                                else
                                {
                                  v72 = 0;
                                }

                                v73 = v72;

                                v38 = v73;
                                [(HMDSiriEndpointHAPSettings *)v104 setActiveIdentifier:v73];
                              }

                              else
                              {
                                type9 = [v24 type];
                                v75 = [type9 isEqualToString:@"00000227-0000-1000-8000-0026BB765291"];

                                if (v75)
                                {
                                  v76 = v111;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v77 = v76;
                                  }

                                  else
                                  {
                                    v77 = 0;
                                  }

                                  v78 = v77;

                                  v38 = v78;
                                  [(HMDSiriEndpointHAPSettings *)v104 setManuallyDisabled:v78];
                                }

                                else
                                {
                                  type10 = [v24 type];
                                  v80 = [type10 isEqualToString:@"0000026B-0000-1000-8000-0026BB765291"];

                                  if (!v80)
                                  {
                                    v117 = 0u;
                                    v118 = 0u;
                                    v115 = 0u;
                                    v116 = 0u;
                                    assistants = [(HMDSiriEndpointProfile *)selfCopy assistants];
                                    v84 = [assistants countByEnumeratingWithState:&v115 objects:v132 count:16];
                                    if (v84)
                                    {
                                      v85 = v84;
                                      v86 = *v116;
                                      do
                                      {
                                        for (i = 0; i != v85; ++i)
                                        {
                                          if (*v116 != v86)
                                          {
                                            objc_enumerationMutation(assistants);
                                          }

                                          if ([*(*(&v115 + 1) + 8 * i) updateCharacteristic:v24 value:v111])
                                          {
                                            [(HMDSiriEndpointHAPSettings *)v104 setAssistantsUpdated:1];
                                          }
                                        }

                                        v85 = [assistants countByEnumeratingWithState:&v115 objects:v132 count:16];
                                      }

                                      while (v85);
                                      v34 = context;
                                      v7 = v102;
                                    }

                                    else
                                    {
                                      v34 = context;
                                    }

                                    v38 = assistants;
                                    goto LABEL_42;
                                  }

                                  v81 = v111;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v82 = v81;
                                  }

                                  else
                                  {
                                    v82 = 0;
                                  }

                                  v83 = v82;

                                  v38 = v83;
                                  [(HMDSiriEndpointHAPSettings *)v104 setMultifunctionButton:v83];
                                }
                              }
                            }
                          }
                        }

                        v34 = context;
                      }

LABEL_42:

                      context = v34;
                      v8 = v108;

                      goto LABEL_43;
                    }

LABEL_44:

                    ++v21;
                  }

                  while (v21 != v20);
                  v88 = [v18 countByEnumeratingWithState:&v120 objects:v139 count:16];
                  v20 = v88;
                  if (!v88)
                  {
LABEL_95:

                    v13 = v94;
                    v12 = v96;
                    v14 = v98;
                    break;
                  }
                }
              }

              ++v14;
            }

            while (v14 != v12);
            v12 = [services countByEnumeratingWithState:&v124 objects:v140 count:16];
          }

          while (v12);
        }

        v9 = v91 + 1;
      }

      while (v91 + 1 != v90);
      v90 = [obj countByEnumeratingWithState:&v128 objects:v141 count:16];
      if (!v90)
      {
        goto LABEL_102;
      }
    }
  }

  context = 0;
LABEL_102:

  [(HMDSiriEndpointProfile *)selfCopy _updateSessionState:context settings:v104 message:0];
}

- (void)setSiriEngineVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(versionCopy);
  siriEngineVersion = self->_siriEngineVersion;
  self->_siriEngineVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)siriEngineVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEngineVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSiriLightOnUse:(int64_t)use
{
  os_unfair_lock_lock_with_options();
  self->_siriLightOnUse = use;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriLightOnUse
{
  os_unfair_lock_lock_with_options();
  siriLightOnUse = self->_siriLightOnUse;
  os_unfair_lock_unlock(&self->_lock);
  return siriLightOnUse;
}

- (void)setSiriTouchToUse:(int64_t)use
{
  os_unfair_lock_lock_with_options();
  self->_siriTouchToUse = use;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriTouchToUse
{
  os_unfair_lock_lock_with_options();
  siriTouchToUse = self->_siriTouchToUse;
  os_unfair_lock_unlock(&self->_lock);
  return siriTouchToUse;
}

- (void)setSiriListening:(int64_t)listening
{
  os_unfair_lock_lock_with_options();
  self->_siriListening = listening;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriListening
{
  os_unfair_lock_lock_with_options();
  siriListening = self->_siriListening;
  os_unfair_lock_unlock(&self->_lock);
  return siriListening;
}

- (void)setSiriEnable:(int64_t)enable
{
  os_unfair_lock_lock_with_options();
  self->_siriEnable = enable;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriEnable
{
  os_unfair_lock_lock_with_options();
  siriEnable = self->_siriEnable;
  os_unfair_lock_unlock(&self->_lock);
  return siriEnable;
}

- (void)setMultifunctionButton:(int64_t)button
{
  os_unfair_lock_lock_with_options();
  self->_multifunctionButton = button;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)multifunctionButton
{
  os_unfair_lock_lock_with_options();
  multifunctionButton = self->_multifunctionButton;
  os_unfair_lock_unlock(&self->_lock);
  return multifunctionButton;
}

- (void)setManuallyDisabled:(BOOL)disabled
{
  os_unfair_lock_lock_with_options();
  self->_manuallyDisabled = disabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)manuallyDisabled
{
  os_unfair_lock_lock_with_options();
  manuallyDisabled = self->_manuallyDisabled;
  os_unfair_lock_unlock(&self->_lock);
  return manuallyDisabled;
}

- (void)setActiveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(identifierCopy);
  activeIdentifier = self->_activeIdentifier;
  self->_activeIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)activeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activeIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)needsOnboarding
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessory;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5 || ([v5 needsOnboarding], (value = objc_claimAutoreleasedReturnValue()) == 0))
  {
    stagedNeedsOnboarding = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];
    value = [stagedNeedsOnboarding value];
  }

  return value;
}

- (void)stageNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2048;
    onboardingCopy = onboarding;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging needsOnboarding: %ld", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  stagedNeedsOnboarding = [(HMDSiriEndpointProfile *)selfCopy stagedNeedsOnboarding];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:onboarding];
  [stagedNeedsOnboarding stageValue:v12 withTimeout:timeout];
}

- (void)stageNeedsOnboarding:(int64_t)onboarding
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v7 = [mEMORY[0x277D0F8D0] preferenceForKey:@"siriProfileOnBoardingPendingTime"];

  numberValue = [v7 numberValue];
  [numberValue doubleValue];
  [(HMDSiriEndpointProfile *)self stageNeedsOnboarding:onboarding withTimeout:?];
}

- (NSArray)assistants
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistants;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssistants:(id)assistants
{
  assistantsCopy = assistants;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(assistantsCopy);
  assistants = self->_assistants;
  self->_assistants = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addService:(id)service
{
  v30 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessory = [(HMDAccessoryProfile *)self accessory];
  workQueue = [accessory workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (serviceCopy)
  {
    v7 = MEMORY[0x277CBEB18];
    profileServices = [(HMDSiriEndpointProfile *)self profileServices];
    v9 = [v7 arrayWithArray:profileServices];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          instanceID = [*(*(&v25 + 1) + 8 * v14) instanceID];
          instanceID2 = [serviceCopy instanceID];
          v17 = [instanceID isEqual:instanceID2];

          if (v17)
          {
            v22 = v10;
            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [v10 addObject:serviceCopy];
    v18 = objc_msgSend_copy(v10);
    [(HMDSiriEndpointProfile *)self setProfileServices:v18];

    v19 = objc_msgSend_serviceType(serviceCopy);
    v20 = [v19 isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"];

    if (v20)
    {
      assistants = [(HMDSiriEndpointProfile *)self assistants];
      v22 = [assistants mutableCopy];

      v23 = [[HMDSiriEndpointProfileAssistant alloc] initWithService:serviceCopy];
      [v22 addObject:v23];
      v24 = objc_msgSend_copy(v22);
      [(HMDSiriEndpointProfile *)self setAssistants:v24];

LABEL_13:
    }
  }
}

- (NSArray)profileServices
{
  os_unfair_lock_lock_with_options();
  v3 = self->_profileServices;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProfileServices:(id)services
{
  servicesCopy = services;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(servicesCopy);
  profileServices = self->_profileServices;
  self->_profileServices = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSiriEndpointVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(versionCopy);
  siriEndpointVersion = self->_siriEndpointVersion;
  self->_siriEndpointVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)siriEndpointVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEndpointVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)sessionHubIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionHubIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSessionHubIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(identifierCopy);
  sessionHubIdentifier = self->_sessionHubIdentifier;
  self->_sessionHubIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_siriSettingMultifunctionButtonReadRequest
{
  _siriSettingMultifunctionButtonCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingMultifunctionButtonCharacteristic];
  if (_siriSettingMultifunctionButtonCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingMultifunctionButtonCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingMultifunctionButtonCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"0000026B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriEndpointManuallyDisabledReadRequest
{
  _siriEndpointManuallyDisabledCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointManuallyDisabledCharacteristic];
  if (_siriEndpointManuallyDisabledCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointManuallyDisabledCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointManuallyDisabledCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:@"00000227-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriEndpointActiveIdentifierReadRequest
{
  _siriEndpointActiveIdentifierCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointActiveIdentifierCharacteristic];
  if (_siriEndpointActiveIdentifierCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointActiveIdentifierCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointActiveIdentifierCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:*MEMORY[0x277CCF750]];

  return v3;
}

- (id)_siriEndpointVersionReadRequest
{
  _siriEndpointVersionCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointVersionCharacteristic];
  if (_siriEndpointVersionCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointVersionCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointVersionCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:*MEMORY[0x277CCFB98]];

  return v3;
}

- (id)_siriEndpointSessionStatusReadRequest
{
  _siriEndpointSessionStatusCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointSessionStatusCharacteristic];
  if (_siriEndpointSessionStatusCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointSessionStatusCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointSessionStatusCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:@"00000254-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriEngineVersionReadRequest
{
  _siriSettingSiriEngineVersionCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEngineVersionCharacteristic];
  if (_siriSettingSiriEngineVersionCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriEngineVersionCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriEngineVersionCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"0000025A-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriLightOnUseReadRequest
{
  _siriSettingSiriLightOnUseCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];
  if (_siriSettingSiriLightOnUseCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriLightOnUseCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriLightOnUseCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000258-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriTouchReadRequest
{
  _siriSettingSiriTouchCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];
  if (_siriSettingSiriTouchCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriTouchCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriTouchCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000257-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriListeningReadRequest
{
  _siriSettingSiriListeningCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];
  if (_siriSettingSiriListeningCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriListeningCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriListeningCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000256-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriEnableReadRequest
{
  _siriSettingSiriEnableCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
  if (_siriSettingSiriEnableCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriEnableCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriEnableCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000255-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)unregisterForNotifications
{
  notificationCenter = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)registerForNotifications
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  notificationCenter = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

  notificationCenter2 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:home];

  notificationCenter3 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  notificationCenter4 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter4 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter5 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter5 addObserver:self selector:sel_handleDeviceCapabilitiesUpdated_ name:@"HMDDeviceCapabilitiiesUpdatedNotification" object:0];

  notificationCenter6 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter6 addObserver:self selector:sel_handleUpdateNeedsOnboarding_ name:@"HMDSiriEndpointProfileUpdateNeedsOnboardingNotification" object:0];
}

- (void)registerForMessages
{
  v12[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  v11.receiver = self;
  v11.super_class = HMDSiriEndpointProfile;
  [(HMDAccessoryProfile *)&v11 registerForMessages];
  [(HMDSiriEndpointProfile *)self unregisterForNotifications];
  [(HMDSiriEndpointProfile *)self registerForNotifications];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HMDSiriEndpointProfile_registerForMessages__block_invoke;
  v10[3] = &unk_279735D00;
  v10[4] = self;
  dispatch_async(workQueue, v10);

  msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v12[0] = v7;
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  [msgDispatcher registerForMessage:*MEMORY[0x277CD1020] receiver:self policies:v9 selector:sel__handleRefreshProfileState_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CD0FF8] receiver:self policies:v9 selector:sel_handleEnableNotifications_];
}

void __45__HMDSiriEndpointProfile_registerForMessages__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 home];
  v4 = [v3 currentDeviceSupportsSidekickSettings];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for characteristic notifications since current device supports home hub", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) _setNotifications:1 options:2];
    [*(a1 + 32) _handleRefreshProfileState:0 completionHandler:0];
  }
}

- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services notificationCenter:(id)center
{
  v59 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  centerCopy = center;
  firstObject = [servicesCopy firstObject];
  accessory = [firstObject accessory];
  if (accessory)
  {
    v10 = [objc_opt_class() uniqueIdentifierFromAccessory:accessory];
    v11 = HMDispatchQueueNameString();
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    v53.receiver = self;
    v53.super_class = HMDSiriEndpointProfile;
    v15 = [(HMDAccessoryProfile *)&v53 initWithAccessory:accessory uniqueIdentifier:v10 services:0 workQueue:v14];

    if (v15)
    {
      v47 = centerCopy;
      v15->_sessionState = -1;
      hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
      sessionHubIdentifier = v15->_sessionHubIdentifier;
      v15->_sessionHubIdentifier = hmf_zeroUUID;

      siriEndpointVersion = v15->_siriEndpointVersion;
      v15->_siriEndpointVersion = &stru_286509E58;

      array = servicesCopy;
      if (!servicesCopy)
      {
        array = [MEMORY[0x277CBEA60] array];
      }

      v46 = accessory;
      objc_storeStrong(&v15->_profileServices, array);
      v48 = servicesCopy;
      if (!servicesCopy)
      {
      }

      objc_storeStrong(&v15->_notificationCenter, center);
      v15->_siriEnable = -1;
      v15->_siriListening = -1;
      v15->_siriTouchToUse = -1;
      v15->_siriLightOnUse = -1;
      siriEngineVersion = v15->_siriEngineVersion;
      v15->_siriEngineVersion = &stru_286509E58;

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDSiriEndpointProfile.Endpoint.%@", @"com.apple.HomeKitDaemon.Local", v10];
      clientEndpointIdentifier = v15->_clientEndpointIdentifier;
      v15->_clientEndpointIdentifier = v21;

      v45 = v10;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDSiriEndpointProfile.Settings.%@", @"com.apple.HomeKitDaemon.Local", v10];
      clientSettingsIdentifier = v15->_clientSettingsIdentifier;
      v15->_clientSettingsIdentifier = v23;

      v15->_manuallyDisabled = 0;
      v15->_multifunctionButton = -1;
      array2 = [MEMORY[0x277CBEB18] array];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v44 = v15;
      v26 = v15->_profileServices;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v50;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v50 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v49 + 1) + 8 * i);
            v32 = objc_msgSend_serviceType(v31);
            v33 = [v32 isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"];

            if (v33)
            {
              v34 = [[HMDSiriEndpointProfileAssistant alloc] initWithService:v31];
              [array2 addObject:v34];
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v28);
      }

      v35 = objc_msgSend_copy(array2);
      v15 = v44;
      assistants = v44->_assistants;
      v44->_assistants = v35;

      v37 = [objc_alloc(MEMORY[0x277D0F900]) initWithValue:&unk_2866286F0];
      stagedNeedsOnboarding = v44->_stagedNeedsOnboarding;
      v44->_stagedNeedsOnboarding = v37;

      [(HMFStagedValue *)v15->_stagedNeedsOnboarding setDelegate:v15];
      centerCopy = v47;
      servicesCopy = v48;
      accessory = v46;
      v10 = v45;
    }

    self = v15;

    selfCopy = self;
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v42;
      v57 = 2112;
      v58 = servicesCopy;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Cannot create Siri Endpoint profile, cannot determine accessory from services %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services
{
  v4 = MEMORY[0x277CCAB98];
  servicesCopy = services;
  defaultCenter = [v4 defaultCenter];
  v7 = [(HMDSiriEndpointProfile *)self initWithSiriEndpointServices:servicesCopy notificationCenter:defaultCenter];

  return v7;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v25[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  accessory = [v12 accessory];
  home = [accessory home];

  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v25[0] = v15;
  v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v25[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

  name = [messageCopy name];
  LODWORD(v16) = [name isEqualToString:*MEMORY[0x277CD1020]];

  name2 = [messageCopy name];
  name3 = name2;
  if (v16)
  {
    goto LABEL_7;
  }

  v21 = [name2 isEqualToString:*MEMORY[0x277CD0FF8]];

  if (v21)
  {
    name3 = [messageCopy name];
LABEL_7:
    v22 = HMFCreateMessageBinding();

    goto LABEL_9;
  }

  v24.receiver = self;
  v24.super_class = &OBJC_METACLASS___HMDSiriEndpointProfile;
  v22 = objc_msgSendSuper2(&v24, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
LABEL_9:

  return v22;
}

+ (id)uniqueIdentifierFromAccessory:(id)accessory
{
  v3 = MEMORY[0x277CBEB28];
  accessoryCopy = accessory;
  v5 = [v3 dataWithLength:16];
  uuid = [accessoryCopy uuid];

  [uuid getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];
  v7 = MEMORY[0x277CCAD78];
  namespace = [objc_opt_class() namespace];
  v9 = [v7 hmf_UUIDWithNamespace:namespace data:v5];

  return v9;
}

+ (id)namespace
{
  if (namespace_onceToken_96675 != -1)
  {
    dispatch_once(&namespace_onceToken_96675, &__block_literal_global_96676);
  }

  v3 = namespace_namespace_96677;

  return v3;
}

uint64_t __35__HMDSiriEndpointProfile_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4CF0DBFA-FE71-485F-956B-20002E66B3AA"];
  v1 = namespace_namespace_96677;
  namespace_namespace_96677 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end