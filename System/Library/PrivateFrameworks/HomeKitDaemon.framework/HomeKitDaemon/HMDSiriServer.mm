@interface HMDSiriServer
- (BOOL)_isAudioCodecSupported:(id)supported;
- (BOOL)_isSiriInputType:(int64_t)type supportedOnAccessory:(id)accessory siriAudioConfiguration:(id)configuration;
- (HMDSiriServer)init;
- (HMDSiriServer)initWithQueue:(id)queue;
- (id)_getBestAudioCodecConfiguration:(id)configuration;
- (id)_getSiriSessionForAccessory:(id)accessory;
- (void)_checkSiriSupportByAccessory:(id)accessory;
- (void)_handleDisconnectForAccessory:(id)accessory;
- (void)_maybeTearDownSiriPlugin;
- (void)_removeDataStreamListenerForAccessory:(id)accessory;
- (void)_setupSiriPlugin;
- (void)_setupSiriUIContext;
- (void)_tearDownSiriUIContext;
- (void)accessory:(id)accessory didCloseDataStreamWithError:(id)error;
- (void)accessory:(id)accessory didReceiveBulkSessionCandidate:(id)candidate;
- (void)accessoryDidStartListening:(id)listening;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleAccessoryHasBulkSendDataStream:(id)stream;
- (void)handleAccessoryRemoved:(id)removed;
- (void)handleAccessoryUnconfigured:(id)unconfigured;
- (void)monitor:(id)monitor needsSiriCapabilityForAccessory:(id)accessory;
- (void)monitor:(id)monitor willAllowAccessoryForDragonSiri:(id)siri;
- (void)monitorHasNoAccessoriesForDragonSiri:(id)siri;
- (void)registerForMessages;
- (void)setTargetableAccessory:(id)accessory withControllers:(id)controllers;
@end

@implementation HMDSiriServer

- (void)accessory:(id)accessory didCloseDataStreamWithError:(id)error
{
  accessoryCopy = accessory;
  queue = [(HMDSiriServer *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDSiriServer_accessory_didCloseDataStreamWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = accessoryCopy;
  selfCopy = self;
  v7 = accessoryCopy;
  dispatch_async(queue, v8);
}

void __55__HMDSiriServer_accessory_didCloseDataStreamWithError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream closed for accessory %@/%@.", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)accessoryDidStartListening:(id)listening
{
  listeningCopy = listening;
  queue = [(HMDSiriServer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDSiriServer_accessoryDidStartListening___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = listeningCopy;
  v6 = listeningCopy;
  dispatch_async(queue, v7);
}

void __44__HMDSiriServer_accessoryDidStartListening___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory's DataStream started.", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
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
    if ([*(a1 + 32) targetControlIdentifier])
    {
      [v8 sendTargetControlWhoAmIWithIdentifier:{objc_msgSend(*(a1 + 32), "targetControlIdentifier")}];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory provided is not a HMDHAPAccessory; cannot send targetControl identifier.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)accessory:(id)accessory didReceiveBulkSessionCandidate:(id)candidate
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  candidateCopy = candidate;
  v8 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    queue = [(HMDSiriServer *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v17 = v10;
    v18 = candidateCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Accessory provided is not a HMDHAPAccessory; cannot activate corresponding siri session.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getSiriSessionForAccessory:*(a1 + 40)];
  if (!v2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received new Siri Audio stream but unable to create local context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 48);
    v22 = 2;
    goto LABEL_12;
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) metadata];
  v5 = [v2 activateWithAccessory:v3 metadata:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received new Siri Audio stream but unable to activate Siri.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v21 = *(a1 + 48);
    v22 = 5;
LABEL_12:
    [v21 rejectBulkSendSessionWithStatus:v22];
    goto LABEL_13;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received new Siri Audio stream; setting it up.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v2 activeSessionToken];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) queue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke_22;
  v24[3] = &unk_278678AD0;
  v25 = v11;
  v14 = v2;
  v15 = *(a1 + 32);
  v26 = v14;
  v27 = v15;
  v16 = v11;
  [v12 acceptBulkSendSessionOnQueue:v13 callback:v24];

LABEL_13:
}

void __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke_22(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) activeSessionToken];

  if (v4 == v5)
  {
    [*(a1 + 40) setActiveBulkSendSession:v3];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Siri session canceled before it began; cleaning up.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [v3 cancelWithReason:2];
  }
}

- (void)monitorHasNoAccessoriesForDragonSiri:(id)siri
{
  queue = [(HMDSiriServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDSiriServer_monitorHasNoAccessoriesForDragonSiri___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)monitor:(id)monitor willAllowAccessoryForDragonSiri:(id)siri
{
  siriCopy = siri;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = siriCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    queue = [(HMDSiriServer *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HMDSiriServer_monitor_willAllowAccessoryForDragonSiri___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(queue, v9);
  }
}

uint64_t __57__HMDSiriServer_monitor_willAllowAccessoryForDragonSiri___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 UUIDString];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory is ready to accept Siri; registering listener (%@/%@)", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _setupSiriPlugin];
  [*(a1 + 32) _setupSiriUIContext];
  return [*(a1 + 40) addDataStreamBulkSendListener:*(a1 + 32) fileType:@"audio.siri"];
}

- (void)monitor:(id)monitor needsSiriCapabilityForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessoryCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    queue = [(HMDSiriServer *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HMDSiriServer_monitor_needsSiriCapabilityForAccessory___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(queue, v9);
  }
}

- (id)_getSiriSessionForAccessory:(id)accessory
{
  [(HMDSiriServer *)self _setupSiriUIContext];

  return [(HMDSiriServer *)self siriUISession];
}

- (void)_removeDataStreamListenerForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    queue = [(HMDSiriServer *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HMDSiriServer__removeDataStreamListenerForAccessory___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(queue, v8);
  }
}

uint64_t __55__HMDSiriServer__removeDataStreamListenerForAccessory___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 UUIDString];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory no longer able to accept Siri; deregistering listener (%@/%@)", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) removeDataStreamBulkSendListener:*(a1 + 32)];
}

- (BOOL)_isAudioCodecSupported:(id)supported
{
  supportedCopy = supported;
  codecType = [supportedCopy codecType];
  if (!codecType)
  {
    goto LABEL_7;
  }

  v5 = codecType;
  codecParameters = [supportedCopy codecParameters];

  if (codecParameters)
  {
    codecParameters2 = [supportedCopy codecParameters];
    codecParameters = [codecParameters2 bitRate];
    if (codecParameters)
    {
      codecParameters3 = [supportedCopy codecParameters];
      sampleRate = [codecParameters3 sampleRate];

      if (!sampleRate || ([supportedCopy codecType], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "value"), v10, v11 != 3) || (objc_msgSend(supportedCopy, "codecParameters"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bitRate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "value"), v13, v12, v14))
      {
LABEL_7:
        LOBYTE(codecParameters) = 0;
        goto LABEL_10;
      }

      codecParameters2 = [supportedCopy codecParameters];
      sampleRate2 = [codecParameters2 sampleRate];
      LOBYTE(codecParameters) = [sampleRate2 value] == 1;
    }
  }

LABEL_10:

  return codecParameters;
}

- (id)_getBestAudioCodecConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  configurationCopy = configuration;
  v5 = [configurationCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(configurationCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(HMDSiriServer *)self _isAudioCodecSupported:v9, v12])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [configurationCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_isSiriInputType:(int64_t)type supportedOnAccessory:(id)accessory siriAudioConfiguration:(id)configuration
{
  v63 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  configurationCopy = configuration;
  v10 = configurationCopy;
  if (!configurationCopy || ([configurationCopy supportedConfigurations], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      name = [accessoryCopy name];
      uuid = [accessoryCopy uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543874;
      v58 = v34;
      v59 = 2112;
      *v60 = name;
      *&v60[8] = 2112;
      *&v60[10] = uUIDString;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Marking accessory not ready for connection due to missing Siri/Audio ability (%@/%@)", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if ([v10 siriInputType] != type)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      siriInputType = [v10 siriInputType];
      name2 = [accessoryCopy name];
      uuid2 = [accessoryCopy uuid];
      [uuid2 UUIDString];
      v43 = v55 = v31;
      *buf = 138544386;
      v58 = v39;
      v59 = 2048;
      *v60 = type;
      *&v60[8] = 2048;
      *&v60[10] = siriInputType;
      *&v60[18] = 2112;
      *&v60[20] = name2;
      v61 = 2112;
      v62 = v43;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Checking for input type %ld, but accessory has input type %ld (%@/%@)", buf, 0x34u);

      v31 = v55;
    }

LABEL_17:
    objc_autoreleasePoolPop(v31);
    v14 = 0;
    goto LABEL_18;
  }

  supportedConfigurations = [v10 supportedConfigurations];
  v13 = [(HMDSiriServer *)self _getBestAudioCodecConfiguration:supportedConfigurations];

  v14 = v13 != 0;
  if (v13)
  {
    selectedConfiguration = [v10 selectedConfiguration];
    v16 = [v13 isEqual:selectedConfiguration];

    if ((v16 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        name3 = [accessoryCopy name];
        uuid3 = [accessoryCopy uuid];
        v53 = v17;
        uUIDString2 = [uuid3 UUIDString];
        [v10 selectedConfiguration];
        *buf = 138544386;
        v58 = v49;
        v59 = 2112;
        *v60 = name3;
        *&v60[8] = 2112;
        *&v60[10] = uUIDString2;
        v22 = uUIDString2;
        *&v60[18] = 2112;
        *&v60[20] = v13;
        v62 = v61 = 2112;
        v23 = v62;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Need to set the audio configuration (%@/%@) %@ != %@", buf, 0x34u);

        v17 = v53;
      }

      objc_autoreleasePoolPop(v17);
      [accessoryCopy setSelectedSiriAudioConfiguration:v13];
    }

    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      name4 = [accessoryCopy name];
      uuid4 = [accessoryCopy uuid];
      [uuid4 UUIDString];
      v30 = v54 = v24;
      *buf = 138543874;
      v58 = v27;
      v59 = 2112;
      *v60 = name4;
      *&v60[8] = 2112;
      *&v60[10] = v30;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Marking accessory READY for connection (%@/%@)", buf, 0x20u);

      v24 = v54;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      supportedConfigurations2 = [v10 supportedConfigurations];
      v50 = [supportedConfigurations2 count];
      name5 = [accessoryCopy name];
      uuid5 = [accessoryCopy uuid];
      [uuid5 UUIDString];
      *buf = 138544130;
      v58 = v52;
      v59 = 1024;
      *v60 = v50;
      *&v60[4] = 2112;
      *&v60[6] = name5;
      *&v60[16] = *&v60[14] = 2112;
      v48 = *&v60[16];
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Marking accessory not ready for connection due to none of the %u codecs allowed (%@/%@)", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v24);
LABEL_18:

  return v14;
}

- (void)_checkSiriSupportByAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([accessoryCopy canAcceptBulkSendListeners])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke;
    v13[3] = &unk_278678AA8;
    v13[4] = self;
    v14 = accessoryCopy;
    [v14 getSupportedSiriAudioConfiguration:v13];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      name = [accessoryCopy name];
      uuid = [accessoryCopy uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = name;
      v19 = 2112;
      v20 = uUIDString;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Marking accessory not ready for connection due to missing HDS (%@/%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    siriAccessoryMonitor = [(HMDSiriServer *)selfCopy siriAccessoryMonitor];
    [siriAccessoryMonitor accessory:accessoryCopy setSupportsDragonSiri:0];
  }
}

void __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke_2;
  block[3] = &unk_27868A010;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSiriInputType:0 supportedOnAccessory:*(a1 + 40) siriAudioConfiguration:*(a1 + 48)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = HAPStringFromAccessoryServerSession();
    [v3 registerForSessionRestore:v4];
  }

  v5 = [*(a1 + 32) siriAccessoryMonitor];
  [v5 accessory:*(a1 + 40) setSupportsDragonSiri:v2];
}

- (void)_tearDownSiriUIContext
{
  siriUISession = [(HMDSiriServer *)self siriUISession];

  if (siriUISession)
  {
    siriUISession2 = [(HMDSiriServer *)self siriUISession];
    [(HMDSiriServer *)self setSiriUISession:0];
    siriInputServer = [(HMDSiriServer *)self siriInputServer];
    [siriInputServer deregisterSiriSession:siriUISession2];

    [(HMDSiriServer *)self _maybeTearDownSiriPlugin];
  }
}

- (void)_setupSiriUIContext
{
  v19 = *MEMORY[0x277D85DE8];
  siriUISession = [(HMDSiriServer *)self siriUISession];

  if (!siriUISession)
  {
    v4 = +[HMDSiriSession siriSessionForUI];
    if (v4)
    {
      siriInputServer = [(HMDSiriServer *)self siriInputServer];
      v6 = [siriInputServer registerSiriSession:v4];

      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v6)
      {
        if (v10)
        {
          v11 = HMFGetLogIdentifier();
          identifier = [v4 identifier];
          v15 = 138543618;
          v16 = v11;
          v17 = 2112;
          v18 = identifier;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Created UI session with session id %@", &v15, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [(HMDSiriServer *)selfCopy2 setSiriUISession:v4];
        goto LABEL_13;
      }

      if (v10)
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        v14 = "%{public}@Created UI session but it failed to register properly; aborting.";
        goto LABEL_11;
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        v14 = "%{public}@Unable to create UI session; aborting.";
LABEL_11:
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, v14, &v15, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
LABEL_13:
  }
}

- (void)_maybeTearDownSiriPlugin
{
  siriUISession = [(HMDSiriServer *)self siriUISession];
  if (!siriUISession)
  {
    siriInputServer = [(HMDSiriServer *)self siriInputServer];

    if (!siriInputServer)
    {
      return;
    }

    siriInputServer2 = [(HMDSiriServer *)self siriInputServer];
    [siriInputServer2 invalidate];
    siriUISession = siriInputServer2;
  }
}

- (void)_setupSiriPlugin
{
  siriInputServer = [(HMDSiriServer *)self siriInputServer];

  if (!siriInputServer)
  {
    v4 = [HMDSiriRemoteInputServer alloc];
    queue = [(HMDSiriServer *)self queue];
    v5 = [(HMDSiriRemoteInputServer *)v4 initWithQueue:queue];
    [(HMDSiriServer *)self setSiriInputServer:v5];
  }
}

- (void)_handleDisconnectForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      name = [v6 name];
      uuid = [v6 uuid];
      *buf = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = name;
      v20 = 2112;
      v21 = uuid;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling disconnect for %@/%@.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    queue = [(HMDSiriServer *)selfCopy queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__HMDSiriServer__handleDisconnectForAccessory___block_invoke;
    v14[3] = &unk_27868A750;
    v14[4] = selfCopy;
    v15 = v6;
    dispatch_async(queue, v14);
  }
}

void __47__HMDSiriServer__handleDisconnectForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriAccessoryMonitor];
  [v2 accessory:*(a1 + 40) setSupportsDragonSiri:0];
}

- (void)handleAccessoryRemoved:(id)removed
{
  object = [removed object];
  [(HMDSiriServer *)self _handleDisconnectForAccessory:object];
}

- (void)handleAccessoryUnconfigured:(id)unconfigured
{
  object = [unconfigured object];
  [(HMDSiriServer *)self _handleDisconnectForAccessory:object];
}

- (void)handleAccessoryConfigured:(id)configured
{
  object = [configured object];
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

  if (v6)
  {
    queue = [(HMDSiriServer *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__HMDSiriServer_handleAccessoryConfigured___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(queue, v8);
  }
}

- (void)handleAccessoryHasBulkSendDataStream:(id)stream
{
  object = [stream object];
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

  if (v6)
  {
    queue = [(HMDSiriServer *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HMDSiriServer_handleAccessoryHasBulkSendDataStream___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(queue, v8);
  }
}

uint64_t __54__HMDSiriServer_handleAccessoryHasBulkSendDataStream___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 UUIDString];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory has bulk-send Data Stream capability (%@/%@)", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _checkSiriSupportByAccessory:*(a1 + 40)];
}

- (void)registerForMessages
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for messages.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  notificationRegistration = [(HMDSiriServer *)selfCopy notificationRegistration];
  [notificationRegistration addObserver:sel_handleAccessoryHasBulkSendDataStream_ name:@"HMDAccessoryDoesSupportBulkSendDataStreamNotification" object:0];

  notificationRegistration2 = [(HMDSiriServer *)selfCopy notificationRegistration];
  [notificationRegistration2 addObserver:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  notificationRegistration3 = [(HMDSiriServer *)selfCopy notificationRegistration];
  [notificationRegistration3 addObserver:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:0];

  notificationRegistration4 = [(HMDSiriServer *)selfCopy notificationRegistration];
  [notificationRegistration4 addObserver:sel_handleAccessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
}

- (void)setTargetableAccessory:(id)accessory withControllers:(id)controllers
{
  accessoryCopy = accessory;
  controllersCopy = controllers;
  queue = [(HMDSiriServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDSiriServer_setTargetableAccessory_withControllers___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = controllersCopy;
  v9 = controllersCopy;
  v10 = accessoryCopy;
  dispatch_async(queue, block);
}

void __56__HMDSiriServer_setTargetableAccessory_withControllers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriAccessoryMonitor];
  [v2 setTargetableAccessory:*(a1 + 40) withControllers:*(a1 + 48)];

  if (![*(a1 + 32) targetControlIdentifier])
  {
    v5 = [*(a1 + 40) uuid];
    v3 = [*(a1 + 40) home];
    v4 = [v3 uuid];
    [*(a1 + 32) setTargetControlIdentifier:{identifierForTargetWithUUID(v5, v4)}];
  }
}

- (HMDSiriServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = HMDSiriServer;
  v6 = [(HMDSiriServer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[HMDNotificationRegistration alloc] initWithRegisterer:v7];
    notificationRegistration = v7->_notificationRegistration;
    v7->_notificationRegistration = v8;

    v10 = [[HMDSiriAccessoryMonitor alloc] initWithDelegate:v7];
    siriAccessoryMonitor = v7->_siriAccessoryMonitor;
    v7->_siriAccessoryMonitor = v10;

    v7->_targetControlIdentifier = 0;
  }

  return v7;
}

- (HMDSiriServer)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  inactive = dispatch_workloop_create_inactive("HMDSiriServer-Audio");
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_workloop_set_scheduler_priority();
  dispatch_workloop_set_cpupercent();
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);
  v5 = dispatch_queue_create_with_target_V2("HMDSiriServer", v3, inactive);

  v6 = [(HMDSiriServer *)self initWithQueue:v5];
  return v6;
}

@end