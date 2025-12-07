@interface HMDRemoteAccountManager
+ (id)logCategory;
+ (id)sharedManager;
- (BOOL)shouldSyncDevice:(id)device;
- (HMDRemoteAccountManager)init;
- (HMDRemoteAccountManager)initWithIDSService:(id)service;
- (NSArray)accounts;
- (NSArray)attributeDescriptions;
- (id)accountForDeviceHandle:(id)handle;
- (id)accountForHandle:(id)handle;
- (id)accountForIdentifier:(id)identifier;
- (id)accountForModelIdentifier:(id)identifier;
- (id)accountForSenderContext:(id)context;
- (id)deviceForSenderContext:(id)context;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__handleSendMessageFailureWithError:(id)error destination:(id)destination;
- (void)_resolveAccountForHandle:(id)handle completionHandler:(id)handler;
- (void)addAccount:(id)account;
- (void)processAccountModel:(id)model message:(id)message;
- (void)processAccountModelRemove:(id)remove message:(id)message;
- (void)removeAccount:(id)account;
- (void)reset;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)setAccounts:(id)accounts;
- (void)start;
- (void)stop;
@end

@implementation HMDRemoteAccountManager

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v18 = contextCopy;
  if (!success)
  {
    toID = [contextCopy toID];

    if (toID)
    {
      toID2 = [v18 toID];
      [(HMDRemoteAccountManager *)self __handleSendMessageFailureWithError:errorCopy destination:toID2];
    }
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  accounts = [(HMDRemoteAccountManager *)self accounts];
  v9 = [accounts countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)processAccountModelRemove:(id)remove message:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  messageCopy = message;
  uuid = [removeCopy uuid];
  v9 = [(HMDRemoteAccountManager *)self accountForModelIdentifier:uuid];

  if (v9)
  {
    [(HMDRemoteAccountManager *)self removeAccount:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected object model received", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)processAccountModel:(id)model message:(id)message
{
  modelCopy = model;
  messageCopy = message;
  uuid = [modelCopy uuid];
  v8 = [(HMDRemoteAccountManager *)self accountForModelIdentifier:uuid];

  if (v8)
  {
    [v8 transactionObjectUpdated:0 newValues:modelCopy message:messageCopy];
  }

  else
  {
    v9 = [[HMDAccount alloc] initWithObjectModel:modelCopy];
    if (!v9)
    {
      goto LABEL_6;
    }

    v8 = v9;
    [(HMDRemoteAccountManager *)self addAccount:v9];
  }

LABEL_6:
}

- (BOOL)shouldSyncDevice:(id)device
{
  account = [device account];
  LOBYTE(self) = [(HMDRemoteAccountManager *)self shouldSyncAccount:account];

  return self;
}

- (void)_resolveAccountForHandle:(id)handle completionHandler:(id)handler
{
  handleCopy = handle;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handleCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke;
    block[3] = &unk_2797355D0;
    block[4] = self;
    v12 = handlerCopy;
    v11 = handleCopy;
    dispatch_async(queue, block);
  }
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isMonitoring];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting to resolve handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [*(a1 + 32) resolveOperations];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v10)
    {
LABEL_15:

      goto LABEL_22;
    }

    v11 = *v29;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      v14 = [v13 handle];
      if ([v14 isEqual:*(a1 + 40)])
      {
        v15 = [v13 isFinished];

        if ((v15 & 1) == 0)
        {
          v17 = v13;

          if (v17)
          {
            v18 = 0;
            goto LABEL_23;
          }

LABEL_22:
          v17 = [[HMDAccountHandleResolveOperation alloc] initWithHandle:*(a1 + 40)];
          v19 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Accounts.Resolve"];
          [(HMFOperation *)v17 setActivity:v19];
          objc_initWeak(buf, *(a1 + 32));
          objc_initWeak(&location, v17);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_31;
          v24[3] = &unk_27972EC28;
          objc_copyWeak(&v25, buf);
          objc_copyWeak(&v26, &location);
          [(HMDAccountHandleResolveOperation *)v17 setCompletionBlock:v24];
          v20 = [*(a1 + 32) resolveOperations];
          [v20 addObject:v17];

          objc_destroyWeak(&v26);
          objc_destroyWeak(&v25);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);

          v18 = 1;
LABEL_23:
          v21 = *(a1 + 48);
          if (v21)
          {
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_3;
            v22[3] = &unk_27972C2B8;
            v23 = v21;
            [(HMDAccountHandleResolveOperation *)v17 addResolveBlock:v22];
          }

          if (v18)
          {
            [(HMFOperation *)v17 start];
          }

LABEL_27:

          return;
        }
      }

      else
      {
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v16;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot resolve handle before started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (*(a1 + 48))
  {
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(*(a1 + 48) + 16))();
    goto LABEL_27;
  }
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_2;
    v5[3] = &unk_279732E78;
    objc_copyWeak(&v6, (a1 + 40));
    v5[4] = v3;
    dispatch_async(v4, v5);
    objc_destroyWeak(&v6);
  }
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!(v6 | v5))
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  }

  (*(*(a1 + 32) + 16))();
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) resolveOperations];
    [v3 removeObject:v4];

    WeakRetained = v4;
  }
}

- (void)removeAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v6 = accountCopy;
    os_unfair_recursive_lock_lock_with_options();
    if ([(NSMutableSet *)self->_accounts containsObject:v6])
    {
      [(NSMutableSet *)self->_accounts removeObject:v6];
      manager = [v6 manager];
      if (manager == self)
      {
        [v6 setManager:0];
      }

      __deleteAccountModel(self, v6);

      os_unfair_recursive_lock_unlock();
      __notifyDelegateAccountRemoved_124710(self, v6);
    }

    else
    {
      os_unfair_recursive_lock_unlock();
    }

    accountCopy = v6;
  }
}

- (void)addAccount:(id)account
{
  v62 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (!accountCopy)
  {
    goto LABEL_43;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (([(NSMutableSet *)self->_accounts containsObject:accountCopy]& 1) != 0)
  {
LABEL_42:
    os_unfair_recursive_lock_unlock();
    goto LABEL_43;
  }

  v40 = accountCopy;
  if (![accountCopy isAuthenticated])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = self->_accounts;
    v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v17)
    {
      v18 = *v46;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          if (([v20 isAuthenticated] & 1) != 0 && objc_msgSend(v20, "isRelatedToAccount:", accountCopy))
          {
            v35 = objc_autoreleasePoolPush();
            selfCopy = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v38;
              *&buf[12] = 2112;
              *&buf[14] = v40;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Unable to add account: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            accountCopy = v40;
            goto LABEL_42;
          }
        }

        v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_28;
  }

  obj = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableSet count](self->_accounts, "count")}];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = objc_msgSend_copy(self->_accounts);
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v6)
  {
    v7 = *v50;
    do
    {
      for (j = 0; j != v6; ++j)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v49 + 1) + 8 * j);
        if ([v9 isRelatedToAccount:v40])
        {
          v10 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v13;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing related account: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          [(NSMutableSet *)self->_accounts removeObject:v9];
          manager = [v9 manager];
          v15 = manager == selfCopy2;

          if (v15)
          {
            [v9 setManager:0];
          }

          __deleteAccountModel(selfCopy2, v9);
          [(NSMutableSet *)obj addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v6);
  }

  if (![(NSMutableSet *)obj count])
  {
LABEL_28:
    v16 = 0;
    goto LABEL_29;
  }

  v16 = objc_msgSend_copy(obj);
LABEL_29:

  [(NSMutableSet *)self->_accounts addObject:v40];
  [v40 setManager:self];
  selfCopy3 = self;
  v22 = v40;
  queue = selfCopy3->_queue;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ____addAccountModel_block_invoke;
  v59 = &unk_2797359B0;
  v60 = selfCopy3;
  v61 = v22;
  v24 = v22;
  dispatch_async(queue, buf);

  os_unfair_recursive_lock_unlock();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v16;
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v26)
  {
    v27 = *v42;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v25);
        }

        __notifyDelegateAccountRemoved_124710(selfCopy3, *(*(&v41 + 1) + 8 * k));
      }

      v26 = [v25 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v26);
  }

  v29 = objc_autoreleasePoolPush();
  v30 = selfCopy3;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Account added: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v53 = @"HMDAccountNotificationKey";
  v54 = v24;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  [defaultCenter postNotificationName:@"HMDRemoteAccountManagerAddedAccountNotification" object:v30 userInfo:v34];

  accountCopy = v40;
LABEL_43:
}

- (void)setAccounts:(id)accounts
{
  v16 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  os_unfair_recursive_lock_lock_with_options();
  if (accountsCopy)
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:accountsCopy];
    accounts = self->_accounts;
    self->_accounts = v5;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = accountsCopy;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v11 + 1) + 8 * v10++) setManager:{self, v11}];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(NSMutableSet *)self->_accounts removeAllObjects];
  }

  os_unfair_recursive_lock_unlock();
}

- (id)accountForDeviceHandle:(id)handle
{
  v29 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  os_unfair_recursive_lock_lock_with_options();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v18 = *v24;
    do
    {
      v17 = v6;
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        devices = [v8 devices];
        v10 = [devices countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = *v20;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(devices);
              }

              handles = [*(*(&v19 + 1) + 8 * j) handles];
              v14 = [handles containsObject:handleCopy];

              if (v14)
              {
                v15 = v8;

                goto LABEL_19;
              }
            }

            v10 = [devices countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v15 = 0;
    }

    while (v6);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  os_unfair_recursive_lock_unlock();

  return v15;
}

- (id)accountForModelIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        modelIdentifier = [v9 modelIdentifier];
        v11 = [modelIdentifier hmf_isEqualToUUID:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (id)accountForHandle:(id)handle
{
  v18 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  os_unfair_recursive_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        handles = [v9 handles];
        v11 = [handles containsObject:handleCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (id)accountForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
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
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (NSArray)accounts
{
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_accounts allObjects];
  os_unfair_recursive_lock_unlock();

  return allObjects;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDRemoteAccountManager_reset__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__HMDRemoteAccountManager_reset__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [*(a1 + 32) accounts];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) removeAccount:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDRemoteAccountManager_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__HMDRemoteAccountManager_stop__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:0];
    v6 = [*(a1 + 32) service];
    [v6 removeDelegate:*(a1 + 32)];
  }
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDRemoteAccountManager_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__HMDRemoteAccountManager_start__block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isMonitoring] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:1];
    v6 = [*(a1 + 32) service];
    [v6 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v38 = v7;
      v9 = v7;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v67 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Staring audit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v46 = [MEMORY[0x277CBEB58] set];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = [v9 accounts];
      v41 = [obj countByEnumeratingWithState:&v56 objects:buf count:16];
      if (v41)
      {
        v40 = *v57;
        v43 = v9;
        do
        {
          v12 = 0;
          do
          {
            if (*v57 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = v12;
            v13 = *(*(&v56 + 1) + 8 * v12);
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v45 = v13;
            v44 = [v13 devices];
            v14 = [v44 countByEnumeratingWithState:&v52 objects:v65 count:16];
            if (v14)
            {
              v15 = v14;
              v47 = *v53;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v53 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v17 = *(*(&v52 + 1) + 8 * i);
                  v18 = objc_autoreleasePoolPush();
                  v48 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v19 = v46;
                  v20 = [v19 countByEnumeratingWithState:&v48 objects:v64 count:16];
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v49;
                    while (2)
                    {
                      for (j = 0; j != v21; ++j)
                      {
                        if (*v49 != v22)
                        {
                          objc_enumerationMutation(v19);
                        }

                        if ([v17 isRelatedToDevice:*(*(&v48 + 1) + 8 * j)])
                        {
                          v29 = objc_autoreleasePoolPush();
                          v30 = v9;
                          v31 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                          {
                            v32 = HMFGetLogIdentifier();
                            v33 = [v17 shortDescription];
                            *v60 = 138543618;
                            v61 = v32;
                            v62 = 2112;
                            v63 = v33;
                            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Found duplicate device: %@", v60, 0x16u);

                            v9 = v43;
                          }

                          objc_autoreleasePoolPop(v29);
                          [v45 removeDevice:v17];

                          goto LABEL_31;
                        }
                      }

                      v21 = [v19 countByEnumeratingWithState:&v48 objects:v64 count:16];
                      if (v21)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v24 = objc_autoreleasePoolPush();
                  v25 = v9;
                  v26 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    v27 = HMFGetLogIdentifier();
                    v28 = [v17 shortDescription];
                    *v60 = 138543618;
                    v61 = v27;
                    v62 = 2112;
                    v63 = v28;
                    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Audited device: %@", v60, 0x16u);

                    v9 = v43;
                  }

                  objc_autoreleasePoolPop(v24);
                  [v19 addObject:v17];
LABEL_31:
                  objc_autoreleasePoolPop(v18);
                }

                v15 = [v44 countByEnumeratingWithState:&v52 objects:v65 count:16];
              }

              while (v15);
            }

            v12 = v42 + 1;
          }

          while (v42 + 1 != v41);
          v41 = [obj countByEnumeratingWithState:&v56 objects:buf count:16];
        }

        while (v41);
      }

      v34 = objc_autoreleasePoolPush();
      v35 = v9;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *v60 = 138543362;
        v61 = v37;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Finished audit", v60, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v7 = v38;
    }
  }
}

- (NSArray)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accounts = [(HMDRemoteAccountManager *)self accounts];
  v5 = [v3 initWithName:@"Accounts" value:accounts];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (HMDRemoteAccountManager)initWithIDSService:(id)service
{
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = HMDRemoteAccountManager;
  v6 = [(HMDRemoteAccountManager *)&v17 init];
  if (v6)
  {
    v7 = HMDispatchQueueNameString();
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    accounts = v6->_accounts;
    v6->_accounts = v12;

    array = [MEMORY[0x277CBEB18] array];
    resolveOperations = v6->_resolveOperations;
    v6->_resolveOperations = array;

    objc_storeStrong(&v6->_service, service);
  }

  return v6;
}

- (HMDRemoteAccountManager)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_124742 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_124742, &__block_literal_global_124743);
  }

  v3 = logCategory__hmf_once_v32_124744;

  return v3;
}

uint64_t __38__HMDRemoteAccountManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32_124744;
  logCategory__hmf_once_v32_124744 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)sharedManager
{
  v2 = +[HMDRegistry shared];
  remoteAccountManager = [v2 remoteAccountManager];

  return remoteAccountManager;
}

- (id)deviceForSenderContext:(id)context
{
  v152 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!contextCopy)
  {
    v129 = 0;
    goto LABEL_94;
  }

  v117 = contextCopy;
  accountHandle = [(HMDAccount *)contextCopy accountHandle];
  v6 = accountHandle == 0;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v16;
      v145 = 2112;
      v146 = v117;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot update with sender context: %@", buf, 0x16u);
    }

    v129 = 0;
    goto LABEL_93;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    v145 = 2112;
    v146 = v117;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Updating with sender context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  os_unfair_recursive_lock_lock_with_options();
  v11 = selfCopy;
  v12 = v117;
  v118 = v11;
  if (!v11)
  {
    v125 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  accountIdentifier = [(HMDAccount *)v12 accountIdentifier];

  if (accountIdentifier)
  {
    accountIdentifier2 = [(HMDAccount *)v13 accountIdentifier];
    v125 = [(HMDRemoteAccountManager *)v118 accountForIdentifier:accountIdentifier2];
  }

  else
  {
    accountHandle2 = [(HMDAccount *)v13 accountHandle];

    if (!accountHandle2)
    {
      v125 = 0;
      goto LABEL_16;
    }

    accountIdentifier2 = [(HMDAccount *)v13 accountHandle];
    v125 = [(HMDRemoteAccountManager *)v118 accountForHandle:accountIdentifier2];
  }

LABEL_16:
  v12 = v13;
LABEL_17:
  v120 = v12;

  if (v125)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v118;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      shortDescription = [(HMDAccount *)v125 shortDescription];
      *buf = 138543874;
      *&buf[4] = v21;
      v145 = 2112;
      v146 = shortDescription;
      v147 = 2112;
      v148 = v120;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Found an existing account, %@, for sender: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    handles = [(HMDAccount *)v125 handles];
    accountHandle3 = [(HMDAccount *)v120 accountHandle];
    v25 = [handles containsObject:accountHandle3];

    if ((v25 & 1) == 0)
    {
      accountHandle4 = [(HMDAccount *)v120 accountHandle];
      v27 = v19;
      v125 = v125;
      v28 = accountHandle4;
      v29 = v28;
      v126 = v27;
      if (v27 && v28)
      {
        v30 = objc_autoreleasePoolPush();
        v130 = v126;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          shortDescription2 = [v29 shortDescription];
          shortDescription3 = [(HMDAccount *)v125 shortDescription];
          *buf = 138543874;
          *&buf[4] = v32;
          v145 = 2112;
          v146 = shortDescription2;
          v147 = 2112;
          v148 = shortDescription3;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Adding handle, %@, to account: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        accounts = [(HMDRemoteAccountManager *)v130 accounts];
        v36 = [accounts countByEnumeratingWithState:&v140 objects:buf count:16];
        if (v36)
        {
          v37 = *v141;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v141 != v37)
              {
                objc_enumerationMutation(accounts);
              }

              v39 = *(*(&v140 + 1) + 8 * i);
              if (v39 != v125)
              {
                handles2 = [*(*(&v140 + 1) + 8 * i) handles];
                v41 = [handles2 containsObject:v29];

                if (v41)
                {
                  handles3 = [(HMDAccount *)v39 handles];
                  v43 = [handles3 count];

                  v44 = objc_autoreleasePoolPush();
                  v45 = v130;
                  v46 = HMFGetOSLogHandle();
                  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
                  if (v43 == 1)
                  {
                    if (v47)
                    {
                      v48 = HMFGetLogIdentifier();
                      *v149 = 138543618;
                      *&v149[4] = v48;
                      *&v149[12] = 2112;
                      *&v149[14] = v39;
                      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Removing account: %@", v149, 0x16u);
                    }

                    objc_autoreleasePoolPop(v44);
                    [(HMDRemoteAccountManager *)v45 removeAccount:v39];
                  }

                  else
                  {
                    if (v47)
                    {
                      v49 = HMFGetLogIdentifier();
                      *v149 = 138543874;
                      *&v149[4] = v49;
                      *&v149[12] = 2112;
                      *&v149[14] = v29;
                      *&v149[22] = 2112;
                      *&v149[24] = v39;
                      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Removing handle, %@, from account: %@", v149, 0x20u);
                    }

                    objc_autoreleasePoolPop(v44);
                    [(HMDAccount *)v39 removeHandle:v29];
                  }
                }
              }
            }

            v36 = [accounts countByEnumeratingWithState:&v140 objects:buf count:16];
          }

          while (v36);
        }

        [(HMDAccount *)v125 addHandle:v29];
      }
    }
  }

  else
  {
    v50 = v120;
    v51 = v50;
    if (v118)
    {
      v52 = MEMORY[0x277CBEB18];
      deviceHandle = [(HMDAccount *)v50 deviceHandle];
      *buf = deviceHandle;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
      v55 = [v52 arrayWithArray:v54];

      localDeviceHandle = [(HMDAccount *)v51 localDeviceHandle];

      if (localDeviceHandle)
      {
        localDeviceHandle2 = [(HMDAccount *)v51 localDeviceHandle];
        [v55 addObject:localDeviceHandle2];
      }

      v58 = [HMDDevice alloc];
      deviceHandle2 = [(HMDAccount *)v51 deviceHandle];
      identifier = [deviceHandle2 identifier];
      deviceVersion = [(HMDAccount *)v51 deviceVersion];
      v62 = [(HMDDevice *)v58 initWithIdentifier:identifier handles:v55 name:0 productInfo:0 version:deviceVersion capabilities:0];

      accountIdentifier3 = [(HMDAccount *)v51 accountIdentifier];

      v64 = [HMDAccount alloc];
      if (accountIdentifier3)
      {
        accountIdentifier4 = [(HMDAccount *)v51 accountIdentifier];
        accountHandle5 = [(HMDAccount *)v51 accountHandle];
        *&v140 = accountHandle5;
        accountHandle6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
        *v149 = v62;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:1];
        v125 = [(HMDAccount *)v64 initWithIdentifier:accountIdentifier4 handles:accountHandle6 devices:v68];
      }

      else
      {
        accountIdentifier4 = [(HMDAccount *)v51 accountHandle];
        accountHandle5 = [HMDAccountIdentifier accountIdentifierForAccountHandle:accountIdentifier4];
        accountHandle6 = [(HMDAccount *)v51 accountHandle];
        *&v140 = accountHandle6;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
        *v149 = v62;
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:1];
        v125 = [(HMDAccount *)v64 initWithIdentifier:accountHandle5 handles:v68 devices:v69];
      }
    }

    else
    {
      v125 = 0;
    }

    v70 = objc_autoreleasePoolPush();
    v71 = v118;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v73;
      v145 = 2112;
      v146 = v125;
      _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_INFO, "%{public}@Adding account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    [(HMDRemoteAccountManager *)v71 addAccount:v125];
  }

  localDeviceHandle3 = [(HMDAccount *)v120 localDeviceHandle];
  deviceHandle3 = [(HMDAccount *)v120 deviceHandle];
  v129 = [(HMDAccount *)v125 deviceForHandle:deviceHandle3];

  if (!v129)
  {
    v85 = MEMORY[0x277CBEB18];
    deviceHandle4 = [(HMDAccount *)v120 deviceHandle];
    v135 = deviceHandle4;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
    v115 = [v85 arrayWithArray:v87];

    if (localDeviceHandle3)
    {
      localDeviceHandle4 = [(HMDAccount *)v120 localDeviceHandle];
      [v115 addObject:localDeviceHandle4];
    }

    v89 = [HMDDevice alloc];
    deviceHandle5 = [(HMDAccount *)v120 deviceHandle];
    identifier2 = [deviceHandle5 identifier];
    v92 = objc_msgSend_copy(v115);
    deviceVersion2 = [(HMDAccount *)v120 deviceVersion];
    v94 = [(HMDDevice *)v89 initWithIdentifier:identifier2 handles:v92 name:0 productInfo:0 version:deviceVersion2 capabilities:0];

    v95 = v118;
    v123 = v125;
    v129 = v94;
    v114 = v95;
    if (v95 && v123 && v129)
    {
      v96 = objc_autoreleasePoolPush();
      v128 = v114;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        shortDescription4 = [(HMDDevice *)v129 shortDescription];
        shortDescription5 = [(HMDAccount *)v123 shortDescription];
        *buf = 138543874;
        *&buf[4] = v98;
        v145 = 2112;
        v146 = shortDescription4;
        v147 = 2112;
        v148 = shortDescription5;
        _os_log_impl(&dword_2531F8000, v97, OS_LOG_TYPE_INFO, "%{public}@Adding device, %@, to the account: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v96);
      v150 = 0u;
      v151 = 0u;
      memset(v149, 0, sizeof(v149));
      obj = [(HMDRemoteAccountManager *)v128 accounts];
      v124 = [obj countByEnumeratingWithState:v149 objects:buf count:16];
      if (v124)
      {
        v122 = **&v149[16];
        do
        {
          for (j = 0; j != v124; ++j)
          {
            if (**&v149[16] != v122)
            {
              objc_enumerationMutation(obj);
            }

            v101 = *(*&v149[8] + 8 * j);
            if (v101 != v123)
            {
              v133 = 0u;
              v134 = 0u;
              v131 = 0u;
              v132 = 0u;
              devices = [(HMDAccount *)v101 devices];
              v103 = [devices countByEnumeratingWithState:&v131 objects:&v140 count:16];
              if (v103)
              {
                v104 = *v132;
                do
                {
                  for (k = 0; k != v103; ++k)
                  {
                    if (*v132 != v104)
                    {
                      objc_enumerationMutation(devices);
                    }

                    v106 = *(*(&v131 + 1) + 8 * k);
                    if ([v106 isRelatedToDevice:{v129, v114}])
                    {
                      v107 = objc_autoreleasePoolPush();
                      v108 = v128;
                      v109 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
                      {
                        v110 = HMFGetLogIdentifier();
                        *v136 = 138543618;
                        v137 = v110;
                        v138 = 2112;
                        v139 = v106;
                        _os_log_impl(&dword_2531F8000, v109, OS_LOG_TYPE_INFO, "%{public}@Removing device: %@", v136, 0x16u);
                      }

                      objc_autoreleasePoolPop(v107);
                      [(HMDAccount *)v101 removeDevice:v106];
                    }
                  }

                  v103 = [devices countByEnumeratingWithState:&v131 objects:&v140 count:16];
                }

                while (v103);
              }
            }
          }

          v124 = [obj countByEnumeratingWithState:v149 objects:buf count:16];
        }

        while (v124);
      }

      [(HMDAccount *)v123 addDevice:v129];
    }

    deviceVersion6 = v115;
    goto LABEL_90;
  }

  deviceVersion3 = [(HMDAccount *)v120 deviceVersion];
  if (deviceVersion3)
  {
    deviceVersion4 = [(HMDAccount *)v120 deviceVersion];
    version = [(HMDDevice *)v129 version];
    v78 = HMFEqualObjects();

    if ((v78 & 1) == 0)
    {
      v79 = objc_autoreleasePoolPush();
      v80 = v118;
      v81 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v82 = HMFGetLogIdentifier();
        deviceVersion5 = [(HMDAccount *)v120 deviceVersion];
        *buf = 138543874;
        *&buf[4] = v82;
        v145 = 2112;
        v146 = v129;
        v147 = 2112;
        v148 = deviceVersion5;
        _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@Updating the device, %@, with version: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v79);
      deviceVersion6 = [(HMDAccount *)v120 deviceVersion];
      [(HMDDevice *)v129 updateVersion:deviceVersion6];
LABEL_90:
    }
  }

  os_unfair_recursive_lock_unlock();
  v7 = objc_autoreleasePoolPush();
  v111 = v118;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v112 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v112;
    v145 = 2112;
    v146 = v120;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Updated with sender context: %@", buf, 0x16u);
  }

LABEL_93:

  objc_autoreleasePoolPop(v7);
  contextCopy = v117;
LABEL_94:

  return v129;
}

- (id)accountForSenderContext:(id)context
{
  if (context)
  {
    v3 = [(HMDRemoteAccountManager *)self deviceForSenderContext:?];
    account = [v3 account];
  }

  else
  {
    account = 0;
  }

  return account;
}

- (void)__handleSendMessageFailureWithError:(id)error destination:(id)destination
{
  v55[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  destinationCopy = destination;
  v8 = destinationCopy;
  if (errorCopy && destinationCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v51 = errorCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received notification of failed message to, %@, with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    domain = [errorCopy domain];
    v14 = [domain isEqualToString:*MEMORY[0x277D18538]];

    if (v14)
    {
      if (([errorCopy code] & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        goto LABEL_40;
      }

LABEL_10:
      v17 = selfCopy;
      v18 = v8;
      if (!v17)
      {
LABEL_39:

        goto LABEL_40;
      }

      v19 = +[HMDAccountHandleFormatter defaultFormatter];
      v20 = [v19 accountHandleFromString:v18];

      if (!v20)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v17;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v51 = v18;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from unknown account handle: %{mask.hash}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        goto LABEL_38;
      }

      v21 = [(HMDRemoteAccountManager *)v17 accountForHandle:v20];
      v22 = [HMDDeviceHandle deviceHandleForDestination:v18];
      v48 = v22;
      if (v22)
      {
        if (([v22 isGlobal] & 1) == 0)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v17;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v38;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v51 = v48;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from non-global handle: %{mask.hash}@", buf, 0x20u);
          }

          goto LABEL_19;
        }

        if (!v21)
        {
          v21 = [(HMDRemoteAccountManager *)v17 accountForDeviceHandle:v48];
          if (!v21)
          {
            v43 = objc_autoreleasePoolPush();
            v44 = v17;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543874;
              *&buf[4] = v46;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2112;
              v51 = v48;
              _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from device handle with no account %{mask.hash}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v43);
            goto LABEL_37;
          }
        }

        v47 = [v21 deviceForHandle:v48];
        if (!v47)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v17;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v26;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v51 = v48;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from unknown device handle: %{mask.hash}@", buf, 0x20u);
          }

LABEL_19:

          objc_autoreleasePoolPop(v23);
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }
      }

      else
      {
        if (!v21)
        {
          v39 = objc_autoreleasePoolPush();
          v40 = v17;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v42;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v51 = v18;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from unknown destination: %{mask.hash}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v39);
          goto LABEL_37;
        }

        v47 = 0;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = v17;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v34;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v51 = v18;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Received unregistration from destination: %{mask.hash}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      objc_initWeak(&location, v32);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____handleUnregisteredDestination_block_invoke;
      v51 = &unk_27972C2E0;
      objc_copyWeak(v55, &location);
      v35 = v21;
      v52 = v35;
      v36 = v20;
      v53 = v36;
      v37 = v47;
      v54 = v37;
      [(HMDRemoteAccountManager *)v32 _resolveAccountForHandle:v36 completionHandler:buf];

      objc_destroyWeak(v55);
      objc_destroyWeak(&location);

      goto LABEL_37;
    }

    domain2 = [errorCopy domain];
    v16 = [domain2 isEqualToString:*MEMORY[0x277D18920]];

    if (v16 && [errorCopy code] == 1)
    {
      goto LABEL_10;
    }
  }

LABEL_40:
}

@end