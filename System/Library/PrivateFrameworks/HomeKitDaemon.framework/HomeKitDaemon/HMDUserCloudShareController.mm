@interface HMDUserCloudShareController
+ (id)identifierForConnection:(id)connection;
+ (id)logCategory;
- (HMDUserCloudShareController)initWithDelegate:(id)delegate queue:(id)queue pendingRequestTimeoutInterval:(double)interval;
- (HMDUserCloudShareControllerDelegate)delegate;
- (NSHashTable)connectedClients;
- (NSMutableDictionary)containerIdToConnectionIdentifierMap;
- (id)_connectionForContainerID:(id)d;
- (void)_addRequestToPending:(id)pending;
- (void)_deregisterXpcClient:(id)client;
- (void)_handlePendingRequestTimeouts;
- (void)_handleShareForRemoteClientRequest:(id)request;
- (void)_invalidateXpcClient:(id)client;
- (void)_registerWithXpcClient:(id)client containerIDs:(id)ds;
- (void)_removeTimerIfNotNeeded;
- (void)_resumeRequestsForContainerID:(id)d connection:(id)connection;
- (void)_sendRepairRequest:(id)request toConnection:(id)connection;
- (void)_sendShareRequest:(id)request toConnection:(id)connection;
- (void)_startTimerIfNeeded;
- (void)deregisterXpcClient:(id)client;
- (void)handleShareForRemoteClientRequest:(id)request home:(id)home completionHandler:(id)handler;
- (void)handleShareRepairForRemoteClientRequest:(id)request home:(id)home completion:(id)completion;
- (void)invalidateXpcClient:(id)client;
- (void)registerWithXpcClient:(id)client containerIDs:(id)ds;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDUserCloudShareController

- (HMDUserCloudShareControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidateXpcClient:(id)client
{
  clientCopy = client;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDUserCloudShareController_invalidateXpcClient___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_invalidateXpcClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectedClients = [(HMDUserCloudShareController *)self connectedClients];
  v7 = [connectedClients containsObject:clientCopy];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = clientCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Found invalidated connection %@ will de-register.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUserCloudShareController *)selfCopy _deregisterXpcClient:clientCopy];
  }
}

- (void)deregisterXpcClient:(id)client
{
  clientCopy = client;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDUserCloudShareController_deregisterXpcClient___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_deregisterXpcClient:(id)client
{
  v40 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v26 = clientCopy;
  v6 = [HMDUserCloudShareController identifierForConnection:clientCopy];
  containerIdToConnectionIdentifierMap = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
  allKeys = [containerIdToConnectionIdentifierMap allKeys];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = allKeys;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v27 = *v30;
    do
    {
      v13 = 0;
      v28 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        containerIdToConnectionIdentifierMap2 = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
        v16 = [containerIdToConnectionIdentifierMap2 objectForKeyedSubscript:v14];

        if ([v16 isEqualToString:v6])
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            selfCopy2 = self;
            v21 = v9;
            v23 = v22 = v6;
            *buf = 138543874;
            v34 = v23;
            v35 = 2112;
            v36 = v22;
            v37 = 2112;
            v38 = v14;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Deregistering connection %@ from container %@.", buf, 0x20u);

            v6 = v22;
            v9 = v21;
            self = selfCopy2;
            v12 = v27;
          }

          objc_autoreleasePoolPop(v17);
          containerIdToConnectionIdentifierMap3 = [(HMDUserCloudShareController *)selfCopy containerIdToConnectionIdentifierMap];
          [containerIdToConnectionIdentifierMap3 removeObjectForKey:v14];

          v11 = v28;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v11);
  }

  connectedClients = [(HMDUserCloudShareController *)self connectedClients];
  [connectedClients removeObject:v26];
}

- (void)registerWithXpcClient:(id)client containerIDs:(id)ds
{
  clientCopy = client;
  dsCopy = ds;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDUserCloudShareController_registerWithXpcClient_containerIDs___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = clientCopy;
  v13 = dsCopy;
  v9 = dsCopy;
  v10 = clientCopy;
  dispatch_async(clientQueue, block);
}

- (void)_registerWithXpcClient:(id)client containerIDs:(id)ds
{
  v55 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  dsCopy = ds;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v38 = [HMDUserCloudShareController identifierForConnection:clientCopy];
  if (v38)
  {
    v35 = dsCopy;
    v36 = clientCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = dsCopy;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          containerIdToConnectionIdentifierMap = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
          v15 = [containerIdToConnectionIdentifierMap objectForKeyedSubscript:v13];

          if (v15 && ([v15 isEqual:v38] & 1) == 0)
          {
            v21 = objc_autoreleasePoolPush();
            selfCopy = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543874;
              v49 = v24;
              v50 = 2112;
              v51 = v15;
              v52 = 2112;
              v53 = v13;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Another connection with identifier: %@ is registered for the same container: %@.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v21);
          }

          else
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543874;
              v49 = v19;
              v50 = 2112;
              v51 = v38;
              v52 = 2112;
              v53 = v13;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Registering connection identifier: %@ for container: %@.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v16);
            containerIdToConnectionIdentifierMap2 = [(HMDUserCloudShareController *)selfCopy2 containerIdToConnectionIdentifierMap];
            [containerIdToConnectionIdentifierMap2 setObject:v38 forKeyedSubscript:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v10);
    }

    connectedClients = [(HMDUserCloudShareController *)self connectedClients];
    clientCopy = v36;
    [connectedClients addObject:v36];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = obj;
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(HMDUserCloudShareController *)self _resumeRequestsForContainerID:*(*(&v39 + 1) + 8 * j) connection:v36, v35];
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v28);
    }

    dsCopy = v35;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot register a client without a valid connection identifier.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
  }
}

- (void)timerDidFire:(id)fire
{
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUserCloudShareController_timerDidFire___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __44__HMDUserCloudShareController_timerDidFire___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handlePendingRequestTimeouts];
  [*(a1 + 32) setPendingRequestTimer:0];
  v2 = *(a1 + 32);

  return [v2 _startTimerIfNeeded];
}

- (NSHashTable)connectedClients
{
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectedClients = self->_connectedClients;

  return connectedClients;
}

- (NSMutableDictionary)containerIdToConnectionIdentifierMap
{
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  containerIdToConnectionIdentifierMap = self->_containerIdToConnectionIdentifierMap;

  return containerIdToConnectionIdentifierMap;
}

- (void)handleShareRepairForRemoteClientRequest:(id)request home:(id)home completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  homeCopy = home;
  completionCopy = completion;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v12 = [requestCopy objectForKeyedSubscript:*MEMORY[0x277CD1468]];
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

  v15 = [requestCopy objectForKeyedSubscript:*MEMORY[0x277CD1498]];
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

  v36 = 0;
  v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v36];
  v35 = v36;
  if (v14)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing required items in payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    delegate = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Could not decode payload" reason:@"Unable to find required items in payload" suggestion:0];
    completionCopy[2](completionCopy, delegate);
  }

  else
  {
    delegate = [(HMDUserCloudShareController *)self delegate];
    v25 = [HMDUserCloudShareRepairRequest alloc];
    v26 = [delegate currentDateForUserCloudShareController:self];
    v34 = homeCopy;
    v27 = [(HMDUserCloudShareRepairRequest *)v25 initWithStartDate:v26 containerID:v14 home:homeCopy repairInfo:v18];

    v28 = [(HMDUserCloudShareController *)self _connectionForContainerID:v14];
    v29 = v28;
    if (v28)
    {
      [(HMDUserCloudShareController *)self _sendRepairRequest:v27 toConnection:v28];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v32;
        v39 = 2112;
        v40 = v27;
        v41 = 2112;
        v42 = v14;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Add repair request %@ to pending for %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      [(HMDUserCloudShareController *)selfCopy2 _addRequestToPending:v27];
      [delegate userCloudShareController:selfCopy2 wakeClientForRepairWithContainerID:v14];
    }

    completionCopy[2](completionCopy, 0);

    homeCopy = v34;
  }
}

- (void)handleShareForRemoteClientRequest:(id)request home:(id)home completionHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  homeCopy = home;
  handlerCopy = handler;
  v10 = requestCopy;
  v11 = homeCopy;
  v66 = handlerCopy;
  v70 = v11;
  if (v10)
  {
    v12 = v11;
    v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1478]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v67 = v15;
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v15];
    uuid = [v12 uuid];
    LODWORD(v15) = [uuid isEqual:v16];

    if (v15)
    {
      v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1470]];
      v19 = __findUserWithUUID(v18, v12);
      v20 = v19;

      v21 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD14A8]];
      v22 = __findUserWithUUID(v21, v12);
      v23 = v22;

      v24 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD14B8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      v27 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD14B0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      v30 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1468]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v19 && v22 && v25 && v31 && v28)
      {
        v33 = 0;
      }

      else
      {
        v40 = v10;
        v41 = objc_autoreleasePoolPush();
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v77 = v43;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode all required items from payload.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v41);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Could not decode payload" reason:@"Unable to decode all required items" suggestion:0];
        v10 = v40;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v77 = v39;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Messaged home had different identifier from payload.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Inconsistent payload home and originating home" reason:@"Messaged home must match home in payload" suggestion:0];
      v19 = 0;
      v22 = 0;
      v25 = 0;
      v28 = 0;
      v31 = 0;
    }

    handlerCopy = v66;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not decode Remote ClientRequestPayload.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Could not decode payload" reason:@"Need a valid payload" suggestion:0];
    v19 = 0;
    v22 = 0;
    v25 = 0;
    v28 = 0;
    v31 = 0;
  }

  v68 = v10;
  v44 = v19;
  v45 = v22;
  v46 = v25;
  v47 = v28;
  v48 = v31;
  v49 = v48;
  if (v33)
  {
    v65 = v48;
    v50 = objc_autoreleasePoolPush();
    selfCopy = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v54 = v53 = handlerCopy;
      *buf = 138543362;
      v77 = v54;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Could not decode payload.", buf, 0xCu);

      handlerCopy = v53;
    }

    objc_autoreleasePoolPop(v50);
    handlerCopy[2](handlerCopy, 0, v33);
    v55 = v70;
    v56 = v65;
  }

  else
  {
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 138412290;
      v77 = v49;
      _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MultiUser.Share.Req", "container=%{signpost.description:attribute}@ ", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__HMDUserCloudShareController_handleShareForRemoteClientRequest_home_completionHandler___block_invoke;
    aBlock[3] = &unk_27867A5B0;
    aBlock[4] = self;
    v75 = 0xEEEEB0B5B2B2EEEELL;
    v74 = handlerCopy;
    v64 = _Block_copy(aBlock);
    v58 = [HMDUserCloudShareEstablishShareRequest alloc];
    delegate = [(HMDUserCloudShareController *)self delegate];
    [delegate currentDateForUserCloudShareController:self];
    v60 = v56 = v49;
    v55 = v70;
    v61 = [(HMDUserCloudShareEstablishShareRequest *)v58 initWithHome:v70 fromUser:v44 toUser:v45 encodedShareURL:v46 shareToken:v47 containerID:v56 currentDate:v60 completion:v64];

    clientQueue = [(HMDUserCloudShareController *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDUserCloudShareController_handleShareForRemoteClientRequest_home_completionHandler___block_invoke_109;
    block[3] = &unk_27868A750;
    block[4] = self;
    v72 = v61;
    v63 = v61;
    dispatch_async(clientQueue, block);

    handlerCopy = v66;
    v33 = 0;
  }
}

void __88__HMDUserCloudShareController_handleShareForRemoteClientRequest_home_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = 138412290;
    v11 = v6;
    _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MultiUser.Share.Req", "error=%{signpost.description:attribute}@ ", &v10, 0xCu);
  }

  (*(a1[5] + 16))();
}

- (void)_handleShareForRemoteClientRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  containerID = [requestCopy containerID];
  v7 = [(HMDUserCloudShareController *)self _connectionForContainerID:containerID];

  if (v7)
  {
    [(HMDUserCloudShareController *)self _sendShareRequest:requestCopy toConnection:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      containerID2 = [requestCopy containerID];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = containerID2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No process registered to handle container %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUserCloudShareController *)selfCopy _addRequestToPending:requestCopy];
    delegate = [(HMDUserCloudShareController *)selfCopy delegate];
    containerID3 = [requestCopy containerID];
    [delegate userCloudShareController:selfCopy wakeClientWithContainerID:containerID3];
  }
}

- (void)_sendRepairRequest:(id)request toConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  connectionCopy = connection;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v12;
    v19 = 2112;
    v20 = requestCopy;
    v21 = 2112;
    v22 = connectionCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending repair request %@ to client %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  delegate = [(HMDUserCloudShareController *)selfCopy delegate];
  repairInfo = [requestCopy repairInfo];
  home = [requestCopy home];
  containerID = [requestCopy containerID];
  [delegate userCloudShareController:selfCopy sendRepairInfo:repairInfo toConnection:connectionCopy home:home containerID:containerID];
}

- (void)_sendShareRequest:(id)request toConnection:(id)connection
{
  connectionCopy = connection;
  requestCopy = request;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  delegate = [(HMDUserCloudShareController *)self delegate];
  fromUser = [requestCopy fromUser];
  toUser = [requestCopy toUser];
  home = [requestCopy home];
  encodedShareURL = [requestCopy encodedShareURL];
  shareToken = [requestCopy shareToken];
  containerID = [requestCopy containerID];
  completion = [requestCopy completion];

  [delegate userCloudShareController:self sendShareRequestMessageWithConnection:connectionCopy fromUser:fromUser toUser:toUser home:home shareURL:encodedShareURL shareToken:shareToken containerID:containerID completion:completion];
}

- (void)_resumeRequestsForContainerID:(id)d connection:(id)connection
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  connectionCopy = connection;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  pendingRequests = [(HMDUserCloudShareController *)self pendingRequests];
  v9 = objc_msgSend_copy(pendingRequests);

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v38;
    *&v11 = 138543362;
    v31 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        containerID = [v15 containerID];
        v17 = [containerID isEqualToString:dCopy];

        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v21;
            v43 = 2112;
            v44 = v15;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Resuming request %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          v22 = v15;
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

          v25 = v22;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;

          if (v24)
          {
            [(HMDUserCloudShareController *)v19 _sendShareRequest:v24 toConnection:connectionCopy];
          }

          else if (v27)
          {
            [(HMDUserCloudShareController *)v19 _sendRepairRequest:v27 toConnection:connectionCopy];
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v28 = v19;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              *buf = v31;
              v42 = v32;
              _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not determine request type.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(context);
          }

          pendingRequests2 = [(HMDUserCloudShareController *)v19 pendingRequests];
          [pendingRequests2 removeObject:v25];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v12);
  }

  [(HMDUserCloudShareController *)selfCopy _removeTimerIfNotNeeded];
}

- (void)_handlePendingRequestTimeouts
{
  v37 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  pendingRequests = [(HMDUserCloudShareController *)self pendingRequests];
  v5 = objc_msgSend_copy(pendingRequests);

  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    *&v7 = 138543618;
    v27 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        startDate = [v11 startDate];
        [startDate timeIntervalSinceNow];
        v14 = -v13;
        [(HMDUserCloudShareController *)self pendingRequestTimeoutInterval];
        v16 = v15;

        if (v16 < v14)
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v27;
            v33 = v20;
            v34 = 2112;
            v35 = v11;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Timing out pending request %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          v21 = v11;
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

          if (v23)
          {
            completion = [v23 completion];
            v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"No process received pending request in time" reason:@"No process received share message in required time." suggestion:0];
            (completion)[2](completion, 0, v25);
          }

          pendingRequests2 = [(HMDUserCloudShareController *)selfCopy pendingRequests];
          [pendingRequests2 removeObject:v21];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v8);
  }
}

- (void)_addRequestToPending:(id)pending
{
  v15 = *MEMORY[0x277D85DE8];
  pendingCopy = pending;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = pendingCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding request to pending %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  pendingRequests = [(HMDUserCloudShareController *)selfCopy pendingRequests];
  [pendingRequests addObject:pendingCopy];

  [(HMDUserCloudShareController *)selfCopy _startTimerIfNeeded];
}

- (void)_removeTimerIfNotNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  pendingRequests = [(HMDUserCloudShareController *)self pendingRequests];
  if ([pendingRequests count])
  {
  }

  else
  {
    pendingRequestTimer = [(HMDUserCloudShareController *)self pendingRequestTimer];

    if (pendingRequestTimer)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v11 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing timer as there are no more pending requests", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      [(HMDUserCloudShareController *)selfCopy setPendingRequestTimer:0];
    }
  }
}

- (void)_startTimerIfNeeded
{
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  pendingRequests = [(HMDUserCloudShareController *)self pendingRequests];
  if ([pendingRequests count])
  {
    pendingRequestTimer = [(HMDUserCloudShareController *)self pendingRequestTimer];

    if (pendingRequestTimer)
    {
      return;
    }

    delegate = [(HMDUserCloudShareController *)self delegate];
    [(HMDUserCloudShareController *)self pendingRequestTimeoutInterval];
    v6 = [delegate userCloudShareController:self timerWithInterval:?];
    [(HMDUserCloudShareController *)self setPendingRequestTimer:v6];

    pendingRequestTimer2 = [(HMDUserCloudShareController *)self pendingRequestTimer];
    [pendingRequestTimer2 setDelegate:self];

    pendingRequests = [(HMDUserCloudShareController *)self pendingRequestTimer];
    [pendingRequests resume];
  }
}

- (id)_connectionForContainerID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientQueue = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  containerIdToConnectionIdentifierMap = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
  v7 = [containerIdToConnectionIdentifierMap objectForKeyedSubscript:dCopy];

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    connectedClients = [(HMDUserCloudShareController *)self connectedClients];
    v9 = [connectedClients countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(connectedClients);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [HMDUserCloudShareController identifierForConnection:v12];
          if ([v13 isEqualToString:v7])
          {
            v9 = v12;

            goto LABEL_12;
          }
        }

        v9 = [connectedClients countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDUserCloudShareController)initWithDelegate:(id)delegate queue:(id)queue pendingRequestTimeoutInterval:(double)interval
{
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = HMDUserCloudShareController;
  v10 = [(HMDUserCloudShareController *)&v20 init];
  if (v10)
  {
    v11 = HMFGetOSLogHandle();
    logger = v10->_logger;
    v10->_logger = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeStrong(&v10->_clientQueue, queue);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    connectedClients = v10->_connectedClients;
    v10->_connectedClients = weakObjectsHashTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    containerIdToConnectionIdentifierMap = v10->_containerIdToConnectionIdentifierMap;
    v10->_containerIdToConnectionIdentifierMap = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    pendingRequests = v10->_pendingRequests;
    v10->_pendingRequests = array;

    v10->_pendingRequestTimeoutInterval = interval;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_137247 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_137247, &__block_literal_global_137248);
  }

  v3 = logCategory__hmf_once_v28_137249;

  return v3;
}

void __42__HMDUserCloudShareController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v28_137249;
  logCategory__hmf_once_v28_137249 = v0;
}

+ (id)identifierForConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processInfo = [connectionCopy processInfo];
  processInfo2 = [connectionCopy processInfo];
  bundleIdentifier = [processInfo2 bundleIdentifier];

  if (bundleIdentifier)
  {
    v8 = bundleIdentifier;
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
      v17 = connectionCopy;
      v18 = 2112;
      v19 = processInfo;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get identifier for connection: %@ process info: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  return bundleIdentifier;
}

@end