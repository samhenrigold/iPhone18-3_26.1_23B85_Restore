@interface HMDAccessorySettingsLegacyMessageReceiver
- (HMDAccessorySettingsLegacyMessageReceiver)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher;
- (HMDAccessorySettingsMessenger)messenger;
- (void)registerForMessagesWithHome:(id)home;
- (void)routeAccessorySettingsFetchRequestMessage:(id)message;
- (void)routeAccessorySettingsUpdateRequestMessage:(id)message;
@end

@implementation HMDAccessorySettingsLegacyMessageReceiver

- (HMDAccessorySettingsMessenger)messenger
{
  WeakRetained = objc_loadWeakRetained(&self->_messenger);

  return WeakRetained;
}

- (void)routeAccessorySettingsUpdateRequestMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing legacy update request message: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messenger = [(HMDAccessorySettingsLegacyMessageReceiver *)selfCopy messenger];
  v10 = messenger;
  if (messenger)
  {
    [messenger routeAccessorySettingsUpdateRequestMessage:messageCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle legacy update request message due to unconfigured messenger error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [messageCopy respondWithError:v11];
  }
}

- (void)routeAccessorySettingsFetchRequestMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing legacy fetch request message: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messenger = [(HMDAccessorySettingsLegacyMessageReceiver *)selfCopy messenger];
  v10 = messenger;
  if (messenger)
  {
    [messenger routeAccessorySettingsFetchRequestMessage:messageCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle legacy fetch request message due to unconfigured messenger error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [messageCopy respondWithError:v11];
  }
}

- (void)registerForMessagesWithHome:(id)home
{
  v16[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];

  messageDispatcher = [(HMDAccessorySettingsLegacyMessageReceiver *)self messageDispatcher];
  v10 = *MEMORY[0x277CCEDB8];
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [messageDispatcher registerForMessage:v10 receiver:self policies:v11 selector:sel_routeAccessorySettingsFetchRequestMessage_];

  messageDispatcher2 = [(HMDAccessorySettingsLegacyMessageReceiver *)self messageDispatcher];
  v13 = *MEMORY[0x277CCEDC8];
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [messageDispatcher2 registerForMessage:v13 receiver:self policies:v14 selector:sel_routeAccessorySettingsUpdateRequestMessage_];
}

- (HMDAccessorySettingsLegacyMessageReceiver)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(HMDAnnounceUserSettingsModel *)v13 initWithUserUUID:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = HMDAccessorySettingsLegacyMessageReceiver;
  v10 = [(HMDAccessorySettingsLegacyMessageReceiver *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageTargetUUID, d);
    objc_storeStrong(&v11->_messageDispatcher, dispatcher);
  }

  return v11;
}

@end