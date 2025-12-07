@interface HMDRemoteHomeMessagingManager
+ (id)logCategory;
- (BOOL)sendMessage:(id)message completionHandler:(id)handler;
- (HMDRemoteHomeMessagingManager)init;
- (void)registerHandler:(id)handler;
@end

@implementation HMDRemoteHomeMessagingManager

- (BOOL)sendMessage:(id)message completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = destination;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    homeUUID = [v10 homeUUID];
    os_unfair_lock_lock_with_options();
    homeUUIDToHandlerMap = [(HMDRemoteHomeMessagingManager *)self homeUUIDToHandlerMap];
    v13 = [homeUUIDToHandlerMap objectForKey:homeUUID];

    os_unfair_lock_unlock(&self->_lock);
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v18;
        v28 = 2114;
        v29 = homeUUID;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching to handler for home UUID: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [v13 sendMessage:messageCopy completionHandler:handlerCopy];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = homeUUID;
        v30 = 2112;
        v31 = messageCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Handler not found for home UUID: %{public}@, message: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v20 = MEMORY[0x277CCA9B8];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handler not found for home UUID %@", homeUUID];
      v22 = [v20 hmErrorWithCode:2 description:@"Cannot send message to the specified home" reason:v21 suggestion:0];

      [messageCopy respondWithError:v22];
      v23 = _Block_copy(handlerCopy);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, v22);
      }
    }
  }

  return v10 != 0;
}

- (void)registerHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    homeUUID = [handlerCopy homeUUID];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = homeUUID;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering handler for home UUID: %{public}@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  homeUUIDToHandlerMap = [(HMDRemoteHomeMessagingManager *)selfCopy homeUUIDToHandlerMap];
  homeUUID2 = [handlerCopy homeUUID];
  [homeUUIDToHandlerMap setObject:handlerCopy forKey:homeUUID2];

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (HMDRemoteHomeMessagingManager)init
{
  v7.receiver = self;
  v7.super_class = HMDRemoteHomeMessagingManager;
  v2 = [(HMDRemoteHomeMessagingManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    homeUUIDToHandlerMap = v3->_homeUUIDToHandlerMap;
    v3->_homeUUIDToHandlerMap = strongToWeakObjectsMapTable;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_231872 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_231872, &__block_literal_global_231873);
  }

  v3 = logCategory__hmf_once_v8_231874;

  return v3;
}

void __44__HMDRemoteHomeMessagingManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_231874;
  logCategory__hmf_once_v8_231874 = v0;
}

@end