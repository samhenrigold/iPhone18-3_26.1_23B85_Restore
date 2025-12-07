@interface HMDRemoteLoginReceiver
+ (id)logCategory;
- (void)_auditLoggedInAccountFor:(id)for;
- (void)_authenticate:(id)_authenticate message:(id)message;
- (void)_callCompletion:(id)completion;
- (void)_handleACAccountDidChangeNotification:(id)notification;
- (void)_handleCompanionAuthenticationRequest:(id)request;
- (void)_handleProxyAuthenticationRequest:(id)request;
- (void)_handleProxyDeviceRequest:(id)request;
- (void)_handleSignoutRequest:(id)request;
- (void)auditLoggedInAccount;
- (void)auditLoggedInAccountFor:(id)for;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)didCompleteAuthentication:(id)authentication response:(id)response;
- (void)registerForMessages;
- (void)registerForNotifications;
@end

@implementation HMDRemoteLoginReceiver

- (void)didCompleteAuthentication:(id)authentication response:(id)response
{
  authenticationCopy = authentication;
  responseCopy = response;
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDRemoteLoginReceiver_didCompleteAuthentication_response___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = authenticationCopy;
  v13 = responseCopy;
  v9 = responseCopy;
  v10 = authenticationCopy;
  dispatch_async(workQueue, block);
}

void __61__HMDRemoteLoginReceiver_didCompleteAuthentication_response___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loginSession];
  v3 = [v2 remoteAuthentication];
  v4 = *(a1 + 40);

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ has completed with response %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) _callCompletion:*(a1 + 48)];
  }

  else
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received completion from unknown remote authentication with error %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_handleACAccountDidChangeNotification:(id)notification
{
  v38 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CB8A60]];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:*MEMORY[0x277CB8C90]];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v26 = notificationCopy;
    v12 = v27 = v6;
    [(HMDRemoteLoginBase *)selfCopy remoteLoginHandler];
    v14 = v13 = v8;
    loggedInAccount = [v14 loggedInAccount];
    remoteLoginHandler = [(HMDRemoteLoginBase *)selfCopy remoteLoginHandler];
    loggedInAccount2 = [remoteLoginHandler loggedInAccount];
    [loggedInAccount2 identifier];
    v19 = v18 = v9;
    *buf = 138544386;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = loggedInAccount;
    v36 = 2112;
    v37 = v19;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Got account change notification type:%@ identifier:%@ current:%@ currentIdentifier:%@", buf, 0x34u);

    v9 = v18;
    v8 = v13;

    notificationCopy = v26;
    v6 = v27;
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    if ([v8 isEqualToString:*MEMORY[0x277CB8D58]])
    {
      remoteLoginHandler2 = [(HMDRemoteLoginBase *)selfCopy remoteLoginHandler];
      loggedInAccount3 = [remoteLoginHandler2 loggedInAccount];

      if (loggedInAccount3)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Performing account audit on detecting iTunes account change with active account present.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [(HMDRemoteLoginReceiver *)v23 auditLoggedInAccount];
      }
    }
  }
}

- (void)_callCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = completionCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Login session has ended with response %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  loginSession = [(HMDRemoteLoginReceiver *)selfCopy loginSession];
  completion = [loginSession completion];

  if (completion)
  {
    loginSession2 = [(HMDRemoteLoginReceiver *)selfCopy loginSession];
    completion2 = [loginSession2 completion];
    (completion2)[2](completion2, completionCopy);
  }

  [(HMDRemoteLoginReceiver *)selfCopy setLoginSession:0];
  error = [completionCopy error];

  if (!error)
  {
    loggedInAccount = [completionCopy loggedInAccount];
    [(HMDRemoteLoginReceiver *)selfCopy _auditLoggedInAccountFor:loggedInAccount];
  }
}

- (void)_auditLoggedInAccountFor:(id)for
{
  v29 = *MEMORY[0x277D85DE8];
  forCopy = for;
  remoteLoginHandler = [(HMDRemoteLoginBase *)self remoteLoginHandler];
  loggedInAccount = [remoteLoginHandler loggedInAccount];
  aa_altDSID = [loggedInAccount aa_altDSID];
  aa_altDSID2 = [forCopy aa_altDSID];
  if (HMFEqualObjects())
  {
    loggedInAccount2 = [remoteLoginHandler loggedInAccount];
    username = [loggedInAccount2 username];
    username2 = [forCopy username];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        loggedInAccount3 = [remoteLoginHandler loggedInAccount];
        v23 = 138543874;
        v24 = v16;
        v25 = 2112;
        v26 = loggedInAccount3;
        v27 = 2112;
        v28 = forCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@homed knowledge of logged in iTunes account %@ matches with account store: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    loggedInAccount4 = [remoteLoginHandler loggedInAccount];
    v23 = 138543874;
    v24 = v21;
    v25 = 2112;
    v26 = loggedInAccount4;
    v27 = 2112;
    v28 = forCopy;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@homed knowledge of logged in iTunes account %@ is different than in account store: %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  [remoteLoginHandler _updateLoggedInAccount:forCopy];
LABEL_10:
}

- (void)auditLoggedInAccountFor:(id)for
{
  forCopy = for;
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDRemoteLoginReceiver_auditLoggedInAccountFor___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = forCopy;
  v6 = forCopy;
  dispatch_async(workQueue, v7);
}

- (void)auditLoggedInAccount
{
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDRemoteLoginReceiver_auditLoggedInAccount__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __46__HMDRemoteLoginReceiver_auditLoggedInAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 isCurrentAccessory];

  if (v3)
  {
    v4 = +[HMDRemoteLoginUtilities primaryITunesAccount];
    [*(a1 + 32) _auditLoggedInAccountFor:v4];
  }
}

- (void)_handleSignoutRequest:(id)request
{
  v79 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  loginSession = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!loginSession)
  {
    messagePayload = [requestCopy messagePayload];
    responseHandler11 = [HMDRemoteLoginSignoutRequest objWithDict:messagePayload];

    if (responseHandler11)
    {
      account = [responseHandler11 account];

      if (account)
      {
        responseHandler9 = [MEMORY[0x277CB8F48] ams_sharedAccountStoreForMediaType:0];
        v16 = [responseHandler9 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8D58]];
        if (!v16)
        {
          v35 = objc_autoreleasePoolPush();
          selfCopy = self;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v38;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine store account type for iTunesStore", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v35);
          responseHandler = [requestCopy responseHandler];

          if (responseHandler)
          {
            responseHandler2 = [requestCopy responseHandler];
            v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            (responseHandler2)[2](responseHandler2, v40, 0);
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_38;
        }

        v57 = [responseHandler9 accountsWithAccountType:v16];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v76 = __Block_byref_object_copy__171164;
        v77 = __Block_byref_object_dispose__171165;
        v78 = 0;
        account2 = [responseHandler11 account];
        username = [account2 username];

        if (username)
        {
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke;
          v66[3] = &unk_279731660;
          v18 = username;
          v67 = v18;
          v68 = buf;
          [v57 hmf_enumerateWithAutoreleasePoolUsingBlock:v66];
          v19 = *(*&buf[8] + 40) == 0;
          context = objc_autoreleasePoolPush();
          selfCopy2 = self;
          if (v19)
          {
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *v69 = 138543618;
              v70 = v49;
              v71 = 2112;
              v72 = v18;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine store account from request username %@", v69, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            responseHandler3 = [requestCopy responseHandler];

            if (responseHandler3)
            {
              responseHandler4 = [requestCopy responseHandler];
              v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
              (responseHandler4)[2](responseHandler4, v52, 0);
            }
          }

          else
          {
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v54 = HMFGetLogIdentifier();
              defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
              v22 = [defaultFormatter stringForObjectValue:*(*&buf[8] + 40)];
              defaultFormatter2 = [MEMORY[0x277D0F8D8] defaultFormatter];
              v24 = [defaultFormatter2 stringForObjectValue:responseHandler9];
              *v69 = 138543874;
              v70 = v54;
              v71 = 2112;
              v72 = v22;
              v73 = 2112;
              v74 = v24;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Will signout of account %@ using store %@", v69, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            objc_initWeak(v69, selfCopy2);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_61;
            block[3] = &unk_279735AD0;
            v64 = buf;
            v60 = 0;
            v61 = responseHandler9;
            v62 = selfCopy2;
            objc_copyWeak(&v65, v69);
            v63 = requestCopy;
            dispatch_async(MEMORY[0x277D85CD0], block);

            objc_destroyWeak(&v65);
            objc_destroyWeak(v69);
          }

          responseHandler6 = v67;
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *v69 = 138543618;
            v70 = v44;
            v71 = 2112;
            v72 = 0;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot sign out of an account with username: %@", v69, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          responseHandler5 = [requestCopy responseHandler];

          if (!responseHandler5)
          {
            goto LABEL_37;
          }

          responseHandler6 = [requestCopy responseHandler];
          v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          (responseHandler6)[2](responseHandler6, v47, 0);
        }

LABEL_37:
        _Block_object_dispose(buf, 8);

        goto LABEL_38;
      }

      v30 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2112;
        *&buf[14] = responseHandler11;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@There is no ACAccount provided in %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      responseHandler7 = [requestCopy responseHandler];

      if (!responseHandler7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Signout request is missing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      responseHandler8 = [requestCopy responseHandler];

      if (!responseHandler8)
      {
        responseHandler11 = 0;
LABEL_40:

        goto LABEL_41;
      }
    }

    responseHandler9 = [requestCopy responseHandler];
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (responseHandler9)[2](responseHandler9, v16, 0);
LABEL_38:

    goto LABEL_39;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    loginSession2 = [(HMDRemoteLoginReceiver *)selfCopy6 loginSession];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = loginSession2;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  responseHandler10 = [requestCopy responseHandler];

  if (responseHandler10)
  {
    responseHandler11 = [requestCopy responseHandler];
    responseHandler9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    responseHandler11[2](responseHandler11, responseHandler9, 0);
LABEL_39:

    goto LABEL_40;
  }

LABEL_41:
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 username];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_61(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) ams_setActive:0 forMediaType:*(a1 + 32)];
  v2 = [*(a1 + 40) ams_saveAccount:*(*(*(a1 + 64) + 8) + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2;
  v8[3] = &unk_279735B20;
  v3 = *(a1 + 64);
  v8[4] = *(a1 + 48);
  v10 = v3;
  objc_copyWeak(&v11, (a1 + 72));
  v9 = *(a1 + 56);
  [v2 addSuccessBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2_63;
  v6[3] = &unk_279731688;
  v6[4] = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v2 addErrorBlock:v6];

  objc_destroyWeak(&v11);
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v7 = [v6 stringForObjectValue:*(*(*(a1 + 48) + 8) + 40)];
    *buf = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Succeeded in save of account: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_62;
  v9[3] = &unk_2797359B0;
  v9[4] = WeakRetained;
  v10 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2_63(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v9 = [v8 stringForObjectValue:*(*(*(a1 + 48) + 8) + 40)];
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to save account %@: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 40) responseHandler];

  if (v10)
  {
    v11 = [*(a1 + 40) responseHandler];
    (v11)[2](v11, v3, 0);
  }
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_62(uint64_t a1)
{
  [*(a1 + 32) auditLoggedInAccountFor:0];
  v2 = [*(a1 + 40) responseHandler];

  if (v2)
  {
    v3 = [*(a1 + 40) responseHandler];
    (*(v3 + 2))(v3, 0, 0);
  }
}

- (void)_authenticate:(id)_authenticate message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  _authenticateCopy = _authenticate;
  messageCopy = message;
  v8 = [HMDRemoteLoginReceiverSession alloc];
  sessionID = [_authenticateCopy sessionID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__HMDRemoteLoginReceiver__authenticate_message___block_invoke;
  v19[3] = &unk_279731638;
  v10 = messageCopy;
  v20 = v10;
  v11 = [(HMDRemoteLoginReceiverSession *)v8 initWithSessionID:sessionID remoteAuthentication:_authenticateCopy completion:v19];
  [(HMDRemoteLoginReceiver *)self setLoginSession:v11];

  loginSession = [(HMDRemoteLoginReceiver *)self loginSession];
  remoteAuthentication = [loginSession remoteAuthentication];
  [remoteAuthentication authenticate];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    sessionID2 = [_authenticateCopy sessionID];
    *buf = 138543618;
    v22 = v17;
    v23 = 2112;
    v24 = sessionID2;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Started authentication for session %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
}

void __48__HMDRemoteLoginReceiver__authenticate_message___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    v5 = [v6 messagePayload];
    (v4)[2](v4, 0, v5);
  }
}

- (void)_handleProxyAuthenticationRequest:(id)request
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  loginSession = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!loginSession)
  {
    messagePayload = [requestCopy messagePayload];
    responseHandler = [HMDRemoteLoginProxyAuthenticationRequest objWithDict:messagePayload];

    if (responseHandler)
    {
      remoteSourceID = [requestCopy remoteSourceID];
      v16 = [HMDDevice deviceWithDestination:remoteSourceID];
      sessionID = [responseHandler sessionID];
      accessory = [(HMDRemoteLoginBase *)self accessory];
      home = [accessory home];
      homeManager = [home homeManager];
      messageDispatcher = [homeManager messageDispatcher];

      v22 = [HMDRemoteLoginMessageSender alloc];
      uuid = [(HMDRemoteLoginBase *)self uuid];
      workQueue = [(HMDRemoteLoginBase *)self workQueue];
      v25 = [(HMDRemoteLoginMessageSender *)v22 initWithTarget:uuid accessory:0 device:v16 workQueue:workQueue messageDispatcher:messageDispatcher];

      v26 = [HMDRemoteLoginReceiverProxyAuthentication alloc];
      workQueue2 = [(HMDRemoteLoginBase *)self workQueue];
      v28 = [(HMDRemoteLoginReceiverProxyAuthentication *)v26 initWithSessionID:sessionID remoteDevice:v16 workQueue:workQueue2 remoteMessageSender:v25 delegate:self request:responseHandler];

      [(HMDRemoteLoginReceiver *)self _authenticate:v28 message:requestCopy];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Proxy Authentication request is missing", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      responseHandler = [requestCopy responseHandler];

      if (responseHandler)
      {
        responseHandler2 = [requestCopy responseHandler];
        v34 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        (responseHandler2)[2](responseHandler2, v34, 0);

        responseHandler = 0;
      }
    }

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    loginSession2 = [(HMDRemoteLoginReceiver *)selfCopy2 loginSession];
    v35 = 138543618;
    v36 = v9;
    v37 = 2112;
    v38 = loginSession2;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  responseHandler3 = [requestCopy responseHandler];

  if (responseHandler3)
  {
    responseHandler = [requestCopy responseHandler];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (responseHandler)[2](responseHandler, v13, 0);

LABEL_12:
  }
}

- (void)_handleProxyDeviceRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  loginSession = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!loginSession)
  {
    messagePayload = [requestCopy messagePayload];
    responseHandler = [HMDRemoteLoginProxyDeviceRequest objWithDict:messagePayload];

    if (!responseHandler)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Proxy device request is missing", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      responseHandler = [requestCopy responseHandler];

      if (responseHandler)
      {
        responseHandler2 = [requestCopy responseHandler];
        v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        (responseHandler2)[2](responseHandler2, v26, 0);

        responseHandler = 0;
      }

      goto LABEL_11;
    }

    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    [currentDevice setLinkType:3];
    v15 = [HMDRemoteLoginProxyDeviceResponse alloc];
    sessionID = [responseHandler sessionID];
    v17 = [(HMRemoteLoginMessage *)v15 initWithSessionID:sessionID];

    [(HMDRemoteLoginProxyDeviceResponse *)v17 setProxyDevice:currentDevice];
    responseHandler3 = [requestCopy responseHandler];

    if (responseHandler3)
    {
      responseHandler4 = [requestCopy responseHandler];
      messagePayload2 = [(HMDRemoteLoginProxyDeviceResponse *)v17 messagePayload];
      (responseHandler4)[2](responseHandler4, 0, messagePayload2);
    }

LABEL_10:
LABEL_11:

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    loginSession2 = [(HMDRemoteLoginReceiver *)selfCopy2 loginSession];
    v27 = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = loginSession2;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  responseHandler5 = [requestCopy responseHandler];

  if (responseHandler5)
  {
    responseHandler = [requestCopy responseHandler];
    currentDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (responseHandler)[2](responseHandler, currentDevice, 0);
    goto LABEL_10;
  }

LABEL_12:
}

- (void)_handleCompanionAuthenticationRequest:(id)request
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  loginSession = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!loginSession)
  {
    messagePayload = [requestCopy messagePayload];
    responseHandler = [HMDRemoteLoginCompanionAuthenticationRequest objWithDict:messagePayload];

    if (responseHandler)
    {
      remoteSourceID = [requestCopy remoteSourceID];
      v16 = [HMDDevice deviceWithDestination:remoteSourceID];
      sessionID = [responseHandler sessionID];
      accessory = [(HMDRemoteLoginBase *)self accessory];
      home = [accessory home];
      homeManager = [home homeManager];
      messageDispatcher = [homeManager messageDispatcher];

      v22 = [HMDRemoteLoginMessageSender alloc];
      uuid = [(HMDRemoteLoginBase *)self uuid];
      workQueue = [(HMDRemoteLoginBase *)self workQueue];
      v25 = [(HMDRemoteLoginMessageSender *)v22 initWithTarget:uuid accessory:0 device:v16 workQueue:workQueue messageDispatcher:messageDispatcher];

      v26 = [HMDRemoteLoginReceiverCompanionAuthentication alloc];
      workQueue2 = [(HMDRemoteLoginBase *)self workQueue];
      v28 = [(HMDRemoteLoginReceiverCompanionAuthentication *)v26 initWithSessionID:sessionID remoteDevice:v16 workQueue:workQueue2 remoteMessageSender:v25 delegate:self request:responseHandler];

      [(HMDRemoteLoginReceiver *)self _authenticate:v28 message:requestCopy];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Companion Authentication request is missing", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      responseHandler = [requestCopy responseHandler];

      if (responseHandler)
      {
        responseHandler2 = [requestCopy responseHandler];
        v34 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        (responseHandler2)[2](responseHandler2, v34, 0);

        responseHandler = 0;
      }
    }

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    loginSession2 = [(HMDRemoteLoginReceiver *)selfCopy2 loginSession];
    v35 = 138543618;
    v36 = v9;
    v37 = 2112;
    v38 = loginSession2;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  responseHandler3 = [requestCopy responseHandler];

  if (responseHandler3)
  {
    responseHandler = [requestCopy responseHandler];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (responseHandler)[2](responseHandler, v13, 0);

LABEL_12:
  }
}

- (void)registerForNotifications
{
  accessory = [(HMDRemoteLoginBase *)self accessory];
  isCurrentAccessory = [accessory isCurrentAccessory];

  if (isCurrentAccessory)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleACAccountDidChangeNotification_ name:*MEMORY[0x277CB8DB8] object:0];
  }
}

- (void)registerForMessages
{
  v22[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDRemoteLoginBase *)self accessory];
  home = [accessory home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];

  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  msgDispatcher = [(HMDRemoteLoginBase *)self msgDispatcher];
  v8 = +[HMDRemoteLoginCompanionAuthenticationRequest messageName];
  v22[0] = v5;
  v22[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [msgDispatcher registerForMessage:v8 receiver:self policies:v9 selector:sel__handleCompanionAuthenticationRequest_];

  msgDispatcher2 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v11 = +[HMDRemoteLoginProxyDeviceRequest messageName];
  v21[0] = v5;
  v21[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [msgDispatcher2 registerForMessage:v11 receiver:self policies:v12 selector:sel__handleProxyDeviceRequest_];

  msgDispatcher3 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v14 = +[HMDRemoteLoginProxyAuthenticationRequest messageName];
  v20[0] = v5;
  v20[1] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [msgDispatcher3 registerForMessage:v14 receiver:self policies:v15 selector:sel__handleProxyAuthenticationRequest_];

  msgDispatcher4 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v17 = +[HMDRemoteLoginSignoutRequest messageName];
  v19[0] = v5;
  v19[1] = v6;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [msgDispatcher4 registerForMessage:v17 receiver:self policies:v18 selector:sel__handleSignoutRequest_];

  [(HMDRemoteLoginReceiver *)self registerForNotifications];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  v5.receiver = self;
  v5.super_class = HMDRemoteLoginReceiver;
  [(HMDRemoteLoginBase *)&v5 configureWithWorkQueue:queue messageDispatcher:dispatcher];
  [(HMDRemoteLoginReceiver *)self auditLoggedInAccount];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_171206 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_171206, &__block_literal_global_171207);
  }

  v3 = logCategory__hmf_once_v1_171208;

  return v3;
}

uint64_t __37__HMDRemoteLoginReceiver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_171208;
  logCategory__hmf_once_v1_171208 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end