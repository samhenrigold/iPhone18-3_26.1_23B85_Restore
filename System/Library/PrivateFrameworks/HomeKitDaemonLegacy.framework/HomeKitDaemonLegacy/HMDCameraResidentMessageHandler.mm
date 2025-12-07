@interface HMDCameraResidentMessageHandler
+ (id)logCategory;
- (BOOL)isRemoteAccessDeviceReachable;
- (BOOL)isUsingCompanionForRemoteAccessDevice;
- (HMDAccessory)accessory;
- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier;
- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier messageDispatcher:(id)dispatcher;
- (HMDDevice)remoteAccessDevice;
- (id)nextMessageForDeviceIdentifier:(id)identifier;
- (void)dequeueRespondedMessageForDeviceIdentifier:(id)identifier;
- (void)enqueueMessage:(id)message forDeviceIdentifier:(id)identifier;
- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target device:(id)device responseQueue:(id)queue responseHandler:(id)handler;
- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target responseQueue:(id)queue responseHandler:(id)handler;
- (void)sendNextMessageForDeviceIdentifier:(id)identifier;
@end

@implementation HMDCameraResidentMessageHandler

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)sendNextMessageForDeviceIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(HMDCameraResidentMessageHandler *)self nextMessageForDeviceIdentifier:identifierCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [v5 shortDescription];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = shortDescription;
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending next queued message %@ to device with identifier: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    messageDispatcher = [(HMDCameraResidentMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v5];
  }
}

- (id)nextMessageForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  queuedMessagesByDeviceIdentifier = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v6 = [queuedMessagesByDeviceIdentifier objectForKeyedSubscript:identifierCopy];
  firstObject = [v6 firstObject];

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (void)dequeueRespondedMessageForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  queuedMessagesByDeviceIdentifier = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v5 = [queuedMessagesByDeviceIdentifier objectForKeyedSubscript:identifierCopy];

  [v5 hmf_removeFirstObject];
  if (![v5 count])
  {
    queuedMessagesByDeviceIdentifier2 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
    [queuedMessagesByDeviceIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enqueueMessage:(id)message forDeviceIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  queuedMessagesByDeviceIdentifier = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  array = [queuedMessagesByDeviceIdentifier objectForKeyedSubscript:identifierCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    queuedMessagesByDeviceIdentifier2 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
    [queuedMessagesByDeviceIdentifier2 setObject:array forKeyedSubscript:identifierCopy];
  }

  v10 = [array count];
  [array addObject:messageCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v10)
  {
    [(HMDCameraResidentMessageHandler *)self sendNextMessageForDeviceIdentifier:identifierCopy];
  }
}

- (BOOL)isRemoteAccessDeviceReachable
{
  accessory = [(HMDCameraResidentMessageHandler *)self accessory];
  home = [accessory home];
  isRemoteAccessDeviceReachable = [home isRemoteAccessDeviceReachable];

  return isRemoteAccessDeviceReachable;
}

- (BOOL)isUsingCompanionForRemoteAccessDevice
{
  remoteAccessDevice = [(HMDCameraResidentMessageHandler *)self remoteAccessDevice];
  accessory = [(HMDCameraResidentMessageHandler *)self accessory];
  home = [accessory home];
  homeManager = [home homeManager];
  companionDevice = [homeManager companionDevice];
  v8 = [remoteAccessDevice isEqual:companionDevice];

  return v8;
}

- (HMDDevice)remoteAccessDevice
{
  v23 = *MEMORY[0x277D85DE8];
  accessory = [(HMDCameraResidentMessageHandler *)self accessory];
  home = [accessory home];

  if (home)
  {
    homeManager = [home homeManager];
    companionDevice = [homeManager companionDevice];

    if (companionDevice)
    {
      device = companionDevice;
    }

    else
    {
      primaryResident = [home primaryResident];
      device = [primaryResident device];

      if (device)
      {
        v13 = device;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v17;
          v21 = 2112;
          v22 = home;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find remote access device for home %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get home to determine remote access device", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    device = 0;
  }

  return device;
}

- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target responseQueue:(id)queue responseHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  targetCopy = target;
  payloadCopy = payload;
  dCopy = d;
  nameCopy = name;
  remoteAccessDevice = [(HMDCameraResidentMessageHandler *)self remoteAccessDevice];
  [(HMDCameraResidentMessageHandler *)self sendMessageWithName:nameCopy cameraSessionID:dCopy payload:payloadCopy target:targetCopy device:remoteAccessDevice responseQueue:queueCopy responseHandler:handlerCopy];
}

- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target device:(id)device responseQueue:(id)queue responseHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  payloadCopy = payload;
  targetCopy = target;
  deviceCopy = device;
  queueCopy = queue;
  handlerCopy = handler;
  if (deviceCopy)
  {
    v37 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:targetCopy device:deviceCopy];
    v40 = payloadCopy;
    v22 = [HMDRemoteMessage secureMessageWithName:"secureMessageWithName:qualityOfService:destination:messagePayload:" qualityOfService:nameCopy destination:33 messagePayload:?];
    identifier = [v22 identifier];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_12;
    v41[3] = &unk_279734780;
    v39 = queueCopy;
    v42 = queueCopy;
    v38 = handlerCopy;
    v46 = handlerCopy;
    selfCopy = self;
    v24 = identifier;
    v44 = v24;
    v25 = deviceCopy;
    v45 = v25;
    [v22 setResponseHandler:v41];
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v34 = v26;
      [v25 shortDescription];
      v35 = targetCopy;
      v31 = v30 = dCopy;
      [v22 shortDescription];
      v32 = v36 = nameCopy;
      *buf = 138544130;
      v52 = v29;
      v53 = 2112;
      v54 = v30;
      v55 = 2112;
      v56 = v31;
      v57 = 2112;
      v58 = v32;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Enqueueing camera message for session ID %@ to %@ using %@", buf, 0x2Au);

      nameCopy = v36;
      dCopy = v30;
      targetCopy = v35;

      v26 = v34;
    }

    objc_autoreleasePoolPop(v26);
    identifier2 = [v25 identifier];
    [(HMDCameraResidentMessageHandler *)selfCopy2 enqueueMessage:v22 forDeviceIdentifier:identifier2];

    queueCopy = v39;
    payloadCopy = v40;
    handlerCopy = v38;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v48 = nameCopy;
    v49 = dCopy;
    v50 = handlerCopy;
    dispatch_async(queueCopy, block);
  }
}

void __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Did not find the resident device to send the message %@ for session %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 56);
  v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1034];
  (*(v8 + 16))(v8, v9, 0);
}

void __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_2;
  block[3] = &unk_2797355D0;
  v22 = *(a1 + 64);
  v8 = v5;
  v20 = v8;
  v9 = v6;
  v21 = v9;
  dispatch_async(v7, block);
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 48);
    *buf = 138543618;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received response for message with identifier %@. Sending next message", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 56) identifier];
  [v15 dequeueRespondedMessageForDeviceIdentifier:v16];

  v17 = *(a1 + 40);
  v18 = [*(a1 + 56) identifier];
  [v17 sendNextMessageForDeviceIdentifier:v18];
}

- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier messageDispatcher:(id)dispatcher
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!identifierCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_9:
    v19 = _HMFPreconditionFailure();
    return [(HMDCameraResidentMessageHandler *)v19 initWithAccessory:v20 logIdentifier:v21, v22];
  }

  v23.receiver = self;
  v23.super_class = HMDCameraResidentMessageHandler;
  v12 = [(HMDCameraResidentMessageHandler *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_accessory, accessoryCopy);
    objc_storeStrong(&v13->_messageDispatcher, dispatcher);
    v14 = objc_msgSend_copy(identifierCopy);
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    queuedMessagesByDeviceIdentifier = v13->_queuedMessagesByDeviceIdentifier;
    v13->_queuedMessagesByDeviceIdentifier = dictionary;
  }

  return v13;
}

- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessoryCopy = accessory;
  v8 = +[HMDMessageDispatcher defaultDispatcher];
  v9 = [(HMDCameraResidentMessageHandler *)self initWithAccessory:accessoryCopy logIdentifier:identifierCopy messageDispatcher:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_78943 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_78943, &__block_literal_global_78944);
  }

  v3 = logCategory__hmf_once_v10_78945;

  return v3;
}

uint64_t __46__HMDCameraResidentMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_78945;
  logCategory__hmf_once_v10_78945 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end