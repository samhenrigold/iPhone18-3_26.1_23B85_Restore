@interface DNDSUserAvailabilityCoordinator
- (BOOL)_isLocalUserAvailableForAppId:(id)id modeIdentifier:(id)identifier withError:(id *)error;
- (BOOL)_isLocalUserAvailableForMessagesWithModeIdentifier:(id)identifier withError:(id *)error;
- (BOOL)_queue_didAppAvailabilityChangeForApplicationIdentifier:(id)identifier fromConfiguration:(id)configuration toConfiguration:(id)toConfiguration;
- (BOOL)isLocalUserAvailableForApplicationIdentifier:(id)identifier withError:(id *)error;
- (BOOL)isTCCUserAvailabilityGrantedForBundleId:(id)id;
- (BOOL)userAvailabilityInActiveModeForContactHandle:(id)handle withError:(id *)error;
- (DNDSUserAvailabilityCoordinator)initWithConfigurationProvider:(id)provider stateProvider:(id)stateProvider;
- (DNDSUserAvailabilityCoordinator)initWithConfigurationProvider:(id)provider stateProvider:(id)stateProvider userAvailabilityTCCProvider:(id)cProvider;
- (id)_entitlementRecordForApplicationRecord:(id)record;
- (id)allowedModesForContactHandle:(id)handle withError:(id *)error;
- (id)exceptionalModesForContactHandle:(id)handle withError:(id *)error;
- (id)publishStatusKitAvailabilityReturningError:(id *)error;
- (id)silencedModesForContactHandle:(id)handle withError:(id *)error;
- (void)_publishStatusKitAvailability:(BOOL)availability activityIdentifier:(id)identifier local:(BOOL)local scheduled:(BOOL)scheduled date:(id)date forced:(BOOL)forced completion:(id)completion;
- (void)_publishStatusKitCurrentAvailabilityForced:(BOOL)forced override:(int64_t)override completionHandler:(id)handler;
- (void)_queue_notifyIntentExtensionsOfUserAvailability:(id)availability applicationIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)_queue_notifyIntentExtensionsOfUserAvailability:(id)availability availabilityOverride:(int64_t)override applicationIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)_queue_updateAvailabilityKit:(id)kit fromConfiguration:(id)configuration toConfiguration:(id)toConfiguration completionHandler:(id)handler;
- (void)coordinateUserAvailability:(id)availability fromConfiguration:(id)configuration toConfiguration:(id)toConfiguration completionHandler:(id)handler;
- (void)coordinateUserAvailabilityUpdateForApplicationIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler;
- (void)resumeUpdatingInvitationsForContacts:(id)contacts completionHandler:(id)handler;
- (void)sendStatusKitInvitationsForContacts:(id)contacts forceAvailabilityPublish:(BOOL)publish completionHandler:(id)handler;
- (void)suspendWithOverrideSetting:(int64_t)setting completionHandler:(id)handler;
@end

@implementation DNDSUserAvailabilityCoordinator

- (DNDSUserAvailabilityCoordinator)initWithConfigurationProvider:(id)provider stateProvider:(id)stateProvider
{
  stateProviderCopy = stateProvider;
  providerCopy = provider;
  v8 = objc_alloc_init(_DNDSUserAvailabilityTCCProvider);
  v9 = [(DNDSUserAvailabilityCoordinator *)self initWithConfigurationProvider:providerCopy stateProvider:stateProviderCopy userAvailabilityTCCProvider:v8];

  return v9;
}

- (DNDSUserAvailabilityCoordinator)initWithConfigurationProvider:(id)provider stateProvider:(id)stateProvider userAvailabilityTCCProvider:(id)cProvider
{
  providerCopy = provider;
  stateProviderCopy = stateProvider;
  cProviderCopy = cProvider;
  v24.receiver = self;
  v24.super_class = DNDSUserAvailabilityCoordinator;
  v12 = [(DNDSUserAvailabilityCoordinator *)&v24 init];
  v13 = v12;
  if (v12)
  {
    v12->_active = 0;
    objc_storeStrong(&v12->_configurationProvider, provider);
    objc_storeStrong(&v13->_stateProvider, stateProvider);
    objc_storeStrong(&v13->_tccProvider, cProvider);
    v14 = objc_alloc(MEMORY[0x277D68148]);
    v15 = [v14 initWithStatusTypeIdentifier:*MEMORY[0x277CF0478]];
    statusService = v13->_statusService;
    v13->_statusService = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.donotdisturb.server.AvailabilityCoordinator", v17);
    queue = v13->_queue;
    v13->_queue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.donotdisturb.server.ExtensionLaunch", v20);
    extensionLaunchQueue = v13->_extensionLaunchQueue;
    v13->_extensionLaunchQueue = v21;
  }

  return v13;
}

- (void)resumeUpdatingInvitationsForContacts:(id)contacts completionHandler:(id)handler
{
  contactsCopy = contacts;
  handlerCopy = handler;
  v8 = DNDSLogAvailabilityProvider;
  if (self->_active)
  {
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSUserAvailabilityCoordinator resumeUpdatingInvitationsForContacts:completionHandler:];
    }

    v9 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_INFO, "Resuming User Availability publish current availability and update invites for relevant contacts.", buf, 2u);
    }

    [(DNDSUserAvailabilityCoordinator *)self resume];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__DNDSUserAvailabilityCoordinator_resumeUpdatingInvitationsForContacts_completionHandler___block_invoke;
    v10[3] = &unk_278F8A4F8;
    v10[4] = self;
    v11 = handlerCopy;
    [(DNDSUserAvailabilityCoordinator *)self sendStatusKitInvitationsForContacts:contactsCopy forceAvailabilityPublish:1 completionHandler:v10];
  }
}

void __90__DNDSUserAvailabilityCoordinator_resumeUpdatingInvitationsForContacts_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__DNDSUserAvailabilityCoordinator_resumeUpdatingInvitationsForContacts_completionHandler___block_invoke_2;
  block[3] = &unk_278F8A4D0;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __90__DNDSUserAvailabilityCoordinator_resumeUpdatingInvitationsForContacts_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_INFO, "Notifying intent extensions of availability on User Availability coordinator resume", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3[5] lastCalculatedState];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__DNDSUserAvailabilityCoordinator_resumeUpdatingInvitationsForContacts_completionHandler___block_invoke_14;
  v5[3] = &unk_278F8A4A8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 _queue_notifyIntentExtensionsOfUserAvailability:v4 applicationIdentifiers:0 completionHandler:v5];
}

- (void)suspendWithOverrideSetting:(int64_t)setting completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (self->_active)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke;
    v9[3] = &unk_278F8A570;
    v9[4] = self;
    settingCopy = setting;
    v10 = handlerCopy;
    [(DNDSUserAvailabilityCoordinator *)self _publishStatusKitCurrentAvailabilityForced:0 override:setting completionHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSUserAvailabilityCoordinator suspendWithOverrideSetting:completionHandler:];
    }

    v8 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
    (v7)[2](v7, v8, 0);
  }
}

void __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1();
  }

  v10 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:v7 availability:v8];
  v11 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_INFO, "Published status request with identifier: %{public}@", buf, 0xCu);
  }

  v12 = a1[4];
  v13 = *(v12 + 16);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_18;
  v17[3] = &unk_278F8A548;
  v15 = a1[5];
  v14 = a1[6];
  v17[4] = v12;
  v20 = v14;
  v18 = v10;
  v19 = v15;
  v16 = v10;
  dispatch_async(v13, v17);
}

void __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_18(uint64_t a1)
{
  v2 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_INFO, "Forcing intent extensions to available on User Availability coordinator suspend.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3[5] lastCalculatedState];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_19;
  v6[3] = &unk_278F8A520;
  v6[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  [v3 _queue_notifyIntentExtensionsOfUserAvailability:v4 availabilityOverride:v5 applicationIdentifiers:0 completionHandler:v6];
}

uint64_t __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) suspend];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)coordinateUserAvailability:(id)availability fromConfiguration:(id)configuration toConfiguration:(id)toConfiguration completionHandler:(id)handler
{
  availabilityCopy = availability;
  configurationCopy = configuration;
  toConfigurationCopy = toConfiguration;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (self->_active)
  {
    if (!configurationCopy || !toConfigurationCopy)
    {
      v28 = 0;
      if ((configurationCopy == 0) == (toConfigurationCopy == 0))
      {
LABEL_21:
        v43 = DNDSLogStateProvider;
        if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24912E000, v43, OS_LOG_TYPE_INFO, "Ignoring request to coordinate user availability; from and to configurations are the same.", buf, 2u);
        }

        v44 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
        (v14)[2](v14, v44, 0);

        goto LABEL_24;
      }

LABEL_15:
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_24;
      block[3] = &unk_278F8A5E8;
      block[4] = self;
      v54 = availabilityCopy;
      v55 = configurationCopy;
      v56 = toConfigurationCopy;
      v28 = v28;
      v57 = v28;
      v58 = v14;
      dispatch_async(queue, block);

      goto LABEL_24;
    }

    v51 = handlerCopy;
    v52 = availabilityCopy;
    mode = [toConfigurationCopy mode];
    mode2 = [configurationCopy mode];
    v49 = [mode isEqual:mode2];

    [toConfigurationCopy impactsAvailability];
    v46 = DNDResolvedImpactsAvailabilitySetting();
    [configurationCopy impactsAvailability];
    v45 = DNDResolvedImpactsAvailabilitySetting();
    configuration = [toConfigurationCopy configuration];
    allowedApplicationIdentifiers = [configuration allowedApplicationIdentifiers];
    configuration2 = [configurationCopy configuration];
    allowedApplicationIdentifiers2 = [configuration2 allowedApplicationIdentifiers];
    v21 = [allowedApplicationIdentifiers isEqual:allowedApplicationIdentifiers2];

    configuration3 = [toConfigurationCopy configuration];
    deniedApplicationIdentifiers = [configuration3 deniedApplicationIdentifiers];
    configuration4 = [configurationCopy configuration];
    deniedApplicationIdentifiers2 = [configuration4 deniedApplicationIdentifiers];
    v26 = [deniedApplicationIdentifiers isEqual:deniedApplicationIdentifiers2];

    v27 = v21 & v49 & v26 ^ 1;
    if (v46 != v45)
    {
      v27 = 1;
    }

    v50 = (configurationCopy == 0) ^ (toConfigurationCopy == 0) | v27;
    if (v21)
    {
      v28 = 0;
      if ((v26 & 1) == 0)
      {
LABEL_8:
        configuration5 = [toConfigurationCopy configuration];
        deniedApplicationIdentifiers3 = [configuration5 deniedApplicationIdentifiers];
        allObjects = [deniedApplicationIdentifiers3 allObjects];
        configuration6 = [configurationCopy configuration];
        deniedApplicationIdentifiers4 = [configuration6 deniedApplicationIdentifiers];
        allObjects2 = [deniedApplicationIdentifiers4 allObjects];
        v34 = __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke(allObjects2, allObjects, allObjects2);

        if (v34)
        {
          if (v28)
          {
            v35 = [(DNDSUserAvailabilityPublishResult *)v28 setByAddingObjectsFromSet:v34];

            v28 = v35;
          }

          else
          {
            v28 = v34;
          }
        }

        v14 = v51;

        availabilityCopy = v52;
LABEL_20:
        if ((v50 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

    else
    {
      configuration7 = [toConfigurationCopy configuration];
      allowedApplicationIdentifiers3 = [configuration7 allowedApplicationIdentifiers];
      allKeys = [allowedApplicationIdentifiers3 allKeys];
      configuration8 = [configurationCopy configuration];
      allowedApplicationIdentifiers4 = [configuration8 allowedApplicationIdentifiers];
      allKeys2 = [allowedApplicationIdentifiers4 allKeys];
      v28 = __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke(allKeys2, allKeys, allKeys2);

      if ((v26 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v14 = v51;
    availabilityCopy = v52;
    goto LABEL_20;
  }

  v36 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v36, OS_LOG_TYPE_INFO, "Skipping availability coordination because User Availability is disabled.", buf, 2u);
  }

  v28 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
  (v14)[2](v14, v28, 0);
LABEL_24:
}

id __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA940] setWithArray:a2];
  [v5 addObjectsFromArray:v4];
  v6 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v7 countForObject:{v12, v15}] == 1)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v13 = [v6 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_24(uint64_t a1)
{
  v8 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_2;
  v9[3] = &unk_278F8A5C0;
  v4 = *(&v8 + 1);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v8 _queue_updateAvailabilityKit:v4 fromConfiguration:v2 toConfiguration:v3 completionHandler:v9];
}

void __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_3;
  block[3] = &unk_278F8A598;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = *(a1 + 56);
  v13 = v3;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

void __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_INFO, "Checking if intent extensions need availability update", buf, 2u);
  }

  v3 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 previousState];
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_INFO, "update.previousState: %{public}@", buf, 0xCu);
  }

  v7 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 state];
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_INFO, "update.state: %{public}@", buf, 0xCu);
  }

  v11 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_INFO, "Notifying intent extensions of availability update", buf, 2u);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) state];
  v14 = [*(a1 + 48) allObjects];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__DNDSUserAvailabilityCoordinator_coordinateUserAvailability_fromConfiguration_toConfiguration_completionHandler___block_invoke_25;
  v15[3] = &unk_278F8A4A8;
  v17 = *(a1 + 64);
  v16 = *(a1 + 56);
  [v12 _queue_notifyIntentExtensionsOfUserAvailability:v13 applicationIdentifiers:v14 completionHandler:v15];
}

- (void)coordinateUserAvailabilityUpdateForApplicationIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler
{
  forcedCopy = forced;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (self->_active)
  {
    v10 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.MobileSMS" platform:1];
    v11 = [identifierCopy isEqual:v10];

    if (v11)
    {
      v12 = DNDSLogAvailabilityProvider;
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_INFO, "Forcing Messages AvailabilityKit status to available on User Availability coordinator TCC revocation.", buf, 2u);
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __117__DNDSUserAvailabilityCoordinator_coordinateUserAvailabilityUpdateForApplicationIdentifier_forced_completionHandler___block_invoke;
      v21[3] = &unk_278F8A610;
      v22 = handlerCopy;
      [(DNDSUserAvailabilityCoordinator *)self _publishStatusKitCurrentAvailabilityForced:forcedCopy override:-1 completionHandler:v21];
      v13 = v22;
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __117__DNDSUserAvailabilityCoordinator_coordinateUserAvailabilityUpdateForApplicationIdentifier_forced_completionHandler___block_invoke_31;
      block[3] = &unk_278F8A660;
      v20 = forcedCopy;
      v17 = identifierCopy;
      selfCopy = self;
      v19 = handlerCopy;
      dispatch_async(queue, block);

      v13 = v17;
    }
  }

  else
  {
    v14 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_INFO, "Skipping availability coordination because User Availability is disabled.", buf, 2u);
    }

    v13 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
    (*(handlerCopy + 2))(handlerCopy, v13, 0);
  }
}

void __117__DNDSUserAvailabilityCoordinator_coordinateUserAvailabilityUpdateForApplicationIdentifier_forced_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1();
  }

  v10 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:v7 availability:v8];
  (*(*(a1 + 32) + 16))();
}

void __117__DNDSUserAvailabilityCoordinator_coordinateUserAvailabilityUpdateForApplicationIdentifier_forced_completionHandler___block_invoke_31(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 bundleID];
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_INFO, "Forcing intent extensions to available on User Availability coordinator TCC revocation. app=%{public}@", buf, 0xCu);
  }

  if (*(a1 + 56))
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a1 + 40);
  v8 = [v7[5] lastCalculatedState];
  v12 = *(a1 + 32);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__DNDSUserAvailabilityCoordinator_coordinateUserAvailabilityUpdateForApplicationIdentifier_forced_completionHandler___block_invoke_33;
  v10[3] = &unk_278F8A638;
  v11 = *(a1 + 48);
  [v7 _queue_notifyIntentExtensionsOfUserAvailability:v8 availabilityOverride:v6 applicationIdentifiers:v9 completionHandler:v10];
}

void __117__DNDSUserAvailabilityCoordinator_coordinateUserAvailabilityUpdateForApplicationIdentifier_forced_completionHandler___block_invoke_33(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
  (*(v3 + 16))(v3, v4, a2);
}

- (void)_queue_updateAvailabilityKit:(id)kit fromConfiguration:(id)configuration toConfiguration:(id)toConfiguration completionHandler:(id)handler
{
  kitCopy = kit;
  configurationCopy = configuration;
  toConfigurationCopy = toConfiguration;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.MobileSMS" platform:1];
  mode = [toConfigurationCopy mode];
  mode2 = [configurationCopy mode];
  v53 = handlerCopy;
  v54 = v14;
  if (mode == mode2)
  {
    v23 = 0;
  }

  else
  {
    v17 = kitCopy;
    selfCopy = self;
    mode3 = [toConfigurationCopy mode];
    if (mode3)
    {
      v50 = v17;
      mode4 = [configurationCopy mode];
      if (mode4)
      {
        mode5 = [toConfigurationCopy mode];
        mode6 = [configurationCopy mode];
        v23 = [mode5 isEqual:mode6] ^ 1;
      }

      else
      {
        v23 = 1;
      }

      v14 = v54;
      v17 = v50;
    }

    else
    {
      v23 = 1;
    }

    self = selfCopy;
    kitCopy = v17;
  }

  [toConfigurationCopy impactsAvailability];
  v24 = DNDResolvedImpactsAvailabilitySetting();
  [configurationCopy impactsAvailability];
  if (v24 != DNDResolvedImpactsAvailabilitySetting())
  {
    v23 = 1;
  }

  configuration = [configurationCopy configuration];
  configuration2 = [toConfigurationCopy configuration];
  v27 = v23 | [(DNDSUserAvailabilityCoordinator *)self _queue_didAppAvailabilityChangeForApplicationIdentifier:v14 fromConfiguration:configuration toConfiguration:configuration2];

  if (v27)
  {
    source = [kitCopy source];
    v28 = [kitCopy reason] != 1 && objc_msgSend(kitCopy, "reason") != 4;
    state = [kitCopy state];
    startDate = [state startDate];
    lastModified = [toConfigurationCopy lastModified];
    v35 = [startDate laterDate:lastModified];

    mode7 = [toConfigurationCopy mode];
    [toConfigurationCopy impactsAvailability];
    selfCopy2 = self;
    v49 = mode7;
    if (DNDResolvedImpactsAvailabilitySetting() == 2)
    {
      modeIdentifier = [mode7 modeIdentifier];
      v38 = [(DNDSUserAvailabilityCoordinator *)self _isLocalUserAvailableForMessagesWithModeIdentifier:modeIdentifier withError:0];

      identifier = [mode7 identifier];
      uUIDString = [identifier UUIDString];
    }

    else
    {
      uUIDString = 0;
      v38 = 1;
    }

    state2 = [kitCopy state];
    if ([state2 isActive])
    {
      v48 = v38;
      state3 = [kitCopy state];
      [state3 activeModeIdentifier];
      v42 = configurationCopy;
      v43 = v35;
      v45 = v44 = v28;
      v46 = [v45 length];

      v28 = v44;
      v35 = v43;
      configurationCopy = v42;

      if (v46)
      {
        v47 = v48;
LABEL_27:
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __116__DNDSUserAvailabilityCoordinator__queue_updateAvailabilityKit_fromConfiguration_toConfiguration_completionHandler___block_invoke;
        v56[3] = &unk_278F8A610;
        v31 = v53;
        v57 = v53;
        [(DNDSUserAvailabilityCoordinator *)selfCopy2 _publishStatusKitAvailability:v47 activityIdentifier:uUIDString local:source == 1 scheduled:v28 date:v35 forced:0 completion:v56];

        v14 = v54;
        goto LABEL_28;
      }
    }

    else
    {
    }

    uUIDString = 0;
    v47 = 1;
    goto LABEL_27;
  }

  v29 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_INFO, "Ignoring request to publish StatusKit availability; from and to configurations are the same.", buf, 2u);
  }

  uUIDString = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
  v31 = v53;
  (v53)[2](v53, uUIDString);
LABEL_28:
}

void __116__DNDSUserAvailabilityCoordinator__queue_updateAvailabilityKit_fromConfiguration_toConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1();
  }

  v10 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_INFO, "Published status request with identifier: %{public}@", &v13, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:v7 availability:v8];
  (*(v11 + 16))(v11, v12);
}

- (BOOL)_queue_didAppAvailabilityChangeForApplicationIdentifier:(id)identifier fromConfiguration:(id)configuration toConfiguration:(id)toConfiguration
{
  identifierCopy = identifier;
  queue = self->_queue;
  toConfigurationCopy = toConfiguration;
  configurationCopy = configuration;
  dispatch_assert_queue_V2(queue);
  applicationConfigurationType = [configurationCopy applicationConfigurationType];
  bundleID = [identifierCopy bundleID];
  v14 = [configurationCopy exceptionForApplication:bundleID];

  v15 = !(applicationConfigurationType | v14) || applicationConfigurationType == 1 && v14 != 1 || applicationConfigurationType == 2;
  applicationConfigurationType2 = [toConfigurationCopy applicationConfigurationType];
  bundleID2 = [identifierCopy bundleID];
  v18 = [toConfigurationCopy exceptionForApplication:bundleID2];

  v19 = !(applicationConfigurationType2 | v18) || applicationConfigurationType2 == 1 && v18 != 1 || applicationConfigurationType2 == 2;
  v20 = v15 != v19;

  return v20;
}

- (void)_queue_notifyIntentExtensionsOfUserAvailability:(id)availability applicationIdentifiers:(id)identifiers completionHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  identifiersCopy = identifiers;
  availabilityCopy = availability;
  dispatch_assert_queue_V2(queue);
  [(DNDSUserAvailabilityCoordinator *)self _queue_notifyIntentExtensionsOfUserAvailability:availabilityCopy availabilityOverride:-1 applicationIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)_queue_notifyIntentExtensionsOfUserAvailability:(id)availability availabilityOverride:(int64_t)override applicationIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  userAvailabilityTCCApprovedBundleIds = [(DNDSUserAvailabilityTCCProviding *)self->_tccProvider userAvailabilityTCCApprovedBundleIds];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v43 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (!v43)
  {
    v38 = 0;
    goto LABEL_28;
  }

  v38 = 0;
  v42 = *v52;
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v52 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v51 + 1) + 8 * i);
      v11 = [MEMORY[0x277CD3A68] appInfoWithApplicationRecord:v10];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      supportedIntentsByApp = [v11 supportedIntentsByApp];
      if ([supportedIntentsByApp containsObject:v13])
      {
        goto LABEL_23;
      }

      supportedActionsByExtensions = [v11 supportedActionsByExtensions];
      v16 = [supportedActionsByExtensions containsObject:v13];

      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = DNDSLogStateProvider;
      if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        bundleIdentifier = [v10 bundleIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = bundleIdentifier;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_INFO, "Found intent extension for app: %{public}@", &buf, 0xCu);
      }

      bundleIdentifier2 = [v10 bundleIdentifier];
      v21 = [userAvailabilityTCCApprovedBundleIds containsObject:bundleIdentifier2];

      supportedIntentsByApp = [(DNDSUserAvailabilityCoordinator *)selfCopy _entitlementRecordForApplicationRecord:v10];
      entitlements = [supportedIntentsByApp entitlements];
      v23 = [entitlements objectForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
      bOOLValue = [v23 BOOLValue];

      bundleIdentifier3 = [v10 bundleIdentifier];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__3;
      v60 = __Block_byref_object_dispose__3;
      v61 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifier3];
      v26 = DNDGrantedUserNotificationsAuthorizationForBundleIdentifier(bundleIdentifier3);
      if ((v21 & v26 & bOOLValue) == 1)
      {
        extensionLaunchQueue = selfCopy->_extensionLaunchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __145__DNDSUserAvailabilityCoordinator__queue_notifyIntentExtensionsOfUserAvailability_availabilityOverride_applicationIdentifiers_completionHandler___block_invoke;
        block[3] = &unk_278F8A6B0;
        v28 = identifiersCopy;
        p_buf = &buf;
        overrideCopy = override;
        v45 = v28;
        v46 = selfCopy;
        v47 = availabilityCopy;
        v48 = v10;
        dispatch_async(extensionLaunchQueue, block);

        ++v38;
        v29 = v45;
LABEL_21:

        goto LABEL_22;
      }

      if ((v21 & 1) == 0)
      {
        v29 = DNDSLogStateProvider;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier4 = [v10 bundleIdentifier];
          *v55 = 138543362;
          v56 = bundleIdentifier4;
          _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_INFO, "App (%{public}@) does not have user availability TCC permission, not launching extension.", v55, 0xCu);
        }

        goto LABEL_21;
      }

      if ((bOOLValue & 1) == 0)
      {
        v29 = DNDSLogStateProvider;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier5 = [v10 bundleIdentifier];
          *v55 = 138543362;
          v56 = bundleIdentifier5;
          _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_INFO, "App (%{public}@) does not have UN Communication entitlement, not launching extension.", v55, 0xCu);
        }

        goto LABEL_21;
      }

      if (!v26)
      {
        v29 = DNDSLogStateProvider;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier6 = [v10 bundleIdentifier];
          *v55 = 138543362;
          v56 = bundleIdentifier6;
          _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_INFO, "App (%{public}@) does not have UN authorization, not launching extension.", v55, 0xCu);
        }

        goto LABEL_21;
      }

LABEL_22:
      _Block_object_dispose(&buf, 8);

LABEL_23:
LABEL_24:
    }

    v43 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  }

  while (v43);
LABEL_28:

  v33 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_24912E000, v33, OS_LOG_TYPE_INFO, "Done dispatching launch blocks to _launchQueue", &buf, 2u);
  }

  handlerCopy[2](handlerCopy, v38);
}

void __145__DNDSUserAvailabilityCoordinator__queue_notifyIntentExtensionsOfUserAvailability_availabilityOverride_applicationIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  if (v3 && ![v3 containsObject:*(*(*(a1 + 64) + 8) + 40)])
  {
    v6 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_INFO, "Skipping Intent launch of %@ because relative availability did not change.", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4 == -1)
    {
      v8 = *(*(*(a1 + 64) + 8) + 40);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) activeModeIdentifier];
      v5 = [v9 _isLocalUserAvailableForAppId:v8 modeIdentifier:v10 withError:0];
    }

    else
    {
      v5 = v4 == 1;
    }

    v11 = [[DNDSUserAvailabilityIntentLauncher alloc] initWithApplicationRecord:*(a1 + 56) available:v5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __145__DNDSUserAvailabilityCoordinator__queue_notifyIntentExtensionsOfUserAvailability_availabilityOverride_applicationIdentifiers_completionHandler___block_invoke_2;
    v14[3] = &unk_278F8A688;
    v12 = v2;
    v15 = v12;
    [(DNDSUserAvailabilityIntentLauncher *)v11 launchIntentExtensionWithCompletion:v14];
    v13 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v12, v13);
  }
}

void __145__DNDSUserAvailabilityCoordinator__queue_notifyIntentExtensionsOfUserAvailability_availabilityOverride_applicationIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __145__DNDSUserAvailabilityCoordinator__queue_notifyIntentExtensionsOfUserAvailability_availabilityOverride_applicationIdentifiers_completionHandler___block_invoke_2_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_entitlementRecordForApplicationRecord:(id)record
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass = [mEMORY[0x277CF0CA8] deviceClass];

  v6 = recordCopy;
  if (deviceClass == 4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [recordCopy applicationExtensionRecords];
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    v18 = recordCopy;
    v6 = recordCopy;
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      v6 = recordCopy;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          infoDictionary = [v11 infoDictionary];
          v13 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

          v14 = [v13 objectForKey:@"NSExtensionPointIdentifier"];
          v15 = [v14 isEqualToString:@"com.apple.watchkit"];

          if (v15)
          {
            v16 = v11;

            v6 = v16;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    recordCopy = v18;
  }

  return v6;
}

- (void)sendStatusKitInvitationsForContacts:(id)contacts forceAvailabilityPublish:(BOOL)publish completionHandler:(id)handler
{
  contactsCopy = contacts;
  handlerCopy = handler;
  if (self->_active)
  {
    objc_initWeak(&location, self->_statusService);
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = 0;
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke;
    v13[3] = &unk_278F8A750;
    objc_copyWeak(&v18, &location);
    v14 = contactsCopy;
    selfCopy = self;
    v17 = buf;
    publishCopy = publish;
    v16 = handlerCopy;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v18);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_INFO, "Skipping invitation send request because User Availability is disabled.", buf, 2u);
    }

    if (handlerCopy)
    {
      v12 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
      (*(handlerCopy + 2))(handlerCopy, v12, MEMORY[0x277CBEBF8]);
    }
  }
}

void __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v87 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = dispatch_group_create();
  v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = *(v1 + 32);
  v3 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v79;
    *&v4 = 138412290;
    v49 = v4;
    v51 = v1;
    v52 = v2;
    v50 = *v79;
    do
    {
      v7 = 0;
      v55 = v5;
      do
      {
        if (*v79 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v78 + 1) + 8 * v7);
        v9 = objc_alloc_init(MEMORY[0x277D05A30]);
        v10 = [v8 contactIdentifier];
        [v9 setContactIdentifier:v10];

        v11 = [v8 phoneNumbers];
        v12 = [v11 count];

        if (v12)
        {
          [v9 setType:2];
          v13 = [v8 phoneNumbers];
        }

        else
        {
          v14 = [v8 emailAddresses];
          v15 = [v14 count];

          if (!v15)
          {
            goto LABEL_11;
          }

          [v9 setType:1];
          v13 = [v8 emailAddresses];
        }

        v16 = v13;
        v17 = [v13 anyObject];
        [v9 setValue:v17];

LABEL_11:
        v18 = *(v1 + 40);
        v77 = 0;
        v19 = [v18 exceptionalModesForContactHandle:v9 withError:{&v77, v49}];
        v20 = v77;
        v60 = [v19 allowed];
        [v19 silenced];
        v59 = v58 = v20;
        if (v20)
        {
          v21 = DNDSLogStateProvider;
          v22 = v58;
          if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
          {
            *buf = v49;
            v85 = v58;
            _os_log_error_impl(&dword_24912E000, v21, OS_LOG_TYPE_ERROR, "Error getting allowedModesForContactHandle: %@", buf, 0xCu);
          }
        }

        else
        {
          v57 = v19;
          dispatch_group_enter(v2);
          v23 = objc_opt_new();
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v24 = [v8 phoneNumbers];
          v25 = [v24 countByEnumeratingWithState:&v73 objects:v83 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v74;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v74 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:*(*(&v73 + 1) + 8 * i)];
                [v23 addObject:v29];
              }

              v26 = [v24 countByEnumeratingWithState:&v73 objects:v83 count:16];
            }

            while (v26);
          }

          v71 = 0u;
          v72 = 0u;
          v70 = 0u;
          v69 = 0u;
          v30 = [v8 emailAddresses];
          v31 = [v30 countByEnumeratingWithState:&v69 objects:v82 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v70;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v70 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:*(*(&v69 + 1) + 8 * j)];
                [v23 addObject:v35];
              }

              v32 = [v30 countByEnumeratingWithState:&v69 objects:v82 count:16];
            }

            while (v32);
          }

          v36 = [objc_alloc(MEMORY[0x277CF0488]) initWithAvailableDuringActivityIdentifiers:v60 unavailableDuringActivityIdentifiers:v59];
          v37 = [v8 phoneNumbers];
          v38 = [v37 allObjects];
          v39 = [v8 emailAddresses];
          v40 = [v39 allObjects];
          v41 = [v38 arrayByAddingObjectsFromArray:v40];

          v42 = [[DNDSAvailabilityInvitationRequest alloc] initWithHandles:v41 invitation:v36];
          [v53 addObject:v42];

          v43 = [MEMORY[0x277CBEAA8] date];
          v44 = [v36 statusKitInvitationPayloadWithDateCreated:v43];

          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_57;
          v66[3] = &unk_278F8A6D8;
          v1 = v51;
          v2 = v52;
          v68 = *(v51 + 56);
          v67 = v52;
          [WeakRetained inviteHandlesFromPrimaryAccountHandle:v23 withInvitationPayload:v44 completion:v66];

          v6 = v50;
          v5 = v55;
          v19 = v57;
          v22 = 0;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v5);
  }

  v45 = *(v1 + 40);
  v46 = *(v45 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_62;
  block[3] = &unk_278F8A728;
  v65 = *(v1 + 72);
  block[4] = v45;
  v61 = *(v1 + 48);
  v47 = v61;
  v64 = v61;
  v63 = v53;
  v48 = v53;
  dispatch_group_notify(v2, v46, block);
}

void __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DNDSLogStateProvider;
  if (v3)
  {
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
    {
      __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_57_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = NSClassFromString(&cfstr_Xctest.isa) != 0;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_INFO, "Successfully published AKAvailabilityInvitation", v5, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_62(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_INFO, "Forcing availability re-publish despite no updated invitations.", buf, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 8) != 1)
  {
    v8 = DNDSLogAvailabilityProvider;
    if (!os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "Skipping availability re-publish because User Availability is disabled.";
LABEL_15:
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
    goto LABEL_16;
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v8 = DNDSLogAvailabilityProvider;
    if (!os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "Skipping availability re-publish because there were no changes to allowed contacts.";
    goto LABEL_15;
  }

  v4 = [*(v3 + 40) lastCalculatedState];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_63;
    v11[3] = &unk_278F8A700;
    v13 = *(a1 + 48);
    v12 = *(a1 + 40);
    [v6 _publishStatusKitCurrentAvailabilityForced:0 override:-1 completionHandler:v11];

    v7 = v13;
    goto LABEL_18;
  }

  v8 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v9 = "Skipping availability re-publish because no mode is enabled.";
    goto LABEL_15;
  }

LABEL_16:
  v10 = *(a1 + 48);
  if (!v10)
  {
    return;
  }

  v7 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
  (*(v10 + 16))(v10, v7, *(a1 + 40));
LABEL_18:
}

void __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_63(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1();
  }

  v10 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_INFO, "Published status request with identifier: %{public}@", &v13, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:v7 availability:v8];
    (*(v11 + 16))(v11, v12, *(a1 + 32));
  }
}

- (BOOL)_isLocalUserAvailableForAppId:(id)id modeIdentifier:(id)identifier withError:(id *)error
{
  idCopy = id;
  identifierCopy = identifier;
  configurationProvider = self->_configurationProvider;
  v25 = 0;
  v11 = [(DNDSModeConfigurationProviding *)configurationProvider modeConfigurationForModeIdentifier:identifierCopy withError:&v25];
  v12 = v25;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    configuration = [v11 configuration];
    applicationConfigurationType = [configuration applicationConfigurationType];

    bundleID = [idCopy bundleID];
    v20 = [bundleID length];

    if (v20)
    {
      v21 = [(DNDSModeConfigurationProviding *)self->_configurationProvider exceptionForApplicationIdentifier:idCopy thread:0 forModeIdentifier:identifierCopy];
      if (!(applicationConfigurationType | v21))
      {
        v15 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 2;
    }

    v23 = applicationConfigurationType == 1 && v21 != 1;
    v15 = 1;
    if (applicationConfigurationType != 2 && !v23)
    {
      [v11 impactsAvailability];
      v15 = DNDResolvedImpactsAvailabilitySetting() != 2;
    }
  }

  else
  {
    v15 = 1;
    if (error && v12)
    {
      v16 = v12;
      *error = v13;
    }
  }

LABEL_21:

  return v15;
}

- (BOOL)_isLocalUserAvailableForMessagesWithModeIdentifier:(id)identifier withError:(id *)error
{
  identifierCopy = identifier;
  v7 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.MobileSMS" platform:1];
  configurationProvider = self->_configurationProvider;
  v23 = 0;
  v9 = [(DNDSModeConfigurationProviding *)configurationProvider modeConfigurationForModeIdentifier:identifierCopy withError:&v23];
  v10 = v23;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    configuration = [v9 configuration];
    applicationConfigurationType = [configuration applicationConfigurationType];

    v17 = [(DNDSModeConfigurationProviding *)self->_configurationProvider exceptionForApplicationIdentifier:v7 thread:0 forModeIdentifier:identifierCopy];
    configuration2 = [v9 configuration];
    senderConfigurationType = [configuration2 senderConfigurationType];

    if (!(applicationConfigurationType | v17))
    {
      goto LABEL_9;
    }

    if (!applicationConfigurationType && v17 == 2)
    {
      goto LABEL_12;
    }

    if (applicationConfigurationType == 1 && v17 == 1)
    {
      [v9 impactsAvailability];
      v13 = DNDResolvedImpactsAvailabilitySetting() != 2;
      goto LABEL_18;
    }

    v21 = applicationConfigurationType == 1 && v17 == 2;
    v22 = v21;
    if (applicationConfigurationType == 2 || v22)
    {
LABEL_12:
      [v9 impactsAvailability];
      v13 = DNDResolvedImpactsAvailabilitySetting() != 2 || (senderConfigurationType - 1) < 2;
    }

    else
    {
LABEL_9:
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
    if (error && v10)
    {
      v14 = v10;
      *error = v11;
    }
  }

LABEL_18:

  return v13;
}

- (BOOL)isLocalUserAvailableForApplicationIdentifier:(id)identifier withError:(id *)error
{
  identifierCopy = identifier;
  if (self->_active)
  {
    lastCalculatedState = [(DNDSStateProviding *)self->_stateProvider lastCalculatedState];
    activeModeIdentifier = [lastCalculatedState activeModeIdentifier];
    v9 = [(DNDSUserAvailabilityCoordinator *)self _isLocalUserAvailableForAppId:identifierCopy modeIdentifier:activeModeIdentifier withError:error];
  }

  else
  {
    v10 = DNDSLogAvailabilityProvider;
    v9 = 1;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_INFO, "Skipping availability check because User Availability is disabled.", v12, 2u);
    }
  }

  return v9;
}

- (BOOL)isTCCUserAvailabilityGrantedForBundleId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  active = self->_active;
  v6 = DNDSLogAvailabilityProvider;
  v7 = os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO);
  if (!active)
  {
    if (v7)
    {
      LOWORD(v15) = 0;
      v10 = "Skipping availability check because User Availability is disabled.";
      v11 = v6;
      v12 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&dword_24912E000, v11, v12, v10, &v15, 2u);
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (v7)
  {
    v15 = 138543362;
    v16 = idCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_INFO, "Looking up User Availability permission for bundleId: %{public}@", &v15, 0xCu);
  }

  if (![idCopy length])
  {
    v13 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v10 = "Empty bundleId passed to isTCCUserAvailabilityGrantedForBundleId";
      v11 = v13;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  userAvailabilityTCCApprovedBundleIds = [(DNDSUserAvailabilityTCCProviding *)self->_tccProvider userAvailabilityTCCApprovedBundleIds];
  v9 = [userAvailabilityTCCApprovedBundleIds containsObject:idCopy];

LABEL_12:
  return v9;
}

- (id)allowedModesForContactHandle:(id)handle withError:(id *)error
{
  v4 = [(DNDSUserAvailabilityCoordinator *)self exceptionalModesForContactHandle:handle withError:error];
  allowed = [v4 allowed];
  if ([allowed count])
  {
    v6 = allowed;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)silencedModesForContactHandle:(id)handle withError:(id *)error
{
  v4 = [(DNDSUserAvailabilityCoordinator *)self exceptionalModesForContactHandle:handle withError:error];
  silenced = [v4 silenced];
  if ([silenced count])
  {
    v6 = silenced;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)exceptionalModesForContactHandle:(id)handle withError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (self->_active)
  {
    configurationProvider = self->_configurationProvider;
    v39 = 0;
    v7 = [(DNDSModeConfigurationProviding *)configurationProvider modeConfigurationsWithError:&v39];
    v8 = v39;
    v9 = v8;
    if (v8)
    {
      if (error)
      {
        v10 = v8;
        v11 = 0;
        *error = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v31 = v7;
      v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [v7 allValues];
      v14 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v35 + 1) + 8 * i);
            configuration = [v18 configuration];
            senderConfigurationType = [configuration senderConfigurationType];

            v21 = self->_configurationProvider;
            mode = [v18 mode];
            modeIdentifier = [mode modeIdentifier];
            v24 = [(DNDSModeConfigurationProviding *)v21 exceptionForContactHandle:handleCopy forModeIdentifier:modeIdentifier];

            v25 = v13;
            if (senderConfigurationType | v24)
            {
              v26 = senderConfigurationType == 1 && v24 == 1;
              v25 = v32;
              if (!v26)
              {
                continue;
              }
            }

            mode2 = [v18 mode];
            identifier = [mode2 identifier];
            uUIDString = [identifier UUIDString];
            [v25 addObject:uUIDString];
          }

          v15 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v15);
      }

      v11 = [[DNDSContentHandleExceptionalModesBox alloc] initWithContactHandle:handleCopy allowed:v13 silenced:v32];
      v9 = 0;
      v7 = v31;
    }
  }

  else
  {
    v12 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_INFO, "Skipping exceptional modes check because User Availability is disabled.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)userAvailabilityInActiveModeForContactHandle:(id)handle withError:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (self->_active)
  {
    if ([(DNDSUserAvailabilityCoordinator *)self _isTCCUserAvailabilityGrantedForMessages])
    {
      lastCalculatedState = [(DNDSStateProviding *)self->_stateProvider lastCalculatedState];
      configurationProvider = self->_configurationProvider;
      activeModeIdentifier = [lastCalculatedState activeModeIdentifier];
      v10 = [(DNDSModeConfigurationProviding *)configurationProvider modeConfigurationForModeIdentifier:activeModeIdentifier withError:0];
      configuration = [v10 configuration];
      senderConfigurationType = [configuration senderConfigurationType];

      v13 = self->_configurationProvider;
      activeModeIdentifier2 = [lastCalculatedState activeModeIdentifier];
      v15 = [(DNDSModeConfigurationProviding *)v13 exceptionForContactHandle:handleCopy forModeIdentifier:activeModeIdentifier2];

      v18 = senderConfigurationType == 1 && v15 != 1 || senderConfigurationType == 2;
      if (senderConfigurationType | v15)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1;
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSUserAvailabilityCoordinator userAvailabilityInActiveModeForContactHandle:withError:];
      if (error)
      {
        goto LABEL_20;
      }
    }

    else if (error)
    {
LABEL_20:
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D05840];
      v26 = *MEMORY[0x277CCA450];
      v27[0] = @"Calling bundleId does not have permission to read user availability.";
      v19 = 1;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *error = [v21 errorWithDomain:v22 code:1004 userInfo:v23];

      goto LABEL_23;
    }

    v19 = 1;
    goto LABEL_23;
  }

  v20 = DNDSLogAvailabilityProvider;
  v19 = 1;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    *v25 = 0;
    v19 = 1;
    _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_INFO, "Skipping availability check for contact because User Availability is disabled.", v25, 2u);
  }

LABEL_23:

  return v19;
}

- (id)publishStatusKitAvailabilityReturningError:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (self->_active)
  {
    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__3;
    v40 = __Block_byref_object_dispose__3;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__3;
    v34 = __Block_byref_object_dispose__3;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = 0;
    v5 = dispatch_semaphore_create(0);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __78__DNDSUserAvailabilityCoordinator_publishStatusKitAvailabilityReturningError___block_invoke;
    v19 = &unk_278F8A778;
    v21 = buf;
    v22 = &v30;
    v23 = &v24;
    v6 = v5;
    v20 = v6;
    [(DNDSUserAvailabilityCoordinator *)self _publishStatusKitCurrentAvailabilityForced:0 override:-1 completionHandler:&v16];
    v7 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      if (error)
      {
        v8 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277CCA450];
        v43[0] = @"Call to [SKStatusPublishingService publishStatusRequest:completion:] timed out";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:{1, v16, v17, v18, v19}];
        *error = [v8 errorWithDomain:*MEMORY[0x277D05840] code:1000 userInfo:v9];
      }

      v10 = [DNDSUserAvailabilityPublishResult alloc];
      v11 = 0;
      v12 = 0;
    }

    else
    {
      if (error)
      {
        *error = v25[5];
      }

      v10 = [DNDSUserAvailabilityPublishResult alloc];
      v11 = *(v37 + 5);
      v12 = v31[5];
    }

    v14 = [(DNDSUserAvailabilityPublishResult *)v10 initWithIdentifier:v11 availability:v12, v16, v17, v18, v19];

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_INFO, "Skipping publish because User Availability is disabled.", buf, 2u);
    }

    v14 = [[DNDSUserAvailabilityPublishResult alloc] initWithIdentifier:0 availability:0];
  }

  return v14;
}

void __78__DNDSUserAvailabilityCoordinator_publishStatusKitAvailabilityReturningError___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1();
  }

  v10 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    v20 = 138543362;
    v21 = v7;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_INFO, "Published status request with identifier: %{public}@", &v20, 0xCu);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;
  v16 = v8;

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v9;
  v19 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_publishStatusKitCurrentAvailabilityForced:(BOOL)forced override:(int64_t)override completionHandler:(id)handler
{
  forcedCopy = forced;
  v38[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  _isTCCUserAvailabilityGrantedForMessages = [(DNDSUserAvailabilityCoordinator *)self _isTCCUserAvailabilityGrantedForMessages];
  v10 = _isTCCUserAvailabilityGrantedForMessages;
  if (forcedCopy || _isTCCUserAvailabilityGrantedForMessages)
  {
    if (override != -1)
    {
      v15 = DNDSLogAvailabilityProvider;
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = v15;
        v18 = [v16 numberWithInteger:override];
        *buf = 138412290;
        v36 = v18;
        _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Applying override to focus status update: %@", buf, 0xCu);
      }

      uUIDString = 0;
      v19 = override != 0;
      goto LABEL_19;
    }

    lastCalculatedState = [(DNDSStateProviding *)self->_stateProvider lastCalculatedState];
    if (![lastCalculatedState isActive])
    {
      uUIDString = 0;
      v19 = 1;
      goto LABEL_18;
    }

    configurationProvider = self->_configurationProvider;
    activeModeIdentifier = [lastCalculatedState activeModeIdentifier];
    v34 = 0;
    v23 = [(DNDSModeConfigurationProviding *)configurationProvider modeConfigurationForModeIdentifier:activeModeIdentifier withError:&v34];
    v24 = v34;

    if (v24)
    {
      v25 = DNDSLogAvailabilityProvider;
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
      {
        [DNDSUserAvailabilityCoordinator _publishStatusKitCurrentAvailabilityForced:v25 override:lastCalculatedState completionHandler:?];
      }
    }

    else
    {
      if (v10)
      {
        [v23 impactsAvailability];
        if (DNDResolvedImpactsAvailabilitySetting() == 2)
        {
          activeModeIdentifier2 = [lastCalculatedState activeModeIdentifier];
          v19 = [(DNDSUserAvailabilityCoordinator *)self _isLocalUserAvailableForMessagesWithModeIdentifier:activeModeIdentifier2 withError:0];

          mode = [v23 mode];
          identifier = [mode identifier];
          uUIDString = [identifier UUIDString];

          if (![uUIDString length])
          {
            v29 = DNDSLogAvailabilityProvider;
            if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_FAULT))
            {
              [DNDSUserAvailabilityCoordinator _publishStatusKitCurrentAvailabilityForced:v29 override:lastCalculatedState completionHandler:?];
            }

            uUIDString = 0;
            v19 = 1;
          }
        }

        else
        {
          v31 = DNDSLogAvailabilityProvider;
          v19 = 1;
          if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
          {
            v32 = v31;
            activeModeIdentifier3 = [lastCalculatedState activeModeIdentifier];
            *buf = 138477827;
            v36 = activeModeIdentifier3;
            _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_INFO, ".impactsAvailability is disabled for %{private}@", buf, 0xCu);
          }

          uUIDString = 0;
        }

        goto LABEL_16;
      }

      if (forcedCopy)
      {
        v30 = DNDSLogAvailabilityProvider;
        if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Forced focus status update indicating not focused due to TCC revocation", buf, 2u);
        }
      }
    }

    uUIDString = 0;
    v19 = 1;
LABEL_16:

LABEL_18:
LABEL_19:
    [(DNDSUserAvailabilityCoordinator *)self _publishStatusKitAvailability:v19 activityIdentifier:uUIDString local:1 scheduled:0 date:0 forced:forcedCopy completion:handlerCopy];
    goto LABEL_20;
  }

  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
  {
    [DNDSUserAvailabilityCoordinator userAvailabilityInActiveModeForContactHandle:withError:];
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277D05840];
  v37 = *MEMORY[0x277CCA450];
  v38[0] = @"Caller does not have permission to trigger publishing user availability.";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  uUIDString = [v11 errorWithDomain:v12 code:1004 userInfo:v13];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, uUIDString);
  }

LABEL_20:
}

- (void)_publishStatusKitAvailability:(BOOL)availability activityIdentifier:(id)identifier local:(BOOL)local scheduled:(BOOL)scheduled date:(id)date forced:(BOOL)forced completion:(id)completion
{
  scheduledCopy = scheduled;
  localCopy = local;
  availabilityCopy = availability;
  v35[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  completionCopy = completion;
  if (forced || [(DNDSUserAvailabilityCoordinator *)self _isTCCUserAvailabilityGrantedForMessages])
  {
    v18 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
    {
      v19 = @"UNAVAILABLE";
      if (availabilityCopy)
      {
        v19 = @"AVAILABLE";
      }

      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = identifierCopy;
      _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_INFO, "Informing availability (%{public}@) for activity %{public}@ to StatusKit", buf, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x277CF0480]) initWithAvailable:availabilityCopy activityIdentifierString:identifierCopy];
    statusPublishRequest = [v20 statusPublishRequest];
    [statusPublishRequest setIsSecondaryDeviceRepublish:!localCopy];
    [statusPublishRequest setIsScheduledRequest:scheduledCopy];
    [statusPublishRequest setDateCreated:dateCopy];
    statusService = self->_statusService;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __123__DNDSUserAvailabilityCoordinator__publishStatusKitAvailability_activityIdentifier_local_scheduled_date_forced_completion___block_invoke;
    v27[3] = &unk_278F8A7A0;
    v28 = v20;
    v29 = completionCopy;
    v23 = v20;
    [(SKStatusPublishingService *)statusService publishStatusRequest:statusPublishRequest completion:v27];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSUserAvailabilityCoordinator userAvailabilityInActiveModeForContactHandle:withError:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D05840];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"Caller does not have permission to trigger publishing user availability.";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    statusPublishRequest = [v24 errorWithDomain:v25 code:1004 userInfo:v26];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, statusPublishRequest);
    }
  }
}

void __123__DNDSUserAvailabilityCoordinator__publishStatusKitAvailability_activityIdentifier_local_scheduled_date_forced_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
  {
    __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1();
  }

  v7 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_INFO, "Published status request with identifier: %{public}@", &v9, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, *(a1 + 32), v6);
  }
}

- (void)resumeUpdatingInvitationsForContacts:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)suspendWithOverrideSetting:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__DNDSUserAvailabilityCoordinator_suspendWithOverrideSetting_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __145__DNDSUserAvailabilityCoordinator__queue_notifyIntentExtensionsOfUserAvailability_availabilityOverride_applicationIdentifiers_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __114__DNDSUserAvailabilityCoordinator_sendStatusKitInvitationsForContacts_forceAvailabilityPublish_completionHandler___block_invoke_57_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)userAvailabilityInActiveModeForContactHandle:withError:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_publishStatusKitCurrentAvailabilityForced:(void *)a1 override:(void *)a2 completionHandler:.cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 activeModeIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v3, OS_LOG_TYPE_ERROR, "Error getting mode configuration for %{private}@", v5, 0xCu);
}

- (void)_publishStatusKitCurrentAvailabilityForced:(void *)a1 override:(void *)a2 completionHandler:.cold.3(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 activeModeIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_24912E000, v3, OS_LOG_TYPE_FAULT, "Unexpected empty identifier UUID or nil mode for modeIdentifier, modeIdentifier=%{private}@", v5, 0xCu);
}

@end