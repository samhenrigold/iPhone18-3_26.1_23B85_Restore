@interface HMModernMessagingClient
+ (id)logCategory;
- (HMHome)home;
- (HMModernMessagingClient)initWithHome:(id)home idsTopic:(id)topic;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)registerModernMessagingRequestHandlerWithMessageName:(id)name options:(id)options requestHandler:(id)handler completionHandler:(id)completionHandler;
- (void)sendModernMessagingRequestWithMessageName:(id)name destination:(id)destination requestPayload:(id)payload options:(id)options responseHandler:(id)handler completionHandler:(id)completionHandler;
- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)name completionHandler:(id)handler;
@end

@implementation HMModernMessagingClient

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  home = [(HMModernMessagingClient *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  idsTopic = [(HMModernMessagingClient *)self idsTopic];
  v8 = [v3 stringWithFormat:@"%@:%@", uUIDString, idsTopic];

  return v8;
}

- (void)sendModernMessagingRequestWithMessageName:(id)name destination:(id)destination requestPayload:(id)payload options:(id)options responseHandler:(id)handler completionHandler:(id)completionHandler
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  destinationCopy = destination;
  payloadCopy = payload;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v23 = v32 = payloadCopy;
    v24 = HMFBooleanToString();
    *buf = 138544386;
    v35 = v23;
    v36 = 2112;
    v37 = nameCopy;
    v38 = 2112;
    v39 = destinationCopy;
    v40 = 2112;
    v41 = optionsCopy;
    v42 = 2112;
    v43 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Sending hmmm message with message name: %@, destination: %@, options: %@, oneway: %@", buf, 0x34u);

    payloadCopy = v32;
  }

  objc_autoreleasePoolPop(v20);
  home = [(HMModernMessagingClient *)selfCopy home];
  v26 = home;
  if (home)
  {
    [home sendModernMessagingRequestWithMessageName:nameCopy destination:destinationCopy requestPayload:payloadCopy options:optionsCopy responseHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v33 = payloadCopy;
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v30;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Error while sending hmmm request handler: home is null", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    payloadCopy = v33;
    if (completionHandlerCopy)
    {
      v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      completionHandlerCopy[2](completionHandlerCopy, v31);
    }
  }
}

- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)name completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Unregistering hmmm request handler with message name: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMModernMessagingClient *)selfCopy home];
  v13 = home;
  if (home)
  {
    [home unregisterModernMessagingRequestHandlerWithMessageName:nameCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error while unregistering hmmm request handler: home is null", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (handlerCopy)
    {
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      handlerCopy[2](handlerCopy, v18);
    }
  }
}

- (void)registerModernMessagingRequestHandlerWithMessageName:(id)name options:(id)options requestHandler:(id)handler completionHandler:(id)completionHandler
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v17;
    v27 = 2112;
    v28 = nameCopy;
    v29 = 2112;
    v30 = optionsCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Registering hmmm request handler with message name: %@, options: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  home = [(HMModernMessagingClient *)selfCopy home];
  v19 = home;
  if (home)
  {
    [home registerModernMessagingRequestHandlerWithMessageName:nameCopy options:optionsCopy requestHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Error while registering hmmm request handler: home is null", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    if (completionHandlerCopy)
    {
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      completionHandlerCopy[2](completionHandlerCopy, v24);
    }
  }
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  home = [(HMModernMessagingClient *)self home];
  uuid = [home uuid];
  v6 = [v3 initWithName:@"HomeUUID" value:uuid];
  v12[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  idsTopic = [(HMModernMessagingClient *)self idsTopic];
  v9 = [v7 initWithName:@"IDSTopic" value:idsTopic];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (HMModernMessagingClient)initWithHome:(id)home idsTopic:(id)topic
{
  homeCopy = home;
  topicCopy = topic;
  v13.receiver = self;
  v13.super_class = HMModernMessagingClient;
  v8 = [(HMModernMessagingClient *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    v10 = [topicCopy copy];
    idsTopic = v9->_idsTopic;
    v9->_idsTopic = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_44227 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_44227, &__block_literal_global_44228);
  }

  v3 = logCategory__hmf_once_v7_44229;

  return v3;
}

uint64_t __38__HMModernMessagingClient_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_44229;
  logCategory__hmf_once_v7_44229 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end