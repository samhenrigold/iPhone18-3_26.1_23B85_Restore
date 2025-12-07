@interface HMMTRFabricConnectionRequest
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_hasActiveAccessoryConnections;
- (BOOL)_hasPendingAccessoryConnections;
- (BOOL)_removeFromActiveIPConnections:(id)connections;
- (BOOL)_removeFromActiveThreadConnections:(id)connections;
- (BOOL)_removeFromActiveThreadWEDConnections:(id)connections;
- (BOOL)_tryMergeIntoExistingConnection:(id)connection;
- (BOOL)abortOperationsForConnectionRequest:(id)request reason:(id)reason;
- (BOOL)hasPendingHighPriorityConnectionRequest;
- (BOOL)hasPendingLowPriorityConnectionRequestsOnly;
- (BOOL)isEqual:(id)equal;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRFabricConnectionRequest)initWithQueue:(id)queue browser:(id)browser fabricUUID:(id)d systemCommissionerFabric:(BOOL)fabric;
- (id)activeIPConnectionRequests;
- (id)activeThreadConnectionRequests;
- (id)activeThreadWEDConnectionRequests;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)pendingConnectionRequests;
- (id)privateDescription;
- (unint64_t)hash;
- (void)_addToActiveIPConnections:(id)connections;
- (void)_addToActiveThreadConnections:(id)connections;
- (void)_addToActiveThreadWEDConnections:(id)connections;
- (void)_addToPendingConnections:(id)connections;
- (void)_calculateFabricIdleTime;
- (void)_connectPendingConnections;
- (void)_kickIdleTimer;
- (void)_removeFromPendingConnections:(id)connections;
- (void)_restartConnectionIdleTimer:(double)timer;
- (void)_updateActiveThreadWEDConnectionsIdleTime:(unsigned __int8)time;
- (void)_updateConnectionIdleTime:(unsigned __int8)time;
- (void)abortAllLowPriorityOperationsWithReason:(id)reason;
- (void)abortAllOperationsWithReason:(id)reason;
- (void)connectToAccessoryWhenAllowed:(id)allowed;
- (void)dispatchBlock:(id)block;
- (void)notifyOperationsCompleted:(id)completed;
- (void)operationsCompletedForAccessoryConnectionRequest:(id)request;
- (void)retryOperations;
- (void)startOperations;
- (void)stopOperations;
- (void)suspendOperations;
- (void)timerDidFire:(id)fire;
- (void)updateAllConnectionIdleTimeoutsToMinimum;
@end

@implementation HMMTRFabricConnectionRequest

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (unint64_t)hash
{
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  v3 = [fabricUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fabricUUID = [(HMMTRFabricConnectionRequest *)v5 fabricUUID];
    fabricUUID2 = [(HMMTRFabricConnectionRequest *)self fabricUUID];
    v8 = [fabricUUID isEqual:fabricUUID2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (id)attributeDescriptions
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  v21 = [v3 initWithName:@"FabricUUID" value:fabricUUID];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRFabricConnectionRequest *)self systemCommissionerFabric];
  v20 = HMFBooleanToString();
  v5 = [v4 initWithName:@"SystemCommissionerFabric" value:v20];
  v23[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  activeIPConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeIPConnectionRequests];
  v8 = [v6 initWithName:@"ActiveIPRequests:" value:activeIPConnectionRequests];
  v23[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  activeThreadConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadConnectionRequests];
  v11 = [v9 initWithName:@"ActiveThreadRequests:" value:activeThreadConnectionRequests];
  v23[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v14 = [v12 initWithName:@"ActiveThreadWEDRequests:" value:activeThreadWEDConnectionRequests];
  v23[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  v17 = [v15 initWithName:@"PendingRequests:" value:pendingConnectionRequests];
  v23[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];

  return v18;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, fabricUUID];

  return v6;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  fabricUUID = [(HMMTRFabricConnectionRequest *)self fabricUUID];
  systemCommissionerFabric = [(HMMTRFabricConnectionRequest *)self systemCommissionerFabric];
  v6 = &stru_283ED2308;
  if (systemCommissionerFabric)
  {
    v6 = @"/ system commissioner";
  }

  v7 = [v3 stringWithFormat:@"%@%@", fabricUUID, v6];

  return v7;
}

- (void)dispatchBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMMTRFabricConnectionRequest *)self workQueue];
  dispatch_async(workQueue, blockCopy);
}

- (void)updateAllConnectionIdleTimeoutsToMinimum
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    fabricUUID = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
    *buf = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = fabricUUID;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@updateAllConnectionIdleTimeoutsToMinimum for fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  os_unfair_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests array];
  [orderedSet addObjectsFromArray:array];

  array2 = [(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests array];
  [orderedSet addObjectsFromArray:array2];

  array3 = [(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests array];
  [orderedSet addObjectsFromArray:array3];

  array4 = [(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests array];
  [orderedSet addObjectsFromArray:array4];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = orderedSet;
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v17 + 1) + 8 * v16++) updateConnectionIdleTime:{0, v17}];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)abortAllLowPriorityOperationsWithReason:(id)reason
{
  v58 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  array4 = [(NSMutableOrderedSet *)self->_pendingConnectionRequests array];
  [array3 addObjectsFromArray:array4];

  array5 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests array];
  [array2 addObjectsFromArray:array5];

  array6 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests array];
  [array addObjectsFromArray:array6];

  array7 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests array];
  [array addObjectsFromArray:array7];

  os_unfair_lock_unlock(&self->_lock);
  hasOnlyQueuedLowPriorityRequests = [(HMMTRFabricConnectionRequest *)self hasOnlyQueuedLowPriorityRequests];
  v12 = [array count] == 0;
  array8 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = array3;
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v57 count:16];
  v16 = v12 && hasOnlyQueuedLowPriorityRequests;
  if (v15)
  {
    v17 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        if ([v19 hasPendingLowPriorityConnectionRequest])
        {
          [array8 addObject:v19];
        }

        else
        {
          v16 = 0;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v15);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = array2;
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v21)
  {
    v22 = *v44;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v43 + 1) + 8 * j);
        if ([v24 hasPendingLowPriorityConnectionRequest])
        {
          [array8 addObject:v24];
        }

        else
        {
          v16 = 0;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v21);
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy = self;
  v27 = HMFGetOSLogHandle();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v28)
    {
      v29 = HMFGetLogIdentifier();
      fabricUUID = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
      *buf = 138543618;
      v53 = v29;
      v54 = 2112;
      v55 = fabricUUID;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@abortAllLowPriorityOperationsWithReason for fabric: %@ - marking as complete, only had low priority requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    [(HMMTRFabricConnectionRequest *)selfCopy setActive:0];
    idleTimer = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
    [idleTimer suspend];

    if (![array8 count])
    {
      [(HMMTRFabricConnectionRequest *)selfCopy notifyOperationsCompleted:reasonCopy];
      goto LABEL_37;
    }
  }

  else
  {
    if (v28)
    {
      v32 = HMFGetLogIdentifier();
      fabricUUID2 = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
      *buf = 138543618;
      v53 = v32;
      v54 = 2112;
      v55 = fabricUUID2;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@abortAllLowPriorityOperationsWithReason for fabric: %@ - fabricRequests is not low priority only, letting idle timer expire normally", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = array8;
  v35 = [v34 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v35)
  {
    v36 = *v40;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v39 + 1) + 8 * k) abortAllPendingOperations:reasonCopy];
      }

      v35 = [v34 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v35);
  }

LABEL_37:
}

- (void)abortAllOperationsWithReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    fabricUUID = [(HMMTRFabricConnectionRequest *)selfCopy fabricUUID];
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = fabricUUID;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@abortAllOperations for fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMMTRFabricConnectionRequest *)selfCopy setActive:0];
  idleTimer = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
  [idleTimer suspend];

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  os_unfair_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests array];
  [orderedSet addObjectsFromArray:array];

  array2 = [(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests array];
  [orderedSet addObjectsFromArray:array2];

  array3 = [(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests array];
  [orderedSet addObjectsFromArray:array3];

  array4 = [(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests array];
  [orderedSet addObjectsFromArray:array4];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = orderedSet;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:{12, v22}];
        [v20 abortAllPendingOperations:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  [(HMMTRFabricConnectionRequest *)selfCopy notifyOperationsCompleted:reasonCopy];
}

- (void)notifyOperationsCompleted:(id)completed
{
  completedCopy = completed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMMTRFabricConnectionRequest_notifyOperationsCompleted___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = completedCopy;
  v5 = completedCopy;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v6];
}

void __58__HMMTRFabricConnectionRequest_notifyOperationsCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browser];
  [v2 _operationsCompletedForFabricConnectionRequest:*(a1 + 32) reason:*(a1 + 40)];
}

- (BOOL)abortOperationsForConnectionRequest:(id)request reason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reasonCopy = reason;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    nodeID = [requestCopy nodeID];
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = nodeID;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@abortOperationsForConnectionRequest for accessoryConnectionRequest for nodeID: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v13 = [(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests indexOfObject:requestCopy];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableOrderedSet *)selfCopy->_activeIPConnectionRequests objectAtIndex:v13], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests indexOfObject:requestCopy];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableOrderedSet *)selfCopy->_activeThreadConnectionRequests objectAtIndex:v15], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests indexOfObject:requestCopy];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL || ([(NSMutableOrderedSet *)selfCopy->_activeThreadWEDConnectionRequests objectAtIndex:v16], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v18 = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests indexOfObject:requestCopy];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        else
        {
          v14 = [(NSMutableOrderedSet *)selfCopy->_pendingConnectionRequests objectAtIndex:v18];
          os_unfair_lock_unlock(&selfCopy->_lock);
          if (v14)
          {
            goto LABEL_10;
          }
        }

        v17 = 0;
        goto LABEL_15;
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_10:
  [v14 abortAllPendingOperations:reasonCopy];

  v17 = 1;
LABEL_15:

  return v17;
}

- (void)retryOperations
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMMTRFabricConnectionRequest *)self active])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__HMMTRFabricConnectionRequest_retryOperations__block_invoke;
    v7[3] = &unk_2786F0CA8;
    v7[4] = self;
    [(HMMTRFabricConnectionRequest *)self dispatchBlock:v7];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = selfCopy;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalid state, expecting to be active for retryOperations for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t __47__HMMTRFabricConnectionRequest_retryOperations__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@retryOperations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [*(a1 + 32) browser];
  [v11 operationsStartedForFabricConnectionRequest:*(a1 + 32)];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(*(a1 + 32) + 24);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) server];
        [v17 triggerEstablishingMatterSubscription];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return [*(a1 + 32) _connectPendingConnections];
}

- (void)suspendOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__HMMTRFabricConnectionRequest_suspendOperations__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v2];
}

void __49__HMMTRFabricConnectionRequest_suspendOperations__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@suspendOperations", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) setActive:0];
  if (([*(a1 + 32) _hasActiveAccessoryConnections] & 1) == 0)
  {
    v11 = [*(a1 + 32) idleTimer];
    [v11 suspend];

    v12 = [*(a1 + 32) idleTimer];
    [v12 fire];
  }
}

- (void)stopOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__HMMTRFabricConnectionRequest_stopOperations__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v2];
}

void __46__HMMTRFabricConnectionRequest_stopOperations__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@stopOperations", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) setActive:0];
  v11 = [*(a1 + 32) idleTimer];
  [v11 suspend];
}

- (void)startOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__HMMTRFabricConnectionRequest_startOperations__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v2];
}

uint64_t __47__HMMTRFabricConnectionRequest_startOperations__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@startOperations", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [*(a1 + 32) browser];
  [v11 operationsStartedForFabricConnectionRequest:*(a1 + 32)];

  [*(a1 + 32) setActive:1];
  return [*(a1 + 32) _connectPendingConnections];
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@No activity on fabric, releasing connection", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:3];
  [(HMMTRFabricConnectionRequest *)v10 abortAllOperationsWithReason:v13];
}

- (void)_kickIdleTimer
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@_kickIdleTimer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idleTimer = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
  [idleTimer resume];
}

- (BOOL)_hasPendingAccessoryConnections
{
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  v3 = [pendingConnectionRequests count] != 0;

  return v3;
}

- (BOOL)_hasActiveAccessoryConnections
{
  activeIPConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeIPConnectionRequests];
  v4 = [activeIPConnectionRequests count];

  if (v4)
  {
    return 1;
  }

  activeThreadConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadConnectionRequests];
  v6 = [activeThreadConnectionRequests count];

  if (v6)
  {
    return 1;
  }

  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v7 = [activeThreadWEDConnectionRequests count] != 0;

  return v7;
}

- (void)operationsCompletedForAccessoryConnectionRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__HMMTRFabricConnectionRequest_operationsCompletedForAccessoryConnectionRequest___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v6];
}

void __81__HMMTRFabricConnectionRequest_operationsCompletedForAccessoryConnectionRequest___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) nodeID];
    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Marking operation complete for accessory request: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (([*(a1 + 32) _removeFromActiveIPConnections:*(a1 + 40)] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_removeFromActiveThreadConnections:", *(a1 + 40)) & 1) == 0 && (objc_msgSend(*(a1 + 32), "_removeFromActiveThreadWEDConnections:", *(a1 + 40)) & 1) == 0)
  {
    [*(a1 + 32) _removeFromPendingConnections:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) idleTimer];
  if ([v7 isRunning] & 1) != 0 || (objc_msgSend(*(a1 + 32), "_hasActiveAccessoryConnections"))
  {

LABEL_10:
    [*(a1 + 32) _connectPendingConnections];
    return;
  }

  v8 = [*(a1 + 32) _hasPendingAccessoryConnections];

  if (v8)
  {
    goto LABEL_10;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Marking fabric as idle due to all pending accessory lifeTimer expiring", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 32);
  v14 = [v13 idleTimer];
  [v13 timerDidFire:v14];
}

- (void)_connectPendingConnections
{
  v55 = *MEMORY[0x277D85DE8];
  active = [(HMMTRFabricConnectionRequest *)self active];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (!active)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v31;
      v53 = 2112;
      v54 = selfCopy;
      v32 = "%{public}@Fabric is currently inactive, do not connect any pending connections: %@";
      v33 = v7;
      v34 = OS_LOG_TYPE_INFO;
      v35 = 22;
LABEL_37:
      _os_log_impl(&dword_22AEAE000, v33, v34, v32, buf, v35);
    }

LABEL_38:

    objc_autoreleasePoolPop(v4);
    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v8;
    v53 = 2112;
    v54 = selfCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connecting pending connections for fabric %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)selfCopy pendingConnectionRequests];
  v10 = [pendingConnectionRequests count];

  if (!v10)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = selfCopy;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v31;
      v32 = "%{public}@No more pending connections";
      v33 = v7;
      v34 = OS_LOG_TYPE_DEBUG;
      v35 = 12;
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  pendingConnectionRequests2 = [(HMMTRFabricConnectionRequest *)selfCopy pendingConnectionRequests];
  v13 = [pendingConnectionRequests2 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(pendingConnectionRequests2);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        if ([v17 hasPendingHighPriorityConnectionRequest])
        {
          [(HMMTRFabricConnectionRequest *)selfCopy _removeFromPendingConnections:v17];
          [(HMMTRFabricConnectionRequest *)selfCopy connectToAccessoryWhenAllowed:v17];
        }

        else
        {
          [orderedSet addObject:v17];
        }
      }

      v14 = [pendingConnectionRequests2 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v14);
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = orderedSet;
  v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * j);
        if ([v24 hasPendingLowPriorityConnectionRequest])
        {
          [(HMMTRFabricConnectionRequest *)selfCopy _removeFromPendingConnections:v24];
          [(HMMTRFabricConnectionRequest *)selfCopy connectToAccessoryWhenAllowed:v24];
        }

        else
        {
          [orderedSet2 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v21);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = orderedSet2;
  v26 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v36 + 1) + 8 * k);
        [(HMMTRFabricConnectionRequest *)selfCopy _removeFromPendingConnections:v30, v36];
        [(HMMTRFabricConnectionRequest *)selfCopy connectToAccessoryWhenAllowed:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v27);
  }
}

- (void)connectToAccessoryWhenAllowed:(id)allowed
{
  allowedCopy = allowed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMMTRFabricConnectionRequest_connectToAccessoryWhenAllowed___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = allowedCopy;
  v5 = allowedCopy;
  [(HMMTRFabricConnectionRequest *)self dispatchBlock:v6];
}

void __62__HMMTRFabricConnectionRequest_connectToAccessoryWhenAllowed___block_invoke(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) nodeID];
    *buf = 138543618;
    v133 = v5;
    v134 = 2112;
    v135 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@connectToAccessoryWhenAllowed - nodeID = %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 32);
    *buf = 138543618;
    v133 = v10;
    v134 = 2112;
    v135 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 40) setParentFabricRequest:*(a1 + 32)];
  if (([*(a1 + 40) hasPendingLowPriorityConnectionRequest] & 1) == 0)
  {
    [*(a1 + 32) setHasOnlyQueuedLowPriorityRequests:0];
  }

  if ([*(a1 + 32) _tryMergeIntoExistingConnection:*(a1 + 40)])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v133 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@merged into existing connection", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    return;
  }

  if ([*(a1 + 32) active])
  {
    v16 = [*(a1 + 40) server];
    v17 = v16;
    if (!v16)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [*(a1 + 40) nodeID];
        *buf = 138543618;
        v133 = v35;
        v134 = 2112;
        v135 = v36;
        _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Accessory server disappeared, aborting all requests for nodeID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v23 = *(a1 + 40);
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D0F1A0];
      v26 = 2;
      goto LABEL_23;
    }

    if ([v16 isDisabled])
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [*(a1 + 40) nodeID];
        *buf = 138543618;
        v133 = v21;
        v134 = 2112;
        v135 = v22;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Accessory server is disabled, aborting all requests for nodeID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = *(a1 + 40);
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D0F1A0];
      v26 = 12;
LABEL_23:
      v37 = [v24 errorWithDomain:v25 code:v26 userInfo:0];
      [v23 abortAllPendingOperations:v37];
LABEL_24:

LABEL_25:
      return;
    }

    v38 = [*(a1 + 32) browser];
    v39 = [*(a1 + 40) server];
    v40 = [v38 isOperationAllowedForAccessoryServer:v39];

    if ((v40 & 1) == 0)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = *(a1 + 32);
      v54 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
LABEL_36:

        objc_autoreleasePoolPop(v52);
        [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
        goto LABEL_25;
      }

      v55 = HMFGetLogIdentifier();
      v56 = [*(a1 + 40) nodeID];
      *buf = 138543618;
      v133 = v55;
      v134 = 2112;
      v135 = v56;
      v57 = "%{public}@Operations currently not allowed for this nodeID. Adding accessory connection request for nodeID %@ to pending queue";
LABEL_35:
      _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_INFO, v57, buf, 0x16u);

      goto LABEL_36;
    }

    v41 = [*(a1 + 32) browser];
    v42 = [v41 threadRadioManager];
    v43 = [v42 deviceSupportsThreadService];

    v44 = [v17 linkLayerType];
    if (!v44)
    {
      v45 = [v17 supportedLinkLayerTypes];
      v46 = [HMMTRUtilities supportedLinkLayerTypesContainsThread:v45];

      if (v46)
      {
        v47 = objc_autoreleasePoolPush();
        v48 = *(a1 + 32);
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          v51 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v133 = v50;
          v134 = 2112;
          v135 = v51;
          _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_INFO, "%{public}@Overriding linkLayerType unknown -> thread for nodeID %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v47);
        v44 = 4;
      }

      else
      {
        v44 = 0;
      }
    }

    if ([v17 isWEDDevice] && (objc_msgSend(v17, "eMACAddress"), v58 = objc_claimAutoreleasedReturnValue(), v58, v58))
    {
      v59 = 1;
    }

    else
    {
      if (v44 < 3)
      {
        goto LABEL_42;
      }

      if (v44 != 4)
      {
        v66 = objc_autoreleasePoolPush();
        v67 = *(a1 + 32);
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          v69 = HMFGetLogIdentifier();
          v70 = *(a1 + 40);
          *buf = 138543874;
          v133 = v69;
          v134 = 2048;
          v135 = v44;
          v136 = 2112;
          v137 = v70;
          _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_INFO, "%{public}@Unsupported linkLayerType: %ld for request %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v66);
        v23 = *(a1 + 40);
        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D0F1A0];
        v26 = 5;
        goto LABEL_23;
      }

      v59 = 0;
    }

    v61 = [*(a1 + 32) browser];
    v62 = [*(a1 + 32) fabricUUID];
    v63 = [v61 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:v62];

    v60 = *(a1 + 32);
    if ((v43 & v63 & 1) == 0)
    {
      goto LABEL_51;
    }

    v64 = [v60 browser];
    if (![v64 connectionRequestSuspended])
    {

      if ((v59 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_70:
      v91 = [*(a1 + 32) browser];
      v92 = [v91 threadRadioManager];
      v93 = [v92 isThreadNetworkConnected];

      v94 = *(a1 + 32);
      if (!v93)
      {
        v95 = [v94 activeThreadConnectionRequests];
        v96 = [v95 count];

        if (v96)
        {
          v52 = objc_autoreleasePoolPush();
          v53 = *(a1 + 32);
          v54 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v55 = HMFGetLogIdentifier();
          v56 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v133 = v55;
          v134 = 2112;
          v135 = v56;
          v57 = "%{public}@Waiting for active thread operations to complete, add to pending queue for nodeID %@";
          goto LABEL_35;
        }

        v108 = [*(a1 + 32) activeThreadWEDConnectionRequests];
        v109 = [v108 count];

        if (v109)
        {
          v110 = objc_autoreleasePoolPush();
          v111 = *(a1 + 32);
          v112 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
          {
            v113 = HMFGetLogIdentifier();
            v114 = [*(a1 + 40) nodeID];
            *buf = 138543618;
            v133 = v113;
            v134 = 2112;
            v135 = v114;
            _os_log_impl(&dword_22AEAE000, v112, OS_LOG_TYPE_INFO, "%{public}@Too many active WED session, add to pending queue for nodeID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v110);
          [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
          [*(a1 + 32) _updateActiveThreadWEDConnectionsIdleTime:1];
          goto LABEL_25;
        }

        v124 = [*(a1 + 32) browser];
        v125 = [v124 threadRadioManager];
        v126 = [v125 isReadyToEstablishWEDConnection];

        if (v126)
        {
          [*(a1 + 32) _addToActiveThreadWEDConnections:*(a1 + 40)];
          goto LABEL_25;
        }

        v115 = objc_autoreleasePoolPush();
        v116 = *(a1 + 32);
        v117 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
        {
          v118 = HMFGetLogIdentifier();
          v119 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v133 = v118;
          v134 = 2112;
          v135 = v119;
          v120 = "%{public}@Not ready to establish a WED session, add to pending queue for nodeID %@";
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      goto LABEL_76;
    }

    if ([v17 isPaired])
    {
      v65 = [v17 isPairingInProgress];

      if ((v65 & 1) == 0)
      {
        if (v59)
        {
          goto LABEL_70;
        }

LABEL_62:
        v80 = [*(a1 + 32) activeThreadWEDConnectionRequests];
        v81 = [v80 count];

        if (v81)
        {
          v52 = objc_autoreleasePoolPush();
          v53 = *(a1 + 32);
          v54 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v55 = HMFGetLogIdentifier();
          v56 = [*(a1 + 40) nodeID];
          *buf = 138543618;
          v133 = v55;
          v134 = 2112;
          v135 = v56;
          v57 = "%{public}@Active WED session, add thread request to pending queue for nodeID %@";
          goto LABEL_35;
        }

        v97 = [*(a1 + 32) browser];
        v98 = [v97 threadRadioManager];
        v99 = [v98 isThreadNetworkConnected];

        if (!v99)
        {
          v115 = objc_autoreleasePoolPush();
          v116 = *(a1 + 32);
          v117 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
          {
            v118 = HMFGetLogIdentifier();
            v119 = [*(a1 + 40) nodeID];
            *buf = 138543618;
            v133 = v118;
            v134 = 2112;
            v135 = v119;
            v120 = "%{public}@Thread is not connected, add request to pending queue for nodeID %@";
LABEL_86:
            _os_log_impl(&dword_22AEAE000, v117, OS_LOG_TYPE_INFO, v120, buf, 0x16u);
          }

LABEL_87:

          objc_autoreleasePoolPop(v115);
          [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
          v121 = [*(a1 + 32) systemCommissionerFabric];
          v37 = [*(a1 + 32) browser];
          v122 = [v37 threadRadioManager];
          v123 = [*(a1 + 32) fabricUUID];
          if (v121)
          {
            [v122 startThreadRadioForSystemCommissionerFabricUUID:v123];
          }

          else
          {
            [v122 startThreadRadioForHomeWithFabricUUID:v123];
          }

          goto LABEL_24;
        }

        v94 = *(a1 + 32);
LABEL_76:
        [v94 _addToActiveThreadConnections:*(a1 + 40)];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v71 = [*(a1 + 32) browser];
    v72 = [v71 threadRadioManager];
    v73 = [v72 isThreadNetworkConnected];

    if (v73)
    {
      v74 = objc_autoreleasePoolPush();
      v75 = *(a1 + 32);
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [*(a1 + 40) nodeID];
        v79 = HMFBooleanToString();
        *buf = 138543874;
        v133 = v77;
        v134 = 2112;
        v135 = v78;
        v136 = 2112;
        v137 = v79;
        _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_INFO, "%{public}@Accessory connection request for nodeID: %@ (isWED: %@) is for accessory getting paired, handling as normal thread connection since thread is connected", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v74);
      if ((v59 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_70;
    }

    if (v59)
    {
      v82 = [*(a1 + 32) browser];
      v83 = [v82 threadRadioManager];
      v84 = [v83 isReadyToEstablishWEDConnection];

      if (v84)
      {
        v85 = objc_autoreleasePoolPush();
        v86 = *(a1 + 32);
        v87 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          v88 = HMFGetLogIdentifier();
          v89 = [*(a1 + 40) nodeID];
          v90 = HMFBooleanToString();
          *buf = 138543874;
          v133 = v88;
          v134 = 2112;
          v135 = v89;
          v136 = 2112;
          v137 = v90;
          _os_log_impl(&dword_22AEAE000, v87, OS_LOG_TYPE_INFO, "%{public}@Accessory connection request for nodeID: %@ (isWED: %@) is for accessory getting paired, handling as normal WED connection since we're ready to establish WED connection", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v85);
        goto LABEL_70;
      }
    }

    v100 = objc_autoreleasePoolPush();
    v101 = *(a1 + 32);
    v102 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v128 = HMFGetLogIdentifier();
      v127 = [*(a1 + 40) nodeID];
      v103 = HMFBooleanToString();
      v130 = [*(a1 + 32) browser];
      v129 = [v130 threadRadioManager];
      [v129 isThreadNetworkConnected];
      v104 = HMFBooleanToString();
      v105 = [*(a1 + 32) browser];
      v106 = [v105 threadRadioManager];
      [v106 isReadyToEstablishWEDConnection];
      HMFBooleanToString();
      v107 = v131 = v100;
      *buf = 138544386;
      v133 = v128;
      v134 = 2112;
      v135 = v127;
      v136 = 2112;
      v137 = v103;
      v138 = 2112;
      v139 = v104;
      v140 = 2112;
      v141 = v107;
      _os_log_impl(&dword_22AEAE000, v102, OS_LOG_TYPE_INFO, "%{public}@Accessory connection request for nodeID: %@ (isWED: %@) is for accessory getting paired, add to active IP list because !isThreadNetworkConnected(%@) and !isReadyToEstablishWEDConnection(%@)", buf, 0x34u);

      v100 = v131;
    }

    objc_autoreleasePoolPop(v100);
LABEL_42:
    v60 = *(a1 + 32);
LABEL_51:
    [v60 _addToActiveIPConnections:*(a1 + 40)];
    goto LABEL_25;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = *(a1 + 32);
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = [*(a1 + 40) nodeID];
    *buf = 138543618;
    v133 = v30;
    v134 = 2112;
    v135 = v31;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Fabric is not active. Adding accessory connection request for nodeID %@ to pending queue", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  [*(a1 + 32) _addToPendingConnections:*(a1 + 40)];
}

- (BOOL)hasPendingLowPriorityConnectionRequestsOnly
{
  v15 = *MEMORY[0x277D85DE8];
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  if ([pendingConnectionRequests count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = pendingConnectionRequests;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v10 + 1) + 8 * i) hasPendingLowPriorityConnectionRequest])
          {
            v8 = 0;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasPendingHighPriorityConnectionRequest
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  pendingConnectionRequests = [(HMMTRFabricConnectionRequest *)self pendingConnectionRequests];
  v3 = [pendingConnectionRequests countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(pendingConnectionRequests);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasPendingHighPriorityConnectionRequest])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [pendingConnectionRequests countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_removeFromPendingConnections:(id)connections
{
  v13 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableOrderedSet *)self->_pendingConnectionRequests containsObject:connectionsCopy])
  {
    [(NSMutableOrderedSet *)self->_pendingConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = connectionsCopy;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed pending connection to accessory: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_addToPendingConnections:(id)connections
{
  v13 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  if (([(NSMutableOrderedSet *)self->_pendingConnectionRequests containsObject:connectionsCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(NSMutableOrderedSet *)self->_pendingConnectionRequests addObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = connectionsCopy;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pending connection to accessory: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (id)pendingConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_pendingConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_tryMergeIntoExistingConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests indexOfObject:connectionCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && ([(NSMutableOrderedSet *)self->_activeIPConnectionRequests objectAtIndex:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (v7 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests indexOfObject:connectionCopy], v7 != 0x7FFFFFFFFFFFFFFFLL) && ([(NSMutableOrderedSet *)self->_activeThreadConnectionRequests objectAtIndex:v7], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = 1;
    goto LABEL_9;
  }

  v9 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests indexOfObject:connectionCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests objectAtIndex:v9];
    wedConnectionPending = [v6 wedConnectionPending];
    if (v6)
    {
      v8 = wedConnectionPending ^ 1;
LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      [v6 mergeAccessoryConnectionRequest:connectionCopy];
      if (v8)
      {
        [v6 executeAllPendingOperations];
      }

      goto LABEL_15;
    }
  }

  v11 = [(NSMutableOrderedSet *)self->_pendingConnectionRequests indexOfObject:connectionCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&self->_lock);
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v6 = [(NSMutableOrderedSet *)self->_pendingConnectionRequests objectAtIndex:v11];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    goto LABEL_16;
  }

  [v6 mergeAccessoryConnectionRequest:connectionCopy];
LABEL_15:
  [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];

  v12 = 1;
LABEL_17:

  return v12;
}

- (BOOL)_removeFromActiveThreadWEDConnections:(id)connections
{
  v30 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests containsObject:connectionsCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v9;
      v28 = 2112;
      v29 = connectionsCopy;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active thread WED connection for accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    server = [connectionsCopy server];
    v11 = server;
    if (!server || ([server hasPreferredLocalLink] & 1) != 0)
    {
      goto LABEL_12;
    }

    browser = [(HMMTRFabricConnectionRequest *)selfCopy browser];
    if ([browser connectionRequestSuspended])
    {
      browser2 = [(HMMTRFabricConnectionRequest *)selfCopy browser];
      server2 = [connectionsCopy server];
      v15 = [browser2 isOperationAllowedForAccessoryServer:server2];

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [v11 handleWEDDisconnectedWhileNotPairing];
LABEL_12:

    browser3 = [(HMMTRFabricConnectionRequest *)selfCopy browser];
    threadRadioManager = [browser3 threadRadioManager];
    server3 = [connectionsCopy server];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __70__HMMTRFabricConnectionRequest__removeFromActiveThreadWEDConnections___block_invoke;
    v23 = &unk_2786EF9E0;
    v24 = selfCopy;
    v25 = connectionsCopy;
    [threadRadioManager disconnectFromWEDAccessory:server3 completion:&v20];

    [(HMMTRFabricConnectionRequest *)selfCopy _calculateFabricIdleTime:v20];
    goto LABEL_13;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_13:

  return v5;
}

void __70__HMMTRFabricConnectionRequest__removeFromActiveThreadWEDConnections___block_invoke(uint64_t a1, void *a2)
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
      v8 = [*(a1 + 40) server];
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from WED accessory %@, error %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_updateActiveThreadWEDConnectionsIdleTime:(unsigned __int8)time
{
  timeCopy = time;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v6 = [activeThreadWEDConnectionRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(activeThreadWEDConnectionRequests);
        }

        [*(*(&v10 + 1) + 8 * v9++) updateConnectionIdleTime:timeCopy];
      }

      while (v7 != v9);
      v7 = [activeThreadWEDConnectionRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(HMMTRFabricConnectionRequest *)self _calculateFabricIdleTime];
}

- (void)_addToActiveThreadWEDConnections:(id)connections
{
  v29 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests indexOfObject:connectionsCopy];
  activeThreadWEDConnectionRequests = self->_activeThreadWEDConnectionRequests;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)activeThreadWEDConnectionRequests addObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)activeThreadWEDConnectionRequests objectAtIndex:?];
    if ([v7 hasPendingLowPriorityConnectionRequest])
    {
      v8 = [connectionsCopy hasPendingLowPriorityConnectionRequest] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    [v7 mergeAccessoryConnectionRequest:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
      [(HMMTRFabricConnectionRequest *)self _calculateFabricIdleTime];
    }
  }

  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer suspend];

  if (v7)
  {
    if ([connectionsCopy wedConnectionPending])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        nodeID = [connectionsCopy nodeID];
        *buf = 138543618;
        v26 = v13;
        v27 = 2112;
        v28 = nodeID;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@WED connection is still pending for request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      [v7 executeAllPendingOperations];
      [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      nodeID2 = [connectionsCopy nodeID];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = nodeID2;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Adding active thread WED connection for request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [connectionsCopy setWedConnectionPending:1];
    [connectionsCopy updateConnectionIdleTime:2];
    [(HMMTRFabricConnectionRequest *)selfCopy2 _calculateFabricIdleTime];
    [connectionsCopy kickIdleTimer];
    [(HMMTRFabricConnectionRequest *)selfCopy2 _kickIdleTimer];
    browser = [(HMMTRFabricConnectionRequest *)selfCopy2 browser];
    threadRadioManager = [browser threadRadioManager];
    server = [connectionsCopy server];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke;
    v23[3] = &unk_2786EF9E0;
    v23[4] = selfCopy2;
    v24 = connectionsCopy;
    [threadRadioManager connectToWEDAccessory:server completion:v23];
  }
}

void __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke_2;
  v6[3] = &unk_2786EF3C8;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 dispatchBlock:v6];
}

void __65__HMMTRFabricConnectionRequest__addToActiveThreadWEDConnections___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) server];
      v7 = [*(a1 + 48) server];
      v8 = [v7 eMACAddress];
      v9 = *(a1 + 32);
      v15 = 138544130;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish WED connection to accessory %@ with emac %@, error %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v2);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:14];
    [v10 abortAllPendingOperations:v11];
  }

  else
  {
    [*(a1 + 48) setWedConnectionPending:0];
    v12 = [*(a1 + 48) server];
    [v12 markForResubscription];

    v13 = [*(a1 + 48) server];
    [v13 triggerEstablishingMatterSubscription];

    [*(a1 + 48) executeAllPendingOperations];
    v14 = *(a1 + 40);

    [v14 _kickIdleTimer];
  }
}

- (id)activeThreadWEDConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_activeThreadWEDConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_removeFromActiveThreadConnections:(id)connections
{
  v16 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests containsObject:connectionsCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = nodeID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active thread connection for accessory %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)_addToActiveThreadConnections:(id)connections
{
  v19 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests indexOfObject:connectionsCopy];
  activeThreadConnectionRequests = self->_activeThreadConnectionRequests;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)activeThreadConnectionRequests addObject:connectionsCopy];
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)activeThreadConnectionRequests objectAtIndex:?];
    [v7 mergeAccessoryConnectionRequest:connectionsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer suspend];

  if (v7)
  {
    [v7 executeAllPendingOperations];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = nodeID;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding active thread connection for request: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [connectionsCopy updateConnectionIdleTime:0];
    [(HMMTRFabricConnectionRequest *)selfCopy _calculateFabricIdleTime];
    server = [connectionsCopy server];
    [server triggerEstablishingMatterSubscription];

    [connectionsCopy executeAllPendingOperations];
  }

  [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];
}

- (id)activeThreadConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_activeThreadConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_removeFromActiveIPConnections:(id)connections
{
  v16 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests containsObject:connectionsCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_activeIPConnectionRequests removeObject:connectionsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = nodeID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active IP connection for accessory %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)_addToActiveIPConnections:(id)connections
{
  v18 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests indexOfObject:connectionsCopy];
  activeIPConnectionRequests = self->_activeIPConnectionRequests;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)activeIPConnectionRequests addObject:connectionsCopy];
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)activeIPConnectionRequests objectAtIndex:?];
    [v7 mergeAccessoryConnectionRequest:connectionsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer suspend];

  if (v7)
  {
    [v7 executeAllPendingOperations];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      nodeID = [connectionsCopy nodeID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = nodeID;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding active IP connection for request: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [connectionsCopy updateConnectionIdleTime:0];
    [(HMMTRFabricConnectionRequest *)selfCopy _calculateFabricIdleTime];
    [connectionsCopy executeAllPendingOperations];
  }

  [(HMMTRFabricConnectionRequest *)self _kickIdleTimer];
}

- (id)activeIPConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_activeIPConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)_restartConnectionIdleTimer:(double)timer
{
  v20 = *MEMORY[0x277D85DE8];
  idleTimer = [(HMMTRFabricConnectionRequest *)self idleTimer];
  isRunning = [idleTimer isRunning];

  idleTimer2 = [(HMMTRFabricConnectionRequest *)self idleTimer];
  [idleTimer2 cancel];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v11;
    v18 = 2048;
    timerCopy = timer;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating FabricConnectionRequest Idle time to: %f", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:timer];
  idleTimer = selfCopy->_idleTimer;
  selfCopy->_idleTimer = v12;

  workQueue = [(HMMTRFabricConnectionRequest *)selfCopy workQueue];
  [(HMFTimer *)selfCopy->_idleTimer setDelegateQueue:workQueue];

  [(HMFTimer *)selfCopy->_idleTimer setDelegate:selfCopy];
  if (isRunning)
  {
    idleTimer3 = [(HMMTRFabricConnectionRequest *)selfCopy idleTimer];
    [idleTimer3 resume];
  }
}

- (void)_updateConnectionIdleTime:(unsigned __int8)time
{
  timeCopy = time;
  if ([(HMMTRFabricConnectionRequest *)self fabricIdleTime]!= time && [(HMMTRFabricConnectionRequest *)self _hasActiveAccessoryConnections])
  {
    [(HMMTRFabricConnectionRequest *)self setFabricIdleTime:timeCopy];
    v5 = 35.0;
    if (timeCopy != 1)
    {
      v5 = 15.0;
    }

    [(HMMTRFabricConnectionRequest *)self _restartConnectionIdleTimer:v5];
  }
}

- (void)_calculateFabricIdleTime
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  activeThreadWEDConnectionRequests = [(HMMTRFabricConnectionRequest *)self activeThreadWEDConnectionRequests];
  v4 = [activeThreadWEDConnectionRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(activeThreadWEDConnectionRequests);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 connectionIdleTime] == 2 && !objc_msgSend(v7, "hasPendingLowPriorityConnectionRequest"))
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [activeThreadWEDConnectionRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [(HMMTRFabricConnectionRequest *)self _updateConnectionIdleTime:v4];
}

- (HMMTRFabricConnectionRequest)initWithQueue:(id)queue browser:(id)browser fabricUUID:(id)d systemCommissionerFabric:(BOOL)fabric
{
  queueCopy = queue;
  browserCopy = browser;
  dCopy = d;
  v29.receiver = self;
  v29.super_class = HMMTRFabricConnectionRequest;
  v14 = [(HMMTRFabricConnectionRequest *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeWeak(&v15->_browser, browserCopy);
    v15->_active = 0;
    v15->_hasOnlyQueuedLowPriorityRequests = 1;
    v16 = [dCopy copy];
    fabricUUID = v15->_fabricUUID;
    v15->_fabricUUID = v16;

    v15->_systemCommissionerFabric = fabric;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    activeIPConnectionRequests = v15->_activeIPConnectionRequests;
    v15->_activeIPConnectionRequests = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    activeThreadConnectionRequests = v15->_activeThreadConnectionRequests;
    v15->_activeThreadConnectionRequests = orderedSet2;

    orderedSet3 = [MEMORY[0x277CBEB40] orderedSet];
    activeThreadWEDConnectionRequests = v15->_activeThreadWEDConnectionRequests;
    v15->_activeThreadWEDConnectionRequests = orderedSet3;

    orderedSet4 = [MEMORY[0x277CBEB40] orderedSet];
    pendingConnectionRequests = v15->_pendingConnectionRequests;
    v15->_pendingConnectionRequests = orderedSet4;

    v15->_fabricIdleTime = 0;
    v26 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:15.0];
    idleTimer = v15->_idleTimer;
    v15->_idleTimer = v26;

    [(HMFTimer *)v15->_idleTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v15->_idleTimer setDelegate:v15];
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68, &__block_literal_global_5424);
  }

  v3 = logCategory__hmf_once_v69;

  return v3;
}

uint64_t __43__HMMTRFabricConnectionRequest_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v69;
  logCategory__hmf_once_v69 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end