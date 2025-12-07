@interface HFAppleMusicAccountOperations
+ (id)_completeLoginForAccessory:(id)accessory results:(id)results error:(id)error;
+ (id)_validateRemoteLoginHandlerForAccessory:(id)accessory;
+ (id)executeCompanionLoginForAccessory:(id)accessory account:(id)account;
+ (id)executeProxyLoginForAccessory:(id)accessory context:(id)context;
+ (id)logoutAccessories:(id)accessories;
@end

@implementation HFAppleMusicAccountOperations

+ (id)executeCompanionLoginForAccessory:(id)accessory account:(id)account
{
  v31[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  accountCopy = account;
  v9 = accountCopy;
  if (accessoryCopy)
  {
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"account"}];

LABEL_3:
  v10 = +[HFMediaDispatcher sharedDispatcher];
  appleMusicAccountStore = [v10 appleMusicAccountStore];

  v12 = [appleMusicAccountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];
  v13 = [appleMusicAccountStore accountsWithAccountType:v12];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke;
  v28[3] = &unk_277E01230;
  v14 = v9;
  v29 = v14;
  v15 = [v13 na_firstObjectPassingTest:v28];

  v16 = MEMORY[0x277D2C900];
  if (v15)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_2;
    v24[3] = &unk_277DFAC08;
    selfCopy = self;
    v25 = accessoryCopy;
    v26 = v15;
    v17 = [v16 lazyFutureWithBlock:v24];

    v18 = v25;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v30 = @"accessory";
    v31[0] = accessoryCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v20 = [v19 hf_errorWithCode:10 operation:@"AppleMusicProxyLogin" options:v18];
    v17 = [v16 futureWithError:v20];
  }

  return v17;
}

uint64_t __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 aa_altDSID];
  v5 = [v3 aa_altDSID];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 48) _validateRemoteLoginHandlerForAccessory:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_3;
  v7[3] = &unk_277E01258;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  v6 = [v4 addSuccessBlock:v7];
}

void __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 companionLoginWithAccount:v2 completion:v5];
}

+ (id)executeProxyLoginForAccessory:(id)accessory context:(id)context
{
  accessoryCopy = accessory;
  contextCopy = context;
  v9 = contextCopy;
  if (accessoryCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v10 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke;
  v17[3] = &unk_277DFAC08;
  v19 = v9;
  selfCopy = self;
  v18 = accessoryCopy;
  v11 = v9;
  v12 = accessoryCopy;
  v13 = [v10 lazyFutureWithBlock:v17];

  return v13;
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[6] _validateRemoteLoginHandlerForAccessory:a1[4]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_2;
  v9[3] = &unk_277E012A8;
  v10 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  v12 = v3;
  v13 = v6;
  v11 = v5;
  v7 = v3;
  v8 = [v4 addSuccessBlock:v9];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Calling [AKAppleIDAuthenticationController authenticateWithContext:completion:]", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_24;
  v7[3] = &unk_277DFEA80;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [v2 authenticateWithContext:v4 completion:v7];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationController returned with results %@ - error = %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_25;
  block[3] = &unk_277E01280;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v16 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_25(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Now completing Login for Accessory %@ ", buf, 0xCu);
  }

  v4 = [*(a1 + 64) _completeLoginForAccessory:*(a1 + 32) results:*(a1 + 40) error:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_26;
  v6[3] = &unk_277DF70B0;
  v7 = *(a1 + 56);
  v5 = [v4 addCompletionBlock:v6];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "_completeLoginForAccessory returned with result [%@] Error - [%@] ", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithResult:v5 error:v6];
}

+ (id)logoutAccessories:(id)accessories
{
  v50 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  if (![accessoriesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"accessories.count >= 1"}];
  }

  v6 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = accessoriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      remoteLoginHandler = [v12 remoteLoginHandler];
      v14 = remoteLoginHandler;
      if (!remoteLoginHandler)
      {
        break;
      }

      if (([remoteLoginHandler isControllable] & 1) == 0)
      {
        v24 = MEMORY[0x277D2C900];
        v29 = MEMORY[0x277CCA9B8];
        v45[0] = @"accessories";
        v45[1] = @"failedAccessory";
        v46[0] = v7;
        v46[1] = v12;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        v27 = v29;
        v28 = 12;
        goto LABEL_22;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v24 = MEMORY[0x277D2C900];
    v25 = MEMORY[0x277CCA9B8];
    v47[0] = @"accessories";
    v47[1] = @"failedAccessory";
    v48[0] = v7;
    v48[1] = v12;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v27 = v25;
    v28 = 11;
LABEL_22:
    v30 = [v27 hf_errorWithCode:v28 operation:@"AppleMusicLogout" options:v26];
    v23 = [v24 futureWithError:v30];

    goto LABEL_23;
  }

LABEL_12:

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        remoteLoginHandler2 = [*(*(&v36 + 1) + 8 * i) remoteLoginHandler];
        v20 = MEMORY[0x277D2C900];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke;
        v34[3] = &unk_277DF29A0;
        v35 = remoteLoginHandler2;
        v21 = remoteLoginHandler2;
        v22 = [v20 lazyFutureWithBlock:v34];
        [v6 addObject:v22];
      }

      v16 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v16);
  }

  v23 = [MEMORY[0x277D2C900] chainFutures:v6];
LABEL_23:

  return v23;
}

void __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_2;
  v6[3] = &unk_277DF2D08;
  v7 = v3;
  v5 = v3;
  [v4 signout:v6];
}

void __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_3;
  v5[3] = &unk_277DF3370;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 finishWithError:?];
  }

  else
  {
    return [v1 finishWithNoResult];
  }
}

+ (id)_completeLoginForAccessory:(id)accessory results:(id)results error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  resultsCopy = results;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = HFLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = errorCopy;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Returning from _completeLoginForAccessory due to error  = [%@]", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithError:errorCopy];
    goto LABEL_5;
  }

  v13 = [resultsCopy count];
  v14 = MEMORY[0x277D2C900];
  if (!v13)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_5:
    v12 = futureWithNoResult;
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HFAppleMusicAccountOperations__completeLoginForAccessory_results_error___block_invoke;
  v16[3] = &unk_277DF4150;
  v17 = accessoryCopy;
  v18 = resultsCopy;
  v12 = [v14 futureWithErrorOnlyHandlerAdapterBlock:v16];

LABEL_8:

  return v12;
}

void __74__HFAppleMusicAccountOperations__completeLoginForAccessory_results_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Calling  proxyLoginWithAuthResults:", v6, 2u);
  }

  v5 = [*(a1 + 32) remoteLoginHandler];
  [v5 proxyLoginWithAuthResults:*(a1 + 40) completion:v3];
}

+ (id)_validateRemoteLoginHandlerForAccessory:(id)accessory
{
  v19[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  remoteLoginHandler = [accessoryCopy remoteLoginHandler];
  v5 = remoteLoginHandler;
  if (remoteLoginHandler)
  {
    isControllable = [remoteLoginHandler isControllable];
    v7 = MEMORY[0x277D2C900];
    if (isControllable)
    {
      v8 = [MEMORY[0x277D2C900] futureWithResult:v5];
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCA9B8];
    v16 = @"accessory";
    v17 = accessoryCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = v13;
    v12 = 12;
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    v9 = MEMORY[0x277CCA9B8];
    v18 = @"accessory";
    v19[0] = accessoryCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = v9;
    v12 = 11;
  }

  v14 = [v11 hf_errorWithCode:v12 operation:@"AppleMusicProxyLogin" options:v10];
  v8 = [v7 futureWithError:v14];

LABEL_7:

  return v8;
}

@end