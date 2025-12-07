@interface HMDThreadNetworkMetadataStore
+ (HMDThreadNetworkMetadataStore)defaultStore;
+ (HMDThreadNetworkMetadataStore)storeWithThreadClientFactory:(id)factory;
+ (id)logCategory;
+ (id)new;
- (HMDThreadNetworkMetadataStore)init;
- (id)initInternalWithThreadClientFactory:(id)factory;
- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)completion;
- (void)_removePreferredNetworkWithCompletion:(id)completion;
- (void)_retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion;
- (void)_retrieveMetadataOnController:(id)controller homeHasResident:(BOOL)resident completion:(id)completion;
- (void)_retrieveMetadataOnThreadCapableController:(id)controller threadClient:(id)client homeHasResident:(BOOL)resident completion:(id)completion;
- (void)_retrieveMetadataWithCompletion:(id)completion;
- (void)_retrievePreferredNetwork:(id)network completion:(id)completion;
- (void)_retrievePreferredNetworkOnThreadCapableController:(id)controller threadClient:(id)client completion:(id)completion;
- (void)_scheduleTriggerPreferredNetworkUpdateWithCompletion:(id)completion;
- (void)_triggerPreferredNetworkUpdateWithCompletion:(id)completion;
- (void)_validateOperationalDatasetWithTHClient:(id)client operationalDataset:(id)dataset storeCachedAOD:(BOOL)d completion:(id)completion;
- (void)checkIfThreadNetworkIsRunningWithCompletion:(id)completion;
- (void)removePreferredNetworkWithCompletion:(id)completion;
- (void)retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion;
- (void)retrieveMetadata:(id)metadata homeHasResident:(BOOL)resident completion:(id)completion;
- (void)retrieveMetadataWithCompletion:(id)completion;
- (void)retrievePreferredNetwork:(id)network completion:(id)completion;
- (void)triggerPreferredNetworkUpdateWithCompletion:(id)completion;
@end

@implementation HMDThreadNetworkMetadataStore

- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__135889;
  v16 = __Block_byref_object_dispose__135890;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v17 = threadClientFactory[2]();

  v7 = v13[5];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__HMDThreadNetworkMetadataStore__checkIfThreadNetworkIsRunningWithCompletion___block_invoke;
    v9[3] = &unk_27972D6F0;
    v10 = completionCopy;
    v11 = &v12;
    [v7 retrievePreferredCredentialsInternally:v9];
    v8 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)checkIfThreadNetworkIsRunningWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDThreadNetworkMetadataStore_checkIfThreadNetworkIsRunningWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)_removePreferredNetworkWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__135889;
  v20 = __Block_byref_object_dispose__135890;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v21 = threadClientFactory[2]();

  v7 = v17[5];
  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDThreadNetworkMetadataStore__removePreferredNetworkWithCompletion___block_invoke;
    v13[3] = &unk_27972D6C8;
    v13[4] = self;
    v14 = completionCopy;
    v15 = &v16;
    [v7 ctcsDeletePreferredNetworkWithCompletion:v13];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable - cannot clear preferred thread credentials", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(completionCopy + 2))(completionCopy, v12);
  }

  _Block_object_dispose(&v16, 8);
}

void __71__HMDThreadNetworkMetadataStore__removePreferredNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      v9 = "%{public}@Failed to clear preferred thread network credentials: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    v9 = "%{public}@Preferred thread network credentials cleared";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v13, v14);
}

- (void)removePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke_2;
  v3[3] = &unk_279734508;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 _removePreferredNetworkWithCompletion:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)_triggerPreferredNetworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__135889;
  v15 = __Block_byref_object_dispose__135890;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v16 = threadClientFactory[2]();

  v6 = v12[5];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__HMDThreadNetworkMetadataStore__triggerPreferredNetworkUpdateWithCompletion___block_invoke;
    v8[3] = &unk_27972D6A0;
    v9 = completionCopy;
    v10 = &v11;
    [v6 updatePreferredCredentialsInternally:v8];
    v7 = v9;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, v7);
  }

  _Block_object_dispose(&v11, 8);
}

void __78__HMDThreadNetworkMetadataStore__triggerPreferredNetworkUpdateWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v2 + 16))(v2, v5);
  }
}

- (void)_scheduleTriggerPreferredNetworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueueNetworkChanged = [(HMDThreadNetworkMetadataStore *)self workQueueNetworkChanged];
  dispatch_assert_queue_V2(workQueueNetworkChanged);

  v6 = dispatch_time(0, 2000000000);
  [(HMDThreadNetworkMetadataStore *)self setNetworkChangedHandlingLastUpdatedTime:v6];
  workQueueNetworkChanged2 = [(HMDThreadNetworkMetadataStore *)self workQueueNetworkChanged];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDThreadNetworkMetadataStore__scheduleTriggerPreferredNetworkUpdateWithCompletion___block_invoke;
  block[3] = &unk_279734380;
  v10 = completionCopy;
  v11 = v6;
  block[4] = self;
  v8 = completionCopy;
  dispatch_after(v6, workQueueNetworkChanged2, block);
}

void __86__HMDThreadNetworkMetadataStore__scheduleTriggerPreferredNetworkUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) networkChangedHandlingLastUpdatedTime])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__HMDThreadNetworkMetadataStore__scheduleTriggerPreferredNetworkUpdateWithCompletion___block_invoke_2;
    v6[3] = &unk_279735558;
    v3 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v3 _triggerPreferredNetworkUpdateWithCompletion:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)triggerPreferredNetworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueueNetworkChanged = [(HMDThreadNetworkMetadataStore *)self workQueueNetworkChanged];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueueNetworkChanged, v7);
}

void __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke_2;
  v4[3] = &unk_279733F30;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _scheduleTriggerPreferredNetworkUpdateWithCompletion:v4];
}

void __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

- (void)_retrievePreferredNetwork:(id)network completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__135889;
    v35 = __Block_byref_object_dispose__135890;
    threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
    v36 = threadClientFactory[2]();

    if (*(*(&buf + 1) + 40))
    {
      v10 = +[HMDDeviceCapabilities deviceCapabilities];
      supportsThreadService = [v10 supportsThreadService];

      v12 = *(*(&buf + 1) + 40);
      if (supportsThreadService)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke;
        v27[3] = &unk_27972D628;
        v28 = completionCopy;
        p_buf = &buf;
        [(HMDThreadNetworkMetadataStore *)self _retrievePreferredNetworkOnThreadCapableController:networkCopy threadClient:v12 completion:v27];
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke_2;
        v23[3] = &unk_27972D678;
        v23[4] = self;
        v24 = networkCopy;
        v26 = &buf;
        v25 = completionCopy;
        [v12 retrievePreferredNetworkInternallyOnMdnsAndSig:v23];
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *v30 = 138543362;
        v31 = v21;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", v30, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v22);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Control flow: Cannot retrieve or generate thread preferred network on this platform", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v17);
  }
}

void __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v27;
      v40 = 2112;
      v41 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Control flow: Failed to retrieve preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = *(a1 + 32);
      v30 = *(*(*(a1 + 56) + 8) + 40);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke_33;
      v34[3] = &unk_27972D650;
      v36 = *(a1 + 48);
      v31 = *(a1 + 40);
      v32 = *(a1 + 56);
      v35 = v31;
      v37 = v32;
      [v29 _validateOperationalDatasetWithTHClient:v30 operationalDataset:v28 storeCachedAOD:0 completion:v34];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v14;
      v40 = 2112;
      v41 = v7;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Control flow: retrievePreferredNetworkInternallyOnMdnsAndSig returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    [v7 extendedPANID];
    v19 = v33 = v8;
    v20 = [v7 networkKey];
    v21 = [v7 PSKC];
    v22 = [v7 activeOperationalDataSet];
    v23 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v21 operationalDataset:v22];

    v8 = v33;
    v24 = *(a1 + 48);
    v25 = [v33 UUIDString];
    v26 = [v7 activeOperationalDataSet];
    (*(v24 + 16))(v24, v23, v25, v26, 0);

    v9 = 0;
  }
}

- (void)_retrievePreferredNetworkOnThreadCapableController:(id)controller threadClient:(id)client completion:(id)completion
{
  controllerCopy = controller;
  clientCopy = client;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HMDThreadNetworkMetadataStore__retrievePreferredNetworkOnThreadCapableController_threadClient_completion___block_invoke;
  v15[3] = &unk_27972D600;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = clientCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = clientCopy;
  v14 = controllerCopy;
  [v13 retrievePreferredNetworkWithNoScan:v15];
}

void __108__HMDThreadNetworkMetadataStore__retrievePreferredNetworkOnThreadCapableController_threadClient_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Control flow: retrievePreferredNetworkWithNoScan failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = *(a1 + 32);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __108__HMDThreadNetworkMetadataStore__retrievePreferredNetworkOnThreadCapableController_threadClient_completion___block_invoke_32;
      v32[3] = &unk_27972EFA0;
      v30 = *(a1 + 48);
      v34 = *(a1 + 56);
      v33 = *(a1 + 40);
      [v29 _validateOperationalDatasetWithTHClient:v30 operationalDataset:v28 storeCachedAOD:0 completion:v32];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v14;
      v37 = 2112;
      v38 = v7;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Control flow: retrievePreferredNetworkWithNoScan returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    [v7 extendedPANID];
    v19 = v31 = v8;
    v20 = [v7 networkKey];
    v21 = [v7 PSKC];
    v22 = [v7 activeOperationalDataSet];
    v23 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v21 operationalDataset:v22];

    v8 = v31;
    v24 = *(a1 + 56);
    v25 = [v31 UUIDString];
    v26 = [v7 activeOperationalDataSet];
    (*(v24 + 16))(v24, v23, v25, v26, 0);

    v9 = 0;
  }
}

- (void)retrievePreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDThreadNetworkMetadataStore_retrievePreferredNetwork_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = networkCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = networkCopy;
  dispatch_async(workQueue, block);
}

void __69__HMDThreadNetworkMetadataStore_retrievePreferredNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__HMDThreadNetworkMetadataStore_retrievePreferredNetwork_completion___block_invoke_2;
  v5[3] = &unk_27972D5D8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _retrievePreferredNetwork:v3 completion:v5];
}

- (void)_validateOperationalDatasetWithTHClient:(id)client operationalDataset:(id)dataset storeCachedAOD:(BOOL)d completion:(id)completion
{
  clientCopy = client;
  datasetCopy = dataset;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke;
  v16[3] = &unk_27972D5B0;
  dCopy = d;
  v16[4] = self;
  v17 = clientCopy;
  v18 = datasetCopy;
  v19 = completionCopy;
  v13 = datasetCopy;
  v14 = clientCopy;
  v15 = completionCopy;
  [v14 validateAODInternally:v13 completion:v16];
}

void __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v24;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, operational dataset validation failed. Error: %@, credentials: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      *buf = 138543874;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Operational dataset validation passed, store cached AOD: %@, THCredential:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = objc_alloc(MEMORY[0x277CD1EA8]);
    v14 = [v5 networkName];
    v15 = [v5 channel];
    v16 = [v5 panID];
    v17 = [v5 extendedPANID];
    v18 = [v5 networkKey];
    v19 = [v5 PSKC];
    v20 = [v5 activeOperationalDataSet];
    v21 = [v13 initWithName:v14 channel:v15 PANID:v16 extendedPANID:v17 masterKey:v18 passPhrase:0 PSKc:v19 operationalDataset:v20];

    if (*(a1 + 64) == 1)
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke_28;
      v25[3] = &unk_279735168;
      v25[4] = *(a1 + 32);
      v27 = *(a1 + 56);
      v26 = v21;
      [v22 storeCachedAODasPreferredNetwork:v23 completion:v25];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v6 = 0;
  }
}

void __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to store cached AOD: %@, proceeding";
      v10 = v6;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@THClient storeCachedAODasPreferredNetwork successful";
    v10 = v6;
    v11 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), 0, v12);
}

- (void)_retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__135889;
  v20 = __Block_byref_object_dispose__135890;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v21 = threadClientFactory[2]();

  v7 = v17[5];
  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__HMDThreadNetworkMetadataStore__retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke;
    v13[3] = &unk_27972D4E8;
    v13[4] = self;
    v14 = completionCopy;
    v15 = &v16;
    [v7 retrievePreferredCredentialsInternally:v13];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  _Block_object_dispose(&v16, 8);
}

void __85__HMDThreadNetworkMetadataStore__retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD1EA8]);
    v12 = [v7 networkName];
    v25 = [v7 channel];
    v13 = [v7 panID];
    v14 = [v7 extendedPANID];
    v15 = [v7 networkKey];
    [v7 PSKC];
    v16 = v26 = a1;
    [v7 activeOperationalDataSet];
    v18 = v17 = v8;
    v19 = v12;
    v20 = [v11 initWithName:v12 channel:v25 PANID:v13 extendedPANID:v14 masterKey:v15 passPhrase:0 PSKc:v16 operationalDataset:v18];

    v8 = v17;
    v10 = 0;
    (*(*(v26 + 40) + 16))();
  }
}

- (void)retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMDThreadNetworkMetadataStore_retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __84__HMDThreadNetworkMetadataStore_retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__HMDThreadNetworkMetadataStore_retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke_2;
  v4[3] = &unk_27972EFA0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _retrieveBorderRouterPreferredNetworkWithCompletion:v4];
}

- (void)_retrieveMetadataOnController:(id)controller homeHasResident:(BOOL)resident completion:(id)completion
{
  residentCopy = resident;
  v35 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__135889;
  v31 = __Block_byref_object_dispose__135890;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v32 = threadClientFactory[2]();

  if (v28[5])
  {
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 supportsThreadService], v12, v13))
    {
      v14 = v28[5];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __90__HMDThreadNetworkMetadataStore__retrieveMetadataOnController_homeHasResident_completion___block_invoke;
      v24[3] = &unk_27972D588;
      v25 = completionCopy;
      v26 = &v27;
      [(HMDThreadNetworkMetadataStore *)self _retrieveMetadataOnThreadCapableController:controllerCopy threadClient:v14 homeHasResident:residentCopy completion:v24];
    }

    else
    {
      v15 = v28[5];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __90__HMDThreadNetworkMetadataStore__retrieveMetadataOnController_homeHasResident_completion___block_invoke_2;
      v21[3] = &unk_27972D4E8;
      v21[4] = self;
      v22 = completionCopy;
      v23 = &v27;
      [v15 retrievePreferredCredentialsInternally:v21];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }

  _Block_object_dispose(&v27, 8);
}

void __90__HMDThreadNetworkMetadataStore__retrieveMetadataOnController_homeHasResident_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Pairing flow: retrievePreferredCredentialsInternally failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD1EA8]);
    v12 = [v7 networkName];
    v25 = [v7 channel];
    v13 = [v7 panID];
    v14 = [v7 extendedPANID];
    v15 = [v7 networkKey];
    [v7 PSKC];
    v16 = v26 = a1;
    [v7 activeOperationalDataSet];
    v18 = v17 = v8;
    v19 = v12;
    v20 = [v11 initWithName:v12 channel:v25 PANID:v13 extendedPANID:v14 masterKey:v15 passPhrase:0 PSKc:v16 operationalDataset:v18];

    v8 = v17;
    v10 = 0;
    (*(*(v26 + 40) + 16))();
  }
}

- (void)_retrieveMetadataOnThreadCapableController:(id)controller threadClient:(id)client homeHasResident:(BOOL)resident completion:(id)completion
{
  controllerCopy = controller;
  clientCopy = client;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke;
  v17[3] = &unk_27972D560;
  v17[4] = self;
  v18 = controllerCopy;
  v19 = clientCopy;
  v20 = completionCopy;
  residentCopy = resident;
  v14 = completionCopy;
  v15 = clientCopy;
  v16 = controllerCopy;
  [v15 retrievePreferredNetworkWithNoScan:v17];
}

void __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v23;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Pairing flow: retrievePreferredNetworkWithNoScan failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = *(a1 + 40);
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
    if (v24)
    {
      if (v28)
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v29;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Pairing flow: Using cached AOD, validating operational dataset", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(a1 + 40);
      v30 = *(a1 + 48);
      v32 = *(a1 + 32);
      v33 = *(a1 + 64);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke_27;
      v38[3] = &unk_27972D538;
      v39 = *(a1 + 56);
      [v32 _validateOperationalDatasetWithTHClient:v30 operationalDataset:v31 storeCachedAOD:(v33 & 1) == 0 completion:v38];
      v34 = v39;
    }

    else
    {
      if (v28)
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v35;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Pairing flow: No cached AOD, calling retrieveOrGeneratePreferredNetworkInternally", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke_26;
      v40[3] = &unk_27972D510;
      v40[4] = *(a1 + 32);
      v36 = *(a1 + 48);
      v41 = *(a1 + 56);
      [v36 retrieveOrGeneratePreferredNetworkInternally:v40];
      v34 = v41;
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD1EA8]);
    v12 = [v7 networkName];
    v13 = [v7 channel];
    v14 = [v7 panID];
    [v7 extendedPANID];
    v15 = v37 = v8;
    v16 = [v7 networkKey];
    v17 = [v7 PSKC];
    v18 = [v7 activeOperationalDataSet];
    v19 = [v11 initWithName:v12 channel:v13 PANID:v14 extendedPANID:v15 masterKey:v16 passPhrase:0 PSKc:v17 operationalDataset:v18];

    v10 = 0;
    v8 = v37;

    (*(*(a1 + 56) + 16))();
  }
}

void __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke_26(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Pairing flow: retrieveOrGeneratePreferredNetworkInternally failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v26 = a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v14;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Pairing flow: retrieveOrGeneratePreferredNetworkInternally returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    v19 = [v7 extendedPANID];
    v20 = [v7 networkKey];
    v21 = [v7 PSKC];
    [v7 activeOperationalDataSet];
    v23 = v22 = v8;
    v24 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v21 operationalDataset:v23];

    v8 = v22;
    (*(*(v26 + 40) + 16))();

    v9 = 0;
  }
}

- (void)_retrieveMetadataWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__135889;
  v19 = __Block_byref_object_dispose__135890;
  v20 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];
  v6 = v16[5];
  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke;
    v12[3] = &unk_27972D4E8;
    v12[4] = self;
    v14 = &v15;
    v13 = completionCopy;
    [v6 retrievePreferredCredentialsInternally:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }

  _Block_object_dispose(&v15, 8);
}

void __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v24;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 supportsThreadService], v25, v26))
    {
      v27 = *(*(*(a1 + 48) + 8) + 40);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke_23;
      v34[3] = &unk_27972D4E8;
      v28 = *(a1 + 40);
      v34[4] = *(a1 + 32);
      v29 = v28;
      v30 = *(a1 + 48);
      v35 = v29;
      v36 = v30;
      [v27 retrieveOrGeneratePreferredNetworkInternally:v34];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
      [*(*(*(a1 + 48) + 8) + 40) invalidate];
    }
  }

  else
  {
    v33 = objc_alloc(MEMORY[0x277CD1EA8]);
    v31 = [v7 networkName];
    v32 = [v7 channel];
    v11 = [v7 panID];
    v12 = [v7 extendedPANID];
    v13 = [v7 networkKey];
    [v7 PSKC];
    v14 = v7;
    v15 = a1;
    v17 = v16 = v8;
    v18 = [v14 activeOperationalDataSet];
    v19 = [v33 initWithName:v31 channel:v32 PANID:v11 extendedPANID:v12 masterKey:v13 passPhrase:0 PSKc:v17 operationalDataset:v18];

    v10 = 0;
    v8 = v16;

    (*(*(v15 + 40) + 16))();
    v20 = *(v15 + 48);
    v7 = v14;
    [*(*(v20 + 8) + 40) invalidate];
  }
}

void __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke_23(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve or generate preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(*(a1 + 40) + 16))();
    [*(*(*(a1 + 48) + 8) + 40) invalidate];
  }

  else
  {
    v26 = a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v14;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@retrieveOrGeneratePreferredNetworkInternally returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    v19 = [v7 extendedPANID];
    v20 = [v7 networkKey];
    [v7 PSKC];
    v22 = v21 = v8;
    v23 = [v7 activeOperationalDataSet];
    v24 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v22 operationalDataset:v23];

    v8 = v21;
    (*(*(v26 + 40) + 16))();
    [*(*(*(v26 + 48) + 8) + 40) invalidate];

    v9 = 0;
  }
}

- (void)retrieveMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDThreadNetworkMetadataStore_retrieveMetadataWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDThreadNetworkMetadataStore_retrieveMetadataWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDThreadNetworkMetadataStore_retrieveMetadataWithCompletion___block_invoke_2;
  v4[3] = &unk_27972EFA0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _retrieveMetadataWithCompletion:v4];
}

- (void)retrieveMetadata:(id)metadata homeHasResident:(BOOL)resident completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HMDThreadNetworkMetadataStore_retrieveMetadata_homeHasResident_completion___block_invoke;
  v13[3] = &unk_279732430;
  v13[4] = self;
  v14 = metadataCopy;
  residentCopy = resident;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = metadataCopy;
  dispatch_async(workQueue, v13);
}

void __77__HMDThreadNetworkMetadataStore_retrieveMetadata_homeHasResident_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMDThreadNetworkMetadataStore_retrieveMetadata_homeHasResident_completion___block_invoke_2;
  v6[3] = &unk_27972EFA0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _retrieveMetadataOnController:v3 homeHasResident:v4 completion:v6];
}

- (id)initInternalWithThreadClientFactory:(id)factory
{
  factoryCopy = factory;
  v20.receiver = self;
  v20.super_class = HMDThreadNetworkMetadataStore;
  v5 = [(HMDThreadNetworkMetadataStore *)&v20 init];
  if (v5)
  {
    v6 = HMFDispatchQueueName();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_get_global_queue(25, 0);
    v9 = dispatch_queue_create_with_target_V2(v6, v7, v8);
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    if (factoryCopy)
    {
      v11 = factoryCopy;
    }

    else
    {
      v11 = &__block_literal_global_15_135933;
    }

    v12 = _Block_copy(v11);
    threadClientFactory = v5->_threadClientFactory;
    v5->_threadClientFactory = v12;

    v14 = HMFDispatchQueueName();
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_get_global_queue(9, 0);
    v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
    workQueueNetworkChanged = v5->_workQueueNetworkChanged;
    v5->_workQueueNetworkChanged = v17;
  }

  return v5;
}

id __69__HMDThreadNetworkMetadataStore_initInternalWithThreadClientFactory___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];

  return v0;
}

- (HMDThreadNetworkMetadataStore)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (HMDThreadNetworkMetadataStore)storeWithThreadClientFactory:(id)factory
{
  factoryCopy = factory;
  v4 = [[HMDThreadNetworkMetadataStore alloc] initInternalWithThreadClientFactory:factoryCopy];

  return v4;
}

+ (HMDThreadNetworkMetadataStore)defaultStore
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&defaultStore_weakStore);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (WeakRetained)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Reusing existing store", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Creating new store", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    WeakRetained = [[HMDThreadNetworkMetadataStore alloc] initInternalWithThreadClientFactory:0];
    objc_storeWeak(&defaultStore_weakStore, WeakRetained);
  }

  os_unfair_lock_unlock(&defaultStore_lock);

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_135957 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_135957, &__block_literal_global_135958);
  }

  v3 = logCategory__hmf_once_v1_135959;

  return v3;
}

uint64_t __44__HMDThreadNetworkMetadataStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_135959;
  logCategory__hmf_once_v1_135959 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end