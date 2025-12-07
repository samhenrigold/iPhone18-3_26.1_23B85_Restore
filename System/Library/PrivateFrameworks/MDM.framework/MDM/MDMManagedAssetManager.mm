@interface MDMManagedAssetManager
+ (void)_promptUserForiTunesAccount:(id)account accountNameEditable:(BOOL)editable canCreateNewAccount:(BOOL)newAccount assertion:(id)assertion completionBlock:(id)block;
+ (void)promptUserToLoginToiTunesIfNeededTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block;
@end

@implementation MDMManagedAssetManager

+ (void)promptUserToLoginToiTunesIfNeededTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  blockCopy = block;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    if (blockCopy)
    {
      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke;
      block[3] = &unk_27982B898;
      v27 = blockCopy;
      v26 = assertionCopy;
      dispatch_async(v16, block);

      v17 = v27;
LABEL_10:
    }
  }

  else
  {
    if (!+[MDMMCInterface isLimitedAppsMode])
    {
      v19 = MEMORY[0x277D034A0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_3;
      v20[3] = &unk_27982BED8;
      v22 = blockCopy;
      selfCopy = self;
      v21 = assertionCopy;
      [v19 promptUserToLogIntoiTunesWithTitle:titleCopy message:messageCopy assertion:v21 completion:v20];

      v17 = v22;
      goto LABEL_10;
    }

    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_ERROR, "Cannot prompt login to iTunes because device is in a limited apps mode", buf, 2u);
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

void __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a2;
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v12 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "User rejected app installation with response: %{public}u", buf, 8u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_4;
    v8[3] = &unk_27982BEB0;
    v7 = *(a1 + 48);
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v7 _promptUserForiTunesAccount:0 accountNameEditable:1 canCreateNewAccount:1 assertion:v6 completionBlock:v8];
  }
}

void __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Login failed. Error: %{public}@", &v11, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_10:
      v9();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Login successful.", &v11, 2u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_10;
    }
  }
}

+ (void)_promptUserForiTunesAccount:(id)account accountNameEditable:(BOOL)editable canCreateNewAccount:(BOOL)newAccount assertion:(id)assertion completionBlock:(id)block
{
  newAccountCopy = newAccount;
  editableCopy = editable;
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  blockCopy = block;
  v12 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = DMCStringForBool();
    *buf = 138543618;
    v22 = accountCopy;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "Prompting user to log in to iTunes store using account: %{public}@. Can create new account: %{public}@.", buf, 0x16u);
  }

  if (accountCopy)
  {
    contextForSignIn = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:accountCopy];
  }

  else
  {
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  v16 = contextForSignIn;
  [contextForSignIn setPromptStyle:0];
  [v16 setAccountNameEditable:editableCopy];
  [v16 setCanCreateNewAccount:newAccountCopy];
  v17 = [MDMSSAuthenticationRequestDelegate instanceWithAuthenticationContext:v16];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __120__MDMManagedAssetManager__promptUserForiTunesAccount_accountNameEditable_canCreateNewAccount_assertion_completionBlock___block_invoke;
  v19[3] = &unk_27982BF00;
  v20 = blockCopy;
  v18 = blockCopy;
  [v17 startWithCompletionBlock:v19];
}

void __120__MDMManagedAssetManager__promptUserForiTunesAccount_accountNameEditable_canCreateNewAccount_assertion_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v5 DMCVerboseDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "Log in request failed. Error: %{public}@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Log in successful. Account: %{public}@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

@end