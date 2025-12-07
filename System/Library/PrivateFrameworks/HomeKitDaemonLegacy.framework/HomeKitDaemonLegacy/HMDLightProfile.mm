@interface HMDLightProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)enableNaturalLightingCharacteristicNotificationsForObserver:(id)observer;
- (BOOL)shouldRetrySetNaturalLightingEnabledWithError:(id)error;
- (BOOL)supportsCHIP;
- (BOOL)updateActiveTransitionCountWithCharacteristic:(id)characteristic;
- (BOOL)updateEnabledCharacteristicsNotifications;
- (BOOL)updateNaturalLightingCurve;
- (HMDHAPAccessory)hapAccessory;
- (HMDLightProfile)initWithUUID:(id)d workQueue:(id)queue lightService:(id)service accessory:(id)accessory characteristicsAvailabilityListener:(id)listener naturalLightingCurveWriter:(id)writer dataSource:(id)source;
- (HMDLightProfile)initWithWorkQueue:(id)queue lightService:(id)service accessory:(id)accessory;
- (HMLightProfileSettings)settings;
- (NSDate)mostRecentNaturalLightingEnabledDate;
- (NSDate)mostRecentNaturalLightingUsedDate;
- (NSSet)availableCharacteristics;
- (NSSet)readCharacteristicRequests;
- (id)availableCharacteristicWithType:(id)type fromChangedObjects:(id)objects;
- (id)updateSettingsWithReadCharacteristicResponsePayload:(id)payload error:(id *)error;
- (void)_handleAccessoryCharacteristicsChanged:(id)changed;
- (void)callSetNaturalLightingEnabledCompletion:(id)completion error:(id)error;
- (void)dealloc;
- (void)disableNaturalLightingCharacteristicNotificationsForObserver:(id)observer;
- (void)encodeWithCoder:(id)coder;
- (void)fetchNaturalLightingEnabledWithCompletion:(id)completion;
- (void)handleAccessoryCharacteristicsChanged:(id)changed;
- (void)handleAccessoryUnconfigured:(id)unconfigured;
- (void)handleFetchNaturalLightColorTemperatureForBrightnessMessage:(id)message;
- (void)handleHomeDidDisableCharacteristicNotification:(id)notification;
- (void)handleHomeDidEnableCharacteristicNotification:(id)notification;
- (void)handleHomeNaturalLightingContextUpdated:(id)updated;
- (void)handleSetNaturalLightingEnabled:(BOOL)enabled;
- (void)handleSetNaturalLightingEnabledMessage:(id)message;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)notifyClientsOfUpdatedSettingsWithPreviousSettings:(id)settings;
- (void)readNaturalLightingCharacteristicsWithReason:(id)reason;
- (void)readNaturalLightingCharacteristicsWithReason:(id)reason completion:(id)completion;
- (void)registerForMessages;
- (void)resetNaturalLightingEnabledRetryContext;
- (void)retrySetNaturalLightingEnabledWithContext:(id)context error:(id)error;
- (void)setNaturalLightingCharacteristicsNotificationEnabled:(BOOL)enabled forObserver:(id)observer;
- (void)setNaturalLightingEnabled:(BOOL)enabled completion:(id)completion;
- (void)setNaturalLightingEnabled:(BOOL)enabled completion:(id)completion retryContext:(id)context;
- (void)setNaturalLightingEnabled:(BOOL)enabled shouldRetryOnFailure:(BOOL)failure completion:(id)completion;
- (void)synchronizeCurveToAccessory;
- (void)updateNaturalLightingEnabledForCharacteristic:(id)characteristic;
- (void)updateSettingsWithCharacteristics:(id)characteristics;
- (void)updateSupportedFeaturesWithCharacteristics:(id)characteristics;
@end

@implementation HMDLightProfile

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (BOOL)supportsCHIP
{
  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  supportsCHIP = [hapAccessory supportsCHIP];

  return supportsCHIP;
}

- (void)handleHomeNaturalLightingContextUpdated:(id)updated
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLightProfile_handleHomeNaturalLightingContextUpdated___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __59__HMDLightProfile_handleHomeNaturalLightingContextUpdated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) updateNaturalLightingCurve])
  {
    v4 = [*(a1 + 32) settings];
    v2 = *(a1 + 32);
    v3 = [v2 availableCharacteristics];
    [v2 updateSupportedFeaturesWithCharacteristics:v3];

    [*(a1 + 32) notifyClientsOfUpdatedSettingsWithPreviousSettings:v4];
    [*(a1 + 32) synchronizeCurveToAccessory];
  }
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDLightProfile_handleHomeDidDisableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __66__HMDLightProfile_handleHomeDidDisableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) object];
  [v1 disableNaturalLightingCharacteristicNotificationsForObserver:v2];
}

- (void)handleHomeDidEnableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDLightProfile_handleHomeDidEnableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMDLightProfile_handleHomeDidEnableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) object];
  [v1 enableNaturalLightingCharacteristicNotificationsForObserver:v2];
}

- (void)handleAccessoryCharacteristicsChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDLightProfile_handleAccessoryCharacteristicsChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

- (void)handleAccessoryUnconfigured:(id)unconfigured
{
  unconfiguredCopy = unconfigured;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDLightProfile_handleAccessoryUnconfigured___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = unconfiguredCopy;
  v6 = unconfiguredCopy;
  dispatch_async(workQueue, v7);
}

void __47__HMDLightProfile_handleAccessoryUnconfigured___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling accessory disconnected notification: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CBEB98] set];
  [*(a1 + 32) setReadCharacteristics:v7];
}

- (void)fetchNaturalLightingEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDLightProfile_fetchNaturalLightingEnabledWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __61__HMDLightProfile_fetchNaturalLightingEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) characteristicValueObservers];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) readCharacteristics];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@At least one characteristic value observer subscribed and last time read was successful, so returning the cached enabled value as it should be up to date", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) settings];
      (*(v9 + 16))(v9, [v10 isNaturalLightingEnabled], 0);

      return;
    }
  }

  else
  {
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  [v11 readNaturalLightingCharacteristicsWithReason:@"Get up to date natural lighting enabled value" completion:v12];
}

- (void)setNaturalLightingCharacteristicsNotificationEnabled:(BOOL)enabled forObserver:(id)observer
{
  observerCopy = observer;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (enabled)
  {
    v7 = [(HMDLightProfile *)self enableNaturalLightingCharacteristicNotificationsForObserver:observerCopy];

    if (v7)
    {

      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }
  }

  else
  {
    [(HMDLightProfile *)self disableNaturalLightingCharacteristicNotificationsForObserver:observerCopy];
  }
}

- (NSDate)mostRecentNaturalLightingUsedDate
{
  if (([(HMDLightProfile *)self supportedFeatures]& 1) != 0)
  {
    lastNaturalLightingUsedDate = [(HMDLightProfile *)self lastNaturalLightingUsedDate];
  }

  else
  {
    lastNaturalLightingUsedDate = 0;
  }

  return lastNaturalLightingUsedDate;
}

- (NSDate)mostRecentNaturalLightingEnabledDate
{
  if (([(HMDLightProfile *)self supportedFeatures]& 1) != 0)
  {
    lastNaturalLightingEnabledDate = [(HMDLightProfile *)self lastNaturalLightingEnabledDate];
  }

  else
  {
    lastNaturalLightingEnabledDate = 0;
  }

  return lastNaturalLightingEnabledDate;
}

- (void)setNaturalLightingEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDLightProfile_setNaturalLightingEnabled_completion___block_invoke;
  block[3] = &unk_279733DB0;
  enabledCopy = enabled;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (HMLightProfileSettings)settings
{
  v2 = [objc_alloc(MEMORY[0x277CD1B28]) initWithSupportedFeatures:-[HMDLightProfile supportedFeatures](self naturalLightingEnabled:{"supportedFeatures"), -[HMDLightProfile isNaturalLightingEnabled](self, "isNaturalLightingEnabled")}];

  return v2;
}

- (NSSet)readCharacteristicRequests
{
  availableCharacteristics = [(HMDLightProfile *)self availableCharacteristics];
  v3 = [availableCharacteristics na_map:&__block_literal_global_159_183915];

  if ([v3 count] == 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

id __45__HMDLightProfile_readCharacteristicRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if (([v3 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"00000144-0000-1000-8000-0026BB765291") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"0000024B-0000-1000-8000-0026BB765291"))
  {
    v4 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)updateSettingsWithReadCharacteristicResponsePayload:(id)payload error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  readCharacteristicRequests = [(HMDLightProfile *)self readCharacteristicRequests];
  v8 = [readCharacteristicRequests na_map:&__block_literal_global_156_183918];

  if (![v8 count])
  {
    v41 = [MEMORY[0x277CBEB98] set];
    [(HMDLightProfile *)self setReadCharacteristics:v41];

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    }

    v42 = objc_autoreleasePoolPush();
    selfCopy = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Read characteristics disappeared from the light profile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
LABEL_56:
    settings = 0;
    goto LABEL_57;
  }

  errorCopy = error;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = *v77;
  v70 = v8;
  selfCopy2 = self;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v77 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v76 + 1) + 8 * i);
      v75 = 0;
      v14 = [payloadCopy hmd_valueOfCharacteristic:v13 error:{&v75, v70}];
      v15 = v75;
      if (!v14)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = selfCopy2;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543874;
          v81 = v49;
          v82 = 2112;
          v83 = v13;
          v84 = 2112;
          v85 = v15;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Read request failed for characteristic failed %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
        v50 = [MEMORY[0x277CBEB98] set];
        [(HMDLightProfile *)v47 setReadCharacteristics:v50];

        v51 = errorCopy;
        v52 = obj;
        if (errorCopy)
        {
          v53 = v15;
          v18 = 0;
          goto LABEL_51;
        }

        v18 = 0;
        goto LABEL_53;
      }

      type = [v13 type];
      v17 = [type isEqualToString:@"0000024B-0000-1000-8000-0026BB765291"];

      if (v17)
      {
        v18 = v14;
        objc_opt_class();
        v19 = objc_opt_isKindOfClass() & 1;
        if (v19)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (!v19)
        {
          v54 = objc_autoreleasePoolPush();
          v55 = selfCopy2;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v58 = HMFGetLogIdentifier();
            v59 = objc_opt_class();
            *buf = 138544130;
            v81 = v58;
            v82 = 2112;
            v83 = v13;
            v84 = 2112;
            v85 = v18;
            v86 = 2112;
            v87 = v59;
            _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Value of characteristic: %@ is not of expected type %@:%@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v54);
          v60 = [MEMORY[0x277CBEB98] set];
          [(HMDLightProfile *)v55 setReadCharacteristics:v60];

          v51 = errorCopy;
          if (errorCopy)
          {
            v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
            v8 = v70;
            v52 = obj;
            goto LABEL_52;
          }

          v8 = v70;
          v52 = obj;
LABEL_55:

          goto LABEL_56;
        }
      }

      else
      {
        type2 = [v13 type];
        if ([type2 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"])
        {
        }

        else
        {
          type3 = [v13 type];
          v24 = [type3 isEqualToString:@"00000144-0000-1000-8000-0026BB765291"];

          if (!v24)
          {
            goto LABEL_22;
          }
        }

        v18 = v14;
        objc_opt_class();
        v25 = objc_opt_isKindOfClass() & 1;
        if (v25)
        {
          v26 = v18;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        if (!v25)
        {
          v63 = objc_autoreleasePoolPush();
          v64 = selfCopy2;
          v65 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = HMFGetLogIdentifier();
            v67 = objc_opt_class();
            *buf = 138544130;
            v81 = v66;
            v82 = 2112;
            v83 = v13;
            v84 = 2112;
            v85 = v18;
            v86 = 2112;
            v87 = v67;
            _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@Value of characteristic: %@ is not of expected type %@:%@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v63);
          v68 = [MEMORY[0x277CBEB98] set];
          [(HMDLightProfile *)v64 setReadCharacteristics:v68];

          v51 = errorCopy;
          v52 = obj;
          if (errorCopy)
          {
            v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
LABEL_51:
            v8 = v70;
LABEL_52:
            *v51 = v53;
            goto LABEL_55;
          }

LABEL_53:
          v8 = v70;
          goto LABEL_55;
        }
      }

LABEL_22:
    }

    v10 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    v8 = v70;
    self = selfCopy2;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_24:

  [(HMDLightProfile *)self setReadCharacteristics:obj];
  v28 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v81 = v31;
    v82 = 2112;
    v83 = obj;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Successfully handled read response payload for characteristics:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  hapAccessory = [(HMDLightProfile *)selfCopy3 hapAccessory];
  home = [hapAccessory home];
  naturalLightingContext = [home naturalLightingContext];
  if (naturalLightingContext)
  {
    v35 = naturalLightingContext;
    naturalLightingCurve = [(HMDLightProfile *)selfCopy3 naturalLightingCurve];

    if (!naturalLightingCurve)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy3;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v81 = v40;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Initialize the curve before updating settings", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      [(HMDLightProfile *)v38 updateNaturalLightingCurve];
    }
  }

  else
  {
  }

  availableCharacteristics = [(HMDLightProfile *)selfCopy3 availableCharacteristics];
  [(HMDLightProfile *)selfCopy3 updateSettingsWithCharacteristics:availableCharacteristics];

  settings = [(HMDLightProfile *)selfCopy3 settings];
LABEL_57:

  return settings;
}

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke;
  v15[3] = &unk_279733D48;
  v15[4] = self;
  v7 = [characteristicsCopy na_filter:v15];

  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_144_183929];
  [(HMDLightProfile *)self setBrightnessCharacteristic:v8];

  v9 = [v7 na_firstObjectPassingTest:&__block_literal_global_146_183930];
  [(HMDLightProfile *)self setColorTemperatureCharacteristic:v9];

  [(HMDLightProfile *)self updateNaturalLightingCurve];
  [(HMDLightProfile *)self updateSettingsWithCharacteristics:v7];
  [(HMDLightProfile *)self updateEnabledCharacteristicsNotifications];
  readCharacteristicRequests = [(HMDLightProfile *)self readCharacteristicRequests];
  v11 = [readCharacteristicRequests na_map:&__block_literal_global_149_183931];

  characteristicValueObservers = [(HMDLightProfile *)self characteristicValueObservers];
  if ([characteristicValueObservers count])
  {
    readCharacteristics = [(HMDLightProfile *)self readCharacteristics];
    v14 = [readCharacteristics isEqual:v11];

    if ((v14 & 1) == 0)
    {
      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }
  }

  else
  {
  }
}

uint64_t __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [*(a1 + 32) service];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF7D8]];

  return v3;
}

uint64_t __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDLightProfile;
  coderCopy = coder;
  [(HMDAccessoryProfile *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDLightProfile *)self settings:v6.receiver];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD07A8]];
}

- (NSSet)availableCharacteristics
{
  characteristicsAvailabilityListener = [(HMDLightProfile *)self characteristicsAvailabilityListener];
  availableCharacteristics = [characteristicsAvailabilityListener availableCharacteristics];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDLightProfile_availableCharacteristics__block_invoke;
  v7[3] = &unk_279733D48;
  v7[4] = self;
  v5 = [availableCharacteristics na_filter:v7];

  return v5;
}

uint64_t __43__HMDLightProfile_availableCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [*(a1 + 32) service];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)callSetNaturalLightingEnabledCompletion:(id)completion error:(id)error
{
  errorCopy = error;
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLightProfile *)self setNaturalLightingEnabledRetryContext:0];
  completionCopy[2](completionCopy, errorCopy);
}

- (BOOL)shouldRetrySetNaturalLightingEnabledWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CCFD28]])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != 4)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (void)retrySetNaturalLightingEnabledWithContext:(id)context error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  errorCopy = error;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  completion = [contextCopy completion];
  naturalLightingEnabled = [contextCopy naturalLightingEnabled];
  dataSource = [(HMDLightProfile *)self dataSource];
  naturalLightingEnabledMaxRetryCount = [dataSource naturalLightingEnabledMaxRetryCount];

  dataSource2 = [(HMDLightProfile *)self dataSource];
  [dataSource2 naturalLightingEnabledRetryInterval];
  v15 = v14;

  if (naturalLightingEnabledMaxRetryCount < 1 || *&v15 <= 0.0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v22;
      v37 = 2048;
      v38 = naturalLightingEnabledMaxRetryCount;
      v39 = 2048;
      v40 = v15;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Skipping retry because either retry count: %ld or retry interval: %f is less than or equal to 0", buf, 0x20u);
    }

    goto LABEL_6;
  }

  naturalLightingEnabledRetryContext = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
  v17 = [naturalLightingEnabledRetryContext retryCount] + 1;

  if (v17 > naturalLightingEnabledMaxRetryCount)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v21;
      v37 = 2112;
      v38 = contextCopy;
      v39 = 2048;
      v40 = naturalLightingEnabledMaxRetryCount;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Natural Lighting enabled for retry context: %@ exhausted retry attempts: %lu", buf, 0x20u);
    }

LABEL_6:

    objc_autoreleasePoolPop(v18);
    [(HMDLightProfile *)selfCopy2 callSetNaturalLightingEnabledCompletion:completion error:errorCopy];
    goto LABEL_13;
  }

  naturalLightingEnabledRetryContext2 = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
  [naturalLightingEnabledRetryContext2 setRetryCount:v17];

  v24 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v27;
    v37 = 2112;
    v38 = contextCopy;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Will retry set Natural Lighting enabled with retry context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  objc_initWeak(buf, selfCopy3);
  dataSource3 = [(HMDLightProfile *)selfCopy3 dataSource];
  workQueue2 = [(HMDAccessoryProfile *)selfCopy3 workQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__HMDLightProfile_retrySetNaturalLightingEnabledWithContext_error___block_invoke;
  v30[3] = &unk_279733D20;
  objc_copyWeak(v33, buf);
  v31 = contextCopy;
  v32 = completion;
  v33[1] = v15;
  v34 = naturalLightingEnabled;
  [dataSource3 dispatchAfterTimeInterval:workQueue2 queue:v30 block:*&v15];

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);
LABEL_13:
}

void __67__HMDLightProfile_retrySetNaturalLightingEnabledWithContext_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v22 = 138543874;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Retrying Natural Lighting enabled with retry context: %@ after %fs", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [v4 naturalLightingEnabledRetryContext];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      [v4 setNaturalLightingEnabled:*(a1 + 64) completion:*(a1 + 40) retryContext:*(a1 + 32)];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v4;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v12 naturalLightingEnabledRetryContext];
        v16 = *(a1 + 32);
        v22 = 138543874;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Not retrying because retry context changed from (%@ -> %@)", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Natural Lighting enabled for retry context %@ because self is gone", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setNaturalLightingEnabled:(BOOL)enabled completion:(id)completion retryContext:(id)context
{
  enabledCopy = enabled;
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  contextCopy = context;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMFBooleanToString();
    *buf = 138543874;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = contextCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled: %@ with retry context: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  accessory = [(HMDAccessoryProfile *)selfCopy accessory];
  home = [accessory home];
  if (home)
  {
    objc_initWeak(buf, selfCopy);
    naturalLightingCurveWriter = [home naturalLightingCurveWriter];
    v19 = [MEMORY[0x277CBEB98] setWithObject:selfCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke;
    v25[3] = &unk_279733CF8;
    objc_copyWeak(&v28, buf);
    v29 = enabledCopy;
    v27 = completionCopy;
    v26 = contextCopy;
    [naturalLightingCurveWriter setNaturalLightingEnabled:enabledCopy forLightProfiles:v19 completion:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v23;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = accessory;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Home on accessory with light profile is not set %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [(HMDLightProfile *)v21 callSetNaturalLightingEnabledCompletion:completionCopy error:v24];
  }
}

void __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke_139;
    block[3] = &unk_279733CD0;
    v13 = v3;
    v14 = v5;
    v17 = *(a1 + 56);
    v16 = *(a1 + 40);
    v15 = *(a1 + 32);
    dispatch_async(v6, block);

    v7 = v13;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      *buf = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic for Natural Lighting enabled: %{public}@ because self is gone", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 40) + 16))();
  }
}

void __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke_139(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = HMFBooleanToString();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote characteristic for Natural Lighting enabled: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) handleSetNaturalLightingEnabled:*(a1 + 64)];
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 48) || ([*(a1 + 40) shouldRetrySetNaturalLightingEnabledWithError:v2] & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = HMFBooleanToString();
      v16 = 138543874;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v2;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic for Natural Lighting enabled: %{public}@ error: %{public}@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = v2;
LABEL_11:
    [v8 callSetNaturalLightingEnabledCompletion:v9 error:v10];
    goto LABEL_12;
  }

  [*(a1 + 40) retrySetNaturalLightingEnabledWithContext:*(a1 + 48) error:v2];
LABEL_12:
}

- (void)setNaturalLightingEnabled:(BOOL)enabled shouldRetryOnFailure:(BOOL)failure completion:(id)completion
{
  failureCopy = failure;
  enabledCopy = enabled;
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLightProfile *)self resetNaturalLightingEnabledRetryContext];
  settings = [(HMDLightProfile *)self settings];
  supportedFeatures = [settings supportedFeatures];

  if (supportedFeatures)
  {
    if (failureCopy)
    {
      v17 = [[HMDNaturalLightingEnabledRetryContext alloc] initWithNaturalLightingEnabled:enabledCopy completion:completionCopy retryCount:0];
      [(HMDLightProfile *)self setNaturalLightingEnabledRetryContext:v17];

      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        naturalLightingEnabledRetryContext = [(HMDLightProfile *)selfCopy naturalLightingEnabledRetryContext];
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = naturalLightingEnabledRetryContext;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Created natural lighting enabled retry context: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    naturalLightingEnabledRetryContext2 = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
    [(HMDLightProfile *)self setNaturalLightingEnabled:enabledCopy completion:completionCopy retryContext:naturalLightingEnabledRetryContext2];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting feature is not supported", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    naturalLightingEnabledRetryContext2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    completionCopy[2](completionCopy, naturalLightingEnabledRetryContext2);
  }
}

- (void)disableNaturalLightingCharacteristicNotificationsForObserver:(id)observer
{
  v29 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  characteristicValueObservers = [(HMDLightProfile *)self characteristicValueObservers];
  [characteristicValueObservers removeObject:observerCopy];

  characteristicValueObservers2 = [(HMDLightProfile *)self characteristicValueObservers];
  v8 = [characteristicValueObservers2 count];

  if (!v8)
  {
    hapAccessory = [(HMDLightProfile *)self hapAccessory];
    home = [hapAccessory home];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"HMDAccessoryDisconnectedNotification" object:hapAccessory];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"HMDAccessoryCharacteristicsChangedNotification" object:hapAccessory];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 removeObserver:self name:@"HMDHomeNaturalLightingContextUpdatedNotification" object:home];

    notificationEnabledCharacteristics = [(HMDLightProfile *)self notificationEnabledCharacteristics];
    v15 = [notificationEnabledCharacteristics count];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = notificationEnabledCharacteristics;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications for natural lighting characteristics: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      allObjects = [notificationEnabledCharacteristics allObjects];
      clientIdentifier = [(HMDLightProfile *)selfCopy clientIdentifier];
      [hapAccessory setNotificationsEnabled:0 forCharacteristics:allObjects clientIdentifier:clientIdentifier];

      v23 = [MEMORY[0x277CBEB98] set];
      [(HMDLightProfile *)selfCopy setNotificationEnabledCharacteristics:v23];
    }

    else
    {
      if (v19)
      {
        v24 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v24;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find any characteristics to disable notifications", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

- (BOOL)enableNaturalLightingCharacteristicNotificationsForObserver:(id)observer
{
  observerCopy = observer;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  characteristicValueObservers = [(HMDLightProfile *)self characteristicValueObservers];
  v7 = [characteristicValueObservers count];

  characteristicValueObservers2 = [(HMDLightProfile *)self characteristicValueObservers];
  [characteristicValueObservers2 addObject:observerCopy];

  if (v7)
  {
    return 0;
  }

  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  home = [hapAccessory home];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:hapAccessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleAccessoryCharacteristicsChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:hapAccessory];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleHomeNaturalLightingContextUpdated_ name:@"HMDHomeNaturalLightingContextUpdatedNotification" object:home];

  updateEnabledCharacteristicsNotifications = [(HMDLightProfile *)self updateEnabledCharacteristicsNotifications];
  return updateEnabledCharacteristicsNotifications;
}

- (BOOL)updateEnabledCharacteristicsNotifications
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  availableCharacteristics = [(HMDLightProfile *)self availableCharacteristics];
  v5 = [availableCharacteristics na_firstObjectPassingTest:&__block_literal_global_131_183959];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  characteristicValueObservers = [(HMDLightProfile *)self characteristicValueObservers];
  v8 = [characteristicValueObservers count];

  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      v25 = "%{public}@Not enabling characteristic notifications because there are no Characteristic value observers";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v25, &v27, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v21);
    v11 = 0;
    goto LABEL_15;
  }

  if (![v6 count])
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      v25 = "%{public}@Did not find any characteristics to enable notifications";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = [v6 count];
  notificationEnabledCharacteristics = [(HMDLightProfile *)self notificationEnabledCharacteristics];
  v11 = v9 != [notificationEnabledCharacteristics count];

  [(HMDLightProfile *)self setNotificationEnabledCharacteristics:v6];
  v12 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    notificationEnabledCharacteristics2 = [(HMDLightProfile *)selfCopy3 notificationEnabledCharacteristics];
    v27 = 138543618;
    v28 = v15;
    v29 = 2112;
    v30 = notificationEnabledCharacteristics2;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications for natural lighting characteristics: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  hapAccessory = [(HMDLightProfile *)selfCopy3 hapAccessory];
  notificationEnabledCharacteristics3 = [(HMDLightProfile *)selfCopy3 notificationEnabledCharacteristics];
  allObjects = [notificationEnabledCharacteristics3 allObjects];
  clientIdentifier = [(HMDLightProfile *)selfCopy3 clientIdentifier];
  [hapAccessory setNotificationsEnabled:1 forCharacteristics:allObjects clientIdentifier:clientIdentifier];

LABEL_15:
  return v11;
}

uint64_t __60__HMDLightProfile_updateEnabledCharacteristicsNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"0000024B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)synchronizeCurveToAccessory
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  naturalLightingCurve = [(HMDLightProfile *)self naturalLightingCurve];
  if (naturalLightingCurve && (v5 = naturalLightingCurve, v6 = [(HMDLightProfile *)self isNaturalLightingEnabled], v5, v6))
  {
    naturalLightingCurveWriter = [(HMDLightProfile *)self naturalLightingCurveWriter];
    naturalLightingActiveTransitionContext = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
    [naturalLightingCurveWriter synchronizeCurveWithActiveTransitionContext:naturalLightingActiveTransitionContext];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMDLightProfile *)selfCopy isNaturalLightingEnabled];
      v12 = HMFBooleanToString();
      naturalLightingCurve2 = [(HMDLightProfile *)selfCopy naturalLightingCurve];
      v14 = HMFBooleanToString();
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not rewriting curve because either natural lighting is disabled: %@ or curve is nil: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)updateSettingsWithCharacteristics:(id)characteristics
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_127_183965];
  if (v6)
  {
    [(HMDLightProfile *)self updateActiveTransitionCountWithCharacteristic:v6];
  }

  settings = [(HMDLightProfile *)self settings];
  naturalLightingActiveTransitionContext = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
  [(HMDLightProfile *)self updateSupportedFeaturesWithCharacteristics:characteristicsCopy];
  v9 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_129_183966];
  [(HMDLightProfile *)self updateNaturalLightingEnabledForCharacteristic:v9];
  [(HMDLightProfile *)self notifyClientsOfUpdatedSettingsWithPreviousSettings:settings];
  naturalLightingActiveTransitionContext2 = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      naturalLightingActiveTransitionContext3 = [(HMDLightProfile *)selfCopy naturalLightingActiveTransitionContext];
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = naturalLightingActiveTransitionContext;
      v23 = 2112;
      v24 = naturalLightingActiveTransitionContext3;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting active transition context from %@ -> %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    naturalLightingCurveWriter = [(HMDLightProfile *)selfCopy naturalLightingCurveWriter];
    naturalLightingActiveTransitionContext4 = [(HMDLightProfile *)selfCopy naturalLightingActiveTransitionContext];
    [naturalLightingCurveWriter handleActiveTransitionContextUpdated:naturalLightingActiveTransitionContext4];
  }
}

uint64_t __53__HMDLightProfile_updateSettingsWithCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"];

  return v3;
}

uint64_t __53__HMDLightProfile_updateSettingsWithCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"0000024B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (BOOL)updateActiveTransitionCountWithCharacteristic:(id)characteristic
{
  v28 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = value;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v12;
      v25 = 2112;
      *v26 = value;
      *&v26[8] = 2112;
      v27 = objc_opt_class();
      v13 = "%{public}@Active transition count value: %@ is not of type %@";
      v14 = v11;
      v15 = 32;
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v9);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if ([v8 integerValue] < 0 || objc_msgSend(v8, "integerValue") >= 256)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v12;
      v25 = 2048;
      *v26 = [v8 integerValue];
      v13 = "%{public}@Active transition count value: %ld is less than 0 or greater than 255";
      v14 = v11;
      v15 = 22;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, v13, &v23, v15);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  unsignedCharValue = [v8 unsignedCharValue];
  if ([(HMDLightProfile *)self activeTransitionsCount]== unsignedCharValue)
  {
    goto LABEL_13;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v22;
    v25 = 1024;
    *v26 = [(HMDLightProfile *)selfCopy3 activeTransitionsCount];
    *&v26[4] = 1024;
    *&v26[6] = unsignedCharValue;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating active transition count from (%u -> %u)", &v23, 0x18u);
  }

  objc_autoreleasePoolPop(v19);
  [(HMDLightProfile *)selfCopy3 setActiveTransitionsCount:unsignedCharValue];
  v16 = 1;
LABEL_14:

  return v16;
}

- (void)readNaturalLightingCharacteristicsWithReason:(id)reason completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  readCharacteristicRequests = [(HMDLightProfile *)self readCharacteristicRequests];
  if ([readCharacteristicRequests count])
  {
    hapAccessory = [(HMDLightProfile *)self hapAccessory];
    home = [hapAccessory home];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (home)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v16;
        v28 = 2112;
        v29 = readCharacteristicRequests;
        v30 = 2112;
        v31 = reasonCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending read requests to the accessory: %@ with reason: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      objc_initWeak(buf, selfCopy);
      allObjects = [readCharacteristicRequests allObjects];
      v18 = [(HMDAccessoryProfile *)selfCopy description];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke;
      v23[3] = &unk_2797355F8;
      objc_copyWeak(&v25, buf);
      v24 = completionCopy;
      [home readCharacteristicValues:allObjects source:1140 sourceForLogging:v18 qualityOfService:-1 withCompletionHandler:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v21;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Home is not configured on the accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (*(completionCopy + 2))(completionCopy, 0, v22);
    }
  }

  else
  {
    availableCharacteristics = [(HMDLightProfile *)self availableCharacteristics];
    [(HMDLightProfile *)self updateSettingsWithCharacteristics:availableCharacteristics];

    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

void __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke_2;
    v12[3] = &unk_279733CA8;
    objc_copyWeak(&v16, (a1 + 40));
    v15 = *(a1 + 32);
    v13 = v6;
    v14 = v5;
    dispatch_async(v9, v12);

    objc_destroyWeak(&v16);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 16))(v10, 0, v11);
  }
}

void __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
LABEL_8:
    v13 = *(a1 + 48);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v13 + 16))(v13, 0, v14);

    goto LABEL_11;
  }

  if (![*(a1 + 32) count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received empty response payload for charactersitic read requests %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  v15 = 0;
  v4 = [WeakRetained updateSettingsWithReadCharacteristicResponsePayload:v3 error:&v15];
  v5 = v15;
  v6 = *(a1 + 48);
  if (v4)
  {
    (*(v6 + 16))(v6, [v4 isNaturalLightingEnabled], 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, v5);
  }

LABEL_11:
}

- (void)readNaturalLightingCharacteristicsWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:reasonCopy completion:&__block_literal_global_123_183976];
}

- (BOOL)updateNaturalLightingCurve
{
  v58 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  brightnessCharacteristic = [(HMDLightProfile *)self brightnessCharacteristic];
  metadata = [brightnessCharacteristic metadata];
  minimumValue = [metadata minimumValue];
  integerValue = [minimumValue integerValue];

  brightnessCharacteristic2 = [(HMDLightProfile *)self brightnessCharacteristic];
  metadata2 = [brightnessCharacteristic2 metadata];
  maximumValue = [metadata2 maximumValue];
  integerValue2 = [maximumValue integerValue];

  colorTemperatureCharacteristic = [(HMDLightProfile *)self colorTemperatureCharacteristic];
  metadata3 = [colorTemperatureCharacteristic metadata];
  minimumValue2 = [metadata3 minimumValue];

  colorTemperatureCharacteristic2 = [(HMDLightProfile *)self colorTemperatureCharacteristic];
  metadata4 = [colorTemperatureCharacteristic2 metadata];
  maximumValue2 = [metadata4 maximumValue];

  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  naturalLightingContext = [home naturalLightingContext];
  curve = [naturalLightingContext curve];

  if ([curve minimumBrightness] < integerValue || objc_msgSend(curve, "minimumBrightness") > integerValue2)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
LABEL_6:

      v27 = v22;
LABEL_7:
      objc_autoreleasePoolPop(v27);
      v28 = 0;
      goto LABEL_8;
    }

    v25 = HMFGetLogIdentifier();
    *buf = 138544130;
    v51 = v25;
    v52 = 2048;
    minimumBrightness = [curve minimumBrightness];
    v54 = 2048;
    maximumColorTemperature = integerValue;
    v56 = 2048;
    v57 = integerValue2;
    v26 = "%{public}@Not initializing curve because curve minimum brightness is not in supported range %ld (%ld:%ld)";
LABEL_5:
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, v26, buf, 0x2Au);

    goto LABEL_6;
  }

  if ([curve maximumBrightness] < integerValue || objc_msgSend(curve, "maximumBrightness") > integerValue2)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_6;
    }

    v25 = HMFGetLogIdentifier();
    *buf = 138544130;
    v51 = v25;
    v52 = 2048;
    minimumBrightness = [curve maximumBrightness];
    v54 = 2048;
    maximumColorTemperature = integerValue;
    v56 = 2048;
    v57 = integerValue2;
    v26 = "%{public}@Not initializing curve because curve maximum brightness is not in supported range %ld (%ld:%ld)";
    goto LABEL_5;
  }

  if (!minimumValue2 || !maximumValue2)
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543874;
      v51 = v45;
      v52 = 2112;
      minimumBrightness = minimumValue2;
      v54 = 2112;
      maximumColorTemperature = maximumValue2;
      v46 = "%{public}@Either minimum color temperature: %@ or maximum color temperature: %@";
      goto LABEL_24;
    }

LABEL_25:

    v27 = v42;
    goto LABEL_7;
  }

  integerValue3 = [minimumValue2 integerValue];
  if (integerValue3 > [maximumValue2 integerValue])
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543874;
      v51 = v45;
      v52 = 2112;
      minimumBrightness = minimumValue2;
      v54 = 2112;
      maximumColorTemperature = maximumValue2;
      v46 = "%{public}@Minimum color temperature value: %@ is greater than maximum color temperature value: %@";
LABEL_24:
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, v46, buf, 0x20u);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  integerValue4 = [minimumValue2 integerValue];
  if (integerValue4 > [curve maximumColorTemperature])
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v44 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v45 = HMFGetLogIdentifier();
    *buf = 138543874;
    v51 = v45;
    v52 = 2112;
    minimumBrightness = minimumValue2;
    v54 = 2048;
    maximumColorTemperature = [curve maximumColorTemperature];
    v46 = "%{public}@Minimum color temperature value: %@  is greater than the curve maximum color temperature value: %ld";
    goto LABEL_24;
  }

  integerValue5 = [maximumValue2 integerValue];
  if (integerValue5 < [curve minimumColorTemperature])
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v44 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v45 = HMFGetLogIdentifier();
    *buf = 138543874;
    v51 = v45;
    v52 = 2112;
    minimumBrightness = maximumValue2;
    v54 = 2048;
    maximumColorTemperature = [curve minimumColorTemperature];
    v46 = "%{public}@Maximum color temperature value: %@  is less than the curve minimum color temperature value: %ld";
    goto LABEL_24;
  }

  v28 = -[HMDNaturalLightingCurve initWithCurve:minimumColorTemperature:maximumColorTemperature:]([HMDNaturalLightingCurve alloc], "initWithCurve:minimumColorTemperature:maximumColorTemperature:", curve, [minimumValue2 integerValue], objc_msgSend(maximumValue2, "integerValue"));
LABEL_8:
  naturalLightingCurve = [(HMDLightProfile *)self naturalLightingCurve];
  v30 = HMFEqualObjects();

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      naturalLightingCurve2 = [(HMDLightProfile *)selfCopy7 naturalLightingCurve];
      v35 = curve;
      v36 = maximumValue2;
      v37 = minimumValue2;
      checksum = [naturalLightingCurve2 checksum];
      checksum2 = [(HMDNaturalLightingCurve *)v28 checksum];
      *buf = 138543874;
      v51 = v34;
      v52 = 2048;
      minimumBrightness = checksum;
      minimumValue2 = v37;
      maximumValue2 = v36;
      curve = v35;
      v54 = 2048;
      maximumColorTemperature = checksum2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated natural lighting curve from %llu -> %llu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    [(HMDLightProfile *)selfCopy7 setNaturalLightingCurve:v28];
  }

  return v30 ^ 1;
}

- (id)availableCharacteristicWithType:(id)type fromChangedObjects:(id)objects
{
  typeCopy = type;
  objectsCopy = objects;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  availableCharacteristics = [(HMDLightProfile *)self availableCharacteristics];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HMDLightProfile_availableCharacteristicWithType_fromChangedObjects___block_invoke;
  v14[3] = &unk_279733C60;
  v15 = availableCharacteristics;
  v16 = typeCopy;
  v10 = typeCopy;
  v11 = availableCharacteristics;
  v12 = [objectsCopy na_firstObjectPassingTest:v14];

  return v12;
}

uint64_t __70__HMDLightProfile_availableCharacteristicWithType_fromChangedObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && [*(a1 + 32) containsObject:v5])
  {
    v6 = [v5 type];
    v7 = [v6 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleAccessoryCharacteristicsChanged:(id)changed
{
  v45 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    name = [changedCopy name];
    *buf = 138543618;
    v40 = v9;
    v41 = 2112;
    v42 = name;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  settings = [(HMDLightProfile *)selfCopy settings];
  naturalLightingActiveTransitionContext = [(HMDLightProfile *)selfCopy naturalLightingActiveTransitionContext];
  userInfo = [changedCopy userInfo];
  v14 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v15 = [(HMDLightProfile *)selfCopy availableCharacteristicWithType:@"00000144-0000-1000-8000-0026BB765291" fromChangedObjects:v14];
  hapAccessory = [(HMDLightProfile *)selfCopy hapAccessory];
  home = [hapAccessory home];
  naturalLightingContext = [home naturalLightingContext];
  if (naturalLightingContext)
  {
    v19 = naturalLightingContext;
    naturalLightingCurve = [(HMDLightProfile *)selfCopy naturalLightingCurve];

    if (!naturalLightingCurve)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Initialize the curve since natural lighting context is present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      [(HMDLightProfile *)v22 updateNaturalLightingCurve];
    }
  }

  else
  {
  }

  if (v15)
  {
    availableCharacteristics = [(HMDLightProfile *)selfCopy availableCharacteristics];
    [(HMDLightProfile *)selfCopy updateSupportedFeaturesWithCharacteristics:availableCharacteristics];
  }

  v26 = [(HMDLightProfile *)selfCopy availableCharacteristicWithType:@"00000143-0000-1000-8000-0026BB765291" fromChangedObjects:v14];
  if (v26)
  {
    [(HMDLightProfile *)selfCopy updateNaturalLightingEnabledForCharacteristic:v26];
  }

  v27 = [(HMDLightProfile *)selfCopy availableCharacteristicWithType:@"0000024B-0000-1000-8000-0026BB765291" fromChangedObjects:v14];
  if (v27 && [(HMDLightProfile *)selfCopy updateActiveTransitionCountWithCharacteristic:v27])
  {
    [(HMDLightProfile *)selfCopy readNaturalLightingCharacteristicsWithReason:@"Active transition count updated"];
  }

  [(HMDLightProfile *)selfCopy notifyClientsOfUpdatedSettingsWithPreviousSettings:settings];
  naturalLightingActiveTransitionContext2 = [(HMDLightProfile *)selfCopy naturalLightingActiveTransitionContext];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
    v37 = settings;
    v38 = changedCopy;
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      naturalLightingActiveTransitionContext3 = [(HMDLightProfile *)v31 naturalLightingActiveTransitionContext];
      *buf = 138543874;
      v40 = v33;
      v41 = 2112;
      v42 = naturalLightingActiveTransitionContext;
      v43 = 2112;
      v44 = naturalLightingActiveTransitionContext3;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting active transition context from %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    naturalLightingCurveWriter = [(HMDLightProfile *)v31 naturalLightingCurveWriter];
    naturalLightingActiveTransitionContext4 = [(HMDLightProfile *)v31 naturalLightingActiveTransitionContext];
    [naturalLightingCurveWriter handleActiveTransitionContextUpdated:naturalLightingActiveTransitionContext4];

    settings = v37;
    changedCopy = v38;
  }
}

- (void)updateSupportedFeaturesWithCharacteristics:(id)characteristics
{
  v76 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLightProfile *)self setSupportedFeatures:0];
  [(HMDLightProfile *)self setNaturalLightingSupported:0];
  v6 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_183995];
  if (v6)
  {
    v7 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_105_183997];
    if (!v7)
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = *MEMORY[0x277CCF7D8];
        *buf = 138543874;
        v71 = v38;
        v72 = 2112;
        v73 = v39;
        v74 = 2112;
        v75 = characteristicsCopy;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Characteristic Color Temperature: %@ is not supported, available characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      goto LABEL_46;
    }

    v8 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_108_183999];
    if (!v8)
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v44 = *MEMORY[0x277CCF788];
        *buf = 138543874;
        v71 = v43;
        v72 = 2112;
        v73 = v44;
        v74 = 2112;
        v75 = characteristicsCopy;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Characteristics Brightness: %@ is not supported, available characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v40);
      goto LABEL_45;
    }

    v9 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_111_184001];
    if (v9)
    {
      [(HMDLightProfile *)self setNaturalLightingSupported:1];
      naturalLightingCurve = [(HMDLightProfile *)self naturalLightingCurve];

      if (naturalLightingCurve)
      {
        value = [v9 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = value;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (v13)
        {
          v66 = value;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v64 = v14;
            v19 = v18 = v13;
            hmf_hexadecimalRepresentation = [(__CFString *)v18 hmf_hexadecimalRepresentation];
            *buf = 138543618;
            v71 = v19;
            v72 = 2112;
            v73 = hmf_hexadecimalRepresentation;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Decoding supported value transition configuration: %@", buf, 0x16u);

            value = v66;
            v13 = v18;
            v14 = v64;
          }

          objc_autoreleasePoolPop(v14);
          v69 = 0;
          v21 = [MEMORY[0x277CFEC60] parsedFromData:v13 error:&v69];
          v63 = v21;
          v65 = v69;
          if (v21)
          {
            v62 = v13;
            transitions = [v21 transitions];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_113;
            v67[3] = &unk_279733C30;
            v23 = v7;
            v68 = v23;
            v24 = [transitions na_firstObjectPassingTest:v67];

            v25 = objc_autoreleasePoolPush();
            v26 = selfCopy3;
            v27 = HMFGetOSLogHandle();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
            v61 = v24;
            if (v24)
            {
              if (v28)
              {
                HMFGetLogIdentifier();
                v30 = v29 = v25;
                *buf = 138543362;
                v71 = v30;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supported features with natural lighting feature", buf, 0xCu);

                v25 = v29;
              }

              objc_autoreleasePoolPop(v25);
              [(HMDLightProfile *)v26 setSupportedFeatures:1];
            }

            else
            {
              if (v28)
              {
                HMFGetLogIdentifier();
                v60 = v59 = v25;
                *buf = 138543618;
                v71 = v60;
                v72 = 2112;
                v73 = v23;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Characteristic: %@ doesn't support Linear Derived Transition", buf, 0x16u);

                v25 = v59;
              }

              objc_autoreleasePoolPop(v25);
            }

            value = v66;
            v58 = v63;

            v13 = v62;
          }

          else
          {
            v54 = objc_autoreleasePoolPush();
            v55 = selfCopy3;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v57 = HMFGetLogIdentifier();
              *buf = 138543874;
              v71 = v57;
              v72 = 2112;
              v73 = v13;
              v74 = 2112;
              v75 = v65;
              _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode the supported value transition configuration from: %@ error: %@", buf, 0x20u);

              value = v66;
            }

            objc_autoreleasePoolPop(v54);
            v58 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            *buf = 138543618;
            v71 = v53;
            v72 = 2112;
            v73 = value;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Supported Value Transition Configuration Characteristic value: %@ is not of expected type NSData", buf, 0x16u);

            v13 = 0;
          }

          objc_autoreleasePoolPop(v14);
        }

        goto LABEL_44;
      }

      v45 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v48;
        v49 = "%{public}@Natural lighting curve is not set";
        v50 = v47;
        v51 = OS_LOG_TYPE_ERROR;
        v52 = 12;
        goto LABEL_30;
      }
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543874;
        v71 = v48;
        v72 = 2112;
        v73 = @"00000144-0000-1000-8000-0026BB765291";
        v74 = 2112;
        v75 = characteristicsCopy;
        v49 = "%{public}@Supported Value Transition Characteristic: %@ is not supported, available characteristics: %@";
        v50 = v47;
        v51 = OS_LOG_TYPE_INFO;
        v52 = 32;
LABEL_30:
        _os_log_impl(&dword_2531F8000, v50, v51, v49, buf, v52);
      }
    }

    objc_autoreleasePoolPop(v45);
LABEL_44:

LABEL_45:
LABEL_46:

    goto LABEL_47;
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v34;
    v72 = 2112;
    v73 = @"00000143-0000-1000-8000-0026BB765291";
    v74 = 2112;
    v75 = characteristicsCopy;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Value Transition Control Characteristic: %@ is not supported, available characteristics: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
LABEL_47:
}

unint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 HAPInstanceID];
  v5 = [v4 value];
  v6 = [*(a1 + 32) instanceID];
  if ([v5 isEqualToNumber:v6])
  {
    v7 = [v3 transitionTypes];
    v8 = ([v7 value] >> 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_109(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000144-0000-1000-8000-0026BB765291"];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_106(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_103(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF7D8]];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)updateNaturalLightingEnabledForCharacteristic:(id)characteristic
{
  v69 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v66 = v9;
    v67 = 2112;
    v68 = characteristicCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting enabled with characteristic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  colorTemperatureCharacteristic = [(HMDLightProfile *)selfCopy colorTemperatureCharacteristic];
  if (!colorTemperatureCharacteristic)
  {
    [(HMDLightProfile *)selfCopy setNaturalLightingEnabled:0];
    [(HMDLightProfile *)selfCopy setNaturalLightingActiveTransitionContext:0];
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v66 = v29;
      v67 = 2112;
      v68 = 0;
      v30 = "%{public}@Ignoring Value Transition Control Characteristic update because Color Temperature Characteristic is %@";
      v31 = v28;
      v32 = 22;
LABEL_19:
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    }

LABEL_20:

    objc_autoreleasePoolPop(v26);
    goto LABEL_44;
  }

  if (!characteristicCopy)
  {
    [(HMDLightProfile *)selfCopy setNaturalLightingEnabled:0];
    [(HMDLightProfile *)selfCopy setNaturalLightingActiveTransitionContext:0];
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v29;
      v30 = "%{public}@Value Transition Control Characteristic is nil";
      v31 = v28;
      v32 = 12;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = value;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      hmf_hexadecimalRepresentation = [v13 hmf_hexadecimalRepresentation];
      *buf = 138543618;
      v66 = v17;
      v67 = 2112;
      v68 = hmf_hexadecimalRepresentation;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Decoding Value Transition Control Characteristic value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CFEAB8] parsedFromData:v13 error:0];
    v20 = [v19 naturalLightingEnabledForCharacteristic:colorTemperatureCharacteristic];
    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v15;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v66 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Start", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      -[HMDLightProfile setNaturalLightingEnabled:](v22, "setNaturalLightingEnabled:", [v20 BOOLValue]);
      v25 = [v19 naturalLightingActiveTransitionContextForCharacteristic:colorTemperatureCharacteristic];
      [(HMDLightProfile *)v22 setNaturalLightingActiveTransitionContext:v25];
    }

    else
    {
      v64 = v19;
      v25 = [MEMORY[0x277CFEAC0] parsedFromData:v13 error:0];
      valueTransition = [v25 valueTransition];
      colorTemperatureCharacteristic2 = [(HMDLightProfile *)v15 colorTemperatureCharacteristic];
      v39 = [valueTransition naturalLightingActiveTransitionContextForCharacteristic:colorTemperatureCharacteristic2];

      if (v39)
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v15;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v66 = v43;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Control Fetch Response", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        [(HMDLightProfile *)v41 setNaturalLightingEnabled:1];
      }

      else
      {
        transitionState = [v25 transitionState];
        if ([transitionState isValid])
        {
          v45 = objc_autoreleasePoolPush();
          v46 = v15;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            contexta = HMFGetLogIdentifier();
            [transitionState activeTransitionContexts];
            v48 = v60 = v45;
            *buf = 138543618;
            v66 = contexta;
            v67 = 2112;
            v68 = v48;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Control Write Response, active transition contexts are: %@", buf, 0x16u);

            v45 = v60;
          }

          objc_autoreleasePoolPop(v45);
          -[HMDLightProfile setNaturalLightingEnabled:](v46, "setNaturalLightingEnabled:", [transitionState isNaturalLightingEnabledForCharacteristic:colorTemperatureCharacteristic]);
          transitionState2 = [v25 transitionState];
          v50 = [transitionState2 naturalLightingActiveTransitionContextForCharacteristic:colorTemperatureCharacteristic];
          [(HMDLightProfile *)v46 setNaturalLightingActiveTransitionContext:v50];
        }

        else
        {
          v51 = [MEMORY[0x277CFEAE8] parsedFromData:v13 error:0];

          isValid = [v51 isValid];
          context = objc_autoreleasePoolPush();
          v53 = v15;
          v54 = HMFGetOSLogHandle();
          v55 = v54;
          if (isValid)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v61 = HMFGetLogIdentifier();
              activeTransitionContexts = [v51 activeTransitionContexts];
              *buf = 138543618;
              v66 = v61;
              v67 = 2112;
              v68 = activeTransitionContexts;
              v57 = activeTransitionContexts;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition State, active transition contexts are: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            -[HMDLightProfile setNaturalLightingEnabled:](v53, "setNaturalLightingEnabled:", [v51 isNaturalLightingEnabledForCharacteristic:colorTemperatureCharacteristic]);
            v58 = [v51 naturalLightingActiveTransitionContextForCharacteristic:colorTemperatureCharacteristic];
            [(HMDLightProfile *)v53 setNaturalLightingActiveTransitionContext:v58];
          }

          else
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              v66 = v59;
              v67 = 2112;
              v68 = v13;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@Did not handle Value Transition Control Characteristic update: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
          }

          transitionState = v51;
        }
      }

      v19 = v64;
    }
  }

  else
  {
    [(HMDLightProfile *)selfCopy setNaturalLightingEnabled:0];
    [(HMDLightProfile *)selfCopy setNaturalLightingActiveTransitionContext:0];
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v66 = v36;
      v67 = 2112;
      v68 = value;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Value Transition Control Characteristic value is not of type data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

LABEL_44:
}

- (void)notifyClientsOfUpdatedSettingsWithPreviousSettings:(id)settings
{
  v54 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settings = [(HMDLightProfile *)self settings];
  v7 = [settings isEqual:settingsCopy];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      settings2 = [(HMDLightProfile *)selfCopy settings];
      *buf = 138543874;
      v49 = v11;
      v50 = 2112;
      v51 = settingsCopy;
      v52 = 2112;
      v53 = settings2;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating settings from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    settings3 = [(HMDLightProfile *)selfCopy settings];
    v14 = [settings3 supportedFeatures] & 1;

    if (v14 != ([settingsCopy supportedFeatures] & 1))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = HMFBooleanToString();
        v20 = HMFBooleanToString();
        *buf = 138543874;
        v49 = v18;
        v50 = 2112;
        v51 = v19;
        v52 = 2112;
        v53 = v20;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting to sync siri data since natural lighting supported changed from %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      accessory = [(HMDAccessoryProfile *)v16 accessory];
      home = [accessory home];
      homeManager = [home homeManager];
      [homeManager assistantSyncDataChanged:@"Natural lighting support updated"];
    }

    isNaturalLightingEnabled = [(HMDLightProfile *)selfCopy isNaturalLightingEnabled];
    isNaturalLightingEnabled2 = [settingsCopy isNaturalLightingEnabled];
    if (isNaturalLightingEnabled)
    {
      if ((isNaturalLightingEnabled2 & 1) == 0)
      {
        lastNaturalLightingEnabledDate = [(HMDLightProfile *)selfCopy lastNaturalLightingEnabledDate];
        dataSource = [(HMDLightProfile *)selfCopy dataSource];
        date = [dataSource date];
        [(HMDLightProfile *)selfCopy setLastNaturalLightingUsedDate:date];
        [(HMDLightProfile *)selfCopy setLastNaturalLightingEnabledDate:date];

        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = HMFGetLogIdentifier();
          lastNaturalLightingEnabledDate2 = [(HMDLightProfile *)v30 lastNaturalLightingEnabledDate];
          *buf = 138543874;
          v49 = v32;
          v50 = 2112;
          v51 = lastNaturalLightingEnabledDate2;
          v52 = 2112;
          v53 = lastNaturalLightingEnabledDate;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Updating lastNaturalLightingEnabledDate to: %@ from: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
      }

      if (![(HMDLightProfile *)selfCopy supportsCHIP])
      {
        [(HMDLightProfile *)selfCopy synchronizeCurveToAccessory];
      }
    }

    else if (isNaturalLightingEnabled2)
    {
      dataSource2 = [(HMDLightProfile *)selfCopy dataSource];
      date2 = [dataSource2 date];
      [(HMDLightProfile *)selfCopy setLastNaturalLightingUsedDate:date2];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDLightProfile.SettingsUpdated" object:selfCopy];

    settings4 = [(HMDLightProfile *)selfCopy settings];
    v38 = encodeRootObjectForIncomingXPCMessage(settings4, 0);
    v47 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];

    v40 = objc_alloc(MEMORY[0x277D0F820]);
    uniqueIdentifier = [(HMDAccessoryProfile *)selfCopy uniqueIdentifier];
    v42 = [v40 initWithTarget:uniqueIdentifier];

    v43 = objc_alloc(MEMORY[0x277D0F848]);
    v44 = [v43 initWithName:*MEMORY[0x277CD07B0] destination:v42 payload:v39];
    [v44 setRequiresSPIEntitlement];
    msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher sendMessage:v44];
  }
}

- (void)handleSetNaturalLightingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settings = [(HMDLightProfile *)self settings];
  [(HMDLightProfile *)self setNaturalLightingEnabled:enabledCopy];
  [(HMDLightProfile *)self notifyClientsOfUpdatedSettingsWithPreviousSettings:settings];
}

- (void)resetNaturalLightingEnabledRetryContext
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  naturalLightingEnabledRetryContext = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
  if (naturalLightingEnabledRetryContext)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = naturalLightingEnabledRetryContext;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting natural lighting context: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    completion = [naturalLightingEnabledRetryContext completion];
    (completion)[2](completion, v9);

    [(HMDLightProfile *)selfCopy setNaturalLightingEnabledRetryContext:0];
  }
}

- (void)handleFetchNaturalLightColorTemperatureForBrightnessMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v45 = v9;
    v46 = 2112;
    v47 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch color temperature for brightness: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy numberForKey:*MEMORY[0x277CD0768]];
  if ([v11 integerValue] < 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v27;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid brightness value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    hapAccessory = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:hapAccessory];
  }

  else
  {
    hapAccessory = [(HMDLightProfile *)selfCopy hapAccessory];
    home = [hapAccessory home];
    naturalLightingContext = [home naturalLightingContext];
    if (naturalLightingContext)
    {
      naturalLightingCurve = [(HMDLightProfile *)selfCopy naturalLightingCurve];
      if (naturalLightingCurve)
      {
        v41 = home;
        dataSource = [(HMDLightProfile *)selfCopy dataSource];
        dataSource2 = [(HMDLightProfile *)selfCopy dataSource];
        date = [dataSource2 date];
        v40 = naturalLightingContext;
        timeZone = [naturalLightingContext timeZone];
        v20 = [dataSource millisecondsElapsedSinceStartOfDayWithDate:date timeZone:timeZone];

        v21 = [naturalLightingCurve colorTemperatureForBrightness:objc_msgSend(v11 millisecondsElapsedSinceStartOfDay:{"integerValue"), v20}];
        v22 = v21;
        if (v21)
        {
          v42 = *MEMORY[0x277CD0778];
          v43 = v21;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          [messageCopy respondWithPayload:v23];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v45 = v39;
            v46 = 2112;
            v47 = v11;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to calculate color temperature value for brightness: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [messageCopy respondWithError:v23];
        }

        naturalLightingContext = v40;
        home = v41;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v35;
          v46 = 2112;
          v47 = 0;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting curve is not set: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
        [messageCopy respondWithError:v22];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v45 = v31;
        v46 = 2112;
        v47 = 0;
        v48 = 2112;
        v49 = home;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting context not set for home (%@:%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      naturalLightingCurve = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      [messageCopy respondWithError:naturalLightingCurve];
    }
  }
}

- (void)handleSetNaturalLightingEnabledMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    hapAccessory = [(HMDLightProfile *)selfCopy hapAccessory];
    [hapAccessory supportsCHIP];
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v24 = v9;
    v25 = 2112;
    v26 = messagePayload;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to set Natural Lighting setting: %@ supportsCHIP: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = [messageCopy BOOLForKey:*MEMORY[0x277CD0798]];
  v14 = [messageCopy BOOLForKey:*MEMORY[0x277CD07A0]];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __58__HMDLightProfile_handleSetNaturalLightingEnabledMessage___block_invoke;
  v20 = &unk_2797358C8;
  v21 = messageCopy;
  v22 = selfCopy;
  v15 = messageCopy;
  v16 = _Block_copy(&v17);
  [(HMDLightProfile *)selfCopy setNaturalLightingEnabled:v13 shouldRetryOnFailure:v14 completion:v16, v17, v18, v19, v20];
}

void __58__HMDLightProfile_handleSetNaturalLightingEnabledMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v7 = *MEMORY[0x277CD07A8];
    v4 = [*(a1 + 40) settings];
    v5 = encodeRootObjectForIncomingXPCMessage(v4, 0);
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    [*(a1 + 32) respondWithPayload:v6];
  }
}

- (void)registerForMessages
{
  v34[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  home = [hapAccessory home];
  v6 = home;
  if (hapAccessory && home)
  {
    naturalLightingCurveWriter = [(HMDLightProfile *)self naturalLightingCurveWriter];
    [naturalLightingCurveWriter configureWithLightProfile:self];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:v6];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:v6];

    characteristicsAvailabilityListener = [(HMDLightProfile *)self characteristicsAvailabilityListener];
    [characteristicsAvailabilityListener setDelegate:self];

    characteristicsAvailabilityListener2 = [(HMDLightProfile *)self characteristicsAvailabilityListener];
    [characteristicsAvailabilityListener2 start];

    if ([v6 hasCharacteristicNotificationRegistrations] && -[HMDLightProfile enableNaturalLightingCharacteristicNotificationsForObserver:](self, "enableNaturalLightingCharacteristicNotificationsForObserver:", v6))
    {
      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }

    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v13 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:0 remoteAccessRequired:0];
    if ([hapAccessory supportsCHIP])
    {
      v34[0] = v12;
      v34[1] = v13;
      v34[2] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v34;
      v17 = 3;
    }

    else
    {
      v33 = v12;
      v15 = MEMORY[0x277CBEA60];
      v16 = &v33;
      v17 = 1;
    }

    v22 = [v15 arrayWithObjects:v16 count:v17];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Registering for xpc handler messages with home: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher registerForMessage:*MEMORY[0x277CD0790] receiver:selfCopy policies:v22 selector:sel_handleSetNaturalLightingEnabledMessage_];

    msgDispatcher2 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher2 registerForMessage:*MEMORY[0x277CD0780] receiver:selfCopy policies:v22 selector:sel_handleFetchNaturalLightColorTemperatureForBrightnessMessage_];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);
  allObjects = [(NSSet *)self->_notificationEnabledCharacteristics allObjects];
  [WeakRetained setNotificationsEnabled:0 forCharacteristics:allObjects clientIdentifier:self->_clientIdentifier];

  v5.receiver = self;
  v5.super_class = HMDLightProfile;
  [(HMDLightProfile *)&v5 dealloc];
}

- (HMDLightProfile)initWithUUID:(id)d workQueue:(id)queue lightService:(id)service accessory:(id)accessory characteristicsAvailabilityListener:(id)listener naturalLightingCurveWriter:(id)writer dataSource:(id)source
{
  v37[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  listenerCopy = listener;
  writerCopy = writer;
  sourceCopy = source;
  v37[0] = serviceCopy;
  v18 = MEMORY[0x277CBEA60];
  queueCopy = queue;
  dCopy = d;
  v21 = [v18 arrayWithObjects:v37 count:1];
  v36.receiver = self;
  v36.super_class = HMDLightProfile;
  v22 = [(HMDAccessoryProfile *)&v36 initWithAccessory:accessoryCopy uniqueIdentifier:dCopy services:v21 workQueue:queueCopy];

  if (v22)
  {
    objc_storeStrong(&v22->_service, service);
    objc_storeStrong(&v22->_characteristicsAvailabilityListener, listener);
    objc_storeWeak(&v22->_hapAccessory, accessoryCopy);
    v23 = [MEMORY[0x277CBEB98] set];
    notificationEnabledCharacteristics = v22->_notificationEnabledCharacteristics;
    v22->_notificationEnabledCharacteristics = v23;

    v25 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v28 = [v25 stringWithFormat:@"%@.HMDLightProfile.%@", @"com.apple.HomeKitDaemon", uUIDString];
    clientIdentifier = v22->_clientIdentifier;
    v22->_clientIdentifier = v28;

    objc_storeStrong(&v22->_naturalLightingCurveWriter, writer);
    objc_storeStrong(&v22->_dataSource, source);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    characteristicValueObservers = v22->_characteristicValueObservers;
    v22->_characteristicValueObservers = weakObjectsHashTable;
  }

  return v22;
}

- (HMDLightProfile)initWithWorkQueue:(id)queue lightService:(id)service accessory:(id)accessory
{
  v43[2] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  serviceCopy = service;
  accessoryCopy = accessory;
  v10 = objc_alloc_init(HMDLightProfileDataSource);
  v11 = MEMORY[0x277CCACA8];
  instanceID = [serviceCopy instanceID];
  v13 = [v11 stringWithFormat:@"%@", instanceID];

  v14 = MEMORY[0x277CCAD78];
  uuid = [accessoryCopy uuid];
  v38 = v13;
  v43[0] = v13;
  v43[1] = @"2BB698E3-7C61-4B4F-B60A-33194DF41A06";
  v16 = 0x277CBE000uLL;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v18 = [v14 hm_deriveUUIDFromBaseUUID:uuid withSalts:v17];

  v19 = +[HMDDeviceCapabilities deviceCapabilities];
  LODWORD(v17) = [v19 isResidentCapable];

  if (v17)
  {
    home = [accessoryCopy home];
    v21 = MEMORY[0x277CCACA8];
    [home name];
    v37 = queueCopy;
    v22 = serviceCopy;
    v24 = v23 = v10;
    name = [accessoryCopy name];
    uUIDString = [v18 UUIDString];
    v27 = [v21 stringWithFormat:@"%@/%@/%@", v24, name, uUIDString];

    v16 = 0x277CBE000;
    v10 = v23;
    serviceCopy = v22;
    queueCopy = v37;
    v28 = [[HMDNaturalLightingCurveWriter alloc] initWithUUID:v18 workQueue:v37 logIdentifier:v27];
  }

  else
  {
    v28 = 0;
  }

  v29 = MEMORY[0x277CBEB98];
  v42[0] = @"00000143-0000-1000-8000-0026BB765291";
  v42[1] = @"00000144-0000-1000-8000-0026BB765291";
  v30 = *MEMORY[0x277CCF788];
  v42[2] = *MEMORY[0x277CCF7D8];
  v42[3] = v30;
  v42[4] = @"0000024B-0000-1000-8000-0026BB765291";
  v31 = [*(v16 + 2656) arrayWithObjects:v42 count:5];
  v32 = [v29 setWithArray:v31];

  v40 = *MEMORY[0x277CD0EA0];
  v41 = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v34 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:accessoryCopy workQueue:queueCopy interestedCharacteristicTypesByServiceType:v33];
  v35 = [(HMDLightProfile *)self initWithUUID:v18 workQueue:queueCopy lightService:serviceCopy accessory:accessoryCopy characteristicsAvailabilityListener:v34 naturalLightingCurveWriter:v28 dataSource:v10];

  return v35;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t75 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t75, &__block_literal_global_151_184078);
  }

  v3 = logCategory__hmf_once_v76;

  return v3;
}

uint64_t __30__HMDLightProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v76;
  logCategory__hmf_once_v76 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v53[3] = *MEMORY[0x277D85DE8];
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

  hapAccessory = [v12 hapAccessory];
  home = [hapAccessory home];
  v15 = home;
  if (hapAccessory)
  {
    v16 = home == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
  }

  else
  {
    v46 = dispatcherCopy;
    v22 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v23 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v24 = [HMDUserMessagePolicy userMessagePolicyWithHome:v15 userPrivilege:0 remoteAccessRequired:0];
    supportsCHIP = [hapAccessory supportsCHIP];
    v44 = v23;
    v45 = v22;
    if (supportsCHIP)
    {
      v53[0] = v22;
      v53[1] = v23;
      v53[2] = v24;
      v26 = MEMORY[0x277CBEA60];
      v27 = v53;
      v28 = 3;
    }

    else
    {
      v52 = v22;
      v26 = MEMORY[0x277CBEA60];
      v27 = &v52;
      v28 = 1;
    }

    v29 = [v26 arrayWithObjects:v27 count:{v28, v24}];
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v33;
      v50 = 2112;
      v51 = v15;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Registering for xpc handler messages with home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    name = [messageCopy name];
    v35 = [name isEqualToString:*MEMORY[0x277CD0790]];

    name2 = [messageCopy name];
    v37 = name2;
    if (v35)
    {
      v21 = HMFCreateMessageBinding();

      v38 = v45;
      v39 = v43;
    }

    else
    {
      v40 = [name2 isEqualToString:*MEMORY[0x277CD0780]];

      v39 = v43;
      if (v40)
      {
        name3 = [messageCopy name];
        v21 = HMFCreateMessageBinding();
      }

      else
      {
        v47.receiver = selfCopy2;
        v47.super_class = &OBJC_METACLASS___HMDLightProfile;
        v21 = objc_msgSendSuper2(&v47, sel_messageBindingForDispatcher_message_receiver_, v46, messageCopy, receiverCopy);
      }

      v38 = v45;
    }

    dispatcherCopy = v46;
  }

  return v21;
}

@end