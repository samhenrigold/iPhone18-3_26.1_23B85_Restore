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
  v89 = *MEMORY[0x277D85DE8];
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
    v86 = v21;
    v87 = 2112;
    v88 = v12;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Message is targeting target: %@", buf, 0x16u);
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
      v86 = v28;
      v87 = 2112;
      v88 = v12;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Message is allowed: %@", buf, 0x16u);
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
      goto LABEL_52;
    }

    v83 = v34;
    remoteSenderContext = [v31 remoteSenderContext];
    mergeID = [remoteSenderContext mergeID];

    v81 = mergeID;
    if (mergeID)
    {
      appleAccountManager = [(HMDRemoteAccountMessageFilter *)selfCopy appleAccountManager];
      account2 = [appleAccountManager account];

      senderCorrelationIdentifier = [account2 senderCorrelationIdentifier];
      if (senderCorrelationIdentifier)
      {
        if ([mergeID isEqualToString:senderCorrelationIdentifier])
        {

          goto LABEL_47;
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
          v54 = v78 = v51;
          *buf = 138543618;
          v86 = v54;
          v87 = 2112;
          v88 = account2;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@MergeID is not set for the current account: %@", buf, 0x16u);

          v51 = v78;
        }

        objc_autoreleasePoolPop(v51);
      }
    }

    systemKeychainStore = [(HMDRemoteAccountMessageFilter *)selfCopy systemKeychainStore];
    v84 = 0;
    v56 = [systemKeychainStore getLocalPairingIdentity:&v84];
    v57 = v84;

    if (!v56)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = selfCopy;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v61 = v79 = v58;
        *buf = 138543618;
        v86 = v61;
        v87 = 2112;
        v88 = v57;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve local pairing identity with error: %@", buf, 0x16u);

        v58 = v79;
      }

      objc_autoreleasePoolPop(v58);
    }

    remoteSenderContext2 = [v31 remoteSenderContext];
    pairingIdentityIdentifier = [remoteSenderContext2 pairingIdentityIdentifier];

    if (!pairingIdentityIdentifier || ([v56 identifier], v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(pairingIdentityIdentifier, "isEqualToString:", v64), v64, !v65))
    {
      v80 = v57;
      v66 = objc_autoreleasePoolPush();
      v67 = selfCopy;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v69 = v77 = v66;
        *buf = 138543618;
        v86 = v69;
        v87 = 2112;
        v88 = v31;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine if the message was sent from the current account: %@", buf, 0x16u);

        v66 = v77;
      }

      objc_autoreleasePoolPop(v66);
      v44 = 0;
      goto LABEL_51;
    }

LABEL_47:
    v44 = 1;
LABEL_51:
    account = 0;
    v34 = v83;
    goto LABEL_52;
  }

  v82 = v34;
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
      v86 = v43;
      v87 = 2112;
      v88 = v31;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated message sent from current account: %@", buf, 0x16u);
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
      v86 = v50;
      v87 = 2112;
      v88 = v31;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Authenticated message not sent from current account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v44 = 0;
  }

  v34 = v82;
  account = v37;
LABEL_52:

  v70 = objc_autoreleasePoolPush();
  v71 = selfCopy;
  v72 = HMFGetOSLogHandle();
  v73 = v72;
  if (v44)
  {
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      v74 = HMFGetLogIdentifier();
      shortDescription = [v31 shortDescription];
      *buf = 138543618;
      v86 = v74;
      v87 = 2112;
      v88 = shortDescription;
      _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender of message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    v76 = HMFGetLogIdentifier();
    *buf = 138543618;
    v86 = v76;
    v87 = 2112;
    v88 = v31;
    _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate sender of message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v70);
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
  if (logCategory__hmf_once_t18_131773 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_131773, &__block_literal_global_118_131774);
  }

  v3 = logCategory__hmf_once_v19_131775;

  return v3;
}

void __44__HMDRemoteAccountMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_131775;
  logCategory__hmf_once_v19_131775 = v0;
}

@end