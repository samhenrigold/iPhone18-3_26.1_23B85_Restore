@interface HMDCameraRecordingSettingsControl
+ (NSArray)audioConfigurationsByPreferenceOrder;
+ (id)audioBitRateForCodecConfiguration:(id)configuration;
+ (id)audioCodecForCodecConfiguration:(id)configuration;
+ (id)h264ProfileForCodecConfiguration:(id)configuration;
+ (id)logCategory;
+ (id)videoCodecForCodecConfiguration:(id)configuration;
- (BOOL)_shouldReconfigureForChangedCharacteristic:(id)characteristic;
- (BOOL)isCameraConfiguredForRecording;
- (BOOL)isPrimaryResident;
- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service;
- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service featuresDataSource:(id)source notificationCenter:(id)center;
- (HMDCameraRecordingSettingsControlDelegate)delegate;
- (HMDCharacteristic)recordingActiveCharacteristic;
- (HMDCharacteristic)recordingSelectedConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedAudioConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedGeneralConfigurationCharacteristic;
- (HMDCharacteristic)recordingSupportedVideoConfigurationCharacteristic;
- (HMDHAPAccessory)accessory;
- (NSArray)videoConfigurationsByPreferenceOrder;
- (id)_dataValueForCharacteristicOfType:(id)type inResponses:(id)responses;
- (id)_generalRecordingConfigurationInResponses:(id)responses;
- (id)_isRecordingActiveValueInResponses:(id)responses;
- (id)_numberValueForCharacteristicOfType:(id)type inResponses:(id)responses;
- (id)_preferredAudioConfigurationOverride;
- (id)_preferredVideoConfigurationOverride;
- (id)_recordingAudioConfiguration;
- (id)_recordingGeneralConfiguration;
- (id)_recordingVideoConfiguration;
- (id)_selectedRecordingConfigurationInResponses:(id)responses;
- (id)_supportedAudioConfigurationInResponses:(id)responses;
- (id)_supportedVideoConfigurationInResponses:(id)responses;
- (id)characteristicsToMonitor;
- (id)logIdentifier;
- (void)_handleCurrentIsRecordingActive:(id)active selectedConfiguration:(id)configuration;
- (void)_handleSupportedConfigurationCharacteristicsReadResponses:(id)responses;
- (void)_invokePendingConfigureCompletionHandlersWithError:(id)error;
- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration;
- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration error:(id)error;
- (void)_readCameraRecordingSettings;
- (void)_readSupportedCameraRecordingConfiguration;
- (void)_setSelectedRecordingConfiguration:(id)configuration;
- (void)_updateSelectedRecordingConfiguration:(id)configuration;
- (void)_writeCameraRecordingSettings;
- (void)configureCameraRecordingSettings;
- (void)configureCameraRecordingSettingsWithCompletion:(id)completion;
- (void)dealloc;
- (void)enableCharacteristicNotifications;
- (void)handleAccessoryConnectedNotification:(id)notification;
- (void)handleAccessoryDisconnectedNotification:(id)notification;
- (void)handleAccessoryIsNotConfiguredError;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)handleCharacteristicsUpdatedNotification:(id)notification;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification;
- (void)reconfigureCameraRecordingSettingsWithReason:(id)reason;
- (void)start;
@end

@implementation HMDCameraRecordingSettingsControl

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraRecordingSettingsControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  name = [accessory name];
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  instanceID = [recordingService instanceID];
  v8 = [v3 stringWithFormat:@"%@/%@", name, instanceID];

  return v8;
}

- (BOOL)isCameraConfiguredForRecording
{
  selfCopy = self;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSelectedConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy currentSelectedConfiguration];
  LOBYTE(selfCopy) = currentSelectedConfiguration != 0;

  return selfCopy;
}

- (void)_setSelectedRecordingConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  home = [accessory home];

  if (home)
  {
    recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
    v9 = [recordingService findCharacteristicWithType:@"00000209-0000-1000-8000-0026BB765291"];

    tlvData = [configurationCopy tlvData];
    v11 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v9 value:tlvData authorizationData:0 type:0];

    v22 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke;
    v19[3] = &unk_279730A88;
    v19[4] = self;
    v20 = v11;
    v21 = configurationCopy;
    v14 = v11;
    [home writeCharacteristicValues:v12 source:1070 biomeSource:0 identifier:uUID transport:0 qualityOfService:-1 withCompletionHandler:v19];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot set selected recording configuration because accessory/home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke_2;
  block[3] = &unk_2797352C0;
  v11 = v6;
  v12 = a1[5];
  v13 = v5;
  v14 = a1[4];
  v15 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __72__HMDCameraRecordingSettingsControl__setSelectedRecordingConfiguration___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) characteristic];
  v13 = 0;
  v4 = [v2 hmd_valueOfCharacteristic:v3 error:&v13];
  v5 = v13;

  v6 = *(a1 + 48);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 56);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6 || !v4)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set the selected recording configuration: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) _invokePendingConfigureCompletionHandlersWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the selected recording configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) _updateSelectedRecordingConfiguration:*(a1 + 64)];
  }
}

- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((configurationCopy == 0) != (errorCopy != 0))
  {
    _HMFPreconditionFailure();
  }

  pendingConfigureCompletionHandlers = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v10 = objc_msgSend_copy(pendingConfigureCompletionHandlers);

  pendingConfigureCompletionHandlers2 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  [pendingConfigureCompletionHandlers2 removeAllObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)_invokePendingConfigureCompletionHandlersWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:0 error:errorCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSettingsControl *)v5 _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:v6, v7];
  }
}

- (void)_invokePendingConfigureCompletionHandlersWithGeneralConfiguration:(id)configuration
{
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (configurationCopy)
  {
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:configurationCopy error:0];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSettingsControl *)v5 _numberValueForCharacteristicOfType:v6 inResponses:v7, v8];
  }
}

- (id)_numberValueForCharacteristicOfType:(id)type inResponses:(id)responses
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = responsesCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v23 + 1) + 8 * v13);
      request = [v14 request];
      characteristic = [request characteristic];
      type = [characteristic type];
      v18 = [type isEqualToString:typeCopy];

      if (v18)
      {
        value = [v14 value];
        objc_opt_class();
        v20 = (objc_opt_isKindOfClass() & 1) != 0 ? value : 0;
        v21 = v20;

        if (v21)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    value = 0;
  }

  return value;
}

- (id)_dataValueForCharacteristicOfType:(id)type inResponses:(id)responses
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = responsesCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v23 + 1) + 8 * v13);
      request = [v14 request];
      characteristic = [request characteristic];
      type = [characteristic type];
      v18 = [type isEqualToString:typeCopy];

      if (v18)
      {
        value = [v14 value];
        objc_opt_class();
        v20 = (objc_opt_isKindOfClass() & 1) != 0 ? value : 0;
        v21 = v20;

        if (v21)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    value = 0;
  }

  return value;
}

- (id)_supportedVideoConfigurationInResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000206-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSupportedVideoConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Failed to parse camera recording video configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Response missing supported video configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_supportedAudioConfigurationInResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000207-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSupportedAudioConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Failed to parse camera recording audio configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Response missing supported audio configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_generalRecordingConfigurationInResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000205-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingGeneralConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Failed to parse camera recording general configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Response missing supported recording configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_selectedRecordingConfigurationInResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _dataValueForCharacteristicOfType:@"00000209-0000-1000-8000-0026BB765291" inResponses:responsesCopy];
  if (v6)
  {
    v7 = [(HAPTLVBase *)[HMDCameraRecordingSelectedConfiguration alloc] initWithTLVData:v6];
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Failed to parse camera recording selected configuration";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Response missing selected camera recording configuration";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_isRecordingActiveValueInResponses:(id)responses
{
  v16 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _numberValueForCharacteristicOfType:*MEMORY[0x277CCF748] inResponses:responsesCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Response missing recording active", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v7;
}

- (void)_handleSupportedConfigurationCharacteristicsReadResponses:(id)responses
{
  v51 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HMDCameraRecordingSettingsControl *)self _isRecordingActiveValueInResponses:responsesCopy];
  if ([v6 BOOLValue])
  {
    v7 = [(HMDCameraRecordingSettingsControl *)self _generalRecordingConfigurationInResponses:responsesCopy];
    [(HMDCameraRecordingSettingsControl *)self setSupportedRecordingConfiguration:v7];

    v8 = [(HMDCameraRecordingSettingsControl *)self _supportedVideoConfigurationInResponses:responsesCopy];
    [(HMDCameraRecordingSettingsControl *)self setSupportedVideoConfiguration:v8];

    v9 = [(HMDCameraRecordingSettingsControl *)self _supportedAudioConfigurationInResponses:responsesCopy];
    [(HMDCameraRecordingSettingsControl *)self setSupportedAudioConfiguration:v9];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      supportedRecordingConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy supportedRecordingConfiguration];
      v47 = 138543618;
      v48 = v13;
      v49 = 2112;
      v50 = supportedRecordingConfiguration;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating supported recording configuration to: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      supportedVideoConfiguration = [(HMDCameraRecordingSettingsControl *)v16 supportedVideoConfiguration];
      v47 = 138543618;
      v48 = v18;
      v49 = 2112;
      v50 = supportedVideoConfiguration;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating supported video configuration to: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = objc_autoreleasePoolPush();
    v21 = v16;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      supportedAudioConfiguration = [(HMDCameraRecordingSettingsControl *)v21 supportedAudioConfiguration];
      v47 = 138543618;
      v48 = v23;
      v49 = 2112;
      v50 = supportedAudioConfiguration;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating supported audio configuration to: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    _recordingGeneralConfiguration = [(HMDCameraRecordingSettingsControl *)v21 _recordingGeneralConfiguration];
    _recordingVideoConfiguration = [(HMDCameraRecordingSettingsControl *)v21 _recordingVideoConfiguration];
    _recordingAudioConfiguration = [(HMDCameraRecordingSettingsControl *)v21 _recordingAudioConfiguration];
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (_recordingGeneralConfiguration && _recordingVideoConfiguration && _recordingAudioConfiguration)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v47 = 138543618;
        v48 = v32;
        v49 = 2112;
        v50 = _recordingGeneralConfiguration;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Setting selected general configuration: %@", &v47, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = objc_autoreleasePoolPush();
      v34 = v29;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v47 = 138543618;
        v48 = v36;
        v49 = 2112;
        v50 = _recordingVideoConfiguration;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Setting selected video configuration: %@", &v47, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v37 = objc_autoreleasePoolPush();
      v38 = v34;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v47 = 138543618;
        v48 = v40;
        v49 = 2112;
        v50 = _recordingAudioConfiguration;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Setting selected audio configuration: %@", &v47, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v41 = [[HMDCameraRecordingSelectedConfiguration alloc] initWithGeneralConfiguration:_recordingGeneralConfiguration videoCodecConfiguration:_recordingVideoConfiguration audioCodecConfiguration:_recordingAudioConfiguration];
      [(HMDCameraRecordingSettingsControl *)v38 _setSelectedRecordingConfiguration:v41];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        v47 = 138543362;
        v48 = v46;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Skipping selected configuration write because of invalid selected config", &v47, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [(HMDCameraRecordingSettingsControl *)v29 _invokePendingConfigureCompletionHandlersWithError:v41];
    }
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      v47 = 138543618;
      v48 = v45;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Recording active is disabled: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    [(HMDCameraRecordingSettingsControl *)selfCopy2 setCurrentSelectedConfiguration:0];
    _recordingGeneralConfiguration = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)selfCopy2 _invokePendingConfigureCompletionHandlersWithError:_recordingGeneralConfiguration];
  }
}

- (void)_readSupportedCameraRecordingConfiguration
{
  v16[4] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v5 = [HMDCharacteristicRequest requestWithCharacteristic:recordingActiveCharacteristic];
  v16[0] = v5;
  recordingSupportedGeneralConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSupportedGeneralConfigurationCharacteristic];
  v7 = [HMDCharacteristicRequest requestWithCharacteristic:recordingSupportedGeneralConfigurationCharacteristic];
  v16[1] = v7;
  recordingSupportedAudioConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSupportedAudioConfigurationCharacteristic];
  v9 = [HMDCharacteristicRequest requestWithCharacteristic:recordingSupportedAudioConfigurationCharacteristic];
  v16[2] = v9;
  recordingSupportedVideoConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSupportedVideoConfigurationCharacteristic];
  v11 = [HMDCharacteristicRequest requestWithCharacteristic:recordingSupportedVideoConfigurationCharacteristic];
  v16[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  workQueue2 = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMDCameraRecordingSettingsControl__readSupportedCameraRecordingConfiguration__block_invoke;
  v15[3] = &unk_279730038;
  v15[4] = self;
  [accessory readCharacteristicValues:v12 source:1070 queue:workQueue2 completionHandler:v15];
}

- (void)_handleCurrentIsRecordingActive:(id)active selectedConfiguration:(id)configuration
{
  v54[5] = *MEMORY[0x277D85DE8];
  activeCopy = active;
  configurationCopy = configuration;
  v54[0] = *MEMORY[0x277CCF748];
  v54[1] = @"00000205-0000-1000-8000-0026BB765291";
  v54[2] = @"00000207-0000-1000-8000-0026BB765291";
  v54[3] = @"00000206-0000-1000-8000-0026BB765291";
  v54[4] = @"00000209-0000-1000-8000-0026BB765291";
  [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:5];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v48 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
        v15 = [recordingService findCharacteristicWithType:v13];

        if (!v15)
        {
          v36 = objc_autoreleasePoolPush();
          selfCopy = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v39;
            v51 = 2112;
            v52 = v13;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Recording service does not have required characteristic type: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          [(HMDCameraRecordingSettingsControl *)selfCopy setCurrentSelectedConfiguration:0];
          v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [(HMDCameraRecordingSettingsControl *)selfCopy _invokePendingConfigureCompletionHandlersWithError:v40];

          generalConfiguration2 = v8;
          goto LABEL_25;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([activeCopy BOOLValue])
  {
    currentSelectedConfiguration = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];
    tlvData = [currentSelectedConfiguration tlvData];
    tlvData2 = [configurationCopy tlvData];
    v19 = [tlvData isEqualToData:tlvData2];

    if ((v19 & 1) == 0)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        generalConfiguration = [configurationCopy generalConfiguration];
        *buf = 138543618;
        v50 = v23;
        v51 = 2112;
        v52 = generalConfiguration;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating selected general configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy2;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        videoConfiguration = [configurationCopy videoConfiguration];
        *buf = 138543618;
        v50 = v28;
        v51 = 2112;
        v52 = videoConfiguration;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating selected video configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = objc_autoreleasePoolPush();
      v31 = v26;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        audioConfiguration = [configurationCopy audioConfiguration];
        *buf = 138543618;
        v50 = v33;
        v51 = 2112;
        v52 = audioConfiguration;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating selected audio configuration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDCameraRecordingSettingsControl *)v31 _updateSelectedRecordingConfiguration:configurationCopy];
    }

    generalConfiguration2 = [configurationCopy generalConfiguration];
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:generalConfiguration2];
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v44;
      v51 = 2112;
      v52 = activeCopy;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Recording active is disabled: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    [(HMDCameraRecordingSettingsControl *)selfCopy3 setCurrentSelectedConfiguration:0];
    generalConfiguration2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)selfCopy3 _invokePendingConfigureCompletionHandlersWithError:generalConfiguration2];
  }

LABEL_25:
}

- (void)_readCameraRecordingSettings
{
  v44 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  recordingSelectedConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
  v6 = recordingSelectedConfigurationCharacteristic;
  if (recordingActiveCharacteristic && recordingSelectedConfigurationCharacteristic)
  {
    value = [recordingActiveCharacteristic value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = value;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    value2 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = value2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [(HAPTLVBase *)[HMDCameraRecordingSelectedConfiguration alloc] initWithTLVData:v12];
    }

    else
    {
      v13 = 0;
    }

    if ([(HMDCameraRecordingSettingsControl *)self canUseCachedCharacteristicValues]&& v9 && v13)
    {
      [(HMDCameraRecordingSettingsControl *)self _handleCurrentIsRecordingActive:v9 selectedConfiguration:v13];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        [(HMDCameraRecordingSettingsControl *)selfCopy canUseCachedCharacteristicValues];
        v25 = HMFBooleanToString();
        v26 = v25;
        v27 = @"<nil>";
        *buf = 138544130;
        v37 = v24;
        if (v9)
        {
          v28 = @"<not nil>";
        }

        else
        {
          v28 = @"<nil>";
        }

        if (v13)
        {
          v27 = @"<not nil>";
        }

        v38 = 2112;
        v39 = v25;
        v40 = 2112;
        v41 = v28;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Reading from accessory because can use cached characteristic values is %@, recording active characteristic value is %@, and selected configuration characteristic value is %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      v29 = [HMDCharacteristicRequest requestWithCharacteristic:recordingActiveCharacteristic];
      v35[0] = v29;
      v30 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
      v35[1] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];

      accessory = [(HMDCameraRecordingSettingsControl *)selfCopy accessory];
      workQueue2 = [(HMDCameraRecordingSettingsControl *)selfCopy workQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __65__HMDCameraRecordingSettingsControl__readCameraRecordingSettings__block_invoke;
      v34[3] = &unk_279730038;
      v34[4] = selfCopy;
      [accessory readCharacteristicValues:v31 source:1070 queue:workQueue2 completionHandler:v34];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      v19 = @"<nil>";
      if (recordingActiveCharacteristic)
      {
        v20 = @"<not nil>";
      }

      else
      {
        v20 = @"<nil>";
      }

      *buf = 138543874;
      v37 = v17;
      v39 = v20;
      v38 = 2112;
      if (v6)
      {
        v19 = @"<not nil>";
      }

      v40 = 2112;
      v41 = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Mandatory recording active characteristic (%@) or selected configuration characteristic (%@) was not found on recording service", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [(HMDCameraRecordingSettingsControl *)selfCopy2 _invokePendingConfigureCompletionHandlersWithError:v9];
  }
}

void __65__HMDCameraRecordingSettingsControl__readCameraRecordingSettings__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isRecordingActiveValueInResponses:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) _selectedRecordingConfigurationInResponses:v3];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v10;
        v36 = 2112;
        v37 = v4;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Read is recording active: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v5 generalConfiguration];
        v34 = 138543618;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Read selected general configuration: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v5 videoConfiguration];
        v34 = 138543618;
        v35 = v19;
        v36 = 2112;
        v37 = v20;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Read selected video configuration: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 32);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v5 audioConfiguration];
        v34 = 138543618;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Read selected audio configuration: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      [*(a1 + 32) setCanUseCachedCharacteristicValues:1];
      [*(a1 + 32) _handleCurrentIsRecordingActive:v4 selectedConfiguration:v5];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v31;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read selected camera recording configuration", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v32 = *(a1 + 32);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:101];
      [v32 _invokePendingConfigureCompletionHandlersWithError:v33];

      v5 = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to read is recording active", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:101];
    [v30 _invokePendingConfigureCompletionHandlersWithError:v5];
  }
}

- (void)_updateSelectedRecordingConfiguration:(id)configuration
{
  v14 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSettingsControl *)self setCurrentSelectedConfiguration:configurationCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate to notify that recording settings are configured", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraRecordingSettingsControl *)selfCopy delegate];
  [delegate recordingSettingsControlDidConfigure:selfCopy];

  generalConfiguration = [configurationCopy generalConfiguration];
  [(HMDCameraRecordingSettingsControl *)selfCopy _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:generalConfiguration];
}

- (void)_writeCameraRecordingSettings
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSelectedConfiguration = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];

  if (currentSelectedConfiguration)
  {
    currentSelectedConfiguration2 = [(HMDCameraRecordingSettingsControl *)self currentSelectedConfiguration];
    generalConfiguration = [currentSelectedConfiguration2 generalConfiguration];
    [(HMDCameraRecordingSettingsControl *)self _invokePendingConfigureCompletionHandlersWithGeneralConfiguration:generalConfiguration];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring camera recording settings on primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDCameraRecordingSettingsControl *)selfCopy _readSupportedCameraRecordingConfiguration];
  }
}

- (BOOL)_shouldReconfigureForChangedCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  v6 = [characteristicCopy isEqual:recordingActiveCharacteristic];

  if (v6)
  {
    v7 = 1;
  }

  else if ([(HMDCameraRecordingSettingsControl *)self isPrimaryResident])
  {
    v7 = 0;
  }

  else
  {
    recordingSelectedConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
    v7 = [characteristicCopy isEqual:recordingSelectedConfigurationCharacteristic];
  }

  return v7;
}

- (void)handleAccessoryIsNotConfiguredError
{
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSettingsControl *)self reconfigureCameraRecordingSettingsWithReason:@"Handling accessory is not configured error"];
}

- (void)reconfigureCameraRecordingSettingsWithReason:(id)reason
{
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v9;
    v12 = 2112;
    v13 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reconfiguring camera recording settings: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingSettingsControl *)selfCopy setCurrentSelectedConfiguration:0];
  [(HMDCameraRecordingSettingsControl *)selfCopy configureCameraRecordingSettings];
}

- (void)configureCameraRecordingSettingsWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingConfigureCompletionHandlers = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v7 = _Block_copy(completionCopy);
  [pendingConfigureCompletionHandlers addObject:v7];

  pendingConfigureCompletionHandlers2 = [(HMDCameraRecordingSettingsControl *)self pendingConfigureCompletionHandlers];
  v9 = [pendingConfigureCompletionHandlers2 count];

  if (v9 < 2)
  {
    if ([(HMDCameraRecordingSettingsControl *)self isPrimaryResident])
    {
      [(HMDCameraRecordingSettingsControl *)self _writeCameraRecordingSettings];
    }

    else
    {
      [(HMDCameraRecordingSettingsControl *)self _readCameraRecordingSettings];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Deferring new configure request to be invoked when in-progress configure finishes", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)configureCameraRecordingSettings
{
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSettingsControl *)self configureCameraRecordingSettingsWithCompletion:&__block_literal_global_130240];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    clientIdentifier = selfCopy->_clientIdentifier;
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = clientIdentifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating recording settings control and disabling characteristic notifications with client identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_accessory);
  characteristicsToMonitor = [(HMDCameraRecordingSettingsControl *)selfCopy characteristicsToMonitor];
  [WeakRetained enableNotification:0 forCharacteristics:characteristicsToMonitor message:0 clientIdentifier:selfCopy->_clientIdentifier];

  v10.receiver = selfCopy;
  v10.super_class = HMDCameraRecordingSettingsControl;
  [(HMDCameraRecordingSettingsControl *)&v10 dealloc];
}

- (void)enableCharacteristicNotifications
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    characteristicsToMonitor = [(HMDCameraRecordingSettingsControl *)selfCopy characteristicsToMonitor];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = characteristicsToMonitor;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for characteristics: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDCameraRecordingSettingsControl *)selfCopy accessory];
  characteristicsToMonitor2 = [(HMDCameraRecordingSettingsControl *)selfCopy characteristicsToMonitor];
  clientIdentifier = [(HMDCameraRecordingSettingsControl *)selfCopy clientIdentifier];
  [accessory enableNotification:1 forCharacteristics:characteristicsToMonitor2 message:0 clientIdentifier:clientIdentifier];
}

- (id)_recordingAudioConfiguration
{
  v90 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _preferredAudioConfigurationOverride = [(HMDCameraRecordingSettingsControl *)self _preferredAudioConfigurationOverride];
  array = [MEMORY[0x277CBEB18] array];
  v6 = array;
  if (_preferredAudioConfigurationOverride)
  {
    [array addObject:_preferredAudioConfigurationOverride];
  }

  v60 = _preferredAudioConfigurationOverride;
  v7 = &OBJC_METACLASS___HMDSoftwareUpdateDocumentationManager;
  v8 = +[HMDCameraRecordingSettingsControl audioConfigurationsByPreferenceOrder];
  [v6 addObjectsFromArray:v8];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v59 = selfCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v87 = v12;
    v88 = 2112;
    v89 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred audio parameters: %@", buf, 0x16u);

    selfCopy = v59;
  }

  objc_autoreleasePoolPop(v9);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  supportedAudioConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy supportedAudioConfiguration];
  codecConfigurations = [supportedAudioConfiguration codecConfigurations];

  obj = codecConfigurations;
  v63 = [codecConfigurations countByEnumeratingWithState:&v77 objects:v85 count:16];
  v15 = 0;
  v16 = 0;
  if (v63)
  {
    v64 = *v78;
    do
    {
      v17 = 0;
      do
      {
        v18 = v16;
        if (*v78 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v77 + 1) + 8 * v17);
        v16 = [&v7[47] audioCodecForCodecConfiguration:v19];

        v66 = v17;
        if (v16)
        {
          v20 = [&v7[47] audioBitRateForCodecConfiguration:v19];

          if (v20)
          {
            v61 = v20;
            v62 = v16;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v58 = v19;
            parameters = [v19 parameters];
            audioSampleRates = [parameters audioSampleRates];

            v67 = audioSampleRates;
            v23 = [audioSampleRates countByEnumeratingWithState:&v73 objects:v84 count:16];
            if (v23)
            {
              v24 = v23;
              v68 = *v74;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v74 != v68)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v26 = *(*(&v73 + 1) + 8 * i);
                  v69 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v27 = v6;
                  v28 = v6;
                  v29 = [v28 countByEnumeratingWithState:&v69 objects:v83 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v70;
LABEL_19:
                    v32 = 0;
                    while (1)
                    {
                      if (*v70 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v69 + 1) + 8 * v32);
                      sampleRate = [v33 sampleRate];
                      if ([v26 type] == sampleRate)
                      {
                        break;
                      }

                      if (v30 == ++v32)
                      {
                        v30 = [v28 countByEnumeratingWithState:&v69 objects:v83 count:16];
                        if (v30)
                        {
                          goto LABEL_19;
                        }

                        goto LABEL_25;
                      }
                    }

                    v35 = v33;

                    if (!v35)
                    {
                      goto LABEL_27;
                    }

                    v51 = -[HMDCameraRecordingAudioSampleRate initWithSampleRate:]([HMDCameraRecordingAudioSampleRate alloc], "initWithSampleRate:", [v35 sampleRate]);
                    v52 = [HMDCameraRecordingAudioCodecParameters alloc];
                    v15 = v61;
                    v82 = v61;
                    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
                    v81 = v51;
                    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
                    bitRate = [v35 bitRate];
                    v56 = [(HMDCameraRecordingAudioCodecParameters *)v52 initWithChannelCount:&unk_286629218 bitRateModes:v53 audioSampleRates:v54 maxAudioBitRate:bitRate];

                    v16 = v62;
                    v50 = [[HMDCameraRecordingAudioCodecConfiguration alloc] initWithAudioCodec:v62 codecParameters:v56];

                    v6 = v27;
                    goto LABEL_44;
                  }

LABEL_25:

LABEL_27:
                  v6 = v27;
                }

                v24 = [v67 countByEnumeratingWithState:&v73 objects:v84 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v36 = objc_autoreleasePoolPush();
            selfCopy = v59;
            v37 = v59;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v87 = v39;
              v88 = 2112;
              v89 = v58;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ preferred audio configuration is not supported", buf, 0x16u);
            }

            v15 = v61;
            v16 = v62;
            v7 = &OBJC_METACLASS___HMDSoftwareUpdateDocumentationManager;
          }

          else
          {
            v43 = v19;
            v36 = objc_autoreleasePoolPush();
            v44 = selfCopy;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543618;
              v87 = v45;
              v88 = 2112;
              v89 = v43;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ bit rate mode is not supported", buf, 0x16u);
            }

            v15 = 0;
          }
        }

        else
        {
          v40 = v19;
          v36 = objc_autoreleasePoolPush();
          v41 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v87 = v42;
            v88 = 2112;
            v89 = v40;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping audio codec configuration %@ codec type is not supported", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v36);
        v17 = v66 + 1;
      }

      while (v66 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v63);
  }

  v46 = objc_autoreleasePoolPush();
  v47 = selfCopy;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543362;
    v87 = v49;
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to select audio configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v46);
  v50 = 0;
LABEL_44:

  return v50;
}

- (HMDCharacteristic)recordingSelectedConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000209-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedVideoConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000206-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedAudioConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000207-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingSupportedGeneralConfigurationCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:@"00000205-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMDCharacteristic)recordingActiveCharacteristic
{
  recordingService = [(HMDCameraRecordingSettingsControl *)self recordingService];
  v3 = [recordingService findCharacteristicWithType:*MEMORY[0x277CCF748]];

  return v3;
}

- (BOOL)isPrimaryResident
{
  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  home = [accessory home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (id)characteristicsToMonitor
{
  array = [MEMORY[0x277CBEB18] array];
  recordingActiveCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingActiveCharacteristic];
  [array na_safeAddObject:recordingActiveCharacteristic];

  recordingSelectedConfigurationCharacteristic = [(HMDCameraRecordingSettingsControl *)self recordingSelectedConfigurationCharacteristic];
  [array na_safeAddObject:recordingSelectedConfigurationCharacteristic];

  v6 = objc_msgSend_copy(array);

  return v6;
}

- (id)_recordingVideoConfiguration
{
  v67 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _preferredVideoConfigurationOverride = [(HMDCameraRecordingSettingsControl *)self _preferredVideoConfigurationOverride];
  array = [MEMORY[0x277CBEB18] array];
  if (_preferredVideoConfigurationOverride)
  {
    [array addObject:?];
  }

  videoConfigurationsByPreferenceOrder = [(HMDCameraRecordingSettingsControl *)self videoConfigurationsByPreferenceOrder];
  [array addObjectsFromArray:videoConfigurationsByPreferenceOrder];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = array;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Video parameters in order of preference: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v64 = __Block_byref_object_copy__130259;
  v65 = __Block_byref_object_dispose__130260;
  v66 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  supportedVideoConfiguration = [(HMDCameraRecordingSettingsControl *)selfCopy supportedVideoConfiguration];
  obj = [supportedVideoConfiguration codecConfigurations];

  v9 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v52;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = [HMDCameraRecordingSettingsControl videoCodecForCodecConfiguration:v14];

        v10 = v15;
        if (v15)
        {
          v16 = [HMDCameraRecordingSettingsControl h264ProfileForCodecConfiguration:v14];

          if (v16)
          {
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke;
            v50[3] = &unk_27972CE08;
            v50[4] = v14;
            v50[5] = buf;
            v17 = [array na_firstObjectPassingTest:v50];
            if (v17)
            {

              v26 = [HMDCameraRecordingVideoAttributes alloc];
              resolution = [v17 resolution];
              obja = [(HMDCameraRecordingVideoAttributes *)v26 initWithResolution:resolution frameRate:*(*&buf[8] + 40)];
              v49 = -[HMDCameraRecordingH264Level initWithH264Level:]([HMDCameraRecordingH264Level alloc], "initWithH264Level:", [v17 h264Level]);
              v28 = [HMDCameraRecordingVideoCodecParameters alloc];
              v57 = v16;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
              v56 = v49;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
              bitRateByFrameRate = [v17 bitRateByFrameRate];
              v32 = [bitRateByFrameRate objectForKeyedSubscript:*(*&buf[8] + 40)];
              keyFrameInterval = [v17 keyFrameInterval];
              v34 = [(HMDCameraRecordingVideoCodecParameters *)v28 initWithProfiles:v29 levels:v30 bitRate:v32 iFrameInterval:keyFrameInterval];

              v35 = [HMDCameraRecordingVideoCodecConfiguration alloc];
              v55 = obja;
              v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
              v37 = [(HMDCameraRecordingVideoCodecConfiguration *)v35 initWithCodec:v10 codecParameters:v34 videoAttributes:v36];

              v11 = v16;
              goto LABEL_28;
            }

            v11 = v16;
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *v58 = 138543618;
              v59 = v25;
              v60 = 2112;
              v61 = v14;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Skipping video codec configuration %@, H264 profile is not supported", v58, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v11 = 0;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *v58 = 138543618;
            v59 = v21;
            v60 = 2112;
            v61 = v14;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping video codec configuration %@, codec type is not supported", v58, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    supportedVideoConfiguration2 = [(HMDCameraRecordingSettingsControl *)v39 supportedVideoConfiguration];
    *v58 = 138543618;
    v59 = v41;
    v60 = 2112;
    v61 = supportedVideoConfiguration2;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to select video configuration from supported video configuration: %@", v58, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v17 = 0;
  v37 = 0;
LABEL_28:
  _Block_object_dispose(buf, 8);

  return v37;
}

uint64_t __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) parameters];
  v5 = [v4 levels];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_2;
  v14[3] = &unk_27972CD90;
  v6 = v3;
  v15 = v6;
  LODWORD(v3) = [v5 na_any:v14];

  v7 = [*(a1 + 32) videoAttributes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_3;
  v11[3] = &unk_27972CDE0;
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v8;
  v9 = v6;
  LODWORD(v5) = [v7 na_any:v11];

  return v3 & v5;
}

BOOL __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 h264Level];
  v5 = [v3 h264Level];

  return v4 == v5;
}

uint64_t __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) resolution];
  if (v4 == [v3 resolution])
  {
    v5 = [*(a1 + 32) bitRateByFrameRate];
    v6 = [v5 allKeys];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_4;
    v11[3] = &unk_27972CDB8;
    v7 = v3;
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    v9 = [v6 na_any:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __65__HMDCameraRecordingSettingsControl__recordingVideoConfiguration__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) frameRate];
  v6 = [v5 isEqualToNumber:v4];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v6;
}

- (id)_preferredAudioConfigurationOverride
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [recordingConfigurationOverrides hmf_numberForKey:@"audioBitRate"];

  recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v7 = [recordingConfigurationOverrides2 hmf_numberForKey:@"audioSampleRate"];

  v8 = 0;
  if (v5 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Using overridden audio configuration with Bit rate: %@kbps, Sample rate: %@kHz", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = -[HMDCameraRecordingPreferredAudioConfiguration initWithSampleRate:bitRate:]([HMDCameraRecordingPreferredAudioConfiguration alloc], "initWithSampleRate:bitRate:", [v7 integerValue], v5);
  }

  return v8;
}

- (id)_preferredVideoConfigurationOverride
{
  v44 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [recordingConfigurationOverrides hmf_numberForKey:@"keyFrameInterval"];

  recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v7 = [recordingConfigurationOverrides2 hmf_numberForKey:@"frameRate"];

  recordingConfigurationOverrides3 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v9 = [recordingConfigurationOverrides3 hmf_numberForKey:@"imageWidth"];

  recordingConfigurationOverrides4 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v11 = [recordingConfigurationOverrides4 hmf_numberForKey:@"imageHeight"];

  recordingConfigurationOverrides5 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v13 = [recordingConfigurationOverrides5 hmf_numberForKey:@"videoBitrate"];

  recordingConfigurationOverrides6 = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v15 = [recordingConfigurationOverrides6 hmf_numberForKey:@"h264Level"];

  v16 = 0;
  if (v5 && v7 && v9 && v11 && v13 && v15)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      HMDCameraRecordingH264LevelTypeAsString([v15 integerValue]);
      v21 = v27 = v17;
      *buf = 138544898;
      v31 = v20;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Using overridden video configuration with Frame rate: %@fps, Key frame interval: %@ms, Image width: %@px, Image height: %@px, Video bit rate: %@kbps, H264 Level is: %@", buf, 0x48u);

      v17 = v27;
    }

    objc_autoreleasePoolPop(v17);
    v22 = [[HMDCameraRecordingVideoAttributes alloc] initWithImageWidth:v9 imageHeight:v11 frameRate:v7];
    v23 = [HMDCameraRecordingPreferredVideoConfiguration alloc];
    resolution = [(HMDCameraRecordingVideoAttributes *)v22 resolution];
    v28 = v7;
    v29 = v13;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v16 = -[HMDCameraRecordingPreferredVideoConfiguration initWithResolution:bitRateByFrameRate:keyFrameInterval:h264Level:](v23, "initWithResolution:bitRateByFrameRate:keyFrameInterval:h264Level:", resolution, v25, v5, [v15 integerValue]);
  }

  return v16;
}

- (id)_recordingGeneralConfiguration
{
  v85 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)self recordingConfigurationOverrides];
  v5 = [recordingConfigurationOverrides hmf_numberForKey:@"prebufferLength"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_286629200;
  }

  v7 = v6;
  supportedRecordingConfiguration = [(HMDCameraRecordingSettingsControl *)self supportedRecordingConfiguration];
  prebufferLength = [supportedRecordingConfiguration prebufferLength];

  if (!prebufferLength)
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v49;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Supported prebuffer length is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v50 = 0;
    goto LABEL_40;
  }

  if ([v7 compare:prebufferLength] == 1)
  {
    v10 = prebufferLength;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138544130;
    v78 = v15;
    v79 = 2112;
    v80 = v11;
    v81 = 2112;
    v82 = v7;
    v83 = 2112;
    v84 = prebufferLength;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Selecting prebuffer length of %@ because preferred length is %@ and supported length is %@", buf, 0x2Au);
  }

  v65 = v11;
  v66 = prebufferLength;
  v67 = v7;
  v68 = v5;

  objc_autoreleasePoolPop(v12);
  supportedRecordingConfiguration2 = [(HMDCameraRecordingSettingsControl *)selfCopy2 supportedRecordingConfiguration];
  eventTriggerOptions = [supportedRecordingConfiguration2 eventTriggerOptions];

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy2;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = HMDCameraRecordingEventTriggerOptionsAsString(eventTriggerOptions);
    *buf = 138543618;
    v78 = v21;
    v79 = 2112;
    v80 = v22;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Selecting event trigger options of %@", buf, 0x16u);
  }

  v63 = eventTriggerOptions;

  objc_autoreleasePoolPop(v18);
  recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)v19 recordingConfigurationOverrides];
  v24 = [recordingConfigurationOverrides2 hmf_numberForKey:@"fragmentLength"];

  v64 = v24;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = &unk_286629200;
  }

  v70 = v25;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  supportedRecordingConfiguration3 = [(HMDCameraRecordingSettingsControl *)v19 supportedRecordingConfiguration];
  mediaContainerConfigurations = [supportedRecordingConfiguration3 mediaContainerConfigurations];

  obj = mediaContainerConfigurations;
  v28 = [mediaContainerConfigurations countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (!v28)
  {
LABEL_30:

LABEL_36:
    v58 = objc_autoreleasePoolPush();
    v59 = v19;
    v60 = HMFGetOSLogHandle();
    v7 = v67;
    v5 = v68;
    v57 = v65;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v61;
      _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to select general configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v58);
    v50 = 0;
    goto LABEL_39;
  }

  v29 = v28;
  v30 = *v72;
LABEL_17:
  v31 = 0;
  v32 = obj;
  while (1)
  {
    if (*v72 != v30)
    {
      objc_enumerationMutation(v32);
    }

    v33 = *(*(&v71 + 1) + 8 * v31);
    container = [v33 container];
    type = [container type];

    if (!type)
    {
      break;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = v19;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v78 = v39;
      v79 = 2112;
      v80 = v33;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping container configuration: %@ unsupported container format", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
LABEL_28:
    if (v29 == ++v31)
    {
      v29 = [v32 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v29)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  parameters = [v33 parameters];
  fragmentLength = [parameters fragmentLength];

  if ([v70 compare:fragmentLength] == 1)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v19;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543874;
      v78 = v45;
      v79 = 2112;
      v80 = v33;
      v81 = 2112;
      v82 = v70;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Skipping container configuration: %@, requested fragment length is %@", buf, 0x20u);

      v32 = obj;
    }

    objc_autoreleasePoolPop(v42);
    goto LABEL_28;
  }

  v51 = [[HMDCameraRecordingMediaContainerParameters alloc] initWithFragmentLength:v70];
  v52 = [HMDCameraRecordingMediaContainerConfiguration alloc];
  container2 = [v33 container];
  v54 = [(HMDCameraRecordingMediaContainerConfiguration *)v52 initWithMediaContainer:container2 containerParameters:v51];

  if (!v54)
  {
    goto LABEL_36;
  }

  v55 = [HMDCameraRecordingGeneralConfiguration alloc];
  v75 = v54;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v57 = v65;
  v50 = [(HMDCameraRecordingGeneralConfiguration *)v55 initWithPrebufferLength:v65 eventTriggerOptions:v63 mediaContainerConfigurations:v56];

  v7 = v67;
  v5 = v68;
LABEL_39:
  prebufferLength = v66;

LABEL_40:

  return v50;
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__HMDCameraRecordingSettingsControl_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __90__HMDCameraRecordingSettingsControl_handleHomePersonManagerSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPrimaryResident])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 40) name];
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) name];
    [v7 reconfigureCameraRecordingSettingsWithReason:v8];
  }
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsChangedNotification___block_invoke_2;
  v11[3] = &unk_279733D48;
  v11[4] = *(a1 + 40);
  if ([v3 na_any:v11])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) name];
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) name];
    [v9 reconfigureCameraRecordingSettingsWithReason:v10];
  }
}

- (void)handleCharacteristicsUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDCameraRecordingSettingsControl_handleCharacteristicsUpdatedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __78__HMDCameraRecordingSettingsControl_handleCharacteristicsUpdatedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) enableCharacteristicNotifications];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) name];
  [v7 reconfigureCameraRecordingSettingsWithReason:v8];
}

- (void)handleAccessoryConnectedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDCameraRecordingSettingsControl_handleAccessoryConnectedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __74__HMDCameraRecordingSettingsControl_handleAccessoryConnectedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) configureCameraRecordingSettings];
}

- (void)handleAccessoryDisconnectedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCameraRecordingSettingsControl_handleAccessoryDisconnectedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __77__HMDCameraRecordingSettingsControl_handleAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@ by resetting current selected configuration", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setCanUseCachedCharacteristicValues:0];
  return [*(a1 + 32) setCurrentSelectedConfiguration:0];
}

- (void)start
{
  v32 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting camera recording settings control", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDCameraRecordingSettingsControl *)selfCopy accessory];
  if (!accessory)
  {
    v21 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Not starting camera recording settings control because accessory reference is nil", &v28, 0xCu);
    }

    goto LABEL_12;
  }

  notificationCenter = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleAccessoryConnectedNotification_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  notificationCenter2 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

  notificationCenter3 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleCharacteristicsUpdatedNotification_ name:@"kHMDNotificationCharacteristicsUpdated" object:accessory];

  notificationCenter4 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

  notificationCenter5 = [(HMDCameraRecordingSettingsControl *)selfCopy notificationCenter];
  home = [accessory home];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:home];

  [(HMDCameraRecordingSettingsControl *)selfCopy enableCharacteristicNotifications];
  [(HMDCameraRecordingSettingsControl *)selfCopy configureCameraRecordingSettings];
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v16 = [mEMORY[0x277D0F8D0] preferenceForKey:@"recordingConfigurationOverrides"];
  value = [v16 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = value;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  [(HMDCameraRecordingSettingsControl *)selfCopy setRecordingConfigurationOverrides:v19];
  recordingConfigurationOverrides = [(HMDCameraRecordingSettingsControl *)selfCopy recordingConfigurationOverrides];

  if (recordingConfigurationOverrides)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      recordingConfigurationOverrides2 = [(HMDCameraRecordingSettingsControl *)v22 recordingConfigurationOverrides];
      v28 = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = recordingConfigurationOverrides2;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Using recording configuration overrides: %@", &v28, 0x16u);
    }

LABEL_12:

    objc_autoreleasePoolPop(v21);
  }
}

- (NSArray)videoConfigurationsByPreferenceOrder
{
  v50[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSettingsControl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v49[0] = &unk_286629080;
  v49[1] = &unk_2866290B0;
  v50[0] = &unk_286629098;
  v50[1] = &unk_286629098;
  v49[2] = &unk_2866290C8;
  v50[2] = &unk_2866290E0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  v47[0] = &unk_286629080;
  v47[1] = &unk_2866290B0;
  v48[0] = &unk_2866290F8;
  v48[1] = &unk_286629110;
  v47[2] = &unk_2866290C8;
  v48[2] = &unk_286629128;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
  v45[0] = &unk_286629080;
  v45[1] = &unk_2866290B0;
  v46[0] = &unk_286629128;
  v46[1] = &unk_286629140;
  v45[2] = &unk_2866290C8;
  v46[2] = &unk_286629158;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v5 = v4;
  accessory = [(HMDCameraRecordingSettingsControl *)self accessory];
  home = [accessory home];
  personManagerSettings = [home personManagerSettings];
  isFaceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

  v10 = v5;
  v11 = v5;
  v12 = v5;
  if (isFaceClassificationEnabled)
  {
    v43[0] = &unk_286629080;
    v43[1] = &unk_2866290B0;
    v44[0] = &unk_286629140;
    v44[1] = &unk_286629140;
    v43[2] = &unk_2866290C8;
    v44[2] = &unk_286629170;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

    v14 = v13;
    v12 = v14;

    v41[0] = &unk_286629080;
    v41[1] = &unk_2866290B0;
    v42[0] = &unk_286629170;
    v42[1] = &unk_286629170;
    v41[2] = &unk_2866290C8;
    v42[2] = &unk_286629188;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

    v11 = v15;
    v39[0] = &unk_286629080;
    v39[1] = &unk_2866290B0;
    v40[0] = &unk_2866291A0;
    v40[1] = &unk_286629188;
    v39[2] = &unk_2866290C8;
    v40[2] = &unk_286629098;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  }

  v16 = v10;
  v34 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:8 bitRateByFrameRate:v38 keyFrameInterval:&unk_2866290F8 h264Level:3];
  v33 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:17 bitRateByFrameRate:v38 keyFrameInterval:&unk_2866290F8 h264Level:3];
  v32 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:7 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v31 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:6 bitRateByFrameRate:v11 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v30 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:3 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:1];
  v29 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:2 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v17 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:10 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v18 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:9 bitRateByFrameRate:v11 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v28 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:11 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v27 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:12 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v19 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:13 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v20 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:14 bitRateByFrameRate:v12 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v36 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:15 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:1];
  v35 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:16 bitRateByFrameRate:v5 keyFrameInterval:&unk_2866290F8 h264Level:0];
  v26 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:21 bitRateByFrameRate:v37 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v25 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:20 bitRateByFrameRate:v11 keyFrameInterval:&unk_2866290F8 h264Level:2];
  v21 = [[HMDCameraRecordingPreferredVideoConfiguration alloc] initWithResolution:19 bitRateByFrameRate:v16 keyFrameInterval:&unk_2866290F8 h264Level:0];
  array = [MEMORY[0x277CBEB18] array];
  if (_os_feature_enabled_impl())
  {
    [array addObject:v33];
  }

  [array addObject:v17];
  [array addObject:v18];
  [array addObject:v19];
  [array addObject:v20];
  [array addObject:v36];
  [array addObject:v35];
  if (_os_feature_enabled_impl())
  {
    [array addObject:v34];
  }

  [array addObject:v32];
  [array addObject:v31];
  [array addObject:v28];
  [array addObject:v27];
  [array addObject:v30];
  [array addObject:v29];
  [array addObject:v26];
  [array addObject:v25];
  [array addObject:v21];
  v24 = objc_msgSend_copy(array);

  return v24;
}

- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service featuresDataSource:(id)source notificationCenter:(id)center
{
  queueCopy = queue;
  accessoryCopy = accessory;
  serviceCopy = service;
  sourceCopy = source;
  centerCopy = center;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!accessoryCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!serviceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v18 = centerCopy;
  if (!centerCopy)
  {
LABEL_11:
    v29 = _HMFPreconditionFailure();
    return [(HMDCameraRecordingSettingsControl *)v29 initWithWorkQueue:v30 accessory:v31 recordingManagementService:v32, v33];
  }

  v34.receiver = self;
  v34.super_class = HMDCameraRecordingSettingsControl;
  v19 = [(HMDCameraRecordingSettingsControl *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeWeak(&v20->_accessory, accessoryCopy);
    objc_storeStrong(&v20->_recordingService, service);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_featuresDataSource, source);
    v21 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v24 = [v21 stringWithFormat:@"%@.HMDCameraRecordingSettingsControl.%@", @"com.apple.HomeKitDaemon.Local", uUIDString];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v24;

    array = [MEMORY[0x277CBEB18] array];
    pendingConfigureCompletionHandlers = v20->_pendingConfigureCompletionHandlers;
    v20->_pendingConfigureCompletionHandlers = array;
  }

  return v20;
}

- (HMDCameraRecordingSettingsControl)initWithWorkQueue:(id)queue accessory:(id)accessory recordingManagementService:(id)service
{
  serviceCopy = service;
  accessoryCopy = accessory;
  queueCopy = queue;
  v11 = +[HMDFeaturesDataSource defaultDataSource];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [(HMDCameraRecordingSettingsControl *)self initWithWorkQueue:queueCopy accessory:accessoryCopy recordingManagementService:serviceCopy featuresDataSource:v11 notificationCenter:defaultCenter];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70_130383 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70_130383, &__block_literal_global_202_130384);
  }

  v3 = logCategory__hmf_once_v71_130385;

  return v3;
}

uint64_t __48__HMDCameraRecordingSettingsControl_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v71_130385;
  logCategory__hmf_once_v71_130385 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)audioCodecForCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  codec = [configurationCopy codec];
  v5 = [HMDCameraRecordingSettingsControl isSupportedAudioCodec:codec];

  if (v5)
  {
    codec2 = [configurationCopy codec];
  }

  else
  {
    codec2 = 0;
  }

  return codec2;
}

+ (id)audioBitRateForCodecConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  parameters = [configuration parameters];
  bitRateModes = [parameters bitRateModes];

  v5 = [bitRateModes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(bitRateModes);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 type] < 2)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [bitRateModes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)videoCodecForCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  codec = [configurationCopy codec];
  LODWORD(self) = [self isSupportedVideoCodec:codec];

  if (self)
  {
    codec2 = [configurationCopy codec];
  }

  else
  {
    codec2 = 0;
  }

  return codec2;
}

+ (id)h264ProfileForCodecConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  parameters = [configuration parameters];
  profiles = [parameters profiles];

  v5 = [profiles countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(profiles);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([HMDCameraRecordingSettingsControl isSupportedH264Profile:v8])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [profiles countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (NSArray)audioConfigurationsByPreferenceOrder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDCameraRecordingSettingsControl_audioConfigurationsByPreferenceOrder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (audioConfigurationsByPreferenceOrder_onceToken != -1)
  {
    dispatch_once(&audioConfigurationsByPreferenceOrder_onceToken, block);
  }

  v2 = audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder;

  return v2;
}

void __73__HMDCameraRecordingSettingsControl_audioConfigurationsByPreferenceOrder__block_invoke(uint64_t a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:3 bitRate:&unk_2866291B8];
  v3 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:1 bitRate:&unk_2866291D0];
  v4 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:2 bitRate:&unk_2866291E8];
  v5 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:4 bitRate:&unk_2866291B8];
  v6 = [[HMDCameraRecordingPreferredAudioConfiguration alloc] initWithSampleRate:5 bitRate:&unk_2866291B8];
  v17[0] = v2;
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v4;
  v17[4] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
  v8 = audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder;
  audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = audioConfigurationsByPreferenceOrder_audioConfigurationsByPreferenceOrder;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred audio configuration order: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

@end