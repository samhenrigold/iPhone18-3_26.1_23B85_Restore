@interface HMDRemoteLoginInitiator
+ (id)logCategory;
- (HMDRemoteLoginInitiator)initWithUUID:(id)d accessory:(id)accessory remoteLoginHandler:(id)handler;
- (void)_callCompletion:(id)completion loggedInAccount:(id)account authSession:(id)session;
- (void)_companionLoginWithSessionID:(id)d account:(id)account remoteDevice:(id)device completion:(id)completion;
- (void)_handleProxyDeviceResponse:(id)response error:(id)error message:(id)message;
- (void)_handleRemoteLoginCompanionAuthentication:(id)authentication;
- (void)_handleRemoteLoginProxiedDevice:(id)device;
- (void)_handleRemoteLoginProxyAuthentication:(id)authentication;
- (void)_handleRemoteLoginSignout:(id)signout;
- (void)_handleSignoutResponse:(id)response error:(id)error message:(id)message;
- (void)_proxyLoginWithSessionID:(id)d authResults:(id)results remoteDevice:(id)device completion:(id)completion;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)didCompleteAuthentication:(id)authentication error:(id)error loggedInAccount:(id)account;
- (void)registerForMessages;
@end

@implementation HMDRemoteLoginInitiator

- (void)didCompleteAuthentication:(id)authentication error:(id)error loggedInAccount:(id)account
{
  authenticationCopy = authentication;
  errorCopy = error;
  accountCopy = account;
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HMDRemoteLoginInitiator_didCompleteAuthentication_error_loggedInAccount___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = authenticationCopy;
  v17 = errorCopy;
  v18 = accountCopy;
  v12 = accountCopy;
  v13 = errorCopy;
  v14 = authenticationCopy;
  dispatch_async(workQueue, v15);
}

void __75__HMDRemoteLoginInitiator_didCompleteAuthentication_error_loggedInAccount___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loginSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 remoteAuthentication];
  v6 = *(a1 + 40);

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5 == v6)
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@%@ has completed with error %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _callCompletion:*(a1 + 48) loggedInAccount:*(a1 + 56) authSession:v4];
  }

  else
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received completion from unknown remote authentication with error %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_callCompletion:(id)completion loggedInAccount:(id)account authSession:(id)session
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accountCopy = account;
  sessionCopy = session;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    loginSession = [(HMDRemoteLoginInitiator *)selfCopy loginSession];
    v25 = 138543874;
    v26 = v14;
    v27 = 2112;
    v28 = loginSession;
    v29 = 2112;
    v30 = completionCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Login session %@ has ended with error %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  completion = [sessionCopy completion];

  if (completion)
  {
    completion2 = [sessionCopy completion];
    (completion2)[2](completion2, completionCopy, accountCopy);
  }

  if (accountCopy)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      remoteLoginHandler = [(HMDRemoteLoginBase *)v19 remoteLoginHandler];
      loggedInAccount = [remoteLoginHandler loggedInAccount];
      v25 = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = loggedInAccount;
      v29 = 2112;
      v30 = accountCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the logged in account from %@ to %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    remoteLoginHandler2 = [(HMDRemoteLoginBase *)v19 remoteLoginHandler];
    [remoteLoginHandler2 _updateLoggedInAccount:accountCopy];
  }

  [(HMDRemoteLoginInitiator *)selfCopy _resetCurrentSession:completionCopy];
}

- (void)_handleSignoutResponse:(id)response error:(id)error message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v14;
    v21 = 2112;
    v22 = responseCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received proxy device response %@ and error %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (errorCopy)
  {
    v15 = errorCopy;
  }

  else
  {
    remoteLoginHandler = [(HMDRemoteLoginBase *)selfCopy remoteLoginHandler];
    [remoteLoginHandler _updateLoggedInAccount:0];
  }

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, errorCopy, 0);
  }

  [(HMDRemoteLoginInitiator *)selfCopy _resetCurrentSession:errorCopy];
}

- (void)_handleRemoteLoginSignout:(id)signout
{
  v21[1] = *MEMORY[0x277D85DE8];
  signoutCopy = signout;
  v5 = [signoutCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [(HMDRemoteLoginInitiatorSession *)[HMDRemoteLoginInitiatorSignoutSession alloc] initWithSessionID:v5];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v6];
  v7 = [(HMRemoteLoginMessage *)[HMDRemoteLoginSignoutRequest alloc] initWithSessionID:v5];
  remoteLoginHandler = [(HMDRemoteLoginBase *)self remoteLoginHandler];
  loggedInAccount = [remoteLoginHandler loggedInAccount];
  [(HMDRemoteLoginSignoutRequest *)v7 setAccount:loggedInAccount];

  messageName = [(HMDRemoteLoginSignoutRequest *)v7 messageName];
  v20 = messageName;
  v11 = encodeRootObject();
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  messageName2 = [(HMDRemoteLoginSignoutRequest *)v7 messageName];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__HMDRemoteLoginInitiator__handleRemoteLoginSignout___block_invoke;
  v16[3] = &unk_279733AE8;
  objc_copyWeak(&v18, &location);
  v15 = signoutCopy;
  v17 = v15;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v12 responseHandler:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __53__HMDRemoteLoginInitiator__handleRemoteLoginSignout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSignoutResponse:v5 error:v6 message:*(a1 + 32)];
}

- (void)_proxyLoginWithSessionID:(id)d authResults:(id)results remoteDevice:(id)device completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultsCopy = results;
  deviceCopy = device;
  completionCopy = completion;
  v14 = [HMDRemoteLoginInitiatorProxyAuthentication alloc];
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v17 = [(HMDRemoteLoginInitiatorProxyAuthentication *)v14 initWithSessionID:dCopy remoteDevice:deviceCopy workQueue:workQueue remoteMessageSender:remoteMessageSender delegate:self authResults:resultsCopy];

  v18 = [[HMDRemoteLoginInitiatorAuthenticationSession alloc] initWithSessionID:dCopy remoteAuthentication:v17 completion:completionCopy];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v18];
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v22;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Created the proxy login with Session ID: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  remoteAuthentication = [(HMDRemoteLoginInitiatorAuthenticationSession *)v18 remoteAuthentication];
  [remoteAuthentication authenticate];
}

- (void)_handleRemoteLoginProxyAuthentication:(id)authentication
{
  v30[2] = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  v5 = [authenticationCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [authenticationCopy dataForKey:@"kRemoteLoginAuthResults"];
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v10 = [v8 setWithArray:v9];
  v25 = 0;
  v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v25];
  v12 = v25;

  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive authentication results from results data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  accessory = [(HMDRemoteLoginBase *)self accessory];
  device = [accessory device];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__HMDRemoteLoginInitiator__handleRemoteLoginProxyAuthentication___block_invoke;
  v23[3] = &unk_279724918;
  v24 = authenticationCopy;
  v22 = authenticationCopy;
  [(HMDRemoteLoginInitiator *)self _proxyLoginWithSessionID:v5 authResults:v19 remoteDevice:device completion:v23];
}

void __65__HMDRemoteLoginInitiator__handleRemoteLoginProxyAuthentication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) responseHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) responseHandler];
    v8 = [v5 messagePayload];
    (v7)[2](v7, v9, v8);
  }
}

- (void)_handleProxyDeviceResponse:(id)response error:(id)error message:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  messageCopy = message;
  if (!errorCopy)
  {
    v17 = [HMDRemoteLoginProxyDeviceResponse objWithDict:responseCopy];
    v18 = v17;
    if (v17)
    {
      error = [v17 error];

      if (!error)
      {
        proxyDevice = [v18 proxyDevice];
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (proxyDevice)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v34;
            v43 = 2112;
            v44 = proxyDevice;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Received proxy device response with device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v39 = @"kRemoteLoginProxiedDevice";
          v35 = encodeRootObject();
          v40 = v35;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

          v15 = 0;
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543362;
            v42 = v36;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with no device", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
          v16 = 0;
        }

        goto LABEL_22;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v23;
        v43 = 2112;
        v44 = 0;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with response error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      error2 = [v18 error];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with invalid payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      error2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    }

    v15 = error2;
    v16 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v14;
    v43 = 2112;
    v44 = errorCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = errorCopy;
  v16 = 0;
LABEL_23:
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v15, v16);
  }

  [(HMDRemoteLoginInitiator *)self _resetCurrentSession:v15];
}

- (void)_handleRemoteLoginProxiedDevice:(id)device
{
  v19[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [deviceCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [[HMDRemoteLoginInitiatorSession alloc] initWithSessionID:v5];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v6];
  v7 = [(HMRemoteLoginMessage *)[HMDRemoteLoginProxyDeviceRequest alloc] initWithSessionID:v5];
  messageName = [(HMDRemoteLoginProxyDeviceRequest *)v7 messageName];
  v18 = messageName;
  v9 = encodeRootObject();
  v19[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  messageName2 = [(HMDRemoteLoginProxyDeviceRequest *)v7 messageName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDRemoteLoginInitiator__handleRemoteLoginProxiedDevice___block_invoke;
  v14[3] = &unk_279733AE8;
  objc_copyWeak(&v16, &location);
  v13 = deviceCopy;
  v15 = v13;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v10 responseHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __59__HMDRemoteLoginInitiator__handleRemoteLoginProxiedDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleProxyDeviceResponse:v5 error:v6 message:*(a1 + 32)];
}

- (void)_companionLoginWithSessionID:(id)d account:(id)account remoteDevice:(id)device completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  deviceCopy = device;
  completionCopy = completion;
  v14 = [HMDRemoteLoginInitiatorCompanionAuthentication alloc];
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v17 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)v14 initWithSessionID:dCopy remoteDevice:deviceCopy workQueue:workQueue remoteMessageSender:remoteMessageSender delegate:self account:accountCopy];

  v18 = [[HMDRemoteLoginInitiatorAuthenticationSession alloc] initWithSessionID:dCopy remoteAuthentication:v17 completion:completionCopy];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v18];
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v22;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Created the companion login with Session ID: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  remoteAuthentication = [(HMDRemoteLoginInitiatorAuthenticationSession *)v18 remoteAuthentication];
  [remoteAuthentication authenticate];
}

- (void)_handleRemoteLoginCompanionAuthentication:(id)authentication
{
  v23 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  v5 = [authenticationCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [authenticationCopy dataForKey:@"kRemoteLoginAccount"];
  v18 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18];
  v8 = v18;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive account from account data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  accessory = [(HMDRemoteLoginBase *)self accessory];
  device = [accessory device];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HMDRemoteLoginInitiator__handleRemoteLoginCompanionAuthentication___block_invoke;
  v16[3] = &unk_279724918;
  v17 = authenticationCopy;
  v15 = authenticationCopy;
  [(HMDRemoteLoginInitiator *)self _companionLoginWithSessionID:v5 account:v7 remoteDevice:device completion:v16];
}

void __69__HMDRemoteLoginInitiator__handleRemoteLoginCompanionAuthentication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) responseHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) responseHandler];
    v8 = [v5 messagePayload];
    (v7)[2](v7, v9, v8);
  }
}

- (void)registerForMessages
{
  v19[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDRemoteLoginBase *)self accessory];
  home = [accessory home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];

  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  msgDispatcher = [(HMDRemoteLoginBase *)self msgDispatcher];
  v19[0] = v5;
  v19[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [msgDispatcher registerForMessage:@"kRemoteLoginCompanionAuthentication" receiver:self policies:v8 selector:sel__handleRemoteLoginCompanionAuthentication_];

  msgDispatcher2 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v18[0] = v5;
  v18[1] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [msgDispatcher2 registerForMessage:@"kRemoteLoginQueryProxiedDevice" receiver:self policies:v10 selector:sel__handleRemoteLoginProxiedDevice_];

  msgDispatcher3 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v17[0] = v5;
  v17[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [msgDispatcher3 registerForMessage:@"kRemoteLoginProxyAuthentication" receiver:self policies:v12 selector:sel__handleRemoteLoginProxyAuthentication_];

  msgDispatcher4 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v16[0] = v5;
  v16[1] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [msgDispatcher4 registerForMessage:@"kRemoteLoginSignout" receiver:self policies:v14 selector:sel__handleRemoteLoginSignout_];

  anisetteProviderBridge = [(HMDRemoteLoginInitiator *)self anisetteProviderBridge];
  [anisetteProviderBridge registerForMessages];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  v18.receiver = self;
  v18.super_class = HMDRemoteLoginInitiator;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  [(HMDRemoteLoginBase *)&v18 configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy];
  v8 = [(HMDRemoteLoginBase *)self accessory:v18.receiver];
  home = [v8 home];
  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];

  v12 = [HMDRemoteLoginMessageSender alloc];
  uuid = [(HMDRemoteLoginBase *)self uuid];
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  v15 = [(HMDRemoteLoginMessageSender *)v12 initWithTarget:uuid accessory:v8 device:0 workQueue:workQueue messageDispatcher:messageDispatcher];
  [(HMDRemoteLoginInitiator *)self setRemoteMessageSender:v15];

  anisetteProviderBridge = [(HMDRemoteLoginInitiator *)self anisetteProviderBridge];
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  [anisetteProviderBridge configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy remoteMessageSender:remoteMessageSender];
}

- (HMDRemoteLoginInitiator)initWithUUID:(id)d accessory:(id)accessory remoteLoginHandler:(id)handler
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HMDRemoteLoginInitiator;
  v9 = [(HMDRemoteLoginBase *)&v13 initWithUUID:dCopy accessory:accessory remoteLoginHandler:handler];
  if (v9)
  {
    v10 = [[HMDRemoteLoginAnisetteDataProviderBridge alloc] initWithUUID:dCopy];
    anisetteProviderBridge = v9->_anisetteProviderBridge;
    v9->_anisetteProviderBridge = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_31811 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_31811, &__block_literal_global_31812);
  }

  v3 = logCategory__hmf_once_v1_31813;

  return v3;
}

uint64_t __38__HMDRemoteLoginInitiator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_31813;
  logCategory__hmf_once_v1_31813 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end