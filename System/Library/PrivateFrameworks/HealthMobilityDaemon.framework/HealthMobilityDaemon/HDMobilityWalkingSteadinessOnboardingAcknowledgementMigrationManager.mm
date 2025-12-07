@interface HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager
- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager)initWithProfile:(id)profile delegate:(id)delegate;
- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManagerDelegate)delegate;
- (id)_queue_fetchFirstOnboardingCompletion;
- (void)_enqueueMigration;
- (void)_queue_migrateNotificationOnboardingCompletionToOnboardingAcknowledgement;
- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:(id)completion;
- (void)_queue_reconcileFeatures;
- (void)_startObservation;
- (void)daemonReady:(id)ready;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)onboardingCompletionManager:(id)manager didUpdateOnboardingCompletionsForFeatureIdentifier:(id)identifier;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager

- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager)initWithProfile:(id)profile delegate:(id)delegate
{
  profileCopy = profile;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager;
  v8 = [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    [WeakRetained registerProfileReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)profileDidBecomeReady:(id)ready
{
  daemon = [ready daemon];
  [daemon registerDaemonReadyObserver:self queue:0];
}

- (void)daemonReady:(id)ready
{
  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _enqueueMigration];

  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _startObservation];
}

- (void)_startObservation
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  [featureSettingsManager registerObserver:self featureIdentifier:*MEMORY[0x277CCC110] queue:self->_queue];

  v6 = objc_loadWeakRetained(&self->_profile);
  onboardingCompletionManager = [v6 onboardingCompletionManager];
  [onboardingCompletionManager registerObserver:self featureIdentifier:*MEMORY[0x277CCC118] queue:self->_queue];
}

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature settings changed for classifications, triggering migration", &v6, 0xCu);
  }

  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _enqueueMigration];
}

- (void)onboardingCompletionManager:(id)manager didUpdateOnboardingCompletionsForFeatureIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion changed for notifications, triggering migration", &v6, 0xCu);
  }

  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _enqueueMigration];
}

- (void)_enqueueMigration
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager__enqueueMigration__block_invoke;
  v6[3] = &unk_2796D9460;
  v6[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v6];
}

void __89__HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager__enqueueMigration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = MEMORY[0x277D10748];
  v6 = [*(a1 + 32) description];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager__enqueueMigration__block_invoke_2;
  v10[3] = &unk_2796D9460;
  v10[4] = v7;
  v9 = [v5 maintenanceOperationWithName:v6 queue:v8 synchronousBlock:v10];
  [v4 enqueueMaintenanceOperation:v9];
}

- (void)_queue_reconcileFeatures
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _queue_fetchFirstOnboardingCompletion = [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _queue_fetchFirstOnboardingCompletion];
  if (_queue_fetchFirstOnboardingCompletion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    featureSettingsManager = [WeakRetained featureSettingsManager];
    v6 = *MEMORY[0x277CCC110];
    v27 = 0;
    v7 = [featureSettingsManager featureSettingsForFeatureIdentifier:v6 error:&v27];
    v8 = v27;

    if (!v7)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
      {
        [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager _queue_reconcileFeatures];
      }

      v13 = v8;
      goto LABEL_29;
    }

    v9 = objc_loadWeakRetained(&self->_profile);
    onboardingCompletionManager = [v9 onboardingCompletionManager];
    v11 = *MEMORY[0x277CCC118];
    v26 = v8;
    v12 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:v11 error:&v26];
    v13 = v26;

    if (!v12)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
      {
        [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager _queue_reconcileFeatures];
      }

      goto LABEL_28;
    }

    v14 = [v7 numberForKey:*MEMORY[0x277CCC130]];
    bOOLValue = [v14 BOOLValue];

    v16 = [v12 count];
    if (!bOOLValue || v16)
    {
      if (v16)
      {
        v19 = bOOLValue;
      }

      else
      {
        v19 = 1;
      }

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2F8];
      v21 = os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_251962000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] No migration necessary, onboarding acknowledgement consistent", buf, 0xCu);
        }

        delegate = [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self delegate];
        v23 = delegate;
        selfCopy5 = self;
        v25 = 0;
        goto LABEL_27;
      }

      if (v21)
      {
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_impl(&dword_251962000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding acknowledged in onboarding completion but not settings, setting settings for forward compatibility", buf, 0xCu);
      }

      [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _queue_migrateNotificationOnboardingCompletionToOnboardingAcknowledgement];
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2F8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_impl(&dword_251962000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding acknowledged in settings but not onboarding completion, setting onboarding completion for backward compatibility", buf, 0xCu);
      }

      [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:_queue_fetchFirstOnboardingCompletion];
    }

    delegate = [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self delegate];
    v23 = delegate;
    selfCopy5 = self;
    v25 = 1;
LABEL_27:
    [delegate onboardingAcknowledgementMigrationManager:selfCopy5 didCompleteMigrationWithDidUpdate:v25];

LABEL_28:
LABEL_29:

    goto LABEL_30;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy6 = self;
    _os_log_impl(&dword_251962000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should not attempt to reconcile unless classifications have onboarded", buf, 0xCu);
  }

LABEL_30:
}

- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  v6 = objc_alloc(MEMORY[0x277CCD740]);
  v7 = *MEMORY[0x277CCC118];
  completionDate = [completionCopy completionDate];
  countryCode = [completionCopy countryCode];

  v10 = [v6 initWithFeatureIdentifier:v7 version:1 completionDate:completionDate countryCode:countryCode countryCodeProvenance:3];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
  v16 = 0;
  LOBYTE(countryCode) = [onboardingCompletionManager insertOnboardingCompletion:v10 error:&v16];
  v13 = v16;

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2F8];
  v15 = *MEMORY[0x277CCC2F8];
  if (countryCode)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:v14];
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager _queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:];
  }
}

- (void)_queue_migrateNotificationOnboardingCompletionToOnboardingAcknowledgement
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_251962000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Onboarding acknowledgement saved to feature settings to reflect notification onboarding completion", &v2, 0xCu);
}

- (id)_queue_fetchFirstOnboardingCompletion
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
  v4 = *MEMORY[0x277CCC110];
  v9 = 0;
  v5 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:v4 error:&v9];
  v6 = v9;

  if (v5)
  {
    firstObject = [v5 firstObject];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager _queue_fetchFirstOnboardingCompletion];
    }

    firstObject = 0;
  }

  return firstObject;
}

- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_251962000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Notification onboarding completion saved to reflect onboarding acknowledgement in classifications feature setting", &v2, 0xCu);
}

@end