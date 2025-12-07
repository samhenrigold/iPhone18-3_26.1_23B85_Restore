@interface HMDRemoteAccountMessageFilter
+ (id)logCategory;
- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason;
- (HMDRemoteAccountMessageFilter)initWithName:(id)name;
- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages;
- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages appleAccountManager:(id)manager systemKeychainStore:(id)store;
- (id)logIdentifier;
@end

@implementation HMDRemoteAccountMessageFilter

- (id)logIdentifier
{
  target = [(HMDRemoteAccountMessageFilter *)self target];
  v2Target = [target target];
  uUIDString = [v2Target UUIDString];

  return uUIDString;
}

- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason
{
  v93 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  targetCopy = target;
  v10 = messageCopy;
  v11 = v10;
  if (!self || ![v10 isRemote])
  {

    goto LABEL_16;
  }

  v12 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if ([v14 restriction] == 4 || (-[HMDRemoteAccountMessageFilter target](self, "target"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "destination"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, !v17))
  {
LABEL_14:

LABEL_16:
    v29 = 1;
    goto LABEL_17;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v90 = v21;
    v91 = 2112;
    v92 = v12;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Message is targeting target: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  allowedMessages = [(HMDRemoteAccountMessageFilter *)selfCopy allowedMessages];
  name = [v12 name];
  v24 = [allowedMessages containsObject:name];

  if (v24)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v28;
      v91 = 2112;
      v92 = v12;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Message is allowed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    goto LABEL_14;
  }

  v31 = v12;
  destination = [v31 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = destination;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  device = [v34 device];
  account = [device account];

  if (!account)
  {
    if (![v31 isSecureRemote])
    {
      v44 = 0;
      goto LABEL_55;
    }

    v87 = v34;
    remoteSenderContext = [v31 remoteSenderContext];
    mergeID = [remoteSenderContext mergeID];

    v85 = mergeID;
    if (mergeID)
    {
      appleAccountManager = [(HMDRemoteAccountMessageFilter *)selfCopy appleAccountManager];
      account2 = [appleAccountManager account];

      senderCorrelationIdentifier = [account2 senderCorrelationIdentifier];
      if (senderCorrelationIdentifier)
      {
        if ([mergeID isEqualToString:senderCorrelationIdentifier])
        {

          goto LABEL_50;
        }
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v54 = v83 = v51;
          *buf = 138543618;
          v90 = v54;
          v91 = 2112;
          v92 = account2;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@MergeID is not set for the current account: %@", buf, 0x16u);

          v51 = v83;
        }

        objc_autoreleasePoolPop(v51);
      }
    }

    systemKeychainStore = [(HMDRemoteAccountMessageFilter *)selfCopy systemKeychainStore];
    v88 = 0;
    v56 = [systemKeychainStore getLocalPairingIdentity:&v88];
    v57 = v88;

    if (!v56)
    {
      v58 = v57;
      v59 = objc_autoreleasePoolPush();
      v60 = selfCopy;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        v90 = v62;
        v91 = 2112;
        v92 = v58;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve local pairing identity with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v59);
      v57 = v58;
      v56 = 0;
    }

    remoteSenderContext2 = [v31 remoteSenderContext];
    pairingIdentityIdentifier = [remoteSenderContext2 pairingIdentityIdentifier];

    if (!pairingIdentityIdentifier || ([v56 identifier], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(pairingIdentityIdentifier, "isEqualToString:", v65), v65, !v66))
    {
      remoteUserPairingIdentity = [v31 remoteUserPairingIdentity];
      v68 = remoteUserPairingIdentity;
      if (!remoteUserPairingIdentity || ![remoteUserPairingIdentity isEqual:v56])
      {
        v82 = v57;
        v84 = v56;
        v69 = objc_autoreleasePoolPush();
        v70 = selfCopy;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v81 = v70;
          v73 = v72 = v69;
          *buf = 138543618;
          v90 = v73;
          v91 = 2112;
          v92 = v31;
          _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine if the message was sent from the current account: %@", buf, 0x16u);

          v69 = v72;
          v70 = v81;
        }

        objc_autoreleasePoolPop(v69);
        v44 = 0;
        goto LABEL_54;
      }
    }

LABEL_50:
    v44 = 1;
LABEL_54:
    account = 0;
    v34 = v87;
    goto LABEL_55;
  }

  v86 = v34;
  v37 = account;
  isCurrentAccount = [account isCurrentAccount];
  v39 = objc_autoreleasePoolPush();
  v40 = selfCopy;
  v41 = HMFGetOSLogHandle();
  v42 = v41;
  if (isCurrentAccount)
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v43;
      v91 = 2112;
      v92 = v31;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated message sent from current account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v44 = 1;
  }

  else
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v50;
      v91 = 2112;
      v92 = v31;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Authenticated message not sent from current account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v44 = 0;
  }

  v34 = v86;
  account = v37;
LABEL_55:

  v74 = objc_autoreleasePoolPush();
  v75 = selfCopy;
  v76 = HMFGetOSLogHandle();
  v77 = v76;
  if (v44)
  {
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v78 = HMFGetLogIdentifier();
      shortDescription = [v31 shortDescription];
      *buf = 138543618;
      v90 = v78;
      v91 = 2112;
      v92 = shortDescription;
      _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender of message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v74);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    v80 = HMFGetLogIdentifier();
    *buf = 138543618;
    v90 = v80;
    v91 = 2112;
    v92 = v31;
    _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate sender of message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v74);
  if (reason)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    *reason = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_17:

  return v29;
}

- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages appleAccountManager:(id)manager systemKeychainStore:(id)store
{
  targetCopy = target;
  messagesCopy = messages;
  managerCopy = manager;
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = HMDRemoteAccountMessageFilter;
  v15 = [(HMDMessageFilter *)&v19 initWithName:@"RemoteAccount"];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_target, target);
    if (messagesCopy)
    {
      v17 = objc_msgSend_copy(messagesCopy);
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v16->_allowedMessages, v17);
    if (messagesCopy)
    {
    }

    objc_storeStrong(&v16->_appleAccountManager, manager);
    objc_storeStrong(&v16->_systemKeychainStore, store);
  }

  return v16;
}

- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages
{
  messagesCopy = messages;
  targetCopy = target;
  v8 = +[HMDAppleAccountManager sharedManager];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v10 = [(HMDRemoteAccountMessageFilter *)self initWithTarget:targetCopy allowedMessages:messagesCopy appleAccountManager:v8 systemKeychainStore:systemStore];

  return v10;
}

- (HMDRemoteAccountMessageFilter)initWithName:(id)name
{
  nameCopy = name;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t130 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t130, &__block_literal_global_423);
  }

  v3 = logCategory__hmf_once_v131;

  return v3;
}

uint64_t __44__HMDRemoteAccountMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v131;
  logCategory__hmf_once_v131 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end