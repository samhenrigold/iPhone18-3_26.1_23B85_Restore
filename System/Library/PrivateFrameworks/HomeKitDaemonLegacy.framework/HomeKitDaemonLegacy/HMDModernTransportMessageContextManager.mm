@interface HMDModernTransportMessageContextManager
+ (id)logCategory;
- (HMDModernTransportMessageContextFactory)factory;
- (HMDModernTransportMessageContextManager)initWithFactory:(id)factory;
- (id)contextForIdentifier:(id)identifier;
- (id)contextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider;
- (id)createContextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider;
- (void)completeContext:(id)context withPayload:(id)payload error:(id)error isFinal:(BOOL)final;
@end

@implementation HMDModernTransportMessageContextManager

- (HMDModernTransportMessageContextFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

- (id)contextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider
{
  timerProviderCopy = timerProvider;
  providerCopy = provider;
  handlerCopy = handler;
  optionsCopy = options;
  messageCopy = message;
  v16 = [[HMDModernTransportMessageContext alloc] initWithMessage:messageCopy options:optionsCopy completionHandler:handlerCopy dateProvider:providerCopy timerProvider:timerProviderCopy];

  return v16;
}

- (void)completeContext:(id)context withPayload:(id)payload error:(id)error isFinal:(BOOL)final
{
  finalCopy = final;
  v43 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  payloadCopy = payload;
  errorCopy = error;
  identifier = [contextCopy identifier];
  contexts = [(HMDModernTransportMessageContextManager *)self contexts];
  v15 = [contexts objectForKeyedSubscript:identifier];

  if (v15)
  {
    messageResponseHandler = [contextCopy messageResponseHandler];

    if (messageResponseHandler)
    {
      options = [contextCopy options];
      expectsMultipleResponses = [options expectsMultipleResponses];

      if (expectsMultipleResponses)
      {
        v19 = [payloadCopy mutableCopy];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v20 = [MEMORY[0x277CCABB0] numberWithBool:finalCopy];
        [v19 setObject:v20 forKeyedSubscript:@"kRemoteMessageIsFinalResponseKey"];

        v21 = objc_msgSend_copy(v19);
        payloadCopy = v21;
      }

      [contextCopy messageQualityOfService];
      v22 = HMFQOSClassFromQualityOfService();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__HMDModernTransportMessageContextManager_completeContext_withPayload_error_isFinal___block_invoke;
      block[3] = &unk_279734960;
      v32 = contextCopy;
      v33 = errorCopy;
      payloadCopy = payloadCopy;
      v34 = payloadCopy;
      v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v22, 0, block);
      v23[2]();
    }

    if (finalCopy)
    {
      [contextCopy done];
      contexts2 = [(HMDModernTransportMessageContextManager *)self contexts];
      [contexts2 removeObjectForKey:identifier];
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      identifier2 = [contextCopy identifier];
      messageID = [contextCopy messageID];
      *buf = 138544130;
      v36 = v28;
      v37 = 2112;
      v38 = identifier2;
      v39 = 2112;
      v40 = messageID;
      v41 = 2112;
      v42 = errorCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Completed context %@ for message %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
  }
}

void __85__HMDModernTransportMessageContextManager_completeContext_withPayload_error_isFinal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageResponseHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)contextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contexts = [(HMDModernTransportMessageContextManager *)self contexts];
  v6 = [contexts objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)createContextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  optionsCopy = options;
  handlerCopy = handler;
  providerCopy = provider;
  timerProviderCopy = timerProvider;
  factory = [(HMDModernTransportMessageContextManager *)self factory];
  v18 = [factory contextWithMessage:messageCopy options:optionsCopy completionHandler:handlerCopy dateProvider:providerCopy timerProvider:timerProviderCopy];

  if (v18)
  {
    contexts = [(HMDModernTransportMessageContextManager *)self contexts];
    identifier = [v18 identifier];
    [contexts setObject:v18 forKeyedSubscript:identifier];

    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v24 = v29 = optionsCopy;
      [v18 identifier];
      v25 = v30 = v21;
      identifier2 = [messageCopy identifier];
      *buf = 138543874;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = identifier2;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Created context %@ for message %@", buf, 0x20u);

      v21 = v30;
      optionsCopy = v29;
    }

    objc_autoreleasePoolPop(v21);
    v27 = v18;
  }

  return v18;
}

- (HMDModernTransportMessageContextManager)initWithFactory:(id)factory
{
  factoryCopy = factory;
  v10.receiver = self;
  v10.super_class = HMDModernTransportMessageContextManager;
  v5 = [(HMDModernTransportMessageContextManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_factory, factoryCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contexts = v6->_contexts;
    v6->_contexts = v7;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_157860 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_157860, &__block_literal_global_157861);
  }

  v3 = logCategory__hmf_once_v3_157862;

  return v3;
}

uint64_t __54__HMDModernTransportMessageContextManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_157862;
  logCategory__hmf_once_v3_157862 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end