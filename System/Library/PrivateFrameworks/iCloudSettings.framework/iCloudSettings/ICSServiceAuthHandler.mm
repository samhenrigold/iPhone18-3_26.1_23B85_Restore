@interface ICSServiceAuthHandler
- (AIDAServiceOwnerProtocol)serviceOwnersManager;
- (BOOL)accountMatchesPrimaryAccount:(id)account service:(id)service;
- (ICSServiceAuthHandler)initWithAccountManager:(id)manager presenter:(id)presenter;
- (id)account;
- (void)signInAccountForService:(id)service completion:(id)completion;
- (void)signOutAccountForService:(id)service completion:(id)completion;
@end

@implementation ICSServiceAuthHandler

- (ICSServiceAuthHandler)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = ICSServiceAuthHandler;
  v9 = [(ICSServiceAuthHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_listController, presenterCopy);
  }

  return v10;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (AIDAServiceOwnerProtocol)serviceOwnersManager
{
  serviceOwnersManager = self->_serviceOwnersManager;
  if (!serviceOwnersManager)
  {
    v4 = objc_alloc(MEMORY[0x277CED1E8]);
    accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
    v6 = [v4 initWithAccountStore:accountStore];
    v7 = self->_serviceOwnersManager;
    self->_serviceOwnersManager = v6;

    serviceOwnersManager = self->_serviceOwnersManager;
  }

  return serviceOwnersManager;
}

- (void)signInAccountForService:(id)service completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke;
  aBlock[3] = &unk_27A666868;
  v8 = completionCopy;
  v44 = v8;
  v9 = _Block_copy(aBlock);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_3;
  v40[3] = &unk_27A6668E0;
  v40[4] = self;
  v10 = serviceCopy;
  v41 = v10;
  v11 = v9;
  v42 = v11;
  v12 = _Block_copy(v40);
  v13 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:v10];
  if (v13)
  {
    v14 = [(ICSServiceAuthHandler *)self accountMatchesPrimaryAccount:v13 service:v10];
    v15 = v14;
    v16 = LogSubsystem(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_impl(&dword_275819000, v16, OS_LOG_TYPE_DEFAULT, "Already signed in to service %@, marking as such...", buf, 0xCu);
      }

      (*(v11 + 2))(v11, 1);
    }

    else
    {
      v35 = v12;
      v36 = v8;
      if (v17)
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_impl(&dword_275819000, v16, OS_LOG_TYPE_DEFAULT, "User already signed in to service %@, prompting for clarification...", buf, 0xCu);
      }

      v18 = AALocalizedStringForServiceType();
      v33 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ICLOUD_SERVICE_SWAP_ACCOUNT_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
      account = [(ICSServiceAuthHandler *)self account];
      username = [account username];
      username2 = [v13 username];
      v34 = [v33 stringWithFormat:v20, v18, username, username2];

      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"ICLOUD_SERVICE_SWAP_ACCOUNT_ACTION" value:&stru_288487370 table:@"Localizable-AppleID"];
      v32 = [v24 stringWithFormat:v26, v18];

      v27 = MEMORY[0x277D75110];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-AppleID"];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_87;
      v37[3] = &unk_27A666908;
      v38 = v36;
      v12 = v35;
      v39 = v35;
      v30 = [v27 alertWithTitle:v34 message:0 cancelButtonTitle:v29 defaultButtonTitle:v32 actionHandler:v37];

      WeakRetained = objc_loadWeakRetained(&self->_listController);
      [WeakRetained presentViewController:v30 animated:1 completion:0];

      v8 = v36;
    }
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_2;
  v3[3] = &unk_27A6661E8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_3(id *a1, char a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CF0380]);
  v5 = [a1[4] account];
  v6 = [v5 aa_altDSID];
  [v4 setAltDSID:v6];

  [v4 setIsUsernameEditable:0];
  WeakRetained = objc_loadWeakRetained(a1[4] + 2);
  [v4 setPresentingViewController:WeakRetained];

  v8 = a1[5];
  if ([v8 isEqualToString:*MEMORY[0x277CED1A0]])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1C0]])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1B8]])
  {
    v9 = 4;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1A8]])
  {
    v9 = 5;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1B0]])
  {
    v9 = 6;
  }

  else
  {
    v9 = 0;
  }

  [v4 setServiceType:v9];
  v10 = [a1[4] account];
  v11 = [v10 username];
  [v4 setUsername:v11];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = objc_alloc_init(MEMORY[0x277CF0178]);
  v12 = v22[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53;
  v16[3] = &unk_27A6668B8;
  v19 = &v21;
  v13 = a1[6];
  v20 = a2;
  v14 = a1[4];
  v15 = a1[5];
  v18 = v13;
  v16[4] = v14;
  v17 = v15;
  [v12 authenticateWithContext:v4 completion:v16];

  _Block_object_dispose(&v21, 8);
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v6)
  {
    v10 = LogSubsystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53_cold_1(v6, v10);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CED1D8]);
    [v11 setAuthenticationResults:v5];
    [v11 setShouldForceOperation:*(a1 + 64)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v11 setViewController:WeakRetained];

    v13 = *(a1 + 40);
    if (v13 == *MEMORY[0x277CED1B0])
    {
      v19 = *MEMORY[0x277CED1B0];
      v20[0] = &unk_28849FD88;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v11 setSignInContexts:v14];

      v13 = *(a1 + 40);
    }

    v15 = *(*(a1 + 32) + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_60;
    v16[3] = &unk_27A666890;
    v17 = v13;
    v18 = *(a1 + 48);
    [v15 signInService:v17 withContext:v11 completion:v16];
  }
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_60(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogSubsystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Signed in to service %{public}@ with success: %@, error: %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

uint64_t __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_87(uint64_t a1, int a2)
{
  v4 = LogSubsystem(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "User chose not to swap, bailing!", buf, 2u);
    }

    v6 = 32;
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "User opted to swap accounts, on it!", v8, 2u);
    }

    v6 = 40;
  }

  return (*(*(a1 + v6) + 16))();
}

- (void)signOutAccountForService:(id)service completion:(id)completion
{
  v40[2] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v8 = objc_alloc(MEMORY[0x277CECAE8]);
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v34 = [v8 initWithPresentingViewController:WeakRetained];

  [v30[5] setAccountManager:self->_accountManager];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke;
  aBlock[3] = &unk_27A666930;
  v28 = &v29;
  v10 = completionCopy;
  v27 = v10;
  v11 = _Block_copy(aBlock);
  v12 = objc_alloc_init(MEMORY[0x277CED1D8]);
  v13 = objc_loadWeakRetained(&self->_listController);
  [v12 setViewController:v13];

  v14 = *MEMORY[0x277CED1B0];
  if (*MEMORY[0x277CED1B0] == serviceCopy)
  {
    v17 = v30[5];
    v39[0] = *MEMORY[0x277CED1A0];
    v39[1] = v14;
    v40[0] = v17;
    v40[1] = &unk_28849FDB0;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  }

  else
  {
    v15 = v30[5];
    v37 = *MEMORY[0x277CED1A0];
    v38 = v15;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  }
  v16 = ;
  [v12 setSignOutContexts:v16];

  v19 = LogSubsystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = serviceCopy;
    _os_log_impl(&dword_275819000, v19, OS_LOG_TYPE_DEFAULT, "Attempting sign out for service: %{public}@", buf, 0xCu);
  }

  serviceOwnersManager = self->_serviceOwnersManager;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke_96;
  v23[3] = &unk_27A666890;
  v21 = serviceCopy;
  v24 = v21;
  v22 = v11;
  v25 = v22;
  [(AIDAServiceOwnerProtocol *)serviceOwnersManager signOutService:v21 withContext:v12 completion:v23];

  _Block_object_dispose(&v29, 8);
}

void __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke_2;
  v6[3] = &unk_27A6661E8;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke_96(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogSubsystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Signed out of service: %{public}@, success: %@, error: %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (BOOL)accountMatchesPrimaryAccount:(id)account service:(id)service
{
  accountCopy = account;
  serviceCopy = service;
  v8 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:accountCopy service:serviceCopy];
  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    account = [(ICSServiceAuthHandler *)self account];
    aa_altDSID = [account aa_altDSID];
    aa_personID = [v9 numberWithBool:{objc_msgSend(aa_altDSID, "isEqualToString:", v8)}];
    v13 = aa_personID;
  }

  else
  {
    account = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:accountCopy service:serviceCopy];
    v14 = MEMORY[0x277CCABB0];
    account2 = [(ICSServiceAuthHandler *)self account];
    aa_altDSID = account2;
    if (account)
    {
      aa_personID = [account2 aa_personID];
      username = [v14 numberWithBool:{objc_msgSend(aa_personID, "isEqualToString:", account)}];
      v13 = username;
    }

    else
    {
      aa_personID = [account2 username];
      username = [accountCopy username];
      v13 = [v14 numberWithBool:{objc_msgSend(aa_personID, "isEqualToString:", username)}];
    }
  }

  return v13 != 0;
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "AuthKit authentication returned an error: %@", &v2, 0xCu);
}

@end