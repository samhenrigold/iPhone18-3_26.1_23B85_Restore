@interface HDExampleFeatureProfileExtension
- (HDExampleFeatureProfileExtension)initWithProfile:(id)profile;
- (id)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
@end

@implementation HDExampleFeatureProfileExtension

- (HDExampleFeatureProfileExtension)initWithProfile:(id)profile
{
  v4 = *MEMORY[0x277CCC028];
  profileCopy = profile;
  v6 = HKLogInfrastructure();
  v7 = [(HDExampleFeatureProfileExtension *)&self->super.isa _initWithProfile:profileCopy featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  if ([identifier isEqualToString:self->_featureIdentifier])
  {
    v4 = self->_featureAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  v50 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC300];
  v8 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKNotificationInstructionAction();
    *buf = 138543618;
    v47 = v10;
    v48 = 2112;
    v49 = v12;
    _os_log_impl(&dword_25155E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];

  if (action == 1)
  {
    v41 = 0;
    v15 = [clientCopy pendingNotificationDismissInstructionsWithError:&v41];
    v16 = v41;
    if (!v15)
    {
      _HKInitializeLogging();
      v29 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        [HDExampleFeatureProfileExtension notificationSyncClient:v29 didReceiveInstructionWithAction:self];
      }

      goto LABEL_20;
    }

    categoryIdentifiers = [v15 categoryIdentifiers];
    v27 = [categoryIdentifiers count];

    if (v27)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_313;
      v36[3] = &unk_2796BCD50;
      v37 = notificationManager;
      v38 = clientCopy;
      v39 = v15;
      selfCopy = self;
      v15 = v15;
      [v37 getDeliveredNotificationsWithCompletionHandler:v36];

      goto LABEL_20;
    }

    _HKInitializeLogging();
    v34 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v31 = v34;
    v35 = objc_opt_class();
    *buf = 138543362;
    v47 = v35;
    v33 = v35;
LABEL_19:
    _os_log_impl(&dword_25155E000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] No valid instructions found", buf, 0xCu);

    goto LABEL_20;
  }

  if (action == 3)
  {
    v45 = 0;
    v15 = [clientCopy pendingNotificationSendInstructionsWithError:&v45];
    v16 = v45;
    if (!v15)
    {
      _HKInitializeLogging();
      v28 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        [HDExampleFeatureProfileExtension notificationSyncClient:v28 didReceiveInstructionWithAction:self];
      }

      goto LABEL_20;
    }

    categoryIdentifiers2 = [v15 categoryIdentifiers];
    v18 = [categoryIdentifiers2 count];

    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CE1F60]);
      [v19 setTitle:@"Example Feature [Internal Only]"];
      categoryIdentifiers3 = [v15 categoryIdentifiers];
      allObjects = [categoryIdentifiers3 allObjects];
      v22 = [allObjects componentsJoinedByString:@"\n"];
      [v19 setBody:v22];

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke;
      v42[3] = &unk_2796BCD08;
      v42[4] = self;
      v43 = clientCopy;
      v44 = v15;
      v25 = v15;
      [notificationManager postNotificationWithIdentifier:uUIDString content:v19 trigger:0 completion:v42];

      v15 = v19;
LABEL_20:

      goto LABEL_21;
    }

    _HKInitializeLogging();
    v30 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v31 = v30;
    v32 = objc_opt_class();
    *buf = 138543362;
    v47 = v32;
    v33 = v32;
    goto LABEL_19;
  }

LABEL_21:
}

void __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke(void *a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CCC300];
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_cold_1(a1, v7);
    }
  }

  v8 = a1[5];
  v9 = a1[6];
  v17 = 0;
  v10 = [v8 markPendingNotificationInstructionsAsProcessed:v9 error:&v17];
  v11 = v17;
  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v15 = a1[6];
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v11;
      v16 = v14;
      _os_log_error_impl(&dword_25155E000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to process pending notifications: %{public}@ %{public}@", buf, 0x20u);
    }
  }
}

void __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_313(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 hk_map:&__block_literal_global];
  [*(a1 + 32) removeDeliveredNotificationsWithIdentifiers:v3];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v13 = 0;
  v6 = [v4 markPendingNotificationInstructionsAsProcessed:v5 error:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = *(a1 + 48);
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v7;
      v12 = v10;
      _os_log_error_impl(&dword_25155E000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to process pending notifications: %{public}@ %{public}@", buf, 0x20u);
    }
  }
}

id __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  v3 = [v2 identifier];

  return v3;
}

- (id)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  profileCopy = profile;
  identifierCopy = identifier;
  if (self)
  {
    v32.receiver = self;
    v32.super_class = HDExampleFeatureProfileExtension;
    v10 = objc_msgSendSuper2(&v32, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 4, profile);
      objc_storeWeak(self + 5, v7);
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

      if (isAppleInternalInstall)
      {
        v13 = objc_alloc(MEMORY[0x277D107C0]);
        daemon = [v7 daemon];
        v15 = [v13 initWithDaemon:daemon featureIdentifier:profileCopy];

        v16 = objc_alloc(MEMORY[0x277D10728]);
        emptyCountrySet = [MEMORY[0x277CCD260] emptyCountrySet];
        daemon2 = [v7 daemon];
        v19 = [v16 initWithFeatureIdentifier:profileCopy defaultCountrySet:emptyCountrySet healthDaemon:daemon2];

        v20 = objc_alloc(MEMORY[0x277CCD420]);
        v34 = *MEMORY[0x277CCBEA0];
        v21 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:profileCopy];
        v33 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v35[0] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v24 = [v20 initWithRequirementsByContext:v23];

        v25 = [objc_alloc(MEMORY[0x277D106D8]) initWithProfile:v7 featureIdentifier:profileCopy availabilityRequirements:v24 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v19 disableAndExpiryProvider:v15 loggingCategory:identifierCopy];
        v26 = self[1];
        self[1] = v25;

        v27 = HKCreateSerialDispatchQueue();
        v28 = self[3];
        self[3] = v27;

        v29 = [objc_alloc(MEMORY[0x277D107B8]) initWithProfile:v7 clientIdentifier:profileCopy queue:self[3]];
        v30 = self[2];
        self[2] = v29;

        [self[2] setDelegate:self];
      }
    }
  }

  return self;
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_25155E000, v5, v6, "[%{public}@] Error retrieving dismiss instructions: %{public}@", v7, v8, v9, v10);
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_25155E000, v5, v6, "[%{public}@] Error retrieving send instructions: %{public}@", v7, v8, v9, v10);
}

void __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_25155E000, v5, v6, "[%{public}@] Failed to post notifications %{public}@", v7, v8, v9, v10);
}

@end