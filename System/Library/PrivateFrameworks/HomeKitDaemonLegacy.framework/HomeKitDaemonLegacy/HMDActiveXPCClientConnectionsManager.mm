@interface HMDActiveXPCClientConnectionsManager
+ (id)logCategory;
- (HMDActiveXPCClientConnectionsManager)initWithLogIdentifier:(id)identifier workQueue:(id)queue;
- (HMDActiveXPCClientConnectionsManagerDelegate)delegate;
- (NSSet)clientConnections;
- (void)addClientConnection:(id)connection;
- (void)configure;
- (void)handleClientConnectionDidActivate:(id)activate;
- (void)handleClientConnectionDidDeactivate:(id)deactivate;
- (void)removeClientConnection:(id)connection;
@end

@implementation HMDActiveXPCClientConnectionsManager

- (HMDActiveXPCClientConnectionsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleClientConnectionDidDeactivate:(id)deactivate
{
  userInfo = [deactivate userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    clientConnections = [(HMDActiveXPCClientConnectionsManager *)self clientConnections];
    v9 = [clientConnections containsObject:v7];

    if (v9)
    {
      workQueue = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidDeactivate___block_invoke;
      v11[3] = &unk_2797359B0;
      v11[4] = self;
      v12 = v7;
      dispatch_async(workQueue, v11);
    }
  }
}

void __76__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidDeactivate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling client connection did deactivate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 clientConnectionsManager:*(a1 + 32) didHandleDeactivationForClientConnection:*(a1 + 40)];
}

- (void)handleClientConnectionDidActivate:(id)activate
{
  userInfo = [activate userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    clientConnections = [(HMDActiveXPCClientConnectionsManager *)self clientConnections];
    v9 = [clientConnections containsObject:v7];

    if (v9)
    {
      workQueue = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidActivate___block_invoke;
      v11[3] = &unk_2797359B0;
      v11[4] = self;
      v12 = v7;
      dispatch_async(workQueue, v11);
    }
  }
}

void __74__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidActivate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling client connection did activate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 clientConnectionsManager:*(a1 + 32) didHandleActivationForClientConnection:*(a1 + 40)];
}

- (void)removeClientConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  workQueue = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = connectionCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing client connection: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  mutableClientConnections = [(HMDActiveXPCClientConnectionsManager *)selfCopy mutableClientConnections];
  [mutableClientConnections removeObject:connectionCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  delegate = [(HMDActiveXPCClientConnectionsManager *)selfCopy delegate];
  [delegate clientConnectionsManager:selfCopy didHandleDeactivationForClientConnection:connectionCopy];
}

- (void)addClientConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  workQueue = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = connectionCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding client connection: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  mutableClientConnections = [(HMDActiveXPCClientConnectionsManager *)selfCopy mutableClientConnections];
  [mutableClientConnections addObject:connectionCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if ([connectionCopy isActivated])
  {
    delegate = [(HMDActiveXPCClientConnectionsManager *)selfCopy delegate];
    [delegate clientConnectionsManager:selfCopy didHandleActivationForClientConnection:connectionCopy];
  }
}

- (void)configure
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleClientConnectionDidActivate_ name:@"HMDXPCClientConnectionDidActivateNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleClientConnectionDidDeactivate_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];
}

- (NSSet)clientConnections
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEB98];
  mutableClientConnections = [(HMDActiveXPCClientConnectionsManager *)self mutableClientConnections];
  allObjects = [mutableClientConnections allObjects];
  v6 = [v3 setWithArray:allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HMDActiveXPCClientConnectionsManager)initWithLogIdentifier:(id)identifier workQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = queueCopy;
  if (!queueCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return +[(HMDActiveXPCClientConnectionsManager *)v15];
  }

  v17.receiver = self;
  v17.super_class = HMDActiveXPCClientConnectionsManager;
  v9 = [(HMDActiveXPCClientConnectionsManager *)&v17 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(identifierCopy);
    logIdentifier = v9->_logIdentifier;
    v9->_logIdentifier = v10;

    objc_storeStrong(&v9->_workQueue, queue);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    mutableClientConnections = v9->_mutableClientConnections;
    v9->_mutableClientConnections = weakObjectsHashTable;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_15205 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_15205, &__block_literal_global_15206);
  }

  v3 = logCategory__hmf_once_v10_15207;

  return v3;
}

uint64_t __51__HMDActiveXPCClientConnectionsManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_15207;
  logCategory__hmf_once_v10_15207 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end