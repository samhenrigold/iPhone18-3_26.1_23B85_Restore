@interface HMMTRCommissioningSessionHandler
+ (id)logCategory;
- (HMMTRCommissioningSessionHandler)initWithClientQueue:(id)queue;
- (id)logIdentifier;
- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done;
- (void)establishSessionToRemoveFabricWithDeviceController:(id)controller forControllerParameters:(id)parameters setupPayload:(id)payload nodeID:(id)d allPairedNodeIDs:(id)ds completion:(id)completion;
- (void)readFabricsFromDeviceBeingCommissionedWithController:(id)controller completion:(id)completion;
- (void)removeFabricFromDeviceBeingCommissionedWithController:(id)controller fabricIndex:(id)index completion:(id)completion;
@end

@implementation HMMTRCommissioningSessionHandler

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  nodeID = [(HMMTRCommissioningSessionHandler *)self nodeID];
  v4 = [v2 stringWithFormat:@"%@", nodeID];

  return v4;
}

- (void)removeFabricFromDeviceBeingCommissionedWithController:(id)controller fabricIndex:(id)index completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  indexCopy = index;
  completionCopy = completion;
  nodeID = [(HMMTRCommissioningSessionHandler *)self nodeID];
  v25 = 0;
  v12 = [controllerCopy deviceBeingCommissionedWithNodeID:nodeID error:&v25];
  v13 = v25;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277CD5208]);
    clientQueue = [(HMMTRCommissioningSessionHandler *)self clientQueue];
    v16 = [v14 initWithDevice:v12 endpointID:&unk_283EE7C68 queue:clientQueue];

    v17 = objc_alloc_init(MEMORY[0x277CD5470]);
    [v17 setFabricIndex:indexCopy];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __113__HMMTRCommissioningSessionHandler_removeFabricFromDeviceBeingCommissionedWithController_fabricIndex_completion___block_invoke;
    v22[3] = &unk_2786ED910;
    v22[4] = self;
    v23 = indexCopy;
    v24 = completionCopy;
    [v16 removeFabricWithParams:v17 completion:v22];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Device wasn't obtained to remove fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

void __113__HMMTRCommissioningSessionHandler_removeFabricFromDeviceBeingCommissionedWithController_fabricIndex_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 statusCode];
  v8 = [v7 isEqual:&unk_283EE7C68];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v23 = 138543618;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully removed fabric index %@", &v23, 0x16u);
    }

LABEL_8:

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v23 = 138543874;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove fabric index %@ with error %@", &v23, 0x20u);
    }

    goto LABEL_8;
  }

  if (v14)
  {
    v17 = HMFGetLogIdentifier();
    v18 = *(a1 + 40);
    v19 = [v5 statusCode];
    v20 = [v5 debugText];
    v23 = 138544130;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove fabric index %@ with status code %@: %@", &v23, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v21 = *(a1 + 48);
  v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  (*(v21 + 16))(v21, v22);

LABEL_9:
}

- (void)readFabricsFromDeviceBeingCommissionedWithController:(id)controller completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  nodeID = [(HMMTRCommissioningSessionHandler *)self nodeID];
  v19 = 0;
  v9 = [controllerCopy deviceBeingCommissionedWithNodeID:nodeID error:&v19];
  v10 = v19;

  if (v9)
  {
    v11 = objc_alloc(MEMORY[0x277CD5208]);
    clientQueue = [(HMMTRCommissioningSessionHandler *)self clientQueue];
    v13 = [v11 initWithDevice:v9 endpointID:&unk_283EE7C68 queue:clientQueue];

    v14 = objc_alloc_init(MEMORY[0x277CD54D8]);
    [v14 setFilterByFabric:0];
    [v13 readAttributeFabricsWithParams:v14 completion:completionCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Device wasn't obtained to read fabrics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  doneCopy = done;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = doneCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Established commissioning session with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (doneCopy)
  {
    completionHandler = [(HMMTRCommissioningSessionHandler *)selfCopy completionHandler];
    [(HMMTRCommissioningSessionHandler *)selfCopy setCompletionHandler:0];
    if (completionHandler)
    {
      (completionHandler)[2](completionHandler, doneCopy);
    }
  }

  else
  {
    controllerParametersToRemove = [(HMMTRCommissioningSessionHandler *)selfCopy controllerParametersToRemove];

    if (controllerParametersToRemove)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __85__HMMTRCommissioningSessionHandler_controller_commissioningSessionEstablishmentDone___block_invoke;
      v19[3] = &unk_2786EEEC0;
      v19[4] = selfCopy;
      v20 = controllerCopy;
      [(HMMTRCommissioningSessionHandler *)selfCopy readFabricsFromDeviceBeingCommissionedWithController:v20 completion:v19];

      goto LABEL_9;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown action to perform after establishing commissioning session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    completionHandler = [(HMMTRCommissioningSessionHandler *)v15 completionHandler];
    [(HMMTRCommissioningSessionHandler *)v15 setCompletionHandler:0];
    if (completionHandler)
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      (completionHandler)[2](completionHandler, v18);
    }
  }

LABEL_9:
}

void __85__HMMTRCommissioningSessionHandler_controller_commissioningSessionEstablishmentDone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v47 = v10;
    v48 = 2112;
    v49 = v5;
    v50 = 2112;
    v51 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved pairings %@, error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __85__HMMTRCommissioningSessionHandler_controller_commissioningSessionEstablishmentDone___block_invoke_8;
    v45[3] = &unk_2786ED8C8;
    v45[4] = *(a1 + 32);
    v11 = [v5 na_filter:v45];
    v12 = [v11 na_map:&__block_literal_global_1252];

    if ([v12 count])
    {
      if ([v12 count] < 2)
      {
        v29 = [v12 objectAtIndexedSubscript:0];
        v40 = MEMORY[0x277D85DD0];
        v41 = 3221225472;
        v42 = __85__HMMTRCommissioningSessionHandler_controller_commissioningSessionEstablishmentDone___block_invoke_11;
        v43 = &unk_2786ED8C8;
        v17 = v29;
        v44 = v17;
        v30 = [v5 na_filter:&v40];
        v31 = [v30 na_map:{&__block_literal_global_14, v40, v41, v42, v43}];
        v32 = [v31 firstObject];

        v33 = [*(a1 + 32) allPairedNodeIDs];
        LODWORD(v31) = [v33 containsObject:v32];

        if (v31)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = *(a1 + 32);
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v47 = v37;
            v48 = 2112;
            v49 = v32;
            _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Accessory is in fact paired with node ID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
          v38 = [*(a1 + 32) completionHandler];
          [*(a1 + 32) setCompletionHandler:0];
          if (v38)
          {
            v39 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
            (v38)[2](v38, v39);
          }
        }

        else
        {
          v38 = [*(a1 + 32) completionHandler];
          [*(a1 + 32) setCompletionHandler:0];
          if (v38)
          {
            [*(a1 + 32) removeFabricFromDeviceBeingCommissionedWithController:*(a1 + 40) fabricIndex:v17 completion:v38];
          }
        }

        v28 = v44;
        goto LABEL_27;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v16;
        v48 = 2112;
        v49 = v12;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@More than one match was found unexpectedly: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [*(a1 + 32) completionHandler];
      [*(a1 + 32) setCompletionHandler:0];
      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = 15;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v27;
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@No match from fetched pairings", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v17 = [*(a1 + 32) completionHandler];
      [*(a1 + 32) setCompletionHandler:0];
      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = 2;
    }

    v28 = [v18 hmfErrorWithCode:v19];
    v17[2](v17, v28);
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v23;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch pairings from device with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v12 = [*(a1 + 32) completionHandler];
  [*(a1 + 32) setCompletionHandler:0];
  if (v12)
  {
    (v12)[2](v12, v6);
  }

LABEL_29:
}

uint64_t __85__HMMTRCommissioningSessionHandler_controller_commissioningSessionEstablishmentDone___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rootPublicKey];
  v5 = [*(a1 + 32) controllerParametersToRemove];
  v6 = [v5 rootPublicKey];
  if ([v4 isEqual:v6])
  {
    v7 = [v3 fabricID];
    v8 = [*(a1 + 32) controllerParametersToRemove];
    v9 = [v8 fabricID];
    v10 = [v7 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __85__HMMTRCommissioningSessionHandler_controller_commissioningSessionEstablishmentDone___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = [a2 fabricIndex];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)establishSessionToRemoveFabricWithDeviceController:(id)controller forControllerParameters:(id)parameters setupPayload:(id)payload nodeID:(id)d allPairedNodeIDs:(id)ds completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  parametersCopy = parameters;
  payloadCopy = payload;
  dCopy = d;
  dsCopy = ds;
  completionCopy = completion;
  [(HMMTRCommissioningSessionHandler *)self setNodeID:dCopy];
  [(HMMTRCommissioningSessionHandler *)self setAllPairedNodeIDs:dsCopy];
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v23;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Establishing commissioning session to remove fabric", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  clientQueue = [(HMMTRCommissioningSessionHandler *)selfCopy clientQueue];
  [controllerCopy setDeviceControllerDelegate:selfCopy queue:clientQueue];

  [(HMMTRCommissioningSessionHandler *)selfCopy setCompletionHandler:completionCopy];
  [(HMMTRCommissioningSessionHandler *)selfCopy setControllerParametersToRemove:parametersCopy];
  v35 = 0;
  [(HMMTRCommissioningSessionHandler *)selfCopy setUpCommissioningSessionWithDeviceController:controllerCopy payload:payloadCopy newNodeID:dCopy error:&v35];
  v25 = v35;
  if (v25)
  {
    v31 = parametersCopy;
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v29;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up commissioning session with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [(HMMTRCommissioningSessionHandler *)v27 setCompletionHandler:0];
    [(HMMTRCommissioningSessionHandler *)v27 setNodeID:0];
    [(HMMTRCommissioningSessionHandler *)v27 setAllPairedNodeIDs:0];
    clientQueue2 = [(HMMTRCommissioningSessionHandler *)v27 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __159__HMMTRCommissioningSessionHandler_establishSessionToRemoveFabricWithDeviceController_forControllerParameters_setupPayload_nodeID_allPairedNodeIDs_completion___block_invoke;
    block[3] = &unk_2786EF5A8;
    v34 = completionCopy;
    v33 = v25;
    dispatch_async(clientQueue2, block);

    parametersCopy = v31;
  }
}

- (HMMTRCommissioningSessionHandler)initWithClientQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HMMTRCommissioningSessionHandler;
  v6 = [(HMMTRCommissioningSessionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, queue);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_1267 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_1267, &__block_literal_global_22);
  }

  v3 = logCategory__hmf_once_v15_1268;

  return v3;
}

uint64_t __47__HMMTRCommissioningSessionHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_1268;
  logCategory__hmf_once_v15_1268 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end