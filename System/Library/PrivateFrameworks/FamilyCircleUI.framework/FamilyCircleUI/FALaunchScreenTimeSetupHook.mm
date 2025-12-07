@interface FALaunchScreenTimeSetupHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (FALaunchScreenTimeSetupHook)init;
- (FALaunchScreenTimeSetupHook)initWithAccountStore:(id)store screenTimeRequestProvider:(id)provider childSetupControllerProvider:(id)controllerProvider familyFetcher:(id)fetcher;
- (RUIServerHookDelegate)delegate;
- (id)_extractAgeFromObjectModel:(id)model;
- (id)_extractNameFromObjectModel:(id)model;
- (id)extractDSIDFromObjectModel:(id)model;
- (void)_enableScreentimeWithIntroductionModel:(id)model account:(id)account dsidNum:(id)num completion:(id)completion;
- (void)_launchScreenTimeSettings;
- (void)_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:(id)d inObjectModel:(id)model isExpressSetup:(BOOL)setup withCompletion:(id)completion;
- (void)_launchScreenTimeSetupForUser:(id)user inObjectModel:(id)model isExpressSetup:(BOOL)setup withCompletion:(id)completion;
- (void)_refreshFamilyCircleIfNeededForMemberDSID:(id)d completionHandler:(id)handler;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FALaunchScreenTimeSetupHook

- (FALaunchScreenTimeSetupHook)init
{
  v3 = objc_alloc_init(FASTChildSetupControllerProvider);
  v4 = objc_alloc_init(MEMORY[0x277D082F0]);
  v5 = objc_alloc_init(_TtC14FamilyCircleUI21FAFamilyCircleFetcher);
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v7 = [(FALaunchScreenTimeSetupHook *)self initWithAccountStore:defaultStore screenTimeRequestProvider:v4 childSetupControllerProvider:v3 familyFetcher:v5];

  return v7;
}

- (FALaunchScreenTimeSetupHook)initWithAccountStore:(id)store screenTimeRequestProvider:(id)provider childSetupControllerProvider:(id)controllerProvider familyFetcher:(id)fetcher
{
  storeCopy = store;
  providerCopy = provider;
  controllerProviderCopy = controllerProvider;
  fetcherCopy = fetcher;
  v18.receiver = self;
  v18.super_class = FALaunchScreenTimeSetupHook;
  v15 = [(FALaunchScreenTimeSetupHook *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStore, store);
    objc_storeStrong(&v16->_screenTimeRequestProvider, provider);
    objc_storeStrong(&v16->_childSetupControllerProvider, controllerProvider);
    objc_storeStrong(&v16->_familyFetcher, fetcher);
  }

  return v16;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:launchScreenTimeSetup"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"family:launchScreenTimeSetup"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  attributesCopy = attributes;
  v13 = [(FALaunchScreenTimeSetupHook *)self extractDSIDFromObjectModel:modelCopy];
  v12 = [attributesCopy objectForKeyedSubscript:@"isExpressSetup"];

  -[FALaunchScreenTimeSetupHook _launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:](self, "_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:", v13, modelCopy, [v12 BOOLValue], completionCopy);
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  v10 = [(FALaunchScreenTimeSetupHook *)self extractDSIDFromObjectModel:modelCopy];
  clientInfo = [modelCopy clientInfo];
  v9 = [clientInfo objectForKeyedSubscript:@"isExpressSetup"];
  -[FALaunchScreenTimeSetupHook _launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:](self, "_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:inObjectModel:isExpressSetup:withCompletion:", v10, modelCopy, [v9 BOOLValue], completionCopy);
}

- (void)_launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID:(id)d inObjectModel:(id)model isExpressSetup:(BOOL)setup withCompletion:(id)completion
{
  dCopy = d;
  modelCopy = model;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __129__FALaunchScreenTimeSetupHook__launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID_inObjectModel_isExpressSetup_withCompletion___block_invoke;
  v16[3] = &unk_2782F3908;
  v16[4] = self;
  v17 = dCopy;
  setupCopy = setup;
  v18 = modelCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = modelCopy;
  v15 = dCopy;
  [(FALaunchScreenTimeSetupHook *)self _refreshFamilyCircleIfNeededForMemberDSID:v15 completionHandler:v16];
}

void __129__FALaunchScreenTimeSetupHook__launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID_inObjectModel_isExpressSetup_withCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__FALaunchScreenTimeSetupHook__launchScreenTimeSetupAndRefreshFamilyIfNeededForDSID_inObjectModel_isExpressSetup_withCompletion___block_invoke_2;
  block[3] = &unk_2782F38E0;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v10 = *(a1 + 64);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_launchScreenTimeSetupForUser:(id)user inObjectModel:(id)model isExpressSetup:(BOOL)setup withCompletion:(id)completion
{
  setupCopy = setup;
  v87 = *MEMORY[0x277D85DE8];
  userCopy = user;
  modelCopy = model;
  completionCopy = completion;
  v13 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Launching screentime hook", buf, 2u);
  }

  v15 = _FALogSystem(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (userCopy)
  {
    if (v16)
    {
      *buf = 138477827;
      v86 = userCopy;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Setting up screen time for dsid %{private}@", buf, 0xCu);
    }

    v17 = [(FALaunchScreenTimeSetupHook *)self _extractAgeFromObjectModel:modelCopy];
    v18 = [(FALaunchScreenTimeSetupHook *)self _extractNameFromObjectModel:modelCopy];
    accountStore = [(FALaunchScreenTimeSetupHook *)self accountStore];
    aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

    isChildDevice = [(FALaunchScreenTimeSetupHook *)self isChildDevice];
    v72 = completionCopy;
    v73 = userCopy;
    v74 = aa_primaryAppleAccount;
    v75 = v18;
    v71 = v17;
    if ((isChildDevice & 1) != 0 || !aa_primaryAppleAccount)
    {
      if (aa_primaryAppleAccount)
      {
        screenTimeRequestProvider = [(FALaunchScreenTimeSetupHook *)self screenTimeRequestProvider];
        v31 = [screenTimeRequestProvider isScreenTimeSetupForDSID:userCopy];

        v33 = _FALogSystem(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [FALaunchScreenTimeSetupHook _launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:];
        }

        v34 = v31 ^ 1;
      }

      else
      {
        v35 = _FALogSystem(isChildDevice);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [FALaunchScreenTimeSetupHook _launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:];
        }

        v34 = 1;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke;
      aBlock[3] = &unk_2782F3958;
      v26 = v80;
      v36 = userCopy;
      v80[0] = v36;
      v80[1] = self;
      v81 = v74;
      v82 = modelCopy;
      v83 = completionCopy;
      v37 = _Block_copy(aBlock);
      childSetupControllerProvider = [(FALaunchScreenTimeSetupHook *)self childSetupControllerProvider];
      v39 = childSetupControllerProvider;
      if (v34)
      {
        v40 = [childSetupControllerProvider newChildSetupControllerOnChildDeviceWithDSID:v36 childAge:v17 childName:v75 isExpressSetup:setupCopy introductionModelCompletionHandler:v37];
      }

      else
      {
        v40 = [childSetupControllerProvider newChildSetupControllerWithDSID:v36 updateExistingSettings:1 childAge:v17 childName:v75 isExpressSetup:setupCopy introductionModelCompletionHandler:v37];
      }

      v28 = v40;

      v29 = v81;
    }

    else
    {
      v22 = _FALogSystem(isChildDevice);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FALaunchScreenTimeSetupHook _launchScreenTimeSetupForUser:aa_primaryAppleAccount inObjectModel:v22 isExpressSetup:? withCompletion:?];
      }

      screenTimeRequestProvider2 = [(FALaunchScreenTimeSetupHook *)self screenTimeRequestProvider];
      v24 = [screenTimeRequestProvider2 isScreenTimeSetupForDSID:userCopy];

      childSetupControllerProvider2 = [(FALaunchScreenTimeSetupHook *)self childSetupControllerProvider];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64;
      v76[3] = &unk_2782F3980;
      v26 = &v77;
      v27 = userCopy;
      v77 = v27;
      v78 = completionCopy;
      v28 = [childSetupControllerProvider2 newChildSetupControllerWithDSID:v27 updateExistingSettings:v24 childAge:v17 childName:v18 isExpressSetup:setupCopy completionHandler:v76];

      v29 = v78;
    }

    v60 = v28;
    initialViewController = [v28 initialViewController];
    defaultPages = [modelCopy defaultPages];
    firstObject = [defaultPages firstObject];

    [firstObject addChildViewController:initialViewController];
    view = [firstObject view];
    view2 = [initialViewController view];
    [view addSubview:view2];

    view3 = [initialViewController view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v61 = MEMORY[0x277CCAAD0];
    view4 = [initialViewController view];
    topAnchor = [view4 topAnchor];
    view5 = [firstObject view];
    topAnchor2 = [view5 topAnchor];
    v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v84[0] = v66;
    view6 = [initialViewController view];
    bottomAnchor = [view6 bottomAnchor];
    view7 = [firstObject view];
    bottomAnchor2 = [view7 bottomAnchor];
    v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v84[1] = v59;
    view8 = [initialViewController view];
    leadingAnchor = [view8 leadingAnchor];
    view9 = [firstObject view];
    leadingAnchor2 = [view9 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v84[2] = v47;
    view10 = [initialViewController view];
    trailingAnchor = [view10 trailingAnchor];
    view11 = [firstObject view];
    trailingAnchor2 = [view11 trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v53 = v52 = modelCopy;
    v84[3] = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:4];
    [v61 activateConstraints:v54];

    modelCopy = v52;
    [initialViewController didMoveToParentViewController:firstObject];

    completionCopy = v72;
    userCopy = v73;
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "No dsid present, jumping to screen time settings", buf, 2u);
    }

    [(FALaunchScreenTimeSetupHook *)self _launchScreenTimeSettings];
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Screen Time Model for %@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_57;
    v15[3] = &unk_2782F3930;
    v16 = *(a1 + 56);
    v12 = v5;
    v13 = *(a1 + 40);
    v17 = v12;
    v18 = v13;
    v19 = *(a1 + 64);
    [v10 _enableScreentimeWithIntroductionModel:v12 account:v9 dsidNum:v11 completion:v15];
  }

  else
  {
    if (v7)
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Screen Time should not be enabled, don't save state. %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [*(a1 + 32) clientInfo];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v7;

  [v8 setObject:*(a1 + 40) forKeyedSubscript:@"stIntroductionModel"];
  [*(a1 + 32) setClientInfo:v8];
  v9 = [*(a1 + 48) completionAction];

  if (v9)
  {
    v10 = [*(a1 + 48) completionAction];
    v11 = [v8 copy];
    (v10)[2](v10, v11);
  }

  (*(*(a1 + 56) + 16))();
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138478083;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "conclude screentime flow for %{private}@ %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_refreshFamilyCircleIfNeededForMemberDSID:(id)d completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = _FALogSystem(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = dCopy;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Starting family refresh if needed for dsid: %{private}@", buf, 0xCu);
  }

  familyFetcher = [(FALaunchScreenTimeSetupHook *)self familyFetcher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke;
  v12[3] = &unk_2782F39A8;
  v13 = dCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  [familyFetcher fetchCachedFamilyCircleWithQualityOfService:25 completionHandler:v12];
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_cold_1();
    }
  }

  v9 = [v5 memberForDSID:*(a1 + 32)];
  v10 = _FALogSystem(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      *buf = 138477827;
      v24 = v12;
      _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "Family member exist locally dsid: %{private}@", buf, 0xCu);
    }

    v13 = [*(a1 + 40) screenTimeRequestProvider];
    [v13 forceRefreshScreenTimeForDSID:*(a1 + 32) completionHandler:*(a1 + 48)];
  }

  else
  {
    if (v11)
    {
      v14 = *(a1 + 32);
      *buf = 138477827;
      v24 = v14;
      _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "Family member with dsid: %{private}@ does not exist locally. Force fetching...", buf, 0xCu);
    }

    v15 = [*(a1 + 40) familyFetcher];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67;
    v19[3] = &unk_2782F39A8;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v20 = v16;
    v21 = v17;
    v22 = v18;
    [v15 forceFetchFamilyCircleWithQualityOfService:25 completionHandler:v19];

    v13 = v20;
  }
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67_cold_1();
    }
  }

  v9 = [v5 memberForDSID:*(a1 + 32)];

  if (v9)
  {
    v11 = _FALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 138477827;
      v15 = v12;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Found member for %{private}@ after force fetching", &v14, 0xCu);
    }
  }

  v13 = [*(a1 + 40) screenTimeRequestProvider];
  [v13 forceRefreshScreenTimeForDSID:*(a1 + 32) completionHandler:*(a1 + 48)];
}

- (void)_enableScreentimeWithIntroductionModel:(id)model account:(id)account dsidNum:(id)num completion:(id)completion
{
  numCopy = num;
  completionCopy = completion;
  v12 = MEMORY[0x277D082F8];
  modelCopy = model;
  v14 = [v12 alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 initWithIntroductionModel:modelCopy date:date dsid:numCopy];

  v18 = _FALogSystem(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (account)
  {
    if (v19)
    {
      [FALaunchScreenTimeSetupHook _enableScreentimeWithIntroductionModel:account:dsidNum:completion:];
    }

    screenTimeRequestProvider = [(FALaunchScreenTimeSetupHook *)self screenTimeRequestProvider];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71;
    v25[3] = &unk_2782F3A20;
    v25[4] = self;
    v26 = numCopy;
    v27 = completionCopy;
    v21 = completionCopy;
    [screenTimeRequestProvider enableScreenTimeSettingsForDSID:numCopy screentimeObject:v16 completionHandler:v25];

    v22 = v26;
  }

  else
  {
    if (v19)
    {
      [FALaunchScreenTimeSetupHook _enableScreentimeWithIntroductionModel:account:dsidNum:completion:];
    }

    screenTimeRequestProvider2 = [(FALaunchScreenTimeSetupHook *)self screenTimeRequestProvider];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke;
    v28[3] = &unk_2782F39D0;
    v29 = numCopy;
    v30 = v16;
    v31 = completionCopy;
    v24 = completionCopy;
    [screenTimeRequestProvider2 cacheScreenTimeSettingToDiskWithDSID:numCopy screentimeObject:v30 completionHandler:v28];

    v22 = v29;
  }
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _FALogSystem(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_2();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 BOOLValue];
  v8 = v7;
  v9 = _FALogSystem(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_2();
    }

    v11 = [*(a1 + 32) screenTimeRequestProvider];
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) ephemeralAuthResults];
    v14 = [v5 BOOLValue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_72;
    v15[3] = &unk_2782F39F8;
    v17 = *(a1 + 48);
    v16 = v5;
    [v11 updateScreenTimeServerFlagSettingsForDSID:v12 ephemeralAuthResults:v13 enabled:v14 completionHandler:v15];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_1();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5 != 0, v6);
  }
}

- (id)_extractAgeFromObjectModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"dependentAge"];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v6 = [v5 numberFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_extractNameFromObjectModel:(id)model
{
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  v5 = [clientInfo objectForKeyedSubscript:@"dependentFirstName"];

  clientInfo2 = [modelCopy clientInfo];

  v7 = [clientInfo2 objectForKeyedSubscript:@"dependentLastName"];

  v8 = objc_alloc_init(MEMORY[0x277CCAC00]);
  [v8 setGivenName:v5];
  [v8 setFamilyName:v7];
  v9 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v9 setStyle:1];
  v10 = [v9 stringFromPersonNameComponents:v8];
  if ([v10 length])
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;

  return v11;
}

- (id)extractDSIDFromObjectModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"dsid"];

  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  [v5 setLocale:v6];

  v7 = [v5 numberFromString:v4];

  return v7;
}

- (void)_launchScreenTimeSettings
{
  v4 = 0;
  v2 = [MEMORY[0x277D08358] urlDestinationTo:8 error:&v4];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_launchScreenTimeSetupForUser:(void *)a1 inObjectModel:(NSObject *)a2 isExpressSetup:withCompletion:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 aa_altDSID];
  v4 = 136315395;
  v5 = "[FALaunchScreenTimeSetupHook _launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:]";
  v6 = 2113;
  v7 = v3;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "%s - running on guardian's device %{private}@", &v4, 0x16u);
}

- (void)_launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:.cold.2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3(&dword_21BB35000, v0, v1, "%s - running on child device %@, %@", v2);
}

- (void)_launchScreenTimeSetupForUser:inObjectModel:isExpressSetup:withCompletion:.cold.3()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3(&dword_21BB35000, v0, v1, "%s - running on device with no icloud account %@, %@", v2);
}

void __105__FALaunchScreenTimeSetupHook__launchScreenTimeSetupForUser_inObjectModel_isExpressSetup_withCompletion___block_invoke_64_cold_1()
{
  v2 = 138478083;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, v0, v1, "Error setting up screen time for %{private}@ %@", v2);
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_cold_1()
{
  v2 = 138478083;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, v0, v1, "Error fetching cached family for %{private}@ %@", v2);
}

void __91__FALaunchScreenTimeSetupHook__refreshFamilyCircleIfNeededForMemberDSID_completionHandler___block_invoke_67_cold_1()
{
  v2 = 138478083;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, v0, v1, "Error force fetching family for %{private}@ %@", v2);
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&dword_21BB35000, v1, OS_LOG_TYPE_ERROR, "FALaunchScreenTimeSetupHook failed to save screentime data %@, %@", v2, 0x16u);
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __97__FALaunchScreenTimeSetupHook__enableScreentimeWithIntroductionModel_account_dsidNum_completion___block_invoke_71_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&dword_21BB35000, v1, OS_LOG_TYPE_ERROR, "FALaunchScreenTimeSetupHook %s: Error Setting up Screentime: %@", v2, 0x16u);
}

@end