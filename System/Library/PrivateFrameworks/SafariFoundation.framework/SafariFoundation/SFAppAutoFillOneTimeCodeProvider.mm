@interface SFAppAutoFillOneTimeCodeProvider
+ (BOOL)enableCodesFromNotifications;
+ (void)setEnableCodesFromNotifications:(BOOL)notifications;
+ (void)setUseUserNotificationsOneTimeCodeSupport:(BOOL)support;
- (BOOL)_appWithAppIdentifierIsWebBrowser:(id)browser;
- (BOOL)isOneTimeCodeAutoDeletionEnabled;
- (SFAppAutoFillOneTimeCodeProvider)initWithOptions:(unint64_t)options;
- (id)_associatedDomainEntriesForAppWithIdentifier:(id)identifier;
- (id)_mostRecentlyReceivedOneTimeCode;
- (id)_orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:(id)source;
- (id)_savedAccountsWithPasswordsForURL:(id)l inContext:(id)context;
- (id)_secureURLWithDomain:(id)domain;
- (id)_sortedOneTimeCodesFromSavedAccounts:(id)accounts context:(id)context;
- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)ls fieldClassification:(int64_t)classification;
- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)ls fieldClassification:(int64_t)classification inContext:(id)context;
- (id)currentOneTimeCodesWithAppIdentifier:(id)identifier website:(id)website usernameHint:(id)hint fieldClassification:(int64_t)classification;
- (id)currentOneTimeCodesWithAuditToken:(id *)token website:(id)website usernameHint:(id)hint fieldClassification:(int64_t)classification;
- (int64_t)_domainBindingForRecievedOneTimeCode:(id)code forAppWithIdentifier:(id)identifier websiteURL:(id)l hasDomainBinding:(BOOL *)binding;
- (int64_t)_url:(id)_url matchesURLFromOriginBoundCode:(id)code;
- (void)_consumeOneTimeCode:(id)code;
- (void)_fetchOneTimeCodeAutoDeletionPreference;
- (void)_notifyOneTimeCodeObserver;
- (void)_processOneTimeCodeFromMail:(id)mail withTimestamp:(id)timestamp andMessageID:(int64_t)d;
- (void)_processOneTimeCodeFromMessages:(id)messages;
- (void)_processReceivedOneTimeCode:(id)code fromSource:(int64_t)source;
- (void)_startGeneratorTimer;
- (void)_stopGeneratorTimer;
- (void)_validateCurrentOneTimeCodes;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer forOneTimeCode:(id)code;
- (void)consumeCurrentOneTimeCode;
- (void)consumeMessagesOneTimeCodeWithGUID:(id)d;
- (void)consumeOneTimeCode:(id)code;
- (void)oneTimeCodeClient:(id)client detectedOneTimeCodes:(id)codes;
- (void)removeObserver:(id)observer;
- (void)removeObserverForOneTimeCode:(id)code;
- (void)setIsOneTimeCodeAutoDeletionEnabled:(BOOL)enabled;
- (void)test_deliverOneTimeCode:(id)code fromSource:(int64_t)source;
@end

@implementation SFAppAutoFillOneTimeCodeProvider

- (SFAppAutoFillOneTimeCodeProvider)initWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = SFAppAutoFillOneTimeCodeProvider;
  v4 = [(SFAppAutoFillOneTimeCodeProvider *)&v28 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = dispatch_queue_create("com.apple.SafariFoundation.SFAppAutoFillOneTimeCodeProvider.internal", 0);
    internalQueue = v4->_internalQueue;
    v4->_internalQueue = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentReceivedOneTimeCodesBySource = v4->_currentReceivedOneTimeCodesBySource;
    v4->_currentReceivedOneTimeCodesBySource = dictionary;

    if ((optionsCopy & 1) == 0)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v9 = getIMOneTimeCodeAcceleratorClass_softClass;
      v37 = getIMOneTimeCodeAcceleratorClass_softClass;
      if (!getIMOneTimeCodeAcceleratorClass_softClass)
      {
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __getIMOneTimeCodeAcceleratorClass_block_invoke;
        v32 = &unk_279B61628;
        v33 = &v34;
        __getIMOneTimeCodeAcceleratorClass_block_invoke(&v29);
        v9 = v35[3];
      }

      v10 = v9;
      _Block_object_dispose(&v34, 8);
      v11 = [v9 alloc];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke;
      v25[3] = &unk_279B61200;
      objc_copyWeak(&v26, &location);
      v12 = [v11 initWithBlockForUpdates:v25];
      messagesOneTimeCodeAccelerator = v4->_messagesOneTimeCodeAccelerator;
      v4->_messagesOneTimeCodeAccelerator = v12;

      [(SFAppAutoFillOneTimeCodeProvider *)v4 _fetchOneTimeCodeAutoDeletionPreference];
      objc_destroyWeak(&v26);
    }

    if ((optionsCopy & 2) == 0)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v14 = getEMOneTimeCodeAcceleratorClass_softClass;
      v37 = getEMOneTimeCodeAcceleratorClass_softClass;
      if (!getEMOneTimeCodeAcceleratorClass_softClass)
      {
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __getEMOneTimeCodeAcceleratorClass_block_invoke;
        v32 = &unk_279B61628;
        v33 = &v34;
        __getEMOneTimeCodeAcceleratorClass_block_invoke(&v29);
        v14 = v35[3];
      }

      v15 = v14;
      _Block_object_dispose(&v34, 8);
      v16 = [v14 alloc];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_3;
      v23[3] = &unk_279B61250;
      objc_copyWeak(&v24, &location);
      v17 = [v16 initWithUpdateBlock:v23];
      mailOneTimeCodeAccelerator = v4->_mailOneTimeCodeAccelerator;
      v4->_mailOneTimeCodeAccelerator = v17;

      objc_destroyWeak(&v24);
    }

    if ([objc_opt_class() enableCodesFromNotifications])
    {
      if ([objc_opt_class() useUserNotificationsOneTimeCodeSupport])
      {
        getUNOneTimeCodeClientClass();
        if (objc_opt_respondsToSelector())
        {
          currentClient = [getUNOneTimeCodeClientClass() currentClient];
          notificationsOneTimeCodeClient = v4->_notificationsOneTimeCodeClient;
          v4->_notificationsOneTimeCodeClient = currentClient;

          [(UNOneTimeCodeClient *)v4->_notificationsOneTimeCodeClient addObserver:v4];
        }
      }
    }

    v21 = v4;
    objc_destroyWeak(&location);
  }

  return v4;
}

void __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_2;
    v7[3] = &unk_279B611D8;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  [v1 _processOneTimeCodeFromMessages:v2];
}

void __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_4;
    v12[3] = &unk_279B61228;
    v13 = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = a4;
    dispatch_async(v11, v12);
  }
}

- (id)currentOneTimeCodesWithAuditToken:(id *)token website:(id)website usernameHint:(id)hint fieldClassification:(int64_t)classification
{
  websiteCopy = website;
  hintCopy = hint;
  v24 = *token;
  v13 = WBSApplicationIdentifierFromAuditToken();
  if (!v13)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SFAppAutoFillOneTimeCodeProvider *)v14 currentOneTimeCodesWithAuditToken:v15 website:v16 usernameHint:v17 fieldClassification:v18, v19, v20, v21];
    }
  }

  v22 = [(SFAppAutoFillOneTimeCodeProvider *)self currentOneTimeCodesWithAppIdentifier:v13 website:websiteCopy usernameHint:hintCopy fieldClassification:classification, *v24.var0, *&v24.var0[4]];

  return v22;
}

- (id)currentOneTimeCodesWithAppIdentifier:(id)identifier website:(id)website usernameHint:(id)hint fieldClassification:(int64_t)classification
{
  identifierCopy = identifier;
  websiteCopy = website;
  hintCopy = hint;
  array = [MEMORY[0x277CBEB18] array];
  internalQueue = self->_internalQueue;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke;
  v24 = &unk_279B612F0;
  selfCopy = self;
  v26 = identifierCopy;
  v27 = websiteCopy;
  v28 = array;
  v29 = hintCopy;
  classificationCopy = classification;
  v15 = hintCopy;
  v16 = array;
  v17 = websiteCopy;
  v18 = identifierCopy;
  dispatch_sync(internalQueue, &v21);
  v19 = [v16 copy];

  return v19;
}

void __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2;
  activity_block[3] = &unk_279B612F0;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v9 = v7;
  v10 = v5;
  v6 = *(a1 + 64);
  v12 = *(a1 + 72);
  v11 = v6;
  _os_activity_initiate(&dword_26450F000, "Retrieving Current One-Time Codes for App", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _validateCurrentOneTimeCodes];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_3;
  v39[3] = &unk_279B61278;
  v39[4] = v3;
  v40 = v2;
  v41 = *(a1 + 48);
  v42 = &v44;
  v43 = &v48;
  v5 = [v4 safari_mapAndFilterKeysAndObjectsUsingBlock:v39];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) _orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:v5];
  [v6 addObjectsFromArray:v7];

  if (*(v45 + 24) != 1 || (v49[3] & 1) == 0)
  {
    v8 = [*(a1 + 56) count];
    if (v8)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXAutoFill(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26450F000, v10, OS_LOG_TYPE_INFO, "Will return at least the currently available one-time code.", buf, 2u);
      }
    }

    v11 = +[SFAutoFillFeatureManager sharedFeatureManager];
    v12 = [v11 shouldAutoFillPasswordsFromKeychain];

    if (v12)
    {
      v15 = WBS_LOG_CHANNEL_PREFIXAutoFill(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 72);
        *buf = 67109120;
        LODWORD(v53) = v16;
        _os_log_impl(&dword_26450F000, v15, OS_LOG_TYPE_INFO, "Attempting to return a TOTP generated code. classification:%d", buf, 8u);
      }

      if (*(a1 + 72) == 2)
      {
        v17 = [*(a1 + 40) length];
        if (v17)
        {
          if (*(a1 + 48) && (v17 = [*(a1 + 32) _appWithAppIdentifierIsWebBrowser:*(a1 + 40)], v17))
          {
            v19 = WBS_LOG_CHANNEL_PREFIXAutoFill(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a1 + 40);
              v21 = *(a1 + 48);
              *buf = 138412803;
              v53 = v20;
              v54 = 2160;
              v55 = 1752392040;
              v56 = 2117;
              v57 = v21;
              _os_log_impl(&dword_26450F000, v19, OS_LOG_TYPE_DEFAULT, "App %@ has web browser entitlement. Getting passwords for website URL %{sensitive, mask.hash}@.", buf, 0x20u);
            }

            v22 = [*(a1 + 32) _savedAccountsWithPasswordsForURL:*(a1 + 48) inContext:0];
          }

          else
          {
            v23 = WBS_LOG_CHANNEL_PREFIXAutoFill(v17, v18);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 40);
              *buf = 141558275;
              v53 = 1752392040;
              v54 = 2117;
              v55 = v24;
              _os_log_impl(&dword_26450F000, v23, OS_LOG_TYPE_DEFAULT, "Fetching passwords for associated domains for app %{sensitive, mask.hash}@.", buf, 0x16u);
            }

            v25 = [*(a1 + 32) _associatedDomainEntriesForAppWithIdentifier:*(a1 + 40)];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_58;
            v37[3] = &unk_279B612C8;
            v37[4] = *(a1 + 32);
            v38 = *(a1 + 64);
            v26 = [v25 safari_mapAndFilterObjectsUsingBlock:v37];
            v22 = [v26 safari_flattenedArray];
          }

          v27 = *(a1 + 56);
          v28 = *(a1 + 32);
          v29 = [MEMORY[0x277D49B30] defaultContext];
          v30 = [v28 _sortedOneTimeCodesFromSavedAccounts:v22 context:v29];
          [v27 addObjectsFromArray:v30];

          v33 = WBS_LOG_CHANNEL_PREFIXAutoFill(v31, v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [*(a1 + 56) count];
            v35 = [*(a1 + 56) count];
            v36 = "s";
            if (v35 == 1)
            {
              v36 = "";
            }

            *buf = 134218242;
            v53 = v34;
            v54 = 2080;
            v55 = v36;
            _os_log_impl(&dword_26450F000, v33, OS_LOG_TYPE_DEFAULT, "Returning %ld available one-time code%s", buf, 0x16u);
          }
        }
      }
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

id __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = 0;
  v5 = [*(a1 + 32) _domainBindingForRecievedOneTimeCode:v4 forAppWithIdentifier:*(a1 + 40) websiteURL:*(a1 + 48) hasDomainBinding:&v9];
  *(*(*(a1 + 56) + 8) + 24) = (*(*(*(a1 + 56) + 8) + 24) | v9) & 1;
  *(*(*(a1 + 64) + 8) + 24) |= v5 != 0;
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D49A80]);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v5 = [v6 initWithFirst:v4 second:v7];
  }

  return v5;
}

id __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 domain];
  v5 = [v3 _secureURLWithDomain:v4];
  v6 = [MEMORY[0x277D49B30] defaultContext];
  v7 = [v3 _savedAccountsWithPasswordsForURL:v5 inContext:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2_60;
  v10[3] = &unk_279B612A0;
  v11 = *(a1 + 40);
  v8 = [v7 safari_filterObjectsUsingBlock:v10];

  return v8;
}

uint64_t __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2_60(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    v4 = [v3 first];
    v5 = [v4 user];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)ls fieldClassification:(int64_t)classification
{
  v6 = MEMORY[0x277D49B30];
  lsCopy = ls;
  defaultContext = [v6 defaultContext];
  v9 = [(SFAppAutoFillOneTimeCodeProvider *)self currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:lsCopy fieldClassification:classification inContext:defaultContext];

  return v9;
}

- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)ls fieldClassification:(int64_t)classification inContext:(id)context
{
  lsCopy = ls;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke;
  block[3] = &unk_279B61340;
  block[4] = self;
  v18 = lsCopy;
  v20 = contextCopy;
  classificationCopy = classification;
  v19 = array;
  v12 = contextCopy;
  v13 = array;
  v14 = lsCopy;
  dispatch_sync(internalQueue, block);
  v15 = [v13 copy];

  return v15;
}

void __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_2;
  activity_block[3] = &unk_279B61340;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v11 = *(a1 + 64);
  v5 = v4;
  *&v6 = v3;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  _os_activity_initiate(&dword_26450F000, "Retrieving Current One-Time Codes for Web Browser App", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _validateCurrentOneTimeCodes];
  v2 = *(*(a1 + 32) + 16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_3;
  v13[3] = &unk_279B61318;
  v14 = *(a1 + 40);
  v3 = [v2 safari_mapAndFilterKeysAndObjectsUsingBlock:v13];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:v3];
  [v4 addObjectsFromArray:v5];

  v6 = +[SFAutoFillFeatureManager sharedFeatureManager];
  LODWORD(v5) = [v6 shouldAutoFillPasswordsFromKeychain];

  if (v5)
  {
    if (*(a1 + 64))
    {
      v7 = [*(a1 + 40) lastObject];
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        v11 = [v9 _savedAccountsWithPasswordsForURL:v7 inContext:*(a1 + 56)];
        v12 = [v9 _sortedOneTimeCodesFromSavedAccounts:v11 context:*(a1 + 56)];
        [v10 addObjectsFromArray:v12];
      }
    }
  }
}

id __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 matchBoundDomainsWithFrameURLs:*(a1 + 32)];
  v7 = WBS_LOG_CHANNEL_PREFIXAutoFill(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &stru_2875FD420;
    v9 = *(a1 + 32);
    v13 = 138412803;
    if (!v5)
    {
      v8 = @"NOT ";
    }

    v14 = v8;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 2117;
    v18 = v9;
    _os_log_impl(&dword_26450F000, v7, OS_LOG_TYPE_DEFAULT, "Domain-bound verification code is %@valid for frame URLs from web browser: %{sensitive, mask.hash}@", &v13, 0x20u);
  }

  if (v5)
  {
    v10 = objc_alloc(MEMORY[0x277D49A80]);
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v5 = [v10 initWithFirst:v4 second:v11];
  }

  return v5;
}

- (id)_orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:(id)source
{
  sourceCopy = source;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [sourceCopy objectForKeyedSubscript:&unk_2876020D0];
  v6 = v5;
  if (v5)
  {
    first = [v5 first];
    [array addObject:first];
  }

  v8 = [sourceCopy objectForKeyedSubscript:&unk_2876020E8];

  if (v8)
  {
    first2 = [v8 first];
    [array addObject:first2];
  }

  v10 = [sourceCopy objectForKeyedSubscript:&unk_287602100];

  if (v10)
  {
    first3 = [v10 first];
    [array addObject:first3];
  }

  [array sortUsingComparator:&__block_literal_global_0];
  v12 = [array copy];

  return v12;
}

uint64_t __97__SFAppAutoFillOneTimeCodeProvider__orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)_domainBindingForRecievedOneTimeCode:(id)code forAppWithIdentifier:(id)identifier websiteURL:(id)l hasDomainBinding:(BOOL *)binding
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lCopy = l;
  codeCopy = code;
  domain = [codeCopy domain];
  machineReadableCode = [codeCopy machineReadableCode];

  if (domain | machineReadableCode)
  {
    if (binding)
    {
      *binding = 1;
    }

    v17 = WBS_LOG_CHANNEL_PREFIXAutoFill(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v47 = 1752392040;
      v48 = 2117;
      v49 = domain;
      _os_log_impl(&dword_26450F000, v17, OS_LOG_TYPE_DEFAULT, "Current verification code is domain-bound to %{sensitive, mask.hash}@.", buf, 0x16u);
    }

    if ([identifierCopy length])
    {
      v19 = [(SFAppAutoFillOneTimeCodeProvider *)self _secureURLWithDomain:domain];
      v21 = v19;
      if (lCopy && (v19 = [(SFAppAutoFillOneTimeCodeProvider *)self _appWithAppIdentifierIsWebBrowser:identifierCopy], v19))
      {
        v22 = WBS_LOG_CHANNEL_PREFIXAutoFill(v19, v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 141558787;
          v47 = 1752392040;
          v48 = 2117;
          v49 = identifierCopy;
          v50 = 2160;
          v51 = 1752392040;
          v52 = 2117;
          v53 = lCopy;
          _os_log_impl(&dword_26450F000, v22, OS_LOG_TYPE_INFO, "App %{sensitive, mask.hash}@ has web browser entitlement. Checking domain against website URL %{sensitive, mask.hash}@.", buf, 0x2Au);
        }

        v23 = [(SFAppAutoFillOneTimeCodeProvider *)self _url:lCopy matchesURLFromOriginBoundCode:v21];
        integerValue = v23;
      }

      else
      {
        v26 = WBS_LOG_CHANNEL_PREFIXAutoFill(v19, v20);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 141558275;
          v47 = 1752392040;
          v48 = 2117;
          v49 = identifierCopy;
          _os_log_impl(&dword_26450F000, v26, OS_LOG_TYPE_INFO, "Checking domain against associated domains for app %{sensitive, mask.hash}@.", buf, 0x16u);
        }

        v27 = [(SFAppAutoFillOneTimeCodeProvider *)self _associatedDomainEntriesForAppWithIdentifier:identifierCopy];
        v40 = MEMORY[0x277D85DD0];
        v41 = 3221225472;
        v42 = __122__SFAppAutoFillOneTimeCodeProvider__domainBindingForRecievedOneTimeCode_forAppWithIdentifier_websiteURL_hasDomainBinding___block_invoke;
        v43 = &unk_279B61388;
        selfCopy = self;
        v45 = v21;
        v28 = [v27 safari_reduceObjectsWithInitialValue:&unk_2876020D0 usingBlock:&v40];
        integerValue = [v28 integerValue];
      }

      v29 = WBS_LOG_CHANNEL_PREFIXAutoFill(v23, v24);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = &stru_2875FD420;
        *buf = 138412803;
        if (!integerValue)
        {
          v30 = @"NOT ";
        }

        v47 = v30;
        v48 = 2160;
        v49 = 1752392040;
        v50 = 2117;
        v51 = identifierCopy;
        _os_log_impl(&dword_26450F000, v29, OS_LOG_TYPE_DEFAULT, "Domain-bound verification code is %@valid for app %{sensitive, mask.hash}@.", buf, 0x20u);
      }
    }

    else
    {
      v31 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v18);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(SFAppAutoFillOneTimeCodeProvider *)v31 _domainBindingForRecievedOneTimeCode:v32 forAppWithIdentifier:v33 websiteURL:v34 hasDomainBinding:v35, v36, v37, v38];
      }

      integerValue = 0;
    }
  }

  else
  {
    if (binding)
    {
      *binding = 0;
    }

    integerValue = 2;
  }

  return integerValue;
}

id __122__SFAppAutoFillOneTimeCodeProvider__domainBindingForRecievedOneTimeCode_forAppWithIdentifier_websiteURL_hasDomainBinding___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [a2 domain];
  v8 = [v6 _secureURLWithDomain:v7];
  v9 = [v6 _url:v8 matchesURLFromOriginBoundCode:*(a1 + 40)];

  if (v9 <= [v5 integerValue])
  {
    v10 = v5;
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  }

  v11 = v10;

  return v11;
}

- (void)consumeCurrentOneTimeCode
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SFAppAutoFillOneTimeCodeProvider_consumeCurrentOneTimeCode__block_invoke;
  block[3] = &unk_279B613D8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __61__SFAppAutoFillOneTimeCodeProvider_consumeCurrentOneTimeCode__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SFAppAutoFillOneTimeCodeProvider_consumeCurrentOneTimeCode__block_invoke_2;
  v4[3] = &unk_279B613B0;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)consumeMessagesOneTimeCodeWithGUID:(id)d
{
  dCopy = d;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SFAppAutoFillOneTimeCodeProvider_consumeMessagesOneTimeCodeWithGUID___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __71__SFAppAutoFillOneTimeCodeProvider_consumeMessagesOneTimeCodeWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:&unk_2876020D0];
  if (v2)
  {
    v5 = v2;
    v3 = [v2 GUID];
    v4 = [v3 isEqualToString:*(a1 + 40)];

    v2 = v5;
    if (v4)
    {
      [*(a1 + 32) _consumeOneTimeCode:v5];
      v2 = v5;
    }
  }
}

- (void)consumeOneTimeCode:(id)code
{
  codeCopy = code;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SFAppAutoFillOneTimeCodeProvider_consumeOneTimeCode___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = codeCopy;
  v6 = codeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)_consumeOneTimeCode:(id)code
{
  codeCopy = code;
  allValues = [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource allValues];
  v5 = [allValues containsObject:codeCopy];

  if (v5)
  {
    source = [codeCopy source];
    if (source == 2)
    {
      v10 = &unk_287602100;
      v11 = [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource objectForKeyedSubscript:&unk_287602100];
      if (![codeCopy isEqual:v11])
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (source == 1)
      {
        -[EMOneTimeCodeAccelerator didFillOneTimeCode:](self->_mailOneTimeCodeAccelerator, "didFillOneTimeCode:", [codeCopy messageID]);
        currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
        v10 = &unk_2876020E8;
      }

      else
      {
        if (source)
        {
          goto LABEL_10;
        }

        messagesOneTimeCodeAccelerator = self->_messagesOneTimeCodeAccelerator;
        gUID = [codeCopy GUID];
        [(IMOneTimeCodeAccelerator *)messagesOneTimeCodeAccelerator consumeCodeWithGuid:gUID];

        currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
        v10 = &unk_2876020D0;
      }

      v11 = [(NSMutableDictionary *)currentReceivedOneTimeCodesBySource objectForKeyedSubscript:v10];
      if (([codeCopy isEqual:v11] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource setObject:0 forKeyedSubscript:v10];
LABEL_9:
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (id)_mostRecentlyReceivedOneTimeCode
{
  allValues = [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource allValues];
  v3 = [allValues safari_reduceObjectsUsingBlock:&__block_literal_global_81];

  return v3;
}

id __68__SFAppAutoFillOneTimeCodeProvider__mostRecentlyReceivedOneTimeCode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = a3;
    v7 = [v5 timestamp];
    v8 = [v6 timestamp];
    if ([v7 safari_isLaterThanDate:v8])
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SFAppAutoFillOneTimeCodeProvider_addObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __48__SFAppAutoFillOneTimeCodeProvider_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)addObserver:(id)observer forOneTimeCode:(id)code
{
  observerCopy = observer;
  codeCopy = code;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [codeCopy source] == 3)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SFAppAutoFillOneTimeCodeProvider_addObserver_forOneTimeCode___block_invoke;
    block[3] = &unk_279B61420;
    block[4] = self;
    v10 = codeCopy;
    v11 = observerCopy;
    dispatch_async(internalQueue, block);
  }
}

void __63__SFAppAutoFillOneTimeCodeProvider_addObserver_forOneTimeCode___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v8 = objc_alloc_init(TOTPGeneratorSnapshot);
  [(TOTPGeneratorSnapshot *)v8 setOneTimeCode:*(a1 + 40)];
  v5 = [*(a1 + 40) totpGenerator];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 startDateOfIntervalContainingDate:v6];
  [(TOTPGeneratorSnapshot *)v8 setStartDateOfInterval:v7];

  [*(*(a1 + 32) + 56) setObject:v8 forKey:*(a1 + 48)];
  [*(a1 + 32) _startGeneratorTimer];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SFAppAutoFillOneTimeCodeProvider_removeObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(internalQueue, v7);
}

- (void)removeObserverForOneTimeCode:(id)code
{
  codeCopy = code;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SFAppAutoFillOneTimeCodeProvider_removeObserverForOneTimeCode___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = codeCopy;
  v6 = codeCopy;
  dispatch_async(internalQueue, v7);
}

void *__65__SFAppAutoFillOneTimeCodeProvider_removeObserverForOneTimeCode___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
  result = [*(*(a1 + 32) + 56) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _stopGeneratorTimer];
  }

  return result;
}

- (BOOL)isOneTimeCodeAutoDeletionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SFAppAutoFillOneTimeCodeProvider_isOneTimeCodeAutoDeletionEnabled__block_invoke;
  v5[3] = &unk_279B61448;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsOneTimeCodeAutoDeletionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SFAppAutoFillOneTimeCodeProvider_setIsOneTimeCodeAutoDeletionEnabled___block_invoke;
  v6[3] = &unk_279B61470;
  v6[4] = self;
  enabledCopy2 = enabled;
  dispatch_async(internalQueue, v6);
  [(IMOneTimeCodeAccelerator *)self->_messagesOneTimeCodeAccelerator setAutoDeletionPreference:enabledCopy];
}

- (void)_fetchOneTimeCodeAutoDeletionPreference
{
  messagesOneTimeCodeAccelerator = self->_messagesOneTimeCodeAccelerator;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__SFAppAutoFillOneTimeCodeProvider__fetchOneTimeCodeAutoDeletionPreference__block_invoke;
  v3[3] = &unk_279B61498;
  v3[4] = self;
  [(IMOneTimeCodeAccelerator *)messagesOneTimeCodeAccelerator fetchAutoDeletionPreferenceWithCompletionHandler:v3];
}

void __75__SFAppAutoFillOneTimeCodeProvider__fetchOneTimeCodeAutoDeletionPreference__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__SFAppAutoFillOneTimeCodeProvider__fetchOneTimeCodeAutoDeletionPreference__block_invoke_2;
  v4[3] = &unk_279B61470;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

- (void)_notifyOneTimeCodeObserver
{
  v3 = [(NSHashTable *)self->_observers copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SFAppAutoFillOneTimeCodeProvider__notifyOneTimeCodeObserver__block_invoke;
  v5[3] = &unk_279B611D8;
  v6 = v3;
  selfCopy = self;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __62__SFAppAutoFillOneTimeCodeProvider__notifyOneTimeCodeObserver__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_opt_respondsToSelector();
        if (v9)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXAutoFill(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v12;
            v18 = v8;
            _os_log_impl(&dword_26450F000, v11, OS_LOG_TYPE_INFO, "Notifying observer %@ of new one-time code", buf, 0xCu);
          }

          [v8 oneTimeCodeProviderReceivedCode:{*(a1 + 40), v12, v13}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_processOneTimeCodeFromMessages:(id)messages
{
  v14 = *MEMORY[0x277D85DE8];
  if (messages)
  {
    messagesCopy = messages;
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill(messagesCopy, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      code = [0 code];
      v10 = 141558275;
      v11 = 1752392040;
      v12 = 2117;
      v13 = code;
      _os_log_impl(&dword_26450F000, v7, OS_LOG_TYPE_DEFAULT, "Received verification code from Messages: %{sensitive, mask.hash}@", &v10, 0x16u);
    }

    v9 = [[SFAutoFillOneTimeCode alloc] initWithIMCoreDictionary:messagesCopy];
  }

  else
  {
    v9 = 0;
  }

  [(SFAppAutoFillOneTimeCodeProvider *)self _processReceivedOneTimeCode:v9 fromSource:0];
}

- (void)_processOneTimeCodeFromMail:(id)mail withTimestamp:(id)timestamp andMessageID:(int64_t)d
{
  v21 = *MEMORY[0x277D85DE8];
  if (mail)
  {
    timestampCopy = timestamp;
    mailCopy = mail;
    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill(mailCopy, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      code = [0 code];
      v15 = 141558531;
      v16 = 1752392040;
      v17 = 2117;
      v18 = code;
      v19 = 2048;
      messageID = [0 messageID];
      _os_log_impl(&dword_26450F000, v12, OS_LOG_TYPE_DEFAULT, "Received verification code from Mail: %{sensitive, mask.hash}@ and MessageID: %ld", &v15, 0x20u);
    }

    v14 = [[SFAutoFillOneTimeCode alloc] initWithMailOneTimeCode:mailCopy timestamp:timestampCopy messageID:d];
  }

  else
  {
    v14 = 0;
  }

  [(SFAppAutoFillOneTimeCodeProvider *)self _processReceivedOneTimeCode:v14 fromSource:1];
}

- (void)_processReceivedOneTimeCode:(id)code fromSource:(int64_t)source
{
  currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
  v7 = MEMORY[0x277CCABB0];
  codeCopy = code;
  v9 = [v7 numberWithInteger:source];
  v10 = [(NSMutableDictionary *)currentReceivedOneTimeCodesBySource objectForKeyedSubscript:v9];
  v11 = WBSIsEqual();

  v12 = self->_currentReceivedOneTimeCodesBySource;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [(NSMutableDictionary *)v12 setObject:codeCopy forKeyedSubscript:v13];

  if ((v11 & 1) == 0)
  {

    [(SFAppAutoFillOneTimeCodeProvider *)self _notifyOneTimeCodeObserver];
  }
}

- (void)_validateCurrentOneTimeCodes
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-180.0];

  currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SFAppAutoFillOneTimeCodeProvider__validateCurrentOneTimeCodes__block_invoke;
  v10[3] = &unk_279B614C0;
  v11 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)currentReceivedOneTimeCodesBySource safari_mapAndFilterKeysAndObjectsUsingBlock:v10];
  v8 = [v7 mutableCopy];
  v9 = self->_currentReceivedOneTimeCodesBySource;
  self->_currentReceivedOneTimeCodesBySource = v8;
}

id __64__SFAppAutoFillOneTimeCodeProvider__validateCurrentOneTimeCodes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 timestamp];
  LODWORD(a1) = [v5 safari_isEarlierThanDate:*(a1 + 32)];

  if (a1)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 141558275;
      v12 = 1752392040;
      v13 = 2117;
      v14 = v4;
      _os_log_impl(&dword_26450F000, v8, OS_LOG_TYPE_INFO, "%{sensitive, mask.hash}@ is expired; removing from cache", &v11, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (int64_t)_url:(id)_url matchesURLFromOriginBoundCode:(id)code
{
  _urlCopy = _url;
  codeCopy = code;
  if ([_urlCopy safari_hasSameOriginAsURL:codeCopy])
  {
    v7 = 2;
  }

  else
  {
    v7 = [_urlCopy safari_hasSameSiteAsURL:codeCopy];
  }

  return v7;
}

- (BOOL)_appWithAppIdentifierIsWebBrowser:(id)browser
{
  browserCopy = browser;
  v13 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:browserCopy error:&v13];
  v5 = v13;
  v7 = v5;
  if (v4)
  {
    entitlements = [v4 entitlements];
    v9 = [entitlements objectForKey:@"com.apple.developer.web-browser" ofClass:objc_opt_class()];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SFAppAutoFillOneTimeCodeProvider *)browserCopy _appWithAppIdentifierIsWebBrowser:v11];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_secureURLWithDomain:(id)domain
{
  if (domain)
  {
    v3 = MEMORY[0x277CCACE0];
    domainCopy = domain;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"https"];
    [v5 setHost:domainCopy];

    v6 = [v5 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_savedAccountsWithPasswordsForURL:(id)l inContext:(id)context
{
  lCopy = l;
  contextCopy = context;
  v8 = objc_alloc(MEMORY[0x277D49B40]);
  queryThatMatchesEverything = [MEMORY[0x277D49B70] queryThatMatchesEverything];
  v10 = [v8 initWithURL:lCopy options:19 userNameQuery:queryThatMatchesEverything associatedDomainsManager:self->_associatedDomainsManager webFrameIdentifier:0];

  [v10 setContext:contextCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__SFAppAutoFillOneTimeCodeProvider__savedAccountsWithPasswordsForURL_inContext___block_invoke;
  v18[3] = &unk_279B614E8;
  v18[4] = &v19;
  [mEMORY[0x277D49B58] getSavedAccountsMatchingCriteria:v10 withSynchronousCompletionHandler:v18];

  matchesForPasswordAutoFill = [v20[5] matchesForPasswordAutoFill];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__SFAppAutoFillOneTimeCodeProvider__savedAccountsWithPasswordsForURL_inContext___block_invoke_2;
  v16[3] = &unk_279B61510;
  v13 = lCopy;
  v17 = v13;
  v14 = [matchesForPasswordAutoFill safari_mapObjectsUsingBlock:v16];

  _Block_object_dispose(&v19, 8);

  return v14;
}

id __80__SFAppAutoFillOneTimeCodeProvider__savedAccountsWithPasswordsForURL_inContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D49A80];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 savedAccount];

  v7 = [v5 initWithFirst:v6 second:*(a1 + 32)];

  return v7;
}

- (id)_sortedOneTimeCodesFromSavedAccounts:(id)accounts context:(id)context
{
  contextCopy = context;
  v6 = MEMORY[0x277CBEB58];
  accountsCopy = accounts;
  v8 = [v6 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke;
  v14[3] = &unk_279B61560;
  v15 = contextCopy;
  v9 = contextCopy;
  v10 = [accountsCopy safari_reduceObjectsWithInitialValue:v8 usingBlock:v14];

  allObjects = [v10 allObjects];
  v12 = [allObjects sortedArrayUsingComparator:&__block_literal_global_111];

  return v12;
}

id __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 first];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 totpGenerators];
  v10 = [v8 setWithArray:v9];

  v11 = [v6 second];

  v12 = [v11 host];
  v13 = [v7 lastUsedDateForSite:v12 inContext:*(a1 + 32)];

  v14 = [v10 allObjects];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke_2;
  v22 = &unk_279B61538;
  v23 = v7;
  v24 = v13;
  v15 = v13;
  v16 = v7;
  v17 = [v14 safari_mapObjectsUsingBlock:&v19];
  [v5 addObjectsFromArray:{v17, v19, v20, v21, v22}];

  return v5;
}

SFAutoFillOneTimeCode *__81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SFAutoFillOneTimeCode alloc];
  v5 = [*(a1 + 32) user];
  v6 = [*(a1 + 32) userVisibleDomain];
  v7 = [(SFAutoFillOneTimeCode *)v4 initWithTOTPGenerator:v3 user:v5 highLevelDomain:v6 lastUsedDateOfAssociatedSavedAccount:*(a1 + 40)];

  return v7;
}

uint64_t __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 lastUseDateOfAssociatedSavedAccount];
  v7 = [v5 lastUseDateOfAssociatedSavedAccount];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    v10 = 1;
    if (v9 != -1)
    {
      v10 = -1;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    if (v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (!(v6 | v7))
    {
      v12 = [v4 domain];
      v13 = [v5 domain];
      v11 = compareStringToString(v12, v13);

      if (!v11)
      {
        v14 = [v4 user];
        v15 = [v5 user];
        v11 = compareStringToString(v14, v15);

        if (!v11)
        {
          v16 = [v4 displayCode];
          v17 = [v5 displayCode];
          v11 = compareStringToString(v16, v17);
        }
      }
    }
  }

  return v11;
}

- (id)_associatedDomainEntriesForAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__SFAppAutoFillOneTimeCodeProvider__associatedDomainEntriesForAppWithIdentifier___block_invoke;
  v19[3] = &unk_279B61588;
  v21 = &v22;
  v5 = v4;
  v20 = v5;
  [SFSafariCredentialStore getApprovedSharedWebCredentialsEntriesForAppWithAppID:identifierCopy completionHandler:v19];
  v6 = dispatch_time(0, 5);
  v7 = dispatch_group_wait(v5, v6);
  if (v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SFAppAutoFillOneTimeCodeProvider *)v9 _associatedDomainEntriesForAppWithIdentifier:v10, v11, v12, v13, v14, v15, v16];
    }

    v17 = 0;
  }

  else
  {
    v17 = v23[5];
  }

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __81__SFAppAutoFillOneTimeCodeProvider__associatedDomainEntriesForAppWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_startGeneratorTimer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!self->_generatorTimer)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke;
    v6[3] = &unk_279B615B0;
    v6[4] = self;
    v3 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:1 repeats:v6 block:1.0];
    generatorTimer = self->_generatorTimer;
    self->_generatorTimer = v3;

    [(NSTimer *)self->_generatorTimer setTolerance:0.25];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:self->_generatorTimer forMode:*MEMORY[0x277CBE640]];
  }
}

void __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke_2;
  block[3] = &unk_279B613D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(*(a1 + 32) + 56) keyEnumerator];
  v1 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    do
    {
      v4 = 0;
      do
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v6 = [*(*(a1 + 32) + 56) objectForKey:v5];
          v7 = [v6 oneTimeCode];
          v8 = [v7 totpGenerator];
          v9 = [MEMORY[0x277CBEAA8] date];
          v10 = [v8 startDateOfIntervalContainingDate:v9];

          v11 = [v6 startDateOfInterval];
          LOBYTE(v8) = [v10 isEqualToDate:v11];

          if ((v8 & 1) == 0)
          {
            [v6 setStartDateOfInterval:v10];
            v12 = *(a1 + 32);
            v13 = [v6 oneTimeCode];
            [v5 oneTimeCodeProvider:v12 didUpdateOneTimeCode:v13];
          }
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }
}

- (void)_stopGeneratorTimer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = WBS_LOG_CHANNEL_PREFIXAutoFill(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_26450F000, v5, OS_LOG_TYPE_INFO, "Stopping generator observer timer.", v7, 2u);
  }

  [(NSTimer *)self->_generatorTimer invalidate];
  generatorTimer = self->_generatorTimer;
  self->_generatorTimer = 0;
}

- (void)oneTimeCodeClient:(id)client detectedOneTimeCodes:(id)codes
{
  v37 = *MEMORY[0x277D85DE8];
  allObjects = [codes allObjects];
  v6 = [allObjects sortedArrayUsingSelector:sel_timestamp];
  firstObject = [v6 firstObject];

  applicationIdentifier = [firstObject applicationIdentifier];
  if ([applicationIdentifier length])
  {
    code = [firstObject code];
    if (![code length])
    {
      v14 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v36 = applicationIdentifier;
        _os_log_impl(&dword_26450F000, v14, OS_LOG_TYPE_INFO, "Ignoring OTC from notification from %{private}@ because code string was nil or empty.", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (objc_opt_respondsToSelector())
    {
      displayCode = [firstObject displayCode];
    }

    else
    {
      displayCode = code;
    }

    v15 = displayCode;
    if ([displayCode length])
    {
      v17 = [applicationIdentifier isEqualToString:@"com.apple.MobileSMS"];
      if ((v17 & 1) == 0)
      {
        v17 = [applicationIdentifier isEqualToString:@"com.apple.mail"];
        if (!v17)
        {
          v34 = 0;
          v21 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:applicationIdentifier error:&v34];
          v22 = v34;
          v24 = v22;
          if (v21)
          {
            internalQueue = self->_internalQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __75__SFAppAutoFillOneTimeCodeProvider_oneTimeCodeClient_detectedOneTimeCodes___block_invoke;
            block[3] = &unk_279B615D8;
            v28 = code;
            v29 = v15;
            v30 = firstObject;
            v31 = v21;
            v32 = applicationIdentifier;
            selfCopy = self;
            dispatch_async(internalQueue, block);
          }

          else
          {
            v26 = WBS_LOG_CHANNEL_PREFIXAutoFill(v22, v23);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(SFAppAutoFillOneTimeCodeProvider *)applicationIdentifier oneTimeCodeClient:v26 detectedOneTimeCodes:v24];
            }
          }

          goto LABEL_23;
        }
      }

      v19 = WBS_LOG_CHANNEL_PREFIXAutoFill(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v36 = applicationIdentifier;
        v20 = "Ignoring OTC from notification from %{private}@ because it's already covered by other support.";
LABEL_17:
        _os_log_impl(&dword_26450F000, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
      }
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v36 = applicationIdentifier;
        v20 = "Ignoring OTC from notification from %{private}@ because displayCode string was nil or empty.";
        goto LABEL_17;
      }
    }

LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26450F000, v13, OS_LOG_TYPE_INFO, "Ignoring OTC from notification from app with nil or empty appIdentifier.", buf, 2u);
  }

LABEL_25:
}

void __75__SFAppAutoFillOneTimeCodeProvider_oneTimeCodeClient_detectedOneTimeCodes___block_invoke(uint64_t a1)
{
  v2 = [SFAutoFillOneTimeCode alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) timestamp];
  v6 = [*(a1 + 56) localizedName];
  v7 = [(SFAutoFillOneTimeCode *)v2 initWithNotificationOneTimeCode:v3 displayCode:v4 timestamp:v5 sourceAppName:v6 sourceAppApplicationIdentifer:*(a1 + 64)];

  [*(a1 + 72) _processReceivedOneTimeCode:v7 fromSource:2];
}

+ (BOOL)enableCodesFromNotifications
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults objectForKey:*MEMORY[0x277D49C00]];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setEnableCodesFromNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setBool:notificationsCopy forKey:*MEMORY[0x277D49C00]];
}

+ (void)setUseUserNotificationsOneTimeCodeSupport:(BOOL)support
{
  supportCopy = support;
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setBool:supportCopy forKey:*MEMORY[0x277D49DB0]];
}

- (void)test_deliverOneTimeCode:(id)code fromSource:(int64_t)source
{
  codeCopy = code;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SFAppAutoFillOneTimeCodeProvider_test_deliverOneTimeCode_fromSource___block_invoke;
  block[3] = &unk_279B61600;
  block[4] = self;
  v10 = codeCopy;
  sourceCopy = source;
  v8 = codeCopy;
  dispatch_async(internalQueue, block);
}

- (void)_appWithAppIdentifierIsWebBrowser:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 141558275;
  v3 = 1752392040;
  v4 = 2117;
  v5 = a1;
  _os_log_error_impl(&dword_26450F000, a2, OS_LOG_TYPE_ERROR, "Could not fetch application record for application identifier: %{sensitive, mask.hash}@.", &v2, 0x16u);
}

- (void)oneTimeCodeClient:(void *)a3 detectedOneTimeCodes:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138478083;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_26450F000, v5, OS_LOG_TYPE_ERROR, "Ignoring OTC from notification from %{private}@ because we failed to look up an LSBundleRecord for it, with error: %@", &v7, 0x16u);
}

@end