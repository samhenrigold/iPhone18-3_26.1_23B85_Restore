@interface HMMTROTAProviderDelegate
+ (id)logCategory;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTROTAProviderDelegate)initWithQueue:(id)queue browser:(id)browser;
- (id)generateUpdateToken;
- (void)_refreshHAPFirmwareRevisionForAccessoryServer:(id)server retryCount:(int64_t)count completionHandler:(id)handler;
- (void)applyUpdateRequestTimerExpiredForAccessoryServer:(id)server;
- (void)applyUpdateTimerExpiredForAccessoryServer:(id)server softwareVersion:(id)version didTimeout:(id)timeout;
- (void)handleApplyUpdateRequestForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion;
- (void)handleBDXQueryForNodeID:(id)d controller:(id)controller blockSize:(id)size blockIndex:(id)index bytesToSkip:(id)skip completion:(id)completion;
- (void)handleBDXTransferSessionBeginForNodeID:(id)d controller:(id)controller fileDesignator:(id)designator offset:(id)offset completion:(id)completion;
- (void)handleBDXTransferSessionEndForNodeID:(id)d controller:(id)controller error:(id)error;
- (void)handleNotifyUpdateAppliedForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion;
- (void)handleQueryImageForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion;
@end

@implementation HMMTROTAProviderDelegate

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)_refreshHAPFirmwareRevisionForAccessoryServer:(id)server retryCount:(int64_t)count completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = serverCopy;
  primaryAccessory = [serverCopy primaryAccessory];
  services = [primaryAccessory services];

  v11 = [services countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(services);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        type = [v15 type];
        v17 = [type isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          countCopy = count;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          characteristics = [v15 characteristics];
          v19 = [characteristics countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v39;
            while (2)
            {
              v22 = v8;
              for (j = 0; j != v20; ++j)
              {
                if (*v39 != v21)
                {
                  objc_enumerationMutation(characteristics);
                }

                v24 = *(*(&v38 + 1) + 8 * j);
                type2 = [v24 type];
                v26 = [type2 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

                if (v26)
                {
                  v8 = v22;
                  [v22 addObject:v24];
                  goto LABEL_20;
                }
              }

              v20 = [characteristics countByEnumeratingWithState:&v38 objects:v46 count:16];
              v8 = v22;
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:

          count = countCopy;
          goto LABEL_21;
        }
      }

      v12 = [services countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  clientQueue = [(HMMTROTAProviderDelegate *)self clientQueue];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __103__HMMTROTAProviderDelegate__refreshHAPFirmwareRevisionForAccessoryServer_retryCount_completionHandler___block_invoke;
  v34[3] = &unk_2786EDE10;
  v34[4] = self;
  countCopy2 = count;
  v35 = v33;
  v36 = handlerCopy;
  v28 = handlerCopy;
  v29 = v33;
  [v29 fetchAndNotifyCharacteristics:v8 timeout:clientQueue completionQueue:v34 completionHandler:60.0];
}

void __103__HMMTROTAProviderDelegate__refreshHAPFirmwareRevisionForAccessoryServer_retryCount_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v28 = a1;
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7 > 4)
    {
      if (v11)
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(v28 + 56);
        *buf = 138543874;
        v36 = v25;
        v37 = 2112;
        v38 = v6;
        v39 = 2048;
        v40 = v26;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Max retries reached to refresh FirmwareRevision: error: %@, retryCount:%ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      (*(*(v28 + 48) + 16))();
    }

    else
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = *(v28 + 56);
        *buf = 138543874;
        v36 = v12;
        v37 = 2112;
        v38 = v6;
        v39 = 2048;
        v40 = v13;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to refresh FirmwareRevision: error: %@, retryCount:%ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      [*(v28 + 32) _refreshHAPFirmwareRevisionForAccessoryServer:*(v28 + 40) retryCount:*(v28 + 56) + 1 completionHandler:*(v28 + 48)];
    }
  }

  else
  {
    v27 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 32);
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v18 value];
            v24 = [v18 error];
            *buf = 138543874;
            v36 = v22;
            v37 = 2112;
            v38 = v23;
            v39 = 2112;
            v40 = v24;
            _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Read completion contains tuple with value:%@ error: %@", buf, 0x20u);

            a1 = v28;
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    (*(*(a1 + 48) + 16))();
    v6 = 0;
    v5 = v27;
  }
}

- (void)applyUpdateRequestTimerExpiredForAccessoryServer:(id)server
{
  v14 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = serverCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@applyUpdateRequestTimerExpiredForAccessoryServer for accessory %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  matterFirmwareUpdateStatus = [serverCopy matterFirmwareUpdateStatus];
  [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];

  [serverCopy setOtaApplyUpdateRequestTimer:0];
}

- (void)applyUpdateTimerExpiredForAccessoryServer:(id)server softwareVersion:(id)version didTimeout:(id)timeout
{
  v48 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  versionCopy = version;
  timeoutCopy = timeout;
  softwareVersionNumber = [serverCopy softwareVersionNumber];
  [serverCopy setOtaUpdateToken:0];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke;
  v36[3] = &unk_2786F0378;
  v12 = serverCopy;
  v37 = v12;
  v13 = versionCopy;
  v38 = v13;
  v14 = softwareVersionNumber;
  v39 = v14;
  v15 = timeoutCopy;
  v40 = v15;
  selfCopy = self;
  v16 = MEMORY[0x2318887D0](v36);
  v17 = [v15 isEqualToNumber:&unk_283EE8088];
  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v22;
      v44 = 2112;
      v45 = v13;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Timed out applying update version %@ for Accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    matterFirmwareUpdateStatus = [v12 matterFirmwareUpdateStatus];
    [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];

    [v12 setOtaApplyUpdateRequestTimer:0];
    v16[2](v16, 0);
  }

  else
  {
    if (v21)
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v24;
      v44 = 2112;
      v45 = v13;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Successfully updated to version %@ without sending NotifyUpdateApplied command for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [v12 updateSoftwareVersion:v13];
    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_43;
    v34[3] = &unk_2786EF290;
    v26 = v25;
    v35 = v26;
    [(HMMTROTAProviderDelegate *)selfCopy2 _refreshHAPFirmwareRevisionForAccessoryServer:v12 completionHandler:v34];
    dispatch_group_enter(v26);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2_44;
    v32[3] = &unk_2786EF290;
    v33 = v26;
    v27 = v26;
    [(HMMTROTAProviderDelegate *)selfCopy2 _refreshThreadCapabilitiesForAccessoryServer:v12 completion:v32];
    clientQueue = [(HMMTROTAProviderDelegate *)selfCopy2 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_3;
    block[3] = &unk_2786EF5A8;
    v30 = v12;
    v31 = v16;
    dispatch_group_notify(v27, clientQueue, block);
  }
}

void __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke(uint64_t a1)
{
  v2 = [HMMTRSoftwareUpdateProviderNotifyUpdateParams alloc];
  v3 = [*(a1 + 32) otaUpdateToken];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "linkLayerType")}];
  v6 = [(HMMTRSoftwareUpdateProviderNotifyUpdateParams *)v2 initWithUpdateToken:v3 softwareVersion:v4 linkTypeForMetrics:v5 previousSoftwareVersionNumberForMetrics:*(a1 + 48) didTimeout:*(a1 + 56)];

  WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 16));
  v8 = [WeakRetained softwareUpdateProvider];
  v9 = [*(a1 + 32) currentPairing];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2;
  v10[3] = &unk_2786EF9E0;
  v10[4] = *(a1 + 64);
  v11 = *(a1 + 32);
  [v8 notifyDelegateOfNotifyUpdateWithPairing:v9 params:v6 completionHandler:v10];
}

uint64_t __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) matterFirmwareUpdateStatus];
  [v2 updateFirmwareUpdateStatus:6];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@notifyDelegateOfNotifyUpdateWithPairing failed for accessory %@ with error: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (id)generateUpdateToken
{
  v2 = [MEMORY[0x277CBEB28] dataWithCapacity:32];
  v3 = 8;
  do
  {
    v6 = arc4random();
    [v2 appendBytes:&v6 length:4];
    --v3;
  }

  while (v3);
  v4 = [MEMORY[0x277CBEA90] dataWithData:v2];

  return v4;
}

- (void)handleBDXQueryForNodeID:(id)d controller:(id)controller blockSize:(id)size blockIndex:(id)index bytesToSkip:(id)skip completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  sizeCopy = size;
  indexCopy = index;
  skipCopy = skip;
  completionCopy = completion;
  integerValue = [indexCopy integerValue];
  if (integerValue < 10 || !(integerValue % 0x64uLL))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544130;
      v51 = v23;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = sizeCopy;
      v56 = 2112;
      v57 = indexCopy;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXQueryForNodeID command {nodeID = %@, blockSize: %@, blockIndex: %@}", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v25 = [WeakRetained accessoryServerWithNodeID:dCopy];

  if (v25)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke;
      v43[3] = &unk_2786EEE48;
      v44 = v25;
      v45 = skipCopy;
      v46 = sizeCopy;
      v47 = indexCopy;
      selfCopy2 = self;
      v26 = completionCopy;
      v36 = indexCopy;
      v27 = completionCopy;
      v28 = sizeCopy;
      v29 = skipCopy;
      v30 = v26;
      v49 = v26;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke_36;
      v38[3] = &unk_2786EDDE8;
      v38[4] = self;
      v39 = dCopy;
      v40 = v46;
      v41 = v47;
      v31 = v30;
      skipCopy = v29;
      sizeCopy = v28;
      completionCopy = v27;
      indexCopy = v36;
      v42 = v31;
      [v44 queueAccessoryOperation:v43 highPriority:1 completion:v38];
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543874;
      v51 = v35;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = 0;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory found for nodeID %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) otaFileOffset];
  v3 = [v2 unsignedLongValue];
  v4 = [*(a1 + 40) unsignedLongLongValue] + v3;
  v5 = [*(a1 + 48) unsignedLongValue];
  v6 = v4 + [*(a1 + 56) unsignedLongValue] * v5;

  v7 = [*(a1 + 32) otaFileHandle];
  v20 = 0;
  [v7 seekToOffset:v6 error:&v20];
  v8 = v20;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 64);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      v14 = *(a1 + 32);
      *buf = 138543874;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error seeking to offset %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v15 = [*(a1 + 32) otaFileHandle];
    v16 = [v15 readDataOfLength:{objc_msgSend(*(a1 + 48), "unsignedLongValue")}];

    v17 = *(a1 + 72);
    v18 = [*(a1 + 32) otaFileHandle];
    v19 = [v18 availableData];
    (*(v17 + 16))(v17, v16, [v19 length] == 0);
  }
}

void __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = 138544386;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@handleBDXQueryForNodeID command {nodeID = %@, blockSize: %@, blockIndex: %@}. Error: %@", &v11, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
  }
}

- (void)handleBDXTransferSessionEndForNodeID:(id)d controller:(id)controller error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v31 = 138543874;
    v32 = v14;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXTransferSessionEndForNodeID command {nodeID = %@, error = %@}", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  v16 = [WeakRetained accessoryServerWithNodeID:dCopy];

  if (!v16)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      objc_autoreleasePoolPop(v22);
      goto LABEL_14;
    }

    v25 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v25;
    v33 = 2112;
    v34 = dCopy;
    v26 = "%{public}@No paired accessory found for nodeID %@";
    v27 = v24;
    v28 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_22AEAE000, v27, v28, v26, &v31, 0x16u);

    goto LABEL_11;
  }

  [v16 setOtaFileHandle:0];
  [v16 setOtaFileOffset:0];
  if (!errorCopy)
  {
    otaApplyUpdateRequestTimer = [v16 otaApplyUpdateRequestTimer];

    if (otaApplyUpdateRequestTimer)
    {
      otaApplyUpdateRequestTimer2 = [v16 otaApplyUpdateRequestTimer];
      [otaApplyUpdateRequestTimer2 start];

      goto LABEL_14;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v25 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v25;
    v33 = 2112;
    v34 = v16;
    v26 = "%{public}@Received ApplyUpdateRequest before BDXTransferSessionEnd for accessory %@";
    v27 = v24;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v31 = 138543874;
    v32 = v20;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@BDX transfer failed for accessory %@, error = %@}", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  matterFirmwareUpdateStatus = [v16 matterFirmwareUpdateStatus];
  [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];

  [v16 setOtaApplyUpdateRequestTimer:0];
LABEL_14:
}

- (void)handleBDXTransferSessionBeginForNodeID:(id)d controller:(id)controller fileDesignator:(id)designator offset:(id)offset completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  designatorCopy = designator;
  offsetCopy = offset;
  completionCopy = completion;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v60 = v20;
    v61 = 2112;
    v62 = dCopy;
    v63 = 2112;
    v64 = designatorCopy;
    v65 = 2112;
    v66 = offsetCopy;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXTransferSessionBeginForNodeID command {nodeID = %@, path = %@, offset = %@}", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  v22 = [WeakRetained accessoryServerWithNodeID:dCopy];

  if (v22)
  {
    v23 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:designatorCopy];
    if (v23)
    {
      v58 = 0;
      [v23 seekToOffset:objc_msgSend(offsetCopy error:{"unsignedLongValue"), &v58}];
      v24 = v58;
      if (v24)
      {
        v25 = v24;
        v55 = controllerCopy;
        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v54 = v26;
          v29 = designatorCopy;
          v31 = v30 = offsetCopy;
          *buf = 138544130;
          v60 = v31;
          v61 = 2112;
          v62 = v29;
          v63 = 2112;
          v64 = v30;
          v65 = 2112;
          v66 = v22;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error seeking file (%@) to offset %@ for accessory %@", buf, 0x2Au);

          offsetCopy = v30;
          designatorCopy = v29;
          v26 = v54;
        }

        objc_autoreleasePoolPop(v26);
        v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
        completionCopy[2](completionCopy, v32);

        controllerCopy = v55;
      }

      else
      {
        otaApplyUpdateRequestTimer = [v22 otaApplyUpdateRequestTimer];

        if (otaApplyUpdateRequestTimer)
        {
          v43 = objc_autoreleasePoolPush();
          v44 = selfCopy;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v57 = designatorCopy;
            v47 = v46 = offsetCopy;
            *buf = 138543618;
            v60 = v47;
            v61 = 2112;
            v62 = v22;
            _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected BDXTransferSessionBegin when we were waiting for ApplyUpdateRequest after a BDX transfer was previously completed for accessory %@", buf, 0x16u);

            offsetCopy = v46;
            designatorCopy = v57;
          }

          objc_autoreleasePoolPop(v43);
          otaApplyUpdateRequestTimer2 = [v22 otaApplyUpdateRequestTimer];
          [otaApplyUpdateRequestTimer2 stop];
        }

        else
        {
          v49 = designatorCopy;
          v50 = offsetCopy;
          v51 = [HMMTROTAApplyUpdateRequestTimer alloc];
          otaApplyUpdateRequestTimer2 = [(HMMTROTAProviderDelegate *)selfCopy clientQueue];
          v52 = [(HMMTROTAApplyUpdateRequestTimer *)v51 initWithServer:v22 otaProvider:selfCopy queue:otaApplyUpdateRequestTimer2];
          [v22 setOtaApplyUpdateRequestTimer:v52];

          offsetCopy = v50;
          designatorCopy = v49;
        }

        matterFirmwareUpdateStatus = [v22 matterFirmwareUpdateStatus];
        [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:4];

        [v22 setOtaFileHandle:v23];
        [v22 setOtaFileOffset:offsetCopy];
        completionCopy[2](completionCopy, 0);
        v25 = 0;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v56 = offsetCopy;
        v41 = v40 = controllerCopy;
        *buf = 138543874;
        v60 = v41;
        v61 = 2112;
        v62 = designatorCopy;
        v63 = 2112;
        v64 = v22;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to open file using path '%@' for accessory %@", buf, 0x20u);

        controllerCopy = v40;
        offsetCopy = v56;
      }

      objc_autoreleasePoolPop(v37);
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      completionCopy[2](completionCopy, v25);
    }
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
      v60 = v36;
      v61 = 2112;
      v62 = dCopy;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory found for nodeID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    completionCopy[2](completionCopy, v23);
  }
}

- (void)handleNotifyUpdateAppliedForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  paramsCopy = params;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    updateToken = [paramsCopy updateToken];
    softwareVersion = [paramsCopy softwareVersion];
    v20 = 138544130;
    v21 = v17;
    v22 = 2112;
    v23 = dCopy;
    v24 = 2112;
    v25 = updateToken;
    v26 = 2112;
    v27 = softwareVersion;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing handleNotifyUpdateAppliedForNodeID command {nodeID = %@, updateToken = %@, newVersion = %@}, is simply returning OK without performing any additional processing.", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  completionCopy[2](completionCopy, 0);
}

- (void)handleApplyUpdateRequestForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion
{
  v69 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  paramsCopy = params;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    updateToken = [paramsCopy updateToken];
    getNewVersion = [paramsCopy getNewVersion];
    *buf = 138544130;
    v62 = v17;
    v63 = 2112;
    v64 = dCopy;
    v65 = 2112;
    v66 = updateToken;
    v67 = 2112;
    v68 = getNewVersion;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing handleApplyUpdateRequestForNodeID command {nodeID = %@, updateToken = %@, newVersion = %@}", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  v21 = [WeakRetained accessoryServerWithNodeID:dCopy];

  v22 = objc_alloc_init(MEMORY[0x277CD5440]);
  if (v21)
  {
    v55 = controllerCopy;
    otaUpdateToken = [v21 otaUpdateToken];
    updateToken2 = [paramsCopy updateToken];
    v25 = [otaUpdateToken isEqualToData:updateToken2];

    if (v25)
    {
      v53 = dCopy;
      otaApplyUpdateRequestTimer = [v21 otaApplyUpdateRequestTimer];

      if (otaApplyUpdateRequestTimer)
      {
        otaApplyUpdateRequestTimer2 = [v21 otaApplyUpdateRequestTimer];
        [otaApplyUpdateRequestTimer2 stop];

        [v21 setOtaApplyUpdateRequestTimer:0];
      }

      v28 = [HMMTRSoftwareUpdateProviderApplyUpdateRequestParams alloc];
      otaUpdateToken2 = [v21 otaUpdateToken];
      getNewVersion2 = [paramsCopy getNewVersion];
      v31 = [(HMMTRSoftwareUpdateProviderApplyUpdateRequestParams *)v28 initWithUpdateToken:otaUpdateToken2 softwareVersion:getNewVersion2];

      v32 = objc_loadWeakRetained(&selfCopy->_browser);
      softwareUpdateProvider = [v32 softwareUpdateProvider];
      currentPairing = [v21 currentPairing];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __91__HMMTROTAProviderDelegate_handleApplyUpdateRequestForNodeID_controller_params_completion___block_invoke;
      v56[3] = &unk_2786EDDC0;
      v56[4] = selfCopy;
      v57 = v21;
      v60 = completionCopy;
      v58 = v22;
      v59 = paramsCopy;
      [softwareUpdateProvider notifyDelegateOfApplyUpdateWithPairing:currentPairing requestParams:v31 completionHandler:v56];

      dCopy = v53;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        [v21 otaUpdateToken];
        v43 = v54 = dCopy;
        updateToken3 = [paramsCopy updateToken];
        *buf = 138544130;
        v62 = v42;
        v63 = 2112;
        v64 = v43;
        v65 = 2112;
        v66 = updateToken3;
        v67 = 2112;
        v68 = v21;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Provided token %@ doesn't match assigned token %@ for accessory %@ - Allow update", buf, 0x2Au);

        dCopy = v54;
      }

      objc_autoreleasePoolPop(v39);
      otaApplyUpdateRequestTimer3 = [v21 otaApplyUpdateRequestTimer];

      if (otaApplyUpdateRequestTimer3)
      {
        otaApplyUpdateRequestTimer4 = [v21 otaApplyUpdateRequestTimer];
        [otaApplyUpdateRequestTimer4 stop];

        [v21 setOtaApplyUpdateRequestTimer:0];
      }

      [v22 setAction:&unk_283EE7FE0];
      [v22 setDelayedActionTime:&unk_283EE8070];
      v47 = [HMMTROTAApplyUpdateTimer alloc];
      getNewVersion3 = [paramsCopy getNewVersion];
      delayedActionTime = [v22 delayedActionTime];
      clientQueue = [(HMMTROTAProviderDelegate *)v40 clientQueue];
      v51 = [(HMMTROTAApplyUpdateTimer *)v47 initWithServer:v21 otaProvider:v40 newVersion:getNewVersion3 delay:delayedActionTime queue:clientQueue];
      [v21 setOtaUpdateTimer:v51];

      otaUpdateTimer = [v21 otaUpdateTimer];
      [otaUpdateTimer start];

      (*(completionCopy + 2))(completionCopy, v22, 0);
    }

    controllerCopy = v55;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v38;
      v63 = 2112;
      v64 = dCopy;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory for nodeID %@ - Allow update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [v22 setAction:&unk_283EE7FE0];
    (*(completionCopy + 2))(completionCopy, v22, 0);
  }
}

void __91__HMMTROTAProviderDelegate_handleApplyUpdateRequestForNodeID_controller_params_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v38 = 138543874;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@notifyDelegateOfApplyUpdateWithPairing failed for accessory %@ with error: %@", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 64);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    v14 = [v5 action];
    v15 = [v14 integerValue];

    if (v15 == 2)
    {
      v22 = *(a1 + 48);
      v23 = &unk_283EE8010;
    }

    else if (v15 == 1)
    {
      v22 = *(a1 + 48);
      v23 = &unk_283EE8028;
    }

    else
    {
      if (v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v5 action];
          v21 = *(a1 + 40);
          v38 = 138543874;
          v39 = v19;
          v40 = 2112;
          v41 = v20;
          v42 = 2112;
          v43 = v21;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown action %@ for accessory %@ - Defaulting to allow update", &v38, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
      }

      v22 = *(a1 + 48);
      v23 = &unk_283EE7FE0;
    }

    [v22 setAction:v23];
    v24 = [v5 delayedActionTime];
    [*(a1 + 48) setDelayedActionTime:v24];

    v25 = [*(a1 + 48) action];
    v26 = [v25 isEqualToNumber:&unk_283EE7FE0];

    if (v26)
    {
      v27 = [HMMTROTAApplyUpdateTimer alloc];
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v30 = [*(a1 + 56) getNewVersion];
      v31 = [*(a1 + 48) delayedActionTime];
      v32 = [*(a1 + 32) clientQueue];
      v33 = [(HMMTROTAApplyUpdateTimer *)v27 initWithServer:v28 otaProvider:v29 newVersion:v30 delay:v31 queue:v32];
      [*(a1 + 40) setOtaUpdateTimer:v33];

      v34 = [*(a1 + 40) otaUpdateTimer];
      [v34 start];

      v35 = [*(a1 + 40) matterFirmwareUpdateStatus];
      v36 = [*(a1 + 56) getNewVersion];
      [v35 updateDownloadedFirmwareVersionNumber:v36];

      v37 = [*(a1 + 40) matterFirmwareUpdateStatus];
      [v37 updateFirmwareUpdateStatus:5];
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)handleQueryImageForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion
{
  v136 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  paramsCopy = params;
  completionCopy = completion;
  v13 = objc_alloc_init(MEMORY[0x277CD5448]);
  string = [MEMORY[0x277CCAB68] string];
  protocolsSupported = [paramsCopy protocolsSupported];
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke;
  v112[3] = &unk_2786EDD70;
  v106 = string;
  v113 = v106;
  [protocolsSupported hmf_enumerateWithAutoreleasePoolUsingBlock:v112];

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  v105 = v13;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v93 = HMFGetLogIdentifier();
    vendorID = [paramsCopy vendorID];
    productID = [paramsCopy productID];
    [paramsCopy softwareVersion];
    v20 = v101 = completionCopy;
    protocolsSupported2 = [paramsCopy protocolsSupported];
    v97 = v16;
    v21 = [protocolsSupported2 count];
    hardwareVersion = [paramsCopy hardwareVersion];
    location = [paramsCopy location];
    [paramsCopy requestorCanConsent];
    v24 = v99 = selfCopy;
    [paramsCopy metadataForProvider];
    v103 = paramsCopy;
    v26 = v25 = dCopy;
    *buf = 138545922;
    v115 = v93;
    v116 = 2112;
    v117 = v25;
    v118 = 2112;
    v119 = vendorID;
    v120 = 2112;
    v121 = productID;
    v122 = 2112;
    v123 = v20;
    v124 = 2048;
    v125 = v21;
    v16 = v97;
    v126 = 2112;
    v127 = v106;
    v128 = 2112;
    v129 = hardwareVersion;
    v130 = 2112;
    v131 = location;
    v132 = 2112;
    v133 = v24;
    v134 = 2112;
    v135 = v26;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Processing QueryImage command { nodeID = %@, vendorId = %@, productId = %@, softwareVersion = %@, protocolsSupported size = %lu, protocols[%@], hardwareVersion = %@, location = %@, requestorCanConsent = %@, metadataForProvider = %@ }", buf, 0x70u);

    dCopy = v25;
    paramsCopy = v103;

    selfCopy = v99;
    v13 = v105;

    completionCopy = v101;
  }

  objc_autoreleasePoolPop(v16);
  protocolsSupported3 = [paramsCopy protocolsSupported];
  v28 = [protocolsSupported3 containsObject:&unk_283EE7FE0];

  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
    if (!WeakRetained)
    {
      v75 = objc_autoreleasePoolPush();
      v76 = selfCopy;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = HMFGetLogIdentifier();
        vendorID2 = [paramsCopy vendorID];
        [paramsCopy productID];
        v81 = v80 = completionCopy;
        *buf = 138544130;
        v115 = v78;
        v116 = 2112;
        v117 = dCopy;
        v118 = 2112;
        v119 = vendorID2;
        v120 = 2112;
        v121 = v81;
        _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_ERROR, "%{public}@Unable to get browser ref for QueryImage request {nodeID=%@, vendorId=%@, productId=%@}", buf, 0x2Au);

        completionCopy = v80;
        v13 = v105;
      }

      objc_autoreleasePoolPop(v75);
      [v13 setStatus:&unk_283EE8010];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      completionCopy[2](completionCopy, v13, v30);
      goto LABEL_30;
    }

    v29 = objc_loadWeakRetained(&selfCopy->_browser);
    v30 = [v29 accessoryServerWithNodeID:dCopy];

    v100 = selfCopy;
    v102 = completionCopy;
    if (v30)
    {
      currentPairing = [v30 currentPairing];

      if (currentPairing)
      {
        goto LABEL_11;
      }
    }

    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      vendorID3 = [paramsCopy vendorID];
      productID2 = [paramsCopy productID];
      *buf = 138544130;
      v115 = v35;
      v116 = 2112;
      v117 = dCopy;
      v118 = 2112;
      v119 = vendorID3;
      v120 = 2112;
      v121 = productID2;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Could not associate QueryImage request {nodeID=%@, vendorId=%@, productId=%@} to a paired accessory", buf, 0x2Au);

      completionCopy = v102;
      v13 = v105;

      selfCopy = v100;
    }

    objc_autoreleasePoolPop(v32);
    if (!v30)
    {
      v82 = objc_autoreleasePoolPush();
      v83 = v33;
      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = HMFGetLogIdentifier();
        *buf = 138543362;
        v115 = v85;
        _os_log_impl(&dword_22AEAE000, v84, OS_LOG_TYPE_ERROR, "%{public}@Cannot proceed if accessory server is nil, sending an error back to accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v82);
      [v13 setStatus:&unk_283EE8010];
      v86 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:4 userInfo:0];
      completionCopy[2](completionCopy, v13, v86);

      v30 = 0;
      goto LABEL_30;
    }

    currentPairing2 = [v30 currentPairing];

    if (currentPairing2)
    {
LABEL_11:
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        vendorID4 = [paramsCopy vendorID];
        productID3 = [paramsCopy productID];
        *buf = 138544386;
        v115 = v42;
        v116 = 2112;
        v117 = v30;
        v118 = 2112;
        v119 = dCopy;
        v120 = 2112;
        v121 = vendorID4;
        v122 = 2112;
        v123 = productID3;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Found accessory %@ for QueryImage request {nodeID=%@, vendorId=%@, productId=%@} ", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v39);
      softwareVersion = [paramsCopy softwareVersion];
      [v30 updateSoftwareVersion:softwareVersion];

      otaAnnounceTimer = [v30 otaAnnounceTimer];

      if (otaAnnounceTimer)
      {
        otaAnnounceTimer2 = [v30 otaAnnounceTimer];
        [otaAnnounceTimer2 stop];

        [v30 setOtaAnnounceTimer:0];
      }

      v96 = dCopy;
      otaApplyUpdateRequestTimer = [v30 otaApplyUpdateRequestTimer];

      if (otaApplyUpdateRequestTimer)
      {
        v49 = objc_autoreleasePoolPush();
        v50 = v40;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = HMFGetLogIdentifier();
          *buf = 138543618;
          v115 = v52;
          v116 = 2112;
          v117 = v30;
          _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected QueryImage when we were waiting for ApplyUpdateRequest after BDX transfer completed, resetting state for accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        otaApplyUpdateRequestTimer2 = [v30 otaApplyUpdateRequestTimer];
        [otaApplyUpdateRequestTimer2 stop];

        [v30 setOtaApplyUpdateRequestTimer:0];
        matterFirmwareUpdateStatus = [v30 matterFirmwareUpdateStatus];
        [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];
      }

      v55 = [HMMTRSoftwareUpdateProviderQueryImageRequestParams alloc];
      vendorID5 = [paramsCopy vendorID];
      productID4 = [paramsCopy productID];
      softwareVersion2 = [paramsCopy softwareVersion];
      [paramsCopy hardwareVersion];
      v59 = v94 = v40;
      location2 = [paramsCopy location];
      requestorCanConsent = [paramsCopy requestorCanConsent];
      metadataForProvider = [paramsCopy metadataForProvider];
      v63 = [(HMMTRSoftwareUpdateProviderQueryImageRequestParams *)v55 initWithVendorID:vendorID5 productId:productID4 softwareVersion:softwareVersion2 protocolsSupported:&unk_283EE9288 hardwareVersion:v59 location:location2 requestorCanConsent:requestorCanConsent metadataForProvider:metadataForProvider];

      v64 = objc_loadWeakRetained(&v100->_browser);
      softwareUpdateProvider = [v64 softwareUpdateProvider];
      currentPairing3 = [v30 currentPairing];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke_21;
      v107[3] = &unk_2786EDD98;
      v107[4] = v94;
      v30 = v30;
      v108 = v30;
      v13 = v105;
      v109 = v105;
      completionCopy = v102;
      v111 = v102;
      v110 = paramsCopy;
      [softwareUpdateProvider triggerQueryImageWithPairing:currentPairing3 accessoryInitiated:1 requestParams:v63 completionHandler:v107];

      dCopy = v96;
    }

    else
    {
      [v13 setStatus:&unk_283EE8028];
      [v13 setDelayedActionTime:&unk_283EE9300];
      v87 = objc_autoreleasePoolPush();
      v88 = v33;
      v89 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        v90 = HMFGetLogIdentifier();
        delayedActionTime = [v13 delayedActionTime];
        *buf = 138543618;
        v115 = v90;
        v116 = 2112;
        v117 = delayedActionTime;
        _os_log_impl(&dword_22AEAE000, v89, OS_LOG_TYPE_INFO, "%{public}@Do not have pairing information for this accessory. Requesting accessory to check back again after %@ secs", buf, 0x16u);

        v13 = v105;
      }

      objc_autoreleasePoolPop(v87);
      completionCopy[2](completionCopy, v13, 0);
    }

LABEL_30:
    v74 = controllerCopy;

    goto LABEL_31;
  }

  v67 = objc_autoreleasePoolPush();
  v68 = selfCopy;
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = HMFGetLogIdentifier();
    vendorID6 = [paramsCopy vendorID];
    [paramsCopy productID];
    v73 = v72 = completionCopy;
    *buf = 138544130;
    v115 = v70;
    v116 = 2112;
    v117 = dCopy;
    v118 = 2112;
    v119 = vendorID6;
    v120 = 2112;
    v121 = v73;
    _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_ERROR, "%{public}@Accessory did not list BDXSynchronous as a supported protocol for QueryImage request {nodeID=%@, vendorId=%@, productId=%@}", buf, 0x2Au);

    completionCopy = v72;
    v13 = v105;
  }

  objc_autoreleasePoolPop(v67);
  [v13 setStatus:&unk_283EE7FF8];
  completionCopy[2](completionCopy, v13, 0);
  v74 = controllerCopy;
LABEL_31:
}

void __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 status];
    v16 = [v15 integerValue];

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          v56 = *(a1 + 40);
          v59 = 138543618;
          v60 = v55;
          v61 = 2112;
          v62 = v56;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Software update image not available for accessory %@", &v59, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v27 = *(a1 + 48);
        v28 = &unk_283EE8010;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_17;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v25 = *(a1 + 40);
          v26 = [v5 status];
          v59 = 138543874;
          v60 = v24;
          v61 = 2112;
          v62 = v25;
          v63 = 2112;
          v64 = v26;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@QueryImage state %@ indicates that the download protocol is not supported for accessory %@", &v59, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v27 = *(a1 + 48);
        v28 = &unk_283EE7FF8;
      }

      [v27 setStatus:v28];
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = *(a1 + 40);
            v59 = 138543618;
            v60 = v21;
            v61 = 2112;
            v62 = v22;
            _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Software update provider is busy for accessory %@", &v59, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [*(a1 + 48) setStatus:&unk_283EE8028];
          v23 = [v5 delayedActionTime];
          [*(a1 + 48) setDelayedActionTime:v23];

          goto LABEL_34;
        }

LABEL_17:
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v30 = *(a1 + 40);
          v31 = [v5 status];
          v59 = 138543874;
          v60 = v29;
          v61 = 2112;
          v62 = v30;
          v63 = 2112;
          v64 = v31;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unknown QueryImage state %@ for accessory %@", &v59, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        goto LABEL_5;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v33 = *(a1 + 40);
        v59 = 138543618;
        v60 = v32;
        v61 = 2112;
        v62 = v33;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Software update image available for accessory %@", &v59, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 48) setStatus:&unk_283EE7FE0];
      v34 = [v5 userConsentNeeded];
      v35 = [v34 integerValue];

      if (v35 == 1)
      {
        v36 = [*(a1 + 56) requestorCanConsent];
        v37 = [v36 integerValue];

        v38 = objc_autoreleasePoolPush();
        v39 = *(a1 + 32);
        v40 = HMFGetOSLogHandle();
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
        if (v37 != 1)
        {
          if (v41)
          {
            v57 = HMFGetLogIdentifier();
            v58 = *(a1 + 40);
            v59 = 138543618;
            v60 = v57;
            v61 = 2112;
            v62 = v58;
            _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@User Consent Pending for accessory %@", &v59, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          [*(a1 + 48) setStatus:&unk_283EE8028];
          [*(a1 + 48) setUserConsentNeeded:&unk_283EE8070];
          [*(a1 + 48) setDelayedActionTime:&unk_283EE9300];
          goto LABEL_34;
        }

        if (v41)
        {
          v42 = HMFGetLogIdentifier();
          v43 = *(a1 + 40);
          v59 = 138543618;
          v60 = v42;
          v61 = 2112;
          v62 = v43;
          _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@User Consent Pending, requestor can consent for accessory %@", &v59, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        [*(a1 + 48) setUserConsentNeeded:&unk_283EE8058];
      }

      v44 = [v5 imageURI];
      [*(a1 + 48) setImageURI:v44];

      v45 = [v5 softwareVersion];
      [*(a1 + 48) setSoftwareVersion:v45];

      v46 = [v5 softwareVersionString];
      [*(a1 + 48) setSoftwareVersionString:v46];

      v47 = [*(a1 + 32) generateUpdateToken];
      [*(a1 + 40) setOtaUpdateToken:v47];

      v48 = [*(a1 + 40) otaUpdateToken];
      [*(a1 + 48) setUpdateToken:v48];

      v49 = objc_autoreleasePoolPush();
      v50 = *(a1 + 32);
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        v53 = *(a1 + 40);
        v54 = [*(a1 + 48) updateToken];
        v59 = 138543874;
        v60 = v52;
        v61 = 2112;
        v62 = v53;
        v63 = 2112;
        v64 = v54;
        _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@Associated accessory %@ with update token %@", &v59, 0x20u);
      }

      objc_autoreleasePoolPop(v49);
    }

LABEL_34:
    (*(*(a1 + 64) + 16))();
    goto LABEL_35;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v59 = 138543874;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    v63 = 2112;
    v64 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error while trying to QueryImage for accessory %@: %@.", &v59, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 48) setStatus:&unk_283EE8010];
LABEL_5:
  v12 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:4 userInfo:0];
  (*(v12 + 16))(v12, v13, v14);

LABEL_35:
}

- (HMMTROTAProviderDelegate)initWithQueue:(id)queue browser:(id)browser
{
  queueCopy = queue;
  browserCopy = browser;
  v12.receiver = self;
  v12.super_class = HMMTROTAProviderDelegate;
  v9 = [(HMMTROTAProviderDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, queue);
    objc_storeWeak(&v10->_browser, browserCopy);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43, &__block_literal_global_3349);
  }

  v3 = logCategory__hmf_once_v44;

  return v3;
}

uint64_t __39__HMMTROTAProviderDelegate_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v44;
  logCategory__hmf_once_v44 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end