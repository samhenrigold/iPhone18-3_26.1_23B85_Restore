@interface HMDUserPresenceFeeder
+ (id)logCategory;
- (BOOL)_updatePresenceToResidentForUser:(id)user presenceAuthStatus:(id)status authChanging:(BOOL)changing reason:(id)reason fmfStatus:(id)fmfStatus;
- (HMDUserPresenceFeeder)init;
- (HMDUserPresenceFeeder)initWithLocation:(id)location;
- (id)_sendPresenceAuthStatusForUser:(id)user presenceAuthStatus:(id)status presenceRegionStatus:(id)regionStatus presenceComputeStatus:(id)computeStatus reason:(id)reason;
- (void)_handleLocationAuthorizationChangedNotification:(id)notification;
- (void)_handlePrivilegeUpdate:(id)update;
- (void)_registerForMessages;
- (void)_sendPresenceReport:(unint64_t)report;
- (void)_sendPresenceUpdateToResident:(id)resident;
- (void)_sendPresenceUpdateToResidentForUser:(id)user presenceAuthStatus:(id)status authChanging:(BOOL)changing reason:(id)reason;
- (void)_sendPresenceUpdateToResidentForUser:(id)user presenceAuthStatus:(id)status authChanging:(BOOL)changing reason:(id)reason fmfStatus:(id)fmfStatus;
- (void)_startRefreshTimer;
- (void)_updatePresenceComputeStatus:(id)status;
- (void)accountAvailabilityChanged:(id)changed;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher;
- (void)didEndFeedSession:(id)session;
- (void)fetchCKAccountStatusAndSendPresenceReport;
- (void)fmfStatusUpdateNotification:(id)notification;
- (void)handleDidArriveHomeNotification:(id)notification;
- (void)handleDidLeaveHomeNotification:(id)notification;
- (void)handleHomeDataLoadedNotification:(id)notification;
- (void)handleResidentDeviceConfirmed:(id)confirmed;
- (void)handleTimerFiredNotification:(id)notification;
- (void)homeDataProcessed;
- (void)presenceAuthChanged;
- (void)presenceAuthStatusChangedForUser:(id)user presenceAuthStatus:(id)status;
- (void)residentChanged;
- (void)sendInitialPresenceUpdate;
- (void)setPresenceRegionStatus:(unint64_t)status;
@end

@implementation HMDUserPresenceFeeder

- (void)handleDidLeaveHomeNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  home = [(HMDHomePresenceBase *)self home];
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7 = workQueue;
  if (home && workQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDUserPresenceFeeder_handleDidLeaveHomeNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@home or workQueue unexpectedly nil -- likely called before configure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)handleDidArriveHomeNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  home = [(HMDHomePresenceBase *)self home];
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7 = workQueue;
  if (home && workQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDUserPresenceFeeder_handleDidArriveHomeNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@home or workQueue unexpectedly nil -- likely called before configure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)didEndFeedSession:(id)session
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  currentFeedSession = [(HMDUserPresenceFeeder *)self currentFeedSession];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (currentFeedSession == sessionCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = sessionCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@%@ is complete", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserPresenceFeeder *)selfCopy setCurrentFeedSession:0];
    v12 = [HMDUserPresenceFeed alloc];
    user = [sessionCopy user];
    presenceAuthStatus = [sessionCopy presenceAuthStatus];
    presenceComputeStatus = [sessionCopy presenceComputeStatus];
    presenceRegionStatus = [sessionCopy presenceRegionStatus];
    reason = [sessionCopy reason];
    v18 = [(HMDUserPresenceFeed *)v12 initWithUser:user presenceAuthStatus:presenceAuthStatus presenceComputeStatus:presenceComputeStatus presenceRegion:presenceRegionStatus reason:reason];
    [(HMDUserPresenceFeeder *)selfCopy setLastSentFeed:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      lastSentFeed = [(HMDUserPresenceFeeder *)v20 lastSentFeed];
      v24 = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = lastSentFeed;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating last sent feed to %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDUserPresenceFeeder *)v20 _startRefreshTimer];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = sessionCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@ is not tracked", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_handleLocationAuthorizationChangedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    [v6 integerValue];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMLocationAuthorizationAsString();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Latest Location Authorization is %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDUserPresenceFeeder *)selfCopy _sendPresenceReport:5];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key in the message", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_updatePresenceComputeStatus:(id)status
{
  v35 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  home = [(HMDHomePresenceBase *)self home];
  presenceComputeStatus = [home presenceComputeStatus];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      presenceComputeStatus2 = [home presenceComputeStatus];
      v29 = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = presenceComputeStatus2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Presence compute status is not changing from %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = [HMDHomeModel alloc];
    uuid = [home uuid];
    homeManager = [home homeManager];
    uuid2 = [homeManager uuid];
    v17 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      presenceComputeStatus3 = [home presenceComputeStatus];
      v29 = 138543874;
      v30 = v21;
      v31 = 2112;
      v32 = presenceComputeStatus3;
      v33 = 2112;
      v34 = statusCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Presence compute status is changing from %@ to %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    number = [statusCopy number];
    [(HMDHomeModel *)v17 setPresenceComputeStatus:number];

    v24 = [MEMORY[0x277D0F818] messageWithName:@"kPresenceComputeStatusUpdate" messagePayload:0];
    backingStore = [home backingStore];
    name = [v24 name];
    v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v28 = [backingStore transaction:name options:v27];

    [v28 add:v17 withMessage:v24];
    [v28 run];
  }
}

- (id)_sendPresenceAuthStatusForUser:(id)user presenceAuthStatus:(id)status presenceRegionStatus:(id)regionStatus presenceComputeStatus:(id)computeStatus reason:(id)reason
{
  v90 = *MEMORY[0x277D85DE8];
  userCopy = user;
  statusCopy = status;
  regionStatusCopy = regionStatus;
  computeStatusCopy = computeStatus;
  reasonCopy = reason;
  home = [(HMDHomePresenceBase *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  device = [primaryResidentDevice device];
  if (!device)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v29;
      v84 = 2112;
      v85 = 0;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Primary resident device %@ is not set, not notifying", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = MEMORY[0x277CCA9B8];
    v31 = 91;
    goto LABEL_13;
  }

  if (([primaryResidentDevice supportsSharedEventTriggerActivation] & 1) == 0)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v35;
      v84 = 2112;
      v85 = device;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Primary resident device %@ is not capable of presence status, not notifying", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v30 = MEMORY[0x277CCA9B8];
    v31 = 92;
LABEL_13:
    v25 = [v30 hmErrorWithCode:v31];
    goto LABEL_36;
  }

  v79 = device;
  v19 = +[HMDLostModeManager sharedManager];
  isLost = [v19 isLost];

  if (isLost)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Device Lost. Not sending presence feed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
LABEL_35:
    device = v79;
    goto LABEL_36;
  }

  currentFeedSession = [(HMDUserPresenceFeeder *)self currentFeedSession];

  v77 = regionStatusCopy;
  v78 = statusCopy;
  if (!currentFeedSession)
  {
LABEL_26:
    if ([reasonCopy value] == 11)
    {
      v56 = [[HMDUserPresenceFeed alloc] initWithUser:userCopy presenceAuthStatus:statusCopy presenceComputeStatus:computeStatusCopy presenceRegion:regionStatusCopy reason:reasonCopy];
      lastSentFeed = [(HMDUserPresenceFeeder *)self lastSentFeed];
      v58 = [lastSentFeed isEqual:v56];

      if (v58)
      {
        v59 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = HMFGetLogIdentifier();
          lastSentFeed2 = [(HMDUserPresenceFeeder *)selfCopy4 lastSentFeed];
          *buf = 138543874;
          v83 = v62;
          v84 = 2112;
          v85 = lastSentFeed2;
          v86 = 2112;
          v87 = v56;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Last feed %@ is same as the new feed %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v59);
        v25 = 0;
        statusCopy = v78;
        goto LABEL_35;
      }

      statusCopy = v78;
    }

    v64 = [HMDUserPresenceFeedSession alloc];
    [(HMDHomePresenceBase *)self workQueue];
    v66 = v65 = statusCopy;
    presenceMonitorMessageTargetUUID = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
    msgDispatcher = [(HMDHomePresenceBase *)self msgDispatcher];
    v69 = [(HMDUserPresenceFeedSession *)v64 initWithDelegate:self workQueue:v66 targetUUID:presenceMonitorMessageTargetUUID messageDispatcher:msgDispatcher user:userCopy presenceAuthStatus:v65 presenceComputeStatus:computeStatusCopy presenceRegionStatus:regionStatusCopy reason:reasonCopy];
    [(HMDUserPresenceFeeder *)self setCurrentFeedSession:v69];

    v70 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      currentFeedSession2 = [(HMDUserPresenceFeeder *)selfCopy5 currentFeedSession];
      *buf = 138543874;
      v83 = v73;
      v84 = 2112;
      v85 = currentFeedSession2;
      v86 = 2112;
      v87 = computeStatusCopy;
      _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Created new feed session %@ with new computed status : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v70);
    currentFeedSession3 = [(HMDUserPresenceFeeder *)selfCopy5 currentFeedSession];
    [currentFeedSession3 send];

    v25 = 0;
    regionStatusCopy = v77;
    statusCopy = v78;
    goto LABEL_35;
  }

  v37 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    currentFeedSession4 = [(HMDUserPresenceFeeder *)selfCopy6 currentFeedSession];
    *buf = 138543618;
    v83 = v40;
    v84 = 2112;
    v85 = currentFeedSession4;
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@There is currently %@ active", buf, 0x16u);

    regionStatusCopy = v77;
  }

  objc_autoreleasePoolPop(v37);
  currentFeedSession5 = [(HMDUserPresenceFeeder *)selfCopy6 currentFeedSession];
  presenceAuthStatus = [currentFeedSession5 presenceAuthStatus];
  if ((HMFEqualObjects() & 1) == 0)
  {

    goto LABEL_23;
  }

  currentFeedSession6 = [(HMDUserPresenceFeeder *)selfCopy6 currentFeedSession];
  presenceRegionStatus = [currentFeedSession6 presenceRegionStatus];
  v46 = HMFEqualObjects();

  regionStatusCopy = v77;
  if (!v46)
  {
LABEL_23:
    v52 = objc_autoreleasePoolPush();
    v53 = selfCopy6;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138544130;
      v83 = v55;
      v84 = 2112;
      v85 = v78;
      v86 = 2112;
      v87 = regionStatusCopy;
      v88 = 2112;
      v89 = v79;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Current feed session is different than newer one. [presenceAuth = %@], [presenceRegion : %@], [resident: %@]", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v52);
    statusCopy = v78;
    goto LABEL_26;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = selfCopy6;
  v49 = HMFGetOSLogHandle();
  device = v79;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = HMFGetLogIdentifier();
    currentFeedSession7 = [(HMDUserPresenceFeeder *)v48 currentFeedSession];
    *buf = 138543618;
    v83 = v50;
    v84 = 2112;
    v85 = currentFeedSession7;
    _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Current feed session %@ already contains same auth and region status, ignoring", buf, 0x16u);

    regionStatusCopy = v77;
  }

  objc_autoreleasePoolPop(v47);
  v25 = 0;
  statusCopy = v78;
LABEL_36:

  return v25;
}

- (BOOL)_updatePresenceToResidentForUser:(id)user presenceAuthStatus:(id)status authChanging:(BOOL)changing reason:(id)reason fmfStatus:(id)fmfStatus
{
  changingCopy = changing;
  v86 = *MEMORY[0x277D85DE8];
  userCopy = user;
  reasonCopy = reason;
  fmfStatusCopy = fmfStatus;
  v13 = [MEMORY[0x277CD1F00] authWithValue:1];
  value = [fmfStatusCopy value];
  v15 = 0;
  if (value <= 1)
  {
    if (value)
    {
      v16 = 0;
      if (value == 1)
      {
        v16 = [MEMORY[0x277CD1F08] computeWithValue:3];
        v15 = 0;
      }

      goto LABEL_41;
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@FMF Device status is unknown, cannot send report", buf, 0xCu);
    }

    v31 = v27;
    goto LABEL_28;
  }

  if (value != 2)
  {
    v16 = 0;
    if (value != 3)
    {
LABEL_41:
      if (changingCopy || [v13 value] != 1 || objc_msgSend(v16, "value") != 4 || objc_msgSend(v15, "value"))
      {
LABEL_45:
        v62 = fmfStatusCopy;
        v63 = v13;
        v64 = [(HMDUserPresenceFeeder *)self _sendPresenceAuthStatusForUser:userCopy presenceAuthStatus:v13 presenceRegionStatus:v15 presenceComputeStatus:v16 reason:reasonCopy, v76];
        if (v16)
        {
          [(HMDUserPresenceFeeder *)self _updatePresenceComputeStatus:v16];
        }

        v65 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v69 = v68 = userCopy;
          *buf = 138544130;
          v79 = v69;
          v80 = 2112;
          v81 = v68;
          v82 = 2112;
          v83 = v63;
          v84 = 2112;
          v85 = v64;
          _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Sending status update of presence for user: %@, auth: %@ resulted in %@", buf, 0x2Au);

          userCopy = v68;
        }

        objc_autoreleasePoolPop(v65);
        v44 = v64 == 0;

        fmfStatusCopy = v62;
        v13 = v63;
        goto LABEL_50;
      }

      v71 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v75 = v74 = userCopy;
        *buf = 138543362;
        v79 = v75;
        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Presence region status is still unknown, bailing out as a later update will be sent", buf, 0xCu);

        userCopy = v74;
      }

      objc_autoreleasePoolPop(v71);
LABEL_29:
      v44 = 0;
      goto LABEL_50;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v20 = userCopy;
      *buf = 138543362;
      v79 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@There is an FMF device, but this device is not the FMF device", buf, 0xCu);

      userCopy = v20;
    }

    objc_autoreleasePoolPop(v17);
    if (changingCopy)
    {
      if ([v13 value] == 1)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy4;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v26 = v25 = userCopy;
          *buf = 138543362;
          v79 = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Presence-auth is changing to authorized", buf, 0xCu);

          userCopy = v25;
        }

        objc_autoreleasePoolPop(v22);
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CD1F08] computeWithValue:1];
      }

      v15 = 0;
      goto LABEL_45;
    }

    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy4;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v49 = v48 = userCopy;
      *buf = 138543362;
      v79 = v49;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@There is an FMF device, but this device is not the FMF device. Presence-auth is authorized, the FMF device will send the message.", buf, 0xCu);

      userCopy = v48;
    }

    v31 = v45;
LABEL_28:
    objc_autoreleasePoolPop(v31);
    goto LABEL_29;
  }

  v76 = fmfStatusCopy;
  if ([v13 value] != 1)
  {
    v50 = v13;
    v51 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v54;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@We do not have presence authorization for this user.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
    v55 = MEMORY[0x277CD1F08];
    v56 = 1;
    goto LABEL_37;
  }

  location = [(HMDUserPresenceFeeder *)self location];
  locationAuthorized = [location locationAuthorized];

  v34 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    HMLocationAuthorizationAsString();
    v39 = v38 = v13;
    *buf = 138543618;
    v79 = v37;
    v80 = 2112;
    v81 = v39;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Current Location Authorization : %@", buf, 0x16u);

    v13 = v38;
  }

  objc_autoreleasePoolPop(v34);
  if (locationAuthorized == 1)
  {
    v50 = v13;
    v16 = [MEMORY[0x277CD1F08] computeWithValue:4];
    v15 = [HMDUserPresenceRegion regionWithValue:[(HMDUserPresenceFeeder *)selfCopy6 presenceRegionStatus]];
LABEL_38:
    v57 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v61 = v60 = userCopy;
      *buf = 138543618;
      v79 = v61;
      v80 = 2112;
      v81 = v16;
      _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@This is the FMF device. Presence compute status : %@", buf, 0x16u);

      userCopy = v60;
    }

    objc_autoreleasePoolPop(v57);
    fmfStatusCopy = v76;
    v13 = v50;
    goto LABEL_41;
  }

  if (locationAuthorized)
  {
    v50 = v13;
    v55 = MEMORY[0x277CD1F08];
    v56 = 2;
LABEL_37:
    v16 = [v55 computeWithValue:{v56, v76}];
    v15 = 0;
    goto LABEL_38;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = selfCopy6;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v79 = v43;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like we are still waiting for location authorization status from Core Location. Till we determine that let's not send the presence update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  v44 = 0;
  fmfStatusCopy = v76;
LABEL_50:

  return v44;
}

- (void)_sendPresenceUpdateToResidentForUser:(id)user presenceAuthStatus:(id)status authChanging:(BOOL)changing reason:(id)reason fmfStatus:(id)fmfStatus
{
  changingCopy = changing;
  v30 = *MEMORY[0x277D85DE8];
  userCopy = user;
  statusCopy = status;
  reasonCopy = reason;
  fmfStatusCopy = fmfStatus;
  v16 = [(HMDUserPresenceFeeder *)self _updatePresenceToResidentForUser:userCopy presenceAuthStatus:statusCopy authChanging:changingCopy reason:reasonCopy fmfStatus:fmfStatusCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = HMFBooleanToString();
    v26 = 138543618;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Presence update to resident ended in success: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (!v16)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Resetting current feed session as the presence update to resident did not go through", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDUserPresenceFeeder *)v23 setCurrentFeedSession:0];
  }
}

- (void)_sendPresenceUpdateToResidentForUser:(id)user presenceAuthStatus:(id)status authChanging:(BOOL)changing reason:(id)reason
{
  v35 = *MEMORY[0x277D85DE8];
  userCopy = user;
  statusCopy = status;
  reasonCopy = reason;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v16;
    v31 = 2112;
    v32 = userCopy;
    v33 = 2112;
    v34 = statusCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Status update of presence for user: %@, auth: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (userCopy)
  {
    home = [(HMDHomePresenceBase *)selfCopy home];
    homeManager = [home homeManager];
    fmfHandler = [homeManager fmfHandler];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke;
    v24[3] = &unk_278674238;
    v24[4] = selfCopy;
    v25 = userCopy;
    v26 = statusCopy;
    changingCopy = changing;
    v27 = reasonCopy;
    [fmfHandler queryFMFStatusWithCompletion:v24];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot send the presence update as the user is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

void __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke_2;
  v7[3] = &unk_2786801A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@FMF Device Status is %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceUpdateToResidentForUser:*(a1 + 48) presenceAuthStatus:*(a1 + 56) authChanging:*(a1 + 72) reason:*(a1 + 64) fmfStatus:*(a1 + 40)];
}

- (void)_sendPresenceUpdateToResident:(id)resident
{
  residentCopy = resident;
  home = [(HMDHomePresenceBase *)self home];
  currentUser = [home currentUser];

  presenceAuthStatus = [currentUser presenceAuthStatus];
  [(HMDUserPresenceFeeder *)self _sendPresenceUpdateToResidentForUser:currentUser presenceAuthStatus:presenceAuthStatus authChanging:0 reason:residentCopy];
}

- (void)_sendPresenceReport:(unint64_t)report
{
  v4 = [HMDUserPresenceUpdateReason reasonWithValue:report];
  [(HMDUserPresenceFeeder *)self _sendPresenceUpdateToResident:v4];
}

- (void)residentChanged
{
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDUserPresenceFeeder_residentChanged__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __40__HMDUserPresenceFeeder_residentChanged__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Trying to send report after resident changed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceReport:8];
}

- (void)sendInitialPresenceUpdate
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePresenceBase *)self workQueue];

  if (workQueue)
  {
    workQueue2 = [(HMDHomePresenceBase *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDUserPresenceFeeder_sendInitialPresenceUpdate__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue2, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not send the initial presence as the presence feeder is not yet configured.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t __50__HMDUserPresenceFeeder_sendInitialPresenceUpdate__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 currentUser];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending the initial presence report for %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceReport:3];
}

- (void)_handlePrivilegeUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  userInfo = [updateCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kUserUUIDKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    workQueue = [(HMDHomePresenceBase *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__HMDUserPresenceFeeder__handlePrivilegeUpdate___block_invoke;
    v14[3] = &unk_27868A750;
    v14[4] = self;
    v14[5] = v8;
    dispatch_async(workQueue, v14);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@User privilege changed but the userInfo does not have the required key inside it.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __48__HMDUserPresenceFeeder__handlePrivilegeUpdate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 currentUser];
  v4 = [v3 uuid];
  v5 = HMFEqualObjects();

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User privilege changed: Updating presence map", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) _sendPresenceReport:12];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not going to update the presence for [%@] as it is not the current user in the home", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)handleResidentDeviceConfirmed:(id)confirmed
{
  home = [(HMDHomePresenceBase *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  if (primaryResidentDevice)
  {

    [(HMDUserPresenceFeeder *)self residentChanged];
  }
}

- (void)presenceAuthChanged
{
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUserPresenceFeeder_presenceAuthChanged__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __44__HMDUserPresenceFeeder_presenceAuthChanged__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Trying to send report after presence auth changed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceReport:9];
}

- (void)presenceAuthStatusChangedForUser:(id)user presenceAuthStatus:(id)status
{
  userCopy = user;
  statusCopy = status;
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDUserPresenceFeeder_presenceAuthStatusChangedForUser_presenceAuthStatus___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = userCopy;
  v13 = statusCopy;
  v9 = statusCopy;
  v10 = userCopy;
  dispatch_async(workQueue, block);
}

void __77__HMDUserPresenceFeeder_presenceAuthStatusChangedForUser_presenceAuthStatus___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [HMDUserPresenceUpdateReason reasonWithValue:9];
  [v1 _sendPresenceUpdateToResidentForUser:v2 presenceAuthStatus:v3 authChanging:1 reason:v4];
}

- (void)handleTimerFiredNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo hmf_stringForKey:@"HMD.BGTM.NK"];

  timerID = [(HMDUserPresenceFeeder *)self timerID];
  v7 = HMFEqualObjects();

  if (v7)
  {
    workQueue = [(HMDHomePresenceBase *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__HMDUserPresenceFeeder_handleTimerFiredNotification___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v5;
    dispatch_async(workQueue, v9);
  }
}

uint64_t __54__HMDUserPresenceFeeder_handleTimerFiredNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Timer fired with ID: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceReport:7];
}

- (void)_startRefreshTimer
{
  v28 = *MEMORY[0x277D85DE8];
  timerID = [(HMDUserPresenceFeeder *)self timerID];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v7;
    v24 = 2112;
    v25 = timerID;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting the refresh timer with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = +[HMDBackgroundTaskManager sharedManager];
  [v8 cancelTaskWithIdentifier:timerID onObserver:selfCopy];

  date = [MEMORY[0x277CBEAA8] date];
  dateComponents = [date dateComponents];

  minute = [dateComponents minute];
  [dateComponents setMinute:presenceFeedRefreshInMinutes + minute];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [currentCalendar dateFromComponents:dateComponents];

  v14 = +[HMDBackgroundTaskManager sharedManager];
  v21 = 0;
  v15 = [v14 scheduleTaskWithIdentifier:timerID fireDate:v13 onObserver:selfCopy selector:sel_handleTimerFiredNotification_ error:&v21];
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v20;
      v24 = 2112;
      v25 = timerID;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)setPresenceRegionStatus:(unint64_t)status
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDUserPresenceRegionStatusAsString(selfCopy->_presenceRegionStatus);
    v10 = HMDUserPresenceRegionStatusAsString(status);
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating presence status from %@ to %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  presenceRegionStatus = selfCopy->_presenceRegionStatus;
  if (presenceRegionStatus == status)
  {
    v12 = 3;
  }

  else
  {
    if (presenceRegionStatus)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    selfCopy->_presenceRegionStatus = status;
  }

  v13 = [HMDUserPresenceUpdateReason reasonWithValue:v12];
  [(HMDUserPresenceFeeder *)selfCopy _sendPresenceUpdateToResident:v13];
}

- (void)handleHomeDataLoadedNotification:(id)notification
{
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDUserPresenceFeeder_handleHomeDataLoadedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __58__HMDUserPresenceFeeder_handleHomeDataLoadedNotification___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received home data loaded notification, sending presence report", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceReport:3];
}

- (void)homeDataProcessed
{
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDUserPresenceFeeder_homeDataProcessed__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __42__HMDUserPresenceFeeder_homeDataProcessed__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Home data has been processed, trying to send presence report", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _sendPresenceReport:11];
}

- (void)fmfStatusUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDUserPresenceFeeder_fmfStatusUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __53__HMDUserPresenceFeeder_fmfStatusUpdateNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [HMDFMF fmfStatusWithDict:v2];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received FMF status update notification with %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _sendPresenceReport:4];
}

- (void)fetchCKAccountStatusAndSendPresenceReport
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserPresenceFeeder *)self isAccountStatusFetchInProgress])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@CK Account fetch status already in progress. Not calling it again.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDUserPresenceFeeder *)self setIsAccountStatusFetchInProgress:1];
    objc_initWeak(buf, self);
    v8 = getCKContainer();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HMDUserPresenceFeeder_fetchCKAccountStatusAndSendPresenceReport__block_invoke;
    v9[3] = &unk_278674210;
    objc_copyWeak(&v10, buf);
    [v8 accountStatusWithCompletionHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __66__HMDUserPresenceFeeder_fetchCKAccountStatusAndSendPresenceReport__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v21 = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@CK accountStatus completed with %@, %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v8)
  {
    [v8 setIsAccountStatusFetchInProgress:0];
    if (v5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v8;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@CK accountStatus failed with error: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else if ([v8 ckAccountStatus] != a2)
    {
      [v8 setCkAccountStatus:a2];
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "ckAccountStatus")}];
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating the CK account status to %@. Sending the presence report", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [v17 _sendPresenceReport:10];
    }
  }
}

- (void)accountAvailabilityChanged:(id)changed
{
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDUserPresenceFeeder_accountAvailabilityChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_registerForMessages
{
  v5.receiver = self;
  v5.super_class = HMDUserPresenceFeeder;
  [(HMDHomePresenceBase *)&v5 _registerForMessages];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_fmfStatusUpdateNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher
{
  configureCopy = configure;
  v21.receiver = self;
  v21.super_class = HMDUserPresenceFeeder;
  [(HMDHomePresenceBase *)&v21 configure:configureCopy messageDispatcher:dispatcher];
  v7 = MEMORY[0x277CCACA8];
  presenceMonitorMessageTargetUUID = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
  uUIDString = [presenceMonitorMessageTargetUUID UUIDString];
  v10 = [v7 stringWithFormat:@"presence.feeder/%@", uUIDString];
  timerID = self->_timerID;
  self->_timerID = v10;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  residentDeviceManager = [configureCopy residentDeviceManager];
  [defaultCenter addObserver:self selector:sel_handleResidentDeviceConfirmed_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" object:residentDeviceManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handlePrivilegeUpdate_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleDidArriveHomeNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:configureCopy];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_handleDidLeaveHomeNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:configureCopy];

  featuresDataSource = [configureCopy featuresDataSource];
  LODWORD(presenceMonitorMessageTargetUUID) = [featuresDataSource isHomeActivityStateFeatureEnabled];

  if (presenceMonitorMessageTargetUUID)
  {
    workQueue = [(HMDHomePresenceBase *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDUserPresenceFeeder_configure_messageDispatcher___block_invoke;
    block[3] = &unk_27868A750;
    block[4] = self;
    v20 = configureCopy;
    dispatch_async(workQueue, block);
  }
}

void *__53__HMDUserPresenceFeeder_configure_messageDispatcher___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) presenceRegionStatus];
  if (!result)
  {
    if ([*(a1 + 40) homeLocation] == 1)
    {
      v3 = 1;
    }

    else
    {
      if ([*(a1 + 40) homeLocation] != 2)
      {
        result = [*(a1 + 40) homeLocation];
        if (result != 3)
        {
          return result;
        }
      }

      v3 = 2;
    }

    v4 = *(a1 + 32);

    return [v4 setPresenceRegionStatus:v3];
  }

  return result;
}

- (HMDUserPresenceFeeder)initWithLocation:(id)location
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = HMDUserPresenceFeeder;
  v6 = [(HMDUserPresenceFeeder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_presenceRegionStatus = 0;
    v6->_ckAccountStatus = 0;
    v6->_isAccountStatusFetchInProgress = 0;
    objc_storeStrong(&v6->_location, location);
  }

  return v7;
}

- (HMDUserPresenceFeeder)init
{
  v3 = +[HMDLocation sharedManager];
  v4 = [(HMDUserPresenceFeeder *)self initWithLocation:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t51 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t51, &__block_literal_global_54162);
  }

  v3 = logCategory__hmf_once_v52;

  return v3;
}

void __36__HMDUserPresenceFeeder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v52;
  logCategory__hmf_once_v52 = v0;
}

@end