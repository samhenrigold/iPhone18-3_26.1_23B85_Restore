@interface ACDAuthenticationPluginManager
+ (id)_sanitizeError:(id)error;
- (ACDAuthenticationPluginManager)initWithAuthenticationPluginLoader:(id)loader;
- (BOOL)_renewalRequestIsWithinLimitsForAccount:(id)account accountStore:(id)store;
- (BOOL)isPushSupportedForAccount:(id)account;
- (id)_authCapableParentAccountForAccount:(id)account;
- (id)_authenticationTypeForAccount:(id)account;
- (id)_descriptionForRenewalResult:(int64_t)result;
- (id)_unsanitizeOptionsDictionary:(id)dictionary;
- (unint64_t)renewalCredentialTimeout;
- (void)_handleDiscoveryCompletionResult:(id)result forAccount:(id)account discoveryID:(id)d accountStore:(id)store shouldSave:(BOOL)save error:(id)error;
- (void)_handleRenewalCompletionResult:(int64_t)result forAccount:(id)account renewalID:(id)d accountStore:(id)store error:(id)error;
- (void)_handleVerificationCompletionForAccount:(id)account verifiedAccount:(id)verifiedAccount error:(id)error store:(id)store shouldSave:(BOOL)save;
- (void)credentialForAccount:(id)account client:(id)client store:(id)store handler:(id)handler;
- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)setRenewalRateLimiter:(id)limiter;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options handler:(id)handler;
@end

@implementation ACDAuthenticationPluginManager

- (ACDAuthenticationPluginManager)initWithAuthenticationPluginLoader:(id)loader
{
  loaderCopy = loader;
  v28.receiver = self;
  v28.super_class = ACDAuthenticationPluginManager;
  v6 = [(ACDAuthenticationPluginManager *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authPluginLoader, loader);
    v8 = objc_alloc_init(ACDQueueDictionary);
    verificationHandlerQueues = v7->_verificationHandlerQueues;
    v7->_verificationHandlerQueues = v8;

    v10 = objc_alloc_init(ACDQueueDictionary);
    renewalHandlerQueues = v7->_renewalHandlerQueues;
    v7->_renewalHandlerQueues = v10;

    v12 = objc_alloc_init(ACDQueueDictionary);
    discoveryHandlerQueues = v7->_discoveryHandlerQueues;
    v7->_discoveryHandlerQueues = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    keysForRateExceededBugSent = v7->_keysForRateExceededBugSent;
    v7->_keysForRateExceededBugSent = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("AuthenticationPluginQueue", v16);
    authenticationPluginQueue = v7->_authenticationPluginQueue;
    v7->_authenticationPluginQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    authenticationPluginsByType = v7->_authenticationPluginsByType;
    v7->_authenticationPluginsByType = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    verificationHandlersLock = v7->_verificationHandlersLock;
    v7->_verificationHandlersLock = v21;

    v23 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    renewalHandlersLock = v7->_renewalHandlersLock;
    v7->_renewalHandlersLock = v23;

    v25 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    discoveryHandlersLock = v7->_discoveryHandlersLock;
    v7->_discoveryHandlersLock = v25;
  }

  return v7;
}

- (BOOL)isPushSupportedForAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = _ACDLogSystem(accountCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager isPushSupportedForAccount:];
  }

  v6 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  v7 = _ACDLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager isPushSupportedForAccount:];
  }

  v8 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:v6];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = [v8 isPushSupportedForAccount:accountCopy];
    v11 = v10;
  }

  else
  {
    v12 = _ACDLogSystem(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = accountCopy;
      _os_log_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEFAULT, "The plugin for account %@ does not implement isPushSupportedForAccount:", &v15, 0xCu);
    }

    v11 = 0;
  }

  v13 = _ACDLogSystem(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager isPushSupportedForAccount:v11];
  }

  return v11;
}

- (void)credentialForAccount:(id)account client:(id)client store:(id)store handler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  clientCopy = client;
  storeCopy = store;
  handlerCopy = handler;
  v14 = _ACDLogSystem(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager credentialForAccount:client:store:handler:];
  }

  v15 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  v16 = _ACDLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager credentialForAccount:client:store:handler:];
  }

  v17 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:v15];
  if (!v17)
  {
    v21 = _ACDLogSystem(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ACDAuthenticationPluginManager credentialForAccount:accountCopy client:? store:? handler:?];
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CB8DC0];
    v24 = -101;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 credentialForAccount:accountCopy client:clientCopy];
    v19 = v18;
    v20 = 0;
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v26 = objc_opt_respondsToSelector();
    if (v26)
    {
      v29 = 0;
      v19 = [v17 credentialForAccount:accountCopy client:clientCopy store:storeCopy error:&v29];
      v25 = v29;
      goto LABEL_16;
    }

    v28 = _ACDLogSystem(v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = accountCopy;
      _os_log_impl(&dword_221D2F000, v28, OS_LOG_TYPE_DEFAULT, "The plugin for account %@ does not implement credentialForAccount", buf, 0xCu);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CB8DC0];
    v24 = -102;
LABEL_11:
    v18 = [v22 errorWithDomain:v23 code:v24 userInfo:0];
    v20 = v18;
    v19 = 0;
    goto LABEL_17;
  }

  v30 = 0;
  v19 = [v17 credentialForAccount:accountCopy client:clientCopy error:&v30];
  v25 = v30;
LABEL_16:
  v18 = v25;
  v20 = v18;
LABEL_17:
  v27 = _ACDLogSystem(v18);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v19;
    v33 = 2112;
    v34 = accountCopy;
    v35 = 2112;
    v36 = clientCopy;
    _os_log_debug_impl(&dword_221D2F000, v27, OS_LOG_TYPE_DEBUG, "Returning credential %@ for account %@ to %@.", buf, 0x20u);
  }

  handlerCopy[2](handlerCopy, v19, v20);
}

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options handler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  aBlock = handler;
  v11 = [(ACDAuthenticationPluginManager *)self _unsanitizeOptionsDictionary:options];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CB90B0]];
  bOOLValue = [v12 BOOLValue];

  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CB9050]];
  bOOLValue2 = [v13 BOOLValue];

  v16 = _ACDLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v42 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    client = [storeCopy client];
    *buf = 138412802;
    v60 = accountCopy;
    v61 = 2112;
    v62 = v42;
    v63 = 2112;
    v64 = client;
    _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "verifyCredentialsForAccount %@ (should save? %@) was called for client %@...", buf, 0x20u);
  }

  if (bOOLValue2)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
  }

  else
  {
    v19 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
    identifier = v19;
  }

  v20 = _ACDLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager verifyCredentialsForAccount:accountStore:options:handler:];
  }

  v21 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:identifier];
  if (v21)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (bOOLValue2)
    {
      v23 = accountCopy;
    }

    else
    {
      v23 = [(ACDAuthenticationPluginManager *)selfCopy _authCapableParentAccountForAccount:accountCopy];
    }

    v31 = v23;
    [(NSLock *)selfCopy->_verificationHandlersLock lock];
    verificationHandlerQueues = selfCopy->_verificationHandlerQueues;
    identifier2 = [v31 identifier];
    v34 = [(ACDQueueDictionary *)verificationHandlerQueues isQueueEmptyForKey:identifier2];
    if ((v34 & 1) == 0)
    {
      v35 = [v11 objectForKeyedSubscript:*MEMORY[0x277CB9048]];
      bOOLValue3 = [v35 BOOLValue];

      if (bOOLValue3)
      {
        v34 = 1;
        goto LABEL_19;
      }

      identifier2 = _ACDLogSystem(v37);
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEBUG))
      {
        [ACDAuthenticationPluginManager verifyCredentialsForAccount:accountStore:options:handler:];
      }
    }

LABEL_19:
    v38 = selfCopy->_verificationHandlerQueues;
    v39 = _Block_copy(aBlock);
    identifier3 = [v31 identifier];
    [(ACDQueueDictionary *)v38 addObject:v39 toQueueForKey:identifier3];

    [(NSLock *)selfCopy->_verificationHandlersLock unlock];
    if (v34)
    {
      authenticationPluginQueue = selfCopy->_authenticationPluginQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke;
      block[3] = &unk_27848C950;
      v49 = accountCopy;
      v50 = v31;
      v55 = a2;
      v51 = v21;
      v52 = selfCopy;
      v53 = storeCopy;
      v56 = bOOLValue;
      v54 = v11;
      dispatch_async(authenticationPluginQueue, block);
    }

    objc_sync_exit(selfCopy);
    goto LABEL_22;
  }

  v24 = _ACDLogSystem(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [ACDAuthenticationPluginManager verifyCredentialsForAccount:accountCopy accountStore:? options:? handler:?];
  }

  v25 = MEMORY[0x277CCACA8];
  accountType2 = [accountCopy accountType];
  identifier4 = [accountType2 identifier];
  selfCopy = [v25 stringWithFormat:@"No auth plugin to verify credentials for accounts of type %@", identifier4];

  v28 = MEMORY[0x277CCA9B8];
  v57 = *MEMORY[0x277CCA450];
  v58 = selfCopy;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v30 = [v28 errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:v29];
  (*(aBlock + 2))(aBlock, 0, v30);

LABEL_22:
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CB8F98];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2;
  v9[3] = &unk_27848C950;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 80);
  v8 = *(a1 + 56);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  v15 = *(a1 + 88);
  v12 = *(a1 + 72);
  v13 = *(a1 + 32);
  [v2 performWithinPersonaForAccount:v3 withBlock:v9];
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_1();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_18;
  aBlock[3] = &unk_27848C928;
  v3 = *(a1 + 40);
  v24 = *(a1 + 80);
  *&v4 = v3;
  *(&v4 + 1) = *(a1 + 48);
  v20 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v22 = v20;
  v23 = v7;
  v25 = *(a1 + 88);
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_respondsToSelector();
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = [*(a1 + 32) copy];
    [v10 verifyCredentialsForAccount:v11 accountStore:*(a1 + 56) options:*(a1 + 64) completion:v8];
  }

  else
  {
    v12 = objc_opt_respondsToSelector();
    v13 = *(a1 + 40);
    if (v12)
    {
      v11 = [*(a1 + 32) copy];
      [v13 verifyCredentialsForAccount:v11 accountStore:*(a1 + 56) completion:v8];
    }

    else
    {
      v14 = objc_opt_respondsToSelector();
      if (v14)
      {
        v15 = *(a1 + 40);
        v11 = [*(a1 + 32) copy];
        v16 = [*(a1 + 56) client];
        [v15 verifyCredentialsForAccount:v11 client:v16 withHandler:v8];
      }

      else
      {
        v17 = _ACDLogSystem(v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_2();
        }

        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:-102 userInfo:0];
        v18 = *(a1 + 48);
        v19 = [*(a1 + 32) copy];
        [v18 _handleVerificationCompletionForAccount:v19 verifiedAccount:0 error:v11 store:*(a1 + 56) shouldSave:0];
      }
    }
  }
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 == 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = a3;
  v9 = a2;
  _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(v5, v8, v6, v7);
  v12 = [v9 accountByCleaningThirdPartyTransformations];

  v10 = [ACDAuthenticationPluginManager _sanitizeError:v8];

  v11 = [v10 ac_secureCodingError];

  [*(a1 + 40) _handleVerificationCompletionForAccount:*(a1 + 48) verifiedAccount:v12 error:v11 store:*(a1 + 56) shouldSave:*(a1 + 72)];
}

- (void)_handleVerificationCompletionForAccount:(id)account verifiedAccount:(id)verifiedAccount error:(id)error store:(id)store shouldSave:(BOOL)save
{
  saveCopy = save;
  v47 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  verifiedAccountCopy = verifiedAccount;
  errorCopy = error;
  storeCopy = store;
  v16 = _ACDLogSystem(storeCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v42 = accountCopy;
    v43 = 2112;
    v44 = verifiedAccountCopy;
    v45 = 2112;
    v46 = errorCopy;
    _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleVerificationCompletion: plugin reports being done for account %@. Verified account is %@ and error is %@", buf, 0x20u);
  }

  if (verifiedAccountCopy)
  {
    v18 = _ACDLogSystem([verifiedAccountCopy setAuthenticated:1]);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (saveCopy)
    {
      if (v19)
      {
        [ACDAuthenticationPluginManager _handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:];
      }

      v39 = 0;
      v20 = [storeCopy saveVerifiedAccount:verifiedAccountCopy error:&v39];
      v21 = v39;
      v22 = _ACDLogSystem(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v34 = [MEMORY[0x277CCABB0] numberWithBool:v20];
        *buf = 138412802;
        v42 = verifiedAccountCopy;
        v43 = 2112;
        v44 = v34;
        v45 = 2112;
        v46 = v21;
        _os_log_debug_impl(&dword_221D2F000, v22, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleVerificationCompletion: saving verified account %@ completed with result %@ and error %@", buf, 0x20u);
      }

      client = [storeCopy client];
      v24 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

      if (v24)
      {
        v17 = [verifiedAccountCopy setCredential:0];
      }
    }

    else
    {
      if (v19)
      {
        [ACDAuthenticationPluginManager _handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:];
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = _ACDLogSystem(v17);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:];
  }

  [(NSLock *)self->_verificationHandlersLock lock];
  verificationHandlerQueues = self->_verificationHandlerQueues;
  identifier = [accountCopy identifier];
  v28 = [(ACDQueueDictionary *)verificationHandlerQueues dequeueAllObjectsInQueueForKey:identifier];

  [(NSLock *)self->_verificationHandlersLock unlock];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v36;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v29);
        }

        (*(*(*(&v35 + 1) + 8 * i) + 16))(*(*(&v35 + 1) + 8 * i));
      }

      v31 = [v29 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v31);
  }
}

- (unint64_t)renewalCredentialTimeout
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.accounts"];
  v4 = [v3 objectForKeyedSubscript:@"renewalCredentialTimeout"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    if ((unsignedIntegerValue - 1) >= 0xE0F)
    {
      v6 = 3600;
    }

    else
    {
      v6 = unsignedIntegerValue;
    }
  }

  else
  {
    v6 = 3600;
  }

  return v6;
}

- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v113 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  val = store;
  aBlock = completion;
  v77 = [(ACDAuthenticationPluginManager *)self _unsanitizeOptionsDictionary:options];
  mEMORY[0x277CB8F78] = [MEMORY[0x277CB8F78] sharedInstance];
  v11 = [mEMORY[0x277CB8F78] valueForManagedDefault:*MEMORY[0x277CB8F08]];
  bOOLValue = [v11 BOOLValue];

  v13 = [v77 objectForKey:*MEMORY[0x277CB90A0]];
  bOOLValue2 = [v13 BOOLValue];

  v14 = [v77 objectForKey:*MEMORY[0x277CB9098]];
  bOOLValue3 = [v14 BOOLValue];

  v16 = [v77 objectForKeyedSubscript:*MEMORY[0x277CB9050]];
  bOOLValue4 = [v16 BOOLValue];

  v72 = [v77 objectForKey:*MEMORY[0x277CB9088]];
  v18 = _ACDLogSystem(v72);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    client = [val client];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue2];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue3];
    *buf = 138413314;
    v104 = accountCopy;
    v105 = 2114;
    v106 = client;
    v107 = 2112;
    v108 = v72;
    v109 = 2114;
    v110 = v20;
    v111 = 2114;
    v112 = v21;
    _os_log_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEFAULT, "renewCredentialsForAccount %@ was called by client %{public}@ with reason %@ shouldForce %{public}@ shouldAvoidUI %{public}@", buf, 0x34u);
  }

  if (bOOLValue4)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
  }

  else
  {
    v23 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
    identifier = v23;
  }

  v24 = _ACDLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager renewCredentialsForAccount:accountStore:options:completion:];
  }

  if (bOOLValue)
  {
    v26 = _ACDLogSystem(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationPluginManager renewCredentialsForAccount:accountStore:options:completion:];
    }

    aBlock[2](aBlock, 1, 0);
  }

  else
  {
    v27 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:identifier];
    if (v27)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v78 = selfCopy;
      if (bOOLValue4)
      {
        v69 = accountCopy;
      }

      else
      {
        v69 = [(ACDAuthenticationPluginManager *)selfCopy _authCapableParentAccountForAccount:accountCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        v37 = [v27 renewalIDsForAccount:v69 accountStore:val options:v77];
      }

      else if (objc_opt_respondsToSelector())
      {
        v38 = [v27 renewalIDForAccount:v69];
        v39 = v38;
        if (v38)
        {
          v100 = v38;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      if (![v37 count])
      {
        identifier2 = [v69 identifier];
        v99 = identifier2;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];

        v37 = v41;
      }

      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v37, "count")}];
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      obj = v37;
      v43 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
      if (v43)
      {
        v44 = *v94;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v94 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v93 + 1) + 8 * i);
            v47 = MEMORY[0x277CCACA8];
            v48 = objc_opt_class();
            v49 = NSStringFromClass(v48);
            v50 = [v47 stringWithFormat:@"%@.%@", v49, v46];

            [v42 addObject:v50];
          }

          v43 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
        }

        while (v43);
      }

      [(NSLock *)v78->_renewalHandlersLock lock];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v51 = v42;
      v52 = [v51 countByEnumeratingWithState:&v89 objects:v97 count:16];
      if (v52)
      {
        v53 = *v90;
        v54 = *MEMORY[0x277CB9048];
LABEL_38:
        v55 = 0;
        while (1)
        {
          if (*v90 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v89 + 1) + 8 * v55);
          if (![(ACDQueueDictionary *)v78->_renewalHandlerQueues isQueueEmptyForKey:v56])
          {
            v57 = [v77 objectForKeyedSubscript:v54];
            bOOLValue5 = [v57 BOOLValue];

            if ((bOOLValue5 & 1) == 0)
            {
              break;
            }
          }

          if (v52 == ++v55)
          {
            v52 = [v51 countByEnumeratingWithState:&v89 objects:v97 count:16];
            if (v52)
            {
              goto LABEL_38;
            }

            goto LABEL_45;
          }
        }

        v60 = v56;

        if (!v60)
        {
          goto LABEL_50;
        }

        v61 = _ACDLogSystem(v59);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v104 = accountCopy;
          v105 = 2112;
          v106 = v60;
          _os_log_impl(&dword_221D2F000, v61, OS_LOG_TYPE_DEFAULT, "It appears we are already renewing credentials for account %@ with renewal ID %@. We will enqueue the current request's completion handler and call it when done.", buf, 0x16u);
        }

        renewalHandlerQueues = v78->_renewalHandlerQueues;
        v63 = _Block_copy(aBlock);
        [(ACDQueueDictionary *)renewalHandlerQueues addObject:v63 toQueueForKey:v60];
        v64 = 0;
        v65 = 0;
      }

      else
      {
LABEL_45:

LABEL_50:
        if ((bOOLValue2 & 1) != 0 || (v59 = [(ACDAuthenticationPluginManager *)v78 _renewalRequestIsWithinLimitsForAccount:accountCopy accountStore:val], v59))
        {
          v66 = _ACDLogSystem(v59);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v104 = accountCopy;
            v105 = 2112;
            v106 = 0;
            _os_log_impl(&dword_221D2F000, v66, OS_LOG_TYPE_DEFAULT, "Allow new renewal for account %@ with renewal ID %@.", buf, 0x16u);
          }

          v60 = [v51 objectAtIndexedSubscript:0];
          v67 = v78->_renewalHandlerQueues;
          v63 = _Block_copy(aBlock);
          [(ACDQueueDictionary *)v67 addObject:v63 toQueueForKey:v60];
          v65 = 0;
          v64 = 1;
        }

        else
        {
          v63 = _ACDLogSystem(v59);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v104 = accountCopy;
            v105 = 2112;
            v106 = 0;
            _os_log_impl(&dword_221D2F000, v63, OS_LOG_TYPE_DEFAULT, "Limit renewal for account %@ with renewal ID %@.", buf, 0x16u);
          }

          v64 = 0;
          v60 = 0;
          v65 = 1;
        }
      }

      [(NSLock *)v78->_renewalHandlersLock unlock];
      if (v65)
      {
        aBlock[2](aBlock, 1, 0);
      }

      else if (v64)
      {
        objc_initWeak(buf, val);
        authenticationPluginQueue = v78->_authenticationPluginQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke;
        block[3] = &unk_27848C9C8;
        v81 = accountCopy;
        v82 = v78;
        v83 = v27;
        v88[1] = a2;
        objc_copyWeak(v88, buf);
        v84 = v69;
        v85 = v60;
        v86 = v77;
        v87 = v72;
        dispatch_async(authenticationPluginQueue, block);

        objc_destroyWeak(v88);
        objc_destroyWeak(buf);
      }

      v33 = v78;
      objc_sync_exit(v78);
    }

    else
    {
      v29 = _ACDLogSystem(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ACDAuthenticationPluginManager renewCredentialsForAccount:accountCopy accountStore:? options:? completion:?];
      }

      v30 = MEMORY[0x277CCACA8];
      accountType2 = [accountCopy accountType];
      identifier3 = [accountType2 identifier];
      v33 = [v30 stringWithFormat:@"No auth plugin to renew credentials for accounts of type %@", identifier3];

      v34 = MEMORY[0x277CCA9B8];
      v101 = *MEMORY[0x277CCA450];
      v102 = v33;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v36 = [v34 errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:v35];
      (aBlock)[2](aBlock, 2, v36);
    }
  }
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CB8F98];
  v3 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2;
  v9[3] = &unk_27848C9C8;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v7 = v6;
  v8 = *(a1 + 96);
  v12 = v7;
  v17[1] = v8;
  objc_copyWeak(v17, (a1 + 88));
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  [v2 performWithinPersonaForAccount:v4 withBlock:v9];

  objc_destroyWeak(v17);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 40) renewalCredentialTimeout];
  v4 = [MEMORY[0x277CB8FB0] expirerWithTimeout:v3];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49;
  v29[3] = &unk_27848C978;
  v5 = v4;
  v30 = v5;
  v31 = *(a1 + 48);
  v32 = v3;
  [v5 scheduleExpiration:v29];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_63;
  v22 = &unk_27848C9A0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 96);
  v23 = v6;
  v28[1] = v7;
  v8 = v5;
  v24 = v8;
  objc_copyWeak(v28, (a1 + 88));
  v25 = *(a1 + 40);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v9 = _Block_copy(&v19);
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) renewCredentialsForAccount:*(a1 + 56) accountStore:WeakRetained options:*(a1 + 72) completion:{v9, v19, v20, v21, v22, v23, v24, v25, v26}];
      goto LABEL_19;
    }

    v13 = objc_opt_respondsToSelector();
    if (v13)
    {
      [*(a1 + 48) renewCredentialsForAccount:*(a1 + 56) accountStore:WeakRetained reason:*(a1 + 80) completion:{v9, v19, v20, v21, v22, v23, v24, v25, v26}];
      goto LABEL_19;
    }

    v11 = _ACDLogSystem(v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_2();
    }

    v12 = -102;
  }

  else
  {
    v11 = _ACDLogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_3();
    }

    v12 = 10002;
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:v12 userInfo:{0, v19, v20, v21, v22, v23, v24, v25, v26}];
  [v8 cancelTimer];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = WeakRetained;
  v18 = *(a1 + 64);
  if (!WeakRetained)
  {
    v17 = [MEMORY[0x277CB8F48] defaultStore];
  }

  [v16 _handleRenewalCompletionResult:2 forAccount:v15 renewalID:v18 accountStore:v17 error:v14];
  if (!WeakRetained)
  {
  }

LABEL_19:
  objc_destroyWeak(v28);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49(uint64_t a1)
{
  v2 = _ACDLogSystem([*(a1 + 32) cancelTimer]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49_cold_1();
  }

  if (ACIsInternal())
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Slow Credential Renewal: %@", *(a1 + 40)];
    [ACDPluginAnalyticsSender openTapToRadarWithAlertTitle:@"Slow Credential Renewal" alertDescription:@"Accounts is tracking issues with slow or stuck credential renewals TTRTitle:please help us out by filing a radar via Tap-To-Radar" TTRDescription:v3, @"I was informed of a slow or hung authentication plugin, please investigate."];
  }
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a2 == 2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8 = a3;
  _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(v5, v8, v6, v7);
  [*(a1 + 40) cancelTimer];
  v9 = [ACDAuthenticationPluginManager _sanitizeError:v8];

  v15 = [v9 ac_secureCodingError];

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = *(a1 + 64);
  if (WeakRetained)
  {
    [v12 _handleRenewalCompletionResult:a2 forAccount:v11 renewalID:v13 accountStore:WeakRetained error:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CB8F48] defaultStore];
    [v12 _handleRenewalCompletionResult:a2 forAccount:v11 renewalID:v13 accountStore:v14 error:v15];
  }
}

- (BOOL)_renewalRequestIsWithinLimitsForAccount:(id)account accountStore:(id)store
{
  v49 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  identifier = [accountCopy identifier];
  v9 = [storeCopy accountWithIdentifier:identifier];

  lastCredentialRenewalRejectionDate = [v9 lastCredentialRenewalRejectionDate];
  if (lastCredentialRenewalRejectionDate && ([MEMORY[0x277CBEAA8] date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", lastCredentialRenewalRejectionDate), v13 = v12, v11, v13 < 86400.0))
  {
    v15 = _ACDLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = accountCopy;
      _os_log_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEFAULT, "The user has declined an identical request to renew credentials for %@ within the past 24 hours. Suppressing the password prompt and failing immediately.", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    client = [storeCopy client];
    bundleID = [client bundleID];
    identifier2 = [accountCopy identifier];
    v21 = DMIsMigrationNeeded();
    v22 = @"NO";
    if (v21)
    {
      v22 = @"YES";
    }

    v15 = [v17 stringWithFormat:@"%@.%@.%@", bundleID, identifier2, v22];

    renewalRateLimiter = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader renewalRateLimiter];
    v16 = [renewalRateLimiter reservePerformActionForKey:v15];

    if ((v16 & 1) == 0)
    {
      v25 = _ACDLogSystem(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        accountType = [accountCopy accountType];
        identifier3 = [accountType identifier];
        v31 = MEMORY[0x277CCABB0];
        renewalRateLimiter2 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader renewalRateLimiter];
        v32 = [v31 numberWithUnsignedInteger:{objc_msgSend(renewalRateLimiter2, "maximum")}];
        v33 = MEMORY[0x277CCABB0];
        renewalRateLimiter3 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader renewalRateLimiter];
        [renewalRateLimiter3 timeInterval];
        v35 = [v33 numberWithDouble:v34 / 60.0];
        *buf = 138544130;
        v42 = v15;
        v43 = 2114;
        v44 = identifier3;
        v45 = 2114;
        v46 = v32;
        v47 = 2114;
        v48 = v35;
        _os_log_error_impl(&dword_221D2F000, v25, OS_LOG_TYPE_ERROR, "%{public}@ (%{public}@) exceeded %{public}@ renewals per %{public}@ minutes -- rejecting", buf, 0x2Au);
      }

      if (([(NSMutableSet *)self->_keysForRateExceededBugSent containsObject:v15]& 1) == 0)
      {
        [accountCopy accountType];
        v26 = v39 = self;
        identifier4 = [v26 identifier];
        client2 = [storeCopy client];
        bundleID2 = [client2 bundleID];
        [ACDAutoBugCapture triggerAutoBugCaptureWithType:0x28353A2D8 subType:0x28353A318 subtypeContext:identifier4 detectedProcess:bundleID2];

        [(NSMutableSet *)v39->_keysForRateExceededBugSent addObject:v15];
      }
    }
  }

  return v16;
}

- (void)_handleRenewalCompletionResult:(int64_t)result forAccount:(id)account renewalID:(id)d accountStore:(id)store error:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  storeCopy = store;
  errorCopy = error;
  v16 = _ACDLogSystem(errorCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v34 = [(ACDAuthenticationPluginManager *)self _descriptionForRenewalResult:result];
    *buf = 138412802;
    v42 = accountCopy;
    v43 = 2112;
    v44 = v34;
    v45 = 2112;
    v46 = errorCopy;
    _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleRenewalCompletion: plugin reports being done for account %@ with result %@ and error %@", buf, 0x20u);
  }

  v17 = errorCopy;
  v18 = v17;
  if (result || v17)
  {
    v20 = v17;
    if (result != 1)
    {
      goto LABEL_16;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [accountCopy setLastCredentialRenewalRejectionDate:date];
  }

  else
  {
    v19 = [accountCopy setAuthenticated:1];
  }

  v22 = _ACDLogSystem(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:];
  }

  v39 = 0;
  v23 = [storeCopy saveVerifiedAccount:accountCopy error:&v39];
  v24 = v39;
  v25 = v24;
  v20 = v18;
  if ((v23 & 1) == 0)
  {
    v26 = _ACDLogSystem(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationPluginManager _handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:];
    }

    v20 = v18;
    if (!v18)
    {
      v20 = v25;
    }
  }

LABEL_16:
  v27 = _ACDLogSystem(v17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:];
  }

  [(NSLock *)self->_renewalHandlersLock lock];
  v28 = [(ACDQueueDictionary *)self->_renewalHandlerQueues dequeueAllObjectsInQueueForKey:dCopy];
  [(NSLock *)self->_renewalHandlersLock unlock];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v36;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v29);
        }

        (*(*(*(&v35 + 1) + 8 * i) + 16))(*(*(&v35 + 1) + 8 * i));
      }

      v31 = [v29 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v31);
  }
}

- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v62[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  aBlock = completion;
  optionsCopy = options;
  v12 = _ACDLogSystem(optionsCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountCopy accountStore:storeCopy options:? completion:?];
  }

  v13 = [(ACDAuthenticationPluginManager *)self _unsanitizeOptionsDictionary:optionsCopy];

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CB9050]];
  bOOLValue = [v14 BOOLValue];

  v16 = *MEMORY[0x277CB9078];
  v17 = [v13 objectForKeyedSubscript:*MEMORY[0x277CB9078]];
  if (v17)
  {
    objectID = [v13 objectForKeyedSubscript:v16];
    bOOLValue2 = [objectID BOOLValue];
  }

  else
  {
    objectID = [accountCopy objectID];
    bOOLValue2 = objectID != 0;
  }

  if (bOOLValue)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
  }

  else
  {
    v21 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
    identifier = v21;
  }

  v22 = _ACDLogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountStore:options:completion:];
  }

  v23 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:identifier];
  if (v23)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (bOOLValue)
    {
      v25 = accountCopy;
    }

    else
    {
      v25 = [(ACDAuthenticationPluginManager *)selfCopy _authCapableParentAccountForAccount:accountCopy];
    }

    v33 = v25;
    v34 = MEMORY[0x277CCACA8];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    identifier2 = [v33 identifier];
    v38 = [v34 stringWithFormat:@"%@.%@", v36, identifier2];

    [(NSLock *)selfCopy->_discoveryHandlersLock lock];
    if (-[ACDQueueDictionary isQueueEmptyForKey:](selfCopy->_discoveryHandlerQueues, "isQueueEmptyForKey:", v38) || ([v13 objectForKeyedSubscript:*MEMORY[0x277CB9048]], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "BOOLValue"), v39, (v40 & 1) != 0))
    {
      v42 = 1;
    }

    else
    {
      v43 = _ACDLogSystem(v41);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountStore:options:completion:];
      }

      v42 = 0;
    }

    discoveryHandlerQueues = selfCopy->_discoveryHandlerQueues;
    v45 = _Block_copy(aBlock);
    [(ACDQueueDictionary *)discoveryHandlerQueues addObject:v45 toQueueForKey:v38];

    [(NSLock *)selfCopy->_discoveryHandlersLock unlock];
    if (v42)
    {
      authenticationPluginQueue = selfCopy->_authenticationPluginQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke;
      block[3] = &unk_27848CA18;
      v52 = accountCopy;
      v53 = v33;
      v59 = a2;
      v54 = v23;
      v55 = selfCopy;
      v56 = v38;
      v57 = storeCopy;
      v60 = bOOLValue2;
      v58 = v13;
      dispatch_async(authenticationPluginQueue, block);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v26 = _ACDLogSystem(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountCopy accountStore:? options:? completion:?];
    }

    v27 = MEMORY[0x277CCACA8];
    accountType2 = [accountCopy accountType];
    identifier3 = [accountType2 identifier];
    selfCopy = [v27 stringWithFormat:@"No auth plugin to discover properties for accounts of type %@", identifier3];

    v30 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA450];
    v62[0] = selfCopy;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v32 = [v30 errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:v31];
    (*(aBlock + 2))(aBlock, 0, v32);
  }
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CB8F98];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2;
  v9[3] = &unk_27848C950;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 88);
  v8 = *(a1 + 56);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 72);
  v15 = *(a1 + 96);
  v13 = *(a1 + 80);
  [v2 performWithinPersonaForAccount:v3 withBlock:v9];
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_1();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_84;
  aBlock[3] = &unk_27848C9F0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v18 = *(a1 + 80);
  *&v5 = v3;
  *(&v5 + 1) = *(a1 + 48);
  v13 = v5;
  v6 = v4;
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v15 = v13;
  v16 = v8;
  v17 = *(a1 + 64);
  v19 = *(a1 + 88);
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    [*(a1 + 40) discoverPropertiesForAccount:*(a1 + 32) accountStore:*(a1 + 64) options:*(a1 + 72) completion:v9];
  }

  else
  {
    v11 = _ACDLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_2();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:-102 userInfo:0];
    [*(a1 + 48) _handleDiscoveryCompletionResult:0 forAccount:*(a1 + 32) discoveryID:*(a1 + 56) accountStore:*(a1 + 64) shouldSave:*(a1 + 88) error:v12];
  }
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 == 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = a3;
  v9 = a2;
  _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(v5, v8, v6, v7);
  v10 = [ACDAuthenticationPluginManager _sanitizeError:v8];

  v11 = [v10 ac_secureCodingError];

  [*(a1 + 40) _handleDiscoveryCompletionResult:v9 forAccount:*(a1 + 48) discoveryID:*(a1 + 56) accountStore:*(a1 + 64) shouldSave:*(a1 + 80) error:v11];
}

- (void)_handleDiscoveryCompletionResult:(id)result forAccount:(id)account discoveryID:(id)d accountStore:(id)store shouldSave:(BOOL)save error:(id)error
{
  saveCopy = save;
  v39 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  accountCopy = account;
  dCopy = d;
  storeCopy = store;
  errorCopy = error;
  v19 = _ACDLogSystem(errorCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:];
  }

  v21 = errorCopy;
  if (!errorCopy)
  {
    v21 = 0;
    if (saveCopy)
    {
      v22 = _ACDLogSystem(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [ACDAuthenticationPluginManager _handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:];
      }

      v37 = 0;
      v23 = [storeCopy saveVerifiedAccount:accountCopy error:&v37];
      v24 = v37;
      v25 = v24;
      v21 = 0;
      if ((v23 & 1) == 0)
      {
        v26 = _ACDLogSystem(v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ACDAuthenticationPluginManager _handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:];
        }

        v21 = v25;
      }
    }
  }

  [(NSLock *)self->_discoveryHandlersLock lock];
  v27 = [(ACDQueueDictionary *)self->_discoveryHandlerQueues dequeueAllObjectsInQueueForKey:dCopy];
  [(NSLock *)self->_discoveryHandlersLock unlock];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v34;
    do
    {
      v32 = 0;
      do
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v28);
        }

        (*(*(*(&v33 + 1) + 8 * v32) + 16))(*(*(&v33 + 1) + 8 * v32));
        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v30);
  }
}

- (id)_authenticationTypeForAccount:(id)account
{
  accountCopy = account;
  authenticationType = [accountCopy authenticationType];
  v6 = *MEMORY[0x277CB90B8];
  v7 = [authenticationType isEqualToString:*MEMORY[0x277CB90B8]];
  if (v7)
  {
    v8 = _ACDLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACDAuthenticationPluginManager _authenticationTypeForAccount:];
    }

    accountType2 = objc_alloc_init(MEMORY[0x277CB8F48]);
    parentAccountIdentifier = [accountCopy parentAccountIdentifier];
    v11 = [accountType2 accountWithIdentifier:parentAccountIdentifier];

    authenticationType2 = [v11 authenticationType];
    v13 = [authenticationType2 isEqualToString:v6];
    if (v13)
    {
      v14 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:v11];
    }

    else
    {
      v18 = _ACDLogSystem(v13);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (!authenticationType2)
      {
        if (v19)
        {
          [ACDAuthenticationPluginManager _authenticationTypeForAccount:v11];
        }

        accountType = [v11 accountType];
        identifier = [accountType identifier];

        goto LABEL_15;
      }

      if (v19)
      {
        [ACDAuthenticationPluginManager _authenticationTypeForAccount:];
      }

      v14 = authenticationType2;
    }

    identifier = v14;
LABEL_15:

LABEL_19:
    goto LABEL_20;
  }

  v15 = _ACDLogSystem(v7);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (!authenticationType)
  {
    if (v16)
    {
      [ACDAuthenticationPluginManager _authenticationTypeForAccount:accountCopy];
    }

    accountType2 = [accountCopy accountType];
    identifier = [accountType2 identifier];
    goto LABEL_19;
  }

  if (v16)
  {
    [ACDAuthenticationPluginManager _authenticationTypeForAccount:];
  }

  identifier = authenticationType;
LABEL_20:

  return identifier;
}

- (id)_authCapableParentAccountForAccount:(id)account
{
  accountCopy = account;
  authenticationType = [accountCopy authenticationType];
  v5 = *MEMORY[0x277CB90B8];
  v6 = [authenticationType isEqualToString:*MEMORY[0x277CB90B8]];

  parentAccount = accountCopy;
  if (v6)
  {
    v8 = accountCopy;
    do
    {
      parentAccount = [v8 parentAccount];

      authenticationType2 = [parentAccount authenticationType];
      v10 = [authenticationType2 isEqualToString:v5];

      v8 = parentAccount;
    }

    while ((v10 & 1) != 0);
  }

  return parentAccount;
}

- (id)_descriptionForRenewalResult:(int64_t)result
{
  if (result > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27848CA60[result];
  }
}

+ (id)_sanitizeError:(id)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = *MEMORY[0x277CCA738];
  v6 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (v6)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo mutableCopy];

    userInfo2 = [errorCopy userInfo];
    v10 = *MEMORY[0x277CCA750];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA750]];

    if (v11)
    {
      TypeID = SecTrustGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        [v8 setObject:0 forKeyedSubscript:v10];
        v13 = SecTrustSerialize();
        [v8 setObject:v13 forKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey_AC_SANITIZED"];
      }
    }

    v14 = [v8 objectForKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    v15 = v14;
    if (v14)
    {
      v33 = @"c";
      v34[0] = v14;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v17 = serializeSecCertificates();
      [v8 setObject:v17 forKeyedSubscript:@"NSErrorPeerCertificateChainKey_AC_SANITIZED"];

      [v8 setObject:0 forKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    }

    v18 = [v8 objectForKeyedSubscript:@"NSErrorClientCertificateChainKey"];
    v19 = v18;
    if (v18)
    {
      v31 = @"c";
      v32 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = serializeSecCertificates();
      [v8 setObject:v21 forKeyedSubscript:@"NSErrorClientCertificateChainKey_AC_SANITIZED"];

      [v8 setObject:0 forKeyedSubscript:@"NSErrorClientCertificateChainKey"];
    }

    [v8 removeObjectForKey:*MEMORY[0x277CCA7E8]];
    userInfo3 = [errorCopy userInfo];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke;
    v29 = &unk_27848CA40;
    v30 = v8;
    v23 = v8;
    [userInfo3 enumerateKeysAndObjectsUsingBlock:&v26];

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:objc_msgSend(errorCopy userInfo:{"code", v26, v27, v28, v29), v23}];
  }

  else
  {
    v24 = errorCopy;
  }

  return v24;
}

void __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 conformsToProtocol:&unk_283547950];
  if ((v6 & 1) == 0)
  {
    v7 = _ACDLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke_cold_1();
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }
}

- (id)_unsanitizeOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = *MEMORY[0x277CB8FD8];
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CB8FD8]];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    v7 = unserializeSecCertificates();
    [v6 setObject:v7 forKeyedSubscript:v4];
  }

  else
  {
    v6 = dictionaryCopy;
  }

  return v6;
}

- (void)setRenewalRateLimiter:(id)limiter
{
  if (limiter)
  {
    authPluginLoader = self->_authPluginLoader;

    [(ACDAuthenticationPluginLoader *)authPluginLoader setRenewalRateLimiter:?];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CB8FA0]) initWithMaximum:60 inTimeInterval:3600.0];
    [(ACDAuthenticationPluginLoader *)self->_authPluginLoader setRenewalRateLimiter:v5];
  }
}

- (void)isPushSupportedForAccount:(char)a1 .cold.3(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)credentialForAccount:(void *)a1 client:store:handler:.cold.3(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)verifyCredentialsForAccount:(void *)a1 accountStore:options:handler:.cold.3(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1(&dword_221D2F000, v3, v4, "No auth plugin to verify credentials for accounts of type %@, bailing!", v5, v6, v7, v8);
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Plugin started on queue, will authenticate account %@", v2, v3, v4, v5);
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)renewCredentialsForAccount:(void *)a1 accountStore:options:completion:.cold.2(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1(&dword_221D2F000, v3, v4, "No auth plugin to renew credentials for accounts of type %@, bailing!", v5, v6, v7, v8);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Plugin started on queue, will renew credentials for %@", v2, v3, v4, v5);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49_cold_1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleRenewalCompletion failed to save account: %@ error: %@");
}

- (void)discoverPropertiesForAccount:(uint64_t)a1 accountStore:(void *)a2 options:completion:.cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 client];
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)discoverPropertiesForAccount:(void *)a1 accountStore:options:completion:.cold.4(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1(&dword_221D2F000, v3, v4, "No auth plugin to discover properties for accounts of type %@, bailing!", v5, v6, v7, v8);
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Plugin started on queue, will discover settings for %@", v2, v3, v4, v5);
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_2();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleDiscoveryCompletion: plugin reports being done for account %@ with error %@", v1, 0x16u);
}

- (void)_handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleDiscoveryCompletion failed to save account: %@ error: %@");
}

- (void)_authenticationTypeForAccount:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_authenticationTypeForAccount:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end