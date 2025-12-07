@interface TKHostTokenRegistryConfigurationProxy
- (BOOL)_areKeychainItemsDifferent:(id)different comparedTo:(id)to;
- (BOOL)haveAccessForClassID:(id)d verbose:(BOOL)verbose;
- (TKHostTokenRegistry)registry;
- (TKHostTokenRegistryConfigurationProxy)initWithRegistry:(id)registry callerBundleID:(id)d allowedForBundles:(id)bundles;
- (id)ensureTokenWithTokenID:(id)d;
- (void)_updateRegisteredToken:(id)token withNewKeychainItems:(id)items transaction:(id)transaction tokenID:(id)d;
- (void)beginTransactionWithReply:(id)reply;
- (void)createTokenID:(id)d persistent:(BOOL)persistent reply:(id)reply;
- (void)endTransactionWithReply:(id)reply;
- (void)getClassIDsWithReply:(id)reply;
- (void)getKeychainItemsForTokenID:(id)d reply:(id)reply;
- (void)getTokenIDsForClassID:(id)d reply:(id)reply;
- (void)readDataForTokenID:(id)d reply:(id)reply;
- (void)removeTokenID:(id)d reply:(id)reply;
- (void)updateKeychainItemsForTokenID:(id)d items:(id)items reply:(id)reply;
- (void)updateTokenID:(id)d data:(id)data reply:(id)reply;
@end

@implementation TKHostTokenRegistryConfigurationProxy

- (TKHostTokenRegistryConfigurationProxy)initWithRegistry:(id)registry callerBundleID:(id)d allowedForBundles:(id)bundles
{
  registryCopy = registry;
  dCopy = d;
  bundlesCopy = bundles;
  v15.receiver = self;
  v15.super_class = TKHostTokenRegistryConfigurationProxy;
  v11 = [(TKHostTokenRegistryConfigurationProxy *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_registry, registryCopy);
    objc_storeStrong(&v12->_callerBundleID, d);
    if (bundlesCopy)
    {
      v13 = bundlesCopy;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    objc_storeStrong(&v12->_allowedForBundles, v13);
  }

  return v12;
}

- (BOOL)haveAccessForClassID:(id)d verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  dCopy = d;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"haveAccessForClassID"];

  tokenExtensions = [v8 tokenExtensions];
  v10 = [tokenExtensions objectForKeyedSubscript:dCopy];

  commit = [v8 commit];
  if (v10)
  {
    _plugIn = [v10 _plugIn];
    v13 = [_plugIn url];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      isFileURL = [v13 isFileURL];
      if (!isFileURL || (-[NSObject path](v13, "path"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 hasPrefix:@"/System/"], v22, (v23 & 1) == 0))
      {
        identifier = sub_1000049CC(isFileURL);
        if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
        {
          sub_10001E4BC();
        }

        LOBYTE(v20) = 0;
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }
    }

    v48 = verboseCopy;
    _plugIn2 = [v10 _plugIn];
    identifier = [_plugIn2 identifier];

    _plugIn3 = [v10 _plugIn];
    containingUrl = [_plugIn3 containingUrl];
    if (containingUrl)
    {
      _plugIn4 = [v10 _plugIn];
      containingUrl2 = [_plugIn4 containingUrl];
      v19 = [NSBundle bundleWithURL:containingUrl2];
    }

    else
    {
      v19 = 0;
    }

    bundleIdentifier = [v19 bundleIdentifier];
    callerBundleID = selfCopy->_callerBundleID;
    if (bundleIdentifier)
    {
      v26 = bundleIdentifier;
      bundleIdentifier2 = [v19 bundleIdentifier];
      if ([(NSString *)callerBundleID hasPrefix:bundleIdentifier2])
      {

LABEL_20:
        LODWORD(v20) = 1;
LABEL_37:
        if (v48)
        {
          v38 = sub_1000049CC(v28);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            if (v20)
            {
              v40 = @"Allowing";
            }

            else
            {
              v40 = @"Refusing";
            }

            v41 = v13;
            v42 = selfCopy->_callerBundleID;
            bundleIdentifier3 = [v19 bundleIdentifier];
            allowedForBundles = selfCopy->_allowedForBundles;
            *buf = 138544642;
            v56 = v40;
            v57 = 2114;
            v58 = v42;
            v13 = v41;
            v59 = 2114;
            v60 = dCopy;
            v61 = 2114;
            v62 = identifier;
            v63 = 2114;
            v64 = bundleIdentifier3;
            v45 = bundleIdentifier3;
            v65 = 2114;
            v66 = allowedForBundles;
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%{public}@ caller %{public}@, to access token classID=%{public}@ identifier=%{public}@ containing=%{public}@ entitled for=%{public}@", buf, 0x3Eu);
          }
        }

        goto LABEL_41;
      }

      v29 = [identifier hasPrefix:selfCopy->_callerBundleID];

      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = [identifier hasPrefix:selfCopy->_callerBundleID];
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v30 = selfCopy->_allowedForBundles;
    v20 = [(NSArray *)v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v20)
    {
      v46 = v13;
      v47 = dCopy;
      v31 = *v52;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v30);
          }

          v33 = *(*(&v51 + 1) + 8 * i);
          bundleIdentifier4 = [v19 bundleIdentifier];
          if (bundleIdentifier4)
          {
            v35 = bundleIdentifier4;
            bundleIdentifier5 = [v19 bundleIdentifier];
            v37 = [v33 hasPrefix:bundleIdentifier5];

            if (v37)
            {
              goto LABEL_34;
            }
          }

          else if ([v33 isEqualToString:identifier])
          {
LABEL_34:
            LODWORD(v20) = 1;
            goto LABEL_35;
          }
        }

        v20 = [(NSArray *)v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v13 = v46;
      dCopy = v47;
    }

    goto LABEL_37;
  }

  if (verboseCopy)
  {
    v13 = sub_1000049CC(commit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001E4F8(self, dCopy, v13);
    }

    LOBYTE(v20) = 0;
    goto LABEL_42;
  }

  LOBYTE(v20) = 0;
LABEL_43:

  return v20;
}

- (void)getClassIDsWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v6 = [WeakRetained beginTransaction:@"getClassIDsWithReply"];

  v7 = [&__NSArray0__struct mutableCopy];
  v8 = objc_loadWeakRetained(&self->_registry);
  objc_sync_enter(v8);
  v9 = objc_loadWeakRetained(&self->_registry);
  reloadTokenClassesFromStore = [v9 reloadTokenClassesFromStore];

  objc_sync_exit(v8);
  v11 = objc_loadWeakRetained(&self->_registry);
  [v11 registerClassIDs:reloadTokenClassesFromStore];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  tokenExtensions = [v6 tokenExtensions];
  allKeys = [tokenExtensions allKeys];

  v14 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if ([(TKHostTokenRegistryConfigurationProxy *)self haveAccessForClassID:v17 verbose:0])
        {
          [v7 addObject:v17];
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [v6 commit];
  replyCopy[2](replyCopy, v7);
}

- (void)beginTransactionWithReply:(id)reply
{
  replyCopy = reply;
  registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  v8 = [registry beginTransaction:@"beginTransactionWithReply"];

  registry2 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  externalTransactions = [registry2 externalTransactions];
  [externalTransactions addObject:v8];

  replyCopy[2](replyCopy);
}

- (void)endTransactionWithReply:(id)reply
{
  replyCopy = reply;
  registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  externalTransactions = [registry externalTransactions];
  lastObject = [externalTransactions lastObject];

  [lastObject commit];
  registry2 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  externalTransactions2 = [registry2 externalTransactions];
  [externalTransactions2 removeLastObject];

  replyCopy[2](replyCopy);
}

- (void)getTokenIDsForClassID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = [&__NSArray0__struct mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v20 = [WeakRetained beginTransaction:@"getTokenIDsForClassID"];

  if ([(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:dCopy])
  {
    obj = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(obj);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    tokens = [registry tokens];

    v12 = [tokens countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(tokens);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          classID = [v15 classID];
          v17 = [classID isEqualToString:dCopy];

          if (v17)
          {
            [v8 addObject:v15];
          }
        }

        v12 = [tokens countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    objc_sync_exit(obj);
  }

  [v20 commit];
  v18 = [v8 copy];
  replyCopy[2](replyCopy, v18);
}

- (void)createTokenID:(id)d persistent:(BOOL)persistent reply:(id)reply
{
  persistentCopy = persistent;
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v10 = [WeakRetained beginTransaction:@"createTokenID"];

  classID = [dCopy classID];
  v12 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:classID];

  if (v12)
  {
    registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    v14 = [registry createTokenWithTokenID:dCopy persistent:persistentCopy];

    registry2 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    delegate = [registry2 delegate];
    registry3 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    [delegate hostTokenRegistry:registry3 addedToken:dCopy persistent:persistentCopy];
  }

  [v10 commit];
  replyCopy[2](replyCopy);
}

- (id)ensureTokenWithTokenID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v6 = [WeakRetained beginTransaction:@"ensureTokenWithTokenID"];

  registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  tokensByTokenID = [registry tokensByTokenID];
  v9 = [tokensByTokenID objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    registry2 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    pendingCreationTokens = [registry2 pendingCreationTokens];
    v11 = [pendingCreationTokens objectForKey:dCopy];
  }

  if (!v11)
  {
    v11 = [[TKHostToken alloc] initWithTokenID:dCopy persistent:0];
    registry3 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    [(TKHostToken *)v11 setRegistry:registry3];

    registry4 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    pendingCreationTokens2 = [registry4 pendingCreationTokens];
    [pendingCreationTokens2 setObject:v11 forKeyedSubscript:dCopy];

    v18 = sub_1000049CC(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E584();
    }
  }

  [v6 commit];

  return v11;
}

- (void)getKeychainItemsForTokenID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"getKeychainItemsForTokenID"];

  classID = [dCopy classID];
  v10 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:classID];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v11);
    v12 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:dCopy];
    v13 = v12;
    if (v12)
    {
      keychainItems = [v12 keychainItems];
    }

    else
    {
      keychainItems = &__NSArray0__struct;
    }

    objc_sync_exit(v11);
  }

  else
  {
    keychainItems = &__NSArray0__struct;
  }

  [v8 commit];
  replyCopy[2](replyCopy, keychainItems);
}

- (void)updateKeychainItemsForTokenID:(id)d items:(id)items reply:(id)reply
{
  dCopy = d;
  itemsCopy = items;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v11 = [WeakRetained beginTransaction:@"updateKeychainItemsForTokenID"];

  classID = [dCopy classID];
  v13 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:classID];

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v14);
    v15 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:dCopy];
    v16 = v15;
    if (v15)
    {
      persistent = [v15 persistent];
      keychainItems = [v16 keychainItems];
      v19 = &MKBGetDeviceLockState_ptr;
      if (keychainItems)
      {
        keychainItems2 = [v16 keychainItems];
        v21 = [NSKeyedArchiver archivedDataWithRootObject:keychainItems2 requiringSecureCoding:0 error:0];

        v19 = &MKBGetDeviceLockState_ptr;
      }

      else
      {
        v21 = 0;
      }

      if (itemsCopy)
      {
        v22 = [v19[141] archivedDataWithRootObject:itemsCopy requiringSecureCoding:0 error:0];
      }

      else
      {
        v22 = 0;
      }

      if (([v21 isEqualToData:v22] & 1) == 0)
      {
        if ([v16 isRegistered])
        {
          [(TKHostTokenRegistryConfigurationProxy *)self _updateRegisteredToken:v16 withNewKeychainItems:itemsCopy transaction:v11 tokenID:dCopy];
        }

        else
        {
          [v16 setKeychainItems:itemsCopy];
          v23 = [v11 keychainItemsModified:dCopy];
        }
      }
    }

    else
    {
      persistent = 1;
    }

    objc_sync_exit(v14);
  }

  else
  {
    persistent = 1;
  }

  [v11 commit];
  registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  [registry notifyTokenReinsertion:dCopy persistent:persistent];

  replyCopy[2](replyCopy);
}

- (void)_updateRegisteredToken:(id)token withNewKeychainItems:(id)items transaction:(id)transaction tokenID:(id)d
{
  tokenCopy = token;
  itemsCopy = items;
  transactionCopy = transaction;
  dCopy = d;
  v14 = [itemsCopy count];
  if (!v14 || (v15 = [itemsCopy count], objc_msgSend(tokenCopy, "keychainItems"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15 < v17))
  {
    v18 = sub_1000049CC(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E6B8();
    }

LABEL_5:

    goto LABEL_6;
  }

  keychainItems = [tokenCopy keychainItems];
  v20 = [(TKHostTokenRegistryConfigurationProxy *)self _areKeychainItemsDifferent:keychainItems comparedTo:itemsCopy];

  v18 = sub_1000049CC(v21);
  v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if ((v20 & 1) == 0)
  {
    if (v22)
    {
      sub_10001E5F4();
    }

    goto LABEL_5;
  }

  if (v22)
  {
    sub_10001E630(itemsCopy, v18);
  }

  [tokenCopy setKeychainItems:itemsCopy];
  v23 = [transactionCopy keychainItemsModified:dCopy];
LABEL_6:
}

- (BOOL)_areKeychainItemsDifferent:(id)different comparedTo:(id)to
{
  differentCopy = different;
  toCopy = to;
  v7 = [toCopy count];
  if (v7 <= [differentCopy count])
  {
    v9 = [toCopy mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = differentCopy;
    v10 = differentCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100008A80;
          v19[3] = &unk_100038A60;
          v19[4] = v15;
          v16 = [v9 indexOfObjectPassingTest:{v19, v18}];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {

            v8 = 1;
            goto LABEL_13;
          }

          [v9 removeObjectAtIndex:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v8 = [v9 count] != 0;
LABEL_13:

    differentCopy = v18;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)readDataForTokenID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"readDataForTokenID"];

  classID = [dCopy classID];
  v10 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:classID];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v11);
    v12 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:dCopy];
    v13 = v12;
    if (v12)
    {
      configurationData = [v12 configurationData];
    }

    else
    {
      configurationData = 0;
    }

    objc_sync_exit(v11);
  }

  else
  {
    configurationData = 0;
  }

  [v8 commit];
  replyCopy[2](replyCopy, configurationData);
}

- (void)updateTokenID:(id)d data:(id)data reply:(id)reply
{
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v11 = [WeakRetained beginTransaction:@"updateTokenID"];

  classID = [dCopy classID];
  v13 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:classID];

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v14);
    v15 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:dCopy];
    v16 = v15;
    if (v15)
    {
      configurationData = [v15 configurationData];
      v18 = [configurationData isEqualToData:dataCopy];

      if ((v18 & 1) == 0)
      {
        [v16 setConfigurationData:dataCopy];
        markModified = [v11 markModified];
      }
    }

    objc_sync_exit(v14);
  }

  [v11 commit];
  replyCopy[2](replyCopy);
}

- (void)removeTokenID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"removeTokenID"];

  classID = [dCopy classID];
  v10 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:classID];

  if (v10)
  {
    registry = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    [registry removeTokenWithTokenID:dCopy];
  }

  [v8 commit];
  replyCopy[2](replyCopy);
}

- (TKHostTokenRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

@end