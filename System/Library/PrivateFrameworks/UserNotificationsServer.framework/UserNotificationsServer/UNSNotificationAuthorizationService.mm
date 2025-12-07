@interface UNSNotificationAuthorizationService
- (BOOL)_queue_isCarPlayAvailableForApplication:(id)application;
- (UNSNotificationAuthorizationService)initWithDataProviderFactory:(id)factory settingsService:(id)service localizationService:(id)localizationService;
- (void)_didForegroundApplicationWithBundleIdentifier:(id)identifier;
- (void)_queue_requestAuthorizationWithOptions:(unint64_t)options forNotificationSourceDescription:(id)description withExpirationDate:(id)date completionHandler:(id)handler;
- (void)_queue_requestCriticalAlertAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler;
- (void)_queue_requestRemoveAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler;
- (void)didChangeProcessState:(id)state forBundleIdentifier:(id)identifier;
- (void)requestAuthorizationWithOptions:(unint64_t)options expirationDate:(id)date forNotificationSourceDescription:(id)description completionHandler:(id)handler;
- (void)requestCriticalAlertAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler;
- (void)requestRemoveAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler;
@end

@implementation UNSNotificationAuthorizationService

- (UNSNotificationAuthorizationService)initWithDataProviderFactory:(id)factory settingsService:(id)service localizationService:(id)localizationService
{
  factoryCopy = factory;
  serviceCopy = service;
  localizationServiceCopy = localizationService;
  v26.receiver = self;
  v26.super_class = UNSNotificationAuthorizationService;
  v12 = [(UNSNotificationAuthorizationService *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataProviderFactory, factory);
    objc_storeStrong(&v13->_settingsService, service);
    objc_storeStrong(&v13->_localizationService, localizationService);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.usernotificationsserver.AuthorizationService", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    v17 = [(UNSAuthorizationAlertController *)[UNSCriticalAlertAuthorizationAlertController alloc] initWithQueue:v13->_queue];
    criticalAlertAuthorizationAlertController = v13->_criticalAlertAuthorizationAlertController;
    v13->_criticalAlertAuthorizationAlertController = v17;

    v19 = [(UNSAuthorizationAlertController *)[UNSNotificationAuthorizationAlertController alloc] initWithQueue:v13->_queue];
    notificationAuthorizationAlertController = v13->_notificationAuthorizationAlertController;
    v13->_notificationAuthorizationAlertController = v19;

    v21 = [(UNSAuthorizationAlertController *)[UNSNotificationDeliveryAuthorizationAlertController alloc] initWithQueue:v13->_queue];
    notificationDeliveryAuthorizationAlertController = v13->_notificationDeliveryAuthorizationAlertController;
    v13->_notificationDeliveryAuthorizationAlertController = v21;

    v23 = objc_alloc_init(MEMORY[0x277CF8A28]);
    policyEvaluator = v13->_policyEvaluator;
    v13->_policyEvaluator = v23;
  }

  return v13;
}

- (void)requestAuthorizationWithOptions:(unint64_t)options expirationDate:(id)date forNotificationSourceDescription:(id)description completionHandler:(id)handler
{
  dateCopy = date;
  descriptionCopy = description;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke;
  block[3] = &unk_279E10268;
  v20 = handlerCopy;
  optionsCopy = options;
  block[4] = self;
  v18 = descriptionCopy;
  v19 = dateCopy;
  v14 = handlerCopy;
  v15 = dateCopy;
  v16 = descriptionCopy;
  dispatch_async(queue, block);
}

void __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke_2;
  v6[3] = &unk_279E10240;
  v9 = v2;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 56);
  [v4 _queue_requestAuthorizationWithOptions:v2 & 0xFFFFFFFFFFFFFFEFLL forNotificationSourceDescription:v7 withExpirationDate:v5 completionHandler:v6];
}

void __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 56) & 0x10) != 0)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke_3;
    block[3] = &unk_279E10218;
    block[4] = v8;
    v11 = v7;
    v13 = *(a1 + 48);
    v14 = a2;
    v12 = v5;
    dispatch_async(v9, block);
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, a2, v5);
    }
  }
}

void __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke_4;
  v4[3] = &unk_279E101F0;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v5 = *(a1 + 48);
  [v2 _queue_requestCriticalAlertAuthorizationForNotificationSourceDescription:v3 completionHandler:v4];
}

uint64_t __137__UNSNotificationAuthorizationService_requestAuthorizationWithOptions_expirationDate_forNotificationSourceDescription_completionHandler___block_invoke_4(uint64_t a1, int a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, (*(a1 + 48) | a2) & 1, *(a1 + 32));
  }

  return result;
}

- (void)requestRemoveAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler
{
  descriptionCopy = description;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__UNSNotificationAuthorizationService_requestRemoveAuthorizationForNotificationSourceDescription_completionHandler___block_invoke;
  block[3] = &unk_279E10290;
  block[4] = self;
  v12 = descriptionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = descriptionCopy;
  dispatch_async(queue, block);
}

- (void)requestCriticalAlertAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler
{
  descriptionCopy = description;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__UNSNotificationAuthorizationService_requestCriticalAlertAuthorizationForNotificationSourceDescription_completionHandler___block_invoke;
  block[3] = &unk_279E10290;
  block[4] = self;
  v12 = descriptionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = descriptionCopy;
  dispatch_async(queue, block);
}

- (void)didChangeProcessState:(id)state forBundleIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if ([stateCopy isRunning])
    {
      endowmentNamespaces = [stateCopy endowmentNamespaces];
      v8 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

      if (v8)
      {
        [(UNSNotificationAuthorizationService *)self _didForegroundApplicationWithBundleIdentifier:identifierCopy];
      }
    }
  }
}

- (void)_didForegroundApplicationWithBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:identifierCopy];
  isAppClip = [(__CFString *)v5 isAppClip];
  wantsEphemeralNotifications = [(__CFString *)v5 wantsEphemeralNotifications];
  v8 = *MEMORY[0x277CE20B0];
  v9 = os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT);
  if (isAppClip)
  {
    v10 = wantsEphemeralNotifications == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v9)
    {
      v11 = @"NO";
      if (isAppClip)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138543874;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = v12;
      if (wantsEphemeralNotifications)
      {
        v11 = @"YES";
      }

      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Foreground app will not request ephemeral notifications isAppClip: %{public}@ wantsEphemeral notifications: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 138543618;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] App clip wants ephemeral notifications for foregrounded application with source description: %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:28800.0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__UNSNotificationAuthorizationService__didForegroundApplicationWithBundleIdentifier___block_invoke;
    v14[3] = &unk_279E102B8;
    v15 = identifierCopy;
    [(UNSNotificationAuthorizationService *)self requestAuthorizationWithOptions:7 expirationDate:v13 forNotificationSourceDescription:v5 completionHandler:v14];
  }
}

void __85__UNSNotificationAuthorizationService__didForegroundApplicationWithBundleIdentifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_ERROR))
  {
    __85__UNSNotificationAuthorizationService__didForegroundApplicationWithBundleIdentifier___block_invoke_cold_1();
  }
}

- (void)_queue_requestAuthorizationWithOptions:(unint64_t)options forNotificationSourceDescription:(id)description withExpirationDate:(id)date completionHandler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  dateCopy = date;
  handlerCopy = handler;
  bundleIdentifier = [descriptionCopy bundleIdentifier];
  v14 = MEMORY[0x277CE20B0];
  v15 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v61 = bundleIdentifier;
    v62 = 2048;
    optionsCopy3 = options;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization with options %ld", buf, 0x16u);
  }

  v16 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:bundleIdentifier];
  if ((options & 8) != 0 && ![(UNSNotificationAuthorizationService *)self _queue_isCarPlayAvailableForApplication:v16])
  {
    v17 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = bundleIdentifier;
      _os_log_impl(&dword_270AA8000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] CarPlay authorization is not permitted", buf, 0xCu);
    }

    options &= ~8uLL;
  }

  v18 = [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory notificationSettingsForBundleIdentifier:bundleIdentifier];
  v19 = v18;
  if ((options & 0x6F) != 0)
  {
    if (dateCopy)
    {
      v20 = *v14;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = bundleIdentifier;
        _os_log_impl(&dword_270AA8000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppress user authorization prompt for temporary authorization", buf, 0xCu);
      }

      v21 = MEMORY[0x277CFA6B0];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __148__UNSNotificationAuthorizationService__queue_requestAuthorizationWithOptions_forNotificationSourceDescription_withExpirationDate_completionHandler___block_invoke;
      v52[3] = &unk_279E102E0;
      v53 = bundleIdentifier;
      v54 = v19;
      selfCopy = self;
      optionsCopy2 = options;
      v56 = dateCopy;
      v57 = descriptionCopy;
      v58 = handlerCopy;
      [v21 getUserNotificationConsentForBundleID:v53 completion:v52];

      goto LABEL_40;
    }

    if ([v18 authorizationStatus] == 2 || objc_msgSend(v19, "authorizationStatus") == 1)
    {
      v23 = *v14;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v61 = bundleIdentifier;
        v62 = 2048;
        optionsCopy3 = options;
        _os_log_impl(&dword_270AA8000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already registered. Update authorization with options %ld", buf, 0x16u);
      }

      -[UNSDefaultDataProviderFactory updateAuthorizationWithOptions:scheduledDeliveryEnabled:forNotificationSourceDescription:completionHandler:](self->_dataProviderFactory, "updateAuthorizationWithOptions:scheduledDeliveryEnabled:forNotificationSourceDescription:completionHandler:", options, [v19 scheduledDeliverySetting] == 2, descriptionCopy, handlerCopy);
      goto LABEL_40;
    }

    if ((options & 0x10000) != 0)
    {
      v26 = *v14;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = bundleIdentifier;
        _os_log_impl(&dword_270AA8000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppress user authorization prompt for disabled request", buf, 0xCu);
      }

      dataProviderFactory = self->_dataProviderFactory;
      v28 = [v19 scheduledDeliverySetting] == 2;
      v29 = dataProviderFactory;
      v30 = 1;
      goto LABEL_39;
    }

    if ([descriptionCopy suppressUserAuthorizationPrompt])
    {
      v24 = *v14;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = bundleIdentifier;
        v25 = "[%{public}@] Suppress user authorization prompt for system service";
LABEL_37:
        _os_log_impl(&dword_270AA8000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v40 = [mEMORY[0x277D262A0] isNotificationsModificationAllowedForBundleID:bundleIdentifier];

    if ((v40 & 1) == 0)
    {
      v24 = *v14;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = bundleIdentifier;
        v25 = "[%{public}@] Suppress user authorization prompt for restricted application";
        goto LABEL_37;
      }

LABEL_38:
      v32 = self->_dataProviderFactory;
      v28 = [v19 scheduledDeliverySetting] == 2;
      v29 = v32;
      v30 = 2;
LABEL_39:
      [(UNSDefaultDataProviderFactory *)v29 requestAuthorizationStatus:v30 withOptions:options scheduledDeliveryEnabled:v28 forNotificationSourceDescription:descriptionCopy completionHandler:handlerCopy];
      goto LABEL_40;
    }

    if ((options & 0x40) != 0)
    {
      v33 = *v14;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = bundleIdentifier;
        _os_log_impl(&dword_270AA8000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppress user authorization prompt for provisional request", buf, 0xCu);
      }

      v34 = self->_dataProviderFactory;
      v28 = [v19 scheduledDeliverySetting] == 2;
      v29 = v34;
      v30 = 3;
      goto LABEL_39;
    }

    if (_os_feature_enabled_impl())
    {
      notificationSystemSettings = [(UNSNotificationSettingsService *)self->_settingsService notificationSystemSettings];
      scheduledDeliverySetting = [notificationSystemSettings scheduledDeliverySetting];

      v31 = 32;
      if (scheduledDeliverySetting == 2)
      {
        v31 = 40;
      }
    }

    else
    {
      v31 = 32;
    }

    v39 = *(&self->super.isa + v31);
    v35 = *v14;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = bundleIdentifier;
      _os_log_impl(&dword_270AA8000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request notification user authorization prompt", buf, 0xCu);
    }

    v45 = [(UNCLocalizationService *)self->_localizationService bundleWithIdentifier:bundleIdentifier];
    localizedInfoDictionary = [v45 localizedInfoDictionary];
    v42 = [localizedInfoDictionary bs_safeObjectForKey:@"NSUserNotificationsUsageDescription" ofType:objc_opt_class()];
    if (!v42)
    {
      infoDictionary = [v45 infoDictionary];
      v42 = [infoDictionary bs_safeObjectForKey:@"NSUserNotificationsUsageDescription" ofType:objc_opt_class()];
    }

    displayName = [descriptionCopy displayName];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __148__UNSNotificationAuthorizationService__queue_requestAuthorizationWithOptions_forNotificationSourceDescription_withExpirationDate_completionHandler___block_invoke_85;
    v46[3] = &unk_279E10308;
    v47 = bundleIdentifier;
    selfCopy2 = self;
    optionsCopy4 = options;
    v49 = descriptionCopy;
    v50 = handlerCopy;
    [v39 requestAuthorizationForBundleIdentifier:v47 displayName:displayName usageDescription:v42 withResult:v46];
  }

  else
  {
    v22 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = bundleIdentifier;
      _os_log_impl(&dword_270AA8000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] No options requiring notification authorization", buf, 0xCu);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, [v19 hasEnabledSettings], 0);
    }
  }

LABEL_40:
}

void __148__UNSNotificationAuthorizationService__queue_requestAuthorizationWithOptions_forNotificationSourceDescription_withExpirationDate_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_ERROR))
    {
      __148__UNSNotificationAuthorizationService__queue_requestAuthorizationWithOptions_forNotificationSourceDescription_withExpirationDate_completionHandler___block_invoke_cold_1();
    }
  }

  else if (a2)
  {
    if ([*(a1 + 40) authorizationStatus] == 2 || objc_msgSend(*(a1 + 40), "authorizationStatus") == 3)
    {
      v9 = *MEMORY[0x277CE20B0];
      if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        v12 = v9;
        [v10 authorizationStatus];
        v13 = UNAuthorizationStatusString();
        *buf = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already authorized with %{public}@. Not requesting ephemeral authorization.", buf, 0x16u);
      }
    }

    else
    {
      v16 = *MEMORY[0x277CE20B0];
      if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        *buf = 138543618;
        v19 = v17;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting temporary authorization with user consent with last grant date %@", buf, 0x16u);
      }

      [*(*(a1 + 48) + 8) requestAuthorizationStatus:4 withOptions:*(a1 + 80) scheduledDeliveryEnabled:objc_msgSend(*(a1 + 40) expirationDate:"scheduledDeliverySetting") == 2 lastUserGrantDate:*(a1 + 56) forNotificationSourceDescription:v7 completionHandler:{*(a1 + 64), *(a1 + 72)}];
    }
  }

  else
  {
    v14 = *MEMORY[0x277CE20B0];
    if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_270AA8000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization denial due to user response", buf, 0xCu);
    }

    [*(*(a1 + 48) + 8) requestAuthorizationStatus:1 withOptions:*(a1 + 80) scheduledDeliveryEnabled:0 forNotificationSourceDescription:*(a1 + 64) completionHandler:*(a1 + 72)];
  }
}

void *__148__UNSNotificationAuthorizationService__queue_requestAuthorizationWithOptions_forNotificationSourceDescription_withExpirationDate_completionHandler___block_invoke_85(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) <= 1)
  {
    v4 = *MEMORY[0x277CE20B0];
    if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v17 = 138543362;
      v18 = v5;
      _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Approved by user", &v17, 0xCu);
    }

    v6 = a2 == 2;
    v7 = a1[6];
    v8 = *(a1[5] + 8);
    v10 = a1[7];
    v9 = a1[8];
    v11 = 2;
    return [v8 requestAuthorizationStatus:v11 withOptions:v9 scheduledDeliveryEnabled:v6 forNotificationSourceDescription:v7 completionHandler:v10];
  }

  v12 = *MEMORY[0x277CE20B0];
  v13 = os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v13)
    {
      v16 = a1[4];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied by user", &v17, 0xCu);
    }

    v7 = a1[6];
    v8 = *(a1[5] + 8);
    v10 = a1[7];
    v9 = a1[8];
    v11 = 1;
    v6 = 0;
    return [v8 requestAuthorizationStatus:v11 withOptions:v9 scheduledDeliveryEnabled:v6 forNotificationSourceDescription:v7 completionHandler:v10];
  }

  if (v13)
  {
    v14 = a1[4];
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] No response by user", &v17, 0xCu);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 2))(result, 0, 0);
  }

  return result;
}

- (void)_queue_requestCriticalAlertAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  handlerCopy = handler;
  bundleIdentifier = [descriptionCopy bundleIdentifier];
  v9 = MEMORY[0x277CE20B0];
  v10 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = bundleIdentifier;
    _os_log_impl(&dword_270AA8000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting critical alert authorization", buf, 0xCu);
  }

  v11 = [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory notificationSettingsForBundleIdentifier:bundleIdentifier];
  if ([v11 criticalAlertSetting])
  {
    v12 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v27 = bundleIdentifier;
    v13 = "[%{public}@] Already registered for critical alerts.";
    goto LABEL_16;
  }

  if (([descriptionCopy allowCriticalAlerts] & 1) == 0)
  {
    v12 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v27 = bundleIdentifier;
    v13 = "[%{public}@] Critical alert authorization is not permitted";
    goto LABEL_16;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v15 = [mEMORY[0x277D262A0] isNotificationsModificationAllowedForBundleID:bundleIdentifier];

  if ((v15 & 1) == 0)
  {
    v12 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v27 = bundleIdentifier;
    v13 = "[%{public}@] Suppress critical alert user authorization prompt for restricted application";
LABEL_16:
    _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_17:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, [v11 criticalAlertSetting] == 2, 0);
    }

    goto LABEL_19;
  }

  suppressUserAuthorizationPrompt = [descriptionCopy suppressUserAuthorizationPrompt];
  v17 = *v9;
  v18 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
  if (suppressUserAuthorizationPrompt)
  {
    if (v18)
    {
      *buf = 138543362;
      v27 = bundleIdentifier;
      _os_log_impl(&dword_270AA8000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppress critical alert user authorization prompt for system service", buf, 0xCu);
    }

    [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory setCriticalAlertAuthorization:1 forNotificationSourceDescription:descriptionCopy completionHandler:handlerCopy];
  }

  else
  {
    if (v18)
    {
      *buf = 138543362;
      v27 = bundleIdentifier;
      _os_log_impl(&dword_270AA8000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request critical alert user authorization prompt", buf, 0xCu);
    }

    criticalAlertAuthorizationAlertController = self->_criticalAlertAuthorizationAlertController;
    displayName = [descriptionCopy displayName];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __130__UNSNotificationAuthorizationService__queue_requestCriticalAlertAuthorizationForNotificationSourceDescription_completionHandler___block_invoke;
    v21[3] = &unk_279E10330;
    v22 = bundleIdentifier;
    selfCopy = self;
    v24 = descriptionCopy;
    v25 = handlerCopy;
    [(UNSAuthorizationAlertController *)criticalAlertAuthorizationAlertController requestAuthorizationForBundleIdentifier:v22 displayName:displayName usageDescription:&stru_288095958 withResult:v21];
  }

LABEL_19:
}

uint64_t __130__UNSNotificationAuthorizationService__queue_requestCriticalAlertAuthorizationForNotificationSourceDescription_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"denied";
    v6 = a1[4];
    if (a2 == 1)
    {
      v5 = @"approved";
    }

    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Critical alert %{public}@ by user", &v8, 0x16u);
  }

  return [*(a1[5] + 8) setCriticalAlertAuthorization:a2 == 1 forNotificationSourceDescription:a1[6] completionHandler:a1[7]];
}

- (BOOL)_queue_isCarPlayAvailableForApplication:(id)application
{
  v4 = [MEMORY[0x277CF8A10] declarationForAppProxy:application];
  v5 = [(CRCarPlayAppPolicyEvaluator *)self->_policyEvaluator effectivePolicyForAppDeclaration:v4];
  showsNotifications = [v5 showsNotifications];

  return showsNotifications;
}

- (void)_queue_requestRemoveAuthorizationForNotificationSourceDescription:(id)description completionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  handlerCopy = handler;
  v8 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    bundleIdentifier = [descriptionCopy bundleIdentifier];
    v11 = 138543362;
    v12 = bundleIdentifier;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting remove authorization", &v11, 0xCu);
  }

  [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory requestRemoveAuthorizationforNotificationSourceDescription:descriptionCopy completionHandler:handlerCopy];
}

@end