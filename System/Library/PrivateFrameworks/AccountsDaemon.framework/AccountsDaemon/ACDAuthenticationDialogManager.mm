@interface ACDAuthenticationDialogManager
- (ACDAuthenticationDialogManager)init;
- (BOOL)_confirmUserWantsToOpenAuthenticationURLForAccount:(id)account;
- (void)_launchDialogContainerAppForAccount:(id)account shouldConfirm:(BOOL)confirm completion:(id)completion;
- (void)authenticationDialogCrashed;
- (void)authenticationDialogDidFinishWithSuccess:(BOOL)success response:(id)response;
- (void)contextForAuthenticationDialog:(id)dialog;
- (void)openAuthenticationURL:(id)l forAccount:(id)account shouldConfirm:(BOOL)confirm completion:(id)completion;
- (void)openAuthenticationURLForAccount:(id)account withDelegateClassName:(id)name fromBundleAtPath:(id)path shouldConfirm:(BOOL)confirm completion:(id)completion;
@end

@implementation ACDAuthenticationDialogManager

- (ACDAuthenticationDialogManager)init
{
  v6.receiver = self;
  v6.super_class = ACDAuthenticationDialogManager;
  v2 = [(ACDAuthenticationDialogManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ACDQueueDictionary);
    dialogRequestQueues = v2->_dialogRequestQueues;
    v2->_dialogRequestQueues = v3;
  }

  return v2;
}

- (void)openAuthenticationURL:(id)l forAccount:(id)account shouldConfirm:(BOOL)confirm completion:(id)completion
{
  confirmCopy = confirm;
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  accountCopy = account;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [accountCopy identifier];

  if (identifier)
  {
    v16 = _ACDLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ACDAuthenticationDialogManager openAuthenticationURL:forAccount:shouldConfirm:completion:];
    }

    isEmpty = [(ACDQueueDictionary *)selfCopy->_dialogRequestQueues isEmpty];
    v18 = objc_alloc_init(ACDAuthenticationDialogRequest);
    [(ACDAuthenticationDialogRequest *)v18 setUrl:lCopy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke;
    v26[3] = &unk_27848CF10;
    v27 = completionCopy;
    [(ACDAuthenticationDialogRequest *)v18 setCompletion:v26];
    [(ACDAuthenticationDialogRequest *)v18 setConfirmationRequired:confirmCopy];
    [(ACDAuthenticationDialogRequest *)v18 setAccount:accountCopy];
    dialogRequestQueues = selfCopy->_dialogRequestQueues;
    identifier2 = [accountCopy identifier];
    [(ACDQueueDictionary *)dialogRequestQueues addObject:v18 toQueueForKey:identifier2];

    v22 = _ACDLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      identifier3 = [accountCopy identifier];
      [ACDAuthenticationDialogManager openAuthenticationURL:identifier3 forAccount:buf shouldConfirm:v22 completion:?];
    }

    if (isEmpty)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47;
      v25[3] = &unk_27848CF38;
      v25[4] = selfCopy;
      [(ACDAuthenticationDialogManager *)selfCopy _launchDialogContainerAppForAccount:accountCopy shouldConfirm:confirmCopy completion:v25];
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v24);
  }

  objc_sync_exit(selfCopy);
}

void __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = _ACDLogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47_cold_1();
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 authenticationDialogDidFinishWithSuccess:0 response:0];
  }
}

- (void)openAuthenticationURLForAccount:(id)account withDelegateClassName:(id)name fromBundleAtPath:(id)path shouldConfirm:(BOOL)confirm completion:(id)completion
{
  confirmCopy = confirm;
  v30 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  nameCopy = name;
  pathCopy = path;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [accountCopy identifier];

  if (identifier)
  {
    v19 = _ACDLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ACDAuthenticationDialogManager openAuthenticationURL:forAccount:shouldConfirm:completion:];
    }

    isEmpty = [(ACDQueueDictionary *)selfCopy->_dialogRequestQueues isEmpty];
    v21 = objc_alloc_init(ACDAuthenticationDialogRequest);
    [(ACDAuthenticationDialogRequest *)v21 setUrl:0];
    [(ACDAuthenticationDialogRequest *)v21 setCompletion:completionCopy];
    [(ACDAuthenticationDialogRequest *)v21 setConfirmationRequired:confirmCopy];
    [(ACDAuthenticationDialogRequest *)v21 setAccount:accountCopy];
    [(ACDAuthenticationDialogRequest *)v21 setAuthDelegateClassName:nameCopy];
    [(ACDAuthenticationDialogRequest *)v21 setAuthDelegateClassBundlePath:pathCopy];
    dialogRequestQueues = selfCopy->_dialogRequestQueues;
    identifier2 = [accountCopy identifier];
    [(ACDQueueDictionary *)dialogRequestQueues addObject:v21 toQueueForKey:identifier2];

    v25 = _ACDLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      identifier3 = [accountCopy identifier];
      [ACDAuthenticationDialogManager openAuthenticationURL:identifier3 forAccount:buf shouldConfirm:v25 completion:?];
    }

    if (isEmpty)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __130__ACDAuthenticationDialogManager_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke;
      v28[3] = &unk_27848CF38;
      v28[4] = selfCopy;
      [(ACDAuthenticationDialogManager *)selfCopy _launchDialogContainerAppForAccount:accountCopy shouldConfirm:confirmCopy completion:v28];
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v27);
  }

  objc_sync_exit(selfCopy);
}

void __130__ACDAuthenticationDialogManager_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = _ACDLogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47_cold_1();
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 authenticationDialogDidFinishWithSuccess:0 response:0];
  }
}

- (void)_launchDialogContainerAppForAccount:(id)account shouldConfirm:(BOOL)confirm completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  identifier = [accountCopy identifier];
  activeAccountID = self->_activeAccountID;
  self->_activeAccountID = identifier;

  v12 = dispatch_get_global_queue(2, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke;
  v15[3] = &unk_27848CF88;
  confirmCopy = confirm;
  v15[4] = self;
  v16 = accountCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = accountCopy;
  dispatch_async(v12, v15);
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke(id *a1)
{
  v1 = a1;
  if (*(a1 + 56) == 1 && (a1 = [a1[4] _confirmUserWantsToOpenAuthenticationURLForAccount:a1[5]], !a1))
  {
    v4 = *(v1[6] + 2);

    v4();
  }

  else
  {
    v2 = _ACDLogSystem(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_cold_1();
    }

    v3 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50;
    v5[3] = &unk_27848CF60;
    v6 = v1[6];
    [v3 openApplication:@"com.apple.AccountAuthenticationDialog" withOptions:0 completion:v5];
  }
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _ACDLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50_cold_1(v5, v6);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

- (BOOL)_confirmUserWantsToOpenAuthenticationURLForAccount:(id)account
{
  accountCopy = account;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  accountType = [accountCopy accountType];
  accountTypeDescription = [accountType accountTypeDescription];

  if (accountTypeDescription)
  {
    v6 = accountTypeDescription;
  }

  else
  {
    v6 = &stru_2835374D8;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"VERIFICATION_REQUIRED_MESSAGE_FORMAT" value:&stru_2835374D8 table:@"Localizable"];
  username = [accountCopy username];
  v11 = [v7 stringWithFormat:v9, v6, username];

  v13 = _ACDLogSystem(v12);
  v23 = v6;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "ACDAuthenticationDialogRequest: asking user to confirm showing auth dialog.", buf, 2u);
  }

  v14 = dispatch_semaphore_create(0);
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"VERIFICATION_REQUIRED_TITLE" value:&stru_2835374D8 table:@"Localizable"];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_2835374D8 table:@"Localizable"];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"CONTINUE" value:&stru_2835374D8 table:@"Localizable"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__ACDAuthenticationDialogManager__confirmUserWantsToOpenAuthenticationURLForAccount___block_invoke;
  v24[3] = &unk_27848CFB0;
  v26 = &v28;
  v21 = v14;
  v25 = v21;
  [ACDUserNotification showUserNotificationWithTitle:v16 message:v11 cancelButtonTitle:v18 otherButtonTitle:v20 withCompletionBlock:v24];

  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v15) = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return v15;
}

intptr_t __85__ACDAuthenticationDialogManager__confirmUserWantsToOpenAuthenticationURLForAccount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _ACDLogSystem(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "ACDAuthenticationDialogRequest: user declined.", v8, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "ACDAuthenticationDialogRequest: user asked to continue.", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)contextForAuthenticationDialog:(id)dialog
{
  v28 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(ACDQueueDictionary *)selfCopy->_dialogRequestQueues firstObjectInQueueForKey:selfCopy->_activeAccountID];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
    account = [v7 account];
    accountDescription = [account accountDescription];

    account2 = [v7 account];
    username = [account2 username];

    authDelegateClassName = [v7 authDelegateClassName];
    authDelegateClassBundlePath = [v7 authDelegateClassBundlePath];
    v15 = _ACDLogSystem(authDelegateClassBundlePath);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = ACHashedString();
      v18 = 138413314;
      v19 = v8;
      v20 = 2112;
      v21 = accountDescription;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = authDelegateClassName;
      v26 = 2112;
      v27 = authDelegateClassBundlePath;
      _os_log_debug_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEBUG, "ACDAuthenticationDialogManager: providing active dialog with URL: %@ title: %@ username: %@ authDelegateClassName %@ authDelegateClassBundlePath %@", &v18, 0x34u);
    }

    dialogCopy[2](dialogCopy, v8, accountDescription, username, authDelegateClassName, authDelegateClassBundlePath);
  }

  else
  {
    v16 = _ACDLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationDialogManager contextForAuthenticationDialog:];
    }

    dialogCopy[2](dialogCopy, 0, 0, 0, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)authenticationDialogDidFinishWithSuccess:(BOOL)success response:(id)response
{
  successCopy = success;
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(ACDQueueDictionary *)selfCopy->_dialogRequestQueues dequeueAllObjectsInQueueForKey:selfCopy->_activeAccountID];
  if (![v8 count])
  {
    v9 = _ACDLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationDialogManager authenticationDialogDidFinishWithSuccess:response:];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        completion = [*(*(&v22 + 1) + 8 * v13) completion];
        v15 = completion;
        if (completion)
        {
          (*(completion + 16))(completion, successCopy, responseCopy, 0);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  activeAccountID = selfCopy->_activeAccountID;
  selfCopy->_activeAccountID = 0;

  keyForRandomQueue = [(ACDQueueDictionary *)selfCopy->_dialogRequestQueues keyForRandomQueue];
  v18 = [(ACDQueueDictionary *)selfCopy->_dialogRequestQueues firstObjectInQueueForKey:keyForRandomQueue];
  if (v18)
  {
    v19 = dispatch_time(0, 1000000000);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke;
    v20[3] = &unk_27848BFF0;
    v20[4] = selfCopy;
    v21 = v18;
    dispatch_after(v19, MEMORY[0x277D85CD0], v20);
  }

  objc_sync_exit(selfCopy);
}

void __84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) account];
  v4 = [*(a1 + 40) confirmationRequired];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke_2;
  v5[3] = &unk_27848CF38;
  v5[4] = *(a1 + 32);
  [v2 _launchDialogContainerAppForAccount:v3 shouldConfirm:v4 completion:v5];
}

id *__84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke_2(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] authenticationDialogDidFinishWithSuccess:0 response:0];
  }

  return result;
}

- (void)authenticationDialogCrashed
{
  if (self->_activeAccountID)
  {
    [(ACDAuthenticationDialogManager *)self authenticationDialogDidFinishWithSuccess:0 response:0];
  }
}

- (void)openAuthenticationURL:(os_log_t)log forAccount:shouldConfirm:completion:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_221D2F000, log, OS_LOG_TYPE_DEBUG, "ACDAuthenticationDialogRequest: added dialog request to queue under ID %@", buf, 0xCu);
}

void __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"com.apple.AccountAuthenticationDialog";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to lauch %@ app: %@", &v2, 0x16u);
}

@end