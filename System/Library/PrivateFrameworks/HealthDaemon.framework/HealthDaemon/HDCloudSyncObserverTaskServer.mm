@interface HDCloudSyncObserverTaskServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (HDCloudSyncObserverTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (NSString)description;
- (id)_readRestoreCompletionDateWithError:(id)error;
- (id)remote_retrieveProgressForIdentifier:(id)identifier completion:(id)completion;
- (id)remote_startSyncIfRestoreNotCompletedWithUUID:(id)d completion:(id)completion;
- (uint64_t)_queue_verifyCloudSyncEnabledWithError:(dispatch_queue_t *)error;
- (uint64_t)_shouldNotifyObserverAboutRequest:(uint64_t)request;
- (void)_cloudKitIdentityUpdated:(id)updated;
- (void)_queue_didFailToPopulateStatusWithError:(uint64_t)error;
- (void)_queue_didUpdateSyncStatus;
- (void)_queue_didUpdateSyncStatusWithErrorRequiringUserAction:(uint64_t)action;
- (void)_queue_didUpdateSyncStatusWithSyncEnabled:(uint64_t)result;
- (void)_queue_instantiateCloudSyncObserverStatus:(uint64_t)status;
- (void)_queue_syncDidStart;
- (void)_queue_updateSyncStatusWithBlock:(uint64_t)block;
- (void)cloudSyncCoordinator:(id)coordinator syncRequestDidCompleteForRequest:(id)request success:(BOOL)success error:(id)error;
- (void)cloudSyncCoordinator:(id)coordinator syncStartedForRequest:(id)request progress:(id)progress;
- (void)cloudSyncManager:(id)manager didUpdateDataUploadRequestStatus:(int64_t)status startDate:(id)date endDate:(id)endDate;
- (void)cloudSyncManager:(id)manager didUpdateErrorRequiringUserAction:(id)action;
- (void)cloudSyncManager:(id)manager didUpdateLastLitePushDate:(id)date;
- (void)cloudSyncManager:(id)manager didUpdateLastPullDate:(id)date;
- (void)cloudSyncManager:(id)manager didUpdateLastPulledUpdateDate:(id)date;
- (void)cloudSyncManager:(id)manager didUpdateLastPushDate:(id)date;
- (void)cloudSyncManager:(id)manager didUpdateRestoreCompletionDate:(id)date;
- (void)cloudSyncManager:(id)manager didUpdateSyncEnabled:(BOOL)enabled;
- (void)connectionInvalidated;
- (void)remote_startObservingSyncRequestsMatchingFilter:(unint64_t)filter;
- (void)remote_startObservingSyncStatusWithCompletion:(id)completion;
- (void)remote_stopObservingSyncRequests;
@end

@implementation HDCloudSyncObserverTaskServer

- (HDCloudSyncObserverTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v12.receiver = self;
  v12.super_class = HDCloudSyncObserverTaskServer;
  v6 = [(HDStandardTaskServer *)&v12 initWithUUID:d configuration:0 client:client delegate:delegate];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_filter = 0;
    v6->_isObservingSyncRequests = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    progressTracker = v6->_progressTracker;
    v6->_progressTracker = v9;
  }

  return v6;
}

- (void)connectionInvalidated
{
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBBF90] object:0];

  profile2 = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile2 cloudSyncManager];
  [cloudSyncManager removeObserver:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  client = [(HDStandardTaskServer *)self client];
  profile = [client profile];
  profileIdentifier = [profile profileIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, profileIdentifier];

  return v9;
}

+ (BOOL)validateClient:(id)client error:(id *)error
{
  v5 = *MEMORY[0x277CCC8B0];
  clientCopy = client;
  LOBYTE(v5) = [clientCopy hasRequiredEntitlement:v5 error:error];
  LOBYTE(error) = [clientCopy hasRequiredArrayEntitlement:*MEMORY[0x277CCC8C0] containing:*MEMORY[0x277CCBD30] error:error];

  return (v5 | error) & 1;
}

- (void)remote_startObservingSyncStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];

  if (cloudSyncManager)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke;
    block[3] = &unk_278614160;
    block[4] = self;
    v9 = cloudSyncManager;
    v10 = completionCopy;
    dispatch_sync(queue, block);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke_2;
  v3[3] = &unk_278613150;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [(HDCloudSyncObserverTaskServer *)v2 _queue_instantiateCloudSyncObserverStatus:v3];
}

void __79__HDCloudSyncObserverTaskServer_remote_startObservingSyncStatusWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__cloudKitIdentityUpdated_ name:*MEMORY[0x277CBBF90] object:0];

  [*(a1 + 40) addObserver:*(a1 + 32) queue:*(*(a1 + 32) + 40)];
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(*(v6 + 40));
      if (*(v6 + 64) == 1)
      {
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v10 = v6;
          _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Observering sync status is YES. No need to inform client again.", buf, 0xCu);
        }
      }

      else
      {
        *(v6 + 64) = 1;
        [(HDCloudSyncObserverTaskServer *)v6 _queue_didUpdateSyncStatus];
      }
    }
  }

  else
  {
    [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didFailToPopulateStatusWithError:v8];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_queue_didFailToPopulateStatusWithError:(uint64_t)error
{
  if (error)
  {
    v3 = *(error + 40);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    *(error + 64) = 1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HDCloudSyncObserverTaskServer__queue_didFailToPopulateStatusWithError___block_invoke;
    v6[3] = &unk_2786138D0;
    v6[4] = error;
    v5 = [error remoteObjectProxyWithErrorHandler:v6];
    [v5 clientRemote_didFailToPopulateStatusWithError:v4];
  }
}

- (void)_queue_instantiateCloudSyncObserverStatus:(uint64_t)status
{
  v3 = a2;
  if (status)
  {
    dispatch_assert_queue_V2(*(status + 40));
    if (*(status + 48))
    {
      v3[2](v3, 1, 0);
    }

    else
    {
      profile = [status profile];
      cloudSyncManager = [profile cloudSyncManager];

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke;
      v7[3] = &unk_27861AA30;
      v7[4] = status;
      v8 = cloudSyncManager;
      v9 = v3;
      v6 = cloudSyncManager;
      [v6 accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:v7];
    }
  }
}

- (id)remote_startSyncIfRestoreNotCompletedWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke;
  v16[3] = &unk_278617440;
  v19 = completionCopy;
  v16[4] = self;
  v17 = dCopy;
  v10 = v8;
  v18 = v10;
  v11 = dCopy;
  v12 = completionCopy;
  dispatch_sync(queue, v16);
  v13 = v18;
  v14 = v10;

  return v10;
}

void __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v41 = 0;
  v4 = [(HDCloudSyncObserverTaskServer *)v2 _queue_verifyCloudSyncEnabledWithError:?];
  v5 = v41;
  v6 = *v3;
  if (v4)
  {
    v7 = [v6 profile];
    v8 = [v7 daemon];
    v9 = [v8 cloudSyncCoordinator];
    v10 = [v9 accountProvider];
    v11 = [v10 isAccountInManateeUnavailableCFUState];

    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] hk_error:706 description:@"Manatee container is unavailable underlyingError:{device is in CFU state", v5}];

      [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didUpdateSyncStatusWithErrorRequiringUserAction:v12];
      (*(*(a1 + 56) + 16))();
      v5 = v12;
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v18 = MEMORY[0x277CBEAA8];
        v19 = v15;
        v20 = [v18 date];
        v21 = HKDiagnosticStringFromDate();
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        *&buf[22] = 2114;
        v51 = v21;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: start syncIfRestoreNotCompleted: date (%{public}@)", buf, 0x20u);
      }

      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_339;
      v39[3] = &unk_278614250;
      v40 = *(a1 + 56);
      v24 = v22;
      v25 = v39;
      if (v23)
      {
        dispatch_assert_queue_V2(*(v23 + 40));
        v49[0] = 0;
        v49[1] = v49;
        v49[2] = 0x2020000000;
        v49[3] = -1;
        v26 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
        v27 = objc_alloc(MEMORY[0x277D10AC8]);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke;
        v51 = &unk_27861A8C8;
        v55 = v49;
        v52 = v23;
        v28 = v24;
        v53 = v28;
        v54 = v25;
        v29 = [v27 initWithDescription:@"Determine if sync is complete enough stop stop waiting" completion:buf];
        v30 = v25;
        v31 = v24;
        v32 = *(v23 + 40);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_347;
        v45[3] = &unk_27861A990;
        v45[4] = v23;
        v48 = v49;
        v46 = v28;
        v33 = v26;
        v47 = v33;
        v34 = v32;
        v24 = v31;
        v25 = v30;
        [v29 addTaskOnQueue:v34 task:v45];
        v35 = *(v23 + 40);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_356;
        v42[3] = &unk_27861A9B8;
        v44 = v49;
        v42[4] = v23;
        v36 = v33;
        v43 = v36;
        [v29 addTaskOnQueue:v35 task:v42];
        [v29 begin];
        v37 = v43;
        v38 = v36;

        _Block_object_dispose(v49, 8);
      }

      else
      {
        v38 = 0;
      }

      [*(a1 + 48) addChild:v38 withPendingUnitCount:1];
    }
  }

  else
  {
    [(HDCloudSyncObserverTaskServer *)v6 _queue_didUpdateSyncStatusWithSyncEnabled:?];
    v13 = *(a1 + 56);
    v14 = [v5 hk_sanitizedError];
    (*(v13 + 16))(v13, 4, v14);
  }
}

- (uint64_t)_queue_verifyCloudSyncEnabledWithError:(dispatch_queue_t *)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    return 0;
  }

  dispatch_assert_queue_V2(error[5]);
  profile = [(dispatch_queue_t *)error profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  v13 = 0;
  v7 = [cloudSyncCoordinator canPerformCloudSyncWithError:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      errorCopy = error;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: syncIfRestoreNotCompleted triggered, but Health cloud sync is not enabled: %{public}@", buf, 0x16u);
    }

    v10 = v8;
    if (v10)
    {
      if (a2)
      {
        v11 = v10;
        *a2 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v7;
}

- (void)_queue_didUpdateSyncStatusWithSyncEnabled:(uint64_t)result
{
  if (result)
  {
    dispatch_assert_queue_V2(*(result + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithSyncEnabled___block_invoke;
    v4[3] = &unk_278618990;
    v4[4] = result;
    v5 = a2;
    [(HDCloudSyncObserverTaskServer *)result _queue_updateSyncStatusWithBlock:v4];
  }
}

- (void)_queue_didUpdateSyncStatusWithErrorRequiringUserAction:(uint64_t)action
{
  v3 = a2;
  if (action)
  {
    dispatch_assert_queue_V2(*(action + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __88__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithErrorRequiringUserAction___block_invoke;
    v4[3] = &unk_278613920;
    v4[4] = action;
    v5 = v3;
    [(HDCloudSyncObserverTaskServer *)action _queue_updateSyncStatusWithBlock:v4];
  }
}

void __90__HDCloudSyncObserverTaskServer_remote_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_339(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)_queue_didUpdateSyncStatus
{
  v10 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if (*(self + 64))
    {
      _HKInitializeLogging();
      v2 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(self + 48);
        *buf = 138543618;
        selfCopy = self;
        v8 = 2114;
        v9 = v3;
        _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client didUpdateObserverWithSyncStatus: with status: %{public}@", buf, 0x16u);
      }

      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __59__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatus__block_invoke;
      v5[3] = &unk_2786138D0;
      v5[4] = self;
      v4 = [self remoteObjectProxyWithErrorHandler:v5];
      [v4 clientRemote_didUpdateObserverWithSyncStatus:*(self + 48)];
    }
  }
}

void __75__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithSyncEnabled___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (*(a1 + 40) != [*(*(a1 + 32) + 48) syncEnabled])
  {
    [*(*(a1 + 32) + 48) setSyncEnabled:?];
    v2 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v2 _queue_didUpdateSyncStatus];
  }
}

- (void)_queue_updateSyncStatusWithBlock:(uint64_t)block
{
  v3 = a2;
  dispatch_assert_queue_V2(*(block + 40));
  if (*(block + 48))
  {
    v3[2](v3);
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__HDCloudSyncObserverTaskServer__queue_updateSyncStatusWithBlock___block_invoke;
    v4[3] = &unk_2786173C8;
    v4[4] = block;
    v5 = v3;
    [(HDCloudSyncObserverTaskServer *)block _queue_instantiateCloudSyncObserverStatus:v4];
  }
}

void __94__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithAccountSupportsSecureContainer___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (*(a1 + 40) != [*(*(a1 + 32) + 48) accountSupportsSecureContainer])
  {
    [*(*(a1 + 32) + 48) setAccountSupportsSecureContainer:?];
    v2 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v2 _queue_didUpdateSyncStatus];
  }
}

void __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPushDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) lastPushDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setLastPushDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPullDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) lastPullDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setLastPullDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __80__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastLitePushDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) lastLitePushDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setLastLitePushDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

uint64_t __84__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPulledUpdateDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v5 = [*(*(a1 + 32) + 48) lastPulledUpdateDate];
  if (!v5 || (v2 = [*(a1 + 40) hk_isAfterDate:v5], v3 = v5, v2))
  {
    [*(*(a1 + 32) + 48) setLastPulledUpdateDate:*(a1 + 40)];
    [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didUpdateSyncStatus];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __83__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithRestoreCompleteDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) restoreCompletionDate];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setRestoreCompletionDate:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __88__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithErrorRequiringUserAction___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 48) errorRequiringUserAction];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 48) setErrorRequiringUserAction:*(a1 + 40)];
    v4 = *(a1 + 32);

    [(HDCloudSyncObserverTaskServer *)v4 _queue_didUpdateSyncStatus];
  }
}

void __59__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatus__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client didUpdateObserverWithSyncStatus: with error: %{public}@", &v6, 0x16u);
  }
}

- (void)_queue_syncDidStart
{
  v13 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v3 = MEMORY[0x277CBEAA8];
      v4 = v2;
      date = [v3 date];
      v6 = HKDiagnosticStringFromDate();
      *buf = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client syncDidStart with date: (%{public}@", buf, 0x16u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__HDCloudSyncObserverTaskServer__queue_syncDidStart__block_invoke;
    v8[3] = &unk_2786138D0;
    v8[4] = self;
    v7 = [(dispatch_queue_t *)self remoteObjectProxyWithErrorHandler:v8];
    [v7 clientRemote_syncDidStart];
  }
}

void __52__HDCloudSyncObserverTaskServer__queue_syncDidStart__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client syncDidStart with error: %{public}@", &v6, 0x16u);
  }
}

void __73__HDCloudSyncObserverTaskServer__queue_didFailToPopulateStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client didFailToPopulateStatusWithError with error: %{public}@", &v6, 0x16u);
  }
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (*(*(a1[7] + 8) + 24) == -1 && !a3)
  {
    v9 = a1[4];
    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v23 = 0;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy__48;
      v20[4] = __Block_byref_object_dispose__48;
      v21 = 0;
      v11 = *(v9 + 40);
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __63__HDCloudSyncObserverTaskServer__persistRestoreCompletionDate___block_invoke;
      v25 = &unk_27861A9E0;
      *&v26 = v9;
      v27 = v22;
      v12 = v10;
      *(&v26 + 1) = v12;
      v28 = v20;
      dispatch_sync(v11, block);

      _Block_object_dispose(v20, 8);
      _Block_object_dispose(v22, 8);
    }
  }

  v13 = a1[4];
  v14 = *(v13 + 56);
  *(v13 + 56) = 0;

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[4];
    v17 = a1[5];
    v18 = v15;
    v19 = _HKCloudSyncObserverStatusToString();
    *block = 138544130;
    *&block[4] = v16;
    *&block[12] = 2114;
    *&block[14] = v17;
    *&block[22] = 2114;
    v25 = v19;
    LOWORD(v26) = 2114;
    *(&v26 + 2) = v8;
    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: taskTree complete: status (%{public}@), error (%{public}@)", block, 0x2Au);
  }

  (*(a1[6] + 16))();
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_347(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v58 = 0;
  if (v7)
  {
    dispatch_assert_queue_V2(v7[5]);
    if ([(HDCloudSyncObserverTaskServer *)v7 _queue_verifyCloudSyncEnabledWithError:?])
    {
      *v59 = 0;
      v8 = [(HDCloudSyncObserverTaskServer *)v7 _readRestoreCompletionDateWithError:v59];
      v9 = *v59;
      v10 = v9;
      if (v8 || !v9)
      {
        if (v8)
        {
          _HKInitializeLogging();
          v12 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v7;
            *&buf[12] = 2114;
            *&buf[14] = v8;
            _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync restore was already completed on %{public}@.", buf, 0x16u);
          }

          v11 = 2;
        }

        else
        {
          v13 = [(dispatch_queue_t *)v7 profile];
          v14 = [v13 cloudSyncManager];
          v15 = [v14 status];
          v16 = [v15 lastSuccessfulPullDate];
          v17 = v16 == 0;

          if (v17)
          {
            v11 = 1;
          }

          else
          {
            v11 = 3;
          }
        }
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = v58;
  v19 = [*(a1 + 32) profile];
  v20 = [v19 daemon];
  v21 = [v20 cloudSyncCoordinator];

  switch(v11)
  {
    case 4:
      *(*(*(a1 + 56) + 8) + 24) = 4;
      v6[2](v6, 1, v18);
      break;
    case 3:
      [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_syncDidStart];
      v6[2](v6, 0, 0);
      break;
    case 2:
      *(*(*(a1 + 56) + 8) + 24) = 2;
      v6[2](v6, 0, 0);
      break;
    default:
      if (v21)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v63 = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2;
        aBlock[3] = &unk_27861A918;
        v22 = *(a1 + 40);
        aBlock[4] = *(a1 + 32);
        v56 = buf;
        v54 = v22;
        v23 = v6;
        v24 = *(a1 + 56);
        v55 = v23;
        v57 = v24;
        v25 = _Block_copy(aBlock);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_348;
        v51[3] = &unk_2786130D8;
        v26 = v25;
        v52 = v26;
        v27 = [v21 addCloudSyncProgressCompletion:v51];
        if (v27)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            v30 = *(a1 + 40);
            *v59 = 138543618;
            *&v59[4] = v29;
            v60 = 2114;
            v61 = v30;
            _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: active sync in progress, observe it", v59, 0x16u);
          }

          v31 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:v27];
        }

        else
        {
          _HKInitializeLogging();
          v32 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 32);
            v34 = *(a1 + 40);
            *v59 = 138543618;
            *&v59[4] = v33;
            v60 = 2114;
            v61 = v34;
            _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: start a sync and observe it", v59, 0x16u);
          }

          [v21 prepareAllProfilesForPeriodicSyncAndRestore];
          v35 = [[HDCloudSyncContext alloc] initForPurpose:0 options:0 reason:7];
          v31 = [v21 syncAllProfilesWithContext:v35 completion:v26];
        }

        [*(a1 + 48) addChild:v31 withPendingUnitCount:1];
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 32);
          v38 = *(a1 + 40);
          *v59 = 138543618;
          *&v59[4] = v37;
          v60 = 2114;
          v61 = v38;
          _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: call client startHandler", v59, 0x16u);
        }

        [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_syncDidStart];
        v39 = [MEMORY[0x277CCABC8] keyPathWithRootObject:*(a1 + 48) path:"fractionCompleted"];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_352;
        v47[3] = &unk_27861A968;
        v40 = *(a1 + 40);
        v47[4] = *(a1 + 32);
        v41 = v40;
        v42 = *(a1 + 56);
        v48 = v41;
        v50 = v42;
        v43 = v26;
        v49 = v43;
        v44 = [v39 addObserverBlock:v47];
        v45 = *(a1 + 32);
        v46 = *(v45 + 56);
        *(v45 + 56) = v44;

        _Block_object_dispose(buf, 8);
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = -1;
        v6[2](v6, 3, 0);
      }

      break;
  }
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_3;
  block[3] = &unk_27861A8F0;
  v16 = *(a1 + 56);
  block[4] = v7;
  v18 = a2;
  v13 = v6;
  v14 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v15 = v9;
  v17 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 64) + 8);
  if (*(v2 + 24) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v13 = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: syncCompletion already called", &v13, 0x16u);
    }
  }

  else
  {
    *(v2 + 24) = 1;
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 80);
      v10 = *(a1 + 48);
      v13 = 138544130;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 1026;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: syncCompletion called: result (%{public}id), error (%{public}@)", &v13, 0x26u);
    }

    if (*(a1 + 80) == 1)
    {
      v11 = *(*(a1 + 56) + 16);
    }

    else
    {
      v12 = *(*(a1 + 72) + 8);
      if (*(v12 + 24) == -1)
      {
        *(v12 + 24) = 0;
      }

      v11 = *(*(a1 + 56) + 16);
    }

    v11();
  }
}

uint64_t __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_348(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if ((a2 & 1) != 0 || (v6 = [v5 hk_isHealthKitErrorWithCode:726], v7 = v9, (v6 & 1) == 0))
  {
    v6 = (*(*(a1 + 32) + 16))();
    v7 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_352(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2_353;
  block[3] = &unk_27861A940;
  block[4] = v5;
  v11 = v4;
  v12 = v3;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v8 = v3;
  dispatch_async(v6, block);
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_2_353(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v19 = 0;
  if (v2)
  {
    dispatch_assert_queue_V2(v2[5]);
    if (([(HDCloudSyncObserverTaskServer *)v2 _queue_verifyCloudSyncEnabledWithError:?]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      [(HDCloudSyncObserverTaskServer *)v2 _queue_didUpdateSyncStatusWithSyncEnabled:?];
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v19;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = v6;
    [v9 doubleValue];
    v12 = v11;
    v13 = _HKCloudSyncObserverStatusToString();
    *buf = 138544386;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    v24 = 2048;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v4;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: waitUUID %{public}@: observer block called: progress (%03.3f%%), status (%{public}@), error (%{public}@)", buf, 0x34u);
  }

  if (v3)
  {
    _HKInitializeLogging();
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      v16 = a1[5];
      v17 = v14;
      v18 = _HKCloudSyncObserverStatusToString();
      *buf = 138544130;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: waitUUID %{public}@: stop observer: status (%{public}@), error (%{public}@)", buf, 0x2Au);
    }

    *(*(a1[8] + 8) + 24) = 4;
    (*(a1[7] + 16))();
  }
}

void __90__HDCloudSyncObserverTaskServer__queue_startSyncIfRestoreNotCompletedWithUUID_completion___block_invoke_356(void *a1, void *a2, void *a3)
{
  v13 = a3;
  if (*(*(a1[6] + 8) + 24) != 2)
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = a1[5];
      v7 = *(v5 + 40);
      v8 = v6;
      v9 = a2;
      dispatch_assert_queue_V2(v7);
      v10 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
      [v8 addChild:v10 withPendingUnitCount:1];

      v11 = *(v5 + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __84__HDCloudSyncObserverTaskServer__queue_mergeCloudSyncJournalsWithTaskTree_progress___block_invoke;
      v14[3] = &unk_278617958;
      v14[4] = v5;
      v15 = v10;
      v12 = v10;
      [v9 addTaskOnQueue:v11 task:v14];
    }
  }

  (*(v13 + 2))(v13, 0, 0);
}

- (id)_readRestoreCompletionDateWithError:(id)error
{
  errorCopy = error;
  v17 = *MEMORY[0x277D85DE8];
  if (error)
  {
    profile = [error profile];
    cloudSyncManager = [profile cloudSyncManager];
    v12 = 0;
    v6 = [cloudSyncManager restoreCompletionDateWithError:&v12];
    v7 = v12;

    if (!v6 && v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = errorCopy;
        v15 = 2114;
        v16 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read the cloud sync restore status: %{public}@.", buf, 0x16u);
      }

      errorCopy = 0;
      goto LABEL_15;
    }

    if (v7)
    {
      if (!a2)
      {
        _HKLogDroppedError();
        if (!v6)
        {
LABEL_11:
          _HKInitializeLogging();
          v10 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v14 = errorCopy;
            _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Restore complete status not set.", buf, 0xCu);
          }
        }

LABEL_14:
        errorCopy = v6;
LABEL_15:

        goto LABEL_16;
      }

      v9 = v7;
      *a2 = v7;
    }

    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_16:

  return errorCopy;
}

void __84__HDCloudSyncObserverTaskServer__queue_mergeCloudSyncJournalsWithTaskTree_progress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HDCloudSyncObserverTaskServer__queue_mergeCloudSyncJournalsWithTaskTree_progress___block_invoke_2;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v8 = v4;
  v9 = [v7 mergeCloudSyncJournalsWithCompletion:v10];

  [*(a1 + 40) addChild:v9 withPendingUnitCount:1];
}

void __63__HDCloudSyncObserverTaskServer__persistRestoreCompletionDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 65) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v12 = v4;
      _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Cloud sync restore was completed once successfully, we should not be restoring again.", buf, 0xCu);
    }
  }

  else
  {
    *(v2 + 65) = 1;
    v5 = [*(a1 + 32) profile];
    v6 = [v5 cloudSyncManager];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = [v6 persistRestoreCompletionDate:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v9;
  }
}

- (void)_cloudKitIdentityUpdated:(id)updated
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received CKIdentityUpdateNotification", buf, 0xCu);
  }

  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke;
  v7[3] = &unk_2786130B0;
  v7[4] = self;
  [cloudSyncManager accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:v7];
}

void __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke_2;
  v4[3] = &unk_278618990;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void __58__HDCloudSyncObserverTaskServer__cloudKitIdentityUpdated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    dispatch_assert_queue_V2(*(v1 + 40));
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __94__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithAccountSupportsSecureContainer___block_invoke;
    v3[3] = &unk_278618990;
    v3[4] = v1;
    v4 = v2;
    [(HDCloudSyncObserverTaskServer *)v1 _queue_updateSyncStatusWithBlock:v3];
  }
}

void __66__HDCloudSyncObserverTaskServer__queue_updateSyncStatusWithBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [(HDCloudSyncObserverTaskServer *)*(a1 + 32) _queue_didFailToPopulateStatusWithError:v5];
  }
}

void __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2;
  block[3] = &unk_278618D50;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v14 = a2;
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, block);
}

void __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v39 = *(a1 + 40);
      *buf = 138543618;
      v52 = v39;
      v53 = 2114;
      v54 = v40;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read account D2D encryption availability with error %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 48);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CCD138]);
      v5 = *(a1 + 40);
      v6 = *(v5 + 48);
      *(v5 + 48) = v4;

      v3 = *(*(a1 + 40) + 48);
    }

    [v3 setAccountSupportsSecureContainer:*(a1 + 64)];
    v7 = [*(a1 + 40) profile];
    v8 = [v7 daemon];
    v9 = [v8 cloudSyncCoordinator];
    v10 = [v9 accountProvider];
    [*(*(a1 + 40) + 48) setAccountProhibitedForCloudSync:{objc_msgSend(v10, "primaryAccountIsProhibitedFromCloudSync")}];

    v11 = *(a1 + 40);
    v48 = 0;
    v12 = [(HDCloudSyncObserverTaskServer *)v11 _queue_verifyCloudSyncEnabledWithError:?];
    v13 = v48;
    [*(*(a1 + 40) + 48) setSyncEnabled:v12];
    if (v13)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 40);
        *buf = 138543618;
        v52 = v41;
        v53 = 2114;
        v54 = v13;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to verify cloud sync enabled with error %{public}@", buf, 0x16u);
      }
    }

    v15 = *(a1 + 40);
    v47 = 0;
    v16 = [(HDCloudSyncObserverTaskServer *)v15 _readRestoreCompletionDateWithError:?];
    v17 = v47;
    [*(*(a1 + 40) + 48) setRestoreCompletionDate:v16];

    if (v17)
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 40);
        *buf = 138543618;
        v52 = v42;
        v53 = 2114;
        v54 = v17;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read restore completion date with error %{public}@", buf, 0x16u);
      }
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = [*(a1 + 40) profile];
      v21 = HDCloudSyncKeyValueDomainWithProfile(v20);

      v22 = @"HDCloudSyncKeyErrorRequiringUserAction";
      v50 = 0;
      v23 = [v21 dataForKey:v22 error:&v50];
      v24 = v50;
      v25 = v24;
      if (v23)
      {
        v44 = v17;
        v26 = v13;
        v27 = MEMORY[0x277CCAAC8];
        v28 = objc_opt_class();
        v49 = 0;
        v29 = [v27 unarchivedObjectOfClass:v28 fromData:v23 error:&v49];
        v30 = v49;
        v31 = v30;
        if (v29 || !v30)
        {
          v19 = v29;
          v34 = 0;
        }

        else
        {
          _HKInitializeLogging();
          v32 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v52 = v19;
            v53 = 2114;
            v54 = v31;
            _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive cloud sync error requiring user action: %{public}@", buf, 0x16u);
          }

          v33 = v31;
          v19 = 0;
          v34 = v31;
        }

        v13 = v26;
        v17 = v44;
      }

      else
      {
        if (v24)
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v52 = v19;
            v53 = 2114;
            v54 = v25;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read cloud sync error requiring user action: %{public}@", buf, 0x16u);
          }
        }

        v34 = 0;
        v19 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = v34;
    [*(*(a1 + 40) + 48) setErrorRequiringUserAction:v19];

    if (v36)
    {
      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 40);
        *buf = 138543618;
        v52 = v43;
        v53 = 2114;
        v54 = v36;
        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read error requiring user action with error %{public}@", buf, 0x16u);
      }
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_359;
    v45[3] = &unk_27861AA08;
    v38 = *(a1 + 48);
    v45[4] = *(a1 + 40);
    v46 = *(a1 + 56);
    [v38 fetchSyncStatusWithCompletion:v45];
  }
}

void __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_359(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2_360;
  v12[3] = &unk_278617468;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

uint64_t __75__HDCloudSyncObserverTaskServer__queue_instantiateCloudSyncObserverStatus___block_invoke_2_360(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch sync status with error %{public}@", &v12, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = [*(a1 + 48) lastSuccessfulPushDate];
    [*(*(a1 + 40) + 48) setLastPushDate:v4];

    v5 = [*(a1 + 48) lastSuccessfulPullDate];
    [*(*(a1 + 40) + 48) setLastPullDate:v5];

    v6 = [*(a1 + 48) lastSuccessfulLitePushDate];
    [*(*(a1 + 40) + 48) setLastLitePushDate:v6];

    v7 = [*(a1 + 40) profile];
    v8 = HDCloudSyncLastPulledUpdateDate(v7);
    [*(*(a1 + 40) + 48) setLastPulledUpdateDate:v8];

    v9 = *(*(a1 + 56) + 16);

    return v9();
  }
}

- (void)cloudSyncManager:(id)manager didUpdateSyncEnabled:(BOOL)enabled
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDCloudSyncObserverTaskServer *)self _queue_didUpdateSyncStatusWithSyncEnabled:enabled];
}

- (void)cloudSyncManager:(id)manager didUpdateLastPushDate:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v7 = dateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPushDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)manager didUpdateLastLitePushDate:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v7 = dateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastLitePushDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)manager didUpdateLastPullDate:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v7 = dateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPullDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)manager didUpdateLastPulledUpdateDate:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v7 = dateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithLastPulledUpdateDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)manager didUpdateErrorRequiringUserAction:(id)action
{
  queue = self->_queue;
  actionCopy = action;
  dispatch_assert_queue_V2(queue);
  [(HDCloudSyncObserverTaskServer *)self _queue_didUpdateSyncStatusWithErrorRequiringUserAction:actionCopy];
}

- (void)cloudSyncManager:(id)manager didUpdateRestoreCompletionDate:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v7 = dateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__HDCloudSyncObserverTaskServer__queue_didUpdateSyncStatusWithRestoreCompleteDate___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(HDCloudSyncObserverTaskServer *)self _queue_updateSyncStatusWithBlock:v9];
}

- (void)cloudSyncManager:(id)manager didUpdateDataUploadRequestStatus:(int64_t)status startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  dispatch_assert_queue_V2(self->_queue);
  status = self->_status;
  if (!status)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCD138]);
    v12 = self->_status;
    self->_status = v11;

    status = self->_status;
  }

  dataUploadRequestStatus = [(HKCloudSyncObserverStatus *)status dataUploadRequestStatus];
  v14 = dataUploadRequestStatus != status;
  if (dataUploadRequestStatus != status)
  {
    [(HKCloudSyncObserverStatus *)self->_status setDataUploadRequestStatus:status];
  }

  dataUploadRequestStartDate = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestStartDate];
  if (dataUploadRequestStartDate == dateCopy)
  {

    goto LABEL_12;
  }

  if (!dateCopy)
  {

    goto LABEL_11;
  }

  dataUploadRequestStartDate2 = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestStartDate];
  v17 = [dataUploadRequestStartDate2 isEqual:dateCopy];

  if ((v17 & 1) == 0)
  {
LABEL_11:
    [(HKCloudSyncObserverStatus *)self->_status setDataUploadRequestStartDate:dateCopy];
    v14 = 1;
  }

LABEL_12:
  dataUploadRequestCompletionDate = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestCompletionDate];
  v19 = dataUploadRequestCompletionDate;
  if (dataUploadRequestCompletionDate != endDateCopy)
  {
    if (endDateCopy)
    {
      dataUploadRequestCompletionDate2 = [(HKCloudSyncObserverStatus *)self->_status dataUploadRequestCompletionDate];
      v21 = [dataUploadRequestCompletionDate2 isEqual:endDateCopy];

      if (v21)
      {
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_21:
        [(HDCloudSyncObserverTaskServer *)self _queue_didUpdateSyncStatus];
        goto LABEL_22;
      }
    }

    else
    {
    }

    [(HKCloudSyncObserverStatus *)self->_status setDataUploadRequestCompletionDate:endDateCopy];
    goto LABEL_21;
  }

  if (v14)
  {
    goto LABEL_21;
  }

LABEL_22:
}

- (void)remote_startObservingSyncRequestsMatchingFilter:(unint64_t)filter
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__HDCloudSyncObserverTaskServer_remote_startObservingSyncRequestsMatchingFilter___block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  v4[5] = filter;
  dispatch_sync(queue, v4);
}

_BYTE *__81__HDCloudSyncObserverTaskServer_remote_startObservingSyncRequestsMatchingFilter___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = *(a1 + 40);
  result = *(a1 + 32);
  if ((result[80] & 1) == 0)
  {
    v3 = [result profile];
    v4 = [v3 daemon];
    v5 = [v4 cloudSyncCoordinator];
    [v5 addObserver:*(a1 + 32)];

    result = *(a1 + 32);
  }

  result[80] = 1;
  return result;
}

- (void)remote_stopObservingSyncRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDCloudSyncObserverTaskServer_remote_stopObservingSyncRequests__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

_BYTE *__65__HDCloudSyncObserverTaskServer_remote_stopObservingSyncRequests__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[80] == 1)
  {
    v3 = [result profile];
    v4 = [v3 daemon];
    v5 = [v4 cloudSyncCoordinator];
    [v5 removeObserver:*(a1 + 32)];

    result = *(a1 + 32);
  }

  result[80] = 0;
  return result;
}

- (id)remote_retrieveProgressForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__48;
  v21 = __Block_byref_object_dispose__48;
  v22 = objc_alloc_init(MEMORY[0x277CCAC48]);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HDCloudSyncObserverTaskServer_remote_retrieveProgressForIdentifier_completion___block_invoke;
  v13[3] = &unk_2786194F0;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = completionCopy;
  v16 = &v17;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __81__HDCloudSyncObserverTaskServer_remote_retrieveProgressForIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = *(v3 + 40);
    v6 = v2;
    dispatch_assert_queue_V2(v5);
    v7 = [*(v3 + 88) objectForKeyedSubscript:v6];

    if (v7)
    {
      [v7 setInvalidationBlock:v4];
      v8 = [v7 progress];
    }

    else
    {
      v8 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
      v9 = *(v3 + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__HDCloudSyncObserverTaskServer__queue_retrieveProgressForIdentifier_completion___block_invoke;
      block[3] = &unk_278613658;
      v13 = v4;
      dispatch_async(v9, block);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
}

- (uint64_t)_shouldNotifyObserverAboutRequest:(uint64_t)request
{
  v3 = a2;
  dispatch_assert_queue_V2(*(request + 40));
  if (*(request + 80) == 1)
  {
    v4 = [v3 matchesFilter:*(request + 72)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __69__HDCloudSyncObserverTaskServer__queue_syncRequestDidStart_progress___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client syncRequestDidStart: with error: %{public}@", &v6, 0x16u);
  }
}

void __77__HDCloudSyncObserverTaskServer__queue_syncRequestDidComplete_success_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call cloudSync observer client syncRequestDidComplete:success:error: with error: %{public}@", &v6, 0x16u);
  }
}

- (void)cloudSyncCoordinator:(id)coordinator syncStartedForRequest:(id)request progress:(id)progress
{
  requestCopy = request;
  progressCopy = progress;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncStartedForRequest_progress___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v13 = requestCopy;
  v14 = progressCopy;
  v10 = progressCopy;
  v11 = requestCopy;
  dispatch_async(queue, block);
}

void __85__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncStartedForRequest_progress___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    if ([(HDCloudSyncObserverTaskServer *)v1 _shouldNotifyObserverAboutRequest:v3])
    {
      v5 = [[HDCloudSyncObserverTaskServerStoredProgress alloc] initWithProgress:v4];
      v6 = *(v1 + 88);
      v7 = [v3 identifier];
      [v6 setObject:v5 forKeyedSubscript:v7];

      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x277CBEAA8];
        v10 = v8;
        v11 = [v9 date];
        v12 = HKDiagnosticStringFromDate();
        *v14 = 138543618;
        *&v14[4] = v1;
        *&v14[12] = 2114;
        *&v14[14] = v12;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client syncRequestDidStart: with date: (%{public}@", v14, 0x16u);
      }

      *v14 = MEMORY[0x277D85DD0];
      *&v14[8] = 3221225472;
      *&v14[16] = __69__HDCloudSyncObserverTaskServer__queue_syncRequestDidStart_progress___block_invoke;
      v15 = &unk_2786138D0;
      v16 = v1;
      v13 = [v1 remoteObjectProxyWithErrorHandler:v14];
      [v13 clientRemote_syncRequestDidStart:v3];
    }
  }
}

- (void)cloudSyncCoordinator:(id)coordinator syncRequestDidCompleteForRequest:(id)request success:(BOOL)success error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncRequestDidCompleteForRequest_success_error___block_invoke;
  v14[3] = &unk_278617A98;
  v14[4] = self;
  v15 = requestCopy;
  successCopy = success;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = requestCopy;
  dispatch_async(queue, v14);
}

void __101__HDCloudSyncObserverTaskServer_cloudSyncCoordinator_syncRequestDidCompleteForRequest_success_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    v6 = *(v1 + 88);
    v7 = [v4 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = *(v1 + 88);
    v10 = [v4 identifier];
    [v9 setObject:0 forKeyedSubscript:v10];

    [v8 invalidate];
    if ([(HDCloudSyncObserverTaskServer *)v1 _shouldNotifyObserverAboutRequest:v4])
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x277CBEAA8];
        v13 = v11;
        v14 = [v12 date];
        v15 = HKDiagnosticStringFromDate();
        *v17 = 138543618;
        *&v17[4] = v1;
        *&v17[12] = 2114;
        *&v17[14] = v15;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling cloudSync observer client syncRequestDidComplete:success:error: with date: (%{public}@", v17, 0x16u);
      }

      *v17 = MEMORY[0x277D85DD0];
      *&v17[8] = 3221225472;
      *&v17[16] = __77__HDCloudSyncObserverTaskServer__queue_syncRequestDidComplete_success_error___block_invoke;
      v18 = &unk_2786138D0;
      v19 = v1;
      v16 = [v1 remoteObjectProxyWithErrorHandler:v17];
      [v16 clientRemote_syncRequestDidComplete:v4 success:v2 error:v5];
    }
  }
}

@end