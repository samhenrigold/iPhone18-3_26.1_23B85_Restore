@interface ACUISAddAccountHelper
+ (id)dataclassConfigurationControllerForAccount:(id)account name:(id)name completion:(id)completion;
+ (void)showAlternateSetupControllerForAccount:(id)account username:(id)username from:(id)from completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setupViewControllerDidDismiss:(id)dismiss;
- (void)showAddSheetForAccountType:(id)type onController:(id)controller withAccount:(id)account configDictionary:(id)dictionary forceMail:(BOOL)mail completion:(id)completion;
- (void)signInControllerDidCancel;
- (void)signInControllerDidCompleteWithSuccess:(BOOL)success error:(id)error;
@end

@implementation ACUISAddAccountHelper

- (void)showAddSheetForAccountType:(id)type onController:(id)controller withAccount:(id)account configDictionary:(id)dictionary forceMail:(BOOL)mail completion:(id)completion
{
  mailCopy = mail;
  v61 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  controllerCopy = controller;
  accountCopy = account;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  mEMORY[0x277CE8570] = [MEMORY[0x277CE8570] sharedInstance];
  viewProviderManager = self->viewProviderManager;
  self->viewProviderManager = mEMORY[0x277CE8570];

  v18 = [(ACUIAccountViewProvidersManager *)self->viewProviderManager controllerClassForCreatingAccountWithType:typeCopy];
  v19 = MEMORY[0x277D3FAD8];
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = objc_opt_class();
  }

  v21 = [v19 preferenceSpecifierNamed:&stru_28500F900 target:0 set:0 get:0 detail:v20 cell:10 edit:0];
  dictionary = [dictionaryCopy mutableCopy];
  if (!dictionary)
  {
    v24 = [(ACUIAccountViewProvidersManager *)self->viewProviderManager configurationInfoForCreatingAccountWithType:typeCopy];
    v23 = [v24 mutableCopy];

    if (v23)
    {
      goto LABEL_7;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v23 = dictionary;
LABEL_7:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:mailCopy];
  [v23 setObject:v25 forKeyedSubscript:*MEMORY[0x277CE8558]];

  [v23 setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CE8550]];
  [v21 setUserInfo:v23];
  v26 = *MEMORY[0x277CB8BA0];
  if (-[ACUIAccountCreationControlling isEqualToString:](typeCopy, "isEqualToString:", *MEMORY[0x277CB8BA0]) && ([v23 objectForKeyedSubscript:*MEMORY[0x277CE8548]], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", @"primary"), v27, v28))
  {
    v29 = _ACUILogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "[ACUISAddAccountHelper showAddSheetForAccountType:onController:withAccount:configDictionary:forceMail:completion:]";
      v57 = 1024;
      v58 = 147;
      _os_log_impl(&dword_23DCDB000, v29, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: Primary iCloud sign in flow begin", buf, 0x12u);
    }

    v30 = _Block_copy(completionCopy);
    completion = self->_completion;
    self->_completion = v30;

    objc_storeStrong(&self->_setupViewController, controller);
    v32 = objc_alloc_init([(ACUIAccountViewProvidersManager *)self->viewProviderManager viewControllerClassForCreatingAccountWithType:v26]);
    [(ACUIAccountViewProvidersManager *)self->viewProviderManager setDelegate:self forSignInController:v32 forAccountWithType:v26];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      username = [accountCopy username];
      [v32 setUsername:username];
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v32 setModalPresentationStyle:2];
      [v32 setModalTransitionStyle:0];
    }

    [controllerCopy presentViewController:v32 animated:1 completion:0];
  }

  else if (v18 && [(objc_class *)v18 conformsToProtocol:&unk_285029CC0])
  {
    v36 = objc_alloc_init(v18);
    accountCreationController = self->_accountCreationController;
    self->_accountCreationController = v36;

    v38 = _ACUILogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = self->_accountCreationController;
      *buf = 136315650;
      v56 = "[ACUISAddAccountHelper showAddSheetForAccountType:onController:withAccount:configDictionary:forceMail:completion:]";
      v57 = 1024;
      v58 = 171;
      v59 = 2114;
      v60 = v39;
      _os_log_impl(&dword_23DCDB000, v38, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: Begining account creation controller with %{public}@", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    v40 = self->_accountCreationController;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke;
    v52[3] = &unk_278BFD238;
    objc_copyWeak(&v54, buf);
    v53 = completionCopy;
    [(ACUIAccountCreationControlling *)v40 beginAccountCreationWithSpecifier:v21 fromViewController:controllerCopy completion:v52];

    objc_destroyWeak(&v54);
    objc_destroyWeak(buf);
  }

  else
  {
    v41 = _ACUILogSystem();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v56 = "[ACUISAddAccountHelper showAddSheetForAccountType:onController:withAccount:configDictionary:forceMail:completion:]";
      v57 = 1024;
      v58 = 189;
      v59 = 2112;
      v60 = typeCopy;
      _os_log_impl(&dword_23DCDB000, v41, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: PSSetupController based sign in flow for account type %@", buf, 0x1Cu);
    }

    v42 = _Block_copy(completionCopy);
    v43 = self->_completion;
    self->_completion = v42;

    [v21 detailControllerClass];
    v44 = CreateDetailControllerInstanceWithClass();
    [v44 setParentController:controllerCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96;
      v50[3] = &unk_278BFD260;
      v51 = completionCopy;
      [v44 setCompletion:v50];
    }

    v45 = NSStringFromClass([(ACUIAccountViewProvidersManager *)self->viewProviderManager viewControllerClassForCreatingAccountWithType:typeCopy]);
    [v21 setProperty:v45 forKey:*MEMORY[0x277D400B8]];

    [v44 setSpecifier:v21];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v44 setupController];
    }

    presentationController = [v44 presentationController];
    [presentationController setDelegate:self];

    [controllerCopy presentViewController:v44 animated:1 completion:0];
  }
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = _ACUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[ACUISAddAccountHelper showAddSheetForAccountType:onController:withAccount:configDictionary:forceMail:completion:]_block_invoke";
    v20 = 1024;
    v21 = 179;
    v22 = 2050;
    v23 = a3;
    _os_log_impl(&dword_23DCDB000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Account Creation Controller completed with action: %{public}ld", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_93;
  block[3] = &unk_278BFD210;
  objc_copyWeak(v17, (a1 + 40));
  v10 = *(a1 + 32);
  v15 = v8;
  v16 = v10;
  v17[1] = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v17);
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_93(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    (*(v5 + 16))(v5, v3, v6, 0);
  }
}

- (void)signInControllerDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = _ACUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v12 = "[ACUISAddAccountHelper signInControllerDidCompleteWithSuccess:error:]";
    v13 = 1024;
    v14 = 222;
    *buf = 136315906;
    if (successCopy)
    {
      v8 = @"YES";
    }

    v15 = 2114;
    v16 = v8;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_23DCDB000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: signInControllerDidCompleteWithSuccess: %{public}@ error: %@", buf, 0x26u);
  }

  setupViewController = self->_setupViewController;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ACUISAddAccountHelper_signInControllerDidCompleteWithSuccess_error___block_invoke;
  v10[3] = &unk_278BFD288;
  v10[4] = self;
  [(PSViewController *)setupViewController dismissViewControllerAnimated:1 completion:v10];
}

uint64_t __70__ACUISAddAccountHelper_signInControllerDidCompleteWithSuccess_error___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 3, 0);
  }

  return result;
}

- (void)signInControllerDidCancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ACUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[ACUISAddAccountHelper signInControllerDidCancel]";
    v8 = 1024;
    v9 = 230;
    _os_log_impl(&dword_23DCDB000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: signInControllerDidCancel", buf, 0x12u);
  }

  setupViewController = self->_setupViewController;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ACUISAddAccountHelper_signInControllerDidCancel__block_invoke;
  v5[3] = &unk_278BFD288;
  v5[4] = self;
  [(PSViewController *)setupViewController dismissViewControllerAnimated:1 completion:v5];
}

uint64_t __50__ACUISAddAccountHelper_signInControllerDidCancel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 4, 0);
  }

  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _ACUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ACUISAddAccountHelper presentationControllerDidDismiss:]";
    v8 = 1024;
    v9 = 241;
    _os_log_impl(&dword_23DCDB000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: presentationControllerDidDismiss", &v6, 0x12u);
  }

  completion = self->_completion;
  if (completion)
  {
    (*(completion + 2))(completion, 0, 4, 0);
  }
}

+ (void)showAlternateSetupControllerForAccount:(id)account username:(id)username from:(id)from completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  fromCopy = from;
  usernameCopy = username;
  v13 = _ACUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "+[ACUISAddAccountHelper showAlternateSetupControllerForAccount:username:from:completion:]";
    v16 = 1024;
    v17 = 254;
    v18 = 2112;
    v19 = accountCopy;
    _os_log_impl(&dword_23DCDB000, v13, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: showAlternateSetupControllerForAccount %@", &v14, 0x1Cu);
  }

  [MEMORY[0x277CE8598] showAlternateCreationControllerForAccountType:accountCopy username:usernameCopy fromViewController:fromCopy specifier:0 completion:completionCopy];
}

+ (id)dataclassConfigurationControllerForAccount:(id)account name:(id)name completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  nameCopy = name;
  accountCopy = account;
  v10 = _ACUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "+[ACUISAddAccountHelper dataclassConfigurationControllerForAccount:name:completion:]";
    v15 = 1024;
    v16 = 265;
    _os_log_impl(&dword_23DCDB000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: dataclass onfig controller called", &v13, 0x12u);
  }

  v11 = [MEMORY[0x277CE8598] dataclassConfigurationControllerForAccount:accountCopy name:nameCopy specifier:0 completion:completionCopy];

  return v11;
}

- (void)setupViewControllerDidDismiss:(id)dismiss
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ACUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ACUISAddAccountHelper setupViewControllerDidDismiss:]";
    v6 = 1024;
    v7 = 271;
    _os_log_impl(&dword_23DCDB000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: setup view controller did dismiss", &v4, 0x12u);
  }
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23DCDB000, v0, v1, "%s (%d) ACUISAddAccountHelper: PSSetupController based sign in flow did finish adding account %@", v2, v3, v4, v5, v6);
}

@end