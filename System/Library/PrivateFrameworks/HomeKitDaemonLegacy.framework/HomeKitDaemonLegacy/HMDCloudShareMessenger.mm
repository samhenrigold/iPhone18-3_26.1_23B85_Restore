@interface HMDCloudShareMessenger
+ (id)logCategory;
- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home;
- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher;
- (HMDCloudShareMessengerDelegate)delegate;
- (HMDHome)home;
- (id)logIdentifier;
- (void)_requestShareInvitationDataFromUser:(id)user retryCount:(unint64_t)count activity:(id)activity;
- (void)_sendShareInvitationData:(id)data toDestination:(id)destination retryCount:(unint64_t)count activity:(id)activity completion:(id)completion;
- (void)configure;
- (void)handleShareInviteMessage:(id)message;
- (void)handleShareRequestInviteMessage:(id)message;
- (void)handleShareRevokeMessage:(id)message;
- (void)notifyOfShareAccessRevocationForUser:(id)user;
- (void)requestShareInvitationDataFromUser:(id)user;
- (void)sendShareInvitationData:(id)data toDevice:(id)device completion:(id)completion;
- (void)sendShareInvitationData:(id)data toUser:(id)user minimumHomeKitVersion:(id)version requiredSupportedFeatures:(id)features completion:(id)completion;
- (void)unconfigure;
@end

@implementation HMDCloudShareMessenger

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDCloudShareMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)handleShareRevokeMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received share revoke message: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCloudShareMessenger *)selfCopy delegate];
  [delegate messengerDidReceiveShareAccessRevocation:selfCopy];
}

- (void)handleShareRequestInviteMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v29 = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received share share request invite message: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDCloudShareMessenger *)selfCopy home];
  if (home)
  {
    v12 = [messageCopy userForHome:home];
    if (v12)
    {
      remoteSourceDevice = [messageCopy remoteSourceDevice];
      if (remoteSourceDevice)
      {
        v14 = remoteSourceDevice;
        delegate = [(HMDCloudShareMessenger *)selfCopy delegate];
        [delegate messenger:selfCopy didReceiveInvitationRequestFromUser:v12 device:v14];

        [messageCopy respondWithSuccess];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v29 = 138543362;
          v30 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle share request invite message because requesting device cannot be determined", &v29, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        [messageCopy respondWithError:v28];

        v14 = 0;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle share request invite message because requesting user cannot be determined", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      [messageCopy respondWithError:v14];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle share request invite message because home reference is nil", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [messageCopy respondWithError:v12];
  }
}

- (void)handleShareInviteMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received share invite message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [messageCopy messagePayload];
  v11 = [messagePayload objectForKeyedSubscript:@"invitationData"];

  if (v11)
  {
    delegate = [(HMDCloudShareMessenger *)selfCopy delegate];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__HMDCloudShareMessenger_handleShareInviteMessage___block_invoke;
    v19[3] = &unk_27972B728;
    v19[4] = selfCopy;
    v20 = messageCopy;
    [delegate messenger:selfCopy didReceiveInvitationData:v11 completion:v19];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to find invitation data in share invite message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [messageCopy respondWithError:v18];
  }
}

void __51__HMDCloudShareMessenger_handleShareInviteMessage___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Delegate successfully accepted share invitation", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) respondWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delegate failed to accept share invitation: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (!v5)
    {
      v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    }

    [*(a1 + 40) respondWithError:v5];
  }
}

- (void)_requestShareInvitationDataFromUser:(id)user retryCount:(unint64_t)count activity:(id)activity
{
  v40 = *MEMORY[0x277D85DE8];
  userCopy = user;
  activityCopy = activity;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accountHandle = [(HMDRemoteMessage *)userCopy accountHandle];
  if (accountHandle)
  {
    v12 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
    v14 = [(HMDRemoteAccountMessageDestination *)v12 initWithTarget:messageTargetUUID handle:accountHandle multicast:0 deviceCapabilities:0];

    v15 = [[HMDRemoteMessage alloc] initWithName:@"HMDCloudShareRequestInviteMessage" qualityOfService:17 destination:v14 payload:0 type:0 timeout:1 secure:0.0];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke;
    v29 = &unk_2797244D8;
    selfCopy = self;
    v31 = activityCopy;
    countCopy = count;
    v16 = userCopy;
    v32 = v16;
    [(HMDRemoteMessage *)v15 setResponseHandler:&v26];
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v20;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending request CKShare invite message %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [(HMDCloudShareMessenger *)selfCopy2 messageDispatcher:v26];
    [v21 sendMessage:v15];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = userCopy;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not request share invitation data from user with no account handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_2;
  block[3] = &unk_27972EC00;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v5;
  v7 = v6;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v14 = v7;
  v16 = v8;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543874;
      v31 = v5;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send request CKShare invite message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = *(a1 + 64) == 3;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) identifier];
        v16 = [v15 shortDescription];
        v17 = *(a1 + 64);
        *buf = 138543874;
        v31 = v14;
        v32 = 2114;
        v33 = v16;
        v34 = 2048;
        v35 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send request share invitation message and reached retry limit %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 48) identifier];
        v20 = [v19 shortDescription];
        v21 = *(a1 + 64);
        *buf = 138544130;
        v31 = v18;
        v32 = 2114;
        v33 = v20;
        v34 = 2048;
        v35 = 0x4072C00000000000;
        v36 = 2048;
        v37 = v21;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Will retry sending request CKShare invite message in %fs (already retried %lu time(s))", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      objc_initWeak(buf, *(a1 + 40));
      v22 = [*(a1 + 40) shareInvitationRetryHandler];
      v23 = [*(a1 + 40) workQueue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_48;
      v26[3] = &unk_27972C550;
      objc_copyWeak(v29, buf);
      v24 = *(a1 + 56);
      v25 = *(a1 + 64);
      v27 = v24;
      v29[1] = v25;
      v28 = *(a1 + 48);
      (v22)[2](v22, v23, v26, 300.0);

      objc_destroyWeak(v29);
      objc_destroyWeak(buf);
    }
  }
}

void __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isConfigured])
  {
    [WeakRetained _requestShareInvitationDataFromUser:*(a1 + 32) retryCount:*(a1 + 56) + 1 activity:*(a1 + 40)];
  }
}

- (void)_sendShareInvitationData:(id)data toDestination:(id)destination retryCount:(unint64_t)count activity:(id)activity completion:(id)completion
{
  v48[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  destinationCopy = destination;
  activityCopy = activity;
  completionCopy = completion;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v47 = @"invitationData";
  v48[0] = dataCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v18 = [[HMDRemoteMessage alloc] initWithName:@"HMDCloudShareInviteMessage" qualityOfService:17 destination:destinationCopy payload:v17 type:0 timeout:1 secure:0.0];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke;
  v35[3] = &unk_279727A88;
  v35[4] = self;
  v19 = activityCopy;
  v36 = v19;
  countCopy = count;
  v20 = completionCopy;
  v39 = v20;
  v21 = dataCopy;
  v37 = v21;
  v22 = destinationCopy;
  v38 = v22;
  [(HMDRemoteMessage *)v18 setResponseHandler:v35];
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v26 = v34 = v17;
    [v19 identifier];
    v27 = v32 = v23;
    [v27 shortDescription];
    v28 = v33 = v21;
    [(HMFObject *)v18 shortDescription];
    v30 = v29 = v20;
    *buf = 138543874;
    v42 = v26;
    v43 = 2114;
    v44 = v28;
    v45 = 2112;
    v46 = v30;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Sending CKShare invite message: %@", buf, 0x20u);

    v20 = v29;
    v21 = v33;

    v23 = v32;
    v17 = v34;
  }

  objc_autoreleasePoolPop(v23);
  messageDispatcher = [(HMDCloudShareMessenger *)selfCopy messageDispatcher];
  [messageDispatcher sendMessage:v18];
}

void __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_2;
  block[3] = &unk_279731CD8;
  v13 = v3;
  v11 = *(a1 + 32);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 64);
  v17 = *(a1 + 72);
  v16 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543874;
      v38 = v5;
      v39 = 2114;
      v40 = v7;
      v41 = 2114;
      v42 = v8;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send CKShare invite message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = *(a1 + 80) == 3;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) identifier];
        v16 = [v15 shortDescription];
        v17 = *(a1 + 80);
        *buf = 138543874;
        v38 = v14;
        v39 = 2114;
        v40 = v16;
        v41 = 2048;
        v42 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send share invitation message and reached retry limit %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v18 = *(a1 + 72);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, *(a1 + 32));
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [*(a1 + 48) identifier];
        v23 = [v22 shortDescription];
        v24 = *(a1 + 80);
        *buf = 138544130;
        v38 = v21;
        v39 = 2114;
        v40 = v23;
        v41 = 2048;
        v42 = 0x4072C00000000000;
        v43 = 2048;
        v44 = v24;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Will retry sending CKShare invite message in %fs (already retried %lu time(s))", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      objc_initWeak(buf, *(a1 + 40));
      v25 = [*(a1 + 40) shareInvitationRetryHandler];
      v26 = [*(a1 + 40) workQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_45;
      v33[3] = &unk_2797244B0;
      objc_copyWeak(v36, buf);
      v27 = *(a1 + 56);
      v28 = *(a1 + 64);
      v36[1] = *(a1 + 80);
      v29 = *(a1 + 48);
      v30 = *(a1 + 72);
      *&v31 = v29;
      *(&v31 + 1) = v30;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v34 = v32;
      v35 = v31;
      (v25)[2](v25, v26, v33, 300.0);

      objc_destroyWeak(v36);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = *(a1 + 72);
    if (v19)
    {
      v20 = *(v19 + 16);

      v20();
    }
  }
}

void __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained isConfigured])
  {
    [WeakRetained _sendShareInvitationData:*(a1 + 32) toDestination:*(a1 + 40) retryCount:*(a1 + 72) + 1 activity:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)notifyOfShareAccessRevocationForUser:(id)user
{
  v24 = *MEMORY[0x277D85DE8];
  userCopy = user;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accountHandle = [(HMDRemoteMessage *)userCopy accountHandle];
  if (accountHandle)
  {
    v7 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
    v9 = [(HMDRemoteAccountMessageDestination *)v7 initWithTarget:messageTargetUUID handle:accountHandle multicast:1];

    v10 = [[HMDRemoteMessage alloc] initWithName:@"HMDCloudShareAccessRevokedMessage" qualityOfService:17 destination:v9 payload:0 type:3 timeout:0 secure:0.0];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending share access revoked message: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    messageDispatcher = [(HMDCloudShareMessenger *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v10];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v19;
      v22 = 2112;
      v23 = userCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not notify of share access revocation for user with no account handle: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)requestShareInvitationDataFromUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Send request share invitation"];
  [(HMDCloudShareMessenger *)self _requestShareInvitationDataFromUser:userCopy retryCount:0 activity:v6];
  __HMFActivityScopeLeave();
}

- (void)sendShareInvitationData:(id)data toDevice:(id)device completion:(id)completion
{
  dataCopy = data;
  deviceCopy = device;
  completionCopy = completion;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
  v14 = [(HMDRemoteDeviceMessageDestination *)v12 initWithTarget:messageTargetUUID device:deviceCopy];

  v15 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Send share invitation to device"];
  [(HMDCloudShareMessenger *)self _sendShareInvitationData:dataCopy toDestination:v14 retryCount:0 activity:v15 completion:completionCopy];
  __HMFActivityScopeLeave();
}

- (void)sendShareInvitationData:(id)data toUser:(id)user minimumHomeKitVersion:(id)version requiredSupportedFeatures:(id)features completion:(id)completion
{
  v39[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  userCopy = user;
  versionCopy = version;
  featuresCopy = features;
  completionCopy = completion;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v38 = @"kRequiredCapabilitiesKey";
  v36[0] = @"kHomedVersionKey";
  v17 = MEMORY[0x277CCABB0];
  versionString = [versionCopy versionString];
  [versionString doubleValue];
  v19 = [v17 numberWithDouble:?];
  v36[1] = @"kHomedSupportedFeaturesKey";
  v37[0] = v19;
  allObjects = [featuresCopy allObjects];
  v37[1] = allObjects;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v39[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];

  accountHandle = [userCopy accountHandle];
  if (accountHandle)
  {
    v24 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
    v26 = [(HMDRemoteAccountMessageDestination *)v24 initWithTarget:messageTargetUUID handle:accountHandle multicast:0 deviceCapabilities:v22];

    *buf = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Send share invitation to user"];
    [(HMDCloudShareMessenger *)self _sendShareInvitationData:dataCopy toDestination:v26 retryCount:0 activity:*buf completion:completionCopy];
    __HMFActivityScopeLeave();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      v34 = 2112;
      v35 = userCopy;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not send share invitation data to user with no account handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = _Block_copy(completionCopy);
    if (v26)
    {
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (*&v26->_multicast)(v26, 0, v31);
    }
  }
}

- (void)unconfigure
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@De-registering from message dispatcher.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudShareMessenger *)selfCopy setConfigured:0];
  messageDispatcher = [(HMDCloudShareMessenger *)selfCopy messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];
}

- (void)configure
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HMDCloudShareMessenger *)self home];
  if (home)
  {
    v4 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v14[0] = v4;
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    messageDispatcher = [(HMDCloudShareMessenger *)self messageDispatcher];
    [messageDispatcher registerForMessage:@"HMDCloudShareInviteMessage" receiver:self policies:v6 selector:sel_handleShareInviteMessage_];

    messageDispatcher2 = [(HMDCloudShareMessenger *)self messageDispatcher];
    [messageDispatcher2 registerForMessage:@"HMDCloudShareRequestInviteMessage" receiver:self policies:v6 selector:sel_handleShareRequestInviteMessage_];

    messageDispatcher3 = [(HMDCloudShareMessenger *)self messageDispatcher];
    [messageDispatcher3 registerForMessage:@"HMDCloudShareAccessRevokedMessage" receiver:self policies:v6 selector:sel_handleShareRevokeMessage_];

    [(HMDCloudShareMessenger *)self setConfigured:1];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot configure cloud share messenger because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher
{
  dCopy = d;
  queueCopy = queue;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!queueCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!homeCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    __85__HMDCloudShareMessenger_initWithMessageTargetUUID_workQueue_home_messageDispatcher___block_invoke(v23, v20, v21, v22);
    return result;
  }

  v15 = dispatcherCopy;
  v24.receiver = self;
  v24.super_class = HMDCloudShareMessenger;
  v16 = [(HMDCloudShareMessenger *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v17->_messageTargetUUID, d);
    objc_storeWeak(&v17->_home, homeCopy);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    shareInvitationRetryHandler = v17->_shareInvitationRetryHandler;
    v17->_shareInvitationRetryHandler = &__block_literal_global_26995;
  }

  return v17;
}

void __85__HMDCloudShareMessenger_initWithMessageTargetUUID_workQueue_home_messageDispatcher___block_invoke(double a1, uint64_t a2, void *a3, void *a4)
{
  v5 = (a1 * 1000000000.0);
  v6 = a4;
  queue = a3;
  v7 = dispatch_time(0, v5);
  dispatch_after(v7, queue, v6);
}

- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home
{
  homeCopy = home;
  queueCopy = queue;
  dCopy = d;
  v11 = +[HMDMessageDispatcher defaultDispatcher];
  v12 = [(HMDCloudShareMessenger *)self initWithMessageTargetUUID:dCopy workQueue:queueCopy home:homeCopy messageDispatcher:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_27009 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_27009, &__block_literal_global_51);
  }

  v3 = logCategory__hmf_once_v25_27010;

  return v3;
}

uint64_t __37__HMDCloudShareMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_27010;
  logCategory__hmf_once_v25_27010 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end