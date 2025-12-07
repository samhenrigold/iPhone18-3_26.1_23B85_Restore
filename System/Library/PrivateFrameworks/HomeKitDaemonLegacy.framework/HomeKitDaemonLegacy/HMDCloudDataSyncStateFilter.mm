@interface HMDCloudDataSyncStateFilter
+ (BOOL)isAllowedMessage:(id)message;
+ (id)logCategory;
- (BOOL)_cloudSyncinProgressCheck:(id)check supressPopup:(BOOL)popup sendCanceledError:(BOOL *)error dataSyncState:(unint64_t *)state;
- (BOOL)_verifyAccountStatusForMigration;
- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason;
- (BOOL)areWeAllowedToAutoMigrateEmptyAccountsToHH2;
- (BOOL)dataSyncInProgressWithState:(unint64_t *)state withMessage:(id)message;
- (BOOL)decryptionFailed;
- (BOOL)isKeychainSyncSwitchEnabled;
- (BOOL)isLocalDataDecryptionFailed;
- (BOOL)isiCloudSwitchEnabled;
- (BOOL)shouldCloudSyncData;
- (HMDCloudDataSyncStateFilter)initWithName:(id)name homeManager:(id)manager messageDispatcher:(id)dispatcher serverTokenAvailable:(BOOL)available homeDataHasBeenDecrypted:(BOOL)decrypted homeManagerServerTokenAvailable:(BOOL)tokenAvailable localDataDecryptionFailed:(BOOL)failed totalHomes:(int64_t)self0 currentAccount:(id)self1;
- (HMDHomeManager)homeManager;
- (void)_clearResetConfigDisplayTimer;
- (void)_detectAndMigrateSharedUserWithEmptyOwnedHomes;
- (void)_evaluateMoveToHH2;
- (void)_handleCloudZoneReadyNotification:(id)notification;
- (void)_markHH1FirstCloudSyncComplete;
- (void)_moveDirectlyToHH2IfAccountIsEmpty;
- (void)_postNotificationForDataSyncInProgress:(BOOL)progress dataSyncState:(unint64_t)state forcePost:(BOOL)post;
- (void)_resetCloudDataSyncTimer;
- (void)_stallCloudDataSyncTimer;
- (void)_stallResetConfigDisplayTimer;
- (void)_startCloudDataSyncTimer;
- (void)_startDataConfigResetTimers;
- (void)_startPopupTimer;
- (void)_startResetConfigDisplayTimer;
- (void)_startiCloudSwitchPopupTimer;
- (void)_stopCloudDataSyncTimer;
- (void)_stopDataConfigResetTimers;
- (void)_stopPopupTimer;
- (void)_stopResetConfigDisplayTimer;
- (void)_stopiCloudSwitchPopupTimer;
- (void)_updateCloudDataSyncState:(BOOL)state;
- (void)_updateCurrentAccount:(id)account;
- (void)_updateKeychainSyncEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)evaluateMoveToHH2;
- (void)handleKeychainSyncStateChangedNotification:(id)notification;
- (void)kickResetConfigDisplayTimer;
- (void)moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes:(BOOL)homes;
- (void)resetConfiguration;
- (void)setDecryptionFailed:(BOOL)failed;
- (void)startDataConfigResetTimers;
- (void)timerDidFire:(id)fire;
- (void)totalHomesInCloudZones:(id)zones;
- (void)updateCloudDataSyncState:(BOOL)state;
- (void)updateCurrentAccount:(id)account;
- (void)updateLocalDataDecryptionFailed:(BOOL)failed;
- (void)updateNetworkConnectivity:(BOOL)connectivity;
- (void)updateServerTokenAvailable:(BOOL)available;
- (void)updateTotalHomes:(int64_t)homes;
- (void)updateWithoutDataSynCheckServerTokenAvailable:(BOOL)available;
- (void)updateiCloudAccountActive:(BOOL)active;
- (void)updateiCloudSwitchState:(BOOL)state;
@end

@implementation HMDCloudDataSyncStateFilter

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (BOOL)shouldCloudSyncData
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HMDCloudDataSyncStateFilter_shouldCloudSyncData__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __50__HMDCloudDataSyncStateFilter_shouldCloudSyncData__block_invoke(uint64_t a1)
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsStandaloneMode];

  result = [*(a1 + 32) iCloudAccountActive];
  if (v3)
  {
    if (result)
    {
      if (([*(a1 + 32) keychainSyncEnabled] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "isCloudDataSyncPeerAvailable"), result))
      {
        result = [*(a1 + 32) iCloudSwitchStateEnabled];
      }
    }
  }

  else if (result)
  {
    result = [*(a1 + 32) keychainSyncEnabled];
    if (result)
    {
      result = [*(a1 + 32) iCloudSwitchStateEnabled];
      if (result)
      {
        result = *(*(a1 + 32) + 37) == 0;
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)resetConfiguration
{
  queue = [(HMDMessageFilter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDCloudDataSyncStateFilter_resetConfiguration__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __49__HMDCloudDataSyncStateFilter_resetConfiguration__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setServerTokenAvailable:0];
  [*(a1 + 32) setCloudDataSyncCompleted:0];
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  *(*(a1 + 32) + 37) = [v2 supportsStandaloneMode] ^ 1;

  [*(a1 + 32) setLocalDataDecryptionFailed:0];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@HomeKit configuration got reset, stopping data reset timers", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  return [*(a1 + 32) _stopDataConfigResetTimers];
}

- (void)updateiCloudAccountActive:(BOOL)active
{
  queue = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMDCloudDataSyncStateFilter_updateiCloudAccountActive___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  activeCopy = active;
  dispatch_sync(queue, v6);
}

void *__57__HMDCloudDataSyncStateFilter_updateiCloudAccountActive___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) iCloudAccountActive];
  if (*(a1 + 40) != result)
  {
    v9 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v9];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v11 = v7;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating iCloud account active to %{BOOL}d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setICloudAccountActive:*(a1 + 40)];
    if (([*(a1 + 32) iCloudAccountActive] & 1) != 0 || !objc_msgSend(*(a1 + 32), "cloudDataSyncCompleted"))
    {
      return [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v9 forcePost:0];
    }

    else
    {
      return [*(a1 + 32) _updateCloudDataSyncState:0];
    }
  }

  return result;
}

- (BOOL)isLocalDataDecryptionFailed
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(HMDMessageFilter *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDCloudDataSyncStateFilter_isLocalDataDecryptionFailed__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__58__HMDCloudDataSyncStateFilter_isLocalDataDecryptionFailed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) localDataDecryptionFailed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateLocalDataDecryptionFailed:(BOOL)failed
{
  queue = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMDCloudDataSyncStateFilter_updateLocalDataDecryptionFailed___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  failedCopy = failed;
  dispatch_async(queue, v6);
}

void *__63__HMDCloudDataSyncStateFilter_updateLocalDataDecryptionFailed___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) localDataDecryptionFailed];
  if (*(a1 + 40) != result)
  {
    v10 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v10];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = v7;
      v9 = "NO";
      if (*(a1 + 40))
      {
        v9 = "YES";
      }

      *buf = 138543618;
      v12 = v7;
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating local data decryption fail state to: %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setLocalDataDecryptionFailed:*(a1 + 40)];
    return [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v10 forcePost:0];
  }

  return result;
}

- (BOOL)isKeychainSyncSwitchEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(HMDMessageFilter *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDCloudDataSyncStateFilter_isKeychainSyncSwitchEnabled__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__58__HMDCloudDataSyncStateFilter_isKeychainSyncSwitchEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) keychainSyncEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isiCloudSwitchEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(HMDMessageFilter *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HMDCloudDataSyncStateFilter_isiCloudSwitchEnabled__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__52__HMDCloudDataSyncStateFilter_isiCloudSwitchEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) iCloudSwitchStateEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateiCloudSwitchState:(BOOL)state
{
  queue = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HMDCloudDataSyncStateFilter_updateiCloudSwitchState___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  stateCopy = state;
  dispatch_sync(queue, v6);
}

void *__55__HMDCloudDataSyncStateFilter_updateiCloudSwitchState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) iCloudSwitchStateEnabled];
  if (*(a1 + 40) != result)
  {
    v10 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v10];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = v7;
      v9 = "not ";
      if (*(a1 + 40))
      {
        v9 = "";
      }

      *buf = 138543618;
      v12 = v7;
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating iCloud Switch state to: %senabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setICloudSwitchStateEnabled:*(a1 + 40)];
    return [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v10 forcePost:0];
  }

  return result;
}

- (void)updateServerTokenAvailable:(BOOL)available
{
  queue = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDCloudDataSyncStateFilter_updateServerTokenAvailable___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  availableCopy = available;
  dispatch_sync(queue, v6);
}

void *__58__HMDCloudDataSyncStateFilter_updateServerTokenAvailable___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) serverTokenAvailable];
  if (*(a1 + 40) != result)
  {
    v10 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v10];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = v7;
      v9 = "not ";
      if (*(a1 + 40))
      {
        v9 = "";
      }

      *buf = 138543618;
      v12 = v7;
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating cloud server token available state to %savailable", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setServerTokenAvailable:*(a1 + 40)];
    return [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v10 forcePost:0];
  }

  return result;
}

- (void)updateWithoutDataSynCheckServerTokenAvailable:(BOOL)available
{
  queue = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMDCloudDataSyncStateFilter_updateWithoutDataSynCheckServerTokenAvailable___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  availableCopy = available;
  dispatch_sync(queue, v6);
}

void *__77__HMDCloudDataSyncStateFilter_updateWithoutDataSynCheckServerTokenAvailable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) serverTokenAvailable];
  if (*(a1 + 40) != result)
  {
    v3 = *(a1 + 32);

    return [v3 setServerTokenAvailable:?];
  }

  return result;
}

- (void)_markHH1FirstCloudSyncComplete
{
  os_unfair_lock_lock_with_options();
  if (!self->_hh1FirstCloudSyncComplete)
  {
    self->_hh1FirstCloudSyncComplete = 1;
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH1FirstCloudSyncComplete", "", v4, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_updateCloudDataSyncState:(BOOL)state
{
  stateCopy = state;
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted]!= state)
  {
    v13 = 0;
    v5 = [(HMDCloudDataSyncStateFilter *)self _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v13];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = v9;
      v11 = "Sync in progress";
      if (stateCopy)
      {
        v11 = "Sync completed";
      }

      *buf = 138543618;
      v15 = v9;
      v16 = 2080;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating cloud sync state to %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDCloudDataSyncStateFilter *)selfCopy setCloudDataSyncCompleted:stateCopy];
    if ([(HMDCloudDataSyncStateFilter *)selfCopy cloudDataSyncCompleted])
    {
      homeManager = [(HMDCloudDataSyncStateFilter *)selfCopy homeManager];
      [homeManager assistantSyncDataChanged:@"SyncStateCompleted"];

      [(HMDCloudDataSyncStateFilter *)selfCopy _markHH1FirstCloudSyncComplete];
    }

    [(HMDCloudDataSyncStateFilter *)selfCopy _postNotificationForDataSyncInProgress:v5 dataSyncState:v13 forcePost:[(HMDCloudDataSyncStateFilter *)selfCopy cloudDataSyncCompleted]];
  }
}

- (void)updateCloudDataSyncState:(BOOL)state
{
  queue = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HMDCloudDataSyncStateFilter_updateCloudDataSyncState___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  stateCopy = state;
  dispatch_sync(queue, v6);
}

- (BOOL)_cloudSyncinProgressCheck:(id)check supressPopup:(BOOL)popup sendCanceledError:(BOOL *)error dataSyncState:(unint64_t *)state
{
  popupCopy = popup;
  v90 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  if (_cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__onceToken == -1)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&_cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__onceToken, &__block_literal_global_166);
  if (error)
  {
LABEL_3:
    *error = 0;
  }

LABEL_4:
  if (state)
  {
    *state = 1;
  }

  v11 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v11 supportsKeychainSync] && -[HMDCloudDataSyncStateFilter iCloudAccountActive](self, "iCloudAccountActive") && !-[HMDCloudDataSyncStateFilter keychainSyncEnabled](self, "keychainSyncEnabled"))
  {
    if ([(HMDCloudDataSyncStateFilter *)self isKeychainSyncPeerAvailable])
    {
    }

    else
    {
      decryptionFailed = self->_decryptionFailed;

      if (!decryptionFailed)
      {
        goto LABEL_10;
      }
    }

    name = [checkCopy name];

    if (name)
    {
      if ([checkCopy isEntitledForSPIAccess] && (v69 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages, objc_msgSend(checkCopy, "name"), v70 = objc_claimAutoreleasedReturnValue(), LODWORD(v69) = objc_msgSend(v69, "containsObject:", v70), v70, v69))
      {
        v71 = objc_autoreleasePoolPush();
        selfCopy = self;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          name2 = [checkCopy name];
          *buf = 138543618;
          v87 = v74;
          v88 = 2112;
          v89 = name2;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Allowing the message %@ though Keychain is not enabled", buf, 0x16u);
        }

        v28 = 0;
      }

      else
      {
        v71 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v73 = HMFGetOSLogHandle();
        v28 = 1;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v77 = HMFGetLogIdentifier();
          name3 = [checkCopy name];
          *buf = 138543618;
          v87 = v77;
          v88 = 2112;
          v89 = name3;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since Keychain is not enabled and there are peers", buf, 0x16u);

          v28 = 1;
        }
      }

      objc_autoreleasePoolPop(v71);
      if (!state)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v28 = 1;
      if (!state)
      {
        goto LABEL_102;
      }
    }

    v79 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v81 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      *buf = 138543362;
      v87 = v82;
      _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@Setting data sync state to keychain not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v79);
    v66 = 2;
LABEL_101:
    *state = v66;
    goto LABEL_102;
  }

LABEL_10:
  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self iCloudSwitchStateEnabled])
  {
    name4 = [checkCopy name];

    if (name4)
    {
      if ([checkCopy isEntitledForSPIAccess] && (v21 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages, objc_msgSend(checkCopy, "name"), v22 = objc_claimAutoreleasedReturnValue(), LODWORD(v21) = objc_msgSend(v21, "containsObject:", v22), v22, v21))
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          name5 = [checkCopy name];
          *buf = 138543618;
          v87 = v26;
          v88 = 2112;
          v89 = name5;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Allowing message %@ though iCloud Switch is not enabled", buf, 0x16u);
        }

        v28 = 0;
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v25 = HMFGetOSLogHandle();
        v28 = 1;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          name6 = [checkCopy name];
          *buf = 138543618;
          v87 = v40;
          v88 = 2112;
          v89 = name6;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since iCloud Switch is not enabled", buf, 0x16u);

          v28 = 1;
        }
      }

      objc_autoreleasePoolPop(v23);
      if (!checkCopy)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v28 = 1;
      if (!checkCopy)
      {
LABEL_84:
        if (!state)
        {
          goto LABEL_102;
        }

        v66 = 3;
        goto LABEL_101;
      }
    }

    if (([checkCopy isEntitledForSPIAccess] & 1) == 0 && !-[HMDCloudDataSyncStateFilter iCloudSwitchRequiredPopShown](self, "iCloudSwitchRequiredPopShown") && !popupCopy)
    {
      v60 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v63;
        _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting dialog about iCloud Switch being required", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v60);
      [(HMDCloudDataSyncStateFilter *)selfCopy6 setICloudSwitchRequiredPopShown:1];
      if (error)
      {
        *error = 1;
      }

      v64 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
      objc_initWeak(buf, selfCopy6);
      workQueue = [(HMDMessageFilter *)selfCopy6 workQueue];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __102__HMDCloudDataSyncStateFilter__cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___block_invoke_169;
      v84[3] = &unk_2797296D8;
      objc_copyWeak(&v85, buf);
      v84[4] = selfCopy6;
      [v64 displayiCloudSwitchWithContext:selfCopy6 queue:workQueue completionHandler:v84];

      objc_destroyWeak(&v85);
      objc_destroyWeak(buf);
    }

    goto LABEL_84;
  }

  if (isWatch())
  {
    v12 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v12 supportsCloudDataSync])
    {
      v13 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__watchAllowedCommands;
      name7 = [checkCopy name];
      LODWORD(v13) = [v13 containsObject:name7];

      if (v13)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          name8 = [checkCopy name];
          *buf = 138543618;
          v87 = v18;
          v88 = 2112;
          v89 = name8;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing configuration message (%@) on watch supporting cloud data sync", buf, 0x16u);
        }

LABEL_74:

        objc_autoreleasePoolPop(v15);
        v28 = 0;
        goto LABEL_102;
      }
    }

    else
    {
    }
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted]&& ![(HMDCloudDataSyncStateFilter *)self serverTokenAvailable]&& [(HMDCloudDataSyncStateFilter *)self isCloudDataSyncPeerAvailable])
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v32;
      v88 = 2112;
      v89 = checkCopy;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since server token unavailable and cloud sync not completed and transient devices present", buf, 0x16u);
    }

LABEL_54:

    objc_autoreleasePoolPop(v29);
    if (state)
    {
      if ([(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimeHasElapsed])
      {
        *state = 5;
        v44 = objc_autoreleasePoolPush();
        selfCopy9 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543362;
          v87 = v47;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Setting data sync state to requiring configuration reset", buf, 0xCu);
        }
      }

      else
      {
        *state = 4;
        v44 = objc_autoreleasePoolPush();
        selfCopy10 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v87 = v49;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Setting data sync state to waiting for cloud data", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v44);
    }

    v28 = 1;
    goto LABEL_62;
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self serverTokenAvailable])
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      name9 = [checkCopy name];
      *buf = 138543618;
      v87 = v37;
      v88 = 2112;
      v89 = name9;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since signed into cloud, no valid server token", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted])
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      name10 = [checkCopy name];
      *buf = 138543618;
      v87 = v42;
      v88 = 2112;
      v89 = name10;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since signed into cloud, but initial sync is not complete", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& [(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted]&& self->_decryptionFailed)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      name11 = [checkCopy name];
      *buf = 138543618;
      v87 = v33;
      v88 = 2112;
      v89 = name11;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since decryption failed", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if ([(HMDCloudDataSyncStateFilter *)self localDataDecryptionFailed])
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      name12 = [checkCopy name];
      *buf = 138543618;
      v87 = v35;
      v88 = 2112;
      v89 = name12;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since local data decryption failed", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v28 = 0;
LABEL_62:
  v50 = +[HMDAppleAccountManager sharedManager];
  account = [v50 account];
  if (account)
  {
    v52 = +[HMDDeviceCapabilities deviceCapabilities];
    isRemoteGatewayCapable = [v52 isRemoteGatewayCapable];

    if (isRemoteGatewayCapable && !+[HMDKeyTransferAgentServer isPeerAvailable])
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v54;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing message due to no key transfer peers available", buf, 0xCu);
      }

      goto LABEL_74;
    }
  }

  else
  {
  }

  name13 = [checkCopy name];
  if (!name13 || ([checkCopy isEntitledForSPIAccess] & 1) == 0)
  {

    goto LABEL_102;
  }

  v56 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages;
  name14 = [checkCopy name];
  LODWORD(v56) = [v56 containsObject:name14];

  if (v56)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      name15 = [checkCopy name];
      *buf = 138543618;
      v87 = v58;
      v88 = 2112;
      v89 = name15;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing the message %@", buf, 0x16u);
    }

    goto LABEL_74;
  }

LABEL_102:

  return v28;
}

void __102__HMDCloudDataSyncStateFilter__cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___block_invoke_169(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Enabling iCloud switch", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = +[HMDAppleAccountSettings sharedSettings];
    [v9 updateHomeEnabled:1 completionHandler:&__block_literal_global_172];
  }

  [WeakRetained _startiCloudSwitchPopupTimer];
}

void __102__HMDCloudDataSyncStateFilter__cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = @"kHomeConfigInternalRequestKey";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v1 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__watchAllowedCommands;
  _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__watchAllowedCommands = v0;

  v2 = MEMORY[0x277CBEB98];
  v6 = @"kUpdateAccessAllowedWhenLockedRequestKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  v4 = [v2 setWithArray:v3];
  v5 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages;
  _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages = v4;
}

- (BOOL)dataSyncInProgressWithState:(unint64_t *)state withMessage:(id)message
{
  messageCopy = message;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__HMDCloudDataSyncStateFilter_dataSyncInProgressWithState_withMessage___block_invoke;
  v13 = &unk_279732EE8;
  v16 = &v18;
  selfCopy = self;
  v8 = messageCopy;
  v15 = v8;
  stateCopy = state;
  dispatch_sync(workQueue, &v10);

  [(HMDCloudDataSyncStateFilter *)self _moveDirectlyToHH2IfAccountIsEmpty:v10];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

void *__71__HMDCloudDataSyncStateFilter_dataSyncInProgressWithState_withMessage___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cloudSyncinProgressCheck:*(a1 + 40) supressPopup:1 sendCanceledError:0 dataSyncState:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason
{
  messageCopy = message;
  targetCopy = target;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke;
  v13[3] = &unk_279732EE8;
  v13[4] = self;
  v14 = messageCopy;
  v15 = &v17;
  reasonCopy = reason;
  v11 = messageCopy;
  dispatch_sync(workQueue, v13);

  LOBYTE(messageCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return messageCopy;
}

void __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  if (![v2 supportsKeychainSync] || !objc_msgSend(*(a1 + 32), "iCloudAccountActive") || objc_msgSend(*(a1 + 32), "keychainSyncEnabled"))
  {

    goto LABEL_5;
  }

  v25 = [*(a1 + 40) name];
  v26 = [HMDCloudDataSyncStateFilter isAllowedMessage:v25];

  if (v26 || ![*(a1 + 32) isKeychainSyncPeerAvailable] || objc_msgSend(*(a1 + 32), "totalHomes") <= 0 && (objc_msgSend(*(a1 + 40), "name"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277CD2080]), v27, !v28))
  {
LABEL_5:
    v49 = 0;
    v3 = [*(a1 + 40) name];
    if ([HMDCloudDataSyncStateFilter isAllowedMessage:v3])
    {
    }

    else
    {
      v4 = [*(a1 + 32) _cloudSyncinProgressCheck:*(a1 + 40) supressPopup:0 sendCanceledError:&v49 dataSyncState:0];

      if (v4)
      {
        if (*(a1 + 56))
        {
          if (v49)
          {
            v5 = 23;
          }

          else
          {
            v5 = 77;
          }

          **(a1 + 56) = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:v5 userInfo:0];
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 32);
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v10 = [*(a1 + 40) name];
          *buf = 138543618;
          v53 = v9;
          v54 = 2112;
          v55 = v10;
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since cloud data sync is in progress", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 32);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          [*(a1 + 32) cloudDataSyncCompleted];
          v15 = HMFBooleanToString();
          [*(a1 + 32) serverTokenAvailable];
          v16 = HMFBooleanToString();
          [*(a1 + 32) isCloudDataSyncPeerAvailable];
          v17 = HMFBooleanToString();
          *buf = 138544130;
          v53 = v14;
          v54 = 2112;
          v55 = v15;
          v56 = 2112;
          v57 = v16;
          v58 = 2112;
          v59 = v17;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@cloudDataSyncCompleted: %@, serverTokenAvailable: %@, cloudDataSyncPeerAvailable: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v11);
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          [*(a1 + 32) networkConnectivityAvailable];
          v22 = HMFBooleanToString();
          [*(a1 + 32) iCloudAccountActive];
          v23 = HMFBooleanToString();
          v24 = HMFBooleanToString();
          *buf = 138544130;
          v53 = v21;
          v54 = 2112;
          v55 = v22;
          v56 = 2112;
          v57 = v23;
          v58 = 2112;
          v59 = v24;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@networkConnectivityAvailable: %@, iCloudAccountActive: %@, decryptionFailed: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v18);
      }
    }

    return;
  }

  v29 = *(a1 + 32);
  v30 = +[HMDAppleAccountSettings sharedSettings];
  [v29 _updateKeychainSyncEnabled:{objc_msgSend(v30, "isKeychainSyncEnabled")}];

  if ([*(a1 + 32) keychainSyncEnabled])
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 32);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [*(a1 + 40) name];
      *buf = 138543618;
      v53 = v34;
      v54 = 2112;
      v55 = v35;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Resampled keychain sync state and it is enabled, accepting message %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_5;
  }

  if (*(a1 + 56))
  {
    **(a1 + 56) = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:76 userInfo:0];
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v36 = objc_autoreleasePoolPush();
  v37 = *(a1 + 32);
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = HMFGetLogIdentifier();
    v40 = [*(a1 + 40) name];
    *buf = 138543618;
    v53 = v39;
    v54 = 2112;
    v55 = v40;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting message %@ since keychain sync is not enabled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  if (([*(a1 + 40) isEntitledForSPIAccess] & 1) == 0 && (objc_msgSend(*(a1 + 32), "keychainSyncRequiredPopShown") & 1) == 0)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = *(a1 + 32);
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting dialog about keychain sync being required since we have more than one account", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
    [*(a1 + 32) setKeychainSyncRequiredPopShown:1];
    v45 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
    objc_initWeak(buf, *(a1 + 32));
    v46 = [*(a1 + 32) name];
    v47 = *(a1 + 32);
    v48 = [v47 workQueue];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke_160;
    v50[3] = &unk_2797296D8;
    objc_copyWeak(&v51, buf);
    v50[4] = *(a1 + 32);
    [v45 displayKeychainSyncForHome:v46 withContext:v47 queue:v48 completionHandler:v50];

    objc_destroyWeak(&v51);
    objc_destroyWeak(buf);
  }
}

void __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke_160(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Launching settings for iCloud Keychain", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    launchURL(@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync");
  }

  [WeakRetained _startPopupTimer];
}

- (void)_updateCurrentAccount:(id)account
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  accountCopy = account;
  devices = [accountCopy devices];
  v5 = [devices countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (([v11 isCurrentDevice] & 1) == 0)
        {
          capabilities = [v11 capabilities];
          supportsKeychainSync = [capabilities supportsKeychainSync];

          v8 |= supportsKeychainSync;
          capabilities2 = [v11 capabilities];
          LOBYTE(capabilities) = [capabilities2 supportsCloudDataSync];

          v7 |= capabilities;
          if (v8 & 1) != 0 && (v7)
          {
            v7 = 1;
            v8 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [devices countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_14:

  if ((v8 & 1) != [(HMDCloudDataSyncStateFilter *)self isKeychainSyncPeerAvailable])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v19;
        v20 = "%{public}@Keychain sync peers are available";
LABEL_20:
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
      }
    }

    else if (v18)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      v20 = "%{public}@Keychain sync peers are not available";
      goto LABEL_20;
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCloudDataSyncStateFilter *)selfCopy setKeychainSyncPeerAvailable:v8 & 1];
  }

  if ((v7 & 1) != [(HMDCloudDataSyncStateFilter *)self isCloudDataSyncPeerAvailable])
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v25;
        v26 = "%{public}@Cloud data sync peers are available";
LABEL_28:
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
      }
    }

    else if (v24)
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v25;
      v26 = "%{public}@Cloud data sync peers are not available";
      goto LABEL_28;
    }

    objc_autoreleasePoolPop(v21);
    [(HMDCloudDataSyncStateFilter *)selfCopy2 setCloudDataSyncPeerAvailable:v7 & 1];
  }
}

- (void)updateCurrentAccount:(id)account
{
  accountCopy = account;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDCloudDataSyncStateFilter_updateCurrentAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_async(workQueue, v7);
}

- (void)updateTotalHomes:(int64_t)homes
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDCloudDataSyncStateFilter_updateTotalHomes___block_invoke;
  v6[3] = &unk_279734BB8;
  v6[4] = self;
  v6[5] = homes;
  dispatch_sync(workQueue, v6);
}

uint64_t __48__HMDCloudDataSyncStateFilter_updateTotalHomes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTotalHomes:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _evaluateMoveToHH2];
}

- (void)_stopiCloudSwitchPopupTimer
{
  v11 = *MEMORY[0x277D85DE8];
  [(HMDCloudDataSyncStateFilter *)self setICloudSwitchRequiredPopShown:0];
  iCloudSwitchPopupTimer = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];

  if (iCloudSwitchPopupTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling iCloud Switch popup shown timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    iCloudSwitchPopupTimer2 = [(HMDCloudDataSyncStateFilter *)selfCopy iCloudSwitchPopupTimer];
    dispatch_source_cancel(iCloudSwitchPopupTimer2);

    [(HMDCloudDataSyncStateFilter *)selfCopy setICloudSwitchPopupTimer:0];
  }
}

- (void)_startiCloudSwitchPopupTimer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = keychainPopupTimerInterval;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
  [(HMDCloudDataSyncStateFilter *)self setICloudSwitchPopupTimer:v5];

  iCloudSwitchPopupTimer = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];
  v7 = dispatch_time(0, 1000000000 * v3);
  dispatch_source_set_timer(iCloudSwitchPopupTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);

  objc_initWeak(&location, self);
  iCloudSwitchPopupTimer2 = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__HMDCloudDataSyncStateFilter__startiCloudSwitchPopupTimer__block_invoke;
  handler[3] = &unk_279732E78;
  objc_copyWeak(&v15, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(iCloudSwitchPopupTimer2, handler);

  iCloudSwitchPopupTimer3 = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];
  dispatch_resume(iCloudSwitchPopupTimer3);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting iCloud Switch popup shown timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __59__HMDCloudDataSyncStateFilter__startiCloudSwitchPopupTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@iCloud Switch popup timer fired, resetting last shown flag", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [WeakRetained _stopiCloudSwitchPopupTimer];
  }
}

- (void)_stopPopupTimer
{
  v11 = *MEMORY[0x277D85DE8];
  [(HMDCloudDataSyncStateFilter *)self setKeychainSyncRequiredPopShown:0];
  popupTimer = [(HMDCloudDataSyncStateFilter *)self popupTimer];

  if (popupTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling keychain sync popup shown timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    popupTimer2 = [(HMDCloudDataSyncStateFilter *)selfCopy popupTimer];
    dispatch_source_cancel(popupTimer2);

    [(HMDCloudDataSyncStateFilter *)selfCopy setPopupTimer:0];
  }
}

- (void)_startPopupTimer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = keychainPopupTimerInterval;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
  [(HMDCloudDataSyncStateFilter *)self setPopupTimer:v5];

  popupTimer = [(HMDCloudDataSyncStateFilter *)self popupTimer];
  v7 = dispatch_time(0, 1000000000 * v3);
  dispatch_source_set_timer(popupTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);

  objc_initWeak(&location, self);
  popupTimer2 = [(HMDCloudDataSyncStateFilter *)self popupTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__HMDCloudDataSyncStateFilter__startPopupTimer__block_invoke;
  handler[3] = &unk_279732E78;
  objc_copyWeak(&v15, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(popupTimer2, handler);

  popupTimer3 = [(HMDCloudDataSyncStateFilter *)self popupTimer];
  dispatch_resume(popupTimer3);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting keychain sync popup shown timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __47__HMDCloudDataSyncStateFilter__startPopupTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Keychain sync popup timer fired, resetting last shown flag", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [WeakRetained _stopPopupTimer];
  }
}

- (void)_stallResetConfigDisplayTimer
{
  v30 = *MEMORY[0x277D85DE8];
  resetConfigDisplayTimer = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimer];

  if (!resetConfigDisplayTimer)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      v25 = "%{public}@There is no reset config display timer running?";
LABEL_14:
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v25, &v26, 0xCu);
    }

LABEL_15:

    objc_autoreleasePoolPop(v21);
    return;
  }

  resetConfigDisplayTimerStartTimestamp = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimerStartTimestamp];

  if (!resetConfigDisplayTimerStartTimestamp)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      v25 = "%{public}@Reset config display timer start time in invalid?";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [(HMDCloudDataSyncStateFilter *)self setResetConfigDisplayTimer:0];
  date = [MEMORY[0x277CBEAA8] date];
  resetConfigDisplayTimerStartTimestamp2 = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimerStartTimestamp];
  [date timeIntervalSinceDate:resetConfigDisplayTimerStartTimestamp2];
  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v12;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Stalling the reset config display timer, %lf seconds have passed on this timer", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCloudDataSyncStateFilter *)selfCopy3 remainingResetConfigDisplayPeriod];
  [(HMDCloudDataSyncStateFilter *)selfCopy3 setRemainingResetConfigDisplayPeriod:v13 - v8];
  [(HMDCloudDataSyncStateFilter *)selfCopy3 remainingResetConfigDisplayPeriod];
  if (v14 <= 0.0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy3;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Remaining period for reset config display timer became less than 0?", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCloudDataSyncStateFilter *)v16 setRemainingResetConfigDisplayPeriod:controllerKeyNotLandingWaitPeriod];
    v19 = +[HMDDeviceSetupManager sharedManager];
    isRunning = [v19 isRunning];

    if (isRunning)
    {
      [(HMDCloudDataSyncStateFilter *)v16 setRemainingResetConfigDisplayPeriod:controllerKeyNotLandingShortCircuitWaitPeriod];
    }
  }
}

- (void)_clearResetConfigDisplayTimer
{
  [(HMDCloudDataSyncStateFilter *)self setResetConfigDisplayTimer:0];
  [(HMDCloudDataSyncStateFilter *)self setResetConfigDisplayTimerStartTimestamp:0];

  [(HMDCloudDataSyncStateFilter *)self setRemainingResetConfigDisplayPeriod:0.0];
}

- (void)_stopResetConfigDisplayTimer
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping reset config display timer", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudDataSyncStateFilter *)selfCopy _clearResetConfigDisplayTimer];
  [(HMDCloudDataSyncStateFilter *)selfCopy setResetConfigDisplayTimeHasElapsed:0];
}

- (void)_startResetConfigDisplayTimer
{
  v48 = *MEMORY[0x277D85DE8];
  if (!+[HMDDeviceCapabilities supportsCustomerReset])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v22;
      v23 = "%{public}@Reset config display timer is not valid on this platform";
LABEL_22:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v23, &v42, 0xCu);
    }

LABEL_23:

    goto LABEL_24;
  }

  v3 = +[HMDDeviceSetupManager sharedManager];
  isRunning = [v3 isRunning];

  resetConfigDisplayTimer = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimer];

  if (resetConfigDisplayTimer)
  {
    if (isRunning)
    {
      date = [MEMORY[0x277CBEAA8] date];
      resetConfigDisplayTimerStartTimestamp = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimerStartTimestamp];
      [date timeIntervalSinceDate:resetConfigDisplayTimerStartTimestamp];
      v9 = v8;

      [(HMDCloudDataSyncStateFilter *)self remainingResetConfigDisplayPeriod];
      v11 = v10 - v9;
      v12 = controllerKeyNotLandingShortCircuitWaitPeriod;
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v11 >= v12)
      {
        if (v16)
        {
          v17 = HMFGetLogIdentifier();
          v42 = 138543362;
          v43 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer is running but short circuit time is less than current remaining, restarting timer", &v42, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        [(HMDCloudDataSyncStateFilter *)selfCopy2 _stopResetConfigDisplayTimer];
        [(HMDCloudDataSyncStateFilter *)selfCopy2 remainingResetConfigDisplayPeriod];
        if (v18 > 0.0)
        {
          goto LABEL_17;
        }

        v19 = &controllerKeyNotLandingShortCircuitWaitPeriod;
        goto LABEL_14;
      }

      if (v16)
      {
        v40 = HMFGetLogIdentifier();
        [(HMDCloudDataSyncStateFilter *)selfCopy2 remainingResetConfigDisplayPeriod];
        v42 = 138543874;
        v43 = v40;
        v44 = 2048;
        v45 = v41 - v9;
        v46 = 2048;
        v47 = controllerKeyNotLandingShortCircuitWaitPeriod;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer is already running and remaining time %lf is less than short circuit time %lu", &v42, 0x20u);
      }

LABEL_24:
      objc_autoreleasePoolPop(v13);
      return;
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v22;
      v23 = "%{public}@Reset config display timer is already running, not restarting";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  [(HMDCloudDataSyncStateFilter *)self remainingResetConfigDisplayPeriod];
  if (v24 <= 0.0)
  {
    v19 = &controllerKeyNotLandingWaitPeriod;
    if (isRunning)
    {
      v19 = &controllerKeyNotLandingShortCircuitWaitPeriod;
    }

LABEL_14:
    v25 = *v19;
    v26 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v42 = 138543618;
      v43 = v29;
      v44 = 2048;
      v45 = v25;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer does not exist, initializing it to %lf", &v42, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [(HMDCloudDataSyncStateFilter *)selfCopy4 setRemainingResetConfigDisplayPeriod:v25];
  }

LABEL_17:
  v30 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    [(HMDCloudDataSyncStateFilter *)selfCopy5 remainingResetConfigDisplayPeriod];
    v42 = 138543618;
    v43 = v33;
    v44 = 2048;
    v45 = v34;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Starting a timer with %lf seconds to wait for controller key to land", &v42, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v35 = objc_alloc(MEMORY[0x277D0F920]);
  [(HMDCloudDataSyncStateFilter *)selfCopy5 remainingResetConfigDisplayPeriod];
  v36 = [v35 initWithTimeInterval:1 options:?];
  [(HMDCloudDataSyncStateFilter *)selfCopy5 setResetConfigDisplayTimer:v36];

  resetConfigDisplayTimer2 = [(HMDCloudDataSyncStateFilter *)selfCopy5 resetConfigDisplayTimer];
  [resetConfigDisplayTimer2 setDelegate:selfCopy5];

  resetConfigDisplayTimer3 = [(HMDCloudDataSyncStateFilter *)selfCopy5 resetConfigDisplayTimer];
  [resetConfigDisplayTimer3 resume];

  date2 = [MEMORY[0x277CBEAA8] date];
  [(HMDCloudDataSyncStateFilter *)selfCopy5 setResetConfigDisplayTimerStartTimestamp:date2];
}

- (void)kickResetConfigDisplayTimer
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDCloudDataSyncStateFilter_kickResetConfigDisplayTimer__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __58__HMDCloudDataSyncStateFilter_kickResetConfigDisplayTimer__block_invoke(uint64_t a1)
{
  v4 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v4 supportsKeychainSync] && (objc_msgSend(*(a1 + 32), "keychainSyncEnabled") & 1) != 0)
  {
    v2 = [*(a1 + 32) resetConfigDisplayTimer];

    if (v2)
    {
      v3 = *(a1 + 32);

      [v3 _startResetConfigDisplayTimer];
    }
  }

  else
  {
  }
}

- (void)_stallCloudDataSyncTimer
{
  v28 = *MEMORY[0x277D85DE8];
  cloudDataSyncInProgressTimer = [(HMDCloudDataSyncStateFilter *)self cloudDataSyncInProgressTimer];

  if (!cloudDataSyncInProgressTimer)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      v23 = "%{public}@There is no cloud sync timer running?";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v23, &v24, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v19);
    return;
  }

  dataSyncTimerStartTimestamp = [(HMDCloudDataSyncStateFilter *)self dataSyncTimerStartTimestamp];

  if (!dataSyncTimerStartTimestamp)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      v23 = "%{public}@There is data sync timer timestamp timer running?";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  [(HMDCloudDataSyncStateFilter *)self setCloudDataSyncInProgressTimer:0];
  date = [MEMORY[0x277CBEAA8] date];
  dataSyncTimerStartTimestamp2 = [(HMDCloudDataSyncStateFilter *)self dataSyncTimerStartTimestamp];
  [date timeIntervalSinceDate:dataSyncTimerStartTimestamp2];
  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v12;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Stalling the cloud data sync timer, %lf seconds have passed on this timer", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCloudDataSyncStateFilter *)selfCopy3 remainingDataSyncPeriod];
  [(HMDCloudDataSyncStateFilter *)selfCopy3 setRemainingDataSyncPeriod:v13 - v8];
  [(HMDCloudDataSyncStateFilter *)selfCopy3 remainingDataSyncPeriod];
  if (v14 <= 0.0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy3;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Remaining period became less than 0?", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCloudDataSyncStateFilter *)v16 setRemainingDataSyncPeriod:cloudDataSyncInProgressWaitPeriod];
  }
}

- (void)_resetCloudDataSyncTimer
{
  [(HMDCloudDataSyncStateFilter *)self setCloudDataSyncInProgressTimer:0];
  [(HMDCloudDataSyncStateFilter *)self setDataSyncTimerStartTimestamp:0];

  [(HMDCloudDataSyncStateFilter *)self setRemainingDataSyncPeriod:0.0];
}

- (void)_stopCloudDataSyncTimer
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping cloud data sync timer", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudDataSyncStateFilter *)selfCopy _resetCloudDataSyncTimer];
}

- (void)_startCloudDataSyncTimer
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsKeychainSync = [v3 supportsKeychainSync];

  if (supportsKeychainSync)
  {
    [(HMDCloudDataSyncStateFilter *)self remainingDataSyncPeriod];
    if (v5 <= 0.0)
    {
      v6 = cloudDataSyncInProgressWaitPeriod;
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v10;
        v27 = 2048;
        v28 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Timer does not exist, initializing it to %lf", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDCloudDataSyncStateFilter *)selfCopy setRemainingDataSyncPeriod:v6];
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      [(HMDCloudDataSyncStateFilter *)selfCopy2 remainingDataSyncPeriod];
      v25 = 138543618;
      v26 = v14;
      v27 = 2048;
      v28 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting a timer with %lf seconds to wait for cloud data sync to complete", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    cloudDataSyncInProgressTimer = [(HMDCloudDataSyncStateFilter *)selfCopy2 cloudDataSyncInProgressTimer];
    [cloudDataSyncInProgressTimer setDelegate:selfCopy2];

    v17 = objc_alloc(MEMORY[0x277D0F920]);
    [(HMDCloudDataSyncStateFilter *)selfCopy2 remainingDataSyncPeriod];
    v18 = [v17 initWithTimeInterval:1 options:?];
    [(HMDCloudDataSyncStateFilter *)selfCopy2 setCloudDataSyncInProgressTimer:v18];

    cloudDataSyncInProgressTimer2 = [(HMDCloudDataSyncStateFilter *)selfCopy2 cloudDataSyncInProgressTimer];
    [cloudDataSyncInProgressTimer2 resume];

    date = [MEMORY[0x277CBEAA8] date];
    [(HMDCloudDataSyncStateFilter *)selfCopy2 setDataSyncTimerStartTimestamp:date];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Cloud data sync timer is not valid on devices without keychain sync", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDCloudDataSyncStateFilter_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = fireCopy;
  selfCopy = self;
  v6 = fireCopy;
  dispatch_async(workQueue, v7);
}

void __44__HMDCloudDataSyncStateFilter_timerDidFire___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cloudDataSyncInProgressTimer];

  if (v2 == v3)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Cloud data sync in progress timer has fired", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) _resetCloudDataSyncTimer];
    *(*(a1 + 40) + 37) = 0;
    v10 = @"kCloudDataSyncTimerExpiredNotification";
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) resetConfigDisplayTimer];

    if (v4 != v5)
    {
      return;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer has fired", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) _clearResetConfigDisplayTimer];
    [*(a1 + 40) setResetConfigDisplayTimeHasElapsed:1];
    v10 = @"kCloudDataSyncInProgressUpdatedNotification";
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:v10 object:*(a1 + 40)];
}

- (void)updateNetworkConnectivity:(BOOL)connectivity
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMDCloudDataSyncStateFilter_updateNetworkConnectivity___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  connectivityCopy = connectivity;
  dispatch_async(workQueue, v6);
}

void *__57__HMDCloudDataSyncStateFilter_updateNetworkConnectivity___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNetworkConnectivityAvailable:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (v2[37] == 1 && [v2 keychainSyncEnabled])
  {
    v3 = *(a1 + 40);
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v3 == 1)
    {
      if (v7)
      {
        v8 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v8;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Network is reachable now, starting the cloud sync timer", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [*(a1 + 32) _startDataConfigResetTimers];
    }

    else
    {
      if (v7)
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Network is not reachable now, stalling the cloud sync timer", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [*(a1 + 32) _stallCloudDataSyncTimer];
      [*(a1 + 32) _stallResetConfigDisplayTimer];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      [*(a1 + 32) keychainSyncEnabled];
      v14 = HMFBooleanToString();
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Network reachability changed to %@ and decryption failed, keychain enabled: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  result = [*(a1 + 32) networkConnectivityAvailable];
  if (result)
  {
    return [*(a1 + 32) _evaluateMoveToHH2];
  }

  return result;
}

- (void)_stopDataConfigResetTimers
{
  [(HMDCloudDataSyncStateFilter *)self _stopCloudDataSyncTimer];

  [(HMDCloudDataSyncStateFilter *)self _stopResetConfigDisplayTimer];
}

- (void)_startDataConfigResetTimers
{
  [(HMDCloudDataSyncStateFilter *)self _startCloudDataSyncTimer];
  if (![(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimeHasElapsed])
  {

    [(HMDCloudDataSyncStateFilter *)self _startResetConfigDisplayTimer];
  }
}

- (void)startDataConfigResetTimers
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDCloudDataSyncStateFilter_startDataConfigResetTimers__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __57__HMDCloudDataSyncStateFilter_startDataConfigResetTimers__block_invoke(uint64_t a1)
{
  v4 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v4 supportsKeychainSync])
  {
    v2 = [*(a1 + 32) keychainSyncEnabled];

    if (v2)
    {
      v3 = *(a1 + 32);

      [v3 _startDataConfigResetTimers];
    }
  }

  else
  {
  }
}

- (void)setDecryptionFailed:(BOOL)failed
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HMDCloudDataSyncStateFilter_setDecryptionFailed___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  failedCopy = failed;
  dispatch_async(workQueue, v6);
}

void __51__HMDCloudDataSyncStateFilter_setDecryptionFailed___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[37] == *(a1 + 40))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = HMFBooleanToString();
      *buf = 138543618;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Decrypt failed is already set to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v25 = 0;
    v8 = [v2 _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v25];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      v14 = HMFBooleanToString();
      v15 = HMHomeManagerDataSyncStateToString();
      *buf = 138544130;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating decrypt fail state from %@ to %@, dataSyncState: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    *(*(a1 + 32) + 37) = *(a1 + 40);
    [*(a1 + 32) _postNotificationForDataSyncInProgress:v8 dataSyncState:v25 forcePost:0];
    if (*(a1 + 40) == 1 && [*(a1 + 32) keychainSyncEnabled])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Decrypt failed and keychain is enabled, starting data reset timers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [*(a1 + 32) _startDataConfigResetTimers];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        [*(a1 + 32) keychainSyncEnabled];
        v24 = HMFBooleanToString();
        *buf = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Stopping data reset timers, keychain enabled: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 32) _stopDataConfigResetTimers];
    }
  }
}

- (BOOL)decryptionFailed
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(HMDMessageFilter *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HMDCloudDataSyncStateFilter_decryptionFailed__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)totalHomesInCloudZones:(id)zones
{
  zonesCopy = zones;
  homeManager = [(HMDCloudDataSyncStateFilter *)self homeManager];
  cloudDataSyncManager = [homeManager cloudDataSyncManager];
  homeManagerZone = [cloudDataSyncManager homeManagerZone];

  uuid = [homeManager uuid];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke;
  v10[3] = &unk_279734A00;
  v10[4] = self;
  v11 = zonesCopy;
  v9 = zonesCopy;
  [homeManagerZone cloudRecordsForParentID:uuid completionHandler:v10];
}

void __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Encountered an error while querying cloud cache for records", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = _Block_copy(*(a1 + 40));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, v6);
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke_150;
    v15[3] = &unk_2797296B0;
    v15[4] = *(a1 + 32);
    v15[5] = &buf;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
    v13 = _Block_copy(*(a1 + 40));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, *(*(&buf + 1) + 24), 0);
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke_150(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 extractObjectChange];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Found : %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)_handleCloudZoneReadyNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"HMDCR.id"];
  [userInfo hmf_BOOLForKey:@"HMDCR.stc"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUIDString = [v6 UUIDString];
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v21 = v10;
    v22 = 2112;
    v23 = uUIDString;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Cloud manager completed initial fetch for zone %@, didServerTokenChange: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  workQueue = [(HMDMessageFilter *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDCloudDataSyncStateFilter__handleCloudZoneReadyNotification___block_invoke;
  block[3] = &unk_279734960;
  v17 = v6;
  v18 = selfCopy;
  v19 = userInfo;
  v14 = userInfo;
  v15 = v6;
  dispatch_async(workQueue, block);
}

void *__65__HMDCloudDataSyncStateFilter__handleCloudZoneReadyNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5"];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 40);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@home manager zone fetch finished", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 40) setHomeManagerFirstFetchFinished:1];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Legacy zone fetch finished", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 48) hmf_numberForKey:@"HMDCR.de"];
    v14 = v13;
    if (v13 && ([v13 BOOLValue] & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Legacy zone does not have home data records, home manager zone will not be fetched", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 40) setHomeManagerFirstFetchFinished:1];
    }
  }

  result = [*(a1 + 40) isHomeManagerFirstFetchFinished];
  if (result)
  {
    return [*(a1 + 40) _evaluateMoveToHH2];
  }

  return result;
}

- (void)_detectAndMigrateSharedUserWithEmptyOwnedHomes
{
  homeManager = [(HMDCloudDataSyncStateFilter *)self homeManager];
  workQueue = [homeManager workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke;
  v6[3] = &unk_2797359B0;
  v6[4] = self;
  v7 = homeManager;
  v5 = homeManager;
  dispatch_async(workQueue, v6);
}

void __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasHH2MigrationAlreadyRequested])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@HH2 migration has already been requested. Not requesting again.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 40) homes];
    v7 = [v6 na_filter:&__block_literal_global_144_86510];

    v8 = [*(a1 + 40) homes];
    v9 = [v8 count];
    v10 = [v7 count];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 - v10];
      *buf = 138543874;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Owned Home Count : %@, Total Shared Home Count: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    if ([v7 count])
    {
      if (v9 == v10)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Not migrating empty owned homes for shared users as they do not have any shared homes right now. This is already covered by the daily overnight migration which has some extra few checks. Please take a look at : fetchIsCurrentUserEligibleForAutoMigrationWithCompletion method", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }

      else
      {
        v21 = *(a1 + 40);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_145;
        v25[3] = &unk_27972B150;
        v22 = v7;
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v26 = v22;
        v27 = v23;
        v28 = v24;
        [v21 determineEmptyHomesForSharedUsersWithCompletionHandler:v25];
      }
    }

    else
    {
      [*(a1 + 32) setHasHH2MigrationAlreadyRequested:1];
      if (([*(a1 + 40) moveDirectlyToHH2IfOnlyHH2SharedHomesExist] & 1) == 0)
      {
        [*(a1 + 32) setHasHH2MigrationAlreadyRequested:0];
      }
    }
  }
}

void __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_145(id *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] count];
  if (v4 == [v3 count])
  {
    v5 = [a1[6] homes];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_146;
    v19[3] = &unk_2797322A0;
    v19[4] = a1[5];
    v20 = v3;
    v6 = [v5 na_allObjectsPassTest:v19];

    if (v6)
    {
      [a1[5] setHasHH2MigrationAlreadyRequested:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_147;
      v18[3] = &unk_2797359D8;
      v7 = a1[6];
      v18[4] = a1[5];
      [v7 autoMigrateToHH2WithCompletionHandler:v18];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1[5];
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Not All the homes are ready for HH2 yet. Not auto migrating shared user to HH2", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[4], "count")}];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Actual owned homes and empty home map do not agree. Not moving shared user to HH2: [%@ / %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

uint64_t __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_146(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [v3 uuid];
    v10 = [v8 objectForKeyedSubscript:v9];
    [v10 BOOLValue];
    v11 = HMFBooleanToString();
    [v3 isUpdatedToHH2];
    v12 = HMFBooleanToString();
    v18 = 138544130;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ / is owned home empty: %@ / is shared user updated to HH2: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  if ([v3 isOwnerUser])
  {
    v13 = *(a1 + 40);
    v14 = [v3 uuid];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = [v15 BOOLValue];
  }

  else
  {
    v16 = [v3 isUpdatedToHH2];
  }

  return v16;
}

void __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_147(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@failed to start auto migration to HH2 with an error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setHasHH2MigrationAlreadyRequested:0];
  }
}

- (void)moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes:(BOOL)homes
{
  if (_os_feature_enabled_impl())
  {
    workQueue = [(HMDMessageFilter *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke;
    v6[3] = &unk_279735D28;
    v6[4] = self;
    homesCopy = homes;
    dispatch_async(workQueue, v6);
  }
}

void *__104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalHomes")}];
    [*(a1 + 32) hasHH2MigrationAlreadyRequested];
    v7 = HMFBooleanToString();
    *buf = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Shared User] : Going to check whether there are homes in the account or not: [homes = %@] [HH2 migration requested: %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) totalHomes];
  if (result)
  {
    result = [*(a1 + 32) _verifyAccountStatusForMigration];
    if (result)
    {
      v9 = *(a1 + 32);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_139;
      v10[3] = &unk_279729688;
      v10[4] = v9;
      v11 = *(a1 + 40);
      return [v9 totalHomesInCloudZones:v10];
    }
  }

  return result;
}

void __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_139(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v10 = v3;
    v11 = v4;
    v7 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_2;
    block[3] = &unk_27972A540;
    block[4] = *(a1 + 32);
    block[5] = a2;
    v9 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

void __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) totalHomes] != *(a1 + 40))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[Shared User] : There are still homes in the cloud which are not yet downloaded. : [HomesInCloud : %@]", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v2 = +[HMDRemoteLoginUtilities isTwoFactorAuthenticationEnabledForAccount];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!v2)
  {
    if (v6)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[Empty Account] : HSA is not enabled for this account. Cannot move this account to HH2", buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v3);
    return;
  }

  if (v6)
  {
    v7 = HMFGetLogIdentifier();
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalHomes")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    *buf = 138543874;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Moving shared user to HH2 : [total Homes : %@], [HomesInCloud : %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *(a1 + 32);
  if (*(a1 + 48))
  {
    [v10 _detectAndMigrateSharedUserWithEmptyOwnedHomes];
  }

  else
  {
    [v10 setHasHH2MigrationAlreadyRequested:1];
    v14 = [*(a1 + 32) homeManager];
    v15 = [v14 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_140;
    block[3] = &unk_279735D00;
    block[4] = *(a1 + 32);
    dispatch_async(v15, block);
  }
}

void __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_140(uint64_t a1)
{
  v2 = [*(a1 + 32) homeManager];
  v3 = [v2 moveDirectlyToHH2IfOnlyHH2SharedHomesExist];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 setHasHH2MigrationAlreadyRequested:0];
  }
}

- (void)_moveDirectlyToHH2IfAccountIsEmpty
{
  v21 = *MEMORY[0x277D85DE8];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DefaultNewUsersToHH2Enabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  if ((_os_feature_enabled_impl() & 1) != 0 || AppBooleanValue)
  {
    homeManager = [(HMDCloudDataSyncStateFilter *)self homeManager];
    idsServerBag = [homeManager idsServerBag];
    isHH2SoftwareReleased = [idsServerBag isHH2SoftwareReleased];

    if (isHH2SoftwareReleased)
    {
      if ([(HMDCloudDataSyncStateFilter *)self areWeAllowedToAutoMigrateEmptyAccountsToHH2])
      {
        if (![homeManager areThereAnyTTSUSessionsOngoing])
        {
          workQueue = [(HMDMessageFilter *)self workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke;
          block[3] = &unk_279735D00;
          block[4] = self;
          dispatch_async(workQueue, block);

          goto LABEL_15;
        }

        v7 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v18 = v10;
          v11 = "%{public}@Not migrating to HH2 as a TTSU session is ongoing.";
LABEL_12:
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
          goto LABEL_13;
        }
      }

      else
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v18 = v10;
          v11 = "%{public}@Not migrating empty account to HH2 as 'allowed to auto migrate empty accounts' is NO.";
          goto LABEL_12;
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        homeManager2 = [(HMDCloudDataSyncStateFilter *)selfCopy3 homeManager];
        idsServerBag2 = [homeManager2 idsServerBag];
        [idsServerBag2 isHH2SoftwareReleased];
        v14 = HMFBooleanToString();
        *buf = 138543618;
        v18 = v10;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Can't migrate empty account to HH2 as HH2 software released server bag value is %@", buf, 0x16u);

LABEL_13:
      }
    }

    objc_autoreleasePoolPop(v7);
LABEL_15:
  }
}

void *__65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalHomes")}];
    [*(a1 + 32) hasHH2MigrationAlreadyRequested];
    v7 = HMFBooleanToString();
    *buf = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Going to check whether there are homes in the account or not: [homes = %@] [HH2 migration requested: %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) totalHomes];
  if (!result)
  {
    result = [*(a1 + 32) _verifyAccountStatusForMigration];
    if (result)
    {
      v9 = *(a1 + 32);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_134;
      v10[3] = &unk_279734E28;
      v10[4] = v9;
      return [v9 totalHomesInCloudZones:v10];
    }
  }

  return result;
}

void __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_134(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    if (a2)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
        *buf = 138543618;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Empty Account] : There are still homes in the cloud which are not yet downloaded. : [HomesInCloud : %@]", buf, 0x16u);
      }

LABEL_9:

      objc_autoreleasePoolPop(v6);
      goto LABEL_10;
    }

    if (!+[HMDRemoteLoginUtilities isTwoFactorAuthenticationEnabledForAccount])
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Empty Account] : HSA is not enabled for this account. Cannot move this account to HH2", buf, 0xCu);
      }

      goto LABEL_9;
    }

    [*(a1 + 32) setHasHH2MigrationAlreadyRequested:1];
    v11 = [*(a1 + 32) homeManager];
    v12 = [v11 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_136;
    block[3] = &unk_279735D00;
    block[4] = *(a1 + 32);
    dispatch_async(v12, block);
  }

LABEL_10:
}

void __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_136(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];
  v3 = [v2 moveDirectlyToHH2];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setHasHH2MigrationAlreadyRequested:0];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to create HH2 sentinel zone hence empty account cannot be moved to HH2 for now.", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (BOOL)_verifyAccountStatusForMigration
{
  selfCopy = self;
  v16 = *MEMORY[0x277D85DE8];
  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive])
  {
    if ([(HMDCloudDataSyncStateFilter *)selfCopy hasHH2MigrationAlreadyRequested])
    {
      v3 = objc_autoreleasePoolPush();
      selfCopy = selfCopy;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v5;
        v6 = "%{public}@Migration to HH2 is already requested. Not requesting again.";
LABEL_7:
        _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
LABEL_8:
      }
    }

    else
    {
      if (![(HMDCloudDataSyncStateFilter *)selfCopy networkConnectivityAvailable])
      {
        v3 = objc_autoreleasePoolPush();
        selfCopy = selfCopy;
        v4 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v5;
        v6 = "%{public}@Network is not reachable right now. Not auto migrating account.";
        goto LABEL_7;
      }

      if (![(HMDCloudDataSyncStateFilter *)selfCopy isHomeManagerFirstFetchFinished])
      {
        v3 = objc_autoreleasePoolPush();
        selfCopy = selfCopy;
        v4 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v5;
        v6 = "%{public}@First fetch for Home Manager's zone is not done yet.";
        goto LABEL_7;
      }

      v11 = 0;
      if ([(HMDCloudDataSyncStateFilter *)selfCopy _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v11])
      {
        v3 = objc_autoreleasePoolPush();
        v8 = selfCopy;
        v4 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v5;
        v6 = "%{public}@cloud data is still syncing. Let's re-evaluate HH2 migration condition once it is done";
        goto LABEL_7;
      }

      if (v11 == 1)
      {
        return 1;
      }

      v3 = objc_autoreleasePoolPush();
      v9 = selfCopy;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        *buf = 138543618;
        v13 = v5;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@HH1 data sync state is not good yet. %@", buf, 0x16u);

        goto LABEL_8;
      }
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = selfCopy;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v5;
      v6 = "%{public}@iCloud account is not signed in. Not going to auto migrate empty account.";
      goto LABEL_7;
    }
  }

LABEL_9:

  objc_autoreleasePoolPop(v3);
  return 0;
}

- (void)_evaluateMoveToHH2
{
  [(HMDCloudDataSyncStateFilter *)self _moveDirectlyToHH2IfAccountIsEmpty];

  [(HMDCloudDataSyncStateFilter *)self moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes:1];
}

- (void)evaluateMoveToHH2
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDCloudDataSyncStateFilter_evaluateMoveToHH2__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)areWeAllowedToAutoMigrateEmptyAccountsToHH2
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"stopAutoMigratingEmptyAccountsToHH2"];
  bOOLValue = [v3 BOOLValue];

  return (CFPreferencesGetAppBooleanValue(@"stopAutoMigratingEmptyAccountsToHH2", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) == 0) & ~bOOLValue;
}

- (void)_postNotificationForDataSyncInProgress:(BOOL)progress dataSyncState:(unint64_t)state forcePost:(BOOL)post
{
  progressCopy = progress;
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v9 = [(HMDCloudDataSyncStateFilter *)self _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v18];
  if (post || ((v9 ^ progressCopy) & 1) != 0 || v18 != state)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Posting notification kCloudDataSyncInProgressUpdatedNotification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kCloudDataSyncInProgressUpdatedNotification" object:selfCopy];

    homeManager = [(HMDCloudDataSyncStateFilter *)selfCopy homeManager];
    metricsManager = [homeManager metricsManager];
    deviceStateManager = [metricsManager deviceStateManager];
    [deviceStateManager updateWithDataSyncState:v18];
  }

  [(HMDCloudDataSyncStateFilter *)self _evaluateMoveToHH2];
}

- (void)handleKeychainSyncStateChangedNotification:(id)notification
{
  workQueue = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDCloudDataSyncStateFilter_handleKeychainSyncStateChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __74__HMDCloudDataSyncStateFilter_handleKeychainSyncStateChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v11];
  v3 = *(a1 + 32);
  v4 = +[HMDAppleAccountSettings sharedSettings];
  [v3 _updateKeychainSyncEnabled:{objc_msgSend(v4, "isKeychainSyncEnabled")}];

  [*(a1 + 32) _postNotificationForDataSyncInProgress:v2 dataSyncState:v11 forcePost:0];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) keychainSyncEnabled];
    v10 = @"disabled";
    if (v9)
    {
      v10 = @"enabled";
    }

    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification about keychain sync change, keychain is %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_updateKeychainSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMDCloudDataSyncStateFilter *)self keychainSyncEnabled]== enabled)
  {
    return;
  }

  [(HMDCloudDataSyncStateFilter *)self setKeychainSyncEnabled:enabledCopy];
  if (!self->_decryptionFailed)
  {
    if (!enabledCopy)
    {
      return;
    }

    goto LABEL_8;
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (enabledCopy)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Keychain has been enabled but decryption had failed earlier, starting data reset timers", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDCloudDataSyncStateFilter *)selfCopy _startDataConfigResetTimers];
LABEL_8:
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Keychain just got enabled, requesting an upload if necessary", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    homeManager = [(HMDCloudDataSyncStateFilter *)selfCopy2 homeManager];
    [homeManager determineLocalChangesAndSchedulePush];

    return;
  }

  if (v8)
  {
    v15 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Decryption had failed earlier but keychain is not enabled, stopping data reset timers", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDCloudDataSyncStateFilter *)selfCopy _stopDataConfigResetTimers];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  msgDispatcher = [(HMDCloudDataSyncStateFilter *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = HMDCloudDataSyncStateFilter;
  [(HMDCloudDataSyncStateFilter *)&v5 dealloc];
}

- (HMDCloudDataSyncStateFilter)initWithName:(id)name homeManager:(id)manager messageDispatcher:(id)dispatcher serverTokenAvailable:(BOOL)available homeDataHasBeenDecrypted:(BOOL)decrypted homeManagerServerTokenAvailable:(BOOL)tokenAvailable localDataDecryptionFailed:(BOOL)failed totalHomes:(int64_t)self0 currentAccount:(id)self1
{
  v48 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  accountCopy = account;
  v43.receiver = self;
  v43.super_class = HMDCloudDataSyncStateFilter;
  v20 = [(HMDMessageFilter *)&v43 initWithName:nameCopy];
  if (v20)
  {
    availableCopy = available;
    v21 = HMFGetOSLogHandle();
    logger = v20->_logger;
    v20->_logger = v21;

    v20->_hh1FirstCloudSyncComplete = 0;
    objc_storeStrong(&v20->_msgDispatcher, dispatcher);
    v23 = +[HMDAppleAccountSettings sharedSettings];
    v20->_keychainSyncEnabled = [v23 isKeychainSyncEnabled];

    v24 = objc_autoreleasePoolPush();
    v25 = v20;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      decryptedCopy = decrypted;
      v27 = nameCopy;
      v28 = accountCopy;
      v29 = dispatcherCopy;
      v31 = v30 = managerCopy;
      keychainSyncEnabled = v20->_keychainSyncEnabled;
      *buf = 138543618;
      v45 = v31;
      v46 = 1024;
      v47 = keychainSyncEnabled;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Key chain sync enabled is set to: %d", buf, 0x12u);

      managerCopy = v30;
      dispatcherCopy = v29;
      accountCopy = v28;
      nameCopy = v27;
      decrypted = decryptedCopy;
    }

    objc_autoreleasePoolPop(v24);
    popupTimer = v25->_popupTimer;
    v25->_popupTimer = 0;

    v25->_keychainSyncRequiredPopShown = 0;
    v25->_iCloudAccountActive = 0;
    v25->_cloudDataSyncCompleted = (tokenAvailable | ~decrypted) & availableCopy;
    v25->_serverTokenAvailable = availableCopy;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v25->_uuid;
    v25->_uuid = uUID;

    v25->_totalHomes = homes;
    objc_storeWeak(&v25->_homeManager, managerCopy);
    v25->_remainingDataSyncPeriod = 0.0;
    v36 = +[HMDDeviceCapabilities deviceCapabilities];
    v25->_decryptionFailed = ([v36 supportsStandaloneMode] | decrypted) ^ 1;

    v25->_localDataDecryptionFailed = failed;
    [(HMDCloudDataSyncStateFilter *)v25 _updateCurrentAccount:accountCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v25 selector:sel_handleKeychainSyncStateChangedNotification_ name:@"HMDAppleAccountSettingsKeychainSyncStateUpdatedNotificationKey" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v25 selector:sel__handleCloudZoneReadyNotification_ name:@"HMDCloudZoneReadyNotification" object:0];
  }

  return v20;
}

+ (BOOL)isAllowedMessage:(id)message
{
  v3 = isAllowedMessage__pred;
  messageCopy = message;
  if (v3 != -1)
  {
    dispatch_once(&isAllowedMessage__pred, &__block_literal_global_181);
  }

  v5 = [isAllowedMessage___allowedMessages containsObject:messageCopy];

  return v5;
}

void __48__HMDCloudDataSyncStateFilter_isAllowedMessage___block_invoke()
{
  v18[74] = *MEMORY[0x277D85DE8];
  v18[0] = @"kResetConfigRequestKey";
  v18[1] = @"kQueryHomeKitUsageStateRequestKey";
  v18[2] = @"kSearchForNewAccessoriesRequestKey";
  v18[3] = @"kFetchNewAccessoriesRequestKey";
  v0 = *MEMORY[0x277CD0300];
  v18[4] = *MEMORY[0x277CD01D8];
  v18[5] = v0;
  v1 = *MEMORY[0x277CD0310];
  v18[6] = *MEMORY[0x277CD0368];
  v18[7] = v1;
  v18[8] = *MEMORY[0x277CD2568];
  v18[9] = @"kRetrieveLocationEventRequestKey";
  v2 = *MEMORY[0x277CCFBF8];
  v18[10] = *MEMORY[0x277CCFBF0];
  v18[11] = v2;
  v3 = *MEMORY[0x277CCFCB0];
  v18[12] = @"HMHomeAllowUserManagementMessage";
  v18[13] = v3;
  v4 = *MEMORY[0x277CCFC88];
  v18[14] = *MEMORY[0x277CCFC90];
  v18[15] = v4;
  v5 = *MEMORY[0x277CD0348];
  v18[16] = *MEMORY[0x277CCFCB8];
  v18[17] = v5;
  v6 = *MEMORY[0x277CD1128];
  v18[18] = *MEMORY[0x277CD1108];
  v18[19] = v6;
  v7 = *MEMORY[0x277CD10F8];
  v18[20] = *MEMORY[0x277CD1118];
  v18[21] = v7;
  v8 = *MEMORY[0x277CD1338];
  v18[22] = *MEMORY[0x277CD1110];
  v18[23] = v8;
  v18[24] = @"kSecureServerIDSMessageRequestKey";
  v18[25] = @"kSecureClientIDSMessageRequestKey";
  v18[26] = @"kSecureSessionInvalidatedNotificationKey";
  v18[27] = @"kHomeDataSyncRequestKey";
  v18[28] = @"kHomeDataFragmentedSyncRequestKey";
  v18[29] = @"kAreYouAtHomeRequestKey";
  v18[30] = @"kDoYouSeeUnpairedAccessoriesKey";
  v18[31] = @"kAddRemoteAccessRequestKey";
  v18[32] = @"kUserRemovedRequestKey";
  v18[33] = @"kElectDeviceForIDSSessionKey";
  v18[34] = @"kUserResetHomeConfigRequestKey";
  v18[35] = @"kMetadataDataSyncRequestKey";
  v18[36] = @"kModifyCharacterisiticNotificationsRequestKey";
  v18[37] = @"kCharacterisiticsChangedInternalNotificationKey";
  v18[38] = @"kDismissBulletinInternalRequestKey";
  v18[39] = @"kDismissDialogInternalRequestKey";
  v18[40] = @"kRequestForCompanionKeysSyncInternalRequestKey";
  v18[41] = @"kCompanionKeysSyncInternalRequestKey";
  v18[42] = @"kResidentElectionParametersInternalRequestKey";
  v18[43] = @"kRetrieveVendorIdentifierInternalKey";
  v9 = *MEMORY[0x277CD0318];
  v18[44] = @"kHomeConfigInternalRequestKey";
  v18[45] = v9;
  v18[46] = *MEMORY[0x277CD03C8];
  v18[47] = @"kAccessHomeInviteRequestKey";
  v18[48] = @"kUpdateHomeInvitationStateInternalRequestKey";
  v18[49] = @"kUpdateInvitationStateRequestKey";
  v18[50] = @"kPingInternalRequestKey";
  v18[51] = @"kStartRemoteStreamRequestKey";
  v18[52] = @"kReconfigureRemoteStreamRequestKey";
  v18[53] = @"kNegotitateRemoteStreamRequestKey";
  v18[54] = @"kStopRemoteStreamRequestKey";
  v18[55] = @"kTakeSnapshotRemoteRequestKey";
  v18[56] = @"kTakeSnapshotRemoteReceivedKey";
  v18[57] = @"kEnableAccessoryReachabilityNotificationRequestKey";
  v18[58] = @"kDisableAccessoryReachabilityNotificationRequestKey";
  v18[59] = @"kRemoteReachabilityChangedNotificationKey";
  v10 = *MEMORY[0x277CD0180];
  v18[60] = @"kAddHomeInvitesInternalRequestKey";
  v18[61] = v10;
  v18[62] = @"kDeviceMeshUpdateRequestKey";
  v18[63] = @"kDeviceMeshUpdateKey";
  v18[64] = @"kKeyTransferAgentKey";
  v18[65] = @"kSystemLogCaptureRequestKey";
  v18[66] = *MEMORY[0x277CD23F8];
  v18[67] = @"kRemoteUpdateUserPresenceNotificationKey";
  v18[68] = *MEMORY[0x277CD2330];
  v18[69] = *MEMORY[0x277CD2328];
  v18[70] = *MEMORY[0x277CD2338];
  v11 = MEMORY[0x277CBEB98];
  v18[71] = *MEMORY[0x277CD1070];
  v18[72] = *MEMORY[0x277CD1080];
  v18[73] = @"HMDHouseholdMetricsHomeDataLogEventRequest";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:74];
  v13 = [v11 setWithArray:v12];
  v14 = [v13 mutableCopy];

  v15 = +[HMDRemoteLoginHandler remoteMessages];
  [v14 addObjectsFromArray:v15];

  v16 = objc_msgSend_copy(v14);
  v17 = isAllowedMessage___allowedMessages;
  isAllowedMessage___allowedMessages = v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t108 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t108, &__block_literal_global_176_86573);
  }

  v3 = logCategory__hmf_once_v109;

  return v3;
}

uint64_t __42__HMDCloudDataSyncStateFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v109;
  logCategory__hmf_once_v109 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end