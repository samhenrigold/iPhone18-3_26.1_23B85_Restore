@interface HMDMediaGroupsAggregatorBackupReceiver
+ (id)logCategory;
- (HMDMediaGroupsAggregatorBackupReceiver)init;
- (HMDMediaGroupsAggregatorBackupReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher;
- (void)handleGroupsBackupDataMessage:(id)message;
- (void)registerForMessagesWithHome:(id)home messageDispatcher:(id)dispatcher;
@end

@implementation HMDMediaGroupsAggregatorBackupReceiver

- (HMDMediaGroupsAggregatorBackupReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupsAggregatorBackupReceiver *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)handleGroupsBackupDataMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling backup group data message: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  v10 = messagePayload;
  if (messagePayload)
  {
    v11 = [messagePayload hmf_arrayForKey:@"HMDMediaGroupsBackupDataKey"];
    if (v11)
    {
      delegate = [(HMDMediaGroupsAggregatorBackupReceiver *)selfCopy delegate];
      if (delegate)
      {
        v13 = delegate;
        [delegate didReceiveBackupData:v11 forBackupReceiver:selfCopy];
        [messageCopy respondWithSuccess];
      }

      else
      {
        v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = 138543618;
          v28 = v26;
          v29 = 2112;
          v30 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify delegate of received backup due to unconfigured delegate error: %@", &v27, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        [messageCopy respondWithError:v22];

        v13 = 0;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v21;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to decode group backup data payload: %@ error: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [messageCopy respondWithError:v13];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v17;
      v29 = 2112;
      v30 = messageCopy;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from group backup data message: %@ error: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [messageCopy respondWithError:v11];
  }
}

- (void)registerForMessagesWithHome:(id)home messageDispatcher:(id)dispatcher
{
  v12[3] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  homeCopy = home;
  v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:3 remoteAccessRequired:0];

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  [dispatcherCopy registerForMessage:@"HMDMediaGroupsBackupDataMessage" receiver:self policies:v11 selector:sel_handleGroupsBackupDataMessage_];
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  homeCopy = home;
  uuid = [homeCopy uuid];
  [(HMDMediaGroupsAggregatorBackupReceiver *)self setIdentifier:uuid];

  [(HMDMediaGroupsAggregatorBackupReceiver *)self registerForMessagesWithHome:homeCopy messageDispatcher:dispatcherCopy];
}

- (HMDMediaGroupsAggregatorBackupReceiver)init
{
  v6.receiver = self;
  v6.super_class = HMDMediaGroupsAggregatorBackupReceiver;
  v2 = [(HMDMediaGroupsAggregatorBackupReceiver *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_6028 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_6028, &__block_literal_global_6029);
  }

  v3 = logCategory__hmf_once_v5_6030;

  return v3;
}

void __53__HMDMediaGroupsAggregatorBackupReceiver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_6030;
  logCategory__hmf_once_v5_6030 = v0;
}

@end