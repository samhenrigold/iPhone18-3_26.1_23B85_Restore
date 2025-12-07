@interface HMBPrivateCloudZoneRebuilder
+ (id)logCategory;
- (BOOL)isZoneRebuildInProgress;
- (HMBCloudZone)cloudZone;
- (HMBPrivateCloudZoneRebuilder)initWithCloudZone:(id)zone;
- (id)logIdentifier;
- (id)zoneStartUp;
- (void)handleIdentityLost;
- (void)handleZoneChanged;
- (void)rebuild;
- (void)timerDidFire:(id)fire;
@end

@implementation HMBPrivateCloudZoneRebuilder

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (id)logIdentifier
{
  cloudZone = [(HMBPrivateCloudZoneRebuilder *)self cloudZone];
  zoneID = [cloudZone zoneID];
  name = [zoneID name];

  return name;
}

- (void)timerDidFire:(id)fire
{
  v23 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  uploadMonitorWatchdogTimer = [(HMBPrivateCloudZoneRebuilder *)self uploadMonitorWatchdogTimer];

  if (uploadMonitorWatchdogTimer != fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *v20 = 138543362;
      *&v20[4] = v9;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly got a watchdog fire event from an unexpected timer.", v20, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v6);
    goto LABEL_10;
  }

  os_unfair_lock_lock_with_options();
  rebuilderStatus = [(HMBPrivateCloudZoneRebuilder *)self rebuilderStatus];
  rebuildState = [rebuilderStatus rebuildState];

  [(HMBPrivateCloudZoneRebuilder *)self setUploadMonitorWatchdogTimer:0];
  os_unfair_lock_unlock(&self->_propertyLock);
  if (rebuildState != 5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [HMBCloudZoneRebuilderStatus rebuilderStateString:rebuildState];
      *v20 = 138543618;
      *&v20[4] = v18;
      v21 = 2112;
      v22 = v19;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly got a watchdog fire event in state %@", v20, 0x16u);
    }

    goto LABEL_9;
  }

  v17 = __transitionToState(self, 2, @"Watchdog fired while monitoring the upload.", v12, v13, v14, v15, v16, *v20);
LABEL_10:
}

- (void)handleZoneChanged
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  rebuilderStatus = [(HMBPrivateCloudZoneRebuilder *)self rebuilderStatus];
  rebuildState = [rebuilderStatus rebuildState];

  os_unfair_lock_unlock(&self->_propertyLock);
  if ((rebuildState & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    uploadMonitorWatchdogTimer = [(HMBPrivateCloudZoneRebuilder *)self uploadMonitorWatchdogTimer];
    [uploadMonitorWatchdogTimer setDelegate:0];

    os_unfair_lock_lock_with_options();
    [(HMBPrivateCloudZoneRebuilder *)self setUploadMonitorWatchdogTimer:0];
    os_unfair_lock_unlock(&self->_propertyLock);
    v6 = __fetchSentinelModel(self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HMBPrivateCloudZoneRebuilder_handleZoneChanged__block_invoke;
    v15[3] = &unk_2786E0BF8;
    v15[4] = self;
    v15[5] = rebuildState;
    v7 = [v6 addFailureBlock:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__HMBPrivateCloudZoneRebuilder_handleZoneChanged__block_invoke_20;
    v14[3] = &unk_2786E0C20;
    v14[4] = self;
    v14[5] = rebuildState;
    v8 = [v6 addSuccessBlock:v14];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [HMBCloudZoneRebuilderStatus rebuilderStateString:rebuildState];
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly got a CKNotification when in state %@ (ignoring)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __49__HMBPrivateCloudZoneRebuilder_handleZoneChanged__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isHMFError] && objc_msgSend(v3, "code") == 2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v7;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch succeeded, but no record returned.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 40) == 1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v16;
        v17 = "%{public}@Insufficient to transition out of Lost Key state.";
LABEL_13:
        _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v27 = __transitionToState(*(a1 + 32), 2, @"Failed to find sentinel model.", v8, v9, v10, v11, v12, v29);
LABEL_17:
    v28 = v27;
    goto LABEL_18;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v21;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@received notification, but failed to fetch model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (*(a1 + 40) != 1)
  {
    v27 = __transitionToState(*(a1 + 32), 2, @"Failed to monitor sentinel due to error: %@", v22, v23, v24, v25, v26, v3);
    goto LABEL_17;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v16;
    v17 = "%{public}@Will not transition out of Lost Key state.";
    goto LABEL_13;
  }

LABEL_14:

  objc_autoreleasePoolPop(v13);
LABEL_18:
}

void __49__HMBPrivateCloudZoneRebuilder_handleZoneChanged__block_invoke_20(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v7;
    v51 = 2112;
    v52 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully fetched: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [v3 hasCompleted];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v13;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Sentinel record indicates that zone is completely rebuilt.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setLastRebuildUUID:0];
    v19 = *(a1 + 32);
    v20 = @"Sentinel has been marked as complete.";
    v21 = 7;
    goto LABEL_7;
  }

  v23 = [*(a1 + 32) lastRebuildUUID];
  if (!v23 || (v24 = v23, [v3 uniqueToken], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "lastRebuildUUID"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqual:", v26), v26, v25, v24, !v27))
  {
    v33 = [v3 uniqueToken];
    [*(a1 + 32) setLastRebuildUUID:v33];

    if (*(a1 + 40) != 1)
    {
      v39 = *(a1 + 32);
      v40 = [v39 lastRebuildUUID];
      v48 = [v3 uniqueToken];
      v46 = __transitionToState(v39, 5, @"Change observed in sentinel %@ -> %@", v41, v42, v43, v44, v45, v40);

      goto LABEL_20;
    }

    v28 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [*(a1 + 32) lastRebuildUUID];
      v38 = [v3 uniqueToken];
      *buf = 138543874;
      v50 = v36;
      v51 = 2112;
      v52 = v37;
      v53 = 2112;
      v54 = v38;
      _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Sentinel record unique token changed %@ -> %@", buf, 0x20u);
    }

    goto LABEL_18;
  }

  if (*(a1 + 40) == 1)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v3 uniqueToken];
      *buf = 138543618;
      v50 = v31;
      v51 = 2112;
      v52 = v32;
      _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Sentinel record unique token did not change from %@", buf, 0x16u);
    }

LABEL_18:
    objc_autoreleasePoolPop(v28);
    goto LABEL_20;
  }

  v19 = *(a1 + 32);
  v20 = @"No change observed in sentinel.";
  v21 = 2;
LABEL_7:
  v22 = __transitionToState(v19, v21, v20, v14, v15, v16, v17, v18, v47);
LABEL_20:
}

- (BOOL)isZoneRebuildInProgress
{
  rebuildCompleteFuture = [(HMBPrivateCloudZoneRebuilder *)self rebuildCompleteFuture];
  isFinished = [rebuildCompleteFuture isFinished];

  return isFinished ^ 1;
}

- (void)rebuild
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  rebuilderStatus = [(HMBPrivateCloudZoneRebuilder *)self rebuilderStatus];
  rebuildState = [rebuilderStatus rebuildState];

  os_unfair_lock_unlock(&self->_propertyLock);
  if (rebuildState <= 7 && ((1 << rebuildState) & 0x83) != 0)
  {
    v10 = __transitionToState(self, 4, @"Attempting to acquire lock on zone.", v5, v6, v7, v8, v9, *v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [HMBCloudZoneRebuilderStatus rebuilderStateString:rebuildState];
      *v16 = 138543618;
      *&v16[4] = v14;
      v17 = 2112;
      v18 = v15;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Received a request to begin rebuild but we are already in: %@.", v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleIdentityLost
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  rebuilderStatus = [(HMBPrivateCloudZoneRebuilder *)self rebuilderStatus];
  rebuildState = [rebuilderStatus rebuildState];

  os_unfair_lock_unlock(&self->_propertyLock);
  if (rebuildState <= 7 && ((1 << rebuildState) & 0x83) != 0)
  {
    v10 = __transitionToState(self, 1, @"Received notification that zone has lost keys.", v5, v6, v7, v8, v9, *v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [HMBCloudZoneRebuilderStatus rebuilderStateString:rebuildState];
      *v16 = 138543618;
      *&v16[4] = v14;
      v17 = 2112;
      v18 = v15;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Not transitioning to Lost Key state, already in an active rebuild state (%@).", v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (id)zoneStartUp
{
  cloudZone = [(HMBPrivateCloudZoneRebuilder *)self cloudZone];
  localZone = [cloudZone localZone];

  if (localZone)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D2C900];
    v14 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v15, &location);
    operationScheduler = [cloudZone operationScheduler];
    v12 = [v10 lazyFutureWithBlock:&v14 scheduler:operationScheduler];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = __transitionToState(self, 7, @"Not starting up as a mirror. Ignoring rebuild steps.", v5, v6, v7, v8, v9, v14);
  }

  return v12;
}

void __43__HMBPrivateCloudZoneRebuilder_zoneStartUp__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = v3;
    v8 = objc_autoreleasePoolPush();
    v9 = v6;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting up zone rebuilder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 cloudZone];
    v13 = [v12 localZone];
    v14 = +[HMBCloudZoneRebuilderModel sentinelUUID];
    v37 = 0;
    v15 = [v13 fetchModelWithModelID:v14 ofType:objc_opt_class() error:&v37];
    v16 = v37;

    if (v15)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v9;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_INFO, "%{public}@Found existing sentinel model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = __processSentinelModel(v18, v15);
      v22 = [v7 completionHandlerAdapter];
      v23 = [v21 addCompletionBlock:v22];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277D2C918]);
      __pushSentinelModel(v9, 1, v21);
      v28 = [v21 future];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____startUp_block_invoke;
      v39 = &unk_2786E0DB0;
      v29 = v9;
      v40 = v29;
      v30 = v7;
      v41 = v30;
      v31 = [v28 addSuccessBlock:buf];

      v32 = [v21 future];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = ____startUp_block_invoke_248;
      v34[3] = &unk_2786E1948;
      v35 = v29;
      v36 = v30;
      v33 = [v32 addFailureBlock:v34];

      v22 = v40;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Lost self while starting up rebuild machine.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v3 finishWithError:v27];
  }
}

- (HMBPrivateCloudZoneRebuilder)initWithCloudZone:(id)zone
{
  zoneCopy = zone;
  v12.receiver = self;
  v12.super_class = HMBPrivateCloudZoneRebuilder;
  v5 = [(HMBPrivateCloudZoneRebuilder *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cloudZone, zoneCopy);
    v7 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:0 message:@"Rebuilder has not been started up yet."];
    rebuilderStatus = v6->_rebuilderStatus;
    v6->_rebuilderStatus = v7;

    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    rebuildCompleteFuture = v6->_rebuildCompleteFuture;
    v6->_rebuildCompleteFuture = v9;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t71 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t71, &__block_literal_global_2716);
  }

  v3 = logCategory__hmf_once_v72;

  return v3;
}

uint64_t __43__HMBPrivateCloudZoneRebuilder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v72;
  logCategory__hmf_once_v72 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end