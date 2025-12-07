@interface PDCPrivacyAlertPresenter
+ (id)sharedPresenter;
- (PDCPrivacyAlertPresenter)init;
- (void)_activateAlertHandleForIdentity:(id)identity settings:(id)settings repsonseHandler:(id)handler;
- (void)_ensureAppIsLaunchableWithIdentity:(id)identity completion:(id)completion;
- (void)activateRemoteAlertWithIdentity:(id)identity requestHandle:(id)handle forcePresent:(BOOL)present completionHandler:(id)handler;
- (void)didCancelRequestHandle:(id)handle;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation PDCPrivacyAlertPresenter

+ (id)sharedPresenter
{
  if (sharedPresenter_onceToken != -1)
  {
    +[PDCPrivacyAlertPresenter sharedPresenter];
  }

  v3 = sharedPresenter_presenter;

  return v3;
}

uint64_t __43__PDCPrivacyAlertPresenter_sharedPresenter__block_invoke()
{
  sharedPresenter_presenter = objc_alloc_init(PDCPrivacyAlertPresenter);

  return MEMORY[0x2821F96F8]();
}

- (PDCPrivacyAlertPresenter)init
{
  v10.receiver = self;
  v10.super_class = PDCPrivacyAlertPresenter;
  v2 = [(PDCPrivacyAlertPresenter *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.PrivacyDisclosure.PrivacyAlertPresenter", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    requestToAlertMap = v2->_requestToAlertMap;
    v2->_requestToAlertMap = weakToWeakObjectsMapTable;

    v8 = v2;
  }

  return v2;
}

- (void)_ensureAppIsLaunchableWithIdentity:(id)identity completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v19 = 0;
  v6 = [identity findApplicationRecordWithError:&v19];
  v7 = v19;
  applicationMissingRequiredSINF = [v6 applicationMissingRequiredSINF];
  if (applicationMissingRequiredSINF)
  {
    v10 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(applicationMissingRequiredSINF, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      bundleIdentifier = [v6 bundleIdentifier];
      *buf = 138412290;
      v21 = bundleIdentifier;
      _os_log_impl(&dword_25F701000, v11, OS_LOG_TYPE_INFO, "Request application repair for %@", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x277CEC478]);
    bundleIdentifier2 = [v6 bundleIdentifier];
    v15 = [v13 initWithBundleID:bundleIdentifier2];

    [v15 setExitReason:16];
    defaultService = [MEMORY[0x277CEC480] defaultService];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__PDCPrivacyAlertPresenter__ensureAppIsLaunchableWithIdentity_completion___block_invoke;
    v17[3] = &unk_279AA1D40;
    v18 = completionCopy;
    [defaultService repairAppWithOptions:v15 replyHandler:v17];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __74__PDCPrivacyAlertPresenter__ensureAppIsLaunchableWithIdentity_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = v5;
  if (v5)
  {
    v8 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__PDCPrivacyAlertPresenter__ensureAppIsLaunchableWithIdentity_completion___block_invoke_cold_1(v7, v8);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)activateRemoteAlertWithIdentity:(id)identity requestHandle:(id)handle forcePresent:(BOOL)present completionHandler:(id)handler
{
  identityCopy = identity;
  handleCopy = handle;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke;
  v16[3] = &unk_279AA1DB8;
  v16[4] = self;
  v17 = identityCopy;
  presentCopy = present;
  v18 = handleCopy;
  v19 = handlerCopy;
  v13 = handleCopy;
  v14 = identityCopy;
  v15 = handlerCopy;
  [(PDCPrivacyAlertPresenter *)self _ensureAppIsLaunchableWithIdentity:v14 completion:v16];
}

void __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke_2;
    block[3] = &unk_279AA1D90;
    v4 = *(a1 + 40);
    v13 = *(a1 + 64);
    *&v5 = v4;
    *(&v5 + 1) = *(a1 + 32);
    v9 = v5;
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v6;
    v11 = v9;
    v12 = v7;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = *(*(a1 + 56) + 16);

    v8();
  }
}

void __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getBSMutableSettingsClass_softClass;
  v20 = getBSMutableSettingsClass_softClass;
  if (!getBSMutableSettingsClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __getBSMutableSettingsClass_block_invoke;
    v23 = &unk_279AA1E30;
    v24 = &v17;
    __getBSMutableSettingsClass_block_invoke(&buf);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = objc_alloc_init(v2);
  v5 = [*(a1 + 32) identityString];
  [v4 setObject:v5 forSetting:0];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  [v4 setObject:v6 forSetting:1];

  v9 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 identityString];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_25F701000, v11, OS_LOG_TYPE_DEFAULT, "Request privacy remote alert for bundle: [%@]", &buf, 0xCu);
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke_11;
  v15[3] = &unk_279AA1D68;
  v16 = *(a1 + 56);
  [v13 _activateAlertHandleForIdentity:v14 settings:v4 repsonseHandler:v15];
  [*(*(a1 + 40) + 24) setObject:*(*(a1 + 40) + 8) forKey:*(a1 + 48)];
}

void __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 info];
  v4 = [v3 objectForSetting:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = v4;
    v9 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_25F701000, v9, OS_LOG_TYPE_DEFAULT, "Succeed to get user response from remote alert: [%@]", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 integerValue]);
  }

  else
  {
    v10 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(isKindOfClass, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke_11_cold_1(v4, v10);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_activateAlertHandleForIdentity:(id)identity settings:(id)settings repsonseHandler:(id)handler
{
  identityCopy = identity;
  settingsCopy = settings;
  handlerCopy = handler;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v11 = getSBSRemoteAlertDefinitionClass_softClass;
  v42 = getSBSRemoteAlertDefinitionClass_softClass;
  if (!getSBSRemoteAlertDefinitionClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getSBSRemoteAlertDefinitionClass_block_invoke;
    v37 = &unk_279AA1E30;
    v38 = &v39;
    __getSBSRemoteAlertDefinitionClass_block_invoke(&v34);
    v11 = v40[3];
  }

  v12 = v11;
  _Block_object_dispose(&v39, 8);
  v13 = [[v11 alloc] initWithServiceName:@"com.apple.PDUIApp" viewControllerClassName:@"PDURemoteViewController"];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v14 = getSBSRemoteAlertConfigurationContextClass_softClass;
  v42 = getSBSRemoteAlertConfigurationContextClass_softClass;
  if (!getSBSRemoteAlertConfigurationContextClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getSBSRemoteAlertConfigurationContextClass_block_invoke;
    v37 = &unk_279AA1E30;
    v38 = &v39;
    __getSBSRemoteAlertConfigurationContextClass_block_invoke(&v34);
    v14 = v40[3];
  }

  v15 = v14;
  _Block_object_dispose(&v39, 8);
  v16 = objc_alloc_init(v14);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v17 = getBSActionClass_softClass;
  v42 = getBSActionClass_softClass;
  if (!getBSActionClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getBSActionClass_block_invoke;
    v37 = &unk_279AA1E30;
    v38 = &v39;
    __getBSActionClass_block_invoke(&v34);
    v17 = v40[3];
  }

  v18 = v17;
  _Block_object_dispose(&v39, 8);
  v19 = [v17 alloc];
  v20 = [MEMORY[0x277CF0B60] responderWithHandler:handlerCopy];
  v21 = [v19 initWithInfo:settingsCopy responder:v20];

  v22 = [MEMORY[0x277CBEB98] setWithObject:v21];
  [v16 setActions:v22];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v23 = getSBSRemoteAlertHandleClass_softClass;
  v42 = getSBSRemoteAlertHandleClass_softClass;
  if (!getSBSRemoteAlertHandleClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getSBSRemoteAlertHandleClass_block_invoke;
    v37 = &unk_279AA1E30;
    v38 = &v39;
    __getSBSRemoteAlertHandleClass_block_invoke(&v34);
    v23 = v40[3];
  }

  v24 = v23;
  _Block_object_dispose(&v39, 8);
  v25 = [v23 newHandleWithDefinition:v13 configurationContext:v16];
  alertHandle = self->_alertHandle;
  self->_alertHandle = v25;

  [(SBSRemoteAlertHandle *)self->_alertHandle registerObserver:self];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v27 = getSBSRemoteAlertActivationContextClass_softClass;
  v42 = getSBSRemoteAlertActivationContextClass_softClass;
  if (!getSBSRemoteAlertActivationContextClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getSBSRemoteAlertActivationContextClass_block_invoke;
    v37 = &unk_279AA1E30;
    v38 = &v39;
    __getSBSRemoteAlertActivationContextClass_block_invoke(&v34);
    v27 = v40[3];
  }

  v28 = v27;
  _Block_object_dispose(&v39, 8);
  v29 = objc_alloc_init(v27);
  getSBSRemoteAlertPresentationTargetClass();
  if ([objc_opt_class() instancesRespondToSelector:sel_initWithTargetPredicate_])
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v30 = getSBSRemoteAlertPresentationTargetPredicateClass_softClass;
    v42 = getSBSRemoteAlertPresentationTargetPredicateClass_softClass;
    if (!getSBSRemoteAlertPresentationTargetPredicateClass_softClass)
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke;
      v37 = &unk_279AA1E30;
      v38 = &v39;
      __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke(&v34);
      v30 = v40[3];
    }

    v31 = v30;
    _Block_object_dispose(&v39, 8);
    v32 = [v30 predicateForLaunchingApplicationIdentity:identityCopy];
    v33 = [objc_alloc(getSBSRemoteAlertPresentationTargetClass()) initWithTargetPredicate:v32];
    [v33 setShouldDismissInSwitcher:0];
    [v29 setPresentationTarget:v33];
  }

  [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:v29];
}

- (void)didCancelRequestHandle:(id)handle
{
  handleCopy = handle;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PDCPrivacyAlertPresenter_didCancelRequestHandle___block_invoke;
  v7[3] = &unk_279AA1DE0;
  v7[4] = self;
  v8 = handleCopy;
  v6 = handleCopy;
  dispatch_async(queue, v7);
}

void __51__PDCPrivacyAlertPresenter_didCancelRequestHandle___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [v1 invalidate];
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v8 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  v5 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(activateCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = activateCopy;
    _os_log_impl(&dword_25F701000, v5, OS_LOG_TYPE_INFO, "Did active remote alert, handle : [%p]", &v6, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v14 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v6 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(deactivateCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = deactivateCopy;
    _os_log_impl(&dword_25F701000, v6, OS_LOG_TYPE_INFO, "Did deactive remote alert, handle : [%p]", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__PDCPrivacyAlertPresenter_remoteAlertHandleDidDeactivate___block_invoke;
  v9[3] = &unk_279AA1DE0;
  v10 = deactivateCopy;
  selfCopy = self;
  v8 = deactivateCopy;
  dispatch_async(queue, v9);
}

void __59__PDCPrivacyAlertPresenter_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 8);
  if (v2 == v3)
  {
    *(v1 + 8) = 0;
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PDCPrivacyAlertPresenter_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_279AA1E08;
  block[4] = self;
  v12 = handleCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(queue, block);
}

void __69__PDCPrivacyAlertPresenter_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8))
  {
    v3 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __69__PDCPrivacyAlertPresenter_remoteAlertHandle_didInvalidateWithError___block_invoke_cold_1(a1, v3);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    if (*(a1 + 40) == v5)
    {
      *(v4 + 8) = 0;
    }
  }
}

void __74__PDCPrivacyAlertPresenter__ensureAppIsLaunchableWithIdentity_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25F701000, a2, OS_LOG_TYPE_ERROR, "Application repair failed with error: %@", &v2, 0xCu);
}

void __105__PDCPrivacyAlertPresenter_activateRemoteAlertWithIdentity_requestHandle_forcePresent_completionHandler___block_invoke_11_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25F701000, a2, OS_LOG_TYPE_ERROR, "Error to receive user response from remote alert: [%@]", &v2, 0xCu);
}

void __69__PDCPrivacyAlertPresenter_remoteAlertHandle_didInvalidateWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 134218242;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_25F701000, a2, OS_LOG_TYPE_ERROR, "Invalidate remote alert, handle : [%p], error: %@", &v4, 0x16u);
}

@end