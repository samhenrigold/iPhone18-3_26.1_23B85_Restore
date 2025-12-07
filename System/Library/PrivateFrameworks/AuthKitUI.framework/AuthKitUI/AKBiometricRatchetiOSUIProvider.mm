@interface AKBiometricRatchetiOSUIProvider
- (AKBiometricRatchetiOSUIProvider)initWithContext:(id)context;
- (id)_makeRatchetOptions:(id)options;
- (void)_disableFindMyIfRequiredWithContext:(id)context completion:(id)completion;
- (void)_dismissRatchetUIForContext:(id)context viewController:(id)controller;
- (void)_displayFindMyDisablementFailedErrorWithContext:(id)context;
- (void)_presentEmbeddedRatchetUIWithOptions:(id)options;
- (void)_presentRatchetUIWithContext:(id)context options:(id)options completion:(id)completion;
- (void)_rightNavButtonTapped;
- (void)dealloc;
- (void)presentRatchetUIWithCompletion:(id)completion;
- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
@end

@implementation AKBiometricRatchetiOSUIProvider

- (AKBiometricRatchetiOSUIProvider)initWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v8 = [location[0] description];
    __os_log_helper_16_2_1_8_64(v14, v8);
    _os_log_debug_impl(&dword_222379000, v11, v10, "initing iOS bio ratchet UI provider with context: %@", v14, 0xCu);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v11, 0);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKBiometricRatchetiOSUIProvider;
  selfCopy = [(AKBiometricRatchetiOSUIProvider *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_context, location[0]);
    mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
    findMyManager = selfCopy->_findMyManager;
    selfCopy->_findMyManager = mEMORY[0x277D08F78];
    MEMORY[0x277D82BD8](findMyManager);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "AKBiometricRatchetiOSUIProvider deallocated", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v4.receiver = selfCopy;
  v4.super_class = AKBiometricRatchetiOSUIProvider;
  [(AKBiometricRatchetiOSUIProvider *)&v4 dealloc];
}

- (void)_presentEmbeddedRatchetUIWithOptions:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v21 = [location[0] debugDescription];
    __os_log_helper_16_2_1_8_64(v32, v21);
    _os_log_debug_impl(&dword_222379000, v28, v27, "Present embedded ratchet with options: %@", v32, 0xCu);
    MEMORY[0x277D82BD8](v21);
  }

  objc_storeStrong(&v28, 0);
  dispatch_group_enter(selfCopy->_dispatchGroup);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  if (LocalAuthenticationEmbeddedUILibraryCore(0))
  {
    LARatchetViewControllerClass = getLARatchetViewControllerClass();
  }

  else
  {
    LARatchetViewControllerClass = 0;
  }

  v10 = [LARatchetViewControllerClass makeViewControllerWithOptions:location[0]];
  [(AKBiometricRatchetiOSUIProvider *)selfCopy setRatchetViewController:?];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  ratchetViewController = [(AKBiometricRatchetiOSUIProvider *)selfCopy ratchetViewController];
  navigationItem = [(LARatchetViewController *)ratchetViewController navigationItem];
  v11 = objc_alloc(MEMORY[0x277D751E0]);
  embeddedUIRightNavButtonTitle = [WeakRetained embeddedUIRightNavButtonTitle];
  v12 = [v11 initWithTitle:? style:? target:? action:?];
  [navigationItem setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](embeddedUIRightNavButtonTitle);
  MEMORY[0x277D82BD8](navigationItem);
  *&v4 = MEMORY[0x277D82BD8](ratchetViewController).n128_u64[0];
  v16 = selfCopy;
  ratchetViewController2 = [(AKBiometricRatchetiOSUIProvider *)selfCopy ratchetViewController];
  [(LARatchetViewController *)ratchetViewController2 setDelegate:v16];
  embeddedUIPresentationMode = [WeakRetained embeddedUIPresentationMode];
  v19 = [embeddedUIPresentationMode isEqualToString:@"Modal"];
  MEMORY[0x277D82BD8](embeddedUIPresentationMode);
  if (v19)
  {
    v25 = _AKLogSystem();
    v24 = 2;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_debug_impl(&dword_222379000, log, type, "Ratchet presenting modally", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    ratchetViewController3 = [(AKBiometricRatchetiOSUIProvider *)selfCopy ratchetViewController];
    [(LARatchetViewController *)ratchetViewController3 evaluateAndPresentViewController];
    MEMORY[0x277D82BD8](ratchetViewController3);
  }

  else
  {
    v22 = _AKLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      embeddedUIPresentationMode2 = [WeakRetained embeddedUIPresentationMode];
      __os_log_helper_16_2_1_8_64(v31, embeddedUIPresentationMode2);
      _os_log_debug_impl(&dword_222379000, v22, OS_LOG_TYPE_DEBUG, "Ratchet presenting push, %@", v31, 0xCu);
      MEMORY[0x277D82BD8](embeddedUIPresentationMode2);
    }

    objc_storeStrong(&v22, 0);
    ratchetViewController4 = [(AKBiometricRatchetiOSUIProvider *)selfCopy ratchetViewController];
    [(LARatchetViewController *)ratchetViewController4 evaluateAndShowViewController];
    MEMORY[0x277D82BD8](ratchetViewController4);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentRatchetUIWithContext:(id)context options:(id)options completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v37 = 0;
  objc_storeStrong(&v37, options);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  dispatch_group_enter(selfCopy[3]);
  v35 = +[AKBiometricRatchetUtility ratchetIdentifier];
  v34 = _AKLogSystem();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v41, v35);
    _os_log_debug_impl(&dword_222379000, v34, v33, "ratchet identifier is: %@", v41, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v9 = objc_alloc(MEMORY[0x277CD47A8]);
  v8 = [v9 initWithIdentifier:v35];
  [(dispatch_group_t *)selfCopy setRatchet:v8];
  MEMORY[0x277D82BD8](v8);
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v7 = [location[0] debugDescription];
    __os_log_helper_16_2_1_8_64(v40, v7);
    _os_log_debug_impl(&dword_222379000, v20, v19, "presentBiometricRatchetArmingUIWithCompletion with context: %@", v40, 0xCu);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v20, 0);
  ratchet = [(dispatch_group_t *)selfCopy ratchet];
  v5 = v37;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __83__AKBiometricRatchetiOSUIProvider__presentRatchetUIWithContext_options_completion___block_invoke;
  v16 = &unk_2784A5BC8;
  v18[1] = v27;
  v18[2] = v21;
  v18[0] = MEMORY[0x277D82BE0](v36);
  v17 = MEMORY[0x277D82BE0](selfCopy);
  [ratchet armWithOptions:v5 completion:&v12];
  MEMORY[0x277D82BD8](ratchet);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v21, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

void __83__AKBiometricRatchetiOSUIProvider__presentRatchetUIWithContext_options_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19[1] = a1;
  v15 = 1;
  if (!location[0])
  {
    v15 = v20 != 0;
  }

  if (!v15)
  {
    __assert_rtn("[AKBiometricRatchetiOSUIProvider _presentRatchetUIWithContext:options:completion:]_block_invoke", "AKBiometricRatchetiOSUIProvider.m", 112, "result != nil || error != nil");
  }

  v12 = [location[0] objectForKeyedSubscript:&unk_2835AACC0];
  *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v12)
  {
    v4 = [AKBiometricRatchetUtility resultForSuccessfulArmingFromResponse:location[0], v3];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v7 = [AKBiometricRatchetUtility resultForNonArmingFromError:v20, v3];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
    *&v10 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (!*(*(a1[6] + 8) + 40))
    {
      v11 = [v20 userInfo];
      v19[0] = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      MEMORY[0x277D82BD8](v11);
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v23, v20, v19[0]);
        _os_log_error_impl(&dword_222379000, v18, v17, "Ratchet is in unexpected error - %@, underlying error - %@", v23, 0x16u);
      }

      objc_storeStrong(&v18, 0);
      if (v19[0])
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v19[0]);
      }

      else
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v20);
      }

      objc_storeStrong(v19, 0);
    }
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v22, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "returning result: %@, error: %@", v22, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  dispatch_group_leave(*(a1[4] + 24));
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)presentRatchetUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  v28 = [(AKBiometricRatchetiOSUIProvider *)selfCopy _makeRatchetOptions:WeakRetained];
  v3 = dispatch_group_create();
  dispatchGroup = selfCopy->_dispatchGroup;
  selfCopy->_dispatchGroup = v3;
  MEMORY[0x277D82BD8](dispatchGroup);
  dispatch_group_enter(selfCopy->_dispatchGroup);
  v22[0] = 0;
  v22[1] = v22;
  v23 = 838860800;
  v24 = 48;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v11 = selfCopy;
  v10 = WeakRetained;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke;
  v20[3] = &unk_2784A5BF0;
  v21[1] = v22;
  v21[0] = MEMORY[0x277D82BE0](selfCopy);
  [(AKBiometricRatchetiOSUIProvider *)v11 _disableFindMyIfRequiredWithContext:v10 completion:v20];
  metaContext = [WeakRetained metaContext];
  *&v5 = MEMORY[0x277D82BD8](metaContext).n128_u64[0];
  if (metaContext)
  {
    [(AKBiometricRatchetiOSUIProvider *)selfCopy setRatchetArmCompletion:location[0], v5];
    [(AKBiometricRatchetiOSUIProvider *)selfCopy _presentEmbeddedRatchetUIWithOptions:v28];
  }

  else
  {
    v8 = selfCopy;
    v6 = WeakRetained;
    v7 = v28;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_40;
    v16 = &unk_2784A5C40;
    v17 = MEMORY[0x277D82BE0](selfCopy);
    v19[1] = v22;
    v18 = MEMORY[0x277D82BE0](WeakRetained);
    v19[0] = MEMORY[0x277D82BE0](location[0]);
    [(AKBiometricRatchetiOSUIProvider *)v8 _presentRatchetUIWithContext:v6 options:v7 completion:&v12];
    objc_storeStrong(v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(v21, 0);
  _Block_object_dispose(v22, 8);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

void __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v5, location[0]);
      _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "disableFindMy failed with error - %@", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong((*(a1[5].isa + 1) + 40), location[0]);
  }

  dispatch_group_leave(*(a1[4].isa + 3));
  objc_storeStrong(location, 0);
}

void __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19[1] = a1;
  objc_initWeak(v19, *(a1 + 32));
  group = *(*(a1 + 32) + 24);
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_2;
  v13 = &unk_2784A5C18;
  objc_copyWeak(&v18, v19);
  v17[1] = *(a1 + 56);
  v14 = MEMORY[0x277D82BE0](v20);
  v15 = MEMORY[0x277D82BE0](*(a1 + 40));
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[0] = MEMORY[0x277D82BE0](*(a1 + 48));
  dispatch_group_notify(group, queue, &v9);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(&v18);
  objc_destroyWeak(v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 72));
  if (*(*(*(a1 + 64) + 8) + 40) && !*(a1 + 32))
  {
    [location[0] _displayFindMyDisablementFailedErrorWithContext:*(a1 + 40)];
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v4, *(a1 + 48), *(a1 + 32));
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Ratchet returning result: %@, error: %@", v4, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), 0);
  objc_storeStrong(location, 0);
}

- (id)_makeRatchetOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  presentingViewController = [location[0] presentingViewController];
  contextViewController = selfCopy->_contextViewController;
  selfCopy->_contextViewController = presentingViewController;
  *&v5 = MEMORY[0x277D82BD8](contextViewController).n128_u64[0];
  beginRatchetTitle = [location[0] beginRatchetTitle];
  v65 = 0;
  v63 = 0;
  v61 = 0;
  if (beginRatchetTitle)
  {
    beginRatchetTitle2 = [location[0] beginRatchetTitle];
    v65 = 1;
    v6 = MEMORY[0x277D82BE0](beginRatchetTitle2);
  }

  else
  {
    v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v63 = 1;
    v62 = [v64 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_TITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v61 = 1;
    v6 = MEMORY[0x277D82BE0](v62);
  }

  v67 = v6;
  if (v61)
  {
    MEMORY[0x277D82BD8](v62);
  }

  if (v63)
  {
    MEMORY[0x277D82BD8](v64);
  }

  if (v65)
  {
    MEMORY[0x277D82BD8](beginRatchetTitle2);
  }

  *&v7 = MEMORY[0x277D82BD8](beginRatchetTitle).n128_u64[0];
  beginRatchetBody = [location[0] beginRatchetBody];
  v58 = 0;
  v56 = 0;
  v54 = 0;
  if (beginRatchetBody)
  {
    beginRatchetBody2 = [location[0] beginRatchetBody];
    v58 = 1;
    v8 = MEMORY[0x277D82BE0](beginRatchetBody2);
  }

  else
  {
    v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v56 = 1;
    v55 = [v57 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_BODY" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v54 = 1;
    v8 = MEMORY[0x277D82BE0](v55);
  }

  v60 = v8;
  if (v54)
  {
    MEMORY[0x277D82BD8](v55);
  }

  if (v56)
  {
    MEMORY[0x277D82BD8](v57);
  }

  if (v58)
  {
    MEMORY[0x277D82BD8](beginRatchetBody2);
  }

  *&v9 = MEMORY[0x277D82BD8](beginRatchetBody).n128_u64[0];
  countdownText = [location[0] countdownText];
  v51 = 0;
  v49 = 0;
  v47 = 0;
  if (countdownText)
  {
    countdownText2 = [location[0] countdownText];
    v51 = 1;
    v10 = MEMORY[0x277D82BE0](countdownText2);
  }

  else
  {
    v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = 1;
    v48 = [v50 localizedStringForKey:@"BIOMETRIC_RATCHET_COUNTDOWN_TEXT" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v47 = 1;
    v10 = MEMORY[0x277D82BE0](v48);
  }

  v53 = v10;
  if (v47)
  {
    MEMORY[0x277D82BD8](v48);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](v50);
  }

  if (v51)
  {
    MEMORY[0x277D82BD8](countdownText2);
  }

  *&v11 = MEMORY[0x277D82BD8](countdownText).n128_u64[0];
  reason = [location[0] reason];
  v44 = 0;
  v42 = 0;
  v40 = 0;
  if (reason)
  {
    reason2 = [location[0] reason];
    v44 = 1;
    v12 = MEMORY[0x277D82BE0](reason2);
  }

  else
  {
    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = 1;
    v41 = [v43 localizedStringForKey:@"BIOMETRIC_RATCHET_FALLBACK_ALERT_SUBTITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v40 = 1;
    v12 = MEMORY[0x277D82BE0](v41);
  }

  v46 = v12;
  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  if (v42)
  {
    MEMORY[0x277D82BD8](v43);
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](reason2);
  }

  *&v13 = MEMORY[0x277D82BD8](reason).n128_u64[0];
  calloutReason = [location[0] calloutReason];
  v37 = 0;
  v35 = 0;
  v33 = 0;
  if (calloutReason)
  {
    calloutReason2 = [location[0] calloutReason];
    v37 = 1;
    v14 = MEMORY[0x277D82BE0](calloutReason2);
  }

  else
  {
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = 1;
    v34 = [v36 localizedStringForKey:@"BIOMETRIC_RATCHET_CALLOUT_REASON_TEXT" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v33 = 1;
    v14 = MEMORY[0x277D82BE0](v34);
  }

  v39 = v14;
  if (v33)
  {
    MEMORY[0x277D82BD8](v34);
  }

  if (v35)
  {
    MEMORY[0x277D82BD8](v36);
  }

  if (v37)
  {
    MEMORY[0x277D82BD8](calloutReason2);
  }

  MEMORY[0x277D82BD8](calloutReason);
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v32 setObject:v46 forKeyedSubscript:&unk_2835AACD8];
  [v32 setObject:v39 forKeyedSubscript:&unk_2835AACC0];
  [v32 setObject:selfCopy->_contextViewController forKeyedSubscript:&unk_2835AACF0];
  deeplinkURL = [location[0] deeplinkURL];
  [v32 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](deeplinkURL);
  v20 = objc_alloc(MEMORY[0x277CCABB0]);
  v21 = [v20 initWithBool:{objc_msgSend(location[0], "fallbackToNoAuth")}];
  [v32 setObject:? forKeyedSubscript:?];
  *&v15 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  [v32 setObject:v67 forKeyedSubscript:{&unk_2835AAD38, v15}];
  [v32 setObject:v60 forKeyedSubscript:&unk_2835AAD50];
  v22 = objc_alloc(MEMORY[0x277CCABB0]);
  v23 = [v22 initWithBool:{objc_msgSend(location[0], "showsLocationWarning")}];
  [v32 setObject:? forKeyedSubscript:?];
  *&v16 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v32 setObject:v53 forKeyedSubscript:{&unk_2835AAD80, v16}];
  v24 = objc_alloc(MEMORY[0x277CCABB0]);
  v25 = [v24 initWithBool:{objc_msgSend(location[0], "notInteractive")}];
  [v32 setObject:? forKeyedSubscript:?];
  *&v17 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v26 = [v32 copy];
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);

  return v26;
}

- (void)_rightNavButtonTapped
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = objc_loadWeakRetained(&self->_context);
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD4770] code:-2 userInfo:?];
  ratchetArmCompletion = [(AKBiometricRatchetiOSUIProvider *)selfCopy ratchetArmCompletion];
  ratchetArmCompletion[2](ratchetArmCompletion, 0, v7);
  MEMORY[0x277D82BD8](ratchetArmCompletion);
  if (objc_opt_respondsToSelector())
  {
    v6 = MEMORY[0x277D82BE0](selfCopy->_contextViewController);
    [v6 rightNavButtonTapped];
    objc_storeStrong(&v6, 0);
  }

  v4 = [(AKBiometricRatchetiOSUIProvider *)selfCopy ratchetViewController:v8[0]];
  [v3 _dismissRatchetUIForContext:v2 viewController:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
}

- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v46 = 0;
  objc_storeStrong(&v46, result);
  v45 = 0;
  objc_storeStrong(&v45, error);
  v44 = _AKLogSystem();
  v43 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v50, v46, v45);
    _os_log_debug_impl(&dword_222379000, v44, v43, "ratchetViewController didFinishWithResult: result: %@, error: %@", v50, 0x16u);
  }

  objc_storeStrong(&v44, 0);
  v16 = 1;
  if (!v46)
  {
    v16 = v45 != 0;
  }

  if (!v16)
  {
    __assert_rtn("[AKBiometricRatchetiOSUIProvider ratchetViewController:didFinishWithResult:error:]", "AKBiometricRatchetiOSUIProvider.m", 216, "result != nil || error != nil");
  }

  v42 = 0;
  v41 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v36 = 838860800;
  v37 = 48;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  v15 = [v46 objectForKeyedSubscript:&unk_2835AACC0];
  *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v15)
  {
    v6 = [AKBiometricRatchetUtility resultForSuccessfulArmingFromResponse:v46, v5];
    v7 = v42;
    v42 = v6;
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v8 = [AKBiometricRatchetUtility resultForNonArmingFromError:v45, v5];
    v9 = v42;
    v42 = v8;
    *&v10 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (v45)
    {
      userInfo = [v45 userInfo];
      v33 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      MEMORY[0x277D82BD8](userInfo);
      v32 = _AKLogSystem();
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v49, v45, v33);
        _os_log_error_impl(&dword_222379000, v32, v31, "Ratchet is in unexpected error - %@, underlying error - %@", v49, 0x16u);
      }

      objc_storeStrong(&v32, 0);
      if (v33)
      {
        objc_storeStrong(&v41, v33);
      }

      else
      {
        objc_storeStrong(&v41, v45);
      }

      objc_storeStrong(&v33, 0);
    }
  }

  dispatch_group_leave(selfCopy->_dispatchGroup);
  objc_initWeak(&from, selfCopy);
  group = selfCopy->_dispatchGroup;
  v11 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __83__AKBiometricRatchetiOSUIProvider_ratchetViewController_didFinishWithResult_error___block_invoke;
  v23 = &unk_2784A5C68;
  objc_copyWeak(&v29, &from);
  v28[1] = v35;
  v24 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](WeakRetained);
  v26 = MEMORY[0x277D82BE0](selfCopy);
  v27 = MEMORY[0x277D82BE0](v42);
  v28[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_group_notify(group, queue, &v19);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_storeStrong(&WeakRetained, 0);
  _Block_object_dispose(v35, 8);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

void __83__AKBiometricRatchetiOSUIProvider_ratchetViewController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 80));
  if (*(*(*(a1 + 72) + 8) + 40) && !*(a1 + 32))
  {
    [location[0] _displayFindMyDisablementFailedErrorWithContext:*(a1 + 40)];
  }

  v3 = [*(a1 + 48) ratchetArmCompletion];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v3)
  {
    v2 = [*(a1 + 48) ratchetArmCompletion];
    (*(v2 + 2))(v2, *(a1 + 56), *(a1 + 32));
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), 0);
  [*(a1 + 48) _dismissRatchetUIForContext:*(a1 + 40) viewController:*(a1 + 64)];
  objc_storeStrong(location, 0);
}

- (void)_dismissRatchetUIForContext:(id)context viewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v27 = 0;
  objc_storeStrong(&v27, controller);
  embeddedUIPresentationMode = [location[0] embeddedUIPresentationMode];
  v14 = [embeddedUIPresentationMode isEqualToString:@"Modal"];
  MEMORY[0x277D82BD8](embeddedUIPresentationMode);
  if (v14)
  {
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_debug_impl(&dword_222379000, log, type, "Dismissing modally presented ratchet", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v9 = v27;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __78__AKBiometricRatchetiOSUIProvider__dismissRatchetUIForContext_viewController___block_invoke;
    v22 = &unk_2784A5C90;
    v23 = MEMORY[0x277D82BE0](selfCopy);
    [v9 dismissViewControllerAnimated:1 completion:&v18];
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v7 = v17;
      v8 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_222379000, v7, v8, "Popping pushed ratchet", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    navigationController = [v27 navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
    *&v5 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
    [(AKBiometricRatchetiOSUIProvider *)selfCopy setRatchetViewController:0, v5];
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_disableFindMyIfRequiredWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  if ([location[0] showsLocationWarning])
  {
    objc_initWeak(&from, selfCopy);
    if (objc_opt_respondsToSelector())
    {
      findMyManager = selfCopy->_findMyManager;
      v16 = MEMORY[0x277D85DD0];
      v17 = -1073741824;
      v18 = 0;
      v19 = __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke;
      v20 = &unk_2784A5CE0;
      objc_copyWeak(&v22, &from);
      v21 = MEMORY[0x277D82BE0](v24);
      [(FMDFMIPManager *)findMyManager requireDisableLocationWithCompletion:&v16];
      objc_storeStrong(&v21, 0);
      objc_destroyWeak(&v22);
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = 16;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_222379000, log, type, "Disabling FM not required via idms - idms is handling the logic to determine with operations need this", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
      if (v24)
      {
        (*(v24 + 2))(v24, 0);
      }
    }

    objc_destroyWeak(&from);
  }

  else
  {
    oslog = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v4 = oslog;
      v5 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_222379000, v4, v5, "does not respondToSelector requireDisableLocationWithCompletion", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (v24)
    {
      (*(v24 + 2))(v24, 0);
    }
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 40));
  if (location)
  {
    v27 = _AKLogSystem();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v32, location);
      _os_log_error_impl(&dword_222379000, v27, v26, "Cannot determine if disable is required due to error: %@", v32, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else if (v30 == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = *(v28[0] + 2);
      v20 = MEMORY[0x277D85DD0];
      v21 = -1073741824;
      v22 = 0;
      v23 = __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke_89;
      v24 = &unk_2784A5CB8;
      v25 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v9 disableLocationDisplayWithCompletion:&v20];
      objc_storeStrong(&v25, 0);
    }

    else
    {
      v19 = _AKLogSystem();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v7 = v19;
        v8 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_222379000, v7, v8, "does not respondToSelector disableLocationDisplayWithCompletion", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      if (*(a1 + 32))
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  else
  {
    if (v30)
    {
      v13 = _AKLogSystem();
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v3 = v13;
        v4 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_222379000, v3, v4, "Require disable returned unknown, no-op", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v15 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v5 = oslog;
        v6 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_222379000, v5, v6, "Disabling FindyMy not required via FindMy as it might already be in the blackout period", v14, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  objc_storeStrong(v28, 0);
  objc_storeStrong(&location, 0);
}

void __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke_89(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_error_impl(&dword_222379000, v9[0], v8, "disableLocationDisplay failed with error - %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_222379000, v2, v3, "disableLocationDisplay suceeded", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)_displayFindMyDisablementFailedErrorWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  presentingViewController = [location[0] presentingViewController];
  v7 = MEMORY[0x277D75110];
  findMyErrorTitle = [location[0] findMyErrorTitle];
  findMyErrorMessage = [location[0] findMyErrorMessage];
  v18 = [v7 alertControllerWithTitle:findMyErrorTitle message:? preferredStyle:?];
  MEMORY[0x277D82BD8](findMyErrorMessage);
  *&v3 = MEMORY[0x277D82BD8](findMyErrorTitle).n128_u64[0];
  v10 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKit", v3}];
  v12 = [v13 localizedStringForKey:@"ALERT_DEFAULT_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  v11 = [v10 actionWithTitle:? style:? handler:?];
  [v18 addAction:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  if (presentingViewController)
  {
    v14 = _AKLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v21, presentingViewController);
      _os_log_debug_impl(&dword_222379000, v14, OS_LOG_TYPE_DEBUG, "presentingViewController - %@", v21, 0xCu);
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_222379000, log, type, "nil presentingViewController", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
  }

  [presentingViewController presentViewController:v18 animated:1 completion:&v18];
  objc_storeStrong(v4, 0);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(location, 0);
}

void __83__AKBiometricRatchetiOSUIProvider__displayFindMyDisablementFailedErrorWithContext___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
  {
    log = v7[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "User picked OK", v5, 2u);
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

@end