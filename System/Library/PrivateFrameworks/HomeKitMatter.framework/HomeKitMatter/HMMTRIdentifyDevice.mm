@interface HMMTRIdentifyDevice
+ (id)logCategory;
- (HMMTRIdentifyDevice)initWithDevice:(id)device topology:(id)topology queue:(id)queue;
- (id)bridgeIdentifyEndpointWithAggregatorEndpoint:(id)endpoint;
- (id)logIdentifier;
- (id)mtrClusterDescriptorWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue;
- (id)mtrClusterIdentifyWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue;
- (void)_childNodesWithIdentifyForEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler;
- (void)_identifyClusterPresentAtEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler;
- (void)_issueIdentifyCommand:(unsigned __int16)command completionHandler:(id)handler;
- (void)_processChildNodesForEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler;
- (void)_validIdentifyNodeForParentAtEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler;
- (void)identifyBridgeWithAggregatorEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)identifyWithEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler;
@end

@implementation HMMTRIdentifyDevice

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  device = [(HMMTRIdentifyDevice *)self device];
  nodeID = [device nodeID];
  v5 = [v2 stringWithFormat:@"%@", nodeID];

  return v5;
}

- (id)mtrClusterIdentifyWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue
{
  endpointCopy = endpoint;
  v7 = MEMORY[0x277CD5270];
  queueCopy = queue;
  deviceCopy = device;
  v10 = [[v7 alloc] initWithDevice:deviceCopy endpoint:endpointCopy queue:queueCopy];

  return v10;
}

- (id)mtrClusterDescriptorWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue
{
  endpointCopy = endpoint;
  v7 = MEMORY[0x277CD5258];
  queueCopy = queue;
  deviceCopy = device;
  v10 = [[v7 alloc] initWithDevice:deviceCopy endpoint:endpointCopy queue:queueCopy];

  return v10;
}

- (id)bridgeIdentifyEndpointWithAggregatorEndpoint:(id)endpoint
{
  v75 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  device = [(HMMTRIdentifyDevice *)self device];
  queue = [(HMMTRIdentifyDevice *)self queue];
  v7 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:device endpoint:0 queue:queue];

  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [v7 readAttributePartsListWithParams:v8];

  if (v9)
  {
    v10 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v9 forIdentify:@"PartsList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      device2 = [(HMMTRIdentifyDevice *)self device];
      unsignedIntValue = [endpointCopy unsignedIntValue];
      queue2 = [(HMMTRIdentifyDevice *)self queue];
      v16 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:device2 endpoint:unsignedIntValue queue:queue2];

      v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v18 = [v16 readAttributePartsListWithParams:v17];

      if (v18)
      {
        v19 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v18 forIdentify:@"PartsList"];
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

        if (v21)
        {
          v63 = v12;
          v64 = v9;
          v22 = [v12 mutableCopy];
          [v22 removeObjectsInArray:v21];
          [v22 sortUsingSelector:sel_compare_];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v66 objects:v70 count:16];
          if (v24)
          {
            v25 = v24;
            v65 = v21;
            v59 = v18;
            v60 = v16;
            v61 = v7;
            v62 = endpointCopy;
            v26 = *v67;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v67 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v66 + 1) + 8 * i);
                device3 = [(HMMTRIdentifyDevice *)self device];
                unsignedIntValue2 = [v28 unsignedIntValue];
                queue3 = [(HMMTRIdentifyDevice *)self queue];
                v32 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:device3 endpoint:unsignedIntValue2 queue:queue3];

                v33 = objc_alloc_init(MEMORY[0x277CD54D8]);
                v34 = [v32 readAttributeServerListWithParams:v33];

                if (v34)
                {
                  v35 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v34 forIdentify:@"ServerList"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v37 = v36;

                  if ([v37 containsObject:&unk_283EE9000])
                  {
                    v38 = v28;

                    goto LABEL_38;
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v66 objects:v70 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

            v38 = 0;
LABEL_38:
            v7 = v61;
            endpointCopy = v62;
            v18 = v59;
            v16 = v60;
            v21 = v65;
          }

          else
          {
            v38 = 0;
          }

          v12 = v63;
          v9 = v64;
        }

        else
        {
          v52 = v18;
          v53 = objc_autoreleasePoolPush();
          selfCopy = self;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v57 = v56 = v16;
            *buf = 138543618;
            v72 = v57;
            v73 = 2112;
            v74 = v52;
            _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Bad aggregator parts list: %@", buf, 0x16u);

            v16 = v56;
          }

          objc_autoreleasePoolPop(v53);
          v38 = 0;
          v18 = v52;
          v21 = 0;
        }
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v51 = v50 = v16;
          *buf = 138543618;
          v72 = v51;
          v73 = 2112;
          v74 = endpointCopy;
          _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to read aggregator %@ parts list", buf, 0x16u);

          v16 = v50;
        }

        objc_autoreleasePoolPop(v47);
        v38 = 0;
        v18 = 0;
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v46;
        v73 = 2112;
        v74 = v9;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Bad root parts list: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
      v38 = 0;
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v42;
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to read root parts list", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
  }

  return v38;
}

- (void)identifyBridgeWithAggregatorEndpoint:(id)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  unsignedIntValue = [endpointCopy unsignedIntValue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke;
  v11[3] = &unk_2786F0C38;
  v12 = endpointCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = endpointCopy;
  v10 = handlerCopy;
  [(HMMTRIdentifyDevice *)self _identifyClusterPresentAtEndpoint:unsignedIntValue completionHandler:v11];
}

void __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke(id *a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = a1[4];
    if (a2)
    {
      v7 = [a1[5] unsignedIntValue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_2;
      v22[3] = &unk_2786F0C10;
      v8 = a1[5];
      v22[4] = a1[4];
      v23 = v8;
      v24 = a1[6];
      [v6 _issueIdentifyCommand:v7 completionHandler:v22];
    }

    else
    {
      v9 = [a1[4] bridgeIdentifyEndpointWithAggregatorEndpoint:a1[5]];
      v10 = v9;
      if (v9)
      {
        v11 = a1[4];
        v12 = [v9 unsignedIntValue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_74;
        v19[3] = &unk_2786F0C10;
        v19[4] = a1[4];
        v20 = v10;
        v21 = a1[6];
        [v11 _issueIdentifyCommand:v12 completionHandler:v19];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = a1[4];
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v16;
          _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@No endpoint found to identify bridge", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        v17 = a1[6];
        v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
        v17[2](v17, v18);
      }
    }
  }
}

void __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Identify on aggregator %@ failed", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Identify on aggregator %@ successful", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }
}

void __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_74(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Identify on endpoint %@ for bridge failed", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Identify on endpoint %@ for bridge successful", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)identifyWithEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v10;
    v17 = 1024;
    v18 = endpointCopy;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Request for identify received at endpoint %u", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HMMTRIdentifyDevice_identifyWithEndpoint_completionHandler___block_invoke;
  v12[3] = &unk_2786F0BE8;
  v12[4] = selfCopy;
  v13 = handlerCopy;
  v14 = endpointCopy;
  v11 = handlerCopy;
  [(HMMTRIdentifyDevice *)selfCopy _identifyClusterPresentAtEndpoint:endpointCopy completionHandler:v12];
}

void __62__HMMTRIdentifyDevice_identifyWithEndpoint_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    if (a2)
    {
      v7 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __62__HMMTRIdentifyDevice_identifyWithEndpoint_completionHandler___block_invoke_2;
      v11[3] = &unk_2786F0BC0;
      v12 = *(a1 + 40);
      [v6 _issueIdentifyCommand:v7 completionHandler:v11];

      goto LABEL_10;
    }

    v8 = [*(a1 + 32) topology];
    v9 = [v8 getBridgeAggregateNodeEndpoint];

    v10 = [*(a1 + 32) topology];
    if (v10 && !*(a1 + 48))
    {

      if (v9)
      {
        [*(a1 + 32) identifyBridgeWithAggregatorEndpoint:v9 completionHandler:*(a1 + 40)];
        goto LABEL_9;
      }
    }

    else
    {
    }

    [*(a1 + 32) _processChildNodesForEndpoint:*(a1 + 48) completionHandler:*(a1 + 40)];
LABEL_9:

    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

- (void)_processChildNodesForEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke;
  v8[3] = &unk_2786F0B98;
  v8[4] = self;
  v9 = handlerCopy;
  v10 = endpointCopy;
  v7 = handlerCopy;
  [(HMMTRIdentifyDevice *)self _childNodesWithIdentifyForEndpoint:endpointCopy completionHandler:v8];
}

void __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = v5;
    if ([v7 count])
    {
      v8 = dispatch_group_create();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v37 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v7;
      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        v10 = *v32;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v32 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v31 + 1) + 8 * i);
            dispatch_group_enter(v8);
            v13 = *(a1 + 32);
            LOWORD(v12) = [v12 unsignedIntValue];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_73;
            v28[3] = &unk_2786F0D18;
            v30 = buf;
            v29 = v8;
            [v13 _issueIdentifyCommand:v12 completionHandler:v28];
          }

          v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v9);
      }

      v14 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_2;
      block[3] = &unk_2786F0B70;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v26 = buf;
      block[4] = v15;
      v27 = *(a1 + 48);
      v25 = v16;
      dispatch_group_notify(v8, v14, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = *(a1 + 48);
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No endpoints found with identify cluster for parent endpoint: %u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = *(a1 + 40);
      v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      (*(v22 + 16))(v22, v8);
    }

    v6 = 0;
  }
}

void __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_73(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 56);
      v10 = 138543618;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_ERROR, "%{public}@No successful identify command issued for endpoint: %u", &v10, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v8 + 16))(v8, v9);
  }
}

- (void)_childNodesWithIdentifyForEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v8 = dispatch_group_create();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__11650;
  v35[4] = __Block_byref_object_dispose__11651;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__11650;
  v33[4] = __Block_byref_object_dispose__11651;
  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke;
  v26[3] = &unk_2786F0B48;
  v26[4] = self;
  v32 = endpointCopy;
  v9 = handlerCopy;
  v29 = v9;
  v10 = v8;
  v27 = v10;
  v30 = v33;
  v11 = v7;
  v28 = v11;
  v31 = v35;
  v12 = MEMORY[0x2318887D0](v26);
  topology = [(HMMTRIdentifyDevice *)self topology];

  if (topology)
  {
    topology2 = [(HMMTRIdentifyDevice *)self topology];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:endpointCopy];
    getEndpoints = [topology2 getPartsListAtEndpoint:v15];

    if (!endpointCopy && !getEndpoints)
    {
      topology3 = [(HMMTRIdentifyDevice *)self topology];
      getEndpoints = [topology3 getEndpoints];
    }

    (v12)[2](v12, getEndpoints, 0);
  }

  else
  {
    device = [(HMMTRIdentifyDevice *)self device];
    queue = [(HMMTRIdentifyDevice *)self queue];
    getEndpoints = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:device endpoint:endpointCopy queue:queue];

    v20 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v21 = [getEndpoints readAttributePartsListWithParams:v20];

    v22 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v21 forIdentify:@"partsList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    }

    (v12)[2](v12, v24, v25);
    if (!v24)
    {
    }
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 80);
      *buf = 138543874;
      v81 = v10;
      v82 = 1024;
      v83 = v11;
      v84 = 2112;
      v85 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get parts list for endpoint: %u, error: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = v5;
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 80);
      *buf = 138543874;
      v81 = v16;
      v82 = 1024;
      v83 = v17;
      v84 = 2112;
      v85 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Endpoint %u, child nodes: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
    v51 = v5;
    v50 = v12;
    if (*(a1 + 80))
    {
      v63 = 0uLL;
      v64 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      obj = v12;
      v18 = [obj countByEnumeratingWithState:&v61 objects:v78 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v62;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v62 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v61 + 1) + 8 * i);
            dispatch_group_enter(*(a1 + 48));
            v23 = *(a1 + 32);
            v24 = [v22 unsignedIntValue];
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_3;
            v57[3] = &unk_2786F0AD0;
            v25 = *(a1 + 48);
            v26 = *(a1 + 72);
            v59 = v22;
            v60 = v26;
            v58 = v25;
            [v23 _identifyClusterPresentAtEndpoint:v24 completionHandler:v57];
          }

          v19 = [obj countByEnumeratingWithState:&v61 objects:v78 count:16];
        }

        while (v19);
      }

      v27 = *(a1 + 48);
      v28 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_4;
      block[3] = &unk_2786F0AF8;
      v29 = *(a1 + 56);
      v30 = *(a1 + 72);
      v55 = v29;
      v56 = v30;
      dispatch_group_notify(v27, v28, block);

      v31 = v55;
    }

    else
    {
      v76 = 0uLL;
      v77 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      obja = v12;
      v32 = [obja countByEnumeratingWithState:&v74 objects:v79 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v75;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v75 != v34)
            {
              objc_enumerationMutation(obja);
            }

            v36 = *(*(&v74 + 1) + 8 * j);
            dispatch_group_enter(*(a1 + 40));
            v37 = *(a1 + 32);
            v38 = [v36 unsignedIntValue];
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_66;
            v69[3] = &unk_2786F0AA8;
            v39 = *(a1 + 40);
            v40 = *(a1 + 32);
            v70 = v39;
            v71 = v40;
            v41 = *(a1 + 64);
            v72 = v36;
            v73 = v41;
            [v37 _validIdentifyNodeForParentAtEndpoint:v38 completionHandler:v69];
          }

          v33 = [obja countByEnumeratingWithState:&v74 objects:v79 count:16];
        }

        while (v33);
      }

      v42 = *(a1 + 40);
      v43 = [*(a1 + 32) queue];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_68;
      v65[3] = &unk_2786F0B20;
      v65[4] = *(a1 + 32);
      v48 = *(a1 + 64);
      v66 = obja;
      v44 = *(a1 + 48);
      *&v45 = v48;
      *(&v45 + 1) = *(a1 + 72);
      v49 = v45;
      v46 = *(a1 + 56);
      *&v47 = v44;
      *(&v47 + 1) = v46;
      v67 = v47;
      v68 = v49;
      dispatch_group_notify(v42, v43, v65);

      v31 = v66;
    }

    v5 = v51;
  }
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_66(uint64_t a1, char a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8 && (a2 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 48) unsignedIntValue];
      *buf = 138543874;
      v25 = v12;
      v26 = 1024;
      v27 = v13;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Node %u is not a valid node for identify. Invalidating child nodes: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 48)];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(*(a1 + 56) + 8) + 40) addObject:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_68(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138543618;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@All invalid endpoints for identify: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (([*(*(*(a1 + 64) + 8) + 40) containsObject:v12] & 1) == 0)
        {
          dispatch_group_enter(*(a1 + 48));
          v13 = *(a1 + 32);
          v14 = [v12 unsignedIntValue];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_69;
          v24[3] = &unk_2786F0AD0;
          v15 = *(a1 + 48);
          v16 = *(a1 + 72);
          v26 = v12;
          v27 = v16;
          v25 = v15;
          [v13 _identifyClusterPresentAtEndpoint:v14 completionHandler:v24];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v17 = *(a1 + 48);
  v18 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_2;
  block[3] = &unk_2786F0AF8;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v22 = v19;
  v23 = v20;
  dispatch_group_notify(v17, v18, block);
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_69(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_issueIdentifyCommand:(unsigned __int16)command completionHandler:(id)handler
{
  commandCopy = command;
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v10;
    v21 = 1024;
    v22 = commandCopy;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Issuing identify command at endpoint: %u", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v7);
  device = [(HMMTRIdentifyDevice *)selfCopy device];
  queue = [(HMMTRIdentifyDevice *)selfCopy queue];
  v13 = [(HMMTRIdentifyDevice *)selfCopy mtrClusterIdentifyWithDevice:device endpoint:commandCopy queue:queue];

  v14 = objc_alloc_init(MEMORY[0x277CD5420]);
  [v14 setIdentifyTime:&unk_283EE9048];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMMTRIdentifyDevice__issueIdentifyCommand_completionHandler___block_invoke;
  v16[3] = &unk_2786F0A80;
  v18 = commandCopy;
  v16[4] = selfCopy;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [v13 identifyWithParams:v14 expectedValues:0 expectedValueInterval:0 completion:v16];
}

void __63__HMMTRIdentifyDevice__issueIdentifyCommand_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    v9 = 138543874;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Identify command status for endpoint: %u, error: %@", &v9, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)_validIdentifyNodeForParentAtEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  v88 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v85 = v9;
    v86 = 1024;
    v87 = endpointCopy;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Checking validity of endpoint: %u for identify", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  device = [(HMMTRIdentifyDevice *)selfCopy device];
  queue = [(HMMTRIdentifyDevice *)selfCopy queue];
  v12 = [(HMMTRIdentifyDevice *)selfCopy mtrClusterDescriptorWithDevice:device endpoint:endpointCopy queue:queue];

  v13 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v62 = v12;
  v14 = [v12 readAttributeDeviceTypeListWithParams:v13];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
  }

  v70 = *MEMORY[0x277CD5188];
  v16 = [v14 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v60 = v14;
  if ([v18 isEqual:*MEMORY[0x277CD50B0]])
  {
    v66 = *MEMORY[0x277CD51A0];
    v19 = [v14 objectForKeyedSubscript:?];
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

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v79;
      v73 = *MEMORY[0x277CD50D8];
      v69 = *MEMORY[0x277CD5180];
      v63 = 1;
      v64 = *v79;
      v26 = *MEMORY[0x277CD50D0];
      v65 = v22;
      do
      {
        v27 = 0;
        v67 = v24;
        do
        {
          if (*v79 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v78 + 1) + 8 * v27);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v27;
            v29 = [v28 objectForKeyedSubscript:v73];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            v31 = v30;

            v32 = [v31 objectForKeyedSubscript:v70];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;

            v71 = v34;
            if ([v34 isEqual:v69])
            {
              v35 = [v31 objectForKeyedSubscript:v66];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v38 = v37;
              v39 = [v38 countByEnumeratingWithState:&v74 objects:v82 count:16];
              if (v39)
              {
                v40 = v39;
                v68 = v31;
                v41 = *v75;
                while (2)
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v75 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v74 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v44 = [v43 objectForKeyedSubscript:v26];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v45 = v44;
                      }

                      else
                      {
                        v45 = 0;
                      }

                      v46 = v45;

                      if ([v46 isEqual:&unk_283EE9018])
                      {
                        v47 = [v43 objectForKeyedSubscript:v73];
                        objc_opt_class();
                        v48 = (objc_opt_isKindOfClass() & 1) != 0 ? v47 : 0;
                        v49 = v48;

                        v50 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v49 forIdentify:@"deviceType"];

                        v51 = v50;
                        objc_opt_class();
                        v52 = (objc_opt_isKindOfClass() & 1) != 0 ? v51 : 0;
                        v53 = v52;

                        v54 = [v53 isEqual:&unk_283EE9030];
                        if (v54)
                        {

                          v63 = 0;
                          goto LABEL_51;
                        }
                      }
                    }
                  }

                  v40 = [v38 countByEnumeratingWithState:&v74 objects:v82 count:16];
                  if (v40)
                  {
                    continue;
                  }

                  break;
                }

LABEL_51:
                v31 = v68;
              }

              v25 = v64;
              v22 = v65;
              v24 = v67;
            }

            v27 = v72;

            v18 = v71;
          }

          ++v27;
        }

        while (v27 != v24);
        v24 = [v22 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v24);
    }

    else
    {
      v63 = 1;
    }

    v55 = v15;
  }

  else
  {
    v63 = 1;
    v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    v22 = v15;
  }

  if (v55)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v55);
  }

  v56 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v57 = [v62 readAttributePartsListWithParams:v56];

  v58 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v57 forIdentify:@"partsList"];
  if (!v58)
  {
    v59 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];

    v55 = v59;
  }

  (*(handlerCopy + 2))(handlerCopy, v63 & 1, v58, v55);
}

- (void)_identifyClusterPresentAtEndpoint:(unsigned __int16)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  v52 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  topology = [(HMMTRIdentifyDevice *)self topology];

  if (topology)
  {
    topology2 = [(HMMTRIdentifyDevice *)self topology];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:endpointCopy];
    v10 = [topology2 getClustersInUseAtEndpoint:v9];

    v11 = [v10 containsObject:&unk_283EE9000];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      *buf = 138543874;
      v47 = v15;
      v48 = 1024;
      v49 = endpointCopy;
      v50 = 2112;
      v51 = v16;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Identify cluster found at endpoint %u: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    device = [(HMMTRIdentifyDevice *)self device];
    queue = [(HMMTRIdentifyDevice *)self queue];
    v10 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:device endpoint:endpointCopy queue:queue];

    v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v20 = [v10 readAttributeServerListWithParams:v19];

    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"serverList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    v27 = v26;
    if (v23)
    {
      v40 = v20;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543874;
        v47 = v28;
        v48 = 1024;
        v49 = endpointCopy;
        v50 = 2112;
        v51 = v23;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Found endpoint %u clusters: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v24);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v29 = v23;
      v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v42;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v42 != v32)
            {
              objc_enumerationMutation(v29);
            }

            if ([*(*(&v41 + 1) + 8 * i) isEqualToNumber:&unk_283EE9000])
            {
              v34 = objc_autoreleasePoolPush();
              v35 = selfCopy2;
              v36 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = HMFGetLogIdentifier();
                *buf = 138543618;
                v47 = v37;
                v48 = 1024;
                v49 = endpointCopy;
                _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Found identify cluster at endpoint: %u", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v34);
              handlerCopy[2](handlerCopy, 1, 0);

              goto LABEL_23;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      handlerCopy[2](handlerCopy, 0, 0);
LABEL_23:
      v20 = v40;
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v38;
        v48 = 1024;
        v49 = endpointCopy;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the server list at endpoint: %u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v24);
      v39 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      (handlerCopy)[2](handlerCopy, 0, v39);
    }
  }
}

- (HMMTRIdentifyDevice)initWithDevice:(id)device topology:(id)topology queue:(id)queue
{
  deviceCopy = device;
  topologyCopy = topology;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HMMTRIdentifyDevice;
  v12 = [(HMMTRIdentifyDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    objc_storeStrong(&v13->_topology, topology);
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36, &__block_literal_global_11684);
  }

  v3 = logCategory__hmf_once_v37;

  return v3;
}

uint64_t __34__HMMTRIdentifyDevice_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v37;
  logCategory__hmf_once_v37 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end