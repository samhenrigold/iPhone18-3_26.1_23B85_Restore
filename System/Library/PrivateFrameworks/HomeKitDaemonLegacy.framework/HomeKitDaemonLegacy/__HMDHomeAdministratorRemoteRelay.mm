@interface __HMDHomeAdministratorRemoteRelay
+ (id)logCategory;
- (void)__handleXPCMessage:(id)message;
@end

@implementation __HMDHomeAdministratorRemoteRelay

- (void)__handleXPCMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiver = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (receiver)
  {
    handler = [(__HMDHomeAdministratorReceiver *)self handler];
    v27 = 0;
    v7 = [handler operationForMessage:messageCopy error:&v27];
    v8 = v27;
    if (v7)
    {
      [v7 setShouldSuspendSyncing:1];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56____HMDHomeAdministratorRemoteRelay___handleXPCMessage___block_invoke;
      v24[3] = &unk_2797358C8;
      v9 = handler;
      v25 = v9;
      v10 = messageCopy;
      v26 = v10;
      [v7 setSendCompletionBlock:v24];
      [v7 setResponseHandler:0];
      objc_initWeak(location, v7);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __56____HMDHomeAdministratorRemoteRelay___handleXPCMessage___block_invoke_2;
      v20 = &unk_279732670;
      objc_copyWeak(&v23, location);
      selfCopy = self;
      v22 = v10;
      [v7 setCompletionBlock:&v17];
      [v9 addOperation:{v7, v17, v18, v19, v20, selfCopy}];

      objc_destroyWeak(&v23);
      objc_destroyWeak(location);

      responseHandler2 = v25;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v15;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create operation with error: %@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      responseHandler = [messageCopy responseHandler];

      if (!responseHandler)
      {
        goto LABEL_9;
      }

      responseHandler2 = [messageCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v8, 0);
    }

LABEL_9:
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_169726 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_169726, &__block_literal_global_171_169727);
  }

  v3 = logCategory__hmf_once_v20_169728;

  return v3;
}

@end