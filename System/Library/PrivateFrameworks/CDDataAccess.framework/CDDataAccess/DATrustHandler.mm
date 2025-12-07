@interface DATrustHandler
- (BOOL)handleTrustChallenge:(id)challenge forAccount:(id)account completionHandler:(id)handler;
- (BOOL)haveWarnedAboutCert:(id)cert forHost:(id)host;
- (BOOL)resetCertWarnings;
- (DATrustHandler)initWithDelegate:(id)delegate;
- (DATrustHandlerDelegate)delegate;
- (id)_serverSuffixesToAlwaysFail;
- (int)_actionForTrust:(__SecTrust *)trust host:(id)host service:(id)service;
- (void)handleTrust:(__SecTrust *)trust forHost:(id)host forAccount:(id)account withCompletionBlock:(id)block;
- (void)setHaveWarnedAboutCert:(id)cert forHost:(id)host;
@end

@implementation DATrustHandler

- (DATrustHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DATrustHandler;
  v5 = [(DATrustHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)haveWarnedAboutCert:(id)cert forHost:(id)host
{
  hostCopy = host;
  v7 = [(NSMutableDictionary *)self->_haveWarnedAboutCertDict objectForKeyedSubscript:cert];
  v8 = v7;
  if (hostCopy)
  {
    v9 = [v7 containsObject:hostCopy];
  }

  else
  {
    v9 = v7 != 0;
  }

  return v9;
}

- (void)setHaveWarnedAboutCert:(id)cert forHost:(id)host
{
  certCopy = cert;
  hostCopy = host;
  haveWarnedAboutCertDict = self->_haveWarnedAboutCertDict;
  if (!haveWarnedAboutCertDict)
  {
    v8 = objc_opt_new();
    v9 = self->_haveWarnedAboutCertDict;
    self->_haveWarnedAboutCertDict = v8;

    haveWarnedAboutCertDict = self->_haveWarnedAboutCertDict;
  }

  v10 = [(NSMutableDictionary *)haveWarnedAboutCertDict objectForKeyedSubscript:certCopy];
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_haveWarnedAboutCertDict setObject:v10 forKeyedSubscript:certCopy];
  }

  if (hostCopy)
  {
    [v10 addObject:hostCopy];
  }
}

- (BOOL)resetCertWarnings
{
  haveWarnedAboutCertDict = self->_haveWarnedAboutCertDict;
  self->_haveWarnedAboutCertDict = 0;

  return 1;
}

- (int)_actionForTrust:(__SecTrust *)trust host:(id)host service:(id)service
{
  hostCopy = host;
  serviceCopy = service;
  if (trust)
  {
    defaultTrustManager = [MEMORY[0x277CF9710] defaultTrustManager];
    v11 = [defaultTrustManager actionForTrust:trust forHost:hostCopy andService:serviceCopy];

    if (v11 == 2)
    {
      if (SecTrustGetCertificateCount(trust))
      {
        SecTrustGetCertificateAtIndex(trust, 0);
        v12 = SecCertificateGetSHA1Digest();
        if (v12)
        {
          delegate = [(DATrustHandler *)self delegate];
          v14 = [delegate exceptionsForDigest:v12];

          if (v14)
          {
            v15 = SecTrustCopyExceptions(trust);
            if (v15)
            {
              v16 = v15;
              if (CFEqual(v14, v15))
              {
                v11 = 2;
              }

              else
              {
                defaultTrustManager2 = [MEMORY[0x277CF9710] defaultTrustManager];
                [defaultTrustManager2 allowTrust:trust forHost:hostCopy service:serviceCopy];

                delegate2 = [(DATrustHandler *)self delegate];
                [delegate2 setExceptions:0 forDigest:v12];

                v11 = 1;
              }

              CFRelease(v16);
              goto LABEL_12;
            }
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v11 = 2;
LABEL_12:
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_serverSuffixesToAlwaysFail
{
  if (_serverSuffixesToAlwaysFail_onceToken != -1)
  {
    [DATrustHandler _serverSuffixesToAlwaysFail];
  }

  v3 = _serverSuffixesToAlwaysFail__sServerSuffixes;

  return v3;
}

uint64_t __45__DATrustHandler__serverSuffixesToAlwaysFail__block_invoke()
{
  _serverSuffixesToAlwaysFail__sServerSuffixes = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@".me.com", @".icloud.com", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)handleTrust:(__SecTrust *)trust forHost:(id)host forAccount:(id)account withCompletionBlock:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  accountCopy = account;
  blockCopy = block;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277CF3AF0];
  v13 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 0;
    _os_log_impl(&dword_24244C000, v11, v13, "Checking to see if we should trust the server certificate", buf, 2u);
  }

  v14 = *MEMORY[0x277CF9718];
  if (!trust)
  {
    v15 = DALoggingwithCategory();
    v21 = *(v12 + 3);
    if (os_log_type_enabled(v15, *(v12 + 3)))
    {
      *buf = 138412290;
      *&buf[4] = hostCopy;
      _os_log_impl(&dword_24244C000, v15, v21, "Terminating connection because server does not have an SSL certificate. Host: %@", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_26;
  }

  v15 = [accountCopy accountPropertyForKey:@"DAAccountUseTrustedSSLCertificate"];
  defaultTrustManager = [MEMORY[0x277CF9710] defaultTrustManager];
  v17 = [defaultTrustManager rawTrustResultForSSLTrust:trust hostname:hostCopy service:v14];

  if (v17 == 1)
  {
    goto LABEL_11;
  }

  if (v17 != 5)
  {
    if (v17 != 4)
    {
      v19 = DALoggingwithCategory();
      if (os_log_type_enabled(v19, v13))
      {
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(&dword_24244C000, v19, v13, "Got SecTrustEvaluate result %u. Denying.", buf, 8u);
      }

      v20 = 0;
      goto LABEL_25;
    }

    if (([v15 BOOLValue]& 1) == 0)
    {
      v18 = DALoggingwithCategory();
      if (os_log_type_enabled(v18, v13))
      {
        *buf = 138412546;
        *&buf[4] = @"DAAccountUseTrustedSSLCertificate";
        *&buf[12] = 2112;
        *&buf[14] = accountCopy;
        _os_log_impl(&dword_24244C000, v18, v13, "Account now requires trusted certificate. Setting %@ to YES for account: %@", buf, 0x16u);
      }

      [accountCopy setAccountProperty:MEMORY[0x277CBEC38] forKey:@"DAAccountUseTrustedSSLCertificate"];
      [accountCopy updateExistingAccountProperties];
    }

LABEL_11:
    v19 = DALoggingwithCategory();
    if (os_log_type_enabled(v19, v13))
    {
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&dword_24244C000, v19, v13, "Got SecTrustEvaluate result %u. Allowing.", buf, 8u);
    }

    v20 = 1;
LABEL_25:

LABEL_26:
    v29 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v58 = 1;
LABEL_27:
    blockCopy[2](blockCopy, v20);
    goto LABEL_28;
  }

  v22 = DALoggingwithCategory();
  if (os_log_type_enabled(v22, v13))
  {
    *buf = 67109120;
    *&buf[4] = 5;
    _os_log_impl(&dword_24244C000, v22, v13, "Got SecTrustEvaluate result %u. Checking if needing to prompt.", buf, 8u);
  }

  bOOLValue = [v15 BOOLValue];
  v23 = DALoggingwithCategory();
  v24 = v23;
  if (bOOLValue)
  {
    v25 = *(v12 + 3);
    if (os_log_type_enabled(v23, v25))
    {
      *buf = 138412290;
      *&buf[4] = accountCopy;
      v26 = "Terminating connection and warning user about an untrusted SSL certificate. The account requires trusted SSL certificate. Account: %@";
      v27 = v24;
      v28 = v25;
LABEL_31:
      _os_log_impl(&dword_24244C000, v27, v28, v26, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v23, v13))
  {
    *buf = 138412290;
    *&buf[4] = accountCopy;
    v26 = "Account does not require trusted certificate. Prompting user. Account: %@";
    v27 = v24;
    v28 = v13;
    goto LABEL_31;
  }

  if (SecTrustGetCertificateCount(trust) && (SecTrustGetCertificateAtIndex(trust, 0), (v30 = SecCertificateGetSHA1Digest()) != 0))
  {
    v29 = v30;
    v31 = [(DATrustHandler *)self haveWarnedAboutCert:v30 forHost:hostCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v58 = 1;
    if (v31)
    {
LABEL_47:
      v20 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v29 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v58 = 1;
  }

  if (([MEMORY[0x277CF3AC8] promptForAllCerts] & 1) == 0)
  {
    lowercaseString = [hostCopy lowercaseString];
    _serverSuffixesToAlwaysFail = [(DATrustHandler *)self _serverSuffixesToAlwaysFail];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke;
    v52[3] = &unk_278D4C878;
    v34 = lowercaseString;
    v53 = v34;
    v54 = buf;
    [_serverSuffixesToAlwaysFail enumerateObjectsUsingBlock:v52];
  }

  if (!*(*&buf[8] + 24))
  {
    v40 = DALoggingwithCategory();
    v41 = *(v12 + 4);
    if (os_log_type_enabled(v40, v41))
    {
      *v55 = 138412290;
      v56 = hostCopy;
      _os_log_impl(&dword_24244C000, v40, v41, "IT'S A TARP!!! We received an untrusted cert for %@. You really think we're going to fall for that?", v55, 0xCu);
    }

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v35 = DALoggingwithCategory();
  if (os_log_type_enabled(v35, v13))
  {
    *v55 = 138412290;
    v56 = hostCopy;
    _os_log_impl(&dword_24244C000, v35, v13, "prompting certificate for host: %@", v55, 0xCu);
  }

  v36 = objc_opt_new();
  [v36 setTrust:trust];
  [v36 setHost:hostCopy];
  [v36 setService:v14];
  delegate = [(DATrustHandler *)self delegate];
  accountDescription = [delegate accountDescription];
  [v36 setConnectionDisplayName:accountDescription];

  if (bOOLValue)
  {
    v39 = objc_opt_new();
    [v39 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CF9738]];
  }

  else
  {
    v39 = 0;
  }

  CFRetain(trust);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_11;
  v45[3] = &unk_278D4C8C8;
  v29 = v29;
  v46 = v29;
  selfCopy = self;
  v48 = hostCopy;
  trustCopy = trust;
  v49 = v14;
  v50 = blockCopy;
  [v36 showPromptWithOptions:v39 responseBlock:v45];

LABEL_28:
  _Block_object_dispose(buf, 8);
}

void __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([*(a1 + 32) hasSuffix:?] & 1) != 0 || (v5 = *(a1 + 32), objc_msgSend(v7, "substringFromIndex:", 1), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "isEqualToString:", v6), v6, v5))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_11(uint64_t a1, int a2)
{
  v4 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_2;
  block[3] = &unk_278D4C8A0;
  v15 = a2;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v9 = v5;
  v6 = *(a1 + 48);
  v14 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  dispatch_async(v4, block);
}

uint64_t __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 80);
    v10[0] = 67109120;
    v10[1] = v5;
    _os_log_impl(&dword_24244C000, v3, v4, "got prompt response %d", v10, 8u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    [*(a1 + 40) setHaveWarnedAboutCert:v6 forHost:*(a1 + 48)];
  }

  if (*(a1 + 80) == 2)
  {
    v7 = [MEMORY[0x277CF9710] defaultTrustManager];
    [v7 allowTrust:*(a1 + 72) forHost:*(a1 + 48) service:*(a1 + 56)];
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  return (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 80) != 0);
}

- (BOOL)handleTrustChallenge:(id)challenge forAccount:(id)account completionHandler:(id)handler
{
  challengeCopy = challenge;
  accountCopy = account;
  handlerCopy = handler;
  if (handleTrustChallenge_forAccount_completionHandler__onceToken != -1)
  {
    [DATrustHandler handleTrustChallenge:forAccount:completionHandler:];
  }

  delegate = [(DATrustHandler *)self delegate];
  persistentUUID = [delegate persistentUUID];

  v13 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v13 dropPowerAssertionsForGroupIdentifier:persistentUUID];

  v14 = handleTrustChallenge_forAccount_completionHandler__sTrustChallengeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_2;
  block[3] = &unk_278D4C918;
  v21 = challengeCopy;
  selfCopy = self;
  v23 = accountCopy;
  v24 = persistentUUID;
  v25 = handlerCopy;
  v15 = handlerCopy;
  v16 = persistentUUID;
  v17 = accountCopy;
  v18 = challengeCopy;
  dispatch_async(v14, block);

  return 0;
}

uint64_t __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.dataaccess.trustChallengeQueue", v0);
  v2 = handleTrustChallenge_forAccount_completionHandler__sTrustChallengeQueue;
  handleTrustChallenge_forAccount_completionHandler__sTrustChallengeQueue = v1;

  handleTrustChallenge_forAccount_completionHandler__outstandingTrustChallengeLock = dispatch_semaphore_create(1);

  return MEMORY[0x2821F96F8]();
}

void __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24244C000, v3, v4, "Grabbing trust challenge lock...", buf, 2u);
  }

  dispatch_semaphore_wait(handleTrustChallenge_forAccount_completionHandler__outstandingTrustChallengeLock, 0xFFFFFFFFFFFFFFFFLL);
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24244C000, v5, v4, "Lock acquired. Checking trust.", buf, 2u);
  }

  v6 = [*(a1 + 32) protectionSpace];
  v7 = [v6 host];

  v8 = [*(a1 + 32) protectionSpace];
  v9 = [v8 serverTrust];

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_17;
  v12[3] = &unk_278D4C8F0;
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v15 = *(a1 + 64);
  [v10 handleTrust:v9 forHost:v7 forAccount:v11 withCompletionBlock:v12];
}

void __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_17(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v4 reattainPowerAssertionsForGroupIdentifier:*(a1 + 32)];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = @"Not ";
    if (a2)
    {
      v7 = &stru_2854B2770;
    }

    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_24244C000, v5, v6, "%@Continuing connection", &v14, 0xCu);
  }

  dispatch_semaphore_signal(handleTrustChallenge_forAccount_completionHandler__outstandingTrustChallengeLock);
  if (a2)
  {
    v8 = objc_alloc(MEMORY[0x277CBAB80]);
    v9 = [*(a1 + 40) protectionSpace];
    v10 = [v8 initWithTrust:{objc_msgSend(v9, "serverTrust")}];

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v10);
    }

    else
    {
      v13 = [*(a1 + 40) sender];
      [v13 useCredential:v10 forAuthenticationChallenge:*(a1 + 40)];
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 1, 0);
      return;
    }

    v10 = [*(a1 + 40) sender];
    [v10 continueWithoutCredentialForAuthenticationChallenge:*(a1 + 40)];
  }
}

- (DATrustHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end