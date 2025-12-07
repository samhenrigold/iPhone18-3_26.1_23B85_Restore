@interface HDWorkoutMirroringManager
- (HDWorkoutMirroringManager)initWithWorkoutManager:(id)manager;
- (id)activeSessionBundleIdentifier;
- (void)_createServerWithData:(id)data completion:(id)completion;
- (void)_takeBackgroundRuntimeAssertionForProcessWithBundleIdentifier:(id)identifier pid:(int)pid;
- (void)dealloc;
- (void)launchClientWithBundleIdentifier:(id)identifier;
- (void)rapportMessenger:(id)messenger didReceiveRequest:(id)request data:(id)data responseHandler:(id)handler;
- (void)recoverMirroredWorkoutSessionWithCompletion:(id)completion;
- (void)setActiveSessionBundleIdentifier:(id)identifier;
@end

@implementation HDWorkoutMirroringManager

- (HDWorkoutMirroringManager)initWithWorkoutManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = HDWorkoutMirroringManager;
  v5 = [(HDWorkoutMirroringManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workoutManager, managerCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionsByBundleIdentifier = v6->_assertionsByBundleIdentifier;
    v6->_assertionsByBundleIdentifier = v7;

    v9 = objc_alloc_init(HDMirroredWorkoutAnalyticsCollector);
    analyticsCollector = v6->_analyticsCollector;
    v6->_analyticsCollector = v9;

    WeakRetained = objc_loadWeakRetained(&v6->_workoutManager);
    profile = [WeakRetained profile];
    [profile registerProfileReadyObserver:v6 queue:0];

    v13 = objc_loadWeakRetained(&v6->_workoutManager);
    profile2 = [v13 profile];
    rapportMessenger = [profile2 rapportMessenger];
    [rapportMessenger addObserver:v6 forSchemaIdentifier:0];
  }

  return v6;
}

- (void)dealloc
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_assertionsByBundleIdentifier allValues];
  v4 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    v8 = MEMORY[0x277CCC330];
    *&v5 = 138543618;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isValid])
        {
          v16 = 0;
          v11 = [v10 invalidateSyncWithError:&v16];
          v12 = v16;
          if ((v11 & 1) == 0)
          {
            _HKInitializeLogging();
            v13 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
            {
              *buf = v14;
              selfCopy = self;
              v23 = 2114;
              v24 = v12;
              _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to invalidate existing background runtime assertion with error: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v15.receiver = self;
  v15.super_class = HDWorkoutMirroringManager;
  [(HDWorkoutMirroringManager *)&v15 dealloc];
}

- (void)setActiveSessionBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  profile = [WeakRetained profile];
  v7 = HDMirroredWorkoutSessionKeyValueDomainWithProfile(profile);

  v13 = 0;
  LOBYTE(WeakRetained) = [v7 setString:identifierCopy forKey:@"active-session-bundle-id" error:&v13];

  v8 = v13;
  if ((WeakRetained & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = objc_opt_class();
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v8;
      v12 = v11;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to persist the active mirrored session bundle identifier: %{public}@.", buf, 0x16u);
    }
  }
}

- (id)activeSessionBundleIdentifier
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  profile = [WeakRetained profile];
  v4 = HDMirroredWorkoutSessionKeyValueDomainWithProfile(profile);

  v9 = 0;
  v5 = [v4 stringForKey:@"active-session-bundle-id" error:&v9];
  v6 = v9;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[mirroring] Failed to read active session bundle identifier: %{public}@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)rapportMessenger:(id)messenger didReceiveRequest:(id)request data:(id)data responseHandler:(id)handler
{
  v89 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  requestCopy = request;
  dataCopy = data;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  currentWorkout = [WeakRetained currentWorkout];

  if (currentWorkout)
  {
    if (([currentWorkout isMirroring] & 1) == 0)
    {
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

      if ((isAppleWatch & 1) == 0)
      {
        if (![currentWorkout sessionType])
        {
          v40 = [MEMORY[0x277CCA9B8] hk_error:8 description:@"Another session is in progress"];
          handlerCopy[2](handlerCopy, 0, v40);

          goto LABEL_37;
        }

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          v50 = v18;
          v51 = objc_opt_class();
          v52 = v51;
          name = [requestCopy name];
          *buf = 138543874;
          v84 = v51;
          v85 = 2114;
          v86 = name;
          v87 = 2114;
          v88 = currentWorkout;
          _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Received mirroring request with identifier: %{public}@. The current workout is %{public}@", buf, 0x20u);
        }
      }
    }
  }

  name2 = [requestCopy name];
  v20 = [name2 isEqualToString:@"startMirroring"];

  if (v20)
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke;
    v81[3] = &unk_27861A2B0;
    v82 = handlerCopy;
    [(HDWorkoutMirroringManager *)self _createServerWithData:dataCopy completion:v81];
    v21 = v82;
LABEL_36:

    goto LABEL_37;
  }

  name3 = [requestCopy name];
  v23 = [name3 isEqualToString:@"recoverSession"];

  if (!v23)
  {
    v27 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:dataCopy];
    v28 = MEMORY[0x277CCAD78];
    v70 = v27;
    sessionUUID = [(HDCodableWorkoutSessionSyncTransaction *)v27 sessionUUID];
    v30 = [v28 hk_UUIDWithData:sessionUUID];

    if (v30)
    {
      v31 = objc_loadWeakRetained(&self->_workoutManager);
      sessionServers = [v31 sessionServers];
      v33 = [sessionServers objectForKeyedSubscript:v30];

      if (v33)
      {
        syncController = [v33 syncController];
        [syncController rapportMessenger:messengerCopy didReceiveRequest:requestCopy data:dataCopy responseHandler:handlerCopy];
      }

      else
      {
        _HKInitializeLogging();
        v41 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          loga = v41;
          v61 = objc_opt_class();
          v69 = v61;
          name4 = [requestCopy name];
          *buf = 138543874;
          v84 = v61;
          v85 = 2114;
          v86 = v30;
          v87 = 2114;
          v88 = name4;
          _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session server %{public}@ doesn't exist to handle request %{public}@", buf, 0x20u);
        }

        mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
        isCompanionCapable = [mEMORY[0x277CCDD30]2 isCompanionCapable];

        if (isCompanionCapable)
        {
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke_314;
          v73[3] = &unk_27862E990;
          v79 = handlerCopy;
          v74 = v30;
          v75 = 0;
          v76 = messengerCopy;
          v77 = requestCopy;
          v78 = dataCopy;
          [(HDWorkoutMirroringManager *)self recoverMirroredWorkoutSessionWithCompletion:v73];

          syncController = v79;
        }

        else
        {
          logb = objc_loadWeakRetained(&self->_workoutManager);
          profile = [logb profile];
          v72 = 0;
          v45 = [HDWorkoutSessionServer sessionIdentifierForRecoveryInProfile:profile error:&v72];
          syncController = v72;

          v46 = v45;
          _HKInitializeLogging();
          v47 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v63 = v47;
            v64 = objc_opt_class();
            *buf = 138543874;
            v84 = v64;
            v85 = 2114;
            v86 = v46;
            v87 = 2114;
            v88 = syncController;
            v65 = v64;
            _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Queried persisted session identifier: %{public}@, error: %{public}@", buf, 0x20u);
          }

          log = v46;
          if (([v30 isEqual:v46]& 1) != 0 || syncController)
          {
            v48 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#3)."];
          }

          else
          {
            v48 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Workout session %@ doesn't exist.", v30}];
          }

          v49 = v48;
          v33 = 0;
          handlerCopy[2](handlerCopy, 0, v48);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v57 = v38;
        v58 = objc_opt_class();
        v59 = v58;
        name5 = [requestCopy name];
        *buf = 138543618;
        v84 = v58;
        v85 = 2114;
        v86 = name5;
        _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Malformed incoming request %{public}@: session UUID is missing.", buf, 0x16u);
      }

      v39 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#1)."];
      handlerCopy[2](handlerCopy, 0, v39);
    }

    v21 = v70;
    goto LABEL_36;
  }

  v24 = objc_loadWeakRetained(&self->_workoutManager);
  currentWorkout2 = [v24 currentWorkout];

  if (currentWorkout2)
  {
    syncController2 = [currentWorkout2 syncController];
    [syncController2 rapportMessenger:messengerCopy didReceiveRequest:requestCopy data:dataCopy responseHandler:handlerCopy];
  }

  else
  {
    v35 = objc_loadWeakRetained(&self->_workoutManager);
    profile2 = [v35 profile];
    v80 = 0;
    v71 = [HDWorkoutSessionServer sessionIdentifierForRecoveryInProfile:profile2 error:&v80];
    syncController2 = v80;

    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v54 = v37;
      v55 = objc_opt_class();
      *buf = 138543874;
      v84 = v55;
      v85 = 2114;
      v86 = v71;
      v87 = 2114;
      v88 = syncController2;
      v56 = v55;
      _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Queried persisted session identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, 0, syncController2);
  }

LABEL_37:
}

void __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke_314(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 identifier];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = [*(a1 + 40) syncController];
    [v8 rapportMessenger:*(a1 + 48) didReceiveRequest:*(a1 + 56) data:*(a1 + 64) responseHandler:*(a1 + 72)];
  }

  else
  {
    v9 = *(a1 + 72);
    v8 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#2)."];
    (*(v9 + 16))(v9, 0, v8);
  }

LABEL_6:
}

- (void)_createServerWithData:(id)data completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v8 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:dataCopy];
  v9 = MEMORY[0x277CCAD78];
  sessionUUID = [(HDCodableWorkoutSessionSyncTransaction *)v8 sessionUUID];
  v11 = [v9 hk_UUIDWithData:sessionUUID];

  v12 = MEMORY[0x277CCDC38];
  configuration = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
  workoutConfiguration = [configuration workoutConfiguration];
  v15 = [v12 createWithCodable:workoutConfiguration];

  configuration2 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
  sourceBundleIdentifier = [configuration2 sourceBundleIdentifier];

  if (v11 && v15 && sourceBundleIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    sessionServers = [WeakRetained sessionServers];
    v20 = [sessionServers objectForKeyedSubscript:v11];

    if (v20)
    {
      os_unfair_lock_unlock(&self->_lock);
      completionCopy[2](completionCopy, v20, 0);
    }

    else
    {
      v44 = 0;
      v22 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:sourceBundleIdentifier allowPlaceholder:0 error:&v44];
      v23 = v44;
      v24 = v23;
      if (v22)
      {
        v43 = v23;
        applicationState = [v22 applicationState];
        isInstalled = [applicationState isInstalled];

        if (isInstalled)
        {
          [(HDWorkoutMirroringManager *)self setActiveSessionBundleIdentifier:sourceBundleIdentifier];
          v27 = [HDMirroredWorkoutSessionServer alloc];
          v41 = objc_loadWeakRetained(&self->_workoutManager);
          profile = [v41 profile];
          [(HDCodableWorkoutSessionSyncTransaction *)v8 globalState];
          v29 = v42 = v22;
          v30 = [(HDMirroredWorkoutSessionServer *)v27 initWithProfile:profile configuration:v15 sessionUUID:v11 globalState:v29 clientBundleIdentifier:sourceBundleIdentifier];

          v31 = objc_loadWeakRetained(&self->_workoutManager);
          [v31 _didCreateMirroredSessionServer:v30];

          v22 = v42;
          os_unfair_lock_unlock(&self->_lock);
          completionCopy[2](completionCopy, v30, 0);
        }

        else
        {
          os_unfair_lock_unlock(&self->_lock);
          _HKInitializeLogging();
          v33 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v38 = v33;
            v39 = objc_opt_class();
            *buf = 138543618;
            v46 = v39;
            v47 = 2114;
            v48 = sourceBundleIdentifier;
            v40 = v39;
            _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Ignoring workout session mirroring request because the companion app %{public}@ is not installed.", buf, 0x16u);
          }

          v30 = [MEMORY[0x277CCA9B8] hk_error:552 description:@"Application is not installed on companion device."];
          (completionCopy)[2](completionCopy, 0, v30);
        }

        v24 = v43;
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
        _HKInitializeLogging();
        v32 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v46 = v24;
          _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[mirroring] Unable to fetch LSApplicationRecord to start mirrored workout session with error: %{public}@", buf, 0xCu);
        }

        v30 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to start mirroring workout session."];
        (completionCopy)[2](completionCopy, 0, v30);
      }

      v20 = 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v34 = v21;
      v35 = objc_opt_class();
      v36 = v35;
      configuration3 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
      *buf = 138544130;
      v46 = v35;
      v47 = 2114;
      v48 = v11;
      v49 = 2114;
      v50 = configuration3;
      v51 = 2114;
      v52 = dataCopy;
      _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Cannot start mirroring with invalid request. Session UUID: %{public}@, configuration: %{public}@, data: %{public}@", buf, 0x2Au);
    }

    v20 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to start mirroring workout session."];
    (completionCopy)[2](completionCopy, 0, v20);
  }
}

- (void)recoverMirroredWorkoutSessionWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke;
  aBlock[3] = &unk_27861A2B0;
  v23 = completionCopy;
  v5 = _Block_copy(aBlock);
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  v9 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (isCompanionCapable)
  {
    if (v9)
    {
      v10 = v8;
      v11 = objc_opt_class();
      *buf = 138543362;
      v25 = v11;
      v12 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Running session recovering.", buf, 0xCu);
    }

    v13 = [[HDRapportRequestIdentifier alloc] initWithSchemaIdentifier:0 name:@"recoverSession"];
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    profile = [WeakRetained profile];
    rapportMessenger = [profile rapportMessenger];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_337;
    v20[3] = &unk_27862E9B8;
    v20[4] = self;
    v21 = v5;
    [rapportMessenger sendRequest:v13 data:0 completion:v20];
  }

  else
  {
    if (v9)
    {
      v17 = v8;
      v18 = objc_opt_class();
      *buf = 138543362;
      v25 = v18;
      v19 = v18;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Recover requests should only be sent from phone to watch", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:552 format:@"Recover requests should only be sent from phone to watch"];
    (*(v5 + 2))(v5, 0, v13);
  }
}

uint64_t __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_337(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v10 = v7;
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v6;
      v11 = v15;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to recover mirrored workout session: %{public}@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_338;
    v12[3] = &unk_27861A2B0;
    v13 = *(a1 + 40);
    [v8 _createServerWithData:v5 completion:v12];
  }

  else
  {
    v9 = [*(a1 + 32) activeSessionBundleIdentifier];
    [v8 launchClientWithBundleIdentifier:v9];

    [*(a1 + 32) setActiveSessionBundleIdentifier:0];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)launchClientWithBundleIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = MEMORY[0x277D0AD78];
    v9 = *MEMORY[0x277D0ABF0];
    v10[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__HDWorkoutMirroringManager_launchClientWithBundleIdentifier___block_invoke;
    v7[3] = &unk_27862E9E0;
    v7[4] = self;
    v8 = identifierCopy;
    [v5 hd_openApplication:v8 optionsDictionary:v6 completion:v7];
  }
}

void __62__HDWorkoutMirroringManager_launchClientWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = v7;
      v15 = 138543618;
      v16 = v9;
      v17 = 1024;
      LODWORD(v18) = [v5 pid];
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] Launched %{public}@ with pid: %d", &v15, 0x12u);
    }

    [*(a1 + 32) _takeBackgroundRuntimeAssertionForProcessWithBundleIdentifier:*(a1 + 40) pid:{objc_msgSend(v5, "pid")}];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = v7;
    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v15 = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v6;
    v14 = v12;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to launch %{public}@ with error: %{public}@", &v15, 0x20u);
  }
}

- (void)_takeBackgroundRuntimeAssertionForProcessWithBundleIdentifier:(id)identifier pid:(int)pid
{
  v4 = *&pid;
  v29[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_assertionsByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  if (![v7 isValid])
  {
    goto LABEL_4;
  }

  v22 = 0;
  v8 = [v7 invalidateSyncWithError:&v22];
  v9 = v22;
  v10 = v9;
  if (v8)
  {

LABEL_4:
    v10 = [MEMORY[0x277D47008] targetWithPid:v4];
    v11 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.healthd" name:@"MirroredWorkoutSessionUpdate"];
    v29[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

    v13 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"Mirrored Workout Session Update" target:v10 attributes:v12];
    [v13 setInvalidationHandler:&__block_literal_global_237];
    v21 = 0;
    v14 = [v13 acquireWithError:&v21];
    v15 = v21;
    if (v14)
    {
      [(NSMutableDictionary *)self->_assertionsByBundleIdentifier setObject:v13 forKeyedSubscript:identifierCopy];
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v18 = v16;
        v19 = objc_opt_class();
        *buf = 138543874;
        v24 = v19;
        v25 = 2114;
        v26 = identifierCopy;
        v27 = 2114;
        v28 = v15;
        v20 = v19;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to acquire background runtime assertion for process %{public}@: %{public}@", buf, 0x20u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);

    goto LABEL_12;
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v24 = v10;
    _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[mirroring] Failed to invalidate existing background runtime assertion with error: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_12:
}

void __95__HDWorkoutMirroringManager__takeBackgroundRuntimeAssertionForProcessWithBundleIdentifier_pid___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] Background runtime assertion %{public}@ was invalidated with error: %{public}@", &v7, 0x16u);
  }
}

@end