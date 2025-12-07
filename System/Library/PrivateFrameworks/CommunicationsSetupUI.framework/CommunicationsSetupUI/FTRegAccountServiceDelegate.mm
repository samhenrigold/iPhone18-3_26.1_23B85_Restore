@interface FTRegAccountServiceDelegate
- (BOOL)_account:(id)_account matchesSetupParameters:(id)parameters;
- (BOOL)_hasAccount;
- (BOOL)_hasOperationalAccount;
- (BOOL)_shouldSkipAccountSetup:(id)setup;
- (FTRegAccountServiceDelegate)init;
- (FTRegAccountServiceDelegate)initWithRegController:(id)controller;
- (IDSAccountController)accountController;
- (id)_defaultSetupRequestParameters;
- (id)_existingAccountForSetupParameters:(id)parameters;
- (id)_existingOperationalAccount;
- (id)_logName;
- (id)parametersForLoginRequest;
- (void)_cleanup;
- (void)_handleFailureWithErrorCode:(int64_t)code;
- (void)_handleSuccess:(BOOL)success error:(id)error;
- (void)handleLoginResponse:(id)response completion:(id)completion;
- (void)setupOperationFailed;
@end

@implementation FTRegAccountServiceDelegate

- (FTRegAccountServiceDelegate)initWithRegController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = FTRegAccountServiceDelegate;
  v5 = [(FTRegAccountServiceDelegate *)&v17 init];
  v7 = v5;
  if (!v5)
  {
LABEL_6:
    v13 = v7;
    goto LABEL_10;
  }

  v8 = csui_log(v5, v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (controllerCopy)
  {
    if (v9)
    {
      [controllerCopy serviceType];
      v10 = FTCServiceNameForServiceType();
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Creating SetupAssistant delegate with type: %@", buf, 0xCu);
    }

    mainThread = [MEMORY[0x277CCACC8] mainThread];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__FTRegAccountServiceDelegate_initWithRegController___block_invoke;
    v15[3] = &unk_278DE7E08;
    v12 = v7;
    v16 = v12;
    [mainThread __im_performBlock:v15 waitUntilDone:1];

    [(FTRegAccountServiceDelegate *)v12 setRegController:controllerCopy];
    goto LABEL_6;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Not creating SetupAssistant delegate due to missing registration controller", buf, 2u);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

void __53__FTRegAccountServiceDelegate_initWithRegController___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D18D68] sharedInstance];
  v2 = [*(a1 + 32) name];
  [v3 addListenerID:v2 capabilities:*MEMORY[0x277D19338]];
}

- (FTRegAccountServiceDelegate)init
{
  v3 = [CNFRegController controllerForServiceType:[(FTRegAccountServiceDelegate *)self serviceType]];
  v4 = [(FTRegAccountServiceDelegate *)self initWithRegController:v3];

  return v4;
}

- (id)_logName
{
  v2 = MEMORY[0x277CCACA8];
  displayName = [(FTRegAccountServiceDelegate *)self displayName];
  v4 = [v2 stringWithFormat:@"SetupAssistant:%@", displayName];

  return v4;
}

- (IDSAccountController)accountController
{
  accountController = self->_accountController;
  if (!accountController)
  {
    serviceType = [(FTRegAccountServiceDelegate *)self serviceType];
    v5 = MEMORY[0x277D186B0];
    if (serviceType != 1)
    {
      v5 = MEMORY[0x277D18698];
    }

    v6 = MEMORY[0x277D186C8];
    v7 = *v5;
    v8 = [[v6 alloc] initWithService:v7];

    v9 = self->_accountController;
    self->_accountController = v8;

    accountController = self->_accountController;
  }

  return accountController;
}

- (void)_cleanup
{
  [(FTRegAccountServiceDelegate *)self setResponseDictionary:0];

  [(FTRegAccountServiceDelegate *)self setCompletionHandler:0];
}

- (void)_handleSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = csui_log(errorCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (successCopy)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Finished successfully:%@, error:%@", &v12, 0x16u);
  }

  completionHandler = [(FTRegAccountServiceDelegate *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FTRegAccountServiceDelegate *)self completionHandler];
    completionHandler2[2](completionHandler2, 1, 0);
  }

  [(FTRegAccountServiceDelegate *)self _cleanup];
}

- (void)_handleFailureWithErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ftreg.buddyerror" code:code userInfo:0];
  [(FTRegAccountServiceDelegate *)self _handleSuccess:0 error:v4];
}

- (BOOL)_hasAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mainThread = [MEMORY[0x277CCACC8] mainThread];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__FTRegAccountServiceDelegate__hasAccount__block_invoke;
  v5[3] = &unk_278DE7E30;
  v5[4] = self;
  v5[5] = &v6;
  [mainThread __im_performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __42__FTRegAccountServiceDelegate__hasAccount__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isConnected];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) regController];
    [v4 connect:1];
  }

  v5 = [*(a1 + 32) regController];
  v6 = [v5 accountsWithFilter:32772];

  v9 = csui_log(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = [v6 count];
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Found %lu existing accounts %@", &v11, 0x16u);
  }

  if (v6)
  {
    v10 = [v6 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v10;
}

- (BOOL)_hasOperationalAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mainThread = [MEMORY[0x277CCACC8] mainThread];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FTRegAccountServiceDelegate__hasOperationalAccount__block_invoke;
  v5[3] = &unk_278DE7E30;
  v5[4] = self;
  v5[5] = &v6;
  [mainThread __im_performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __53__FTRegAccountServiceDelegate__hasOperationalAccount__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isConnected];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) regController];
    [v4 connect:1];
  }

  v5 = [*(a1 + 32) regController];
  v6 = [v5 accountsWithFilter:65540];

  v9 = csui_log(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = [v6 count];
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Found %lu operational accounts %@", &v11, 0x16u);
  }

  if (v6)
  {
    v10 = [v6 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v10;
}

- (BOOL)_account:(id)_account matchesSetupParameters:(id)parameters
{
  _accountCopy = _account;
  __ftreg_responseAppleID = [parameters __ftreg_responseAppleID];
  v8 = __ftreg_responseAppleID;
  if (_accountCopy && [__ftreg_responseAppleID length])
  {
    regController = [(FTRegAccountServiceDelegate *)self regController];
    v10 = [regController loginForAccount:_accountCopy];

    v11 = [v10 isEqualToIgnoringCase:v8];
    if ([v10 hasMobileMeSuffix] && objc_msgSend(v8, "hasMobileMeSuffix"))
    {
      stripMobileMSuffixIfPresent = [v8 stripMobileMSuffixIfPresent];
      stripMobileMSuffixIfPresent2 = [v10 stripMobileMSuffixIfPresent];
      v14 = [stripMobileMSuffixIfPresent isEqualToIgnoringCase:stripMobileMSuffixIfPresent2];

      v11 |= v14;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)_existingAccountForSetupParameters:(id)parameters
{
  v25 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  __ftreg_responseAppleID = [parametersCopy __ftreg_responseAppleID];
  v7 = csui_log(__ftreg_responseAppleID, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = __ftreg_responseAppleID;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Looking for existing account for Apple ID: %@", buf, 0xCu);
  }

  if ([__ftreg_responseAppleID length])
  {
    regController = [(FTRegAccountServiceDelegate *)self regController];
    v9 = [regController accountsWithFilter:32772];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([(FTRegAccountServiceDelegate *)self _account:v15 matchesSetupParameters:parametersCopy, v18])
          {
            v16 = v15;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_14:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_existingOperationalAccount
{
  v11 = *MEMORY[0x277D85DE8];
  regController = [(FTRegAccountServiceDelegate *)self regController];
  v3 = [regController accountsWithFilter:65540];

  v6 = csui_log(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Found %lu existing operational accounts", &v9, 0xCu);
  }

  if (v3 && [v3 count])
  {
    v7 = [v3 objectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldSkipAccountSetup:(id)setup
{
  v29 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v6 = csui_log(setupCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Checking if user has denied permission to use phoneNumber for FaceTime/Messages.", buf, 2u);
  }

  v7 = dispatch_semaphore_create(0);
  v19 = MEMORY[0x277D85DD0];
  v8 = v7;
  v20 = v8;
  v9 = dispatch_get_global_queue(33, 0);
  IDSRegistrationControlGetStateForRegistrationType();

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v22[3])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(FTRegAccountServiceDelegate *)self _existingOperationalAccount:v19];
    if (v11)
    {
      v12 = [(FTRegAccountServiceDelegate *)self _account:v11 matchesSetupParameters:setupCopy];
      if ((v12 & 1) == 0)
      {
        v14 = csui_log(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          login = [v11 login];
          responseDictionary = [(FTRegAccountServiceDelegate *)self responseDictionary];
          __ftreg_responseAppleID = [responseDictionary __ftreg_responseAppleID];
          *buf = 138412546;
          v26 = login;
          v27 = 2112;
          v28 = __ftreg_responseAppleID;
          _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "A registered AppleID account already exists (%@), but we are setting up for: %@. Bailing.", buf, 0x16u);
        }

        *(v22 + 24) = 1;
      }
    }

    v10 = *(v22 + 24);
  }

  _Block_object_dispose(&v21, 8);
  return v10 & 1;
}

intptr_t __55__FTRegAccountServiceDelegate__shouldSkipAccountSetup___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = csui_log(a1, 1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "User has denied use of phoneNumber for FaceTime/Messages. Skipping account setup", v5, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)parametersForLoginRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  mainThread = [MEMORY[0x277CCACC8] mainThread];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__FTRegAccountServiceDelegate_parametersForLoginRequest__block_invoke;
  v6[3] = &unk_278DE7E30;
  v6[4] = self;
  v6[5] = &v7;
  [mainThread __im_performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__FTRegAccountServiceDelegate_parametersForLoginRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = csui_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Building setup request parameters", buf, 2u);
  }

  if ([*(a1 + 32) serviceIsAvailable])
  {
    v4 = [MEMORY[0x277D77BF8] sharedManager];
    if ([v4 isMultiUser])
    {
      v5 = [MEMORY[0x277D77BF8] sharedManager];
      v6 = [v5 currentUser];
      if ([v6 inFirstLoginSession])
      {

        goto LABEL_12;
      }

      v17 = [*(a1 + 32) _hasAccount];

      if (!v17)
      {
LABEL_12:
        v13 = csui_log(v7, v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0;
          v15 = "No accounts, sending default request parameters";
          v16 = &v21;
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v9 = [*(a1 + 32) _hasAccount];

      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = [*(a1 + 32) _hasOperationalAccount];
    v11 = v10;
    v13 = csui_log(v10, v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v23 = 0;
        v15 = "Operational account found, sending default parameters to try and refresh the account";
        v16 = &v23;
LABEL_16:
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      }
    }

    else if (v14)
    {
      *v22 = 0;
      v15 = "Found a non-operational account, sending default request parameters";
      v16 = v22;
      goto LABEL_16;
    }

LABEL_17:

    v18 = [*(a1 + 32) _defaultSetupRequestParameters];
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (id)_defaultSetupRequestParameters
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"protocol-version";
  v5[0] = @"4";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)handleLoginResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  mainThread = [MEMORY[0x277CCACC8] mainThread];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke;
  v11[3] = &unk_278DE7EE0;
  v11[4] = self;
  v12 = responseCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = responseCopy;
  [mainThread __im_performBlock:v11];
}

void __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setResponseDictionary:*(a1 + 40)];
  v2 = [*(a1 + 32) setCompletionHandler:*(a1 + 48)];
  v4 = csui_log(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Got setup parameters:", buf, 2u);
  }

  [*(a1 + 40) enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
  v6 = *(a1 + 40);
  if (!v6 || (v6 = [v6 count]) == 0)
  {
    v15 = csui_log(v6, v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) displayName];
      *buf = 138412290;
      v71 = v18;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Received empty setup response. Skipping setup for %@.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = [*(a1 + 32) responseDictionary];
  v8 = [v7 __ftreg_isValidSetupDictionary];

  if (v8)
  {
    v11 = *(a1 + 32);
    v12 = [v11 responseDictionary];
    LODWORD(v11) = [v11 _shouldSkipAccountSetup:v12];

    if (v11)
    {
      v15 = csui_log(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) responseDictionary];
        v17 = [v16 __ftreg_responseAppleID];
        *buf = 138412290;
        v71 = v17;
        _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Skipping setup for %@ because _shouldSkipAccountSetup returned YES.", buf, 0xCu);
      }

LABEL_11:

      [*(a1 + 32) _handleSuccess:1 error:0];
      return;
    }

    v21 = [*(a1 + 32) responseDictionary];
    v22 = [v21 __ftreg_responseIsUpgrade];

    v25 = csui_log(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"NO";
      if (v22)
      {
        v26 = @"YES";
      }

      *buf = 138412290;
      v71 = v26;
      _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Handling setup response [isUpgrade=%@], kicking off account setup", buf, 0xCu);
    }

    v27 = [*(a1 + 32) responseDictionary];
    v28 = [v27 __ftreg_candidateAliases];

    v29 = [v28 count];
    if (v29 > 1)
    {
LABEL_32:
      v43 = csui_log(v29, v30);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v28 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v71 = v44;
        _os_log_impl(&dword_243BE5000, v43, OS_LOG_TYPE_DEFAULT, "We have user-selectable aliases [%@]. Deferring to the setup manager.", buf, 0xCu);
      }

      v45 = +[FTRegAppleIDSetupManager sharedInstance];
      v46 = [*(a1 + 32) responseDictionary];
      [v45 addSetupDictionary:v46 forService:{objc_msgSend(*(a1 + 32), "serviceType")}];

      [*(a1 + 32) _handleSuccess:1 error:0];
      goto LABEL_35;
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v31 = v28;
    v32 = [v31 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v67;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v67 != v34)
          {
            objc_enumerationMutation(v31);
          }

          if ([*(*(&v66 + 1) + 8 * i) _appearsToBePhoneNumber])
          {

            goto LABEL_32;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v36 = [*(a1 + 32) responseDictionary];
    v37 = IDSParseAuthDictionary();

    v38 = [*(a1 + 32) accountController];
    v39 = [v37 objectForKey:*MEMORY[0x277D187C8]];
    v40 = [v39 __imArrayByApplyingBlock:&__block_literal_global_76];

    v41 = [MEMORY[0x277D07DB0] sharedInstance];
    v42 = [v41 supportsSMS];

    if (v42)
    {
      if ([v40 count])
      {
        [v40 arrayByAddingObject:*MEMORY[0x277D18AB8]];
      }

      else
      {
        IMSingleObjectArray();
      }
      v47 = ;

      v40 = v47;
    }

    v48 = [*(a1 + 32) serviceType];
    v49 = MEMORY[0x277D186B0];
    if (v48 != 1)
    {
      v49 = MEMORY[0x277D18698];
    }

    v50 = *v49;
    v51 = [v37 objectForKey:*MEMORY[0x277D187C0]];
    v52 = [v37 objectForKey:*MEMORY[0x277D187D0]];
    v54 = csui_log(v52, v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v71 = v50;
      v72 = 2112;
      v73 = v51;
      v74 = 2112;
      v75 = v52;
      v76 = 2112;
      v77 = v40;
      _os_log_impl(&dword_243BE5000, v54, OS_LOG_TYPE_DEFAULT, " => Setting up service: %@   with apple id: %@  profile id: %@  aliases: %@", buf, 0x2Au);
    }

    v55 = [v38 serviceName];
    v56 = [v38 accountWithLoginID:v51 service:v55];

    v57 = [(__CFString *)v56 isActive];
    if (v57 && (v57 = [(__CFString *)v56 registrationStatus], v57 == 5))
    {
      v59 = csui_log(v57, v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v56;
        v60 = " => Has existing registered account: %@";
        v61 = v59;
        v62 = 12;
LABEL_51:
        _os_log_impl(&dword_243BE5000, v61, OS_LOG_TYPE_DEFAULT, v60, buf, v62);
      }
    }

    else
    {
      v63 = csui_log(v57, v58);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v56;
        _os_log_impl(&dword_243BE5000, v63, OS_LOG_TYPE_DEFAULT, " => Existing account: %@", buf, 0xCu);
      }

      v64 = [(__CFString *)v56 isUserDisabled];
      if (!v64)
      {
        v59 = [v40 __imSetFromArray];
        [v38 setupAccountWithSetupParameters:v37 aliases:v59 completionHandler:&__block_literal_global_87];
        goto LABEL_53;
      }

      v59 = csui_log(v64, v65);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v60 = " => Account was disabled by the user, not setting up...";
        v61 = v59;
        v62 = 2;
        goto LABEL_51;
      }
    }

LABEL_53:

    [*(a1 + 32) _handleSuccess:1 error:0];
LABEL_35:

    return;
  }

  v19 = csui_log(v9, v10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 32) displayName];
    *buf = 138412290;
    v71 = v20;
    _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, "Received incomplete setup response. Failing setup for %@.", buf, 0xCu);
  }

  [*(a1 + 32) _handleFailureWithErrorCode:4000];
}

void __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 isEqual:@"password"];
  v7 = v6;
  v9 = csui_log(v6, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      v11 = "  => password : REDACTED";
      v12 = v9;
      v13 = 2;
LABEL_6:
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }
  }

  else if (v10)
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v11 = "  => %@ : %@";
    v12 = v9;
    v13 = 22;
    goto LABEL_6;
  }
}

id __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke_73(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __62__FTRegAccountServiceDelegate_handleLoginResponse_completion___block_invoke_84(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v7 = csui_log(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a3)
    {
      v8 = @"YES";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Got response from setup operation. Success=%@, error=%@", &v9, 0x16u);
  }
}

- (void)setupOperationFailed
{
  mainThread = [MEMORY[0x277CCACC8] mainThread];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__FTRegAccountServiceDelegate_setupOperationFailed__block_invoke;
  v4[3] = &unk_278DE7E08;
  v4[4] = self;
  [mainThread __im_performBlock:v4 waitUntilDone:0];
}

uint64_t __51__FTRegAccountServiceDelegate_setupOperationFailed__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = csui_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Setup operation failed. Cleaning up.", v5, 2u);
  }

  return [*(a1 + 32) _cleanup];
}

@end