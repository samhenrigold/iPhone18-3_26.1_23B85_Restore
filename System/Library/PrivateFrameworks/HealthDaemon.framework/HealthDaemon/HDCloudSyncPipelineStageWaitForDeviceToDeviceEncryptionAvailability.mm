@interface HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability
- (BOOL)finishWithSuccess:(BOOL)success error:(id)error;
- (HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability)initWithConfiguration:(id)configuration;
- (void)_checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:(void *)observing;
- (void)_cloudKitIdentityUpdated:(id)updated;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability

- (HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability;
  result = [(HDCloudSyncPipelineStage *)&v4 initWithConfiguration:configuration cloudState:0];
  if (result)
  {
    result->_expirationInterval = 60.0;
  }

  return result;
}

- (void)main
{
  v15 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__cloudKitIdentityUpdated_ name:*MEMORY[0x277CBBF90] object:0];

  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  primaryCKContainer = [repository primaryCKContainer];

  containerIdentifier = [primaryCKContainer containerIdentifier];
  LOBYTE(repository) = [containerIdentifier isEqualToString:@"com.apple.health.sync.secure"];

  if (repository)
  {
    [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)self _checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:?];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      containerIdentifier2 = [primaryCKContainer containerIdentifier];
      v11 = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = containerIdentifier2;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Primary container %{public}@ is not secure; skipping D2DE check.", &v11, 0x16u);
    }

    [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)self finishWithSuccess:1 error:0];
  }
}

- (void)_checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:(void *)observing
{
  v12 = *MEMORY[0x277D85DE8];
  if (observing)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      observingCopy = observing;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Looking up account info to check for device-to-device encryption availability...", buf, 0xCu);
    }

    configuration = [observing configuration];
    repository = [configuration repository];
    primaryCKContainer = [repository primaryCKContainer];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __137__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving___block_invoke;
    v8[3] = &unk_27861FBB8;
    v8[4] = observing;
    v9 = a2;
    [primaryCKContainer accountInfoWithCompletionHandler:v8];
  }
}

void __137__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to fetch account info while waiting on device-to-device encryption availability: %{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = 0;
    v11 = v6;
    goto LABEL_9;
  }

  if ([v5 supportsDeviceToDeviceEncryption])
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Device-to-device encryption is available.", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = 1;
    v11 = 0;
LABEL_9:
    [v9 finishWithSuccess:v10 error:v11];
    goto LABEL_10;
  }

  if (*(a1 + 40) == 1)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Device-to-device encryption not currently available; waiting for account update notification.", buf, 0xCu);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      if (!*(v16 + 128))
      {
        v17 = [v16 profile];
        v18 = [v17 daemon];
        v19 = [v18 behavior];
        v20 = [v19 tinkerModeEnabled];

        if ((v20 & 1) == 0)
        {
          v21 = [v16 profile];
          v22 = [v21 cloudSyncManager];
          v23 = [v22 queue];
          v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v23);
          v25 = *(v16 + 128);
          *(v16 + 128) = v24;

          objc_initWeak(&location, v16);
          v26 = *(v16 + 128);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __100__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__startExpirationTimerIfNeeded__block_invoke;
          v32 = &unk_278616F38;
          objc_copyWeak(v33, &location);
          dispatch_source_set_event_handler(v26, buf);
          v27 = *(v16 + 128);
          v28 = dispatch_walltime(0, (*(v16 + 136) * 1000000000.0));
          dispatch_source_set_timer(v27, v28, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(*(v16 + 128));
          objc_destroyWeak(v33);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Timeout waiting for device to device encryption availability"];
    [*(a1 + 32) finishWithSuccess:0 error:v29];
  }

LABEL_10:
}

- (void)_cloudKitIdentityUpdated:(id)updated
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received CKIdentityUpdateNotification", &v5, 0xCu);
  }

  [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)self _checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:?];
}

void __100__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__startExpirationTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[16];
    WeakRetained[16] = 0;
    v3 = WeakRetained;

    [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)v3 _checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:?];
    WeakRetained = v3;
  }
}

- (BOOL)finishWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    v8 = self->_expirationTimer;
    self->_expirationTimer = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBBF90] object:0];

  v12.receiver = self;
  v12.super_class = HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability;
  v10 = [(HDCloudSyncOperation *)&v12 finishWithSuccess:successCopy error:errorCopy];

  return v10;
}

@end