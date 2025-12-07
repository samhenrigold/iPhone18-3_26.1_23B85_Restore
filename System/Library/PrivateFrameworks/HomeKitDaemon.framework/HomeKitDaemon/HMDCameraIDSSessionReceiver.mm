@interface HMDCameraIDSSessionReceiver
+ (id)logCategory;
- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate applicationVendorIDStore:(id)store;
- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)d workQueue:(id)queue sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate;
- (HMDCameraIDSSessionReceiverDelegate)delegate;
- (NSString)remoteDestination;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)error;
- (void)_callSessionSetup:(id)setup;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation HMDCameraIDSSessionReceiver

- (HMDCameraIDSSessionReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSSessionHandler *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (errorCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138544130;
      v22 = v15;
      v23 = 2112;
      v24 = endedCopy;
      v25 = 1024;
      reasonCopy2 = reason;
      v27 = 2112;
      v28 = errorCopy;
      v16 = "%{public}@Session %@ has failed with reason: %u and error: %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 38;
LABEL_6:
      _os_log_impl(&dword_229538000, v17, v18, v16, &v21, v19);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v15;
    v23 = 2112;
    v24 = endedCopy;
    v25 = 1024;
    reasonCopy2 = reason;
    v16 = "%{public}@Session %@ has ended with reason: %u";
    v17 = v14;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 28;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v11);
  v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:errorCopy];
  [(HMDCameraIDSSessionReceiver *)selfCopy _callSessionEndedWithError:v20];
}

- (void)sessionStarted:(id)started
{
  v15 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = startedCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Session %{public}@ has started", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  sessionID = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
  [sessionID markMilestoneFor:@"IDSSessionStartedOnReceiver"];

  [(HMDCameraIDSSessionReceiver *)selfCopy _callSessionSetup:0];
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  v86 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v18 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
  if (!v18)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      v81 = v47;
      v82 = 2112;
      v83 = sessionCopy;
      v84 = 2112;
      v85 = dCopy;
      v48 = "%{public}@Cannot handle session %@: could not determine device handle for fromID: %@";
      v49 = v46;
      v50 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_229538000, v49, v50, v48, buf, 0x20u);
    }

LABEL_18:

    objc_autoreleasePoolPop(v44);
    goto LABEL_34;
  }

  sessionInviterDeviceVerifier = [(HMDCameraIDSSessionReceiver *)self sessionInviterDeviceVerifier];
  v20 = [sessionInviterDeviceVerifier canAcceptInvitationFromDeviceWithHandle:v18];

  if ((v20 & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      v81 = v47;
      v82 = 2112;
      v83 = sessionCopy;
      v84 = 2112;
      v85 = v18;
      v48 = "%{public}@Cannot handle session %@: sender device handler was unexpected: %@";
      v49 = v46;
      v50 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v21 = MEMORY[0x277CCAAC8];
  v22 = getIDSSessionOptionsAllowedClasses();
  v77 = 0;
  v23 = [v21 unarchivedObjectOfClasses:v22 fromData:contextCopy error:&v77];
  v76 = v77;

  v75 = v23;
  if (v23)
  {
    v74 = serviceCopy;
    v24 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v73 = v26;
    v27 = [v26 objectForKeyedSubscript:@"kCameraSessionID"];
    sessionInviterDeviceVerifier2 = [(HMDCameraIDSSessionReceiver *)self sessionInviterDeviceVerifier];
    LOBYTE(v26) = [sessionInviterDeviceVerifier2 canAcceptInvitationForSessionWithIdentifier:v27];

    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    v32 = v31;
    v72 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v81 = v33;
        v82 = 2112;
        v83 = sessionCopy;
        v84 = 2112;
        v85 = dCopy;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Received invitation for session %@ from %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      [(HMDCameraIDSSessionHandler *)selfCopy3 setIdsSession:sessionCopy];
      idsSession = [(HMDCameraIDSSessionHandler *)selfCopy3 idsSession];
      workQueue2 = [(HMDCameraIDSSessionHandler *)selfCopy3 workQueue];
      [idsSession setDelegate:selfCopy3 queue:workQueue2];

      sessionID = [(HMDCameraIDSSessionHandler *)selfCopy3 sessionID];
      hostProcessBundleIdentifier = [sessionID hostProcessBundleIdentifier];

      if (hostProcessBundleIdentifier)
      {
        applicationVendorIDStore = [(HMDCameraIDSSessionReceiver *)selfCopy3 applicationVendorIDStore];
        v39 = [applicationVendorIDStore machOUUIDForApplicationBundleID:hostProcessBundleIdentifier];

        if (v39)
        {
          idsSession2 = [(HMDCameraIDSSessionHandler *)selfCopy3 idsSession];
          v78 = *MEMORY[0x277D18938];
          [v39 UUIDString];
          v69 = v39;
          v42 = v41 = hostProcessBundleIdentifier;
          v79 = v42;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          [idsSession2 setPreferences:v43];

          hostProcessBundleIdentifier = v41;
          v39 = v69;
        }

        else
        {
          v57 = objc_autoreleasePoolPush();
          v70 = selfCopy3;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v59 = v68 = v57;
            *buf = 138543618;
            v81 = v59;
            v82 = 2112;
            v83 = hostProcessBundleIdentifier;
            _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Could not find machO UUID for host process bundle identifier: %@", buf, 0x16u);

            v57 = v68;
          }

          objc_autoreleasePoolPop(v57);
        }
      }

      v60 = objc_autoreleasePoolPush();
      v61 = selfCopy3;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v63 = v71 = v60;
        [(HMDCameraIDSSessionHandler *)v61 idsSession];
        v65 = v64 = hostProcessBundleIdentifier;
        *buf = 138543618;
        v81 = v63;
        v82 = 2112;
        v83 = v65;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Accepting invitation for session %@", buf, 0x16u);

        hostProcessBundleIdentifier = v64;
        v60 = v71;
      }

      v51 = accountCopy;

      objc_autoreleasePoolPop(v60);
      idsSession3 = [(HMDCameraIDSSessionHandler *)v61 idsSession];
      [idsSession3 acceptInvitation];

      sessionID2 = [(HMDCameraIDSSessionHandler *)v61 sessionID];
      [sessionID2 markMilestoneFor:@"IDSSessionInvitationReceived"];
    }

    else
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543874;
        v81 = v56;
        v82 = 2112;
        v83 = sessionCopy;
        v84 = 2112;
        v85 = v27;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Cannot handle session %@: camera session ID is not relevant: %@", buf, 0x20u);
      }

      v51 = accountCopy;

      objc_autoreleasePoolPop(v29);
    }

    serviceCopy = v74;
  }

  else
  {
    v51 = accountCopy;
    v52 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543874;
      v81 = v55;
      v82 = 2112;
      v83 = sessionCopy;
      v84 = 2112;
      v85 = v76;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle session %@: failed to unarchive request id from context: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v52);
  }

  accountCopy = v51;
LABEL_34:
}

- (void)_callSessionEndedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didEndSession delegate with error %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSSessionReceiver *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionReceiver:selfCopy didEndSessionWithError:errorCopy];
  }
}

- (void)_callSessionSetup:(id)setup
{
  v15 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = setupCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didSetup delegate with error %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSSessionReceiver *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionReceiver:selfCopy didSetUpWithError:setupCopy];
  }
}

- (NSString)remoteDestination
{
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsSession = [(HMDCameraIDSSessionHandler *)self idsSession];
  destination = [idsSession destination];

  return destination;
}

- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate applicationVendorIDStore:(id)store
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  verifierCopy = verifier;
  delegateCopy = delegate;
  storeCopy = store;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!queueCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!serviceCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!verifierCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v20 = storeCopy;
  if (!storeCopy)
  {
LABEL_13:
    v24 = _HMFPreconditionFailure();
    return [(HMDCameraIDSSessionReceiver *)v24 initWithSessionID:v25 workQueue:v26 sessionInviterDeviceVerifier:v27 delegate:v28, v29];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraIDSSessionReceiver;
  v21 = [(HMDCameraIDSSessionHandler *)&v30 initWithSessionID:dCopy workQueue:queueCopy idsStreamService:serviceCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_delegate, delegateCopy);
    objc_storeStrong(&v22->_sessionInviterDeviceVerifier, verifier);
    objc_storeStrong(&v22->_applicationVendorIDStore, store);
  }

  return v22;
}

- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)d workQueue:(id)queue sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate
{
  delegateCopy = delegate;
  verifierCopy = verifier;
  queueCopy = queue;
  dCopy = d;
  v14 = +[HMDIDSServiceManager sharedManager];
  v15 = [v14 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v16 = +[HMDApplicationVendorIDStore sharedStore];
  v17 = [(HMDCameraIDSSessionReceiver *)self initWithSessionID:dCopy workQueue:queueCopy idsStreamService:v15 sessionInviterDeviceVerifier:verifierCopy delegate:delegateCopy applicationVendorIDStore:v16];

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_202390 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_202390, &__block_literal_global_202391);
  }

  v3 = logCategory__hmf_once_v14_202392;

  return v3;
}

void __42__HMDCameraIDSSessionReceiver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_202392;
  logCategory__hmf_once_v14_202392 = v0;
}

@end