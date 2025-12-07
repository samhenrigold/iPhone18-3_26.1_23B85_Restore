@interface HMDHH2FrameworkSwitch
+ (id)errorFromHMDCKAccountStatus:(int64_t)status;
+ (id)logCategory;
+ (void)removeHH2EnablementPreferenceKey;
+ (void)setHH2EnablementPreferenceKey:(BOOL)key;
+ (void)setHH2SettingsMigrationKey:(BOOL)key;
+ (void)switchBackToHH1AndDoNotLaunchDueToPrimaryAccountRemoval;
- (BOOL)_areWeRunningInRightEnvironment:(BOOL)environment;
- (BOOL)checkExistenceOfHH2SentinelZone;
- (BOOL)switchToSetupMode:(unint64_t)mode;
- (BOOL)waitForHH2SentinelZoneToBeCreated:(double)created error:(id *)error;
- (BOOL)waitForHH2SentinelZoneToBeFetchedFromCloud;
- (HMDHH2FrameworkSwitch)initWithAutoSwitch:(BOOL)switch homeManager:(id)manager dataSource:(id)source callBeforeFrameworkSwitch:(id)frameworkSwitch;
- (HMDHomeManager)homeManager;
- (void)_clearSetupModeIfNeeded;
- (void)_makeSureWeAreRunningInRightEnvironment:(BOOL)environment;
- (void)cloudDatabase:(id)database didCreateZoneWithID:(id)d;
- (void)createHH2CloudDatabaseAndStartSyncing;
- (void)createHH2SentinelZoneWithCompletionHandler:(id)handler;
- (void)forceFetchSentinelZone;
- (void)handleTapToSetupFinished:(id)finished;
- (void)makeSureWeAreRunningInRightEnvironment:(BOOL)environment;
- (void)performInitialSync:(id)sync;
- (void)performInitialSyncAndSwitchFrameworkIfRequired;
- (void)relaunchHomedAfterSettingEnvironmentTo:(BOOL)to blockToExecuteBeforeReLaunch:(id)launch;
- (void)removeHH2SentinelZoneWithCompletion:(id)completion;
- (void)switchBackToHH1AndRelaunch;
- (void)switchBackToHH1AndRelaunchDueToHH2MigrationFailed;
- (void)switchToHH2AfterPerformingHH2PreRebootTask;
- (void)switchToHH2AndRelaunchHomed;
- (void)switchToHH2AndRelaunchHomedToPerformHH2Migration;
- (void)waitForCloudKitAccountToBeAvailable;
- (void)waitForHH2SentinelZoneToBeRemoved;
@end

@implementation HMDHH2FrameworkSwitch

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)handleTapToSetupFinished:(id)finished
{
  finishedCopy = finished;
  workQueue = [(HMDHH2FrameworkSwitch *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDHH2FrameworkSwitch_handleTapToSetupFinished___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = finishedCopy;
  selfCopy = self;
  v6 = finishedCopy;
  dispatch_async(workQueue, v7);
}

void __50__HMDHH2FrameworkSwitch_handleTapToSetupFinished___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"TTSU.error"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Got TTSU finished notification with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Ignoring TTSU notification as either this is on a non-tvOS device or TTSU finished with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)waitForCloudKitAccountToBeAvailable
{
  workQueue = [(HMDHH2FrameworkSwitch *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Wait for the CloudKit account to be available.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = [v7 cloudDatabaseToDetectHH2Zone];
  v9 = [v8 waitForAccountAvailability];

  objc_initWeak(buf, *v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke_135;
  v11[3] = &unk_27867E1D8;
  v11[4] = *v6;
  objc_copyWeak(&v12, buf);
  v10 = [v9 addCompletionBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Looks like CloudKit account is now available. Performing cloud sync. [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (v6 || !WeakRetained)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v12;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v17;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error occurred : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    [WeakRetained _fastBootToHH2IfRequiredForTTSU];
    v13 = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke_136;
    block[3] = &unk_27868A728;
    block[4] = v12;
    dispatch_async(v13, block);
  }
}

- (BOOL)switchToSetupMode:(unint64_t)mode
{
  v26 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHH2FrameworkSwitch *)self dataSource];
  setupMode = [dataSource setupMode];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v10;
    v22 = 2048;
    modeCopy = mode;
    v24 = 2048;
    v25 = setupMode;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Switching to setup mode: %lu, current mode: %lu", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (setupMode == mode || mode == 2 && !setupMode)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Already in requested setup mode", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    return 1;
  }

  else
  {
    LOBYTE(v20) = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HHTTSUMode", @"com.apple.homed", &v20);
    if (v20)
    {
      v17 = AppIntegerValue == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (mode != 2 || (v18 & 1) == 0)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
      CFPreferencesSetAppValue(@"HHTTSUMode", v19, @"com.apple.homed");
    }

    [(HMDHH2FrameworkSwitch *)selfCopy relaunchHomedAfterSettingEnvironmentTo:mode == 1 blockToExecuteBeforeReLaunch:0];
    return 0;
  }
}

- (void)switchToHH2AfterPerformingHH2PreRebootTask
{
  blockToBeCalledBeforeSwitchingFramework = [(HMDHH2FrameworkSwitch *)self blockToBeCalledBeforeSwitchingFramework];
  [(HMDHH2FrameworkSwitch *)self relaunchHomedAfterSettingEnvironmentTo:1 blockToExecuteBeforeReLaunch:blockToBeCalledBeforeSwitchingFramework];
}

- (void)switchToHH2AndRelaunchHomedToPerformHH2Migration
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Switching to HH2 framework and relaunching homed in order to perform HH2 migration", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHH2FrameworkSwitch *)selfCopy switchToHH2AfterPerformingHH2PreRebootTask];
}

- (void)switchToHH2AndRelaunchHomed
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Switching to HH2 framework and relaunching homed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHH2FrameworkSwitch *)selfCopy relaunchHomedAfterSettingEnvironmentTo:1 blockToExecuteBeforeReLaunch:0];
}

- (void)switchBackToHH1AndRelaunch
{
  [objc_opt_class() setHH2SettingsMigrationKey:0];

  [(HMDHH2FrameworkSwitch *)self relaunchHomedAfterSettingEnvironmentTo:0 blockToExecuteBeforeReLaunch:0];
}

- (void)switchBackToHH1AndRelaunchDueToHH2MigrationFailed
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Switching back to HK 1.0 framework as migration to HH2 failed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHH2FrameworkSwitch *)selfCopy switchBackToHH1AndRelaunch];
}

- (void)relaunchHomedAfterSettingEnvironmentTo:(BOOL)to blockToExecuteBeforeReLaunch:(id)launch
{
  toCopy = to;
  v30 = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = v10;
    v12 = @"HH1";
    if (toCopy)
    {
      v12 = @"HH2";
    }

    *buf = 138543618;
    v27 = v10;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Going to relaunch homed in : [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (launchCopy)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = _Block_copy(launchCopy);
      *buf = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Calling block : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    dataSource = dispatch_get_global_queue(0, 0);
    v19 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:dataSource];
    v20 = launchCopy[2](launchCopy);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __93__HMDHH2FrameworkSwitch_relaunchHomedAfterSettingEnvironmentTo_blockToExecuteBeforeReLaunch___block_invoke;
    v24[3] = &unk_27867E188;
    v24[4] = v14;
    v25 = toCopy;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __93__HMDHH2FrameworkSwitch_relaunchHomedAfterSettingEnvironmentTo_blockToExecuteBeforeReLaunch___block_invoke_2;
    v22[3] = &unk_27867E1B0;
    v22[4] = v14;
    v23 = toCopy;
    v21 = [v20 inContext:v19 then:v24 orRecover:v22];
  }

  else
  {
    dataSource = [(HMDHH2FrameworkSwitch *)selfCopy dataSource];
    [dataSource initiateDaemonRelaunchToHH2:toCopy];
  }
}

uint64_t __93__HMDHH2FrameworkSwitch_relaunchHomedAfterSettingEnvironmentTo_blockToExecuteBeforeReLaunch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 initiateDaemonRelaunchToHH2:*(a1 + 40)];

  return 1;
}

uint64_t __93__HMDHH2FrameworkSwitch_relaunchHomedAfterSettingEnvironmentTo_blockToExecuteBeforeReLaunch___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 initiateDaemonRelaunchToHH2:*(a1 + 40)];

  return 1;
}

- (void)_clearSetupModeIfNeeded
{
  workQueue = [(HMDHH2FrameworkSwitch *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
}

- (void)removeHH2SentinelZoneWithCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Request to remove HH2 sentinel zone received", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  cloudDatabaseToDetectHH2Zone = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
  v10 = cloudDatabaseToDetectHH2Zone == 0;

  if (v10)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cloud database is nil. Cannot perform initial sync. (c)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v13);
    }
  }

  else
  {
    cloudDatabaseToDetectHH2Zone2 = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
    privateZoneIDs = [cloudDatabaseToDetectHH2Zone2 privateZoneIDs];
    v13 = [privateZoneIDs na_firstObjectPassingTest:&__block_literal_global_189939];

    if (v13)
    {
      cloudDatabaseToDetectHH2Zone3 = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
      v15 = [cloudDatabaseToDetectHH2Zone3 removePrivateZoneWithID:v13];

      objc_initWeak(buf, selfCopy);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_115;
      v30[3] = &unk_27867E0F0;
      objc_copyWeak(&v32, buf);
      v16 = completionCopy;
      v31 = v16;
      v17 = [v15 addSuccessBlock:v30];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_119;
      v27[3] = &unk_278686D60;
      objc_copyWeak(&v29, buf);
      v28 = v16;
      v18 = [v15 addFailureBlock:v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@HH2 Sentinel zone does not exist", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v15);
      }
    }
  }
}

void __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_115(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    _HMFPreconditionFailure();
  }

  v5 = WeakRetained;
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HH2 sentinel zone removed successfully.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [v7 waitForCloudKitAccountToBeAvailable];
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 0);
  }
}

void __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_119(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    _HMFPreconditionFailure();
  }

  v5 = WeakRetained;
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to delete HH2 sentinel zone from cloud database.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [v7 waitForCloudKitAccountToBeAvailable];
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

uint64_t __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zoneID];
  v3 = [v2 zoneName];
  v4 = [v3 isEqualToString:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71"];

  return v4;
}

- (void)waitForHH2SentinelZoneToBeRemoved
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeRemoved__block_invoke;
  v5[3] = &unk_27868A1D8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(HMDHH2FrameworkSwitch *)self removeHH2SentinelZoneWithCompletion:v5];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __58__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeRemoved__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@HH2 sentinel zone removal status : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_areWeRunningInRightEnvironment:(BOOL)environment
{
  v32 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHH2FrameworkSwitch *)self dataSource];
  if (!dataSource)
  {
    goto LABEL_13;
  }

  v6 = environment || [(HMDHH2FrameworkSwitch *)self checkExistenceOfHH2SentinelZone];
  isHH2Enabled = [dataSource isHH2Enabled];
  setupMode = [dataSource setupMode];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    v14 = HMFBooleanToString();
    v23 = v6;
    if (setupMode > 2)
    {
      v15 = @"Unexpected mode read";
    }

    else
    {
      v15 = off_278676960[setupMode];
    }

    v16 = v15;
    *buf = 138544130;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to check our current environment: [doesSentinelZoneExist = %@] [current User HK Preference = %@] [setupMode = %@]", buf, 0x2Au);

    v6 = v23;
  }

  objc_autoreleasePoolPop(v9);
  if (((setupMode == 1) & isHH2Enabled) == 0 && (((setupMode != 1) & ~v6) != 0 || v6 != isHH2Enabled))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like we are in wrong world. Let's make things right.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v17 = 0;
  }

  else
  {
LABEL_13:
    v17 = 1;
  }

  return v17;
}

- (void)_makeSureWeAreRunningInRightEnvironment:(BOOL)environment
{
  environmentCopy = environment;
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHH2FrameworkSwitch *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDHH2FrameworkSwitch *)self autoFrameworkSwitch])
  {
    homeManager = [(HMDHH2FrameworkSwitch *)self homeManager];
    if (![(HMDHH2FrameworkSwitch *)self _areWeRunningInRightEnvironment:environmentCopy])
    {
      if (environmentCopy || [(HMDHH2FrameworkSwitch *)self checkExistenceOfHH2SentinelZone])
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v19 = 138543362;
          v20 = v10;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sentinel zone exist which mean we should be running HH2 world. Relaunching ourselves in HH2 world", &v19, 0xCu);
        }

        objc_autoreleasePoolPop(v7);
        logger = selfCopy->_logger;
        if (os_signpost_enabled(logger))
        {
          LOWORD(v19) = 0;
          _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReadyToSwitchToHH2", "", &v19, 2u);
        }

        currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
        [currentAccessorySetupMetricDispatcher markSetupEndStage:9 error:0];

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      blockToBeCalledBeforeSwitchingFramework = [(HMDHH2FrameworkSwitch *)self blockToBeCalledBeforeSwitchingFramework];
      [(HMDHH2FrameworkSwitch *)self relaunchHomedAfterSettingEnvironmentTo:v13 blockToExecuteBeforeReLaunch:blockToBeCalledBeforeSwitchingFramework];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Not enforcing HK environment as auto-switch is OFF", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)makeSureWeAreRunningInRightEnvironment:(BOOL)environment
{
  workQueue = [(HMDHH2FrameworkSwitch *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HMDHH2FrameworkSwitch_makeSureWeAreRunningInRightEnvironment___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  environmentCopy = environment;
  dispatch_async(workQueue, v6);
}

- (void)cloudDatabase:(id)database didCreateZoneWithID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  dCopy = d;
  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];
  v10 = [zoneName isEqualToString:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71"];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@created / synced HH2 sentinel zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    workQueue = [(HMDHH2FrameworkSwitch *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDHH2FrameworkSwitch_cloudDatabase_didCreateZoneWithID___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }
}

void __59__HMDHH2FrameworkSwitch_cloudDatabase_didCreateZoneWithID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearSetupModeIfNeeded];
  [*(a1 + 32) _makeSureWeAreRunningInRightEnvironment:1];
  v2 = *(a1 + 32);

  logAndPostNotification(@"HMDHomeManagerHH2SentinelZonePresent", v2, 0);
}

- (BOOL)checkExistenceOfHH2SentinelZone
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cloudDatabaseToDetectHH2Zone = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
  privateZoneIDs = [cloudDatabaseToDetectHH2Zone privateZoneIDs];

  v6 = [privateZoneIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(privateZoneIDs);
        }

        zoneID = [*(*(&v15 + 1) + 8 * i) zoneID];
        zoneName = [zoneID zoneName];
        v12 = [zoneName isEqualToString:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71"];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [privateZoneIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v3);
  return v13;
}

- (BOOL)waitForHH2SentinelZoneToBeCreated:(double)created error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Going to create sentinel Zone", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__189958;
  v42 = __Block_byref_object_dispose__189959;
  v43 = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __65__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeCreated_error___block_invoke;
  v32 = &unk_27867E140;
  v12 = v11;
  v33 = v12;
  p_buf = &buf;
  [(HMDHH2FrameworkSwitch *)selfCopy createHH2SentinelZoneWithCompletionHandler:&v29];
  v13 = dispatch_time(0, created);
  if (dispatch_group_wait(v12, v13))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v35 = 138543362;
      v36 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Timed out while creating the HH2 sentinel zone.", v35, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{8, v29, v30, v31, v32}];
LABEL_13:
      v25 = 0;
      *error = v18;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v19 = *(*(&buf + 1) + 40) == 0;
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  if (!v19)
  {
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(*(&buf + 1) + 40);
      *v35 = 138543618;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to create Sentinel zone due to %@", v35, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    if (error)
    {
      v18 = *(*(&buf + 1) + 40);
      goto LABEL_13;
    }

LABEL_14:
    v25 = 0;
    goto LABEL_18;
  }

  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *v35 = 138543362;
    v36 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Successfully created sentinel Zone", v35, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  v25 = 1;
LABEL_18:

  _Block_object_dispose(&buf, 8);
  return v25;
}

void __65__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeCreated_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)createHH2SentinelZoneWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  cloudDatabaseToDetectHH2Zone = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];

  if (cloudDatabaseToDetectHH2Zone)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5F8]);
    v7 = [v6 initWithZoneName:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71" ownerName:*MEMORY[0x277CBBF28]];
    v8 = objc_alloc(MEMORY[0x277D17070]);
    cloudDatabaseToDetectHH2Zone2 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
    containerID = [cloudDatabaseToDetectHH2Zone2 containerID];
    v11 = [v8 initWithContainerID:containerID scope:2 zoneID:v7];

    cloudDatabaseToDetectHH2Zone3 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
    v13 = [cloudDatabaseToDetectHH2Zone3 createPrivateZoneWithID:v11];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke;
    v23[3] = &unk_27867E118;
    v14 = handlerCopy;
    v24 = v14;
    v15 = [v13 addSuccessBlock:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke_2;
    v21[3] = &unk_278688DD0;
    v22 = v14;
    v16 = [v13 addFailureBlock:v21];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cloud database is nil. Cannot perform initial sync. (b)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
    }
  }
}

uint64_t __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performInitialSync:(id)sync
{
  location[3] = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  cloudDatabaseToDetectHH2Zone = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];

  if (cloudDatabaseToDetectHH2Zone)
  {
    cloudDatabaseToDetectHH2Zone2 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
    performInitialCloudSync = [cloudDatabaseToDetectHH2Zone2 performInitialCloudSync];

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke;
    v18[3] = &unk_27867E0F0;
    objc_copyWeak(&v20, location);
    v8 = syncCopy;
    v19 = v8;
    v9 = [performInitialCloudSync addSuccessBlock:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke_113;
    v15[3] = &unk_278686D60;
    objc_copyWeak(&v17, location);
    v16 = v8;
    v10 = [performInitialCloudSync addFailureBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cloud database is nil. Cannot perform initial sync. (a)", location, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    performInitialCloudSync = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    if (syncCopy)
    {
      (*(syncCopy + 2))(syncCopy, performInitialCloudSync);
    }
  }
}

void __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initial cloud sync finished on HH2 cloud database.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }
}

void __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke_113(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to perform initial sync on cloud database to determine sentinel zone.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (BOOL)waitForHH2SentinelZoneToBeFetchedFromCloud
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Waiting for Initial sync to finish... Start", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_enter(v3);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeFetchedFromCloud__block_invoke;
  v20[3] = &unk_27868A1D8;
  v20[4] = selfCopy;
  v8 = v3;
  v21 = v8;
  [(HMDHH2FrameworkSwitch *)selfCopy performInitialSync:v20];
  v9 = dispatch_time(0, 60000000000);
  v10 = dispatch_group_wait(v8, v9);
  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      v16 = "%{public}@Could not finish initial sync and timed out.";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_229538000, v17, v18, v16, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v15;
    v16 = "%{public}@Waiting for Initial sync to finish... End";
    v17 = v14;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v11);
  return v10 == 0;
}

void __67__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeFetchedFromCloud__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@HH2 sentinel zone removal status : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 40));
}

- (void)forceFetchSentinelZone
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Force fetching sentinel zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x277CBC5F8]);
  v8 = [v7 initWithZoneName:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71" ownerName:*MEMORY[0x277CBBF28]];
  v9 = objc_alloc(MEMORY[0x277D17070]);
  cloudDatabaseToDetectHH2Zone = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
  containerID = [cloudDatabaseToDetectHH2Zone containerID];
  v12 = [v9 initWithContainerID:containerID scope:2 zoneID:v8];

  cloudDatabaseToDetectHH2Zone2 = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v15 = [cloudDatabaseToDetectHH2Zone2 synchronizeZoneStateForZoneIDs:v14];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__HMDHH2FrameworkSwitch_forceFetchSentinelZone__block_invoke;
  v17[3] = &unk_278687CC0;
  v17[4] = selfCopy;
  v16 = [v15 addCompletionBlock:v17];
}

void __47__HMDHH2FrameworkSwitch_forceFetchSentinelZone__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Force fetch sentinel zone on HH1 container finished with error: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) makeSureWeAreRunningInRightEnvironment:0];
  if (v5)
  {
    v11 = [*(a1 + 32) fetchSentinelZoneDidFinishFuture];
    [v11 finishWithNoResult];
  }

  if (v6)
  {
    v12 = [*(a1 + 32) homeManager];
    v13 = [v12 currentAccessorySetupMetricDispatcher];
    [v13 markSetupEndStage:9 error:v6];
  }
}

- (void)performInitialSyncAndSwitchFrameworkIfRequired
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__HMDHH2FrameworkSwitch_performInitialSyncAndSwitchFrameworkIfRequired__block_invoke;
  v2[3] = &unk_27868A250;
  v2[4] = self;
  [(HMDHH2FrameworkSwitch *)self performInitialSync:v2];
}

void __71__HMDHH2FrameworkSwitch_performInitialSyncAndSwitchFrameworkIfRequired__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v7;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Initial sync on HH1 container finished with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not perform initial sync : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v3 domain];
    v13 = HMFEqualObjects();

    if (v13 && [v3 code] == 1)
    {
      v14 = dispatch_time(0, 3600000000000);
      v15 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDHH2FrameworkSwitch_performInitialSyncAndSwitchFrameworkIfRequired__block_invoke_106;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 32);
      dispatch_after(v14, v15, block);
    }

    else
    {
      [*(a1 + 32) waitForCloudKitAccountToBeAvailable];
    }

    v16 = [*(a1 + 32) homeManager];
    v17 = [v16 currentAccessorySetupMetricDispatcher];
    [v17 markSetupEndStage:9 error:v3];
  }

  else
  {
    if (![*(a1 + 32) autoFrameworkSwitch])
    {
      goto LABEL_18;
    }

    if (![*(a1 + 32) checkExistenceOfHH2SentinelZone])
    {
      [*(a1 + 32) forceFetchSentinelZone];
      goto LABEL_18;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Skip force fetching sentinel zone from the cloud since it is already in the local database", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v16 = [*(a1 + 32) fetchSentinelZoneDidFinishFuture];
    [v16 finishWithNoResult];
  }

LABEL_18:
}

- (void)createHH2CloudDatabaseAndStartSyncing
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMDHH2FrameworkSwitch *)selfCopy autoFrameworkSwitch];
    v7 = HMFBooleanToString();
    v22 = 138543618;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating the Cloud database to detect HH2 cloud zone & will start sync after that. [Auto Switch: %@]", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = objc_alloc(MEMORY[0x277CBC220]);
  v9 = [v8 initWithContainerIdentifier:@"com.apple.willow.config" environment:cloudKitContainerEnvironment];
  dataSource = [(HMDHH2FrameworkSwitch *)selfCopy dataSource];
  v11 = [dataSource controller:selfCopy cloudDatabaseWithContainerID:v9];

  if (v11)
  {
    [(HMDHH2FrameworkSwitch *)selfCopy setCloudDatabaseToDetectHH2Zone:v11];
    cloudDatabaseToDetectHH2Zone = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
    [cloudDatabaseToDetectHH2Zone setDelegate:selfCopy];

    cloudDatabaseToDetectHH2Zone2 = [(HMDHH2FrameworkSwitch *)selfCopy cloudDatabaseToDetectHH2Zone];
    v14 = [cloudDatabaseToDetectHH2Zone2 registerPrivateSubscriptionForExternalRecordType:0];

    [(HMDHH2FrameworkSwitch *)selfCopy performInitialSyncAndSwitchFrameworkIfRequired];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Failed to create cloud database with containerID %{public}@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:@"Failed to create cloud database"];
    homeManager = [(HMDHH2FrameworkSwitch *)v16 homeManager];
    currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher markSetupEndStage:9 error:v19];
  }
}

- (HMDHH2FrameworkSwitch)initWithAutoSwitch:(BOOL)switch homeManager:(id)manager dataSource:(id)source callBeforeFrameworkSwitch:(id)frameworkSwitch
{
  managerCopy = manager;
  sourceCopy = source;
  frameworkSwitchCopy = frameworkSwitch;
  v28.receiver = self;
  v28.super_class = HMDHH2FrameworkSwitch;
  v13 = [(HMDHH2FrameworkSwitch *)&v28 init];
  if (v13)
  {
    v14 = HMFGetOSLogHandle();
    logger = v13->_logger;
    v13->_logger = v14;

    v13->_autoFrameworkSwitch = switch;
    objc_storeWeak(&v13->_homeManager, managerCopy);
    v16 = sourceCopy;
    if (!sourceCopy)
    {
      v16 = objc_alloc_init(HMDHH2FrameworkSwitchDefaultDataSource);
    }

    objc_storeStrong(&v13->_dataSource, v16);
    if (!sourceCopy)
    {
    }

    v17 = _Block_copy(frameworkSwitchCopy);
    blockToBeCalledBeforeSwitchingFramework = v13->_blockToBeCalledBeforeSwitchingFramework;
    v13->_blockToBeCalledBeforeSwitchingFramework = v17;

    v19 = HMDispatchQueueNameString();
    uTF8String = [v19 UTF8String];
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(uTF8String, v21);
    workQueue = v13->_workQueue;
    v13->_workQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    fetchSentinelZoneDidFinishFuture = v13->_fetchSentinelZoneDidFinishFuture;
    v13->_fetchSentinelZoneDidFinishFuture = v24;

    if (managerCopy)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v13 selector:sel_handleTapToSetupFinished_ name:@"TTSU.Finished.NotificationKey" object:0];
    }

    [(HMDHH2FrameworkSwitch *)v13 createHH2CloudDatabaseAndStartSyncing];
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t48 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t48, &__block_literal_global_131_190036);
  }

  v3 = logCategory__hmf_once_v49;

  return v3;
}

void __36__HMDHH2FrameworkSwitch_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v49;
  logCategory__hmf_once_v49 = v0;
}

+ (id)errorFromHMDCKAccountStatus:(int64_t)status
{
  if ((status - 2) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:{qword_22A587B10[status - 2], v3}];
  }

  return v5;
}

+ (void)switchBackToHH1AndDoNotLaunchDueToPrimaryAccountRemoval
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Switching back to HK 1.0 framework as primary account got removed. HomeKitDaemon will not be relaunched.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [objc_opt_class() removeHH2EnablementPreferenceKey];
  [objc_opt_class() setHH2SettingsMigrationKey:0];
}

+ (void)setHH2SettingsMigrationKey:(BOOL)key
{
  keyCopy = key;
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting HH2 settings migration key to %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:keyCopy forKey:@"mi.hh2"];
}

+ (void)removeHH2EnablementPreferenceKey
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Removing HH2 preference", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  CFPreferencesSetAppValue(@"isHH2Enabled", 0, *MEMORY[0x277CD0030]);
}

+ (void)setHH2EnablementPreferenceKey:(BOOL)key
{
  keyCopy = key;
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting HH2 preference value to %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277CBED28];
  if (!keyCopy)
  {
    v10 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"isHH2Enabled", *v10, *MEMORY[0x277CD0030]);
}

@end