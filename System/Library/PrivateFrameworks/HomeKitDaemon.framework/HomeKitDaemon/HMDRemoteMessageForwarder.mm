@interface HMDRemoteMessageForwarder
+ (id)logCategory;
+ (id)remoteMessageForwarderUUIDFromUUID:(id)d;
- (HMDHome)home;
- (HMDRemoteMessageForwarder)initWithHome:(id)home UUID:(id)d workQueue:(id)queue;
- (id)messageForForwardedMessage:(id)message;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)handleResponseMessage:(id)message;
- (void)redispatchToResidentMessage:(id)message;
@end

@implementation HMDRemoteMessageForwarder

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleResponseMessage:(id)message
{
  v37[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [messageCopy respondWithSuccess];
  v6 = [messageCopy dictionaryForKey:@"HMDRemoteMessageForwarderPayloadKey"];
  v37[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v8 = [messageCopy unarchivedObjectForKey:@"HMDRemoteMessageForwarderErrorKey" ofClasses:v7];

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [messageCopy stringForKey:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];
  v11 = [v9 initWithUUIDString:v10];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    *buf = 138544130;
    v30 = v15;
    v31 = 2112;
    v32 = name;
    v33 = 2112;
    v34 = identifier;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling response message with name: %@, identifier: %@, originalMessageIdentifier: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  messagesByIdentifier = [(HMDRemoteMessageForwarder *)selfCopy messagesByIdentifier];
  v19 = [messagesByIdentifier objectForKeyedSubscript:v11];

  if (v19)
  {
    [v19 respondWithPayload:v6 error:v8];
    messagesByIdentifier2 = [(HMDRemoteMessageForwarder *)selfCopy messagesByIdentifier];
    identifier2 = [messageCopy identifier];
    [messagesByIdentifier2 setObject:0 forKeyedSubscript:identifier2];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      name2 = [messageCopy name];
      [messageCopy identifier];
      v27 = v28 = v22;
      *buf = 138543874;
      v30 = v25;
      v31 = 2112;
      v32 = name2;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Did not find a cached message for message response with name: %@, identifier: %@", buf, 0x20u);

      v22 = v28;
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (id)messageForForwardedMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    name = [messageCopy name];
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = name;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Determining message for message with name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy stringForKey:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];
  if ([messageCopy isRemote] && v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Message with original message identifier: %@, is remote, returning a copy and responding to the original.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [messageCopy mutableCopy];
    [messageCopy respondWithSuccess];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke;
    v25[3] = &unk_278686658;
    v26 = v12;
    v27 = v14;
    v28 = messageCopy;
    v18 = messageCopy;
    v19 = v12;
    [v17 setResponseHandler:v25];

    messageCopy = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Message was not forwarded, returning as is.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  return messageCopy;
}

void __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:v6 forKeyedSubscript:@"HMDRemoteMessageForwarderPayloadKey"];
  if (v5)
  {
    v8 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    [v7 setObject:v8 forKeyedSubscript:@"HMDRemoteMessageForwarderErrorKey"];
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"HMDRemoteMessageForwarderErrorKey"];
  }

  v9 = [a1[4] UUIDString];
  [v7 setObject:v9 forKeyedSubscript:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];

  v10 = [HMDRemoteMessage alloc];
  v11 = [HMDRemoteDeviceMessageDestination alloc];
  v12 = [a1[5] UUID];
  v13 = [a1[6] remoteSourceDevice];
  v14 = [(HMDRemoteDeviceMessageDestination *)v11 initWithTarget:v12 device:v13];
  v15 = [(HMDRemoteMessage *)v10 initWithName:@"HMDRemoteMessageForwarderResponseMessage" destination:v14 payload:v7 type:0 timeout:1 secure:0.0];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke_2;
  v28[3] = &unk_278686658;
  v16 = a1[6];
  v28[4] = a1[5];
  v29 = v16;
  v30 = a1[4];
  [(HMDRemoteMessage *)v15 setResponseHandler:v28];
  v17 = objc_autoreleasePoolPush();
  v18 = a1[5];
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v20 = v27 = v6;
    v21 = [a1[6] name];
    v22 = v5;
    v23 = a1[4];
    [(HMDRemoteMessage *)v15 identifier];
    v24 = v26 = v17;
    *buf = 138544130;
    v32 = v20;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v23;
    v5 = v22;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending response message for message with name: %@, originalMessageIdentifier: %@, responseMessageIdentifier: %@", buf, 0x2Au);

    v17 = v26;
    v6 = v27;
  }

  objc_autoreleasePoolPop(v17);
  v25 = [a1[5] messageDispatcher];
  [v25 sendMessage:v15];
}

void __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) name];
      v12 = *(a1 + 48);
      v13 = 138544130;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to send response message for message with name: %@, originalMessageIdentifier: %@, error: %@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)redispatchToResidentMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    *buf = 138543874;
    v34 = v9;
    v35 = 2112;
    v36 = name;
    v37 = 2112;
    v38 = identifier;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Redispatching to resident message with name: %@, identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDRemoteMessageForwarder *)selfCopy home];
  if (home)
  {
    v13 = [messageCopy mutableCopy];
    messagePayload = [messageCopy messagePayload];
    v15 = [messagePayload mutableCopy];

    identifier2 = [messageCopy identifier];
    uUIDString = [identifier2 UUIDString];
    [v15 setObject:uUIDString forKeyedSubscript:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];

    [v13 setMessagePayload:v15];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __57__HMDRemoteMessageForwarder_redispatchToResidentMessage___block_invoke;
    v30 = &unk_278688370;
    v31 = selfCopy;
    v18 = messageCopy;
    v32 = v18;
    [v13 setResponseHandler:&v27];
    v19 = [(HMDRemoteMessageForwarder *)selfCopy messagesByIdentifier:v27];
    identifier3 = [v18 identifier];
    [v19 setObject:v18 forKeyedSubscript:identifier3];

    contextUUID = [(HMDRemoteMessageForwarder *)selfCopy contextUUID];
    workQueue2 = [(HMDRemoteMessageForwarder *)selfCopy workQueue];
    [home redispatchToResidentMessage:v13 target:contextUUID responseQueue:workQueue2];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home property is nil on HMDRemoteMessageForwarder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }
}

void __57__HMDRemoteMessageForwarder_redispatchToResidentMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward message to resident: %@ with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) messagesByIdentifier];
    v13 = [*(a1 + 40) identifier];
    [v12 setObject:0 forKeyedSubscript:v13];

    [*(a1 + 40) respondWithError:v5];
  }
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  v30 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  workQueue = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [(HMDRemoteMessageForwarder *)selfCopy UUID];
    *buf = 138543618;
    v27 = v10;
    v28 = 2112;
    v29 = uUID;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDRemoteMessageForwarder with UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  objc_storeStrong(&selfCopy->_messageDispatcher, dispatcher);
  if (!dispatcherCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Message dispatcher property is nil on HMDRemoteMessageForwarder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  home = [(HMDRemoteMessageForwarder *)selfCopy home];
  if (home)
  {
    v17 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v18 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v25[0] = v17;
    v25[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    messageDispatcher = [(HMDRemoteMessageForwarder *)selfCopy messageDispatcher];
    [messageDispatcher registerForMessage:@"HMDRemoteMessageForwarderResponseMessage" receiver:selfCopy policies:v19 selector:sel_handleResponseMessage_];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Home property is nil on HMDRemoteMessageForwarder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (HMDRemoteMessageForwarder)initWithHome:(id)home UUID:(id)d workQueue:(id)queue
{
  homeCopy = home;
  dCopy = d;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMDRemoteMessageForwarder;
  v11 = [(HMDRemoteMessageForwarder *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, homeCopy);
    objc_storeStrong(&v12->_contextUUID, d);
    v13 = [HMDRemoteMessageForwarder remoteMessageForwarderUUIDFromUUID:dCopy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    objc_storeStrong(&v12->_workQueue, queue);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    messagesByIdentifier = v12->_messagesByIdentifier;
    v12->_messagesByIdentifier = dictionary;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_117813 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_117813, &__block_literal_global_117814);
  }

  v3 = logCategory__hmf_once_v14_117815;

  return v3;
}

void __40__HMDRemoteMessageForwarder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_117815;
  logCategory__hmf_once_v14_117815 = v0;
}

+ (id)remoteMessageForwarderUUIDFromUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"CB9FD9B1-29D4-4CA4-97DF-22611DF4AFEC"];
  v6 = MEMORY[0x277CCAD78];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end