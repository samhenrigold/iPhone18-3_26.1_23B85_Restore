@interface HDMobilityProfileExtension
- (HDMobilityProfileExtension)initWithProfile:(id)profile;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)onboardingAcknowledgementMigrationManager:(id)manager didCompleteMigrationWithDidUpdate:(BOOL)update;
- (void)settingsMigrationManagerDidCompleteMigration:(id)migration didRunMigrationSteps:(BOOL)steps;
@end

@implementation HDMobilityProfileExtension

- (HDMobilityProfileExtension)initWithProfile:(id)profile
{
  v42 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v37.receiver = self;
  v37.super_class = HDMobilityProfileExtension;
  v5 = [(HDMobilityProfileExtension *)&v37 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    v9 = MEMORY[0x277CCC2F8];
    if ((isAppleWatch & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x277D106E8]);
      anyCountryAvailability = [MEMORY[0x277D10828] anyCountryAvailability];
      v12 = objc_alloc(MEMORY[0x277D106D8]);
      v13 = *MEMORY[0x277CCC110];
      requirementSet = [MEMORY[0x277D11AC0] requirementSet];
      v15 = [v12 initWithProfile:profileCopy featureIdentifier:v13 availabilityRequirements:requirementSet currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:anyCountryAvailability disableAndExpiryProvider:v10 loggingCategory:*v9];
      walkingSteadinessClassificationsAvailabilityManager = v6->_walkingSteadinessClassificationsAvailabilityManager;
      v6->_walkingSteadinessClassificationsAvailabilityManager = v15;

      v17 = [[HDMobilityNotificationManager alloc] initWithProfile:profileCopy walkingSteadinessAvailabilityManager:v6->_walkingSteadinessClassificationsAvailabilityManager];
      notificationManager = v6->_notificationManager;
      v6->_notificationManager = v17;

      daemon = [profileCopy daemon];
      behavior = [daemon behavior];
      LODWORD(requirementSet) = [behavior isCompanionCapable];

      if (requirementSet)
      {
        v21 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:v6->_walkingSteadinessClassificationsAvailabilityManager loggingCategory:*v9];
        walkingSteadinessClassificationsBackgroundFeatureDeliveryManager = v6->_walkingSteadinessClassificationsBackgroundFeatureDeliveryManager;
        v6->_walkingSteadinessClassificationsBackgroundFeatureDeliveryManager = v21;

        if ([profileCopy profileType] == 1)
        {
          v23 = [objc_alloc(MEMORY[0x277D10858]) initForWalkingSteadinessWithProfile:profileCopy delegate:v6];
          settingsMigrationManager = v6->_settingsMigrationManager;
          v6->_settingsMigrationManager = v23;
        }
      }

      v25 = [[HDMobilityWalkingSteadinessFeatureAvailabilityManager alloc] initWithProfile:profileCopy regionAvailabilityProvider:anyCountryAvailability];
      walkingSteadinessNotificationsAvailabilityManager = v6->_walkingSteadinessNotificationsAvailabilityManager;
      v6->_walkingSteadinessNotificationsAvailabilityManager = v25;

      v27 = objc_alloc(MEMORY[0x277D105B0]);
      v28 = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:*v9 healthDataSource:profileCopy];
      v29 = [v27 initWithProfile:profileCopy eventSubmissionManager:v28 logCategory:*v9 eventConstructor:&__block_literal_global];
      walkingSteadinessDailyAnalyticsEventManager = v6->_walkingSteadinessDailyAnalyticsEventManager;
      v6->_walkingSteadinessDailyAnalyticsEventManager = v29;
    }

    _HKInitializeLogging();
    v31 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = objc_opt_class();
      profileType = [profileCopy profileType];
      *buf = 138543618;
      v39 = v33;
      v40 = 2048;
      v41 = profileType;
      _os_log_impl(&dword_251962000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Plugin loaded for profileType %ld", buf, 0x16u);
    }

    v35 = v6;
  }

  return v6;
}

id __46__HDMobilityProfileExtension_initWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource alloc] initWithProfile:v2];

  v4 = [objc_alloc(MEMORY[0x277D11AA8]) initWithDataSource:v3];

  return v4;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC118]])
  {
    v5 = 40;
LABEL_5:
    v6 = *(&self->super.isa + v5);
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC110]])
  {
    v5 = 24;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)settingsMigrationManagerDidCompleteMigration:(id)migration didRunMigrationSteps:(BOOL)steps
{
  stepsCopy = steps;
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v14 = 138543362;
    v15 = objc_opt_class();
    v8 = v15;
    _os_log_impl(&dword_251962000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings migration finished, initiating onboarding acknowledgement migration manager", &v14, 0xCu);
  }

  settingsMigrationManager = self->_settingsMigrationManager;
  self->_settingsMigrationManager = 0;

  v10 = [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)v10 initWithProfile:WeakRetained delegate:self];
  walkingSteadinessOnboardingAcknowledgementMigrationManager = self->_walkingSteadinessOnboardingAcknowledgementMigrationManager;
  self->_walkingSteadinessOnboardingAcknowledgementMigrationManager = v12;

  if (stepsCopy)
  {
    [(HDMobilityProfileExtension *)self _triggerImmediateSyncWithReason:@"HDMobilityProfileExtension.settingsMigrationManagerDidRunMigrationSteps"];
  }
}

- (void)onboardingAcknowledgementMigrationManager:(id)manager didCompleteMigrationWithDidUpdate:(BOOL)update
{
  updateCopy = update;
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 138543362;
    v10 = objc_opt_class();
    v8 = v10;
    _os_log_impl(&dword_251962000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding acknowledgement migration completed", &v9, 0xCu);
  }

  if (updateCopy)
  {
    [(HDMobilityProfileExtension *)self _triggerImmediateSyncWithReason:@"HDMobilityProfileExtension.onboardingAcknowledgementMigrationManagerDidRunMigrationSteps"];
  }
}

- (void)_triggerImmediateSyncWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HDMobilityProfileExtension__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_2796D9570;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
}

void __62__HDMobilityProfileExtension__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F8];
  v7 = *MEMORY[0x277CCC2F8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v11 = v9;
      _os_log_impl(&dword_251962000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __62__HDMobilityProfileExtension__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6, v5);
  }
}

void __62__HDMobilityProfileExtension__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = a3;
  v8 = v6;
  _os_log_error_impl(&dword_251962000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", &v9, 0x20u);
}

@end