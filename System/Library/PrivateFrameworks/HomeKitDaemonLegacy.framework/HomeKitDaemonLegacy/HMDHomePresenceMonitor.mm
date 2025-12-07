@interface HMDHomePresenceMonitor
+ (id)logCategory;
- (HMDHomePresence)currentHomePresence;
- (HMDHomePresenceMonitor)init;
- (HMDHomePresenceMonitor)initWithCoder:(id)coder;
- (HMDHomePresenceUpdate)homePresenceUpdate;
- (NSDictionary)presenceMap;
- (void)_addUser:(id)user;
- (void)_auditPresenceMap;
- (void)_evaluatePresence:(id)presence newUserPresence:(id)userPresence presenceStatusUpdateReason:(id)reason;
- (void)_insertUserPresence:(id)presence;
- (void)_preparePresenceMap;
- (void)_reEvaluatePresenceWithReason:(id)reason;
- (void)_registerForMessages;
- (void)_removeNonExistingUsers;
- (void)_removeUserPresence:(id)presence;
- (void)_startAuditTimer;
- (void)_updateUserPresence:(id)presence presenceAuth:(id)auth completion:(id)completion;
- (void)addNewUser:(id)user;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleTimerFiredNotification:(id)notification;
- (void)handleUserHomePresencePayload:(id)payload device:(id)device user:(id)user completion:(id)completion;
- (void)handleUserPresenceUpdate:(id)update;
- (void)handleUserPresenceUpdateNotification:(id)notification;
- (void)removeUser:(id)user;
- (void)setCurrentHomePresence:(id)presence;
@end

@implementation HMDHomePresenceMonitor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  v5 = objc_msgSend_copy(presenceMap);
  [coderCopy encodeObject:v5 forKey:@"kHMDHomePresenceMonitorPresenceMapCodingKey"];
}

- (HMDHomePresenceMonitor)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDHomePresenceMonitor *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:3];
    v8 = [v6 setWithArray:{v7, v15, v16}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kHMDHomePresenceMonitorPresenceMapCodingKey"];
    v10 = [v9 mutableCopy];
    presenceMap = v5->_presenceMap;
    v5->_presenceMap = v10;

    if (!v5->_presenceMap)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v13 = v5->_presenceMap;
      v5->_presenceMap = dictionary;
    }
  }

  return v5;
}

- (void)_removeUserPresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  presenceMap = self->_presenceMap;
  user = [presenceCopy user];
  uuid = [user uuid];
  [(NSMutableDictionary *)presenceMap setObject:0 forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_insertUserPresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  presenceMap = self->_presenceMap;
  user = [presenceCopy user];
  uuid = [user uuid];
  [(NSMutableDictionary *)presenceMap setObject:presenceCopy forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHomePresenceUpdate)homePresenceUpdate
{
  v3 = [HMDHomePresenceUpdate alloc];
  currentHomePresence = [(HMDHomePresenceMonitor *)self currentHomePresence];
  v5 = [(HMDHomePresenceUpdate *)v3 initWithHomePresence:currentHomePresence userPresence:0 update:0 causingDevice:0];

  return v5;
}

- (void)_evaluatePresence:(id)presence newUserPresence:(id)userPresence presenceStatusUpdateReason:(id)reason
{
  v57 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  userPresenceCopy = userPresence;
  reasonCopy = reason;
  home = [(HMDHomePresenceBase *)self home];
  [(HMDHomePresenceMonitor *)self _auditPresenceMap];
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v15;
    v51 = 2112;
    v52 = presenceMap;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Evaluating home presence with current presence map: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [[HMDHomePresence alloc] initWithHome:home userPresenceMap:presenceMap lastUpdateByDevice:presenceCopy];
  currentHomePresence = [(HMDHomePresenceMonitor *)selfCopy currentHomePresence];

  v42 = presenceMap;
  v43 = home;
  if (currentHomePresence)
  {
    currentHomePresence2 = [(HMDHomePresenceMonitor *)selfCopy currentHomePresence];
    v44 = HMFEqualObjects();
  }

  else
  {
    v44 = 1;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    currentHomePresence3 = [(HMDHomePresenceMonitor *)v20 currentHomePresence];
    shortDescription = [currentHomePresence3 shortDescription];
    [(HMDHomePresence *)v16 shortDescription];
    v26 = v25 = presenceCopy;
    HMFBooleanToString();
    v27 = v41 = reasonCopy;
    *buf = 138544130;
    v50 = v22;
    v51 = 2112;
    v52 = shortDescription;
    v53 = 2112;
    v54 = v26;
    v55 = 2112;
    v56 = v27;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating home presence from %@ to %@, Equal: %@", buf, 0x2Au);

    presenceCopy = v25;
    reasonCopy = v41;
  }

  objc_autoreleasePoolPop(v19);
  [(HMDHomePresenceMonitor *)v20 setCurrentHomePresence:v16];
  v28 = objc_autoreleasePoolPush();
  v29 = v20;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v31;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Current home presence evaluated, sending notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  logAndPostNotification(@"HMDHomePresenceEvaluatedNotification", v29, 0);
  if ((v44 & 1) == 0)
  {
    v45 = v16;
    [v43 saveWithReason:@"HMDHomePresenceMonitorUpdatedReason" postSyncNotification:0];
    v32 = [reasonCopy value] == 2;
    v33 = [HMDHomePresenceUpdate alloc];
    currentHomePresence4 = [(HMDHomePresenceMonitor *)v29 currentHomePresence];
    v35 = [(HMDHomePresenceUpdate *)v33 initWithHomePresence:currentHomePresence4 userPresence:userPresenceCopy update:v32 causingDevice:presenceCopy];

    v36 = objc_autoreleasePoolPush();
    v37 = v29;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v39;
      v51 = 2112;
      v52 = v35;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Sending home presence update %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v47 = @"HMDHomePresenceUpdateKey";
    v48 = v35;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    logAndPostNotification(@"HMDHomePresenceUpdateNotification", v37, v40);

    v16 = v45;
  }

  [(HMDHomePresenceMonitor *)v29 _startAuditTimer];
}

- (void)_updateUserPresence:(id)presence presenceAuth:(id)auth completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  authCopy = auth;
  completionCopy = completion;
  presenceAuthStatus = [presenceCopy presenceAuthStatus];
  v12 = HMFEqualObjects();

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v17;
      v33 = 2112;
      v34 = presenceCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Auth and compute status are not changing for user %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = _Block_copy(completionCopy);
    home = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    if (v16)
    {
      v20 = HMFGetLogIdentifier();
      presenceAuthStatus2 = [presenceCopy presenceAuthStatus];
      *buf = 138544130;
      v32 = v20;
      v33 = 2112;
      v34 = presenceAuthStatus2;
      v35 = 2112;
      v36 = authCopy;
      v37 = 2112;
      v38 = presenceCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Presence auth status is changing from %@ to %@ for user %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    home = [(HMDHomePresenceBase *)selfCopy home];
    if ([presenceCopy isOwner])
    {
      [home setPresenceAuthStatus:authCopy];
      currentUser = [home currentUser];
      [currentUser setPresenceAuthStatus:authCopy];

      v23 = _Block_copy(completionCopy);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23);
      }
    }

    else
    {
      v24 = [presenceCopy newModelWithChangeType:2];
      number = [authCopy number];
      [v24 setPresenceAuthorizationStatus:number];

      backingStore = [home backingStore];
      v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v28 = [backingStore transaction:@"kRemoteUpdateUserPresenceNotificationKey" options:v27];

      [v28 add:v24];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __70__HMDHomePresenceMonitor__updateUserPresence_presenceAuth_completion___block_invoke;
      v29[3] = &unk_279735558;
      v30 = completionCopy;
      [v28 run:v29];
    }
  }
}

void __70__HMDHomePresenceMonitor__updateUserPresence_presenceAuth_completion___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)handleUserHomePresencePayload:(id)payload device:(id)device user:(id)user completion:(id)completion
{
  v78 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  deviceCopy = device;
  userCopy = user;
  completionCopy = completion;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v69 = v16;
    v70 = 2112;
    v71 = payloadCopy;
    v72 = 2112;
    v73 = deviceCopy;
    v74 = 2112;
    v75 = userCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received user presence: [%@] from device [%@] for user [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  if (userCopy)
  {
    home = [(HMDHomePresenceBase *)selfCopy home];
    if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v69 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@This device is not the current resident, cannot process the presence update, responding with error", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2708];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v18);
      }

      goto LABEL_32;
    }

    v18 = [MEMORY[0x277CD1F00] authWithDict:payloadCopy];
    if (!v18)
    {
      v19 = MEMORY[0x277CD1F00];
      v20 = [payloadCopy hmf_numberForKey:@"kUserPresenceAuthStatusKey"];
      v18 = [v19 authWithNumber:v20];
    }

    v57 = [HMDUserPresenceRegion regionWithDict:payloadCopy];
    v56 = [HMDUserPresenceUpdateReason reasonWithDict:payloadCopy];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      userID = [userCopy userID];
      *buf = 138544386;
      v69 = v24;
      v70 = 2114;
      v71 = v18;
      v72 = 2114;
      v73 = v57;
      v74 = 2114;
      v75 = v56;
      v76 = 2112;
      v77 = userID;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received user presence message with auth: %{public}@, region: %{public}@, reason: %{public}@, user: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v21);
    presenceMap = [(HMDHomePresenceMonitor *)v22 presenceMap];
    uuid = [userCopy uuid];
    v58 = [presenceMap objectForKeyedSubscript:uuid];

    if (!v58)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v22;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        uuid2 = [userCopy uuid];
        *buf = 138543618;
        v69 = v47;
        v70 = 2112;
        v71 = uuid2;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Could not find the user with UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v49);
      }

      goto LABEL_31;
    }

    user = [v58 user];
    presenceAuthStatus = [user presenceAuthStatus];
    if (HMFEqualObjects())
    {
      presenceRegionStatus = [v58 presenceRegionStatus];
      v31 = HMFEqualObjects();

      if (v31)
      {
        [v58 setPresenceRegionStatus:v57];
        v32 = objc_autoreleasePoolPush();
        v33 = v22;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v69 = v35;
          v70 = 2112;
          v71 = v58;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@User presence auth or region status for %@ are not changing, updated presence timestamp", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        [home saveWithReason:@"HMDHomePresenceMonitorUpdatedReason" postSyncNotification:0];
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    v50 = [HMDUserPresence alloc];
    user2 = [v58 user];
    v52 = [MEMORY[0x277CBEAA8] now];
    v53 = [(HMDUserPresence *)v50 initWithUser:user2 presenceRegionStatus:v57 timeStamp:v52 presenceUpdateReason:v56 device:deviceCopy];

    objc_initWeak(buf, v22);
    user3 = [(HMDUserPresence *)v53 user];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __79__HMDHomePresenceMonitor_handleUserHomePresencePayload_device_user_completion___block_invoke;
    v60[3] = &unk_279723038;
    objc_copyWeak(&v67, buf);
    v61 = v58;
    v55 = v53;
    v62 = v55;
    v63 = userCopy;
    v66 = completionCopy;
    v64 = deviceCopy;
    v65 = v56;
    [(HMDHomePresenceMonitor *)v22 _updateUserPresence:user3 presenceAuth:v18 completion:v60];

    objc_destroyWeak(&v67);
    objc_destroyWeak(buf);

LABEL_31:
LABEL_32:

    goto LABEL_33;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543362;
    v69 = v39;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Remote user is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  home = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, home);
  }

LABEL_33:
}

void __79__HMDHomePresenceMonitor_handleUserHomePresencePayload_device_user_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 32) user];
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = 138544130;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updated presence for user %@ from %@ to %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v3);
    os_unfair_lock_lock_with_options();
    v10 = *&v4[16]._os_unfair_lock_opaque;
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) uuid];
    [v10 setObject:v11 forKeyedSubscript:v12];

    os_unfair_lock_unlock(v4 + 14);
    v13 = *(a1 + 72);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    [(os_unfair_lock_s *)v4 _evaluatePresence:*(a1 + 56) newUserPresence:*(a1 + 40) presenceStatusUpdateReason:*(a1 + 64)];
  }
}

- (void)handleUserPresenceUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDHomePresenceMonitor_handleUserPresenceUpdateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __63__HMDHomePresenceMonitor_handleUserPresenceUpdateNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) userInfo];
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received presence update notification with note %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = +[HMDAppleAccountManager sharedManager];
  v8 = [v7 device];

  v9 = [*(a1 + 32) home];
  v10 = [v9 currentUser];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) userInfo];
  [v11 handleUserHomePresencePayload:v12 device:v8 user:v10 completion:0];
}

- (void)handleUserPresenceUpdate:(id)update
{
  updateCopy = update;
  home = [(HMDHomePresenceBase *)self home];
  v6 = [updateCopy userForHome:home];

  messagePayload = [updateCopy messagePayload];
  remoteSourceDevice = [updateCopy remoteSourceDevice];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HMDHomePresenceMonitor_handleUserPresenceUpdate___block_invoke;
  v10[3] = &unk_2797359D8;
  v11 = updateCopy;
  v9 = updateCopy;
  [(HMDHomePresenceMonitor *)self handleUserHomePresencePayload:messagePayload device:remoteSourceDevice user:v6 completion:v10];
}

- (void)removeUser:(id)user
{
  v26 = *MEMORY[0x277D85DE8];
  userCopy = user;
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  uuid = [userCopy uuid];
  v7 = [presenceMap objectForKeyedSubscript:uuid];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = userCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing user %@ from the presence map", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    os_unfair_lock_lock_with_options();
    presenceMap = selfCopy->_presenceMap;
    uuid2 = [userCopy uuid];
    [(NSMutableDictionary *)presenceMap removeObjectForKey:uuid2];

    os_unfair_lock_unlock(&selfCopy->_lock);
    userCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Removed user : %@", userCopy];
    [(HMDHomePresenceMonitor *)selfCopy _reEvaluatePresenceWithReason:userCopy];
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    presenceMap2 = [(HMDHomePresenceMonitor *)selfCopy2 presenceMap];
    *buf = 138543874;
    v21 = v18;
    v22 = 2112;
    v23 = userCopy;
    v24 = 2112;
    v25 = presenceMap2;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Presence map after removing user : %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
}

- (void)addNewUser:(id)user
{
  v13 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = userCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding new user %@ to the presence map", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomePresenceMonitor *)selfCopy _addUser:userCopy];
  [(HMDHomePresenceMonitor *)selfCopy _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];
}

- (void)_addUser:(id)user
{
  v21 = *MEMORY[0x277D85DE8];
  userCopy = user;
  uuid = [userCopy uuid];

  if (uuid)
  {
    os_unfair_lock_lock_with_options();
    v6 = [[HMDUserPresence alloc] initWithUser:userCopy presenceRegionStatus:0];
    presenceMap = self->_presenceMap;
    uuid2 = [userCopy uuid];
    [(NSMutableDictionary *)presenceMap setObject:v6 forKeyedSubscript:uuid2];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      presenceMap = [(HMDHomePresenceMonitor *)selfCopy2 presenceMap];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = userCopy;
      v19 = 2112;
      v20 = presenceMap;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Presence map after adding new user : %@, %@", &v15, 0x20u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v14;
      v17 = 2112;
      v18 = userCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@UUID for user %@ is nil, not adding it to the monitor map.", &v15, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v9);
}

- (void)_removeNonExistingUsers
{
  v32 = *MEMORY[0x277D85DE8];
  home = [(HMDHomePresenceBase *)self home];
  usersSupportingPresence = [home usersSupportingPresence];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  obj = [presenceMap allValues];

  v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = *v24;
    *&v6 = 138543618;
    v20 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        user = [v9 user];
        v11 = [usersSupportingPresence containsObject:user];

        if ((v11 & 1) == 0)
        {
          v12 = objc_autoreleasePoolPush();
          selfCopy = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            user2 = [v9 user];
            *buf = v20;
            v28 = v15;
            v29 = 2112;
            v30 = user2;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing the user %@ from presence map since it isn't part of home anymore", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          os_unfair_lock_lock_with_options();
          presenceMap = selfCopy->_presenceMap;
          user3 = [v9 user];
          uuid = [user3 uuid];
          [(NSMutableDictionary *)presenceMap removeObjectForKey:uuid];

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }
}

- (void)_preparePresenceMap
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  home = [(HMDHomePresenceBase *)self home];
  usersSupportingPresence = [home usersSupportingPresence];

  v5 = [usersSupportingPresence countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138543618;
    v21 = v6;
    do
    {
      v9 = 0;
      v22 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(usersSupportingPresence);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        presenceMap = [(HMDHomePresenceMonitor *)selfCopy presenceMap];
        uuid = [v10 uuid];
        v13 = [presenceMap objectForKeyedSubscript:uuid];

        if (!v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = selfCopy;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v17 = selfCopy;
            v18 = v8;
            v20 = v19 = usersSupportingPresence;
            *buf = v21;
            v28 = v20;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Adding home user %@ to the presence map, as it isn't present", buf, 0x16u);

            usersSupportingPresence = v19;
            v8 = v18;
            selfCopy = v17;
            v7 = v22;
          }

          objc_autoreleasePoolPop(v14);
          [(HMDHomePresenceMonitor *)v15 _addUser:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [usersSupportingPresence countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  [(HMDHomePresenceMonitor *)selfCopy _removeNonExistingUsers];
}

- (void)_startAuditTimer
{
  v40 = *MEMORY[0x277D85DE8];
  timerID = [(HMDHomePresenceMonitor *)self timerID];
  if (timerID)
  {
    v4 = +[HMDBackgroundTaskManager sharedManager];
    [v4 cancelTaskWithIdentifier:timerID onObserver:self];

    home = [(HMDHomePresenceBase *)self home];
    primaryResident = [home primaryResident];
    device = [primaryResident device];

    if ([device isCurrentDevice])
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      hmf_dateComponents = [v8 hmf_dateComponents];

      minute = [hmf_dateComponents minute];
      [hmf_dateComponents setMinute:presenceMonitorAuditInMinutes + minute];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [currentCalendar dateFromComponents:hmf_dateComponents];

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        hmf_localTimeDescription = [v12 hmf_localTimeDescription];
        *buf = 138543874;
        v35 = v16;
        v36 = 2112;
        v37 = timerID;
        v38 = 2112;
        v39 = hmf_localTimeDescription;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting the audit timer (%@) to fire at %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = +[HMDBackgroundTaskManager sharedManager];
      v33 = 0;
      v19 = [v18 scheduleTaskWithIdentifier:timerID fireDate:v12 onObserver:selfCopy selector:sel_handleTimerFiredNotification_ error:&v33];
      v20 = v33;

      if ((v19 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v35 = v24;
          v36 = 2112;
          v37 = timerID;
          v38 = 2112;
          v39 = v20;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@This is not the resident device, not starting the audit timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
    }
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
      v35 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to start audit timer with nil timer id", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }
}

- (void)_auditPresenceMap
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    presenceMap = [(HMDHomePresenceMonitor *)selfCopy presenceMap];
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = presenceMap;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Auditing the presence map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomePresenceMonitor *)selfCopy _removeNonExistingUsers];
  presenceMap2 = [(HMDHomePresenceMonitor *)selfCopy presenceMap];
  home = [(HMDHomePresenceBase *)selfCopy home];
  primaryResident = [home primaryResident];
  device = [primaryResident device];

  isCurrentDevice = [device isCurrentDevice];
  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (isCurrentDevice)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      name = [device name];
      identifier = [device identifier];
      *buf = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = name;
      v28 = 2112;
      v29 = identifier;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@This device is the primary resident: [%@ / %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__HMDHomePresenceMonitor__auditPresenceMap__block_invoke;
    v23[3] = &unk_279722FF0;
    v23[4] = v14;
    v20 = v23;
  }

  else
  {
    if (v16)
    {
      v21 = HMFGetLogIdentifier();
      identifier2 = [device identifier];
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = identifier2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@This device is not the primary resident : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = &__block_literal_global_53;
  }

  [presenceMap2 enumerateKeysAndObjectsUsingBlock:v20];
}

void __43__HMDHomePresenceMonitor__auditPresenceMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 user];
  v8 = [v7 presenceAuthStatus];
  v9 = [v8 value];

  if (v9 == 1)
  {
    v10 = [v6 presenceRegionStatus];

    if (v10)
    {
      v11 = [v6 updateTimestamp];

      if (v11)
      {
        v12 = [v6 updateTimestamp];
        [v12 timeIntervalSinceNow];
        v14 = fabs(v13);

        v15 = (60 * (presenceMonitorRefreshGracePeriodInMinutes + presenceFeedRefreshInMinutes));
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v14 <= v15)
        {
          if (v19)
          {
            v21 = HMFGetLogIdentifier();
            v22 = 138544130;
            v23 = v21;
            v24 = 2112;
            v25 = v6;
            v26 = 2048;
            v27 = v14;
            v28 = 2048;
            v29 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ update is still valid as the time since last update %lf is less than allowed %lf", &v22, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
        }

        else
        {
          if (v19)
          {
            v20 = HMFGetLogIdentifier();
            v22 = 138544130;
            v23 = v20;
            v24 = 2112;
            v25 = v6;
            v26 = 2048;
            v27 = v14;
            v28 = 2048;
            v29 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ update is stale as the time since last update %lf is more than allowed %lf", &v22, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
          [v6 setPresenceRegionStatus:0];
        }
      }
    }
  }
}

- (void)handleTimerFiredNotification:(id)notification
{
  userInfo = [notification userInfo];
  v8 = [userInfo hmf_stringForKey:@"HMD.BGTM.NK"];

  timerID = [(HMDHomePresenceMonitor *)self timerID];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"BTM Timer fired with ID: %@", v8];
    [(HMDHomePresenceMonitor *)self _reEvaluatePresenceWithReason:v7];
  }
}

- (void)_reEvaluatePresenceWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDHomePresenceMonitor__reEvaluatePresenceWithReason___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __56__HMDHomePresenceMonitor__reEvaluatePresenceWithReason___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Re-evaluating presence due to reason: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];
}

- (void)setCurrentHomePresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  currentHomePresence = self->_currentHomePresence;
  self->_currentHomePresence = presenceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHomePresence)currentHomePresence
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentHomePresence;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)presenceMap
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_presenceMap);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_registerForMessages
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceBase *)&v11 _registerForMessages];
  v3 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v3 setRoles:{objc_msgSend(v3, "roles") | 4}];
  v4 = objc_msgSend_copy(v3);
  home = [(HMDHomePresenceBase *)self home];
  msgDispatcher = [(HMDHomePresenceBase *)self msgDispatcher];
  v12[0] = v4;
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [msgDispatcher registerForMessage:@"kRemoteUpdateUserPresenceNotificationKey" receiver:self policies:v8 selector:sel_handleUserPresenceUpdate_];

  presenceFeeder = [home presenceFeeder];
  if (presenceFeeder)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleUserPresenceUpdateNotification_ name:@"HMDUserPresenceUpdateLocalNotification" object:presenceFeeder];
  }
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher
{
  v10.receiver = self;
  v10.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceBase *)&v10 configure:configure messageDispatcher:dispatcher];
  v5 = MEMORY[0x277CCACA8];
  presenceMonitorMessageTargetUUID = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
  uUIDString = [presenceMonitorMessageTargetUUID UUIDString];
  v8 = [v5 stringWithFormat:@"presence.monitor/%@", uUIDString];
  timerID = self->_timerID;
  self->_timerID = v8;

  [(HMDHomePresenceMonitor *)self _preparePresenceMap];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceMonitor *)&v4 dealloc];
}

- (HMDHomePresenceMonitor)init
{
  v6.receiver = self;
  v6.super_class = HMDHomePresenceMonitor;
  v2 = [(HMDHomePresenceMonitor *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    presenceMap = v2->_presenceMap;
    v2->_presenceMap = dictionary;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_12581 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_12581, &__block_literal_global_12582);
  }

  v3 = logCategory__hmf_once_v1_12583;

  return v3;
}

uint64_t __37__HMDHomePresenceMonitor_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_12583;
  logCategory__hmf_once_v1_12583 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end