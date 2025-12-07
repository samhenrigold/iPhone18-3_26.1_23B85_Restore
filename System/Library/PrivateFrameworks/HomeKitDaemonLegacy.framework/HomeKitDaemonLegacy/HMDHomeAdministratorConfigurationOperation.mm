@interface HMDHomeAdministratorConfigurationOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)message home:(id)home dispatcher:(id)dispatcher;
- (id)logIdentifier;
- (void)_respondWithError:(id)error payload:(id)payload;
- (void)cancelWithError:(id)error;
- (void)main;
@end

@implementation HMDHomeAdministratorConfigurationOperation

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  message = [(HMDHomeAdministratorConfigurationOperation *)self message];
  identifier = [message identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(HMDHomeAdministratorConfigurationOperation *)self _respondWithError:errorCopy payload:0];
  v5.receiver = self;
  v5.super_class = HMDHomeAdministratorConfigurationOperation;
  [(HMFOperation *)&v5 cancelWithError:errorCopy];
}

- (void)_respondWithError:(id)error payload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  os_unfair_lock_lock_with_options();
  if ([(HMDHomeAdministratorConfigurationOperation *)self isMessageResponseHandled])
  {
    message = 0;
  }

  else
  {
    [(HMDHomeAdministratorConfigurationOperation *)self setMessageResponseHandled:1];
    message = [(HMDHomeAdministratorConfigurationOperation *)self message];
  }

  os_unfair_lock_unlock(&self->_lock);
  [message respondWithPayload:payloadCopy error:errorCopy];
}

- (void)main
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_home);
  primaryResident = [WeakRetained primaryResident];
  if (primaryResident)
  {
    v5 = objc_msgSend_copy(self->_message);
    v6 = [v5 mutableCopy];

    [v6 setRemote:1];
    [v6 setSecureRemote:1];
    v7 = [HMDRemoteDeviceMessageDestination alloc];
    destination = [(HMFMessage *)self->_message destination];
    target = [destination target];
    device = [primaryResident device];
    v11 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:target device:device];
    [v6 setDestination:v11];

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke;
    v23[3] = &unk_279733B98;
    objc_copyWeak(&v24, &location);
    [v6 setResponseHandler:v23];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    dispatcher = [(HMDHomeAdministratorConfigurationOperation *)selfCopy dispatcher];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_8;
    v21[3] = &unk_279734708;
    objc_copyWeak(&v22, &location);
    [dispatcher sendMessage:v6 completionHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to forward message to home without a resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:0 reason:@"A home hub is required." suggestion:0];
    [(HMDHomeAdministratorConfigurationOperation *)selfCopy2 cancelWithError:v6];
  }
}

void __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward message with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 cancelWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received confirmation for forwarded message", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v9 finish];
  }

  [v9 _respondWithError:v5 payload:v6];
}

void __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sendCompletionBlock];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client the send completed with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v7 setSendCompletionBlock:0];
    (v5)[2](v5, v3);
  }
}

- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)message home:(id)home dispatcher:(id)dispatcher
{
  messageCopy = message;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  v12 = dispatcherCopy;
  selfCopy = 0;
  if (messageCopy && homeCopy && dispatcherCopy)
  {
    [objc_opt_class() timeout];
    v19.receiver = self;
    v19.super_class = HMDHomeAdministratorConfigurationOperation;
    v14 = [(HMFOperation *)&v19 initWithTimeout:?];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_message, message);
      objc_storeWeak(&v15->_home, homeCopy);
      objc_storeStrong(&v15->_dispatcher, dispatcher);
      responseHandler = [messageCopy responseHandler];
      responseHandler = v15->_responseHandler;
      v15->_responseHandler = responseHandler;

      -[HMFOperation setQualityOfService:](v15, "setQualityOfService:", [messageCopy qualityOfService]);
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_115517 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_115517, &__block_literal_global_115518);
  }

  v3 = logCategory__hmf_once_v7_115519;

  return v3;
}

uint64_t __57__HMDHomeAdministratorConfigurationOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_115519;
  logCategory__hmf_once_v7_115519 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (double)timeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"adminConfigurationOperationTimeout"];

  numberValue = [v3 numberValue];

  if (numberValue)
  {
    numberValue2 = [v3 numberValue];
    [numberValue2 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 65.0;
  }

  return v7;
}

@end