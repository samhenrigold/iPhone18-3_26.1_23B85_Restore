@interface HMDUserManagementOperationManager
+ (void)initialize;
- (HMDHomeManager)homeManager;
- (HMDUserManagementOperationManager)initWithOperations:(id)operations;
- (NSArray)operations;
- (NSString)debugDescription;
- (NSString)description;
- (id)_filteredOperationsForAccessory:(id)accessory;
- (id)_filteredOperationsWithDependency:(id)dependency;
- (void)__deregisterIfNeededForReachablityChangeNotificationsForAccessory:(id)accessory;
- (void)__executeOperation:(id)operation;
- (void)__registerIfNeededForReachablityChangeNotifications;
- (void)__registerIfNeededForReachablityChangeNotificationsForAccessory:(id)accessory;
- (void)__removeOperationAndProcessDependantOperations:(id)operations;
- (void)__save;
- (void)_cleanPriorOperations:(id)operations;
- (void)_handleAccessoryIsReachable:(id)reachable;
- (void)_handleAddedOperation:(id)operation;
- (void)_handleRemovedOperation:(id)operation;
- (void)_reallySave;
- (void)addOperation:(id)operation;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)operationCancelled:(id)cancelled;
- (void)operationStoppedBackingOff:(id)off;
- (void)removeOperation:(id)operation;
- (void)removeOperationWithIdentifier:(id)identifier;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDUserManagementOperationManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  saveTimer = [(HMDUserManagementOperationManager *)self saveTimer];

  if (saveTimer == fireCopy)
  {

    [(HMDUserManagementOperationManager *)self _reallySave];
  }
}

- (void)_reallySave
{
  clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDUserManagementOperationManager__reallySave__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __48__HMDUserManagementOperationManager__reallySave__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) shortDescription];
    v6 = [*(a1 + 32) operations];
    *buf = 138543874;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@[%@] Saving all pending operations: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = @"HMDHomeManagerSaveReasonKey";
  v10 = @"HMDUserManagementOperationManagerSaveReason";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"HMDHomeManagerSaveRequestNotificationKey" object:*(a1 + 32) userInfo:v7];
}

- (void)__save
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    shortDescription = [(HMDUserManagementOperationManager *)self shortDescription];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = shortDescription;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[%@] Kicking save timer", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  saveTimer = [(HMDUserManagementOperationManager *)self saveTimer];
  [saveTimer resume];
}

- (void)__deregisterIfNeededForReachablityChangeNotificationsForAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  observedAccessories = [(HMDUserManagementOperationManager *)self observedAccessories];
  v6 = [observedAccessories containsObject:accessoryCopy];

  if (v6)
  {
    v7 = [(HMDUserManagementOperationManager *)self _filteredOperationsForAccessory:accessoryCopy];
    if (![v7 count])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        shortDescription = [(HMDUserManagementOperationManager *)self shortDescription];
        name = [accessoryCopy name];
        v15 = 138543874;
        v16 = v10;
        v17 = 2112;
        v18 = shortDescription;
        v19 = 2112;
        v20 = name;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%@] No longer observing accessory '%@' for reachability change notifications we we have no pending operations for this accessory", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:accessoryCopy];

      observedAccessories2 = [(HMDUserManagementOperationManager *)self observedAccessories];
      [observedAccessories2 removeObject:accessoryCopy];
    }
  }
}

- (void)__registerIfNeededForReachablityChangeNotificationsForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  observedAccessories = [(HMDUserManagementOperationManager *)self observedAccessories];
  v6 = [observedAccessories containsObject:accessoryCopy];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [(HMDUserManagementOperationManager *)self shortDescription];
      name = [accessoryCopy name];
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = shortDescription;
      v18 = 2112;
      v19 = name;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[%@] Starting to observe accessory '%@' for reachability change notifications as we have pending operations for this accessory", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    observedAccessories2 = [(HMDUserManagementOperationManager *)self observedAccessories];
    [observedAccessories2 addObject:accessoryCopy];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:accessoryCopy];
  }
}

- (void)__registerIfNeededForReachablityChangeNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  operations = [(HMDUserManagementOperationManager *)self operations];
  v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(operations);
        }

        accessory = [*(*(&v9 + 1) + 8 * v7) accessory];
        [(HMDUserManagementOperationManager *)self __registerIfNeededForReachablityChangeNotificationsForAccessory:accessory];

        ++v7;
      }

      while (v5 != v7);
      v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_handleAccessoryIsReachable:(id)reachable
{
  reachableCopy = reachable;
  clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDUserManagementOperationManager__handleAccessoryIsReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = reachableCopy;
  v6 = reachableCopy;
  dispatch_async(clientQueue, v7);
}

void __65__HMDUserManagementOperationManager__handleAccessoryIsReachable___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) shortDescription];
    v6 = *(a1 + 40);
    *buf = 138543874;
    v29 = v4;
    v30 = 2112;
    v31 = v5;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@[%@] Received reachability notification: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _filteredOperationsForAccessory:v7];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [*(a1 + 32) shortDescription];
            *buf = 138543874;
            v29 = v15;
            v30 = 2112;
            v31 = v16;
            v32 = 2112;
            v33 = v12;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Processing ready operation due to accessory reachability change: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v13);
          [*(a1 + 32) __executeOperation:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) shortDescription];
      v21 = *(a1 + 40);
      *buf = 138543874;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Received invalid accessory reachability notification: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)__removeOperationAndProcessDependantOperations:(id)operations
{
  v33 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    shortDescription = [(HMDUserManagementOperationManager *)self shortDescription];
    identifier = [operationsCopy identifier];
    uUIDString = [identifier UUIDString];
    *buf = 138543874;
    v28 = v7;
    v29 = 2112;
    v30 = shortDescription;
    v31 = 2112;
    v32 = uUIDString;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Removing operation '%@' and processing any dependant operations", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUserManagementOperationManager *)self removeOperation:operationsCopy];
  v20 = operationsCopy;
  [(HMDUserManagementOperationManager *)self _filteredOperationsWithDependency:operationsCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          shortDescription2 = [(HMDUserManagementOperationManager *)self shortDescription];
          *buf = 138543874;
          v28 = v18;
          v29 = 2112;
          v30 = shortDescription2;
          v31 = 2112;
          v32 = v15;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Processing dependant operation: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        [(HMDUserManagementOperationManager *)self __executeOperation:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)__executeOperation:(id)operation
{
  v18 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if ([operationCopy isReady])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      shortDescription = [(HMDUserManagementOperationManager *)self shortDescription];
      *buf = 138543874;
      v13 = v7;
      v14 = 2112;
      v15 = shortDescription;
      v16 = 2112;
      v17 = operationCopy;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Executing ready operation: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HMDUserManagementOperationManager___executeOperation___block_invoke;
    v10[3] = &unk_2797358C8;
    v10[4] = self;
    v11 = operationCopy;
    [v11 executeWithCompletionQueue:clientQueue completionHandler:v10];
  }
}

void __56__HMDUserManagementOperationManager___executeOperation___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 32) shortDescription];
      v8 = [*(a1 + 40) identifier];
      v9 = [v8 UUIDString];
      v10 = 138544130;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Execution of operation '%@' failed with error: %@", &v10, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 32) __removeOperationAndProcessDependantOperations:*(a1 + 40)];
  }
}

- (void)operationStoppedBackingOff:(id)off
{
  offCopy = off;
  clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDUserManagementOperationManager_operationStoppedBackingOff___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = offCopy;
  v6 = offCopy;
  dispatch_async(clientQueue, v7);
}

- (void)operationCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDUserManagementOperationManager_operationCancelled___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = cancelledCopy;
  v6 = cancelledCopy;
  dispatch_async(clientQueue, v7);
}

- (void)cancelAllOperations
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  operations = [(HMDUserManagementOperationManager *)self operations];
  v3 = [operations countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [operations countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_handleRemovedOperation:(id)operation
{
  operationCopy = operation;
  clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDUserManagementOperationManager__handleRemovedOperation___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_async(clientQueue, v7);
}

void __61__HMDUserManagementOperationManager__handleRemovedOperation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) __save];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accessory];
  [v2 __deregisterIfNeededForReachablityChangeNotificationsForAccessory:v3];
}

- (void)removeOperation:(id)operation
{
  operationCopy = operation;
  if (operationCopy)
  {
    v5 = operationCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableArray *)self->_operations containsObject:v5])
    {
      [(NSMutableArray *)self->_operations removeObject:v5];
      [v5 setOperationManager:0];
      [(HMDUserManagementOperationManager *)self _handleRemovedOperation:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
    operationCopy = v5;
  }
}

- (void)removeOperationWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock_with_options();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_operations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          identifier = [v9 identifier];
          v11 = [identifier isEqual:identifierCopy];

          if (v11)
          {
            v12 = v9;

            if (v12)
            {
              [(NSMutableArray *)self->_operations removeObject:v12];
              [v12 setOperationManager:0];
              [(HMDUserManagementOperationManager *)self _handleRemovedOperation:v12];
            }

            goto LABEL_13;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_handleAddedOperation:(id)operation
{
  operationCopy = operation;
  clientQueue = [(HMDUserManagementOperationManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDUserManagementOperationManager__handleAddedOperation___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __59__HMDUserManagementOperationManager__handleAddedOperation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) __save];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accessory];
  [v2 __registerIfNeededForReachablityChangeNotificationsForAccessory:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 __executeOperation:v5];
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  if (operationCopy)
  {
    v5 = operationCopy;
    os_unfair_lock_lock_with_options();
    if ((-[NSMutableArray containsObject:](self->_operations, "containsObject:", v5) & 1) == 0 && ([v5 isFinished] & 1) == 0)
    {
      [(HMDUserManagementOperationManager *)self _cleanPriorOperations:v5];
    }

    [(NSMutableArray *)self->_operations addObject:v5];
    [v5 setOperationManager:self];
    [(HMDUserManagementOperationManager *)self _handleAddedOperation:v5];
    os_unfair_lock_unlock(&self->_lock);
  }

  MEMORY[0x2821F9730]();
}

- (void)_cleanPriorOperations:(id)operations
{
  v43 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  user = [operationsCopy user];
  pairingIdentity = [user pairingIdentity];

  v27 = operationsCopy;
  accessory = [operationsCopy accessory];
  identifier = [accessory identifier];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
  obj = objc_msgSend_copy(self->_operations);
  v8 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        accessory2 = [v12 accessory];
        identifier2 = [accessory2 identifier];
        if ([identifier isEqualToString:identifier2])
        {
          user2 = [v12 user];
          [user2 pairingIdentity];
          v17 = v16 = identifier;
          v18 = [pairingIdentity isEqual:v17];

          identifier = v16;
          if (!v18)
          {
            continue;
          }

          v19 = objc_autoreleasePoolPush();
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            shortDescription = [(HMDUserManagementOperationManager *)selfCopy shortDescription];
            *buf = 138543874;
            v37 = v21;
            v38 = 2112;
            v39 = shortDescription;
            v40 = 2112;
            v41 = v12;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[%@] Dropping prior operation: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          [(NSMutableArray *)selfCopy->_operations removeObject:v12];
          [v12 setOperationManager:0];
          homeManager = [(HMDUserManagementOperationManager *)selfCopy homeManager];
          backingStore = [homeManager backingStore];
          v25 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          accessory2 = [backingStore transaction:@"kUserManagementOperationRemovedKey" options:v25];

          v26 = [v12 modelObjectWithChangeType:3];
          [accessory2 add:v26];

          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __59__HMDUserManagementOperationManager__cleanPriorOperations___block_invoke;
          v31[3] = &unk_2797359D8;
          v31[4] = selfCopy;
          [accessory2 save:v31];
          [(HMDUserManagementOperationManager *)selfCopy _handleRemovedOperation:v12];
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v9);
  }
}

void __59__HMDUserManagementOperationManager__cleanPriorOperations___block_invoke(uint64_t a1)
{
  v3 = [[HMDHomeSaveRequest alloc] initWithReason:@"kUserManagementOperationRemovedKey" information:0 postSyncNotification:0];
  v2 = [*(a1 + 32) homeManager];
  [v2 saveWithRequest:v3];
}

- (id)_filteredOperationsWithDependency:(id)dependency
{
  v22 = *MEMORY[0x277D85DE8];
  dependencyCopy = dependency;
  operations = [(HMDUserManagementOperationManager *)self operations];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(operations, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = operations;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v12)
        {
          dependencies = [*(*(&v17 + 1) + 8 * i) dependencies];
          v14 = [dependencies containsObject:dependencyCopy];

          if (!v14)
          {
            continue;
          }
        }

        [v6 addObject:{v12, v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = objc_msgSend_copy(v6);

  return v15;
}

- (id)_filteredOperationsForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  operations = [(HMDUserManagementOperationManager *)self operations];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(operations, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = operations;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (accessoryCopy)
        {
          accessory = [*(*(&v17 + 1) + 8 * i) accessory];
          v14 = [accessoryCopy isEqual:accessory];

          if (!v14)
          {
            continue;
          }
        }

        [v6 addObject:{v12, v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = objc_msgSend_copy(v6);

  return v15;
}

- (NSArray)operations
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_operations);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  operations = [(HMDUserManagementOperationManager *)self operations];
  v6 = [v3 stringWithFormat:@"<%@, Operations = %@>", v4, operations];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  operations = [(HMDUserManagementOperationManager *)self operations];
  v6 = [v3 stringWithFormat:@"<%@ %p, Operations = %@>", v4, self, operations];

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDUserManagementOperationManager;
  [(HMDUserManagementOperationManager *)&v4 dealloc];
}

- (HMDUserManagementOperationManager)initWithOperations:(id)operations
{
  operationsCopy = operations;
  v34.receiver = self;
  v34.super_class = HMDUserManagementOperationManager;
  v5 = [(HMDUserManagementOperationManager *)&v34 init];
  if (v5)
  {
    v6 = HMDispatchQueueNameString();
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v9;

    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:15.0];
    saveTimer = v5->_saveTimer;
    v5->_saveTimer = v11;

    saveTimer = [(HMDUserManagementOperationManager *)v5 saveTimer];
    [saveTimer setDelegate:v5];

    array = [MEMORY[0x277CBEB18] array];
    operations = v5->_operations;
    v5->_operations = array;

    array2 = [MEMORY[0x277CBEB18] array];
    if ([operationsCopy count])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      reverseObjectEnumerator = [operationsCopy reverseObjectEnumerator];
      nextObject = [reverseObjectEnumerator nextObject];
      if (nextObject)
      {
        v20 = nextObject;
        do
        {
          if ([v20 isAuditOperation])
          {
            [array2 addObject:v20];
          }

          else
          {
            user = [v20 user];
            pairingIdentity = [user pairingIdentity];

            accessory = [v20 accessory];
            uuid = [accessory uuid];

            if (pairingIdentity && uuid)
            {
              array3 = [dictionary objectForKeyedSubscript:uuid];
              if (!array3)
              {
                array3 = [MEMORY[0x277CBEB18] array];
                [dictionary setObject:array3 forKeyedSubscript:uuid];
              }

              if (([array3 containsObject:pairingIdentity] & 1) == 0)
              {
                [array3 addObject:pairingIdentity];
                [array2 addObject:v20];
              }
            }
          }

          nextObject2 = [reverseObjectEnumerator nextObject];

          v20 = nextObject2;
        }

        while (nextObject2);
      }

      reverseObjectEnumerator2 = [array2 reverseObjectEnumerator];
      nextObject3 = [reverseObjectEnumerator2 nextObject];
      if (nextObject3)
      {
        v29 = nextObject3;
        do
        {
          [(NSMutableArray *)v5->_operations addObject:v29];
          nextObject4 = [reverseObjectEnumerator2 nextObject];

          v29 = nextObject4;
        }

        while (nextObject4);
      }
    }

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observedAccessories = v5->_observedAccessories;
    v5->_observedAccessories = weakObjectsHashTable;

    [(HMDUserManagementOperationManager *)v5 __registerIfNeededForReachablityChangeNotifications];
  }

  return v5;
}

+ (void)initialize
{
  v2 = objc_alloc_init(HMDUserManagementOperationManager);
  v3 = sharedManager;
  sharedManager = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

@end