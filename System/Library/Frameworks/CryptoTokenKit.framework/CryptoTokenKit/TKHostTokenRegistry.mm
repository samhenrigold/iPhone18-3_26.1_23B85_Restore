@interface TKHostTokenRegistry
+ (id)allowedBundlesFromEntitlements:(id)entitlements;
+ (id)bundleIdentifierFromAuditToken:(id *)token;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSArray)tokens;
- (NSDictionary)tokenExtensions;
- (TKHostTokenRegistry)initWithDriverCache:(id)cache listener:(id)listener keychain:(id)keychain;
- (TKHostTokenRegistryDelegate)delegate;
- (id)_registeredTokens;
- (id)beginTransaction:(id)transaction;
- (id)createTokenWithTokenID:(id)d persistent:(BOOL)persistent;
- (id)reloadTokenClassesFromStore;
- (id)stringForStorageKey:(int64_t)key;
- (id)tokenWithTokenID:(id)d;
- (void)commitTransaction;
- (void)dealloc;
- (void)keychainItemsModified:(id)modified;
- (void)loadTokensFromStore:(id)store;
- (void)markModified;
- (void)notifyTokenReinsertion:(id)reinsertion persistent:(BOOL)persistent;
- (void)preloadTokens;
- (void)registerClassIDs:(id)ds;
- (void)removeTokenWithTokenID:(id)d removeRegistered:(BOOL)registered;
- (void)saveTokensToStorageIfNeeded;
@end

@implementation TKHostTokenRegistry

- (TKHostTokenRegistry)initWithDriverCache:(id)cache listener:(id)listener keychain:(id)keychain
{
  cacheCopy = cache;
  listenerCopy = listener;
  keychainCopy = keychain;
  v27.receiver = self;
  v27.super_class = TKHostTokenRegistry;
  v12 = [(TKHostTokenRegistry *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_driverCache, cache);
    [(TKHostTokenDriverCache *)v13->_driverCache setRegistry:v13];
    objc_storeStrong(&v13->_keychain, keychain);
    v14 = [&__NSDictionary0__struct mutableCopy];
    tokensByTokenID = v13->_tokensByTokenID;
    v13->_tokensByTokenID = v14;

    v16 = [&__NSDictionary0__struct mutableCopy];
    pendingCreationTokens = v13->_pendingCreationTokens;
    v13->_pendingCreationTokens = v16;

    tokenClassIDs = v13->_tokenClassIDs;
    v13->_tokenClassIDs = &__NSArray0__struct;

    v19 = [&__NSArray0__struct mutableCopy];
    externalTransactions = v13->_externalTransactions;
    v13->_externalTransactions = v19;

    v21 = [&__NSArray0__struct mutableCopy];
    keychainItemsDirty = v13->_keychainItemsDirty;
    v13->_keychainItemsDirty = v21;

    v23 = +[NSHashTable weakObjectsHashTable];
    clientConnections = v13->_clientConnections;
    v13->_clientConnections = v23;

    objc_storeStrong(&v13->_listener, listener);
    [(NSXPCListener *)v13->_listener setDelegate:v13];
    [(NSXPCListener *)v13->_listener resume];
    allowedExtensionClassIDs = [cacheCopy allowedExtensionClassIDs];
    v13->_resetDB = allowedExtensionClassIDs != 0;
  }

  return v13;
}

+ (id)bundleIdentifierFromAuditToken:(id *)token
{
  if (&_CPCopyBundleIdentifierAndTeamFromAuditToken)
  {
    v4 = *&token->var0[4];
    *v24[0].val = *token->var0;
    *&v24[0].val[4] = v4;
    self = CPCopyBundleIdentifierAndTeamFromAuditToken();
  }

  v5 = sub_1000049CC(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DD80();
  }

  v6 = *&token->var0[4];
  *v24[0].val = *token->var0;
  *&v24[0].val[4] = v6;
  v7 = audit_token_to_pid(v24);
  v8 = proc_pidpath(v7, v24, 0x1000u);
  if (v8 <= 0)
  {
    v10 = sub_1000049CC(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001DFF0();
    }

    goto LABEL_21;
  }

  v9 = [[NSString alloc] initWithBytes:v24 length:v8 encoding:4];
  if (!v9)
  {
    v10 = sub_1000049CC(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF7C();
    }

    goto LABEL_21;
  }

  v10 = v9;
  v11 = [NSURL fileURLWithPath:v9];
  if (!v11)
  {
    v12 = sub_1000049CC(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF0C();
    }

    goto LABEL_20;
  }

  v12 = v11;
  v13 = _CFBundleCopyBundleURLForExecutableURL();
  if (!v13)
  {
    v18 = sub_1000049CC(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10001DE9C();
    }

LABEL_20:
LABEL_21:

    bundleIdentifier = 0;
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [NSBundle bundleWithURL:v13];
  v16 = v15;
  if (v15)
  {
    bundleIdentifier = [v15 bundleIdentifier];
  }

  else
  {
    v21 = sub_1000049CC(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10001DDBC();
    }

    bundleIdentifier = 0;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

  v23 = sub_1000049CC(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DE2C();
  }

  bundleIdentifier = bundleIdentifier;
  v19 = bundleIdentifier;
LABEL_23:

  return v19;
}

+ (id)allowedBundlesFromEntitlements:(id)entitlements
{
  v3 = [entitlements valueForEntitlement:@"com.apple.private.ctk.configuration-allowed-for-bundles"];
  if (!v3)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v5 = sub_1000049CC(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001E078();
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = objc_opt_isKindOfClass();
        if ((v10 & 1) == 0)
        {
          v12 = sub_1000049CC(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10001E0B4();
          }

          goto LABEL_17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = v5;
LABEL_19:

  return v11;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v9 = [TKHostTokenRegistry bundleIdentifierFromAuditToken:&v18];
  v10 = [TKHostTokenRegistry allowedBundlesFromEntitlements:v8];
  v11 = v10;
  if (v9)
  {
    goto LABEL_5;
  }

  if (v10)
  {
    v10 = [v10 count];
    if (v10)
    {
      v9 = [v11 objectAtIndexedSubscript:0];
LABEL_5:
      v12 = [TKTokenConfiguration interfaceForProtocol:v18];
      [v8 setExportedInterface:v12];

      v13 = [[TKHostTokenRegistryConfigurationProxy alloc] initWithRegistry:self callerBundleID:v9 allowedForBundles:v11];
      [v8 setExportedObject:v13];

      v14 = +[TKTokenConfiguration interfaceForChangeProtocol];
      [v8 setRemoteObjectInterface:v14];

      [v8 resume];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NSHashTable *)selfCopy->_clientConnections addObject:v8];
      objc_sync_exit(selfCopy);

      v16 = 1;
      goto LABEL_12;
    }
  }

  v9 = sub_1000049CC(v10);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_10001E0F0(v8, v9);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TKHostTokenRegistry;
  [(TKHostTokenRegistry *)&v3 dealloc];
}

- (NSArray)tokens
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_tokensByTokenID allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (id)beginTransaction:(id)transaction
{
  transactionCopy = transaction;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_transactionCounter;
  v6 = [[TKHostTokenRegistryTransaction alloc] initWithRegistry:selfCopy name:transactionCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)tokenExtensions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  driverCache = [(TKHostTokenRegistry *)selfCopy driverCache];
  extensions = [driverCache extensions];

  objc_sync_exit(selfCopy);

  return extensions;
}

- (void)preloadTokens
{
  obj = self;
  objc_sync_enter(obj);
  driverCache = [(TKHostTokenRegistry *)obj driverCache];
  [driverCache preloadTokens];

  objc_sync_exit(obj);
}

- (void)markModified
{
  obj = self;
  objc_sync_enter(obj);
  obj->_storageDirty = 1;
  objc_sync_exit(obj);
}

- (void)keychainItemsModified:(id)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_keychainItemsDirty containsObject:modifiedCopy]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_keychainItemsDirty addObject:modifiedCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)_registeredTokens
{
  v3 = +[NSMutableArray array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_tokensByTokenID allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isRegistered])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)commitTransaction
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_transactionCounter - 1;
  selfCopy->_transactionCounter = v3;
  if (!v3)
  {
    [(TKHostTokenRegistry *)selfCopy saveTokensToStorageIfNeeded];
    if ([(NSMutableArray *)selfCopy->_keychainItemsDirty count])
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = selfCopy->_clientConnections;
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v4);
            }

            remoteObjectProxy = [*(*(&v9 + 1) + 8 * v7) remoteObjectProxy];
            [remoteObjectProxy tokenConfigurationChanged:selfCopy->_keychainItemsDirty];

            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v5);
      }

      [(NSMutableArray *)selfCopy->_keychainItemsDirty removeAllObjects];
    }

    [(NSMutableDictionary *)selfCopy->_pendingCreationTokens removeAllObjects];
  }

  objc_sync_exit(selfCopy);
}

- (void)saveTokensToStorageIfNeeded
{
  selfCopy = self;
  storage = [(TKHostTokenRegistry *)self storage];
  if (storage)
  {
    storageDirty = selfCopy->_storageDirty;

    if (storageDirty)
    {
      v32 = a2;
      v6 = [&__NSDictionary0__struct mutableCopy];
      v7 = [&__NSDictionary0__struct mutableCopy];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = selfCopy->_tokensByTokenID;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      v34 = selfCopy;
      if (v8)
      {
        v9 = v8;
        v10 = *v37;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v37 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v36 + 1) + 8 * i);
            v13 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:v12];
            if (([v13 persistent] & 1) != 0 || (objc_msgSend(v13, "keychainItems"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
            {
              v35 = 0;
              v16 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v35];
              v17 = v35;
              if (!v16)
              {
                sub_10001E180(v32, selfCopy, v13, v17);
              }

              isRegistered = [v13 isRegistered];
              stringRepresentation = [v12 stringRepresentation];
              v20 = isRegistered == 0;
              selfCopy = v34;
              if (v20)
              {
                v21 = v6;
              }

              else
              {
                v21 = v7;
              }

              [v21 setObject:v16 forKeyedSubscript:stringRepresentation];
            }
          }

          v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v9);
      }

      v23 = sub_1000049CC(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E200();
      }

      v24 = v34;
      storage2 = [(TKHostTokenRegistry *)v34 storage];
      v26 = [(TKHostTokenRegistry *)v34 stringForStorageKey:0];
      v27 = v6;
      [storage2 setObject:v6 forKey:v26];

      storage3 = [(TKHostTokenRegistry *)v34 storage];
      v29 = [(TKHostTokenRegistry *)v34 stringForStorageKey:2];
      [storage3 setObject:v7 forKey:v29];

      v30 = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
      if (!v30)
      {
        v31 = sub_1000049CC(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10001E23C();
        }

        v24 = v34;
      }

      v24->_storageDirty = 0;
    }
  }
}

- (id)tokenWithTokenID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(NSMutableDictionary *)selfCopy->_pendingCreationTokens objectForKeyedSubscript:dCopy];
  }

  v9 = v8;

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)removeTokenWithTokenID:(id)d removeRegistered:(BOOL)registered
{
  dCopy = d;
  v7 = [(TKHostTokenRegistry *)self beginTransaction:@"removeTokenWithTokenID"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (v9)
  {
    if (![v9 isRegistered] || registered)
    {
      [(NSMutableDictionary *)selfCopy->_toBeRemovedTokens setObject:v10 forKeyedSubscript:dCopy];
      [(NSMutableDictionary *)selfCopy->_tokensByTokenID removeObjectForKey:dCopy];
      [v10 setKeychainItems:&__NSArray0__struct];
      [v10 setRegistry:0];
      objc_sync_exit(selfCopy);

      driver = [v10 driver];
      [driver releaseTokenWithTokenID:dCopy];

      v16 = selfCopy;
      objc_sync_enter(v16);
      [(NSMutableDictionary *)selfCopy->_toBeRemovedTokens removeObjectForKey:dCopy];
      objc_sync_exit(v16);
    }

    else
    {
      [v10 setSlotName:0];
      v11 = sub_1000049CC([v10 setDriver:0]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E278();
      }

      objc_sync_exit(selfCopy);
      driver2 = [v10 driver];
      [driver2 releaseTokenWithTokenID:dCopy];
    }

    v17 = sub_1000049CC(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      persistent = [v10 persistent];
      v19 = @"non-persistent";
      if (persistent)
      {
        v19 = @"persistent";
      }

      v21 = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Removing %{public}@ token %{public}@ from system", &v21, 0x16u);
    }

    delegate = [(TKHostTokenRegistry *)selfCopy delegate];
    [delegate hostTokenRegistry:selfCopy removedToken:dCopy persistent:{objc_msgSend(v10, "persistent")}];

    selfCopy = [v7 markModified];
    [(TKHostTokenRegistry *)selfCopy commit];
  }

  else
  {
    v14 = sub_1000049CC([v7 commit]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001E2E8();
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)notifyTokenReinsertion:(id)reinsertion persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  reinsertionCopy = reinsertion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:reinsertionCopy];

  if (v7)
  {
    delegate = [(TKHostTokenRegistry *)selfCopy delegate];
    [delegate hostTokenRegistry:selfCopy removedToken:reinsertionCopy persistent:persistentCopy];

    delegate2 = [(TKHostTokenRegistry *)selfCopy delegate];
    [delegate2 hostTokenRegistry:selfCopy addedToken:reinsertionCopy persistent:persistentCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)createTokenWithTokenID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  dCopy = d;
  v7 = 0;
  v8 = 0;
  v9 = 100;
  do
  {
    if (v7)
    {
      [(TKHostTokenRegistry *)self removeTokenWithTokenID:dCopy removeRegistered:1];
    }

    if (v8)
    {
      [NSThread sleepForTimeInterval:0.01];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(NSMutableDictionary *)self->_toBeRemovedTokens objectForKeyedSubscript:dCopy];
    v8 = v11 != 0;

    if (v11)
    {
      objc_sync_exit(selfCopy);

      goto LABEL_20;
    }

    v12 = [(NSMutableDictionary *)self->_tokensByTokenID objectForKeyedSubscript:dCopy];
    v13 = v12;
    if (v12)
    {
      if (![v12 isRegistered])
      {
        v14 = 1;
        goto LABEL_19;
      }

      v4 = v13;
    }

    else
    {
      v4 = [(NSMutableDictionary *)self->_pendingCreationTokens objectForKeyedSubscript:dCopy];
      if (v4)
      {
        [(NSMutableDictionary *)self->_pendingCreationTokens removeObjectForKey:dCopy];
      }

      else
      {
        v4 = [[TKHostToken alloc] initWithTokenID:dCopy persistent:persistentCopy];
        [(TKHostToken *)v4 setRegistry:selfCopy];
      }

      v15 = sub_1000049CC([(NSMutableDictionary *)self->_tokensByTokenID setObject:v4 forKeyedSubscript:dCopy]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding token %{public}@ to system", buf, 0xCu);
      }

      v16 = [(TKHostTokenRegistry *)selfCopy beginTransaction:@"createTokenWithTokenID"];
      markModified = [v16 markModified];
      [markModified commit];
    }

    v14 = 0;
LABEL_19:

    objc_sync_exit(selfCopy);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v7 = v11 == 0;
    --v9;
  }

  while (v9);
  v18 = +[NSAssertionHandler currentHandler];
  v19 = [dCopy description];
  [v18 handleFailureInMethod:a2 object:selfCopy file:@"TKHostTokenRegistry.m" lineNumber:427 description:{@"createTokenWithTokenID failed %@", v19}];

  v4 = 0;
LABEL_22:

  return v4;
}

- (void)loadTokensFromStore:(id)store
{
  storeCopy = store;
  v4 = sub_1000049CC(storeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E358();
  }

  v5 = [NSUserDefaults alloc];
  storeCopy = [NSString stringWithFormat:@"com.apple.security.%@-db", storeCopy];
  v7 = [v5 initWithSuiteName:storeCopy];
  storage = self->_storage;
  self->_storage = v7;

  resetDB = [(TKHostTokenRegistry *)self resetDB];
  if (resetDB)
  {
    v10 = sub_1000049CC(resetDB);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "cleaning existing registry DB", buf, 2u);
    }

    storage = [(TKHostTokenRegistry *)self storage];
    v12 = [(TKHostTokenRegistry *)self stringForStorageKey:1];
    [storage removeObjectForKey:v12];

    storage2 = [(TKHostTokenRegistry *)self storage];
    v14 = [(TKHostTokenRegistry *)self stringForStorageKey:0];
    [storage2 removeObjectForKey:v14];

    storage3 = [(TKHostTokenRegistry *)self storage];
    v16 = [(TKHostTokenRegistry *)self stringForStorageKey:2];
    [storage3 removeObjectForKey:v16];
  }

  v54 = [(TKHostTokenRegistry *)self beginTransaction:@"loadTokensFromStore"];
  storage4 = [(TKHostTokenRegistry *)self storage];
  v18 = [(TKHostTokenRegistry *)self stringForStorageKey:2];
  v19 = [storage4 objectForKey:v18];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &__NSDictionary0__struct;
  }

  v51 = v21;

  storage5 = [(TKHostTokenRegistry *)self storage];
  v23 = [(TKHostTokenRegistry *)self stringForStorageKey:0];
  v24 = [storage5 objectForKey:v23];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &__NSDictionary0__struct;
  }

  v27 = v26;

  v53 = [v27 mutableCopy];
  [v53 addEntriesFromDictionary:v51];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v28 = [v53 copy];
  v29 = [v28 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v29)
  {
    v30 = *v59;
    do
    {
      v31 = 0;
      do
      {
        if (*v59 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v58 + 1) + 8 * v31);
        v33 = objc_opt_class();
        v34 = [v28 objectForKeyedSubscript:v32];
        v57 = 0;
        v35 = [NSKeyedUnarchiver unarchivedObjectOfClass:v33 fromData:v34 error:&v57];
        v36 = v57;

        if (v35)
        {
          [v35 setRegistry:self];
          persistent = [v35 persistent];
          if ((persistent & 1) != 0 || (persistent = [v35 isRegistered], persistent))
          {
            v39 = sub_1000049CC(persistent);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              if ([v35 persistent])
              {
                v46 = @"persistent";
              }

              else
              {
                v46 = @"registered";
              }

              tokenID = [v35 tokenID];
              *buf = 138412546;
              v63 = v46;
              v64 = 2114;
              v65 = tokenID;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Read %@ token %{public}@", buf, 0x16u);
            }

            tokensByTokenID = self->_tokensByTokenID;
            tokenID2 = [v35 tokenID];
            [(NSMutableDictionary *)tokensByTokenID setObject:v35 forKeyedSubscript:tokenID2];
          }

          else
          {
            v42 = sub_1000049CC(persistent);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              tokenID3 = [v35 tokenID];
              *buf = 138543362;
              v63 = tokenID3;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Deleting keychain items from token %{public}@", buf, 0xCu);
            }

            [v35 setKeychainItems:&__NSArray0__struct];
            markModified = [v54 markModified];
            tokenID2 = [v35 tokenID];
            v45 = [v54 keychainItemsModified:tokenID2];
          }
        }

        else
        {
          tokenID2 = sub_1000049CC(v37);
          if (os_log_type_enabled(tokenID2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v63 = v32;
            v64 = 2114;
            v65 = v36;
            _os_log_error_impl(&_mh_execute_header, tokenID2, OS_LOG_TYPE_ERROR, "Failed to read data of token %{public}@ - skipping. Error: %{public}@", buf, 0x16u);
          }
        }

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v48 = [v28 countByEnumeratingWithState:&v58 objects:v66 count:16];
      v29 = v48;
    }

    while (v48);
  }

  reloadTokenClassesFromStore = [(TKHostTokenRegistry *)self reloadTokenClassesFromStore];
  [(TKHostTokenRegistry *)self registerClassIDs:reloadTokenClassesFromStore];
  [v54 commit];
  objc_initWeak(buf, self);
  keychain = [(TKHostTokenRegistry *)self keychain];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000064D0;
  v55[3] = &unk_1000389E8;
  objc_copyWeak(&v56, buf);
  [keychain accessKeychainWithBlock:v55];

  objc_destroyWeak(&v56);
  objc_destroyWeak(buf);
}

- (id)reloadTokenClassesFromStore
{
  v2 = [(TKHostTokenRegistry *)self beginTransaction:@"reloadTokenClassesFromStore"];
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  storage = [(TKHostTokenRegistry *)self storage];
  v4 = [(TKHostTokenRegistry *)self stringForStorageKey:1];
  v5 = [storage objectForKey:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = &__NSDictionary0__struct;
  }

  tokenExtensions = [v2 tokenExtensions];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100006FA4;
  v76[3] = &unk_100038A10;
  v55 = [&__NSDictionary0__struct mutableCopy];
  v77 = v55;
  [tokenExtensions enumerateKeysAndObjectsUsingBlock:v76];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v5;
  v54 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v54)
  {
    v53 = *v73;
    *&v6 = 138543618;
    v51 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v73 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v72 + 1) + 8 * v7);
        v9 = [obj objectForKeyedSubscript:{v8, v51}];
        v10 = [v55 objectForKeyedSubscript:v8];
        v11 = [v9 isEqual:v10];
        v57 = v7;

        if ((v11 & 1) == 0)
        {
          v12 = [v55 objectForKeyedSubscript:v8];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = [&__NSArray0__struct mutableCopy];
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v15 = self->_tokensByTokenID;
            v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v68 objects:v87 count:16];
            if (v16)
            {
              v17 = *v69;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v69 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v68 + 1) + 8 * i);
                  classID = [v19 classID];
                  v21 = [classID isEqualToString:v8];

                  if (v21)
                  {
                    v22 = [(NSMutableDictionary *)self->_tokensByTokenID objectForKeyedSubscript:v19];
                    [v14 addObject:v22];
                  }
                }

                v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v68 objects:v87 count:16];
              }

              while (v16);
            }

            v24 = sub_1000049CC(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [tokenExtensions objectForKeyedSubscript:v8];
              identifier = [v25 identifier];
              v27 = [v14 count];
              *buf = v51;
              v84 = identifier;
              v85 = 1024;
              v86 = v27;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Token driver %{public}@ disappeared, deleting its %d tokens", buf, 0x12u);
            }

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v28 = v14;
            v29 = [v28 countByEnumeratingWithState:&v64 objects:v82 count:16];
            if (v29)
            {
              v30 = *v65;
              do
              {
                for (j = 0; j != v29; j = j + 1)
                {
                  if (*v65 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v32 = *(*(&v64 + 1) + 8 * j);
                  [v32 setKeychainItems:&__NSArray0__struct];
                  tokensByTokenID = self->_tokensByTokenID;
                  tokenID = [v32 tokenID];
                  [(NSMutableDictionary *)tokensByTokenID removeObjectForKey:tokenID];

                  markModified = [v2 markModified];
                  tokenID2 = [v32 tokenID];
                  v37 = [v2 keychainItemsModified:tokenID2];
                }

                v29 = [v28 countByEnumeratingWithState:&v64 objects:v82 count:16];
              }

              while (v29);
            }
          }

          *(v79 + 24) = 1;
        }

        v7 = v57 + 1;
      }

      while ((v57 + 1) != v54);
      v54 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v54);
  }

  v38 = [&__NSDictionary0__struct mutableCopy];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100007038;
  v59[3] = &unk_100038A38;
  v39 = obj;
  v60 = v39;
  v40 = v38;
  v61 = v40;
  v41 = tokenExtensions;
  v62 = v41;
  v63 = &v78;
  v42 = [v55 enumerateKeysAndObjectsUsingBlock:v59];
  if (*(v79 + 24) == 1)
  {
    v43 = sub_1000049CC(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E404([v55 count], buf, v43);
    }

    allKeys = [v55 allKeys];
    tokenClassIDs = self->_tokenClassIDs;
    self->_tokenClassIDs = allKeys;

    storage2 = [(TKHostTokenRegistry *)self storage];
    v47 = [(TKHostTokenRegistry *)self stringForStorageKey:1];
    [storage2 setObject:v55 forKey:v47];
  }

  [v2 commit];
  v48 = v62;
  v49 = v40;

  _Block_object_dispose(&v78, 8);

  return v49;
}

- (void)registerClassIDs:(id)ds
{
  dsCopy = ds;
  v27 = [(TKHostTokenRegistry *)self beginTransaction:@"registerClassIDs"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [dsCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v7 = *v31;
    *&v6 = 138543618;
    v26 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        driverCache = [(TKHostTokenRegistry *)self driverCache];
        v11 = [dsCopy objectForKeyedSubscript:v9];
        v12 = [driverCache hostTokenDriverFromExtension:v11];

        v29 = 0;
        LODWORD(driverCache) = [v12 configureWithError:&v29];
        v13 = v29;
        v14 = v13;
        if (driverCache)
        {
          v15 = sub_1000049CC(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            extension = [v12 extension];
            identifier = [extension identifier];
            *buf = 138543362;
            v35 = identifier;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "New token driver %{public}@ successfully configured", buf, 0xCu);
          }
        }

        else
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v19 = [(NSArray *)self->_tokenClassIDs mutableCopy];
          [v19 removeObject:v9];
          v20 = [v19 copy];
          tokenClassIDs = self->_tokenClassIDs;
          self->_tokenClassIDs = v20;

          markModified = [v27 markModified];
          objc_sync_exit(selfCopy);

          v15 = sub_1000049CC(v23);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            extension2 = [v12 extension];
            identifier2 = [extension2 identifier];
            *buf = v26;
            v35 = identifier2;
            v36 = 2114;
            v37 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Configuration of token driver %{public}@ failed: %{public}@", buf, 0x16u);
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v5);
  }

  [v27 commit];
}

- (id)stringForStorageKey:(int64_t)key
{
  v3 = @"tokens";
  if (key == 1)
  {
    v3 = @"classes";
  }

  if (key == 2)
  {
    return @"registeredTokens";
  }

  else
  {
    return v3;
  }
}

- (TKHostTokenRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end