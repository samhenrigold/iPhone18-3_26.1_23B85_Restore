@interface VSAccountStore
+ (id)sharedAccountStore;
- (BOOL)_insertAccount:(id)account inContext:(id)context error:(id *)error;
- (BOOL)_updateCachedFirstAccount;
- (NSArray)accounts;
- (NSUndoManager)undoManager;
- (VSAccountStore)init;
- (id)_accountForKeychainItem:(id)item;
- (id)_keychainItemsWithLimit:(unint64_t)limit;
- (id)_uniqueIdentifierForKeychainItem:(id)item;
- (id)changeObserver;
- (id)firstAccount;
- (id)firstAccountIfLoaded;
- (void)_fetchAccountsSimulatingExpiredToken:(BOOL)token forProviderIDs:(id)ds completion:(id)completion;
- (void)_insertLegacyKeychainItemForAccount:(id)account context:(id)context;
- (void)_insertModernKeychainItemForAccount:(id)account context:(id)context;
- (void)_sendLocalNotification;
- (void)_sendRemoteNotification;
- (void)_updateCachedFirstAccountWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchAccountsWithCompletionHandler:(id)handler;
- (void)firstAccountWithCompletionHandler:(id)handler;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)removeAccounts:(id)accounts withCompletionHandler:(id)handler;
- (void)saveAccounts:(id)accounts withCompletionHandler:(id)handler;
- (void)setUndoManager:(id)manager;
@end

@implementation VSAccountStore

+ (id)sharedAccountStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAccountStore_sharedAccountStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedAccountStore___vs_lazy_init_predicate != -1)
  {
    dispatch_once(&sharedAccountStore___vs_lazy_init_predicate, block);
  }

  v2 = sharedAccountStore___vs_lazy_init_variable;

  return v2;
}

uint64_t __36__VSAccountStore_sharedAccountStore__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedAccountStore___vs_lazy_init_variable;
  sharedAccountStore___vs_lazy_init_variable = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (VSAccountStore)init
{
  v19.receiver = self;
  v19.super_class = VSAccountStore;
  v2 = [(VSAccountStore *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSKeychainEditingContext);
    keychainEditingContext = v2->_keychainEditingContext;
    v2->_keychainEditingContext = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    keychainQueue = v2->_keychainQueue;
    v2->_keychainQueue = v5;

    [(NSOperationQueue *)v2->_keychainQueue setName:@"VSAccountStore"];
    [(NSOperationQueue *)v2->_keychainQueue setMaxConcurrentOperationCount:1];
    v7 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSAccountStoreDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v7;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
    v9 = objc_alloc_init(VSPreferences);
    preferences = v2->_preferences;
    v2->_preferences = v9;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v2);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __22__VSAccountStore_init__block_invoke;
    v16[3] = &unk_278B73400;
    objc_copyWeak(&v17, &location);
    v12 = [defaultCenter addObserverForName:@"VSAccountStoreDidChangeNotification" object:0 queue:0 usingBlock:v16];
    objc_storeWeak(&v2->_changeObserver, v12);

    v2->_needsUpdateCachedFirstAccount = 1;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __22__VSAccountStore_init__block_invoke_47;
    v14[3] = &unk_278B733D8;
    v15 = v2;
    VSPerformBlockOnMainThread(v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__VSAccountStore_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 object];

    if (v5 != WeakRetained)
    {
      v7 = VSDefaultLogObject(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Received local account store notification from another instance.", buf, 2u);
      }

      [WeakRetained setNeedsUpdateCachedFirstAccount:1];
      if (([WeakRetained isFirstAccountLoaded] & 1) == 0)
      {
        v8 = [WeakRetained keychainQueue];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __22__VSAccountStore_init__block_invoke_45;
        v9[3] = &unk_278B733D8;
        v10 = WeakRetained;
        [v8 addOperationWithBlock:v9];
      }
    }
  }
}

void __22__VSAccountStore_init__block_invoke_45(uint64_t a1)
{
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will update cached first account.", buf, 2u);
  }

  v3 = [*(a1 + 32) _updateCachedFirstAccount];
  if (v3)
  {
    v4 = VSDefaultLogObject(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Cached first account actually changed.", v5, 2u);
    }
  }
}

void __22__VSAccountStore_init__block_invoke_47(uint64_t a1)
{
  if (([*(a1 + 32) isFirstAccountLoaded] & 1) == 0)
  {
    v2 = [*(a1 + 32) keychainQueue];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __22__VSAccountStore_init__block_invoke_2;
    v3[3] = &unk_278B733D8;
    v4 = *(a1 + 32);
    [v2 addOperationWithBlock:v3];
  }
}

void __22__VSAccountStore_init__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _updateCachedFirstAccount];
  if (v1)
  {
    v2 = VSDefaultLogObject(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "After initialization, update revealed existing account.", v3, 2u);
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  if (WeakRetained)
  {
    [defaultCenter removeObserver:WeakRetained];
  }

  v5.receiver = self;
  v5.super_class = VSAccountStore;
  [(VSAccountStore *)&v5 dealloc];
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  v5 = [(VSAccountStore *)self keychainQueue:notifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__VSAccountStore_remoteNotifier_didReceiveRemoteNotificationWithUserInfo___block_invoke;
  v6[3] = &unk_278B733D8;
  v6[4] = self;
  [v5 addOperationWithBlock:v6];
}

- (void)_sendLocalNotification
{
  v3 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will send local account store change notificaiton.", buf, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = VSDefaultLogObject([defaultCenter postNotificationName:@"VSAccountStoreDidChangeNotification" object:self]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Did send local account store change notificaiton.", v6, 2u);
  }
}

- (void)_sendRemoteNotification
{
  v3 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will send remote account store change notificaiton.", buf, 2u);
  }

  remoteNotifier = [(VSAccountStore *)self remoteNotifier];
  [remoteNotifier postNotification];

  v6 = VSDefaultLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did send remote account store change notificaiton.", v7, 2u);
  }
}

- (id)_uniqueIdentifierForKeychainItem:(id)item
{
  itemCopy = item;
  v5 = [(VSAccountStore *)self _accountForKeychainItem:itemCopy];
  identityProviderID = [v5 identityProviderID];
  forceUnwrapObject = [identityProviderID forceUnwrapObject];
  v8 = [forceUnwrapObject hash];
  creationDate = [itemCopy creationDate];

  v10 = [creationDate hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10 ^ v8];

  return v11;
}

- (id)_accountForKeychainItem:(id)item
{
  itemCopy = item;
  v5 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
  v6 = VSNumberForFourCharCode(VSKeychainItemV2CreatorCode);
  v7 = objc_alloc_init([objc_opt_class() accountClass]);
  [v7 setAccountStore:self];
  creatorCode = [itemCopy creatorCode];
  v9 = [creatorCode isEqual:v5];

  if (v9)
  {
    generic = [itemCopy generic];
    data3 = [generic copy];

    [v7 setLegacyKeychainItem:itemCopy];
    account = [itemCopy account];
    [v7 setUsername:account];

    comment = [itemCopy comment];
    [v7 setPreferredAppID:comment];

    service = [itemCopy service];
    v15 = [service copy];
    v16 = [VSOptional optionalWithObject:v15];
    [v7 setOptionalIdentityProviderDisplayName:v16];

    v17 = [VSOptional optionalWithObject:data3];
    [v7 setIdentityProviderID:v17];

    [v7 setSynchronizable:{objc_msgSend(itemCopy, "isSynchronizable")}];
    typeCode = [itemCopy typeCode];
    v19 = VSNumberForFourCharCode(0x6174684Eu);
    LODWORD(v15) = [typeCode isEqual:v19];

    if (v15 || (VSNumberForFourCharCode(0x746F6B4Eu), v42 = objc_claimAutoreleasedReturnValue(), v43 = [typeCode isEqual:v42], v42, v43))
    {
      v45 = objc_opt_class();
    }

    else
    {
      v47 = VSErrorLogObject(v44);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [VSAccountStore _accountForKeychainItem:];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected token type code when deserializing account from keychain."];
      v45 = 0;
    }

    data = [itemCopy data];
    if (data)
    {
      v49 = [[v45 alloc] initWithSerializedData:data];
      v50 = [VSOptional optionalWithObject:v49];
      [v7 setAuthenticationToken:v50];
    }

    else
    {
      v49 = VSErrorLogObject(0);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        [VSAccountStore _accountForKeychainItem:];
      }
    }

LABEL_39:
    goto LABEL_40;
  }

  creatorCode2 = [itemCopy creatorCode];
  v21 = [creatorCode2 isEqual:v6];

  if (v21)
  {
    data2 = [itemCopy data];

    if (!data2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [keychainItem data] parameter must not be nil."];
    }

    data3 = [itemCopy data];
    v62 = 0;
    v24 = [MEMORY[0x277CCAC58] propertyListWithData:data3 options:0 format:0 error:&v62];
    v25 = v62;
    v26 = v25;
    if (v24)
    {
      v61 = data3;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = MEMORY[0x277CBEAD8];
        v28 = *MEMORY[0x277CBE660];
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        [v27 raise:v28 format:{@"Unexpectedly, result was %@, instead of NSDictionary.", v30}];
      }

      v31 = v24;
      [v7 setKeychainItem:itemCopy];
      v32 = [v31 objectForKey:@"u"];
      [v7 setUsername:v32];

      v33 = [v31 objectForKey:@"paid"];
      [v7 setPreferredAppID:v33];

      v34 = [v31 objectForKey:@"dn"];
      v35 = [VSOptional optionalWithObject:v34];
      [v7 setOptionalIdentityProviderDisplayName:v35];

      v36 = [v31 objectForKey:@"pid"];
      v37 = [VSOptional optionalWithObject:v36];
      [v7 setIdentityProviderID:v37];

      v38 = [v31 objectForKey:@"lhash"];
      [v7 setLegacyItemHash:v38];

      [v7 setSynchronizable:{objc_msgSend(itemCopy, "isSynchronizable")}];
      v39 = [v31 objectForKey:@"channels"];
      [v7 setChannelsData:v39];

      v40 = [v31 objectForKey:@"proto"];

      if (!v40)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [accountData objectForKey:VSAccountKeychainKeyScheme] parameter must not be nil."];
      }

      v41 = [v31 objectForKey:@"proto"];
      v60 = v26;
      if ([v41 isEqual:@"api"] || (v52 = objc_msgSend(v41, "isEqual:", @"saml"), v52))
      {
        v53 = objc_opt_class();
      }

      else
      {
        v54 = VSErrorLogObject(v52);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [VSAccountStore _accountForKeychainItem:];
        }

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected scheme when decoding account from 2.0 keychain item."];
        v53 = 0;
      }

      v55 = [v31 objectForKey:@"data"];

      if (!v55)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [accountData objectForKey:VSAccountKeychainKeyTokenData] parameter must not be nil."];
      }

      v56 = [v31 objectForKey:@"data"];
      v57 = [[v53 alloc] initWithSerializedData:v56];
      v58 = [VSOptional optionalWithObject:v57];
      [v7 setAuthenticationToken:v58];

      v26 = v60;
      data3 = v61;
    }

    else
    {
      v51 = VSErrorLogObject(v25);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [VSAccountStore _accountForKeychainItem:];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Failed to deserialize account data from keychain item data."];
    }

    goto LABEL_39;
  }

  v46 = VSErrorLogObject(v22);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [(VSAccountStore *)itemCopy _accountForKeychainItem:v46];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected creator code when deserialziing account from keychain item."];
LABEL_40:

  return v7;
}

- (void)_fetchAccountsSimulatingExpiredToken:(BOOL)token forProviderIDs:(id)ds completion:(id)completion
{
  tokenCopy = token;
  v157 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  keychainQueue = [(VSAccountStore *)self keychainQueue];
  v8 = [currentQueue isEqual:keychainQueue];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected operation queue for account fetch."];
  }

  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy_;
  v146 = __Block_byref_object_dispose_;
  v147 = MEMORY[0x277CBEBF8];
  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy_;
  v140 = __Block_byref_object_dispose_;
  v141 = 0;
  v9 = [(VSAccountStore *)self _keychainItemsWithLimit:0];
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke;
  v135[3] = &unk_278B73428;
  v135[4] = &v142;
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_2;
  v134[3] = &unk_278B73450;
  v134[4] = &v136;
  [v9 unwrapObject:v135 error:v134];

  if (v137[5])
  {
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_3;
    v131[3] = &unk_278B73478;
    v132 = completionCopy;
    v133 = &v136;
    VSPerformCompletionHandler(v131);
    v11 = v132;
  }

  else
  {
    v12 = VSDefaultLogObject(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v143[5];
      *buf = 138412290;
      v152 = v13;
      _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Fetched keychain items: %@", buf, 0xCu);
    }

    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v84 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v15 = v143[5];
    v16 = [v15 countByEnumeratingWithState:&v127 objects:v156 count:16];
    if (v16)
    {
      v17 = *v128;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v128 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v127 + 1) + 8 * i);
          data = [v19 data];
          v21 = data == 0;

          if (v21)
          {
            v23 = VSErrorLogObject(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v152 = v19;
              _os_log_fault_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_FAULT, "Invalid keychain item found: %@", buf, 0xCu);
            }

            [v14 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v127 objects:v156 count:16];
      }

      while (v16);
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v24 = v143[5];
    v25 = [v24 countByEnumeratingWithState:&v123 objects:v155 count:16];
    if (v25)
    {
      v26 = *v124;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v124 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v123 + 1) + 8 * j);
          if (([v14 containsObject:v28] & 1) == 0)
          {
            v29 = [(VSAccountStore *)self _uniqueIdentifierForKeychainItem:v28];
            creatorCode = [v28 creatorCode];
            v31 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
            v32 = [creatorCode isEqual:v31];

            v33 = v91;
            if ((v32 & 1) != 0 || ([v28 creatorCode], v34 = objc_claimAutoreleasedReturnValue(), VSNumberForFourCharCode(VSKeychainItemV2CreatorCode), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v34, "isEqual:", v35), v35, v34, v33 = v90, v36))
            {
              [v33 setObject:v28 forKey:v29];
            }

            else
            {
              v37 = VSErrorLogObject(v90);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v152 = v28;
                _os_log_error_impl(&dword_23AB8E000, v37, OS_LOG_TYPE_ERROR, "Fetched keychain item with unexpected type code: %@", buf, 0xCu);
              }
            }
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v123 objects:v155 count:16];
      }

      while (v25);
    }

    v39 = VSDefaultLogObject(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v90 count];
      v41 = [v91 count];
      *buf = 134218240;
      v152 = v40;
      v153 = 2048;
      v154 = v41;
      _os_log_impl(&dword_23AB8E000, v39, OS_LOG_TYPE_DEFAULT, "Fetched %lu modern items and %lu legacy items", buf, 0x16u);
    }

    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44 = [v91 count];
    if (v44 >= 2)
    {
      v45 = VSDefaultLogObject(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v45, OS_LOG_TYPE_DEFAULT, "deduplicating legacy items.", buf, 2u);
      }

      allValues = [v91 allValues];
      v47 = [allValues mutableCopy];

      [v47 sortUsingComparator:&__block_literal_global_3];
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_98;
      v121[3] = &unk_278B734C0;
      v122 = v14;
      [v47 enumerateObjectsUsingBlock:v121];
    }

    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_100;
    v115[3] = &unk_278B734E8;
    v115[4] = self;
    v48 = v84;
    v116 = v48;
    v83 = v91;
    v117 = v83;
    v92 = v14;
    v118 = v92;
    v49 = v43;
    v119 = v49;
    v50 = v42;
    v120 = v50;
    [v90 enumerateKeysAndObjectsUsingBlock:v115];
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_111;
    v111[3] = &unk_278B73510;
    v111[4] = self;
    v82 = v48;
    v112 = v82;
    v89 = v49;
    v113 = v89;
    v85 = v50;
    v114 = v85;
    [v83 enumerateKeysAndObjectsUsingBlock:v111];
    [v89 sortUsingComparator:&__block_literal_global_115];
    v51 = [v92 count];
    if (v51 || (v51 = [v85 count]) != 0)
    {
      v52 = VSDefaultLogObject(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [v92 count];
        v54 = [v85 count];
        *buf = 134218240;
        v152 = v53;
        v153 = 2048;
        v154 = v54;
        _os_log_impl(&dword_23AB8E000, v52, OS_LOG_TYPE_DEFAULT, "finished processing keychain items (delete=%lu modernize=%lu)", buf, 0x16u);
      }

      keychainEditingContext = [(VSAccountStore *)self keychainEditingContext];
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v56 = v92;
      v57 = [v56 countByEnumeratingWithState:&v107 objects:v150 count:16];
      if (v57)
      {
        v58 = *v108;
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v108 != v58)
            {
              objc_enumerationMutation(v56);
            }

            [keychainEditingContext deleteItem:{*(*(&v107 + 1) + 8 * k), v82}];
          }

          v57 = [v56 countByEnumeratingWithState:&v107 objects:v150 count:16];
        }

        while (v57);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v60 = v85;
      v61 = [v60 countByEnumeratingWithState:&v103 objects:v149 count:16];
      if (v61)
      {
        v62 = *v104;
        do
        {
          for (m = 0; m != v61; ++m)
          {
            if (*v104 != v62)
            {
              objc_enumerationMutation(v60);
            }

            [(VSAccountStore *)self _insertModernKeychainItemForAccount:*(*(&v103 + 1) + 8 * m) context:keychainEditingContext, v82];
          }

          v61 = [v60 countByEnumeratingWithState:&v103 objects:v149 count:16];
        }

        while (v61);
      }

      v64 = (v137 + 5);
      obj = v137[5];
      [keychainEditingContext save:&obj];
      objc_storeStrong(v64, obj);
    }

    if (tokenCopy)
    {
      v51 = [dsCopy count];
      if (v51)
      {
        if (!dsCopy)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The providerIDsOrNil parameter must not be nil."];
        }

        v65 = dsCopy;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v66 = v89;
        v67 = [v66 countByEnumeratingWithState:&v98 objects:v148 count:16];
        if (v67)
        {
          v68 = *v99;
          do
          {
            for (n = 0; n != v67; ++n)
            {
              if (*v99 != v68)
              {
                objc_enumerationMutation(v66);
              }

              v70 = *(*(&v98 + 1) + 8 * n);
              identityProviderID = [v70 identityProviderID];
              forceUnwrapObject = [identityProviderID forceUnwrapObject];
              v73 = [v65 containsObject:forceUnwrapObject];

              if (v73)
              {
                v75 = VSDefaultLogObject(v74);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v152 = v70;
                  _os_log_impl(&dword_23AB8E000, v75, OS_LOG_TYPE_DEFAULT, "simulate expired token enabled, mutating token expiration for account: %@", buf, 0xCu);
                }

                authenticationToken = [v70 authenticationToken];
                forceUnwrapObject2 = [authenticationToken forceUnwrapObject];

                distantPast = [MEMORY[0x277CBEAA8] distantPast];
                [forceUnwrapObject2 setExpirationDate:distantPast];
              }
            }

            v67 = [v66 countByEnumeratingWithState:&v98 objects:v148 count:16];
          }

          while (v67);
        }
      }
    }

    v79 = VSDefaultLogObject(v51);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = v137[5];
      *buf = 138412546;
      v152 = v89;
      v153 = 2112;
      v154 = v80;
      _os_log_impl(&dword_23AB8E000, v79, OS_LOG_TYPE_DEFAULT, "fetched accounts: %@ with error: %@", buf, 0x16u);
    }

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_120;
    v94[3] = &unk_278B73558;
    v96 = completionCopy;
    v81 = v89;
    v95 = v81;
    v97 = &v136;
    VSPerformCompletionHandler(v94);

    v11 = v83;
  }

  _Block_object_dispose(&v136, 8);
  _Block_object_dispose(&v142, 8);
}

uint64_t __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 modificationDate];
  v7 = [v5 modificationDate];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
LABEL_3:
      v9 = [v8 compare:v6];
      goto LABEL_10;
    }
  }

  else
  {
    v10 = VSErrorLogObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_93_cold_1();
    }

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v11 = VSErrorLogObject(v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_93_cold_1();
  }

  v9 = 1;
LABEL_10:

  return v9;
}

void __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_98(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = VSDefaultLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Will mark duplicate legacy keychain item for deletion: %@", &v8, 0xCu);
    }

    [*(a1 + 32) addObject:v6];
  }
}

void __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_100(id *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1[4] _accountForKeychainItem:v4];
  v6 = [v5 legacyItemHash];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [account legacyItemHash] parameter must not be nil."];
  }

  v7 = [v5 legacyItemHash];
  v8 = VSDefaultLogObject([a1[5] addObject:v7]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v7;
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "modern keychain item has legacy equivalent with hash %@", &v29, 0xCu);
  }

  v9 = [a1[6] objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = [a1[7] containsObject:v11];
    if (v12)
    {
      v13 = VSDefaultLogObject(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Modern item has legacy item marked for deletion, deleting modern item.", &v29, 2u);
      }

      [a1[7] addObject:v4];
    }

    else
    {
      [v5 setLegacyKeychainItem:v11];
      [a1[8] addObject:v5];
      v15 = [a1[4] _accountForKeychainItem:v11];
      v16 = [v15 contentsHash];
      v17 = [v5 contentsHash];
      if (v16 != v17)
      {
        v18 = VSDefaultLogObject(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "Legacy keychain item and modern keychain item contents do not match.", &v29, 2u);
        }

        v19 = [v4 modificationDate];
        v20 = [v11 modificationDate];

        if (!v20)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [legacyItem modificationDate] parameter must not be nil."];
        }

        v21 = [v11 modificationDate];
        v22 = [v19 vs_isBefore:v21];

        v24 = VSDefaultLogObject(v23);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v25)
          {
            LOWORD(v29) = 0;
            _os_log_impl(&dword_23AB8E000, v24, OS_LOG_TYPE_DEFAULT, "Legacy keychain item has the most recent values, preferring them over the modern item values.", &v29, 2u);
          }

          v26 = [v15 authenticationToken];
          [v5 setAuthenticationToken:v26];

          v27 = [v15 preferredAppID];
          [v5 setPreferredAppID:v27];

          v28 = [v15 username];
          [v5 setUsername:v28];

          [a1[9] addObject:v5];
        }

        else
        {
          if (v25)
          {
            LOWORD(v29) = 0;
            _os_log_impl(&dword_23AB8E000, v24, OS_LOG_TYPE_DEFAULT, "Modern keychain item has the most recent values, keeping them.", &v29, 2u);
          }
        }
      }
    }
  }

  else
  {
    v14 = VSDefaultLogObject(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Modern item without legacy item found, assuming sign out from legacy device.", &v29, 2u);
    }

    [a1[7] addObject:v4];
  }
}

void __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_111(id *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1[4] _uniqueIdentifierForKeychainItem:v4];
  v6 = VSDefaultLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 creationDate];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "legacy keychain item has hash %@ (cdat=%@)", &v11, 0x16u);
  }

  v8 = [a1[5] containsObject:v5];
  if ((v8 & 1) == 0)
  {
    v9 = VSDefaultLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Legacy keychain item found without matching modern item.", &v11, 2u);
    }

    v10 = [a1[4] _accountForKeychainItem:v4];
    [a1[6] addObject:v10];
    [a1[7] addObject:v10];
  }
}

uint64_t __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 effectiveModificationDate];
  v6 = [v4 effectiveModificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_insertModernKeychainItemForAccount:(id)account context:(id)context
{
  accountCopy = account;
  contextCopy = context;
  keychainItem = [accountCopy keychainItem];
  if (keychainItem)
  {
    v9 = keychainItem;
  }

  else
  {
    v10 = [VSKeychainGenericPassword alloc];
    v11 = VSKeychainItemKindGenericPassword(v10);
    v9 = [(VSKeychainItem *)v10 initWithItemKind:v11 insertIntoEditingContext:contextCopy];

    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keychainItemOrNil parameter must not be nil."];
    }
  }

  v12 = v9;
  [accountCopy setKeychainItem:v12];
  [(VSKeychainGenericPassword *)v12 setAccessGroup:@"com.apple.VideoSubscriberAccount"];
  v13 = VSNumberForFourCharCode(VSKeychainItemV2CreatorCode);
  [(VSKeychainGenericPassword *)v12 setCreatorCode:v13];

  username = [accountCopy username];
  [(VSKeychainGenericPassword *)v12 setAccount:username];

  -[VSKeychainGenericPassword setSynchronizable:](v12, "setSynchronizable:", [accountCopy isSynchronizable]);
  [(VSKeychainGenericPassword *)v12 setViewHint:*MEMORY[0x277CDC198]];
  v15 = VSNumberForFourCharCode(0x746F6B32u);
  [(VSKeychainGenericPassword *)v12 setTypeCode:v15];

  v16 = MEMORY[0x277CCACA8];
  optionalIdentityProviderDisplayName = [accountCopy optionalIdentityProviderDisplayName];
  forceUnwrapObject = [optionalIdentityProviderDisplayName forceUnwrapObject];
  v19 = [v16 stringWithFormat:@"TV Provider: %@", forceUnwrapObject];

  [(VSKeychainGenericPassword *)v12 setService:v19];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  username2 = [accountCopy username];
  [v20 setObject:username2 forKeyedSubscript:@"u"];

  identityProviderID = [accountCopy identityProviderID];
  forceUnwrapObject2 = [identityProviderID forceUnwrapObject];
  [v20 setObject:forceUnwrapObject2 forKeyedSubscript:@"pid"];

  identityProviderDisplayName = [accountCopy identityProviderDisplayName];
  [v20 setObject:identityProviderDisplayName forKeyedSubscript:@"dn"];

  preferredAppID = [accountCopy preferredAppID];
  [v20 setObject:preferredAppID forKeyedSubscript:@"paid"];

  authenticationToken = [accountCopy authenticationToken];
  forceUnwrapObject3 = [authenticationToken forceUnwrapObject];
  serializedData = [forceUnwrapObject3 serializedData];
  [v20 setObject:serializedData forKeyedSubscript:@"data"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(accountCopy, "isSynchronizable")}];
  [v20 setObject:v29 forKeyedSubscript:@"sync"];

  channelsData = [accountCopy channelsData];
  [v20 setObject:channelsData forKeyedSubscript:@"channels"];

  legacyKeychainItem = [accountCopy legacyKeychainItem];
  v32 = [(VSAccountStore *)self _uniqueIdentifierForKeychainItem:legacyKeychainItem];

  [accountCopy setLegacyItemHash:v32];
  [v20 setObject:v32 forKeyedSubscript:@"lhash"];
  authenticationToken2 = [accountCopy authenticationToken];
  forceUnwrapObject4 = [authenticationToken2 forceUnwrapObject];
  LODWORD(serializedData) = [forceUnwrapObject4 isOpaque];

  if (serializedData)
  {
    v35 = @"api";
  }

  else
  {
    v35 = @"saml";
  }

  [v20 setObject:v35 forKeyedSubscript:@"proto"];
  authenticationToken3 = [accountCopy authenticationToken];
  forceUnwrapObject5 = [authenticationToken3 forceUnwrapObject];
  serializedData2 = [forceUnwrapObject5 serializedData];
  [v20 setObject:serializedData2 forKeyedSubscript:@"data"];

  v43 = 0;
  v39 = [MEMORY[0x277CCAC58] dataWithPropertyList:v20 format:200 options:0 error:&v43];
  v40 = v43;
  v41 = v40;
  if (!v39)
  {
    v42 = VSErrorLogObject(v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [VSAccountStore _insertModernKeychainItemForAccount:context:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Error serializing account to property list."];
  }

  [(VSKeychainItem *)v12 setData:v39];
}

- (void)_insertLegacyKeychainItemForAccount:(id)account context:(id)context
{
  accountCopy = account;
  contextCopy = context;
  legacyKeychainItem = [accountCopy legacyKeychainItem];
  if (legacyKeychainItem)
  {
    v7 = legacyKeychainItem;
  }

  else
  {
    v8 = [VSKeychainGenericPassword alloc];
    v9 = VSKeychainItemKindGenericPassword(v8);
    v7 = [(VSKeychainItem *)v8 initWithItemKind:v9 insertIntoEditingContext:contextCopy];

    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keychainItemOrNil parameter must not be nil."];
    }
  }

  v10 = v7;
  [accountCopy setLegacyKeychainItem:v10];
  [(VSKeychainGenericPassword *)v10 setAccessGroup:@"com.apple.VideoSubscriberAccount"];
  v11 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
  [(VSKeychainGenericPassword *)v10 setCreatorCode:v11];

  accountDescription = [accountCopy accountDescription];
  [(VSKeychainGenericPassword *)v10 setLabel:accountDescription];

  username = [accountCopy username];
  if ([username length])
  {
    [(VSKeychainGenericPassword *)v10 setAccount:username];
  }

  preferredAppID = [accountCopy preferredAppID];
  [(VSKeychainGenericPassword *)v10 setComment:preferredAppID];

  optionalIdentityProviderDisplayName = [accountCopy optionalIdentityProviderDisplayName];
  forceUnwrapObject = [optionalIdentityProviderDisplayName forceUnwrapObject];
  [(VSKeychainGenericPassword *)v10 setService:forceUnwrapObject];

  identityProviderID = [accountCopy identityProviderID];
  forceUnwrapObject2 = [identityProviderID forceUnwrapObject];
  [(VSKeychainGenericPassword *)v10 setGeneric:forceUnwrapObject2];

  authenticationToken = [accountCopy authenticationToken];
  forceUnwrapObject3 = [authenticationToken forceUnwrapObject];

  if ([forceUnwrapObject3 isOpaque])
  {
    v21 = 1953459022;
  }

  else
  {
    v21 = 1635018830;
  }

  v22 = VSNumberForFourCharCode(v21);
  [(VSKeychainGenericPassword *)v10 setTypeCode:v22];

  serializedData = [forceUnwrapObject3 serializedData];
  if ([serializedData length])
  {
    [(VSKeychainItem *)v10 setData:serializedData];
  }

  -[VSKeychainGenericPassword setSynchronizable:](v10, "setSynchronizable:", [accountCopy isSynchronizable]);
  [(VSKeychainGenericPassword *)v10 setViewHint:*MEMORY[0x277CDC198]];
}

- (id)_keychainItemsWithLimit:(unint64_t)limit
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(VSKeychainFetchRequest);
  v5 = VSKeychainItemKindGenericPassword(v4);
  v6 = [VSOptional optionalWithObject:v5];
  [(VSKeychainFetchRequest *)v4 setItemKind:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
  v31 = VSNumberForFourCharCode(VSKeychainItemV2CreatorCode);
  v32 = v8;
  v36[0] = v8;
  v36[1] = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"creatorCode", v30];
  [v7 addObject:v9];

  v10 = VSNumberForFourCharCode(0x6174684Eu);
  v11 = VSNumberForFourCharCode(0x746F6B4Eu);
  v12 = VSNumberForFourCharCode(0x746F6B32u);
  v29 = v10;
  v35[0] = v10;
  v35[1] = v11;
  v35[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"typeCode", v13];
  [v7 addObject:v14];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"accessGroup", @"com.apple.VideoSubscriberAccount"];
  [v7 addObject:v15];

  v16 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  [(VSKeychainFetchRequest *)v4 setPredicate:v16];

  [(VSKeychainFetchRequest *)v4 setFetchLimit:limit];
  [(VSKeychainFetchRequest *)v4 setIncludesDataValues:1];
  v17 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v18 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"label" ascending:1];
  v34[0] = v17;
  v34[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  [(VSKeychainFetchRequest *)v4 setSortDescriptors:v19];

  keychainEditingContext = [(VSAccountStore *)self keychainEditingContext];
  v33 = 0;
  v21 = [keychainEditingContext executeFetchRequest:v4 error:&v33];
  v22 = v33;

  if (v21)
  {
    v24 = [VSFailable failableWithObject:v21];
  }

  else
  {
    v25 = VSErrorLogObject(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [VSAccountStore _keychainItemsWithLimit:];
    }

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    }

    v24 = [VSFailable failableWithError:v22];
  }

  v26 = v24;
  if (!v24)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

  return v26;
}

- (NSUndoManager)undoManager
{
  keychainEditingContext = [(VSAccountStore *)self keychainEditingContext];
  undoManager = [keychainEditingContext undoManager];

  return undoManager;
}

- (void)setUndoManager:(id)manager
{
  managerCopy = manager;
  keychainEditingContext = [(VSAccountStore *)self keychainEditingContext];
  [keychainEditingContext setUndoManager:managerCopy];
}

- (id)firstAccountIfLoaded
{
  if ([(VSAccountStore *)self needsUpdateCachedFirstAccount]|| ([(VSAccountStore *)self cachedFirstAccount], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    firstAccount = 0;
  }

  else
  {
    firstAccount = [(VSAccountStore *)self firstAccount];
  }

  return firstAccount;
}

- (BOOL)_updateCachedFirstAccount
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  keychainQueue = [(VSAccountStore *)self keychainQueue];
  v5 = [currentQueue isEqual:keychainQueue];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected operation queue for updating cached account."];
  }

  v6 = objc_alloc_init(VSSemaphore);
  v7 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__VSAccountStore__updateCachedFirstAccount__block_invoke;
  v12[3] = &unk_278B735A8;
  v12[4] = self;
  v14 = &v15;
  v8 = v6;
  v13 = v8;
  v9 = [v7 blockOperationWithBlock:v12];
  [v9 start];
  [(VSSemaphore *)v8 wait];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __43__VSAccountStore__updateCachedFirstAccount__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__VSAccountStore__updateCachedFirstAccount__block_invoke_2;
  v4[3] = &unk_278B73580;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _updateCachedFirstAccountWithCompletion:v4];
}

- (void)_updateCachedFirstAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  keychainQueue = [(VSAccountStore *)self keychainQueue];
  v8 = [currentQueue isEqual:keychainQueue];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected operation queue for updating cached account."];
  }

  v9 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
  objc_initWeak(&location, v9);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke;
  v30[3] = &unk_278B73618;
  objc_copyWeak(&v31, &location);
  v30[4] = v33;
  [(VSDeveloperSettingsFetchOperation *)v9 setCompletionBlock:v30];
  v10 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
  objc_initWeak(&from, v10);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_179;
  v26[3] = &unk_278B73690;
  objc_copyWeak(&v28, &from);
  v11 = v5;
  v27 = v11;
  [(VSDeveloperIdentityProviderFetchAllOperation *)v10 setCompletionBlock:v26];
  objc_initWeak(&v25, self);
  v12 = MEMORY[0x277CCA8C8];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_185;
  v19 = &unk_278B736E0;
  objc_copyWeak(&v24, &v25);
  v22 = v33;
  v13 = v11;
  v20 = v13;
  v23 = v35;
  v14 = completionCopy;
  v21 = v14;
  v15 = [v12 blockOperationWithBlock:&v16];
  [(VSAsyncOperation *)v9 start:v16];
  [(VSAsyncOperation *)v10 start];
  [v15 start];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2;
  v5[3] = &unk_278B735D0;
  v5[4] = *(a1 + 32);
  [v4 unwrapObject:v5 error:&__block_literal_global_177];
}

void *__58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 simulateExpiredToken];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = VSErrorLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_3_cold_1(v1);
  }
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_179(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_180;
  v5[3] = &unk_278B73668;
  v6 = *(a1 + 32);
  [v4 unwrapObject:v5 error:&__block_literal_global_184];
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_180(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) providerID];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_3_181;
        v9[3] = &unk_278B73640;
        v10 = *(a1 + 32);
        [v8 conditionallyUnwrapObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_4_cold_1();
  }
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_185(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_186;
  v7[3] = &unk_278B736B8;
  v4 = *(a1 + 56);
  v8 = WeakRetained;
  v10 = v4;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = WeakRetained;
  [v6 _fetchAccountsSimulatingExpiredToken:v3 forProviderIDs:v5 completion:v7];
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_186(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v9 = [v5 firstObject];
    v10 = [*(a1 + 32) cachedFirstAccount];
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if (v11 && v10)
      {
        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(a1 + 32) setCachedFirstAccount:v12];
    }

LABEL_13:
    [*(a1 + 32) setNeedsUpdateCachedFirstAccount:0];

    goto LABEL_14;
  }

  v8 = VSErrorLogObject(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_186_cold_1();
  }

  [*(a1 + 32) setNeedsUpdateCachedFirstAccount:1];
LABEL_14:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_187;
    v14[3] = &unk_278B733D8;
    v15 = *(a1 + 32);
    VSPerformBlockOnMainThread(v14);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)firstAccount
{
  if ([(VSAccountStore *)self needsUpdateCachedFirstAccount]|| ([(VSAccountStore *)self cachedFirstAccount], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = objc_alloc_init(VSSemaphore);
    keychainQueue = [(VSAccountStore *)self keychainQueue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __30__VSAccountStore_firstAccount__block_invoke;
    v12 = &unk_278B73708;
    selfCopy = self;
    v14 = v4;
    v6 = v4;
    [keychainQueue addOperationWithBlock:&v9];

    [(VSSemaphore *)v6 wait:v9];
  }

  cachedFirstAccount = [(VSAccountStore *)self cachedFirstAccount];

  return cachedFirstAccount;
}

void __30__VSAccountStore_firstAccount__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__VSAccountStore_firstAccount__block_invoke_2;
  v2[3] = &unk_278B73380;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateCachedFirstAccountWithCompletion:v2];
}

- (void)firstAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(VSAccountStore *)self needsUpdateCachedFirstAccount]|| ([(VSAccountStore *)self cachedFirstAccount], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    keychainQueue = [(VSAccountStore *)self keychainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke;
    v8[3] = &unk_278B73758;
    v8[4] = self;
    v9 = handlerCopy;
    [keychainQueue addOperationWithBlock:v8];
  }

  else
  {
    cachedFirstAccount = [(VSAccountStore *)self cachedFirstAccount];
    (*(handlerCopy + 2))(handlerCopy, cachedFirstAccount);
  }
}

void __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278B73730;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _updateCachedFirstAccountWithCompletion:v4];
}

void __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cachedFirstAccount];
  (*(v1 + 16))(v1, v2);
}

- (NSArray)accounts
{
  v3 = objc_alloc_init(VSSemaphore);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = MEMORY[0x277CBEBF8];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __26__VSAccountStore_accounts__block_invoke;
  v10 = &unk_278B73780;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [(VSAccountStore *)self fetchAccountsWithCompletionHandler:&v7];
  [(VSSemaphore *)v4 wait:v7];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

uint64_t __26__VSAccountStore_accounts__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__VSAccountStore_accounts__block_invoke_2;
  v4[3] = &unk_278B73428;
  v4[4] = *(a1 + 40);
  [a2 unwrapObject:v4 error:&__block_literal_global_190];
  return [*(a1 + 32) signal];
}

void __26__VSAccountStore_accounts__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __26__VSAccountStore_accounts__block_invoke_3_cold_1();
  }
}

- (void)fetchAccountsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keychainQueue = [(VSAccountStore *)self keychainQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke;
  v9[3] = &unk_278B73848;
  v10 = v5;
  selfCopy = self;
  v12 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  [keychainQueue addOperationWithBlock:v9];
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
  v3 = objc_alloc_init(VSSemaphore);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2;
  v20[3] = &unk_278B733D8;
  v4 = v3;
  v21 = v4;
  [(VSDeveloperSettingsFetchOperation *)v2 setCompletionBlock:v20];
  [(VSAsyncOperation *)v2 start];
  [(VSSemaphore *)v4 wait];
  v5 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
  objc_initWeak(&location, v5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_278B737D0;
  objc_copyWeak(&v18, &location);
  v16 = *(a1 + 32);
  v6 = v4;
  v17 = v6;
  [(VSDeveloperIdentityProviderFetchAllOperation *)v5 setCompletionBlock:v15];
  [(VSAsyncOperation *)v5 start];
  [(VSSemaphore *)v6 wait];
  v7 = [(VSDeveloperSettingsFetchOperation *)v2 result];
  v8 = [v7 forceUnwrapObject];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_195;
  v14[3] = &unk_278B735D0;
  v14[4] = &v22;
  [v8 unwrapObject:v14 error:&__block_literal_global_198];
  v9 = *(v23 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_199;
  v12[3] = &unk_278B73820;
  v13 = *(a1 + 48);
  [v10 _fetchAccountsSimulatingExpiredToken:v9 forProviderIDs:v11 completion:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v22, 8);
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_278B737A8;
  v8 = a1[4];
  v9 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_6;
  v5[3] = &unk_278B732E0;
  v6 = a1[5];
  [v4 unwrapObject:v7 error:v5];
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) providerID];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_5;
        v9[3] = &unk_278B73640;
        v10 = *(a1 + 32);
        [v8 conditionallyUnwrapObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) signal];
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_4_cold_1();
  }

  [*(a1 + 32) signal];
}

void *__53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_195(uint64_t a1, void *a2)
{
  result = [a2 simulateExpiredToken];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_196(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_196_cold_1();
  }
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v9 = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3_204;
    v10 = v6;
  }

  else
  {
    v8 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v9 = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_200;
    v10 = v5;
  }

  v8[2] = v9;
  v8[3] = &unk_278B737F8;
  v8[5] = *(a1 + 32);
  v8[4] = v10;
  VSPerformCompletionHandler(v8);
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
    v1 = *(a1 + 32);
  }

  v4 = v1;
  v5 = [VSFailable failableWithObject:v4];
  (*(v2 + 16))(v2, v5);
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3_204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    v1 = *(a1 + 32);
  }

  v4 = v1;
  v5 = [VSFailable failableWithError:v4];
  (*(v2 + 16))(v2, v5);
}

- (BOOL)_insertAccount:(id)account inContext:(id)context error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  contextCopy = context;
  v10 = VSDefaultLogObject(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = accountCopy;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "VSAccountStore _insertAccount: %@", buf, 0xCu);
  }

  [(VSAccountStore *)self _insertLegacyKeychainItemForAccount:accountCopy context:contextCopy];
  v34 = 0;
  v11 = [contextCopy save:&v34];
  v12 = v34;
  v13 = v12;
  if (v11)
  {
    v14 = VSDefaultLogObject(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      legacyKeychainItem = [accountCopy legacyKeychainItem];
      v16 = [(VSAccountStore *)self _uniqueIdentifierForKeychainItem:legacyKeychainItem];
      legacyKeychainItem2 = [accountCopy legacyKeychainItem];
      creationDate = [legacyKeychainItem2 creationDate];
      *buf = 138412546;
      v36 = v16;
      v37 = 2112;
      v38 = creationDate;
      _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Successfully committed legacy item with hash %@ (cdat=%@)", buf, 0x16u);
    }

    [(VSAccountStore *)self _insertModernKeychainItemForAccount:accountCopy context:contextCopy];
    v33 = v13;
    v19 = [contextCopy save:&v33];
    v20 = v33;

    if (v19)
    {
      v22 = 1;
    }

    else
    {
      v25 = VSErrorLogObject(v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [VSAccountStore _insertAccount:inContext:error:];
      }

      v26 = v20;
      *error = v20;

      legacyKeychainItem3 = [accountCopy legacyKeychainItem];

      if (!legacyKeychainItem3)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [account legacyKeychainItem] parameter must not be nil."];
      }

      legacyKeychainItem4 = [accountCopy legacyKeychainItem];
      [contextCopy deleteItem:legacyKeychainItem4];

      v32 = 0;
      LOBYTE(legacyKeychainItem4) = [contextCopy save:&v32];
      v29 = v32;
      v20 = v29;
      if ((legacyKeychainItem4 & 1) == 0)
      {
        v30 = VSErrorLogObject(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [VSAccountStore _insertAccount:inContext:error:];
        }
      }

      v22 = 0;
    }
  }

  else
  {
    v23 = VSErrorLogObject(v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [VSAccountStore _insertAccount:inContext:error:];
    }

    v24 = v13;
    v22 = 0;
    *error = v13;
    v20 = v13;
  }

  return v22;
}

- (void)saveAccounts:(id)accounts withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  handlerCopy = handler;
  if (!accountsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
  }

  v8 = [accountsCopy count];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must supply at least one account to save."];
  }

  v9 = VSDefaultLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[VSAccountStore saveAccounts:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  keychainQueue = [(VSAccountStore *)self keychainQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke;
  v13[3] = &unk_278B73848;
  v13[4] = self;
  v14 = accountsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = accountsCopy;
  [keychainQueue addOperationWithBlock:v13];
}

void __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) keychainEditingContext];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * v8);
        v11 = *(a1 + 32);
        v22 = v9;
        v12 = [v11 _insertAccount:v10 inContext:v2 error:&v22];
        v6 = v22;

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v12 = 1;
  }

  v13 = VSDefaultLogObject([*(a1 + 32) _updateCachedFirstAccount]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v28 = v12;
    *&v28[4] = 2112;
    *&v28[6] = v6;
    _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Finished saving accounts with status %i with error %@", buf, 0x12u);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_211;
    v18[3] = &unk_278B73870;
    v20 = v15;
    v21 = v12;
    v19 = v6;
    VSPerformCompletionHandler(v18);

    v16 = v20;
  }

  else
  {
    v16 = VSDefaultLogObject(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v28 = "[VSAccountStore saveAccounts:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_214;
  v17[3] = &unk_278B733D8;
  v17[4] = *(a1 + 32);
  VSPerformBlockOnMainThread(v17);
}

void __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_211(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSAccountStore saveAccounts:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_212;
  v5[3] = &unk_278B73870;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v3 = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_212(v5);
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSAccountStore saveAccounts:withCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

- (void)removeAccounts:(id)accounts withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  handlerCopy = handler;
  if (!accountsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
  }

  v8 = [accountsCopy count];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must supply at least one account to remove."];
  }

  v9 = VSDefaultLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[VSAccountStore removeAccounts:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  keychainQueue = [(VSAccountStore *)self keychainQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke;
  v13[3] = &unk_278B73848;
  v13[4] = self;
  v14 = accountsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = accountsCopy;
  [keychainQueue addOperationWithBlock:v13];
}

void __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) keychainEditingContext];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 legacyKeychainItem];

        if (!v10)
        {
          [MEMORY[0x277CBEAD8] raise:v7 format:@"The [account legacyKeychainItem] parameter must not be nil."];
        }

        v11 = [v9 legacyKeychainItem];
        [v2 deleteItem:v11];

        v12 = [v9 keychainItem];

        if (!v12)
        {
          [MEMORY[0x277CBEAD8] raise:v7 format:@"The [account keychainItem] parameter must not be nil."];
        }

        v13 = [v9 keychainItem];
        [v2 deleteItem:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v26 = 0;
  v14 = [v2 save:&v26];
  v15 = v26;
  v16 = VSDefaultLogObject([*(v20 + 32) _updateCachedFirstAccount]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Finished removing accounts.  Will invoke completion handler and post notification.", buf, 2u);
  }

  v18 = *(v20 + 48);
  if (v18)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_221;
    v22[3] = &unk_278B73870;
    v24 = v18;
    v25 = v14;
    v23 = v15;
    VSPerformCompletionHandler(v22);

    v19 = v24;
  }

  else
  {
    v19 = VSDefaultLogObject(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[VSAccountStore removeAccounts:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_224;
  v21[3] = &unk_278B733D8;
  v21[4] = *(v20 + 32);
  VSPerformBlockOnMainThread(v21);
}

void __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_221(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSAccountStore removeAccounts:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_222;
  v5[3] = &unk_278B73870;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v3 = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_222(v5);
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSAccountStore removeAccounts:withCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

- (id)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

- (void)_accountForKeychainItem:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 creatorCode];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Unexpected creator code when deserialziing account from keychain item: %@", v4, 0xCu);
}

@end