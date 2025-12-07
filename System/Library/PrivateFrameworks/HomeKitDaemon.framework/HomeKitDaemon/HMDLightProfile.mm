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
- (HMDLightProfile)initWithUUID:(id)d workQueue:(id)queue lightService:(id)service accessory:(id)accessory matterCurveWriter:(id)writer dataSource:(id)source;
- (HMDLightProfile)initWithWorkQueue:(id)queue lightService:(id)service accessory:(id)accessory;
- (HMLightProfileSettings)settings;
- (NSDate)mostRecentNaturalLightingEnabledDate;
- (NSDate)mostRecentNaturalLightingUsedDate;
- (NSSet)availableCharacteristics;
- (NSSet)readCharacteristicRequests;
- (id)availableCharacteristicWithType:(id)type fromChangedObjects:(id)objects;
- (id)setNaturalLightingEnabledForMatterLightProfile:(BOOL)profile;
- (id)updateSettingsWithReadCharacteristicResponsePayload:(id)payload error:(id *)error;
- (void)_handleAccessoryCharacteristicsChanged:(id)changed;
- (void)callSetNaturalLightingEnabledCompletion:(id)completion error:(id)error;
- (void)dealloc;
- (void)disableNaturalLightingCharacteristicNotificationsForObserver:(id)observer;
- (void)encodeWithCoder:(id)coder;
- (void)fetchNaturalLightingEnabledWithCompletion:(id)completion;
- (void)handleAccessoryCharacteristicsChanged:(id)changed;
- (void)handleAccessoryNaturalLightingEnabledDidChangeNotification:(id)notification;
- (void)handleAccessorySupportsNaturalLightingDidChangeNotification:(id)notification;
- (void)handleAccessoryUnconfigured:(id)unconfigured;
- (void)handleColorControlAttributeReport:(id)report;
- (void)handleFetchNaturalLightColorTemperatureForBrightnessMessage:(id)message;
- (void)handleHomeDidDisableCharacteristicNotification:(id)notification;
- (void)handleHomeDidEnableCharacteristicNotification:(id)notification;
- (void)handleHomeNaturalLightingContextUpdated:(id)updated;
- (void)handleSetNaturalLightingEnabled:(BOOL)enabled;
- (void)handleSetNaturalLightingEnabledMessage:(id)message;
- (void)handleSetNaturalLightingEnabledMessageForMatterAccessory:(id)accessory;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)notifyClientsOfUpdatedSettingsWithPreviousSettings:(id)settings;
- (void)readCharacteristics:(id)characteristics;
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
- (void)updateSettingsWithNaturalLightingEnabled:(BOOL)enabled;
- (void)updateSettingsWithNaturalLightingSupported:(BOOL)supported;
- (void)updateSupportedFeaturesWithCharacteristics:(id)characteristics;
@end

@implementation HMDLightProfile

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (void)readCharacteristics:(id)characteristics
{
  v21 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = [characteristicsCopy na_map:&__block_literal_global_189];
  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  home = [hapAccessory home];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (home)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = characteristicsCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending read requests to read characteristics from the accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    objc_initWeak(buf, selfCopy);
    v13 = [(HMDAccessoryProfile *)selfCopy description];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__HMDLightProfile_readCharacteristics___block_invoke_190;
    v15[3] = &unk_278687FB0;
    objc_copyWeak(&v16, buf);
    [home readCharacteristicValues:v5 source:1140 sourceForLogging:v13 qualityOfService:-1 withCompletionHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home is not configured on the accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __39__HMDLightProfile_readCharacteristics___block_invoke_190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

- (id)setNaturalLightingEnabledForMatterLightProfile:(BOOL)profile
{
  matterCurveWriter = [(HMDLightProfile *)self matterCurveWriter];

  if (matterCurveWriter)
  {
    v6 = objc_alloc(MEMORY[0x277D0F7A8]);
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    v8 = [v6 initWithQueue:workQueue];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__HMDLightProfile_setNaturalLightingEnabledForMatterLightProfile___block_invoke;
    v13[3] = &unk_278687F68;
    v13[4] = self;
    profileCopy = profile;
    v9 = [MEMORY[0x277D0F7C0] inContext:v8 perform:v13];
  }

  else
  {
    v10 = MEMORY[0x277D0F7C0];
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v9 = [v10 futureWithError:v11];
  }

  return v9;
}

void __66__HMDLightProfile_setNaturalLightingEnabledForMatterLightProfile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) matterCurveWriter];
  v3 = [v2 setNaturalLightingEnabled:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDLightProfile *)v5 handleColorControlAttributeReport:v6, v7];
  }
}

- (void)handleColorControlAttributeReport:(id)report
{
  reportCopy = report;
  matterCurveWriter = [(HMDLightProfile *)self matterCurveWriter];

  if (matterCurveWriter)
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__HMDLightProfile_handleColorControlAttributeReport___block_invoke;
    v7[3] = &unk_27868A750;
    v7[4] = self;
    v8 = reportCopy;
    dispatch_async(workQueue, v7);
  }
}

void __53__HMDLightProfile_handleColorControlAttributeReport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) matterCurveWriter];
  [v2 handleColorControlAttributeReport:*(a1 + 40)];
}

- (void)updateSettingsWithNaturalLightingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v37 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@updateSettingsWithNaturalLightingEnabled naturalLightingEnabled: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  settings = [(HMDLightProfile *)selfCopy settings];
  if ([(HMDLightProfile *)selfCopy isNaturalLightingEnabled]!= enabledCopy)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      [(HMDLightProfile *)v14 isNaturalLightingEnabled];
      v17 = HMFBooleanToString();
      v18 = HMFBooleanToString();
      *buf = 138543874;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating naturalLightingEnabled from: %@ to: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    home = [hapAccessory home];
    if ([home isCurrentDeviceConfirmedPrimaryResident])
    {
      naturalLightingEnabled = [hapAccessory naturalLightingEnabled];
      bOOLValue = [naturalLightingEnabled BOOLValue];

      if (bOOLValue == enabledCopy)
      {
        goto LABEL_10;
      }

      home = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      v22 = [hapAccessory saveNaturalLightingEnabled:home];
    }

LABEL_10:
    [(HMDLightProfile *)v14 setNaturalLightingEnabled:enabledCopy];
    [(HMDLightProfile *)v14 notifyClientsOfUpdatedSettingsWithPreviousSettings:settings];
    if (enabledCopy)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v14;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Reading color temperature after natural lighting enabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      service = [(HMDLightProfile *)v24 service];
      v28 = [service findCharacteristicWithType:*MEMORY[0x277CCF7D8]];

      if (v28)
      {
        v30 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [(HMDLightProfile *)v24 readCharacteristics:v29];
      }
    }
  }
}

- (void)updateSettingsWithNaturalLightingSupported:(BOOL)supported
{
  supportedCopy = supported;
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settings = [(HMDLightProfile *)self settings];
  settings2 = [(HMDLightProfile *)self settings];
  supportedFeatures = [settings2 supportedFeatures];

  if ((supportedFeatures & 1) != supportedCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating supported features with natural lighting supported: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDLightProfile *)selfCopy setSupportedFeatures:supportedCopy];
    [(HMDLightProfile *)selfCopy setNaturalLightingSupported:supportedCopy];
    [(HMDLightProfile *)selfCopy notifyClientsOfUpdatedSettingsWithPreviousSettings:settings];
    hapAccessory = [(HMDLightProfile *)selfCopy hapAccessory];
    supportsNaturalLighting = [hapAccessory supportsNaturalLighting];
    bOOLValue = [supportsNaturalLighting BOOLValue];

    if (bOOLValue != supportedCopy)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:supportedCopy];
      v18 = [hapAccessory saveSupportsNaturalLighting:v17];
    }
  }
}

- (void)handleSetNaturalLightingEnabledMessageForMatterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  home = [hapAccessory home];

  if ([home isCurrentDeviceConfirmedPrimaryResident])
  {
    matterCurveWriter = [(HMDLightProfile *)self matterCurveWriter];

    if (!matterCurveWriter)
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [accessoryCopy respondWithError:v11];

      goto LABEL_6;
    }

    matterCurveWriter2 = [(HMDLightProfile *)self matterCurveWriter];
    [matterCurveWriter2 handleSetNaturalLightingEnabledMessage:accessoryCopy lightProfile:self];
  }

  else
  {
    matterCurveWriter2 = [accessoryCopy mutableCopy];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__HMDLightProfile_handleSetNaturalLightingEnabledMessageForMatterAccessory___block_invoke;
    v12[3] = &unk_278687F40;
    objc_copyWeak(&v14, &location);
    v13 = accessoryCopy;
    [matterCurveWriter2 setResponseHandler:v12];
    uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    [home redispatchToResidentMessage:matterCurveWriter2 target:uniqueIdentifier responseQueue:workQueue];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

LABEL_6:
}

void __76__HMDLightProfile_handleSetNaturalLightingEnabledMessageForMatterAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v13 respondWithError:v14];
LABEL_15:

    goto LABEL_16;
  }

  if (!v5)
  {
    v14 = [v6 hmf_dataForKey:*MEMORY[0x277CD07A8]];
    v27 = 0;
    v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v27];
    v16 = v27;
    if (v15)
    {
      [WeakRetained updateSettingsWithNaturalLightingEnabled:{objc_msgSend(v15, "isNaturalLightingEnabled")}];
      v17 = objc_autoreleasePoolPush();
      v18 = WeakRetained;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v20 = v25 = v16;
        *buf = 138543618;
        v29 = v20;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully updated natural lighting settings to: %@", buf, 0x16u);

        v16 = v25;
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 32) respondWithPayload:v6];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = WeakRetained;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v24 = v26 = v21;
        *buf = 138543618;
        v29 = v24;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode natural lighting settings: %@", buf, 0x16u);

        v21 = v26;
      }

      objc_autoreleasePoolPop(v21);
      [*(a1 + 32) respondWithError:v16];
    }

    goto LABEL_15;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) name];
    *buf = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle message: %@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 32) respondWithError:v5];
LABEL_16:
}

- (BOOL)supportsCHIP
{
  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  supportsCHIP = [hapAccessory supportsCHIP];

  return supportsCHIP;
}

- (void)handleAccessoryNaturalLightingEnabledDidChangeNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDLightProfile_handleAccessoryNaturalLightingEnabledDidChangeNotification___block_invoke;
  v9[3] = &unk_27868A750;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  dispatch_async(workQueue, v9);
}

void __78__HMDLightProfile_handleAccessoryNaturalLightingEnabledDidChangeNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 naturalLightingContext];

  if (v3)
  {
    v4 = [*(a1 + 40) settings];
    v5 = [*(a1 + 32) naturalLightingEnabled];
    v6 = [v5 BOOLValue];

    if (v6 != [*(a1 + 40) isNaturalLightingEnabled])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMFBooleanToString();
        v18 = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling notification to update naturalLightingEnabled: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 40) setNaturalLightingEnabled:v6];
      [*(a1 + 40) notifyClientsOfUpdatedSettingsWithPreviousSettings:v4];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) naturalLightingEnabled];
      v17 = *(a1 + 32);
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@naturalLightingEnabled: %@ did change for accessory: %@ but context is not present", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)handleAccessorySupportsNaturalLightingDidChangeNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
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

  if ([v7 supportsCHIP] && (_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling SupportsNaturalLighting change for matter accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__HMDLightProfile_handleAccessorySupportsNaturalLightingDidChangeNotification___block_invoke;
    v13[3] = &unk_27868A750;
    v14 = v7;
    selfCopy2 = self;
    dispatch_async(workQueue, v13);
  }
}

void __79__HMDLightProfile_handleAccessorySupportsNaturalLightingDidChangeNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 naturalLightingContext];

  if (v3)
  {
    v4 = [*(a1 + 40) settings];
    v5 = [*(a1 + 40) settings];
    v6 = [v5 supportedFeatures];

    v7 = [*(a1 + 32) supportsNaturalLighting];
    v8 = [v7 BOOLValue];

    if (v8 != (v6 & 1))
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = HMFBooleanToString();
        v20 = 138543618;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling notification to update supported features with natural lighting supported: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [*(a1 + 40) setSupportedFeatures:v8];
      [*(a1 + 40) setNaturalLightingSupported:v8];
      [*(a1 + 40) notifyClientsOfUpdatedSettingsWithPreviousSettings:v4];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 32) supportsNaturalLighting];
      v19 = *(a1 + 32);
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@supportsNaturalLighting: %@ did change for accessory: %@ but context is not present", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)handleHomeNaturalLightingContextUpdated:(id)updated
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLightProfile_handleHomeNaturalLightingContextUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __59__HMDLightProfile_handleHomeNaturalLightingContextUpdated___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) updateNaturalLightingCurve])
  {
    v2 = [*(a1 + 32) settings];
    v3 = [*(a1 + 32) hapAccessory];
    v4 = [v3 home];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v11 = [v3 supportsNaturalLighting];
      [*(a1 + 32) setNaturalLightingSupported:{objc_msgSend(v11, "BOOLValue")}];

      [*(a1 + 32) setSupportedFeatures:{objc_msgSend(*(a1 + 32), "isNaturalLightingSupported")}];
      v12 = [v3 naturalLightingEnabled];
      [*(a1 + 32) setNaturalLightingEnabled:{objc_msgSend(v12, "BOOLValue")}];

      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [*(a1 + 32) isNaturalLightingSupported];
        v18 = HMFBooleanToString();
        [*(a1 + 32) isNaturalLightingEnabled];
        v19 = HMFBooleanToString();
        v26 = 138543874;
        v27 = v17;
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Natural lighting context updated: naturalLightingSupported: %@ naturalLightingEnabled: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      if ([v5 isCurrentDeviceConfirmedPrimaryResident])
      {
        if (([v3 supportsCHIP] & 1) == 0)
        {
          v20 = [v3 matterNodeID];
          if (!v20 || (v21 = v20, [v3 matterNodeID], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqual:", &unk_283E75038), v22, v21, v23))
          {
            v24 = *(a1 + 32);
            v25 = [v24 availableCharacteristics];
            [v24 updateSupportedFeaturesWithCharacteristics:v25];
          }
        }
      }

      [*(a1 + 32) notifyClientsOfUpdatedSettingsWithPreviousSettings:v2];
      [*(a1 + 32) synchronizeCurveToAccessory];
    }
  }
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDLightProfile_handleHomeDidDisableCharacteristicNotification___block_invoke;
  v7[3] = &unk_27868A750;
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
  v7[3] = &unk_27868A750;
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
  v7[3] = &unk_27868A750;
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
  v7[3] = &unk_27868A750;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling accessory disconnected notification: %@", &v8, 0x16u);
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
  v7[3] = &unk_27868A7A0;
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
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@At least one characteristic value observer subscribed and last time read was successful, so returning the cached enabled value as it should be up to date", &v13, 0xCu);
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
  block[3] = &unk_278687F18;
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
  v3 = [availableCharacteristics na_map:&__block_literal_global_176];

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
  v8 = [readCharacteristicRequests na_map:&__block_literal_global_173_266944];

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
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Read characteristics disappeared from the light profile", buf, 0xCu);
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
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Read request failed for characteristic failed %@:%@", buf, 0x20u);
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
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Value of characteristic: %@ is not of expected type %@:%@", buf, 0x2Au);
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
            _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@Value of characteristic: %@ is not of expected type %@:%@", buf, 0x2Au);
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
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Successfully handled read response payload for characteristics:%@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Initialize the curve before updating settings", buf, 0xCu);
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
  v15[3] = &unk_278687EB0;
  v15[4] = self;
  v7 = [characteristicsCopy na_filter:v15];

  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_161_266954];
  [(HMDLightProfile *)self setBrightnessCharacteristic:v8];

  v9 = [v7 na_firstObjectPassingTest:&__block_literal_global_163_266955];
  [(HMDLightProfile *)self setColorTemperatureCharacteristic:v9];

  [(HMDLightProfile *)self updateNaturalLightingCurve];
  [(HMDLightProfile *)self updateSettingsWithCharacteristics:v7];
  [(HMDLightProfile *)self updateEnabledCharacteristicsNotifications];
  readCharacteristicRequests = [(HMDLightProfile *)self readCharacteristicRequests];
  v11 = [readCharacteristicRequests na_map:&__block_literal_global_166_266956];

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
  v7[3] = &unk_278687EB0;
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
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Skipping retry because either retry count: %ld or retry interval: %f is less than or equal to 0", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Natural Lighting enabled for retry context: %@ exhausted retry attempts: %lu", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Will retry set Natural Lighting enabled with retry context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  objc_initWeak(buf, selfCopy3);
  dataSource3 = [(HMDLightProfile *)selfCopy3 dataSource];
  workQueue2 = [(HMDAccessoryProfile *)selfCopy3 workQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__HMDLightProfile_retrySetNaturalLightingEnabledWithContext_error___block_invoke;
  v30[3] = &unk_278687E88;
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Retrying Natural Lighting enabled with retry context: %@ after %fs", &v22, 0x20u);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Not retrying because retry context changed from (%@ -> %@)", &v22, 0x20u);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Natural Lighting enabled for retry context %@ because self is gone", &v22, 0x16u);
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled: %@ with retry context: %@", buf, 0x20u);
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
    v25[3] = &unk_278687E60;
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
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Home on accessory with light profile is not set %@:%@", buf, 0x20u);
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
    block[2] = __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke_156;
    block[3] = &unk_278687E38;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic for Natural Lighting enabled: %{public}@ because self is gone", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 40) + 16))();
  }
}

void __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke_156(uint64_t a1)
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote characteristic for Natural Lighting enabled: %@", &v16, 0x16u);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic for Natural Lighting enabled: %{public}@ error: %{public}@", &v16, 0x20u);
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
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Created natural lighting enabled retry context: %@", &v23, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting feature is not supported", &v23, 0xCu);
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications for natural lighting characteristics: %@", &v25, 0x16u);
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find any characteristics to disable notifications", &v25, 0xCu);
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
  v5 = [availableCharacteristics na_firstObjectPassingTest:&__block_literal_global_148_266983];

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
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, v25, &v27, 0xCu);
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
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications for natural lighting characteristics: %@", &v27, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not rewriting curve because either natural lighting is disabled: %@ or curve is nil: %@", buf, 0x20u);
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

  v6 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_144_266989];
  if (v6)
  {
    [(HMDLightProfile *)self updateActiveTransitionCountWithCharacteristic:v6];
  }

  settings = [(HMDLightProfile *)self settings];
  naturalLightingActiveTransitionContext = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
  [(HMDLightProfile *)self updateSupportedFeaturesWithCharacteristics:characteristicsCopy];
  v9 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_146_266990];
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting active transition context from %@ -> %@", &v19, 0x20u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, v13, &v23, v15);

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
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating active transition count from (%u -> %u)", &v23, 0x18u);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending read requests to the accessory: %@ with reason: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      objc_initWeak(buf, selfCopy);
      allObjects = [readCharacteristicRequests allObjects];
      v18 = [(HMDAccessoryProfile *)selfCopy description];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke;
      v23[3] = &unk_278689728;
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Home is not configured on the accessory", buf, 0xCu);
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
    v12[3] = &unk_278687E08;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received empty response payload for charactersitic read requests %@:%@", buf, 0x20u);
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

  [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:reasonCopy completion:&__block_literal_global_140_267000];
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
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, v26, buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, v46, buf, 0x20u);

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
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated natural lighting curve from %llu -> %llu", buf, 0x20u);
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
  v14[3] = &unk_278687DC0;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Initialize the curve since natural lighting context is present", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting active transition context from %@ -> %@", buf, 0x20u);
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
  v82 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_267019];
  if (v6)
  {
    v7 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_122];
    if (!v7)
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        v45 = *MEMORY[0x277CCF7D8];
        *buf = 138543874;
        v77 = v44;
        v78 = 2112;
        v79 = v45;
        v80 = 2112;
        v81 = characteristicsCopy;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Characteristic Color Temperature: %@ is not supported, available characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v41);
      goto LABEL_49;
    }

    v8 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_125_267022];
    if (!v8)
    {
      v46 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        v50 = *MEMORY[0x277CCF788];
        *buf = 138543874;
        v77 = v49;
        v78 = 2112;
        v79 = v50;
        v80 = 2112;
        v81 = characteristicsCopy;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Characteristics Brightness: %@ is not supported, available characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v46);
      goto LABEL_48;
    }

    v9 = [characteristicsCopy na_firstObjectPassingTest:&__block_literal_global_128_267024];
    if (v9)
    {
      [(HMDLightProfile *)self setNaturalLightingSupported:1];
      naturalLightingCurve = [(HMDLightProfile *)self naturalLightingCurve];

      if (naturalLightingCurve)
      {
        v72 = v9;
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
          v70 = value;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v19 = v18 = v13;
            hmf_hexadecimalRepresentation = [(__CFString *)v18 hmf_hexadecimalRepresentation];
            *buf = 138543618;
            v77 = v19;
            v78 = 2112;
            v79 = hmf_hexadecimalRepresentation;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Decoding supported value transition configuration: %@", buf, 0x16u);

            value = v70;
            v13 = v18;
          }

          objc_autoreleasePoolPop(v14);
          v75 = 0;
          v21 = [MEMORY[0x277CFEC60] parsedFromData:v13 error:&v75];
          v71 = v75;
          v69 = v21;
          if (v21)
          {
            v68 = v13;
            transitions = [v21 transitions];
            v73[0] = MEMORY[0x277D85DD0];
            v73[1] = 3221225472;
            v73[2] = __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_130;
            v73[3] = &unk_278687D90;
            v23 = v7;
            v74 = v23;
            v24 = [transitions na_firstObjectPassingTest:v73];

            v25 = objc_autoreleasePoolPush();
            v26 = selfCopy3;
            v27 = HMFGetOSLogHandle();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
            v29 = v24;
            if (v24)
            {
              if (v28)
              {
                HMFGetLogIdentifier();
                v31 = v30 = v25;
                *buf = 138543362;
                v77 = v31;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supported features with natural lighting feature", buf, 0xCu);

                v25 = v30;
              }

              objc_autoreleasePoolPop(v25);
              [(HMDLightProfile *)v26 setSupportedFeatures:1];
              hapAccessory = [(HMDLightProfile *)v26 hapAccessory];
              home = [hapAccessory home];
              if ([home isCurrentDeviceConfirmedPrimaryResident])
              {
                naturalLightingContext = [home naturalLightingContext];

                if (naturalLightingContext)
                {
                  v35 = [MEMORY[0x277CCABB0] numberWithBool:1];
                  v36 = [hapAccessory saveSupportsNaturalLighting:v35];
                }
              }
            }

            else
            {
              if (v28)
              {
                HMFGetLogIdentifier();
                v67 = v66 = v25;
                *buf = 138543618;
                v77 = v67;
                v78 = 2112;
                v79 = v23;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Characteristic: %@ doesn't support Linear Derived Transition", buf, 0x16u);

                v25 = v66;
              }

              objc_autoreleasePoolPop(v25);
            }

            v9 = v72;

            value = v70;
            v13 = v68;
          }

          else
          {
            v60 = objc_autoreleasePoolPush();
            v61 = selfCopy3;
            v62 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v63 = v13;
              v65 = v64 = value;
              *buf = 138543874;
              v77 = v65;
              v78 = 2112;
              v79 = v63;
              v80 = 2112;
              v81 = v71;
              _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode the supported value transition configuration from: %@ error: %@", buf, 0x20u);

              value = v64;
              v13 = v63;
            }

            objc_autoreleasePoolPop(v60);
            v9 = v72;
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v59 = HMFGetLogIdentifier();
            *buf = 138543618;
            v77 = v59;
            v78 = 2112;
            v79 = value;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Supported Value Transition Configuration Characteristic value: %@ is not of expected type NSData", buf, 0x16u);

            v13 = 0;
          }

          objc_autoreleasePoolPop(v14);
          v9 = v72;
        }

        goto LABEL_47;
      }

      v51 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543362;
        v77 = v54;
        v55 = "%{public}@Natural lighting curve is not set";
        v56 = v53;
        v57 = OS_LOG_TYPE_ERROR;
        v58 = 12;
        goto LABEL_33;
      }
    }

    else
    {
      v51 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543874;
        v77 = v54;
        v78 = 2112;
        v79 = @"00000144-0000-1000-8000-0026BB765291";
        v80 = 2112;
        v81 = characteristicsCopy;
        v55 = "%{public}@Supported Value Transition Characteristic: %@ is not supported, available characteristics: %@";
        v56 = v53;
        v57 = OS_LOG_TYPE_INFO;
        v58 = 32;
LABEL_33:
        _os_log_impl(&dword_229538000, v56, v57, v55, buf, v58);
      }
    }

    objc_autoreleasePoolPop(v51);
LABEL_47:

LABEL_48:
LABEL_49:

    goto LABEL_50;
  }

  v37 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543874;
    v77 = v40;
    v78 = 2112;
    v79 = @"00000143-0000-1000-8000-0026BB765291";
    v80 = 2112;
    v81 = characteristicsCopy;
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Value Transition Control Characteristic: %@ is not supported, available characteristics: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v37);
LABEL_50:
}

unint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_130(uint64_t a1, void *a2)
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

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_126(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000144-0000-1000-8000-0026BB765291"];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_120(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting enabled with characteristic: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Decoding Value Transition Control Characteristic value: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Start", buf, 0xCu);
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
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Control Fetch Response", buf, 0xCu);
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
            _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Control Write Response, active transition contexts are: %@", buf, 0x16u);

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
              _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition State, active transition contexts are: %@", buf, 0x16u);
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
              _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_DEBUG, "%{public}@Did not handle Value Transition Control Characteristic update: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Value Transition Control Characteristic value is not of type data: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating settings from %@ to %@", buf, 0x20u);
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
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting to sync siri data since natural lighting supported changed from %@ -> %@", buf, 0x20u);
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
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Updating lastNaturalLightingEnabledDate to: %@ from: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting natural lighting context: %@", &v11, 0x16u);
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
  v51 = *MEMORY[0x277D85DE8];
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
    v46 = v9;
    v47 = 2112;
    v48 = messagePayload;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch color temperature for brightness: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy numberForKey:*MEMORY[0x277CD0768]];
  if ([v11 integerValue] < 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = v11;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid brightness value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
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
      if ([hapAccessory supportsCHIP])
      {
        curve = [naturalLightingContext curve];

        naturalLightingCurve = curve;
      }

      if (naturalLightingCurve)
      {
        v42 = home;
        dataSource = [(HMDLightProfile *)selfCopy dataSource];
        dataSource2 = [(HMDLightProfile *)selfCopy dataSource];
        date = [dataSource2 date];
        v41 = naturalLightingContext;
        timeZone = [naturalLightingContext timeZone];
        v21 = [dataSource millisecondsElapsedSinceStartOfDayWithDate:date timeZone:timeZone];

        v22 = [naturalLightingCurve colorTemperatureForBrightness:objc_msgSend(v11 millisecondsElapsedSinceStartOfDay:{"integerValue"), v21}];
        v23 = v22;
        if (v22)
        {
          v43 = *MEMORY[0x277CD0778];
          v44 = v22;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [messageCopy respondWithPayload:v24];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = selfCopy;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v40;
            v47 = 2112;
            v48 = v11;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to calculate color temperature value for brightness: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [messageCopy respondWithError:v24];
        }

        naturalLightingContext = v41;
        home = v42;
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v36;
          v47 = 2112;
          v48 = 0;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting curve is not set: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
        [messageCopy respondWithError:v23];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        v46 = v32;
        v47 = 2112;
        v48 = 0;
        v49 = 2112;
        v50 = home;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting context not set for home (%@:%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      naturalLightingCurve = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      [messageCopy respondWithError:naturalLightingCurve];
    }
  }
}

- (void)handleSetNaturalLightingEnabledMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
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
    v25 = v9;
    v26 = 2112;
    v27 = messagePayload;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to set Natural Lighting setting: %@ supportsCHIP: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory2 = [(HMDLightProfile *)selfCopy hapAccessory];
  supportsCHIP = [hapAccessory2 supportsCHIP];

  if (supportsCHIP)
  {
    [(HMDLightProfile *)selfCopy handleSetNaturalLightingEnabledMessageForMatterAccessory:messageCopy];
  }

  else
  {
    v15 = [messageCopy BOOLForKey:*MEMORY[0x277CD0798]];
    v16 = [messageCopy BOOLForKey:*MEMORY[0x277CD07A0]];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __58__HMDLightProfile_handleSetNaturalLightingEnabledMessage___block_invoke;
    v21 = &unk_27868A1D8;
    v22 = messageCopy;
    v23 = selfCopy;
    v17 = _Block_copy(&v18);
    [(HMDLightProfile *)selfCopy setNaturalLightingEnabled:v15 shouldRetryOnFailure:v16 completion:v17, v18, v19, v20, v21];
  }
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
  v57 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDLightProfile *)self hapAccessory];
  home = [hapAccessory home];
  v6 = home;
  if (hapAccessory && home)
  {
    naturalLightingContext = [home naturalLightingContext];

    if (naturalLightingContext)
    {
      settings = [(HMDLightProfile *)self settings];
      supportsNaturalLighting = [hapAccessory supportsNaturalLighting];
      -[HMDLightProfile setNaturalLightingSupported:](self, "setNaturalLightingSupported:", [supportsNaturalLighting BOOLValue]);

      [(HMDLightProfile *)self setSupportedFeatures:[(HMDLightProfile *)self isNaturalLightingSupported]];
      naturalLightingEnabled = [hapAccessory naturalLightingEnabled];
      -[HMDLightProfile setNaturalLightingEnabled:](self, "setNaturalLightingEnabled:", [naturalLightingEnabled BOOLValue]);

      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        [(HMDLightProfile *)selfCopy isNaturalLightingSupported];
        v15 = HMFBooleanToString();
        [(HMDLightProfile *)selfCopy isNaturalLightingEnabled];
        v16 = HMFBooleanToString();
        *buf = 138543874;
        v52 = v14;
        v53 = 2112;
        v54 = v15;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@registerForMessages: Setting naturalLightingSupported: %@ naturalLightingEnabled: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      if ([(HMDLightProfile *)selfCopy isNaturalLightingSupported]|| [(HMDLightProfile *)selfCopy isNaturalLightingEnabled])
      {
        [(HMDLightProfile *)selfCopy notifyClientsOfUpdatedSettingsWithPreviousSettings:settings];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleAccessorySupportsNaturalLightingDidChangeNotification_ name:@"HMDAccessorySupportsNaturalLightingDidChangeNotification" object:hapAccessory];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleAccessoryNaturalLightingEnabledDidChangeNotification_ name:@"HMDAccessoryNaturalLightingEnabledDidChangeNotification" object:hapAccessory];

    if (([hapAccessory supportsCHIP] & 1) != 0 || (objc_msgSend(hapAccessory, "matterNodeID"), (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19, objc_msgSend(hapAccessory, "matterNodeID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqual:", &unk_283E75038), v21, v20, (v22 & 1) == 0))
    {
      matterCurveWriter = [(HMDLightProfile *)self matterCurveWriter];
      [matterCurveWriter configureWithLightProfile:self];
LABEL_27:

      goto LABEL_28;
    }

    naturalLightingCurveWriter = [(HMDLightProfile *)self naturalLightingCurveWriter];
    [naturalLightingCurveWriter configureWithLightProfile:self];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:v6];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:v6];

    characteristicsAvailabilityListener = [(HMDLightProfile *)self characteristicsAvailabilityListener];
    [characteristicsAvailabilityListener setDelegate:self];

    characteristicsAvailabilityListener2 = [(HMDLightProfile *)self characteristicsAvailabilityListener];
    [characteristicsAvailabilityListener2 start];

    if ([v6 hasCharacteristicNotificationRegistrations] && -[HMDLightProfile enableNaturalLightingCharacteristicNotificationsForObserver:](self, "enableNaturalLightingCharacteristicNotificationsForObserver:", v6))
    {
      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }

    featuresDataSource = [v6 featuresDataSource];
    isMessageBindingsEnabled = [featuresDataSource isMessageBindingsEnabled];

    if ((isMessageBindingsEnabled & 1) == 0)
    {
      matterCurveWriter = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v31 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      v32 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:0 remoteAccessRequired:0];
      if ([hapAccessory supportsCHIP])
      {
        v48 = matterCurveWriter;
        v49 = v31;
        v50 = v32;
        v33 = MEMORY[0x277CBEA60];
        v34 = &v48;
        v35 = 3;
      }

      else
      {
        v47 = matterCurveWriter;
        v33 = MEMORY[0x277CBEA60];
        v34 = &v47;
        v35 = 1;
      }

      v40 = [v33 arrayWithObjects:v34 count:{v35, v47, v48, v49, v50}];
      v41 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v44;
        v53 = 2112;
        v54 = v6;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Registering for xpc handler messages with home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      msgDispatcher = [(HMDAccessoryProfile *)selfCopy2 msgDispatcher];
      [msgDispatcher registerForMessage:*MEMORY[0x277CD0790] receiver:selfCopy2 policies:v40 selector:sel_handleSetNaturalLightingEnabledMessage_];

      msgDispatcher2 = [(HMDAccessoryProfile *)selfCopy2 msgDispatcher];
      [msgDispatcher2 registerForMessage:*MEMORY[0x277CD0780] receiver:selfCopy2 policies:v40 selector:sel_handleFetchNaturalLightColorTemperatureForBrightnessMessage_];

      goto LABEL_27;
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
  }

LABEL_28:
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

- (HMDLightProfile)initWithUUID:(id)d workQueue:(id)queue lightService:(id)service accessory:(id)accessory matterCurveWriter:(id)writer dataSource:(id)source
{
  v26[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  writerCopy = writer;
  sourceCopy = source;
  v26[0] = serviceCopy;
  v17 = MEMORY[0x277CBEA60];
  queueCopy = queue;
  dCopy = d;
  v20 = [v17 arrayWithObjects:v26 count:1];
  v25.receiver = self;
  v25.super_class = HMDLightProfile;
  v21 = [(HMDAccessoryProfile *)&v25 initWithAccessory:accessoryCopy uniqueIdentifier:dCopy services:v20 workQueue:queueCopy];

  if (v21)
  {
    objc_storeStrong(&v21->_service, service);
    objc_storeWeak(&v21->_hapAccessory, accessoryCopy);
    objc_storeStrong(&v21->_matterCurveWriter, writer);
    objc_storeStrong(&v21->_dataSource, source);
  }

  return v21;
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
  v60[2] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  serviceCopy = service;
  accessoryCopy = accessory;
  v52 = objc_alloc_init(HMDLightProfileDataSource);
  v11 = MEMORY[0x277CCACA8];
  instanceID = [serviceCopy instanceID];
  v13 = [v11 stringWithFormat:@"%@", instanceID];

  v14 = MEMORY[0x277CCAD78];
  uuid = [accessoryCopy uuid];
  v60[0] = v13;
  v60[1] = @"2BB698E3-7C61-4B4F-B60A-33194DF41A06";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v17 = [v14 hm_deriveUUIDFromBaseUUID:uuid withSalts:v16];

  if (_os_feature_enabled_impl() && (([accessoryCopy supportsCHIP] & 1) != 0 || (objc_msgSend(accessoryCopy, "matterNodeID"), (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v19 = v18, objc_msgSend(accessoryCopy, "matterNodeID"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", &unk_283E75038), v20, v19, (v21 & 1) == 0)))
  {
    v41 = +[HMDDeviceCapabilities deviceCapabilities];
    isResidentCapable = [v41 isResidentCapable];

    if (isResidentCapable)
    {
      v43 = objc_autoreleasePoolPush();
      selfCopy = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v46 = v51 = v43;
        name = [accessoryCopy name];
        *buf = 138543618;
        v57 = v46;
        v58 = 2112;
        v59 = name;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@HMDLightProfile creating matter curve writer for accessory: %@", buf, 0x16u);

        v43 = v51;
      }

      objc_autoreleasePoolPop(v43);
      v32 = [[HMDNaturalLightingMatterCurveWriter alloc] initWithWorkQueue:queueCopy accessory:accessoryCopy];
    }

    else
    {
      v32 = 0;
    }

    v39 = v52;
    v40 = [(HMDLightProfile *)self initWithUUID:v17 workQueue:queueCopy lightService:serviceCopy accessory:accessoryCopy matterCurveWriter:v32 dataSource:v52];
  }

  else
  {
    v50 = v13;
    v22 = +[HMDDeviceCapabilities deviceCapabilities];
    isResidentCapable2 = [v22 isResidentCapable];

    if (isResidentCapable2)
    {
      home = [accessoryCopy home];
      v24 = MEMORY[0x277CCACA8];
      name2 = [home name];
      [accessoryCopy name];
      v26 = queueCopy;
      v27 = serviceCopy;
      v29 = v28 = self;
      uUIDString = [v17 UUIDString];
      v31 = [v24 stringWithFormat:@"%@/%@/%@", name2, v29, uUIDString];

      self = v28;
      serviceCopy = v27;
      queueCopy = v26;

      v32 = [[HMDNaturalLightingCurveWriter alloc] initWithUUID:v17 workQueue:v26 logIdentifier:v31];
    }

    else
    {
      v32 = 0;
    }

    v33 = MEMORY[0x277CBEB98];
    v55[0] = @"00000143-0000-1000-8000-0026BB765291";
    v55[1] = @"00000144-0000-1000-8000-0026BB765291";
    v34 = *MEMORY[0x277CCF788];
    v55[2] = *MEMORY[0x277CCF7D8];
    v55[3] = v34;
    v55[4] = @"0000024B-0000-1000-8000-0026BB765291";
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:5];
    v36 = [v33 setWithArray:v35];

    v53 = *MEMORY[0x277CD0EA0];
    v54 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v38 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:accessoryCopy workQueue:queueCopy interestedCharacteristicTypesByServiceType:v37];
    v39 = v52;
    v40 = [(HMDLightProfile *)self initWithUUID:v17 workQueue:queueCopy lightService:serviceCopy accessory:accessoryCopy characteristicsAvailabilityListener:v38 naturalLightingCurveWriter:v32 dataSource:v52];

    v13 = v50;
  }

  return v40;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t77_267105 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t77_267105, &__block_literal_global_168_267106);
  }

  v3 = logCategory__hmf_once_v78_267107;

  return v3;
}

void __30__HMDLightProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v78_267107;
  logCategory__hmf_once_v78_267107 = v0;
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Registering for xpc handler messages with home: %@", buf, 0x16u);
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