@interface HMDVideoStreamReconfigure
+ (id)logCategory;
- (HMDVideoStreamReconfigure)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate;
- (id)logIdentifier;
- (void)_addReconfigureEvent:(uint64_t)event;
- (void)_processDownlinkQuality;
- (void)downlinkQualityChanged:(id)changed;
- (void)setDowngradeDebouceTimer:(uint64_t)timer;
- (void)setUpgradeDebouceTimer:(uint64_t)timer;
- (void)timerDidFire:(id)fire;
- (void)updateReconfigurationMode:(BOOL)mode;
@end

@implementation HMDVideoStreamReconfigure

- (void)timerDidFire:(id)fire
{
  v25 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    if (self->_upgradeDebouceTimer != fireCopy)
    {
      downgradeDebouceTimer = self->_downgradeDebouceTimer;
LABEL_4:
      if (downgradeDebouceTimer == fireCopy)
      {
        v6 = objc_autoreleasePoolPush();
        selfCopy = self;
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v9;
          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Downgrade debouce timer has fired, calling network has deteriorated", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v6);
        [(HMDVideoStreamReconfigure *)selfCopy setDowngradeDebouceTimer:?];
        if (self)
        {
          dispatch_assert_queue_V2(selfCopy->_workQueue);
          selfCopy->_reconfigurationMode = 1;
          [(HMDVideoStreamReconfigure *)selfCopy _addReconfigureEvent:?];
          v10 = objc_autoreleasePoolPush();
          v11 = selfCopy;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v23 = 138543362;
            v24 = v13;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamReconfigureDidNetworkDeteriorate", &v23, 0xCu);
          }

          objc_autoreleasePoolPop(v10);
          WeakRetained = objc_loadWeakRetained(v11 + 8);
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained videoStreamReconfigureDidNetworkDeteriorate:v11];
          }

LABEL_20:

          goto LABEL_21;
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
    downgradeDebouceTimer = 0;
    if (fireCopy)
    {
      goto LABEL_4;
    }
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Upgrade debouce timer has fired, calling network has improved", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDVideoStreamReconfigure *)selfCopy2 setUpgradeDebouceTimer:?];
  if (self)
  {
    dispatch_assert_queue_V2(selfCopy2->_workQueue);
    selfCopy2->_reconfigurationMode = 1;
    [(HMDVideoStreamReconfigure *)selfCopy2 _addReconfigureEvent:?];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy2;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamReconfigureDidNetworkImprove", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    WeakRetained = objc_loadWeakRetained(v20 + 8);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained videoStreamReconfigureDidNetworkImprove:v20];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)setUpgradeDebouceTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 32), a2);
  }
}

- (void)setDowngradeDebouceTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 40), a2);
  }
}

- (void)_addReconfigureEvent:(uint64_t)event
{
  dispatch_assert_queue_V2(*(event + 48));
  if ([*(event + 24) count] == 10)
  {
    [*(event + 24) removeObjectAtIndex:0];
  }

  v4 = [[HMDVideoStreamReconfigureEvent alloc] initWithEventType:a2];
  [*(event + 24) addObject:v4];
}

- (void)downlinkQualityChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v5 = objc_msgSend_copy(changedCopy);
    objc_storeStrong(&self->_downlinkQualityInfo, v5);

    if (self->_reconfigurationMode)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not processing the downlink quality change yet, since the stream is in reconfiguration mode", &v10, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      [(HMDVideoStreamReconfigure *)self _processDownlinkQuality];
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }
}

- (void)_processDownlinkQuality
{
  v90 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(*(self + 48));
  v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
  v3 = *(self + 16);
  dispatch_assert_queue_V2(*(self + 48));
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v83 = v7;
    v84 = 2112;
    v85 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Downlink quality changed with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v81 = [v3 hmf_numberForKey:*MEMORY[0x277CE57C0]];
  v8 = [v3 hmf_numberForKey:*MEMORY[0x277CE57B8]];
  v9 = [v3 hmf_BOOLForKey:*MEMORY[0x277CE57A8]];
  v10 = [v3 hmf_BOOLForKey:*MEMORY[0x277CE57B0]];
  if (*(selfCopy + 4) && (v9 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Upgrade debounce timer is set, but not operating at maximum anymore, resetting the timer", buf, 0xCu);

      v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
    }

    objc_autoreleasePoolPop(v11);
    objc_storeStrong(v12 + 4, 0);
  }

  if (!((*(selfCopy + 5) == 0) | v10 & 1))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Downgrade debounce timer is set, but not operating at minimum anymore, resetting the timer", buf, 0xCu);

      v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
    }

    objc_autoreleasePoolPop(v15);
    objc_storeStrong(v16 + 5, 0);
  }

  if (v10)
  {
    v19 = [v81 isEqualToNumber:v8];
    v20 = *(selfCopy + 5);
    if (v19)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
      if (!v20)
      {
        if (v24)
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v83 = v41;
          v84 = 2048;
          v85 = videoAttributesDowngradeDebouceTimer;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Starting downgrade debouce timer with interval %llu seconds", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v42 = objc_alloc(MEMORY[0x277D0F920]);
        v43 = [v42 initWithTimeInterval:0 options:videoAttributesDowngradeDebouceTimer];
        objc_storeStrong(v22 + 5, v43);

        [v22[5] setDelegate:v22];
        v44 = v22[5];
        v45 = v22[6];
        [v44 setDelegateQueue:v45];

        [v22[5] resume];
        goto LABEL_51;
      }

      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v83 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Downgrade debounce timer is already scheduled", buf, 0xCu);
      }

      v26 = v21;
      goto LABEL_25;
    }

    if (!v20)
    {
      goto LABEL_51;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Downgrade debounce timer is set, but optimal and operating bitrates arent matching, resetting the timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v37 = 40;
    goto LABEL_34;
  }

  if (v9)
  {
    v27 = [v81 isEqualToNumber:v8];
    v28 = *(selfCopy + 4);
    if (v27)
    {
      if (!v28)
      {
        v80 = v8;
        v46 = *(selfCopy + 9);
        dispatch_assert_queue_V2(*(selfCopy + 6));
        if ([*(selfCopy + 3) count] >= 4)
        {
          v47 = *(selfCopy + 3);
          v48 = [v47 objectAtIndex:{objc_msgSend(v47, "count") - 1}];

          v49 = *(selfCopy + 3);
          v50 = [v49 objectAtIndex:{objc_msgSend(v49, "count") - 2}];

          v51 = *(selfCopy + 3);
          v52 = [v51 objectAtIndex:{objc_msgSend(v51, "count") - 3}];

          v53 = objc_autoreleasePoolPush();
          v54 = selfCopy;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v57 = v56 = v50;
            *buf = 138544130;
            v83 = v57;
            v84 = 2112;
            v85 = v48;
            v86 = 2112;
            v87 = v56;
            v88 = 2112;
            v89 = v52;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@reconfigure_1: %@, reconfigure_2: %@, reconfigure_3: %@", buf, 0x2Au);

            v50 = v56;
          }

          objc_autoreleasePoolPop(v53);
          v8 = v80;
          if ([v48 eventType] == 2 && objc_msgSend(v50, "eventType") == 1 && objc_msgSend(v52, "eventType") == 2 && (objc_msgSend(v52, "timestamp"), v58 = v50, v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "timeIntervalSinceNow"), v61 = fabs(v60), v59, v50 = v58, v61 < 120.0))
          {
            v72 = objc_autoreleasePoolPush();
            v73 = v54;
            v74 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
            {
              v75 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v75;
              v84 = 2048;
              v85 = *&v61;
              _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Downgrade-Upgrade-Downgrade has happened within %lf seconds", buf, 0x16u);

              v50 = v58;
            }

            objc_autoreleasePoolPop(v72);
            v76 = objc_autoreleasePoolPush();
            v77 = v73;
            v78 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
            {
              v79 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v79;
              v84 = 2048;
              v85 = 0x405E000000000000;
              _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_INFO, "%{public}@A Flip flop has been detected, so upgrade is going to be backed off by %lf seconds", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v76);
            v46 = 120.0;
            v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
            v8 = v80;
          }

          else
          {

            v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
          }
        }

        v62 = objc_autoreleasePoolPush();
        v63 = selfCopy;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v83 = v65;
          v84 = 2048;
          v85 = *&v46;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Starting upgrade debouce timer with interval %lf seconds", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        v66 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v46];
        objc_storeStrong(v63 + 4, v66);

        [v63[4] setDelegate:v63];
        v67 = v63[4];
        v68 = v63[6];
        [v67 setDelegateQueue:v68];

        [v63[4] resume];
        v69 = videoAttributesUpgradeDebouceTimer;
        if (*(v63 + 9) + *(v63 + 9) < videoAttributesUpgradeDebouceTimer)
        {
          v69 = *(v63 + 9) + *(v63 + 9);
        }

        *(v63 + 9) = v69;
        goto LABEL_51;
      }

      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v83 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Upgrade debounce timer is already scheduled", buf, 0xCu);
      }

      v26 = v29;
LABEL_25:
      objc_autoreleasePoolPop(v26);
      goto LABEL_51;
    }

    if (!v28)
    {
      goto LABEL_51;
    }

    v38 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Upgrade debounce timer is set, but optimal and operating bitrates arent matching, resetting the timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v37 = 32;
LABEL_34:
    objc_storeStrong(&v34[v37], 0);
  }

LABEL_51:

  v70 = v2[177];
  v71 = *&selfCopy[v70];
  *&selfCopy[v70] = 0;
}

- (void)updateReconfigurationMode:(BOOL)mode
{
  selfCopy = self;
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = self->_workQueue;
  }

  dispatch_assert_queue_V2(&self->super.super);
  v5 = objc_autoreleasePoolPush();
  v6 = selfCopy;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating reconfiguration mode from %@ to %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    v6->_reconfigurationMode = mode;
    if (v6->_downlinkQualityInfo)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v6;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Downlink quality info is present, processing it", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDVideoStreamReconfigure *)v12 _processDownlinkQuality];
    }
  }
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_sessionID;
  }

  return [(HMFObject *)self description];
}

- (HMDVideoStreamReconfigure)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate
{
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = HMDVideoStreamReconfigure;
  v12 = [(HMDVideoStreamReconfigure *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionID, d);
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    reconfigureEvents = v13->_reconfigureEvents;
    v13->_reconfigureEvents = v14;

    v13->_upgradeInterval = 2.0;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_15216 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_15216, &__block_literal_global_15217);
  }

  v3 = logCategory__hmf_once_v1_15218;

  return v3;
}

void __40__HMDVideoStreamReconfigure_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_15218;
  logCategory__hmf_once_v1_15218 = v0;
}

@end