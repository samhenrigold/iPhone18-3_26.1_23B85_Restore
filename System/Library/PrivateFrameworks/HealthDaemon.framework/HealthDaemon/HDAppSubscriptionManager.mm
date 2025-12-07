@interface HDAppSubscriptionManager
- (BOOL)unitTesting_isAwaitingLaunchForBundleID:(id)d dataTypeCode:(int64_t)code;
- (BOOL)unitTesting_isObservingDataTypeCode:(int64_t)code;
- (HDAppSubscriptionManager)init;
- (HDAppSubscriptionManager)initWithProfile:(id)profile backgroundAppRefreshSettings:(id)settings;
- (id)_updateOrCreateSubscription:(void *)subscription value:(void *)value type:(uint64_t)type;
- (void)_isBackgroundAppRefreshDisabledForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)_queue_scheduleLaunches:(void *)launches anchor:(uint64_t)anchor type:;
- (void)ackForBundleID:(id)d dataTypes:(id)types anchor:(id)anchor ackTime:(id)time;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)profileDidBecomeReady:(id)ready;
- (void)removeBundleID:(id)d;
- (void)removeSubscriptionForBundleID:(id)d dataCode:(int64_t)code;
- (void)setAnchor:(id)anchor forDataCode:(int64_t)code type:(int64_t)type;
- (void)subscribeForBundleID:(id)d dataCode:(int64_t)code frequencyInSeconds:(unint64_t)seconds appSDKVersionToken:(unint64_t)token;
@end

@implementation HDAppSubscriptionManager

- (HDAppSubscriptionManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAppSubscriptionManager)initWithProfile:(id)profile backgroundAppRefreshSettings:(id)settings
{
  profileCopy = profile;
  settingsCopy = settings;
  v28.receiver = self;
  v28.super_class = HDAppSubscriptionManager;
  v8 = [(HDAppSubscriptionManager *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_appRefreshSettings, settings);
    v10 = HKCreateSerialDispatchQueue();
    launchQueue = v9->_launchQueue;
    v9->_launchQueue = v10;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingTypeCodesToAnchors = v9->_pendingTypeCodesToAnchors;
    v9->_pendingTypeCodesToAnchors = dictionary;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observedDataTypeCodes = v9->_observedDataTypeCodes;
    v9->_observedDataTypeCodes = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outstandingLaunchesByBundleIdentifier = v9->_outstandingLaunchesByBundleIdentifier;
    v9->_outstandingLaunchesByBundleIdentifier = v16;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    launchTimers = v9->_launchTimers;
    v9->_launchTimers = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    launchTimerLaunchTimes = v9->_launchTimerLaunchTimes;
    v9->_launchTimerLaunchTimes = dictionary3;

    v22 = objc_alloc_init(HDBackgroundAppLauncher);
    backgroundAppLauncher = v9->_backgroundAppLauncher;
    v9->_backgroundAppLauncher = v22;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    [WeakRetained registerProfileReadyObserver:v9 queue:v9->_launchQueue];

    v25 = objc_loadWeakRetained(&v9->_profile);
    database = [v25 database];
    [database addProtectedDataObserver:v9 queue:v9->_launchQueue];
  }

  return v9;
}

- (void)profileDidBecomeReady:(id)ready
{
  v15 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  objc_initWeak(&location, self);
  appRefreshSettings = self->_appRefreshSettings;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HDAppSubscriptionManager_profileDidBecomeReady___block_invoke;
  v10[3] = &unk_278616F38;
  objc_copyWeak(&v11, &location);
  [(HDBackgroundAppRefreshSettings *)appRefreshSettings registerForUpdates:v10 onQueue:self->_launchQueue];
  self->_shouldScheduleLaunches = [(HDBackgroundAppRefreshSettings *)self->_appRefreshSettings backgroundAppRefreshEnabledGlobally];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldScheduleLaunches)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Setting should schedule launches %{public}@", buf, 0xCu);
  }

  launchQueue = self->_launchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HDAppSubscriptionManager_profileDidBecomeReady___block_invoke_315;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(launchQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__HDAppSubscriptionManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    *(WeakRetained + 32) = [WeakRetained[1] backgroundAppRefreshEnabledGlobally];
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
    {
      if (*(v4 + 32))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      *buf = 138543362;
      v6 = v3;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "Updating should schedule launches %{public}@", buf, 0xCu);
    }

    [(HDAppSubscriptionManager *)v4 _queue_scheduleLaunches:0 anchor:0 type:?];
    WeakRetained = v4;
  }
}

- (void)_queue_scheduleLaunches:(void *)launches anchor:(uint64_t)anchor type:
{
  v87 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  if (self)
  {
    if (*(self + 32))
    {
      if (HDBackgroundObservationSupportedForDataTypeCode(a2))
      {
        anchorCopy = anchor;
        v57 = launchesCopy;
        if (a2 < 0 || (v8 = *(self + 16), [MEMORY[0x277CCABB0] numberWithInteger:a2], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8 & 1) != 0))
        {
          v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v81 = __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke;
          v82 = &unk_2786168E0;
          selfCopy = self;
          selfCopy2 = self;
          v54 = a2;
          v86 = a2;
          v13 = v11;
          v84 = v13;
          v56 = v10;
          v85 = v56;
          if (HKWithAutoreleasePool())
          {
            v55 = objc_msgSend_copy(v13);
          }

          else
          {
            v55 = 0;
          }

          v52 = 0;
          if (!v55)
          {
            v25 = &unk_283CB0B88;
            if (v57)
            {
              v25 = v57;
            }

            v26 = *(self + 64);
            v27 = MEMORY[0x277CCABB0];
            v28 = v25;
            v29 = [v27 numberWithInteger:v54];
            v30 = [v26 objectForKeyedSubscript:v29];
            v31 = [HDAppSubscriptionManager _updateOrCreateSubscription:v30 value:v28 type:anchorCopy];

            v32 = *(self + 64);
            v33 = [MEMORY[0x277CCABB0] numberWithInteger:v54];
            [v32 setObject:v31 forKeyedSubscript:v33];

            _HKInitializeLogging();
            v34 = *MEMORY[0x277CCC288];
            if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v52;
              _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "Failed to look up app subscriptions: %{public}@", &buf, 0xCu);
            }

            goto LABEL_44;
          }

          if (![v55 count])
          {
LABEL_44:

            launchesCopy = v57;
            goto LABEL_45;
          }

          if (!_HKValidDataTypeCode())
          {
            _HKInitializeLogging();
            v35 = *MEMORY[0x277CCC288];
            if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "Scheduling launches for all data codes.", &buf, 2u);
            }

            goto LABEL_33;
          }

          v20 = [MEMORY[0x277CCD720] dataTypeWithCode:a2];
          identifier = [v20 identifier];
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC288];
          v23 = os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT);
          if (identifier)
          {
            if (v23)
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = identifier;
              v24 = "Scheduling launches for %@";
LABEL_31:
              _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, v24, &buf, 0xCu);
            }
          }

          else if (v23)
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v54;
            v24 = "Scheduling launches for %lu";
            goto LABEL_31;
          }

LABEL_33:
          v36 = v55;
          v50 = v56;
          v51 = v57;
          v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v36, "count")}];
          v75 = 0;
          v76 = &v75;
          v77 = 0x2810000000;
          v78 = &unk_22929BC4D;
          v79 = 0;
          v38 = dispatch_group_create();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = v36;
          v39 = [obj countByEnumeratingWithState:&v71 objects:&buf count:16];
          if (v39)
          {
            v40 = *v72;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v72 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v71 + 1) + 8 * i);
                bundleIdentifier = [v42 bundleIdentifier];
                WeakRetained = objc_loadWeakRetained((selfCopy + 40));
                [HDAppSubscriptionAppLaunchEntity appSDKVersionTokenForBundleID:bundleIdentifier profile:WeakRetained error:0];

                if (dyld_version_token_at_least())
                {
                  dispatch_group_enter(v38);
                  v65[0] = MEMORY[0x277D85DD0];
                  v65[1] = 3221225472;
                  v65[2] = __107__HDAppSubscriptionManager__updateSubscriptionsBasedOnBARSwitchState_lastLaunchTimes_dataCode_anchor_type___block_invoke;
                  v65[3] = &unk_27861CF20;
                  v70 = &v75;
                  v66 = v37;
                  v67 = v42;
                  v45 = bundleIdentifier;
                  v68 = v45;
                  v69 = v38;
                  [selfCopy _isBackgroundAppRefreshDisabledForBundleIdentifier:v45 completion:v65];
                }

                else
                {
                  os_unfair_lock_lock(v76 + 8);
                  [v37 addObject:v42];
                  os_unfair_lock_unlock(v76 + 8);
                }
              }

              v39 = [obj countByEnumeratingWithState:&v71 objects:&buf count:16];
            }

            while (v39);
          }

          v46 = *(selfCopy + 56);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __107__HDAppSubscriptionManager__updateSubscriptionsBasedOnBARSwitchState_lastLaunchTimes_dataCode_anchor_type___block_invoke_320;
          block[3] = &unk_27861CF48;
          block[4] = selfCopy;
          v60 = v37;
          v47 = v50;
          v61 = v47;
          v63 = v54;
          v48 = v51;
          v62 = v48;
          v64 = anchorCopy;
          v49 = v37;
          dispatch_group_notify(v38, v46, block);

          _Block_object_dispose(&v75, 8);
          goto LABEL_44;
        }

        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC288];
        launchesCopy = v57;
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = a2;
          v15 = "Ignoring scheduling launches for unobserved type %ld";
          goto LABEL_21;
        }
      }

      else
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = a2;
          v15 = "Ignoring scheduling launches for unsupported type %ld";
LABEL_21:
          v16 = v19;
          v17 = OS_LOG_TYPE_INFO;
          v18 = 12;
          goto LABEL_22;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v15 = "Not scheduling launches";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 2;
LABEL_22:
        _os_log_impl(&dword_228986000, v16, v17, v15, &buf, v18);
      }
    }
  }

LABEL_45:
}

void __107__HDAppSubscriptionManager__updateSubscriptionsBasedOnBARSwitchState_lastLaunchTimes_dataCode_anchor_type___block_invoke(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "BAR is disabled for app: %{public}@", &v5, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) addObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 56));
}

void __107__HDAppSubscriptionManager__updateSubscriptionsBasedOnBARSwitchState_lastLaunchTimes_dataCode_anchor_type___block_invoke_320(uint64_t a1)
{
  v104 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v80 = *(a1 + 64);
  v78 = *(a1 + 72);
  v74 = *(a1 + 40);
  v81 = v2;
  v84 = v3;
  if (!v1)
  {
    goto LABEL_58;
  }

  WeakRetained = objc_loadWeakRetained((v1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_57;
  }

  v85 = v1;
  v73 = WeakRetained;
  v5 = [WeakRetained daemon];
  v76 = [v5 contentProtectionManager];

  v83 = time(0);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v74;
  v82 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (!v82)
  {
    goto LABEL_56;
  }

  v79 = *v94;
  v6 = v84;
  if (!v84)
  {
    v6 = &unk_283CB0B88;
  }

  v75 = v6;
  do
  {
    for (i = 0; i != v82; ++i)
    {
      if (*v94 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v93 + 1) + 8 * i);
      v86 = [v8 bundleIdentifier];
      v9 = [v81 objectForKeyedSubscript:v86];
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = MEMORY[0x277CCACA8];
        v13 = MEMORY[0x277CCABB0];
        v14 = v84;
        v15 = v8;
        v16 = [v13 numberWithInteger:{objc_msgSend(v15, "dataCode")}];
        v17 = [v15 bundleIdentifier];

        v18 = [v12 stringWithFormat:@"%@|%@.%@", v16, v75, v17];

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.healthd.scheduled.", v18];

        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Setting next launch time for %@", buf, 0xCu);
      }

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        v22 = [v8 lastAckTime];
        v23 = [v8 updateFrequency];
        *buf = 134218240;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_INFO, "Last Ack: %lld - Update Freq: %lld", buf, 0x16u);
      }

      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        v26 = [v9 longLongValue];
        v27 = [v8 launchTimeHysteresis];
        *buf = 134218240;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_INFO, "Last Launch: %lld - Hyst: %lld", buf, 0x16u);
      }

      v28 = [v8 lastAckTime];
      v29 = [v8 updateFrequency];
      v30 = [v9 longLongValue];
      v31 = [v8 launchTimeHysteresis];
      if (v29 + v28 <= (v31 + v30))
      {
        v32 = v31 + v30;
      }

      else
      {
        v32 = v29 + v28;
      }

      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = v83;
        *&buf[22] = 2048;
        v99 = (v32 - v83);
        _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "Next Launch: %lld - Now: %lld - Time Diff: %lld seconds", buf, 0x20u);
      }

      if (_HDIsUnitTesting || v32 <= v83)
      {
        if ([v76 isProtectedDataAvailable])
        {
          v43 = v8;
          v35 = v84;
          v44 = [v43 bundleIdentifier];
          v45 = objc_loadWeakRetained((v85 + 40));
          v46 = [v45 daemon];
          v47 = [v46 behavior];
          v48 = [v47 isAppleInternalInstall];

          if (v48)
          {
            v49 = MEMORY[0x277CCACA8];
            v50 = [MEMORY[0x277CCD720] dataTypeWithCode:{objc_msgSend(v43, "dataCode")}];
            v41 = [v49 stringWithFormat:@"%@ for %@ (anchor: %@)", v44, v50, v35];
          }

          else
          {
            v41 = v44;
          }

          v34 = v43;
          v54 = [v34 bundleIdentifier];
          v55 = [*(v85 + 24) objectForKeyedSubscript:v54];
          if (!v55)
          {
            v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
            if (v54)
            {
              [*(v85 + 24) setObject:v55 forKeyedSubscript:v54];
            }
          }

          if (v84)
          {
            v56 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "dataCode")}];
            v57 = [v55 objectForKeyedSubscript:v56];

            if (!v57)
            {
              v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v58 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "dataCode")}];
              [v55 setObject:v57 forKeyedSubscript:v58];

              v59 = [v55 objectForKeyedSubscript:&unk_283CB0B88];
              LODWORD(v58) = v59 == 0;

              if (v58)
              {
                [(NSMutableArray *)v57 incrementReference];
              }
            }

            [(NSMutableArray *)v57 incrementReference];
          }

          else
          {
            v60 = [v55 objectForKeyedSubscript:&unk_283CB0B88];
            v61 = v60 == 0;

            if (v61)
            {
              v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v55 setObject:v62 forKeyedSubscript:&unk_283CB0B88];
            }

            v57 = [v55 objectForKeyedSubscript:&unk_283CB0B88];
            [v57 addObject:&unk_283CB0B88];
          }

          v63 = v85;
          if (_HDIsUnitTesting)
          {
            v64 = *(v85 + 104);
            if (v64)
            {
              v65 = [v34 bundleIdentifier];
              (*(v64 + 16))(v64, v65, 1);

              v63 = v85;
            }
          }

          [*(v63 + 48) requestAppLaunchWithBundleID:v44 updateFrequency:{objc_msgSend(v34, "updateFrequency")}];
          _HKInitializeLogging();
          v66 = *MEMORY[0x277CCC288];
          if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v41;
            _os_log_impl(&dword_228986000, v66, OS_LOG_TYPE_DEFAULT, "Requesting Duet to launch for %{public}@", buf, 0xCu);
          }

          v67 = [v34 dataCode];
          v68 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
          v69 = v44;
          v70 = v68;
          v71 = *(v85 + 56);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __64__HDAppSubscriptionManager__updateBundleID_dataCode_launchTime___block_invoke;
          v99 = &unk_2786131A8;
          v100 = v85;
          v37 = v69;
          v101 = v37;
          v103 = v67;
          v72 = v70;
          v102 = v72;
          dispatch_async(v71, buf);
        }

        else
        {
          _HKInitializeLogging();
          v51 = *MEMORY[0x277CCC288];
          if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_DEFAULT, "Adding code to pending type codes", buf, 2u);
          }

          v52 = *(v85 + 64);
          v34 = [MEMORY[0x277CCABB0] numberWithInteger:v80];
          v35 = [v52 objectForKeyedSubscript:v34];
          v37 = [HDAppSubscriptionManager _updateOrCreateSubscription:v35 value:v84 type:v78];
          v53 = *(v85 + 64);
          v41 = [MEMORY[0x277CCABB0] numberWithInteger:v80];
          [v53 setObject:v37 forKeyedSubscript:v41];
        }
      }

      else
      {
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:v80];
        v35 = [*(v85 + 72) objectForKeyedSubscript:v34];
        v36 = [*(v85 + 80) objectForKeyedSubscript:v34];
        v37 = v36;
        if (v35)
        {
          if ([v36 longLongValue] <= v32)
          {
            goto LABEL_54;
          }

          dispatch_source_cancel(v35);
        }

        _HKInitializeLogging();
        v38 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          *&buf[4] = v32 - v83;
          _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Setting timer with interval %{public}lld", buf, 0xCu);
        }

        v39 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v85 + 56));
        v40 = dispatch_walltime(0, 0);
        dispatch_source_set_timer(v39, v40, 1000000000 * (v32 - v83), 0x1DCD6500uLL);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v99 = 0;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __112__HDAppSubscriptionManager__queue_scheduleLaunchesForAllowedSubscriptions_lastLaunchTimes_dataCode_anchor_type___block_invoke;
        handler[3] = &unk_27861CF98;
        v91 = buf;
        handler[4] = v85;
        v41 = v39;
        v88 = v41;
        v34 = v34;
        v89 = v34;
        v90 = v84;
        v92 = v78;
        dispatch_source_set_event_handler(v41, handler);
        dispatch_resume(v41);
        [*(v85 + 72) setObject:v41 forKeyedSubscript:v34];
        v42 = [MEMORY[0x277CCABB0] numberWithLongLong:v32];
        [*(v85 + 80) setObject:v42 forKeyedSubscript:v34];

        _Block_object_dispose(buf, 8);
      }

LABEL_54:
    }

    v82 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
  }

  while (v82);
LABEL_56:

  WeakRetained = v73;
LABEL_57:

LABEL_58:
}

- (void)_isBackgroundAppRefreshDisabledForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (([(HDBackgroundAppRefreshSettings *)self->_appRefreshSettings backgroundAppRefreshEnabledGlobally]& 1) != 0)
  {
    appRefreshSettings = self->_appRefreshSettings;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__HDAppSubscriptionManager__isBackgroundAppRefreshDisabledForBundleIdentifier_completion___block_invoke;
    v9[3] = &unk_27861CF70;
    v10 = completionCopy;
    [(HDBackgroundAppRefreshSettings *)appRefreshSettings backgroundAppRefreshEnabledForApp:identifierCopy completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (id)_updateOrCreateSubscription:(void *)subscription value:(void *)value type:(uint64_t)type
{
  subscriptionCopy = subscription;
  valueCopy = value;
  if (subscriptionCopy)
  {
    if (type == 1)
    {
      [subscriptionCopy updateAssociationAnchor:valueCopy];
    }

    else if (!type)
    {
      [subscriptionCopy updateDataAnchor:valueCopy];
    }

    goto LABEL_9;
  }

  if (type == 1)
  {
    v7 = objc_alloc(MEMORY[0x277CCD858]);
    v8 = 0;
    v9 = valueCopy;
  }

  else
  {
    if (type)
    {
LABEL_9:
      v10 = subscriptionCopy;
      goto LABEL_12;
    }

    v7 = objc_alloc(MEMORY[0x277CCD858]);
    v8 = valueCopy;
    v9 = 0;
  }

  v10 = [v7 initWithDataAnchor:v8 associationAnchor:v9];
LABEL_12:
  v11 = v10;

  return v11;
}

void __112__HDAppSubscriptionManager__queue_scheduleLaunchesForAllowedSubscriptions_lastLaunchTimes_dataCode_anchor_type___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8);
  v2 = *(v1 + 24);
  if (v2 == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 72);
    v8 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    if (v4)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Timer fired, scheduling launches", buf, 2u);
      }

      v12 = MEMORY[0x277CCD288];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timer fired", objc_opt_class()];
      v14 = [v12 transactionWithName:v13];

      v15 = *(v4 + 56);
      *buf = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __63__HDAppSubscriptionManager__launchTimerFired_code_anchor_type___block_invoke;
      v20 = &unk_27861D010;
      v21 = v4;
      v22 = v9;
      v23 = v10;
      v26 = v7;
      v24 = v8;
      v25 = v14;
      v16 = v14;
      dispatch_async(v15, buf);
    }

    v1 = *(*(a1 + 64) + 8);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
}

uint64_t __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  [(HDMutableDatabaseTransactionContext *)v4 setCacheScope:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v6 = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke_2;
  v11[3] = &unk_278613550;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = *(a1 + 56);
  v11[4] = v7;
  v12 = v8;
  v13 = *(a1 + 48);
  v9 = [v6 performTransactionWithContext:v4 error:a2 block:v11 inaccessibilityHandler:0];

  return v9;
}

BOOL __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v7 = [HDAppSubscriptionEntity allSubscriptionsForType:v5 profile:WeakRetained error:a3];

  if (v7)
  {
    if (![v7 count])
    {
      v8 = *(*(a1 + 32) + 16);
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
      [v8 removeObject:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = *(*(a1 + 32) + 16);
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "dataCode")}];
          [v17 addObject:v18];

          v19 = [v16 bundleIdentifier];
          v20 = [v10 objectForKeyedSubscript:v19];
          if (!v20)
          {
            v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v10 setObject:v20 forKeyedSubscript:v19];
          }

          v21 = [v16 objectType];
          if (v21)
          {
            [v20 setObject:v16 forKeyedSubscript:v21];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v13);
    }

    v22 = *(a1 + 32);
    v23 = *(v22 + 96);
    if (v23)
    {
      (*(v23 + 16))();
      v22 = *(a1 + 32);
    }

    v24 = objc_loadWeakRetained((v22 + 40));
    v25 = [v24 sourceManager];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke_3;
    v31[3] = &unk_27861CFE8;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = *(a1 + 48);
    v28 = v25;
    [v10 enumerateKeysAndObjectsUsingBlock:v31];

    v7 = v30;
  }

  return v7 != 0;
}

void __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v30 = 0;
  v9 = [v8 clientSourceForBundleIdentifier:v5 error:&v30];
  v10 = v30;
  v11 = v10;
  if (v9)
  {
    if (([v9 _options] & 4) != 0)
    {
      v24 = v7;
      v15 = objc_alloc(MEMORY[0x277CBEB98]);
      v16 = [v6 allKeys];
      v17 = [v15 initWithArray:v16];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
      v29 = 0;
      v19 = [HDAuthorizationEntity readAuthorizationStatusesByTypeForBundleIdentifier:v5 types:v17 profile:WeakRetained error:&v29];
      v13 = v29;

      if (v19)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke_342;
        v25[3] = &unk_27861CFC0;
        v26 = v6;
        v27 = *(a1 + 48);
        v28 = v5;
        [v19 enumerateKeysAndObjectsUsingBlock:v25];
      }

      else
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v32 = v5;
          v33 = 2114;
          v34 = v13;
          _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to look up authorizations for bundle identifier %{public}@: %{public}@", buf, 0x16u);
        }
      }

      v7 = v24;
      goto LABEL_15;
    }

LABEL_3:
    v12 = *(a1 + 48);
    v13 = [v6 allValues];
    [v12 addObjectsFromArray:v13];
LABEL_15:

    v22 = objc_loadWeakRetained((*(a1 + 40) + 40));
    v23 = [HDAppSubscriptionAppLaunchEntity launchTimeForBundleID:v5 profile:v22 error:0];

    if (v23)
    {
      [*(a1 + 56) setObject:v23 forKeyedSubscript:v5];
    }

    goto LABEL_18;
  }

  if (v10)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v5;
      v33 = 2114;
      v34 = v11;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to look up source with bundle identifier %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if ([v5 hasPrefix:@"com.apple."])
    {
      goto LABEL_3;
    }

    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v32 = v5;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_INFO, "Source for bundle identifier %{public}@ not found", buf, 0xCu);
    }
  }

LABEL_18:

  objc_autoreleasePoolPop(v7);
}

void __93__HDAppSubscriptionManager__updateObservationStatusForDataTypeCode_lastAppLaunchTimes_error___block_invoke_342(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    if ([v6 canRead])
    {
      [*(a1 + 40) addObject:v7];
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        v10 = v8;
        v11 = [v5 identifier];
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring subscription for %{public}@ to %@ because app does not have authorization to read", &v12, 0x16u);
      }
    }
  }
}

uint64_t __63__HDAppSubscriptionManager__launchTimerFired_code_anchor_type___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 80) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {
    -[HDAppSubscriptionManager _queue_scheduleLaunches:anchor:type:](*(a1 + 32), [v2 integerValue], *(a1 + 48), *(a1 + 72));
  }

  dispatch_source_cancel(*(a1 + 56));
  v3 = *(a1 + 64);

  return [v3 invalidate];
}

void __75__HDAppSubscriptionManager__queue_ackForBundleID_dataTypes_anchor_ackTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 firstObject];
    v8 = v7;
    if (v7 && [v7 unsignedIntegerValue])
    {
      v9 = [v8 unsignedIntegerValue];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9 - 1];
      [v6 replaceObjectAtIndex:0 withObject:v10];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (![(NSMutableArray *)v6 currentReferenceCount])
    {
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "code")}];
      [v11 removeObjectForKey:v12];
    }
  }
}

void __64__HDAppSubscriptionManager__updateBundleID_dataCode_launchTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionAppLaunchEntity setLaunchTime:v4 forBundleID:v5 profile:WeakRetained error:0];

    v7 = objc_loadWeakRetained((v1 + 40));
    v15 = [HDAppSubscriptionEntity subscriptionForBundleID:v5 dataCode:v2 profile:v7 error:0];

    v8 = [v15 launchTimeHysteresis];
    if (2 * v8 >= 1209600)
    {
      v9 = 1209600;
    }

    else
    {
      v9 = 2 * v8;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    v11 = objc_alloc(MEMORY[0x277CBEB98]);
    v12 = [MEMORY[0x277CCD720] dataTypeWithCode:v2];
    v13 = [v11 initWithObjects:{v12, 0}];
    v14 = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionEntity setLaunchTimeHysteresis:v10 forBundleID:v5 dataTypes:v13 profile:v14 error:0];
  }
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_launchQueue);
  if (availableCopy)
  {
    v6 = +[HDMutableDatabaseTransactionContext contextForWriting];
    v7 = [v6 mutableCopy];

    [v7 setCacheScope:1];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v13[4] = self;
    v14 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HDAppSubscriptionManager_database_protectedDataDidBecomeAvailable___block_invoke;
    v13[3] = &unk_278616048;
    v10 = [database performTransactionWithContext:v7 error:&v14 block:v13 inaccessibilityHandler:0];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to update scheduled launch times: %{public}@", buf, 0xCu);
      }
    }
  }
}

uint64_t __69__HDAppSubscriptionManager_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1)
{
  v2 = objc_msgSend_copy(*(*(a1 + 32) + 64));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HDAppSubscriptionManager_database_protectedDataDidBecomeAvailable___block_invoke_2;
  v4[3] = &unk_27861D060;
  v4[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  return 1;
}

void __69__HDAppSubscriptionManager_database_protectedDataDidBecomeAvailable___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v10 dataAnchor];
  if (v6)
  {
    [v10 dataAnchor];
  }

  else
  {
    [v10 associationAnchor];
  }
  v7 = ;

  v8 = [v10 dataAnchor];
  v9 = v8 == 0;

  -[HDAppSubscriptionManager _queue_scheduleLaunches:anchor:type:](*(a1 + 32), [v5 integerValue], v7, v9);
  [*(*(a1 + 32) + 64) removeObjectForKey:v5];
}

- (void)removeSubscriptionForBundleID:(id)d dataCode:(int64_t)code
{
  dCopy = d;
  launchQueue = self->_launchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDAppSubscriptionManager_removeSubscriptionForBundleID_dataCode___block_invoke;
  block[3] = &unk_278614E78;
  block[4] = self;
  v10 = dCopy;
  codeCopy = code;
  v8 = dCopy;
  dispatch_async(launchQueue, block);
}

void __67__HDAppSubscriptionManager_removeSubscriptionForBundleID_dataCode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionEntity removeSubscriptionsWithBundleID:v3 dataCode:v2 profile:WeakRetained error:0];
  }
}

- (void)removeBundleID:(id)d
{
  dCopy = d;
  launchQueue = self->_launchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HDAppSubscriptionManager_removeBundleID___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(launchQueue, v7);
}

void __43__HDAppSubscriptionManager_removeBundleID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionEntity removeSubscriptionsWithBundleID:v2 dataCode:-1 profile:WeakRetained error:0];

    v4 = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionAppLaunchEntity removeBundleIdentifier:v2 profile:v4 error:0];
  }
}

- (void)subscribeForBundleID:(id)d dataCode:(int64_t)code frequencyInSeconds:(unint64_t)seconds appSDKVersionToken:(unint64_t)token
{
  dCopy = d;
  launchQueue = self->_launchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HDAppSubscriptionManager_subscribeForBundleID_dataCode_frequencyInSeconds_appSDKVersionToken___block_invoke;
  block[3] = &unk_27861D088;
  block[4] = self;
  v14 = dCopy;
  codeCopy = code;
  secondsCopy = seconds;
  tokenCopy = token;
  v12 = dCopy;
  dispatch_async(launchQueue, block);
}

void __96__HDAppSubscriptionManager_subscribeForBundleID_dataCode_frequencyInSeconds_appSDKVersionToken___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  if (v1)
  {
    if (HDBackgroundObservationSupportedForDataTypeCode(v2))
    {
      v6 = *(v1 + 16);
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
      [v6 addObject:v7];

      v8 = *(v1 + 96);
      if (v8)
      {
        (*(v8 + 16))();
      }

      WeakRetained = objc_loadWeakRetained((v1 + 40));
      v10 = [HDAppSubscriptionEntity subscriptionForBundleID:v5 dataCode:v2 profile:WeakRetained error:0];

      if (v10 && [v10 updateFrequency] == v3)
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v20 = v5;
          v21 = 2048;
          v22 = v2;
          v23 = 2048;
          v24 = v3;
          _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Ignoring app subscription request since %@ is already subscribed for %ld at freq %llu", buf, 0x20u);
        }
      }

      else
      {
        v13 = objc_loadWeakRetained((v1 + 40));
        [HDAppSubscriptionEntity addSubscriptionWithBundleID:v5 dataCode:v2 updateFrequency:v3 profile:v13 error:0];

        v14 = objc_loadWeakRetained((v1 + 40));
        [HDAppSubscriptionAppLaunchEntity insertOrUpdateAppSDKVersionToken:v4 forBundleID:v5 profile:v14 error:0];

        v15 = objc_alloc(MEMORY[0x277CBEB98]);
        v16 = [MEMORY[0x277CCD720] dataTypeWithCode:v2];
        v17 = [v15 initWithObjects:{v16, 0}];
        v18 = objc_loadWeakRetained((v1 + 40));
        [HDAppSubscriptionEntity setLaunchTimeHysteresis:&unk_283CB0BA0 forBundleID:v5 dataTypes:v17 profile:v18 error:0];

        [(HDAppSubscriptionManager *)v1 _queue_scheduleLaunches:v2 anchor:0 type:0];
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v20 = v2;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Ignoring app subscription for unsupported type %ld", buf, 0xCu);
      }
    }
  }
}

- (void)setAnchor:(id)anchor forDataCode:(int64_t)code type:(int64_t)type
{
  anchorCopy = anchor;
  launchQueue = self->_launchQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HDAppSubscriptionManager_setAnchor_forDataCode_type___block_invoke;
  v11[3] = &unk_278616F60;
  v11[4] = self;
  v12 = anchorCopy;
  codeCopy = code;
  typeCopy = type;
  v10 = anchorCopy;
  dispatch_async(launchQueue, v11);
}

- (void)ackForBundleID:(id)d dataTypes:(id)types anchor:(id)anchor ackTime:(id)time
{
  dCopy = d;
  typesCopy = types;
  anchorCopy = anchor;
  timeCopy = time;
  launchQueue = self->_launchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HDAppSubscriptionManager_ackForBundleID_dataTypes_anchor_ackTime___block_invoke;
  block[3] = &unk_27861D0B0;
  block[4] = self;
  v20 = dCopy;
  v21 = typesCopy;
  v22 = anchorCopy;
  v23 = timeCopy;
  v15 = timeCopy;
  v16 = anchorCopy;
  v17 = typesCopy;
  v18 = dCopy;
  dispatch_async(launchQueue, block);
}

void __68__HDAppSubscriptionManager_ackForBundleID_dataTypes_anchor_ackTime___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if (v1)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v46 = v7;
      LOWORD(v47) = 2112;
      *(&v47 + 2) = v8;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Acking '%@' with '%@' to anchor %@ and ackTime %@.", buf, 0x2Au);
    }

    WeakRetained = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionEntity setLastAnchor:v7 lastAckTime:v8 forBundleID:v5 dataTypes:v6 profile:WeakRetained error:0];

    v11 = objc_loadWeakRetained((v1 + 40));
    [HDAppSubscriptionEntity setLaunchTimeHysteresis:&unk_283CB0BA0 forBundleID:v5 dataTypes:v6 profile:v11 error:0];

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v1 + 24);
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Outstanding launches: %{public}@", buf, 0xCu);
    }

    v14 = [*(v1 + 24) objectForKeyedSubscript:v5];
    v15 = v14;
    if (v14)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __75__HDAppSubscriptionManager__queue_ackForBundleID_dataTypes_anchor_ackTime___block_invoke;
      v46 = &unk_27861D038;
      v16 = v14;
      *&v47 = v16;
      *(&v47 + 1) = &v39;
      [v6 enumerateObjectsUsingBlock:buf];
      if (!*(v40 + 24) || ![v6 count])
      {
        v17 = [v16 objectForKeyedSubscript:&unk_283CB0B88];
        v18 = v17;
        if (v17)
        {
          if ([v17 count])
          {
            [v18 removeObjectAtIndex:0];
          }

          if (![v18 count])
          {
            [v16 removeObjectForKey:&unk_283CB0B88];
          }
        }
      }

      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 138543362;
        v44 = v16;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "Launch anchors after ack %{public}@", v43, 0xCu);
      }

      if (![v16 count])
      {
        [*(v1 + 24) removeObjectForKey:v5];
        [*(v1 + 48) requestAssertionInvalidationForBundleID:v5];
        v20 = objc_loadWeakRetained((v1 + 40));
        v21 = [v20 daemon];
        v22 = [v21 behavior];
        v23 = [v22 isAppleInternalInstall];

        if (v23)
        {
          v24 = MEMORY[0x277CBEBD0];
          v25 = v5;
          v38 = [v24 standardUserDefaults];
          v37 = [v38 objectForKey:@"HDBackgroundLaunchInvalidationStringsKey"];
          v26 = MEMORY[0x277CCACA8];
          v27 = MEMORY[0x277CBEAA8];
          v28 = v25;
          v29 = [v27 date];
          v36 = [v26 stringWithFormat:@"[%@]: %@", v29, v28];

          if (v37)
          {
            v30 = [v37 stringByAppendingFormat:@"\n%@", v36];
            v31 = [v30 componentsSeparatedByString:@"\n"];
            if ([v31 count] <= 0xA)
            {
              v33 = v30;
            }

            else
            {
              v32 = [v31 mutableCopy];
              [v32 removeLastObject];
              v33 = [v32 componentsJoinedByString:@"\n"];
            }
          }

          else
          {
            v33 = v36;
          }

          [v38 setObject:v33 forKey:@"HDBackgroundLaunchInvalidationStringsKey"];
        }

        v34 = *(v1 + 104);
        if (v34)
        {
          (*(v34 + 16))(v34, v5, 0);
        }

        _HKInitializeLogging();
        v35 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 138543362;
          v44 = v5;
          _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "Requesting Duet to invalidate launch for %{public}@", v43, 0xCu);
        }
      }

      _Block_object_dispose(&v39, 8);
    }
  }
}

- (BOOL)unitTesting_isObservingDataTypeCode:(int64_t)code
{
  observedDataTypeCodes = self->_observedDataTypeCodes;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  LOBYTE(observedDataTypeCodes) = [(NSMutableSet *)observedDataTypeCodes containsObject:v4];

  return observedDataTypeCodes;
}

- (BOOL)unitTesting_isAwaitingLaunchForBundleID:(id)d dataTypeCode:(int64_t)code
{
  v5 = [(NSMutableDictionary *)self->_outstandingLaunchesByBundleIdentifier objectForKeyedSubscript:d];
  if (code == -1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 containsObject:&unk_283CB0B88];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:code];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [(NSMutableArray *)v7 currentReferenceCount]!= 0;
  }

  return v8;
}

@end