@interface SFSafariCredentialStore
+ (BOOL)_appIsEntitledWebBrowser:(id)browser;
+ (BOOL)_savedAccount:(id)account isRelatedToEntryHighLevelDomains:(id)domains andWebsiteURL:(id)l;
+ (BOOL)isAppAutoFillAvailable;
+ (id)_bestDomainFromApprovedDomainsForWebCredentials:(id)credentials appLinks:(id)links otherServices:(id)services appID:(id)d appNames:(id)names allDomains:(id *)domains;
+ (id)_credentialProviderExtensionHelperProxy;
+ (id)_credentialsForAppID:(id)d matchingSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l savedAccounts:(id)accounts;
+ (id)_credentialsForWebBrowserWithWebsiteURL:(id)l webFrameIdentifier:(id)identifier;
+ (id)appNamesForAppID:(id)d;
+ (id)bestDomainForAutoFillFromDomains:(id)domains appID:(id)d;
+ (id)textSuggestionHeaderForExternalCredential:(id)credential;
+ (id)titleForCredentialIdentity:(id)identity formURL:(id)l;
+ (int64_t)_scoreForDomain:(id)domain domainsApprovedForWebCredentials:(id)credentials domainsApprovedForAppLinks:(id)links domainsApprovedForOtherServices:(id)services appNames:(id)names;
+ (void)_approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)d completionHandler:(id)handler;
+ (void)_approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)d completionHandler:(id)handler;
+ (void)_fetchKeychainCredentialsIfRequiredForAppID:(id)d withSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l webFrameIdentifier:(id)identifier isEntitledWebBrowser:(BOOL)browser testOptions:(id)options completion:(id)completion;
+ (void)_getAllowedActionForAppCredentialsWithAppID:(id)d websiteURL:(id)l user:(id)user password:(id)password shouldAnalyzeExistingCredentials:(BOOL)credentials completionHandler:(id)handler;
+ (void)_getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID:(id)d maximumNumberOfEntriesToReturn:(unint64_t)return completionHandler:(id)handler;
+ (void)_getBundleIDForEnabledCredentialProvidersWithCompletionHandler:(id)handler;
+ (void)_getCredentialsForAppWithAppID:(id)d approvedAndValidSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l webFrameIdentifier:(id)identifier isEntitledWebBrowser:(BOOL)browser hasPasskeyRequest:(BOOL)request testOptions:(id)options completionHandler:(id)self0;
+ (void)_getDomainsApprovedForWebCredentials:(id *)credentials domainsApprovedForAppLinks:(id *)links domainsApprovedForOtherServices:(id *)services fromDatabaseEntries:(id)entries;
+ (void)_getExternalCredentialsForAppID:(id)d matchingSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l isEntitledWebBrowser:(BOOL)browser hasPasskeyRequest:(BOOL)request completion:(id)completion;
+ (void)_sharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)d completionHandler:(id)handler;
+ (void)_sortCredentials:(id)credentials appID:(id)d usingApprovedSharedWebCredentialsDatabaseEntries:(id)entries;
+ (void)bestDomainAndAllApprovedDatabaseEntriesForAppID:(id)d completionHandler:(id)handler;
+ (void)bestDomainForAppID:(id)d completionHandler:(id)handler;
+ (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)completion;
+ (void)getAllCredentialsWithCompletionHandler:(id)handler;
+ (void)getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler:(id)handler;
+ (void)getAllowedActionForAppCredentialsWithAppID:(id)d websiteURL:(id)l user:(id)user password:(id)password completionHandler:(id)handler;
+ (void)getCanSaveCredentialsWithAppID:(id)d websiteURL:(id)l completionHandler:(id)handler;
+ (void)getCredentialsForAppWithAppID:(id)d frameIdentifier:(id)identifier externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)domains websiteURL:(id)l testOptions:(id)options completionHandler:(id)handler;
+ (void)getExternalPasskeyCredentialIdentitiesForDomains:(id)domains completionHandler:(id)handler;
+ (void)getOneTimeCodeCredentialsForAppWithAppID:(id)d externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)domains websiteURL:(id)l completionHandler:(id)handler;
@end

@implementation SFSafariCredentialStore

+ (BOOL)isAppAutoFillAvailable
{
  v2 = +[SFAutoFillFeatureManager sharedFeatureManager];
  if ([v2 shouldAutoFillPasswords])
  {
    v3 = +[SFCredentialProviderExtensionManager sharedManager];
    getEnabledExtensionsSynchronously = [v3 getEnabledExtensionsSynchronously];
    v5 = [getEnabledExtensionsSynchronously count];

    if (v5)
    {
      shouldAutoFillPasswordsFromKeychain = 1;
    }

    else
    {
      shouldAutoFillPasswordsFromKeychain = [v2 shouldAutoFillPasswordsFromKeychain];
    }
  }

  else
  {
    shouldAutoFillPasswordsFromKeychain = 0;
  }

  return shouldAutoFillPasswordsFromKeychain;
}

+ (void)getCredentialsForAppWithAppID:(id)d frameIdentifier:(id)identifier externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)domains websiteURL:(id)l testOptions:(id)options completionHandler:(id)handler
{
  dCopy = d;
  identifierCopy = identifier;
  domainsCopy = domains;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke;
  v54[3] = &unk_279B61C38;
  v19 = dCopy;
  v55 = v19;
  v20 = [domainsCopy safari_mapObjectsUsingBlock:v54];
  v21 = objc_alloc_init(MEMORY[0x277D499C8]);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke_2;
  v47[3] = &unk_279B61C60;
  v49 = &v50;
  v23 = v22;
  v48 = v23;
  [v21 getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:identifierCopy orApplicationIdentifier:v19 completionHandler:v47];
  v24 = dispatch_time(0, 1500000000);
  v25 = dispatch_group_wait(v23, v24);
  if (v25)
  {
    v27 = WBS_LOG_CHANNEL_PREFIXCredentials(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SFSafariCredentialStore getCredentialsForAppWithAppID:v27 frameIdentifier:? externallyVerifiedAndApprovedSharedWebCredentialDomains:? websiteURL:? testOptions:? completionHandler:?];
    }

    *(v51 + 24) = 0;
  }

  v28 = [self _appIsEntitledWebBrowser:{v19, handlerCopy}];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke_6;
  v37[3] = &unk_279B61CA8;
  v29 = v20;
  v38 = v29;
  v30 = v19;
  v39 = v30;
  selfCopy = self;
  v31 = lCopy;
  v40 = v31;
  v32 = identifierCopy;
  v46 = v28;
  v41 = v32;
  v44 = &v50;
  v33 = optionsCopy;
  v42 = v33;
  v34 = v36;
  v43 = v34;
  [self _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:v30 completionHandler:v37];

  _Block_object_dispose(&v50, 8);
}

id __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SFSharedWebCredentialsDatabaseEntry alloc] _initWithDomain:v3 appID:*(a1 + 32) service:0 isApproved:1];

  return v4;
}

void __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v4 = [v3 mutableCopy];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (([v5 containsObject:v11] & 1) == 0)
          {
            [v4 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if ([v3 count])
    {
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 32);
    }

    v4 = v12;
  }

  if ([*(a1 + 40) isEqualToString:@"com.apple.Preferences"])
  {
    v13 = MEMORY[0x277CBEBF8];
LABEL_21:

    v4 = v13;
    goto LABEL_22;
  }

  if ([*(a1 + 40) hasPrefix:@"com.apple."])
  {
    v13 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_7];
    goto LABEL_21;
  }

LABEL_22:
  [*(a1 + 88) _getCredentialsForAppWithAppID:*(a1 + 40) approvedAndValidSharedWebCredentialsDatabaseEntries:v4 websiteURL:*(a1 + 48) webFrameIdentifier:*(a1 + 56) isEntitledWebBrowser:*(a1 + 96) hasPasskeyRequest:*(*(*(a1 + 80) + 8) + 24) testOptions:*(a1 + 64) completionHandler:{*(a1 + 72), v14}];
}

+ (void)getAllCredentialsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SFSafariCredentialStore_getAllCredentialsWithCompletionHandler___block_invoke;
  block[3] = &unk_279B61CF0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(v4, block);
}

void __66__SFSafariCredentialStore_getAllCredentialsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D49B58] sharedStore];
  v3 = [v2 savedAccountsWithPasswords];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_20];

  (*(*(a1 + 32) + 16))();
}

SFSafariCredential *__66__SFSafariCredentialStore_getAllCredentialsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userIsNeverSaveMarker])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 sites];
    if ([v4 count])
    {
      v5 = [v2 userVisibleDomain];
      v6 = [v5 safari_simplifiedSiteNameForCredentialLookup];

      v7 = [SFSafariCredential alloc];
      v8 = [v2 user];
      v9 = [v2 password];
      v10 = [v2 lastModifiedDate];
      v11 = [v2 customTitle];
      v12 = [v2 sharedGroupName];
      v3 = [(SFSafariCredential *)v7 initWithUser:v8 password:v9 site:v6 creationDate:v10 customTitle:v11 groupName:v12 requestedHost:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (void)_getCredentialsForAppWithAppID:(id)d approvedAndValidSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l webFrameIdentifier:(id)identifier isEntitledWebBrowser:(BOOL)browser hasPasskeyRequest:(BOOL)request testOptions:(id)options completionHandler:(id)self0
{
  requestCopy = request;
  browserCopy = browser;
  dCopy = d;
  entriesCopy = entries;
  lCopy = l;
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__1;
  v33[4] = __Block_byref_object_dispose__1;
  v34 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __209__SFSafariCredentialStore__getCredentialsForAppWithAppID_approvedAndValidSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_hasPasskeyRequest_testOptions_completionHandler___block_invoke;
  v30[3] = &unk_279B61588;
  v32 = v33;
  v21 = v20;
  v31 = v21;
  [self _getExternalCredentialsForAppID:dCopy matchingSharedWebCredentialsDatabaseEntries:entriesCopy websiteURL:lCopy isEntitledWebBrowser:browserCopy hasPasskeyRequest:requestCopy completion:v30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __209__SFSafariCredentialStore__getCredentialsForAppWithAppID_approvedAndValidSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_hasPasskeyRequest_testOptions_completionHandler___block_invoke_2;
  v26[3] = &unk_279B61D18;
  v22 = v21;
  v27 = v22;
  v29 = v33;
  v23 = handlerCopy;
  v28 = v23;
  [self _fetchKeychainCredentialsIfRequiredForAppID:dCopy withSharedWebCredentialsDatabaseEntries:entriesCopy websiteURL:lCopy webFrameIdentifier:identifierCopy isEntitledWebBrowser:browserCopy testOptions:optionsCopy completion:v26];

  _Block_object_dispose(v33, 8);
}

void __209__SFSafariCredentialStore__getCredentialsForAppWithAppID_approvedAndValidSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_hasPasskeyRequest_testOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __209__SFSafariCredentialStore__getCredentialsForAppWithAppID_approvedAndValidSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_hasPasskeyRequest_testOptions_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = a1[4];
  v4 = dispatch_time(0, 1500000000);
  dispatch_group_wait(v3, v4);
  if ([*(*(a1[6] + 8) + 40) count])
  {
    v5 = [*(*(a1[6] + 8) + 40) arrayByAddingObjectsFromArray:v7];
  }

  else
  {
    v5 = v7;
  }

  v6 = v5;
  (*(a1[5] + 16))();
}

id __64__SFSafariCredentialStore__highLevelDomainsFromDatabaseEntries___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 domain];
  v3 = [v2 safari_highLevelDomainForPasswordManager];

  return v3;
}

+ (void)_fetchKeychainCredentialsIfRequiredForAppID:(id)d withSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l webFrameIdentifier:(id)identifier isEntitledWebBrowser:(BOOL)browser testOptions:(id)options completion:(id)completion
{
  dCopy = d;
  entriesCopy = entries;
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = +[SFAutoFillFeatureManager sharedFeatureManager];
  shouldAutoFillPasswordsFromKeychain = [v20 shouldAutoFillPasswordsFromKeychain];

  if (shouldAutoFillPasswordsFromKeychain)
  {
    if (options)
    {
      mEMORY[0x277D49B58] = [objc_alloc(MEMORY[0x277D49B58]) initAndPrewarmSavedAccounts:0 forTesting:1];
    }

    else
    {
      mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    }

    v23 = mEMORY[0x277D49B58];
    v24 = dispatch_get_global_queue(21, 0);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __185__SFSafariCredentialStore__fetchKeychainCredentialsIfRequiredForAppID_withSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_testOptions_completion___block_invoke;
    v26[3] = &unk_279B61D60;
    browserCopy = browser;
    v27 = lCopy;
    v32 = completionCopy;
    selfCopy = self;
    v28 = identifierCopy;
    v29 = dCopy;
    v30 = entriesCopy;
    v31 = v23;
    v25 = v23;
    [v25 performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v24 task:v26];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8]);
  }
}

void __185__SFSafariCredentialStore__fetchKeychainCredentialsIfRequiredForAppID_withSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_testOptions_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 88) == 1 && v1)
  {
    v2 = *(a1 + 72);
    v8 = [*(a1 + 80) _credentialsForWebBrowserWithWebsiteURL:v1 webFrameIdentifier:*(a1 + 40)];
    (*(v2 + 16))(v2);
  }

  else
  {
    v4 = *(a1 + 72);
    v3 = *(a1 + 80);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = [*(a1 + 64) savedAccountsWithPasswords];
    v7 = [v3 _credentialsForAppID:v5 matchingSharedWebCredentialsDatabaseEntries:v6 websiteURL:v1 savedAccounts:?];
    (*(v4 + 16))(v4, v7);
  }
}

+ (id)_credentialsForWebBrowserWithWebsiteURL:(id)l webFrameIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 19;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = MEMORY[0x277CBEBF8];
  v8 = objc_alloc(MEMORY[0x277D49B40]);
  queryThatMatchesEverything = [MEMORY[0x277D49B70] queryThatMatchesEverything];
  v10 = [v8 initWithURL:lCopy options:v7 userNameQuery:queryThatMatchesEverything associatedDomainsManager:0 webFrameIdentifier:identifierCopy];

  mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke;
  v15[3] = &unk_279B61DB0;
  v17 = &v18;
  v12 = lCopy;
  v16 = v12;
  [mEMORY[0x277D49B58] getSavedAccountsMatchingCriteria:v10 withSynchronousCompletionHandler:v15];

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 matchesForPasswordAutoFill];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke_2;
  v7[3] = &unk_279B61D88;
  v8 = *(a1 + 32);
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

SFSafariCredential *__86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 savedAccount];
  if ([v3 userIsNeverSaveMarker])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 userVisibleDomain];
    v6 = [v5 safari_simplifiedSiteNameForCredentialLookup];

    v7 = [SFSafariCredential alloc];
    v8 = [v3 user];
    v9 = [v3 password];
    v10 = [v3 lastModifiedDate];
    v11 = [v3 customTitle];
    v12 = [v3 sharedGroupName];
    v13 = [*(a1 + 32) host];
    v4 = [(SFSafariCredential *)v7 initWithUser:v8 password:v9 site:v6 creationDate:v10 customTitle:v11 groupName:v12 requestedHost:v13];
  }

  return v4;
}

+ (id)_credentialsForAppID:(id)d matchingSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l savedAccounts:(id)accounts
{
  v84 = *MEMORY[0x277D85DE8];
  dCopy = d;
  entriesCopy = entries;
  lCopy = l;
  accountsCopy = accounts;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = [MEMORY[0x277CCA940] set];
  v66 = objc_alloc_init(MEMORY[0x277CCAB00]);
  selfCopy = self;
  v60 = entriesCopy;
  v13 = [self _highLevelDomainsFromDatabaseEntries:entriesCopy];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v14 = accountsCopy;
  v15 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
  v61 = v12;
  v64 = v14;
  v65 = v13;
  if (v15)
  {
    v16 = v15;
    v17 = *v79;
    v63 = *v79;
    do
    {
      v18 = 0;
      v67 = v16;
      do
      {
        if (*v79 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v78 + 1) + 8 * v18);
        if (([v19 userIsNeverSaveMarker] & 1) == 0 && objc_msgSend(selfCopy, "_savedAccount:isRelatedToEntryHighLevelDomains:andWebsiteURL:", v19, v13, lCopy))
        {
          userVisibleDomain = [v19 userVisibleDomain];
          safari_simplifiedSiteNameForCredentialLookup = [userVisibleDomain safari_simplifiedSiteNameForCredentialLookup];

          v22 = [SFSafariCredential alloc];
          user = [v19 user];
          password = [v19 password];
          lastModifiedDate = [v19 lastModifiedDate];
          customTitle = [v19 customTitle];
          sharedGroupName = [v19 sharedGroupName];
          host = [lCopy host];
          v28 = host;
          v69 = safari_simplifiedSiteNameForCredentialLookup;
          if (host)
          {
            v29 = [(SFSafariCredential *)v22 initWithUser:user password:password site:safari_simplifiedSiteNameForCredentialLookup creationDate:lastModifiedDate customTitle:customTitle groupName:sharedGroupName requestedHost:host];
          }

          else
          {
            firstObject = [v60 firstObject];
            domain = [firstObject domain];
            v29 = [(SFSafariCredential *)v22 initWithUser:user password:password site:safari_simplifiedSiteNameForCredentialLookup creationDate:lastModifiedDate customTitle:customTitle groupName:sharedGroupName requestedHost:domain];

            v12 = v61;
          }

          host2 = [lCopy host];
          defaultContext = [MEMORY[0x277D49B30] defaultContext];
          v33 = [v19 lastUsedDateForSite:host2 inContext:defaultContext];
          [(SFSafariCredential *)v29 setLastUsedDate:v33];

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v13 = v65;
          v34 = v65;
          v35 = [v34 countByEnumeratingWithState:&v74 objects:v82 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v75;
            while (2)
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v75 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                if ([v19 isDefaultCredentialForFullyQualifiedHostname:*(*(&v74 + 1) + 8 * i)])
                {
                  [(SFSafariCredential *)v29 setIsDefaultForAnAssociatedDomain:1];
                  goto LABEL_21;
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v74 objects:v82 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          [v12 addObject:v29];
          v39 = usernameAndWebsiteStringFromCredential(v29);
          [v68 addObject:v39];

          [v66 setObject:v19 forKey:v29];
          v17 = v63;
          v14 = v64;
          v16 = v67;
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
    }

    while (v16);
  }

  v40 = [v12 count];
  if (v40)
  {
    v41 = v40;
    v42 = 0;
    v72 = v40;
    do
    {
      v43 = [v12 objectAtIndexedSubscript:v42];
      v44 = usernameAndWebsiteStringFromCredential(v43);
      v45 = [v68 countForObject:v44];

      if (v45 != 1)
      {
        v46 = [v66 objectForKey:v43];
        sites = [v46 sites];
        firstObject2 = [sites firstObject];
        safari_simplifiedSiteNameForCredentialLookup2 = [firstObject2 safari_simplifiedSiteNameForCredentialLookup];

        v50 = [SFSafariCredential alloc];
        user2 = [v43 user];
        password2 = [v43 password];
        lastModifiedDate2 = [v46 lastModifiedDate];
        customTitle2 = [v46 customTitle];
        sharedGroupName2 = [v46 sharedGroupName];
        v56 = [(SFSafariCredential *)v50 initWithUser:user2 password:password2 site:safari_simplifiedSiteNameForCredentialLookup2 creationDate:lastModifiedDate2 customTitle:customTitle2 groupName:sharedGroupName2 requestedHost:0];

        v13 = v65;
        lastUsedDate = [v43 lastUsedDate];
        [(SFSafariCredential *)v56 setLastUsedDate:lastUsedDate];

        v41 = v72;
        -[SFSafariCredential setIsDefaultForAnAssociatedDomain:](v56, "setIsDefaultForAnAssociatedDomain:", [v43 isDefaultForAnAssociatedDomain]);
        [v61 replaceObjectAtIndex:v42 withObject:v56];

        v12 = v61;
      }

      ++v42;
    }

    while (v41 != v42);
  }

  [selfCopy _sortCredentials:v12 appID:dCopy usingApprovedSharedWebCredentialsDatabaseEntries:v60];

  return v12;
}

+ (void)getCanSaveCredentialsWithAppID:(id)d websiteURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SFSafariCredentialStore_getCanSaveCredentialsWithAppID_websiteURL_completionHandler___block_invoke;
  v10[3] = &unk_279B61DD8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [self _getAllowedActionForAppCredentialsWithAppID:d websiteURL:l user:0 password:0 shouldAnalyzeExistingCredentials:0 completionHandler:v10];
}

+ (void)getAllowedActionForAppCredentialsWithAppID:(id)d websiteURL:(id)l user:(id)user password:(id)password completionHandler:(id)handler
{
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __113__SFSafariCredentialStore_getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_completionHandler___block_invoke;
  v14[3] = &unk_279B61DD8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [self _getAllowedActionForAppCredentialsWithAppID:d websiteURL:l user:user password:password shouldAnalyzeExistingCredentials:1 completionHandler:v14];
}

+ (void)_getAllowedActionForAppCredentialsWithAppID:(id)d websiteURL:(id)l user:(id)user password:(id)password shouldAnalyzeExistingCredentials:(BOOL)credentials completionHandler:(id)handler
{
  dCopy = d;
  lCopy = l;
  userCopy = user;
  passwordCopy = password;
  handlerCopy = handler;
  if (([dCopy isEqualToString:@"com.apple.Preferences"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"0000000000.com.apple.findmy") || (+[SFAutoFillFeatureManager sharedFeatureManager](SFAutoFillFeatureManager, "sharedFeatureManager"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "shouldAutoFillPasswordsFromKeychain"), v19, (v20 & 1) == 0))
  {
LABEL_11:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0);
    goto LABEL_12;
  }

  if (userCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v27 = WBS_LOG_CHANNEL_PREFIXCredentials(isKindOfClass, v22);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SFSafariCredentialStore _getAllowedActionForAppCredentialsWithAppID:v27 websiteURL:userCopy user:? password:? shouldAnalyzeExistingCredentials:? completionHandler:?];
      }

      goto LABEL_11;
    }
  }

  v23 = dispatch_group_create();
  v24 = v23;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  if (dCopy)
  {
    dispatch_group_enter(v23);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke;
    v43[3] = &unk_279B61E00;
    v44 = v24;
    v45 = dCopy;
    v46 = v47;
    [self _getBundleIDForEnabledCredentialProvidersWithCompletionHandler:v43];
  }

  dispatch_group_enter(v24);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__1;
  v41[4] = __Block_byref_object_dispose__1;
  v42 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_2;
  v38[3] = &unk_279B61588;
  v40 = v41;
  v25 = v24;
  v39 = v25;
  [self _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:dCopy completionHandler:v38];
  v26 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_3;
  block[3] = &unk_279B61E28;
  v34 = v47;
  v33 = handlerCopy;
  v35 = v41;
  credentialsCopy = credentials;
  v29 = lCopy;
  selfCopy = self;
  v30 = userCopy;
  v31 = passwordCopy;
  v32 = dCopy;
  dispatch_group_notify(v25, v26, block);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v47, 8);

LABEL_12:
}

void __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] && (v4 = objc_msgSend(*(a1 + 40), "rangeOfString:", @"."), v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = [*(a1 + 40) substringFromIndex:v4 + 1];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([v5 isEqualToString:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_3(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
    return;
  }

  v43 = [MEMORY[0x277CBEB18] array];
  v46 = [MEMORY[0x277CBEB58] set];
  v45 = [MEMORY[0x277CBEB58] set];
  v47 = [MEMORY[0x277CBEB58] set];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v3 = *(*(*(a1 + 80) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v4)
  {
    v48 = 0;
    goto LABEL_26;
  }

  v5 = v4;
  v48 = 0;
  v6 = *v55;
  do
  {
    v7 = 0;
    do
    {
      if (*v55 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v54 + 1) + 8 * v7);
      v9 = [v8 domain];
      if (v9)
      {
        v10 = [v8 service];
        if (v10 <= 4)
        {
          if ((v10 - 1) < 4)
          {
            goto LABEL_13;
          }

LABEL_15:
          v12 = [v9 safari_highLevelDomainForPasswordManager];
          v13 = [*(a1 + 32) host];
          v14 = [v13 safari_highLevelDomainForPasswordManager];
          v15 = [v12 isEqualToString:v14];

          if (v15)
          {
            v16 = v9;

            v48 = v16;
          }

          goto LABEL_17;
        }

        v11 = v46;
        if (v10 != 7)
        {
          if (v10 == 6)
          {
LABEL_13:
            v11 = v47;
          }

          else
          {
            v11 = v45;
            if (v10 != 5)
            {
              goto LABEL_15;
            }
          }
        }

        [v11 addObject:v9];
        goto LABEL_15;
      }

LABEL_17:

      ++v7;
    }

    while (v5 != v7);
    v17 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
    v5 = v17;
  }

  while (v17);
LABEL_26:

  if (*(a1 + 96) == 1)
  {
    v18 = [MEMORY[0x277D49B58] sharedStore];
    v19 = [v18 savedAccountsWithPasswords];

    v20 = [*(a1 + 88) _highLevelDomainsFromDatabaseEntries:*(*(*(a1 + 80) + 8) + 40)];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v51;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v50 + 1) + 8 * i);
          if ([*(a1 + 88) _savedAccount:v26 isRelatedToEntryHighLevelDomains:v20 andWebsiteURL:*(a1 + 32)])
          {
            v27 = [v26 user];
            if ([v27 isEqualToString:*(a1 + 40)])
            {
              v28 = [v26 protectionSpaces];
              [v43 addObjectsFromArray:v28];
            }

            v29 = [v26 user];
            if ([v29 isEqualToString:*(a1 + 40)])
            {
              [v26 password];
              v44 = v27;
              v30 = v23;
              v31 = v24;
              v32 = v20;
              v34 = v33 = v21;
              v35 = [v34 isEqualToString:*(a1 + 48)];

              v21 = v33;
              v20 = v32;
              v24 = v31;
              v23 = v30;
              v27 = v44;

              if (v35)
              {
                v36 = v43;
                (*(*(a1 + 64) + 16))();

                goto LABEL_45;
              }
            }

            else
            {
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v23);
    }
  }

  v36 = v43;
  if ([v43 count])
  {
    (*(*(a1 + 64) + 16))();
LABEL_45:
    v37 = v48;
  }

  else
  {
    v37 = v48;
    if (*(a1 + 32))
    {
      v38 = v48;
      v39 = 0;
    }

    else
    {
      v40 = *(a1 + 88);
      v41 = *(a1 + 56);
      v42 = [v40 appNamesForAppID:v41];
      v49 = 0;
      v38 = [v40 _bestDomainFromApprovedDomainsForWebCredentials:v46 appLinks:v45 otherServices:v47 appID:v41 appNames:v42 allDomains:&v49];
      v39 = v49;
    }

    (*(*(a1 + 64) + 16))();
  }
}

+ (id)appNamesForAppID:(id)d
{
  if (d)
  {
    v3 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:d error:0];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v5 = [preferredLanguages arrayByAddingObject:@"en"];

    v6 = MEMORY[0x277CBEB98];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__SFSafariCredentialStore_appNamesForAppID___block_invoke;
    v12[3] = &unk_279B61E50;
    v13 = v3;
    v7 = v3;
    v8 = [v5 safari_mapAndFilterObjectsUsingBlock:v12];
    v9 = [v6 setWithArray:v8];
    allObjects = [v9 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

id __44__SFSafariCredentialStore_appNamesForAppID___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [v2 localizedNameWithPreferredLocalizations:{v5, v8, v9}];

  return v6;
}

+ (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(MEMORY[0x277D499C0]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__SFSafariCredentialStore_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke;
  v7[3] = &unk_279B61E78;
  v8 = v4;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v4;
  [v6 fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:v7];
}

+ (id)_bestDomainFromApprovedDomainsForWebCredentials:(id)credentials appLinks:(id)links otherServices:(id)services appID:(id)d appNames:(id)names allDomains:(id *)domains
{
  v94 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  linksCopy = links;
  servicesCopy = services;
  dCopy = d;
  namesCopy = names;
  if ([credentialsCopy count] || objc_msgSend(linksCopy, "count") || objc_msgSend(servicesCopy, "count"))
  {
    v16 = [dCopy rangeOfString:@"."];
    v17 = namesCopy;
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [dCopy substringFromIndex:v16 + 1];

      dCopy = v18;
    }

    lowercaseString = [dCopy lowercaseString];

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    allObjects = [credentialsCopy allObjects];
    allObjects2 = [linksCopy allObjects];
    v21 = [allObjects arrayByAddingObjectsFromArray:allObjects2];
    allObjects3 = [servicesCopy allObjects];
    v23 = [v21 arrayByAddingObjectsFromArray:allObjects3];

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v23;
    v86 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (!v86)
    {
      v83 = 0;
      namesCopy = v17;
      goto LABEL_57;
    }

    v24 = -1;
    v83 = 0;
    v84 = *v90;
    v25 = 0x279B60000uLL;
    namesCopy = v17;
    domainsCopy4 = domains;
    selfCopy3 = self;
    v69 = credentialsCopy;
    v70 = servicesCopy;
    v76 = v17;
    while (1)
    {
      v28 = 0;
      do
      {
        if (*v90 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v89 + 1) + 8 * v28);
        v30 = [selfCopy3 _scoreForDomain:v29 domainsApprovedForWebCredentials:credentialsCopy domainsApprovedForAppLinks:linksCopy domainsApprovedForOtherServices:servicesCopy appNames:{namesCopy, v67}];
        v31 = v30;
        if (v30 <= v24)
        {
          if (v30 != v24)
          {
            goto LABEL_44;
          }

          v32 = v29;
          v33 = v83;
          v80 = lowercaseString;
          if (([v33 hasSuffix:v32] & 1) == 0)
          {
            if ([v32 hasSuffix:v33])
            {
              goto LABEL_43;
            }

            v75 = v24;
            v35 = v33;
            v36 = v32;
            v37 = [v36 hasPrefix:@"www."];
            v38 = [v35 hasPrefix:@"www."];
            v73 = v38;
            v39 = [v36 hasSuffix:@".com"];
            v71 = v36;

            v40 = 1;
            if (v37)
            {
              v40 = 2;
            }

            v41 = v39 == 0;
            v25 = 0x279B60000;
            if (v41)
            {
              v42 = v37;
            }

            else
            {
              v42 = v40;
            }

            v43 = [v35 hasSuffix:@".com"];
            v72 = v35;

            v24 = v75;
            v44 = 1;
            if (v38)
            {
              v44 = 2;
            }

            v41 = v43 == 0;
            credentialsCopy = v69;
            servicesCopy = v70;
            if (v41)
            {
              v44 = v73;
            }

            v45 = v42 >= v44;
            v46 = v42 > v44;
            selfCopy3 = self;
            if (v45)
            {
              v47 = 0;
            }

            else
            {
              v47 = -1;
            }

            if (v46)
            {
              v47 = 1;
            }

            if (v47 == -1)
            {
              goto LABEL_43;
            }

            if (v47 != 1)
            {
              v48 = [v71 safari_countOfString:@"."];
              v49 = [v72 safari_countOfString:@"."];
              v45 = v48 >= v49;
              v50 = v48 > v49;
              servicesCopy = v70;
              if (v45)
              {
                if (v50)
                {
                  goto LABEL_43;
                }

                v51 = [v71 componentsSeparatedByString:@"."];
                reverseObjectEnumerator = [v51 reverseObjectEnumerator];
                allObjects4 = [reverseObjectEnumerator allObjects];
                v74 = [allObjects4 componentsJoinedByString:@"."];

                v54 = [v72 componentsSeparatedByString:@"."];
                reverseObjectEnumerator2 = [v54 reverseObjectEnumerator];
                allObjects5 = [reverseObjectEnumerator2 allObjects];
                v68 = [allObjects5 componentsJoinedByString:@"."];

                v25 = 0x279B60000uLL;
                credentialsCopy = v69;

                v67 = lengthOfLongestCommonSubstring(v80, v74);
                v57 = v68;
                v58 = lengthOfLongestCommonSubstring(v80, v68);
                if (v67 <= v58)
                {
                  if (v67 < v58)
                  {
                    goto LABEL_42;
                  }

                  v59 = [v71 length];
                  v46 = v59 > [v72 length];
                  v57 = v68;
                  if (!v46)
                  {
                    v60 = [v71 length];
                    v45 = v60 >= [v72 length];
                    v57 = v68;
                    if (!v45)
                    {
LABEL_42:

                      servicesCopy = v70;
LABEL_43:

                      namesCopy = v76;
                      domainsCopy4 = domains;
                      goto LABEL_44;
                    }

                    v67 = [v71 compare:v72];

                    servicesCopy = v70;
                    namesCopy = v76;
                    domainsCopy4 = domains;
                    if (v67 != -1)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_15;
                  }
                }

                servicesCopy = v70;
              }
            }
          }

          namesCopy = v76;
          domainsCopy4 = domains;
        }

LABEL_15:
        if (([*(v25 + 3208) domainIsProhibitedForSavingCredentials:{v29, v67}] & 1) == 0)
        {
          v34 = v29;

          [orderedSet insertObject:v34 atIndex:0];
          v24 = v31;
          v83 = v34;
          selfCopy3 = self;
          goto LABEL_47;
        }

LABEL_44:
        if (domainsCopy4 && ([*(v25 + 3208) domainIsProhibitedForSavingCredentials:v29] & 1) == 0)
        {
          [orderedSet addObject:v29];
        }

LABEL_47:
        ++v28;
      }

      while (v86 != v28);
      v61 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
      v86 = v61;
      if (!v61)
      {
LABEL_57:

        v62 = v83;
        if (([credentialsCopy containsObject:v83] & 1) == 0)
        {
          safari_highLevelDomainForPasswordManager = [v83 safari_highLevelDomainForPasswordManager];

          v62 = safari_highLevelDomainForPasswordManager;
        }

        dCopy = lowercaseString;
        if (domains)
        {
          array = [orderedSet array];
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __124__SFSafariCredentialStore__bestDomainFromApprovedDomainsForWebCredentials_appLinks_otherServices_appID_appNames_allDomains___block_invoke;
          v87[3] = &unk_279B61E50;
          v88 = credentialsCopy;
          *domains = [array safari_mapObjectsUsingBlock:v87];
        }

        safari_simplifiedSiteNameForCredentialLookup = [v62 safari_simplifiedSiteNameForCredentialLookup];

        goto LABEL_62;
      }
    }
  }

  safari_simplifiedSiteNameForCredentialLookup = 0;
  if (domains)
  {
    *domains = 0;
  }

LABEL_62:

  return safari_simplifiedSiteNameForCredentialLookup;
}

id __124__SFSafariCredentialStore__bestDomainFromApprovedDomainsForWebCredentials_appLinks_otherServices_appID_appNames_allDomains___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v5 = [v3 safari_highLevelDomainForPasswordManager];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    v4 = v7;
  }

  return v4;
}

+ (void)_getDomainsApprovedForWebCredentials:(id *)credentials domainsApprovedForAppLinks:(id *)links domainsApprovedForOtherServices:(id *)services fromDatabaseEntries:(id)entries
{
  linksCopy = links;
  v28 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = entriesCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        domain = [v16 domain];
        if (domain)
        {
          service = [v16 service];
          if (service <= 4)
          {
            if ((service - 1) >= 4)
            {
              goto LABEL_11;
            }

LABEL_9:
            v19 = v10;
LABEL_10:
            [v19 addObject:domain];
            goto LABEL_11;
          }

          v19 = v8;
          if (service == 7)
          {
            goto LABEL_10;
          }

          if (service == 6)
          {
            goto LABEL_9;
          }

          v19 = v9;
          if (service == 5)
          {
            goto LABEL_10;
          }
        }

LABEL_11:

        ++v15;
      }

      while (v13 != v15);
      v20 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v13 = v20;
    }

    while (v20);
  }

  *credentials = [v8 copy];
  *linksCopy = [v9 copy];
  *services = [v10 copy];
}

+ (void)bestDomainForAppID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SFSafariCredentialStore_bestDomainForAppID_completionHandler___block_invoke;
  v8[3] = &unk_279B61EA0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [self bestDomainAndAllApprovedDatabaseEntriesForAppID:d completionHandler:v8];
}

+ (void)bestDomainAndAllApprovedDatabaseEntriesForAppID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    if (dCopy)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __93__SFSafariCredentialStore_bestDomainAndAllApprovedDatabaseEntriesForAppID_completionHandler___block_invoke;
      v9[3] = &unk_279B61EC8;
      selfCopy = self;
      v10 = dCopy;
      v11 = v8;
      [self _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:v10 completionHandler:v9];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __93__SFSafariCredentialStore_bestDomainAndAllApprovedDatabaseEntriesForAppID_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = a2;
  [v3 _getDomainsApprovedForWebCredentials:&v14 domainsApprovedForAppLinks:&v13 domainsApprovedForOtherServices:&v12 fromDatabaseEntries:v4];
  v5 = v14;
  v6 = v13;
  v7 = v12;
  v8 = a1[6];
  v9 = a1[4];
  v10 = [v8 appNamesForAppID:v9];
  v11 = [v8 _bestDomainFromApprovedDomainsForWebCredentials:v5 appLinks:v6 otherServices:v7 appID:v9 appNames:v10 allDomains:0];

  (*(a1[5] + 16))();
}

+ (id)bestDomainForAutoFillFromDomains:(id)domains appID:(id)d
{
  v6 = MEMORY[0x277CBEB98];
  dCopy = d;
  domainsCopy = domains;
  v9 = [[v6 alloc] initWithArray:domainsCopy];

  v10 = [self appNamesForAppID:dCopy];
  v11 = [self _bestDomainFromApprovedDomainsForWebCredentials:v9 appLinks:0 otherServices:0 appID:dCopy appNames:v10 allDomains:0];

  return v11;
}

+ (BOOL)_savedAccount:(id)account isRelatedToEntryHighLevelDomains:(id)domains andWebsiteURL:(id)l
{
  v35[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  domainsCopy = domains;
  lCopy = l;
  highLevelDomain = [accountCopy highLevelDomain];
  v35[0] = highLevelDomain;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];

  v27 = accountCopy;
  additionalSites = [accountCopy additionalSites];
  v12 = [additionalSites safari_mapObjectsUsingBlock:&__block_literal_global_56];
  v13 = [v10 arrayByAddingObjectsFromArray:v12];

  v14 = lCopy == 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [domainsCopy containsObject:v20];
        if (lCopy)
        {
          host = [lCopy host];
          safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
          v24 = [v20 isEqualToString:safari_highLevelDomainForPasswordManager];

          v14 |= v24;
        }

        v17 |= v21;
      }

      v16 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
    v25 = v17 & v14;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

+ (void)_sortCredentials:(id)credentials appID:(id)d usingApprovedSharedWebCredentialsDatabaseEntries:(id)entries
{
  v40 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  dCopy = d;
  entriesCopy = entries;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = entriesCopy;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        service = [v17 service];
        domain = [v17 domain];
        if (service == 5)
        {
          v20 = v10;
        }

        else
        {
          v20 = v11;
        }

        if (service == 7)
        {
          v21 = v9;
        }

        else
        {
          v21 = v20;
        }

        [v21 addObject:domain];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v22 = [self appNamesForAppID:dCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__SFSafariCredentialStore__sortCredentials_appID_usingApprovedSharedWebCredentialsDatabaseEntries___block_invoke;
  v29[3] = &unk_279B61F10;
  v33 = v22;
  selfCopy = self;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v23 = v22;
  v24 = v11;
  v25 = v10;
  v26 = v9;
  [credentialsCopy sortWithOptions:16 usingComparator:v29];
}

uint64_t __99__SFSafariCredentialStore__sortCredentials_appID_usingApprovedSharedWebCredentialsDatabaseEntries___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[8];
  v8 = [v5 site];
  v9 = [v7 _scoreForDomain:v8 domainsApprovedForWebCredentials:a1[4] domainsApprovedForAppLinks:a1[5] domainsApprovedForOtherServices:a1[6] appNames:a1[7]];

  v10 = a1[8];
  v11 = [v6 site];
  v12 = [v10 _scoreForDomain:v11 domainsApprovedForWebCredentials:a1[4] domainsApprovedForAppLinks:a1[5] domainsApprovedForOtherServices:a1[6] appNames:a1[7]];

  if (v9 >= v12)
  {
    if (v9 <= v12)
    {
      v14 = [v5 lastUsedDate];
      v15 = [v6 lastUsedDate];
      v16 = v15;
      if (v14 && v15)
      {
        if ([v14 compare:v15] == -1)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }
      }

      else
      {
        if (v14)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (!(v14 | v15))
        {
          v17 = [v5 isDefaultForAnAssociatedDomain];
          v18 = [v6 isDefaultForAnAssociatedDomain];
          if ((v17 & 1) != 0 || !v18)
          {
            if (v18 & 1 | ((v17 & 1) == 0))
            {
              v27 = [v5 site];
              v19 = [v6 site];
              v20 = [v27 safari_simplifiedSiteNameForCredentialLookup];
              v21 = [v19 safari_simplifiedSiteNameForCredentialLookup];
              v28 = v20;
              v22 = numberOfDotsInString(v20);
              v23 = numberOfDotsInString(v21);
              v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
              v13 = [v24 compare:v25];

              if (!v13)
              {
                v13 = [v27 caseInsensitiveCompare:v19];
              }
            }

            else
            {
              v13 = -1;
            }
          }

          else
          {
            v13 = 1;
          }
        }
      }
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (int64_t)_scoreForDomain:(id)domain domainsApprovedForWebCredentials:(id)credentials domainsApprovedForAppLinks:(id)links domainsApprovedForOtherServices:(id)services appNames:(id)names
{
  v39 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  linksCopy = links;
  servicesCopy = services;
  namesCopy = names;
  if ([credentials containsObject:domainCopy])
  {
    v15 = 6;
  }

  else
  {
    v15 = 0;
  }

  if ([linksCopy containsObject:domainCopy])
  {
    v15 += 2;
  }

  v16 = v15 | [servicesCopy containsObject:domainCopy];
  safari_stringByRemovingTopLevelDomainFromHost = [domainCopy safari_stringByRemovingTopLevelDomainFromHost];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = namesCopy;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        if ([safari_stringByRemovingTopLevelDomainFromHost safari_isCaseInsensitiveEqualToString:*(*(&v33 + 1) + 8 * i)])
        {
          v16 += 3;
          goto LABEL_25;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v18;
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        if ([safari_stringByRemovingTopLevelDomainFromHost safari_hasCaseInsensitiveSuffix:{*(*(&v29 + 1) + 8 * j), v29}])
        {
          v16 += 2;
          goto LABEL_25;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  return v16;
}

+ (void)_getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID:(id)d maximumNumberOfEntriesToReturn:(unint64_t)return completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke;
  v12[3] = &unk_279B61FB0;
  selfCopy = self;
  returnCopy = return;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  [self getApprovedSharedWebCredentialsEntriesForAppWithAppID:v11 completionHandler:v12];
}

void __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v38 = 0;
  v39[0] = 0;
  v37 = 0;
  v4 = a2;
  [v3 _getDomainsApprovedForWebCredentials:v39 domainsApprovedForAppLinks:&v38 domainsApprovedForOtherServices:&v37 fromDatabaseEntries:v4];
  v5 = v39[0];
  v6 = v38;
  v7 = v37;
  v8 = [*(a1 + 48) appNamesForAppID:*(a1 + 32)];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_2;
  aBlock[3] = &unk_279B61F38;
  v10 = v9;
  v11 = *(a1 + 48);
  v31 = v10;
  v36 = v11;
  v12 = v5;
  v32 = v12;
  v13 = v6;
  v33 = v13;
  v14 = v7;
  v34 = v14;
  v15 = v8;
  v35 = v15;
  v16 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_3;
  v28[3] = &unk_279B61F60;
  v17 = v16;
  v29 = v17;
  v18 = [v4 sortedArrayUsingComparator:v28];

  v19 = [MEMORY[0x277CBEB58] set];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_4;
  v26 = &unk_279B61F88;
  v27 = v19;
  v20 = v19;
  v21 = [v18 safari_mapAndFilterObjectsUsingBlock:&v23];

  if ([v21 count] > *(a1 + 56))
  {
    v22 = [v21 subarrayWithRange:0];

    v21 = v22;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = [*(a1 + 72) _scoreForDomain:v3 domainsApprovedForWebCredentials:*(a1 + 40) domainsApprovedForAppLinks:*(a1 + 48) domainsApprovedForOtherServices:*(a1 + 56) appNames:*(a1 + 64)];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v3];
  }

  return v6;
}

uint64_t __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 service];
  v8 = [v6 service];
  if (v7 == v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 domain];
    v11 = (*(v9 + 16))(v9, v10);
    v12 = *(a1 + 32);
    v13 = [v5 domain];
    v14 = v11 - (*(v12 + 16))(v12, v13);
  }

  else if (v7 > v8)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

id __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v4];
    v5 = v3;
  }

  return v5;
}

+ (void)_approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([dCopy length])
  {
    [self _approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8]);
  }
}

+ (void)_approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!quirksManager)
  {
    v8 = objc_alloc(MEMORY[0x277D499D8]);
    safari_safariCoreBundle = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
    v10 = [safari_safariCoreBundle URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    safari_autoFillQuirksDownloadDirectoryURL = [defaultManager safari_autoFillQuirksDownloadDirectoryURL];
    v13 = [v8 initWithBuiltInQuirksURL:v10 downloadsDirectoryURL:safari_autoFillQuirksDownloadDirectoryURL resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x277D49D10] updateInterval:0.0];
    v14 = quirksManager;
    quirksManager = v13;

    [quirksManager setShouldAttemptToDownloadConfiguration:0];
    [quirksManager beginLoadingQuirksFromDisk];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__SFSafariCredentialStore__approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID_completionHandler___block_invoke;
  v17[3] = &unk_279B61EC8;
  v19 = handlerCopy;
  selfCopy = self;
  v18 = dCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  [self _sharedWebCredentialsDatabaseEntriesForAppWithAppID:v16 completionHandler:v17];
}

void __105__SFSafariCredentialStore__approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [a2 safari_filterObjectsUsingBlock:&__block_literal_global_79];
  v4 = [v3 mutableCopy];
  if ([*(a1 + 48) _shouldUseQuirks])
  {
    v25 = v3;
    v5 = [quirksManager appToWebsiteAssociationManager];
    v6 = [v5 domainsWithAssociatedCredentialsForAppID:*(a1 + 32)];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[SFSharedWebCredentialsDatabaseEntry alloc] _initWithDomain:*(*(&v39 + 1) + 8 * i) appID:*(a1 + 32) service:7 isApproved:1];
          [v4 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v9);
    }

    v24 = v7;

    v28 = [quirksManager associatedDomainsManager];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v4 copy];
    v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v29)
    {
      v27 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v13;
          v14 = *(*(&v35 + 1) + 8 * v13);
          v15 = [v14 domain];
          v16 = [v28 domainsWithAssociatedCredentialsForDomain:v15];
          v17 = [v16 allObjects];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v32;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = -[SFSharedWebCredentialsDatabaseEntry _initWithDomain:appID:service:isApproved:]([SFSharedWebCredentialsDatabaseEntry alloc], "_initWithDomain:appID:service:isApproved:", *(*(&v31 + 1) + 8 * j), *(a1 + 32), [v14 service], 1);
                [v4 addObject:v23];
              }

              v20 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v20);
          }

          v13 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v29);
    }

    v3 = v25;
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_sharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)d completionHandler:(id)handler
{
  v5 = MEMORY[0x277D547B0];
  handlerCopy = handler;
  dCopy = d;
  v8 = [[v5 alloc] initWithServiceType:0 applicationIdentifier:dCopy domain:0];

  v15 = 0;
  v9 = [MEMORY[0x277D547A8] serviceDetailsWithServiceSpecifier:v8 error:&v15];
  v10 = v15;
  v12 = v10;
  if (v10)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCredentials(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SFSafariCredentialStore _sharedWebCredentialsDatabaseEntriesForAppWithAppID:v13 completionHandler:v12];
    }

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8]);
  }

  else
  {
    v14 = [v9 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_84];
    handlerCopy[2](handlerCopy, v14);

    handlerCopy = v14;
  }
}

SFSharedWebCredentialsDatabaseEntry *__97__SFSafariCredentialStore__sharedWebCredentialsDatabaseEntriesForAppWithAppID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFSharedWebCredentialsDatabaseEntry alloc] initWithServiceDetails:v2];

  return v3;
}

+ (BOOL)_appIsEntitledWebBrowser:(id)browser
{
  if (!browser)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:browser error:0];
  entitlements = [v3 entitlements];
  v5 = objc_opt_self();
  v6 = [entitlements objectForKey:@"com.apple.developer.web-browser" ofClass:v5];

  LOBYTE(entitlements) = [v6 BOOLValue];
  return entitlements;
}

+ (id)_credentialProviderExtensionHelperProxy
{
  v2 = objc_alloc_init(SFCredentialProviderExtensionHelperProxy);

  return v2;
}

+ (void)_getExternalCredentialsForAppID:(id)d matchingSharedWebCredentialsDatabaseEntries:(id)entries websiteURL:(id)l isEntitledWebBrowser:(BOOL)browser hasPasskeyRequest:(BOOL)request completion:(id)completion
{
  requestCopy = request;
  browserCopy = browser;
  v32[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  entriesCopy = entries;
  lCopy = l;
  completionCopy = completion;
  if (lCopy && browserCopy)
  {
    host = [lCopy host];
    v19 = host;
    if (host)
    {
      v32[0] = host;
      safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
      v32[1] = safari_highLevelDomainForPasswordManager;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = [entriesCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_87];
  }

  if ([v21 count])
  {
    _credentialProviderExtensionHelperProxy = [self _credentialProviderExtensionHelperProxy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_2;
    aBlock[3] = &unk_279B62040;
    v26 = lCopy;
    selfCopy = self;
    v27 = dCopy;
    v28 = entriesCopy;
    v30 = completionCopy;
    v23 = _credentialProviderExtensionHelperProxy;
    v29 = v23;
    v24 = _Block_copy(aBlock);
    if (requestCopy)
    {
      [v23 fetchAllCredentialIdentitiesMatchingDomains:v21 completion:v24];
    }

    else
    {
      [v23 fetchPasswordCredentialIdentitiesMatchingDomains:v21 completion:v24];
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8]);
  }
}

void __164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_90];
  v4 = [*(a1 + 32) host];
  v5 = [v4 safari_highLevelDomainForPasswordManager];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_4;
  v11[3] = &unk_279B62018;
  v12 = v5;
  v6 = v5;
  v7 = [v3 safari_mapAndFilterObjectsUsingBlock:v11];
  v8 = [v7 mutableCopy];

  [*(a1 + 72) _sortCredentials:v8 appID:*(a1 + 40) usingApprovedSharedWebCredentialsDatabaseEntries:*(a1 + 48)];
  v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:v8];
  v10 = [v9 array];

  (*(*(a1 + 64) + 16))();
  [*(a1 + 56) invalidate];
}

SFSafariCredential *__164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 && ([v3 site], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "safari_highLevelDomainForPasswordManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "safari_isCaseInsensitiveEqualToString:", v7), v7, v6, !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [[SFSafariCredential alloc] initWithExternalCredential:v4];
  }

  return v9;
}

+ (id)textSuggestionHeaderForExternalCredential:(id)credential
{
  externalCredential = [credential externalCredential];
  v5 = [self titleForCredentialIdentity:externalCredential formURL:0];

  return v5;
}

+ (id)titleForCredentialIdentity:(id)identity formURL:(id)l
{
  identityCopy = identity;
  lCopy = l;
  v7 = +[SFAutoFillFeatureManager sharedFeatureManager];
  if ([v7 shouldAutoFillPasswordsFromKeychain])
  {
    v8 = 1;
  }

  else
  {
    v9 = +[SFCredentialProviderExtensionManager sharedManager];
    getEnabledExtensionsSynchronously = [v9 getEnabledExtensionsSynchronously];
    v8 = [getEnabledExtensionsSynchronously count] > 1;
  }

  site = [identityCopy site];
  host = [lCopy host];

  v13 = [host safari_isCaseInsensitiveEqualToString:site];
  if (!v13)
  {
    goto LABEL_14;
  }

  type = [identityCopy type];
  if (type <= 1)
  {
    if (!type)
    {
      goto LABEL_19;
    }

    if (type == 1)
    {
      if (v8)
      {
        v15 = MEMORY[0x277CCACA8];
LABEL_26:
        v19 = _WBSLocalizedString();
        owningExtensionState = [identityCopy owningExtensionState];
        localizedDisplayName = [owningExtensionState localizedDisplayName];
        [v15 stringWithFormat:v19, localizedDisplayName, v23];
        goto LABEL_27;
      }

      goto LABEL_33;
    }

LABEL_14:
    type2 = [identityCopy type];
    switch(type2)
    {
      case 4:
        v17 = MEMORY[0x277CCACA8];
        if (v8)
        {
LABEL_23:
          v19 = _WBSLocalizedString();
          owningExtensionState = [identityCopy owningExtensionState];
          localizedDisplayName = [owningExtensionState localizedDisplayName];
          [v17 stringWithFormat:v19, site, localizedDisplayName];
          v18 = LABEL_27:;

LABEL_29:
          goto LABEL_30;
        }

LABEL_28:
        v19 = _WBSLocalizedString();
        v18 = [v17 stringWithFormat:v19, site];
        goto LABEL_29;
      case 2:
        v17 = MEMORY[0x277CCACA8];
        if (v8)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      case 1:
        v17 = MEMORY[0x277CCACA8];
        if (v8)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
    }

LABEL_19:
    v18 = &stru_2875FD420;
    goto LABEL_30;
  }

  if (type == 2)
  {
    if (v8)
    {
      v15 = MEMORY[0x277CCACA8];
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (type != 4)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    v15 = MEMORY[0x277CCACA8];
    goto LABEL_26;
  }

LABEL_33:
  v18 = _WBSLocalizedString();
LABEL_30:

  return v18;
}

+ (void)_getBundleIDForEnabledCredentialProvidersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[SFCredentialProviderExtensionManager sharedManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__SFSafariCredentialStore__getBundleIDForEnabledCredentialProvidersWithCompletionHandler___block_invoke;
  v6[3] = &unk_279B62088;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 getEnabledExtensionsWithCompletion:v6];
}

void __90__SFSafariCredentialStore__getBundleIDForEnabledCredentialProvidersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_152];
  (*(v2 + 16))(v2, v3);
}

+ (void)getExternalPasskeyCredentialIdentitiesForDomains:(id)domains completionHandler:(id)handler
{
  handlerCopy = handler;
  domainsCopy = domains;
  _credentialProviderExtensionHelperProxy = [self _credentialProviderExtensionHelperProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__SFSafariCredentialStore_getExternalPasskeyCredentialIdentitiesForDomains_completionHandler___block_invoke;
  v10[3] = &unk_279B62088;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [_credentialProviderExtensionHelperProxy fetchPasskeyCredentialIdentitiesMatchingDomains:domainsCopy completion:v10];
}

void __94__SFSafariCredentialStore_getExternalPasskeyCredentialIdentitiesForDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_154];
  (*(*(a1 + 32) + 16))();
}

+ (void)getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _credentialProviderExtensionHelperProxy = [self _credentialProviderExtensionHelperProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SFSafariCredentialStore_getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B62088;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [_credentialProviderExtensionHelperProxy fetchAllPaskeyCredentialIdentitiesWithCompletion:v7];
}

void __90__SFSafariCredentialStore_getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_156];
  (*(*(a1 + 32) + 16))();
}

+ (void)getOneTimeCodeCredentialsForAppWithAppID:(id)d externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)domains websiteURL:(id)l completionHandler:(id)handler
{
  domainsCopy = domains;
  lCopy = l;
  handlerCopy = handler;
  dCopy = d;
  v14 = [self _appIsEntitledWebBrowser:dCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke;
  v18[3] = &unk_279B620F8;
  v19 = domainsCopy;
  v20 = lCopy;
  v23 = v14;
  v21 = handlerCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = lCopy;
  v17 = domainsCopy;
  [self _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:dCopy completionHandler:v18];
}

void __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_158_0];
  v4 = [v3 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_3;
        v15[3] = &unk_279B620B0;
        v15[4] = v10;
        if (([v4 safari_containsObjectPassingTest:v15] & 1) == 0)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if (![v4 count])
  {
    v11 = [*(a1 + 40) host];
    v12 = [v11 safari_highLevelDomainForPasswordManager];

    if (*(a1 + 64) != 1 || !v12)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_15;
    }

    [v4 addObject:v12];
  }

  v12 = [*(a1 + 56) _credentialProviderExtensionHelperProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_4;
  v13[3] = &unk_279B62088;
  v14 = *(a1 + 48);
  [v12 fetchOneTimeCodeCredentialIdentitiesMatchingDomains:v4 completion:v13];

LABEL_15:
}

void __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = [a2 sortedArrayUsingComparator:&__block_literal_global_161];
  v3 = *(a1 + 32);
  v4 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_163];
  (*(v3 + 16))(v3, v4);
}

SFSafariCredential *__153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFSafariCredential alloc] initWithExternalCredential:v2];

  return v3;
}

+ (void)_getAllowedActionForAppCredentialsWithAppID:(void *)a1 websiteURL:(uint64_t)a2 user:password:shouldAnalyzeExistingCredentials:completionHandler:.cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  LODWORD(v10) = 138412290;
  *(&v10 + 4) = objc_opt_class();
  v3 = *(&v10 + 4);
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v4, v5, "Attempted to submit credential with user name that is not a string, got type: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

+ (void)_sharedWebCredentialsDatabaseEntriesForAppWithAppID:(void *)a1 completionHandler:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v5, v6, "%{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end