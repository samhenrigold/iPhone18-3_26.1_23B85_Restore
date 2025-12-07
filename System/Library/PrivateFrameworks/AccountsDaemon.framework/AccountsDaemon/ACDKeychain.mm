@interface ACDKeychain
+ (BOOL)_isKnownMigratedKeychainItem:(id)item;
+ (BOOL)addSyncItemWithServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options extension:(id)extension error:(id *)error;
+ (BOOL)canAccessPasswordsWithPolicy:(id)policy;
+ (BOOL)removeItemForServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options error:(id *)error;
+ (BOOL)removeTombstoneForServiceName:(id)name username:(id)username accessGroup:(id)group extension:(id)extension error:(id *)error;
+ (BOOL)updateSyncItemForServiceName:(id)name username:(id)username accessGroup:(id)group newValues:(id)values extension:(id)extension error:(id *)error;
+ (id)_knownMigratedKeychainItems;
+ (id)_passwordForServiceName:(id)name username:(id)username accessGroup:(id)group checkInKeybag:(BOOL)keybag options:(id)options error:(id *)error;
+ (id)cache;
+ (id)keychainDeletedAccounts;
+ (id)passwordForServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options error:(id *)error;
+ (unint64_t)_syncStateForKeychainDictionary:(id)dictionary;
+ (void)_addKnownMigratedKeychainItem:(id)item;
+ (void)_migrateKeychainItemIfNecessary:(id)necessary;
+ (void)addItemWithServiceName:(id)name username:(id)username accessGroup:(id)group passwordData:(id)data options:(id)options error:(id *)error;
+ (void)keychainDeletedAccounts;
+ (void)updateItemForServiceName:(id)name username:(id)username accessGroup:(id)group newValues:(id)values options:(id)options error:(id *)error;
@end

@implementation ACDKeychain

+ (id)cache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ACDKeychain_cache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cache_onceToken != -1)
  {
    dispatch_once(&cache_onceToken, block);
  }

  v2 = cache__keychainCache;

  return v2;
}

+ (id)_knownMigratedKeychainItems
{
  if (_knownMigratedKeychainItems_onceToken != -1)
  {
    +[ACDKeychain _knownMigratedKeychainItems];
  }

  v3 = _knownMigratedKeychainItems_migratedKeychainItems;

  return v3;
}

void __20__ACDKeychain_cache__block_invoke(uint64_t a1)
{
  v2 = [[ACDKeychainCache alloc] initWithValidityDuration:30];
  v3 = cache__keychainCache;
  cache__keychainCache = v2;

  out_token = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__ACDKeychain_cache__block_invoke_2;
  v6[3] = &__block_descriptor_40_e8_v12__0i8l;
  v6[4] = *(a1 + 32);
  v4 = notify_register_dispatch("com.apple.security.keychainchanged", &out_token, MEMORY[0x277D85CD0], v6);
  v5 = _ACDKeychainLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __20__ACDKeychain_cache__block_invoke_cold_1();
  }
}

void __20__ACDKeychain_cache__block_invoke_2(uint64_t a1)
{
  v2 = _ACDKeychainLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __20__ACDKeychain_cache__block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 32) cache];
  [v3 clearCacheForSyncState:1];
}

+ (unint64_t)_syncStateForKeychainDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:*MEMORY[0x277CDC140]];
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 isEqualToString:*MEMORY[0x277CDC148]] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = 2;
LABEL_9:

  return v4;
}

+ (BOOL)canAccessPasswordsWithPolicy:(id)policy
{
  policyCopy = policy;
  if ([policyCopy isEqualToString:*MEMORY[0x277CDBEE0]])
  {
    v4 = MKBDeviceUnlockedSinceBoot() != 0;
  }

  else if ([policyCopy isEqualToString:*MEMORY[0x277CDBF10]])
  {
    v4 = MKBGetDeviceLockState() == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)passwordForServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v11 = 0;
  v8 = [self _passwordForServiceName:name username:username accessGroup:group checkInKeybag:1 options:options error:&v11];
  v9 = v11;
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

+ (id)_passwordForServiceName:(id)name username:(id)username accessGroup:(id)group checkInKeybag:(BOOL)keybag options:(id)options error:(id *)error
{
  keybagCopy = keybag;
  v65 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  usernameCopy = username;
  value = group;
  optionsCopy = options;
  if (error)
  {
    *error = 0;
  }

  errorCopy = error;
  if (!nameCopy || !usernameCopy)
  {
    +[ACDKeychain _passwordForServiceName:username:accessGroup:checkInKeybag:options:error:];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  v17 = usernameCopy;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], nameCopy);
  v18 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], v18);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC560], v18);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v19 = optionsCopy;
  v20 = [v19 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v53;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v19);
        }

        CFDictionaryAddValue(Mutable, *(*(&v52 + 1) + 8 * i), [v19 valueForKey:*(*(&v52 + 1) + 8 * i)]);
      }

      v21 = [v19 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v21);
  }

  if (keybagCopy)
  {
    v24 = v18;
  }

  else
  {
    v24 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], v24);
  if (value)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], value);
  }

  v25 = nameCopy;
  v26 = [self _syncStateForKeychainDictionary:v19];
  cache = [self cache];
  v28 = v17;
  v29 = [cache dataForService:v25 username:v17 syncState:v26];

  if (v29)
  {
    null = [MEMORY[0x277CBEB68] null];
    v31 = [v29 isEqual:null];

    if (v31)
    {
      if (errorCopy)
      {
        v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:-25300 userInfo:0];
        v33 = 0;
        *errorCopy = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v32 = v29;
      v33 = v32;
    }

    v41 = _ACDKeychainLogSystem(v32);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = ACHashedString();
      *buf = 134218754;
      v57 = v26;
      v58 = 2112;
      v59 = v25;
      v60 = 2112;
      v61 = v42;
      v62 = 1024;
      v63 = v33 != 0;
      v43 = "ACDKeychainCache(syncState:%ld) hit for %@.%@: itemExist:%d";
LABEL_45:
      _os_log_debug_impl(&dword_221D2F000, v41, OS_LOG_TYPE_DEBUG, v43, buf, 0x26u);
    }
  }

  else
  {
    result = 0;
    v34 = SecItemCopyMatching(Mutable, &result);
    v35 = v34;
    if (v34 || (v36 = result) == 0)
    {
      if (v34 == -25300)
      {
        cache2 = [self cache];
        null2 = [MEMORY[0x277CBEB68] null];
        [cache2 cacheData:null2 forService:v25 username:v17 syncState:v26];
      }

      if (errorCopy)
      {
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v35 userInfo:0];
        v33 = 0;
        *errorCopy = v34;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v37 = [result objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
      v49 = v37;
      if (v37)
      {
        v33 = [objc_alloc(MEMORY[0x277CB8FC8]) initWithData:v37 encoding:4];
        cache3 = [self cache];
        [cache3 cacheData:v33 forService:v25 username:v28 syncState:v26];
      }

      else
      {
        v33 = 0;
      }

      v44 = [v36 objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];

      if (v44)
      {
        v45 = [[ACDKeychainItem alloc] initWithPersistentRef:v44 properties:v36];
        [self _migrateKeychainItemIfNecessary:v45];
      }
    }

    v41 = _ACDKeychainLogSystem(v34);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = ACHashedString();
      *buf = 134218754;
      v57 = v26;
      v58 = 2112;
      v59 = v25;
      v60 = 2112;
      v61 = v42;
      v62 = 1024;
      v63 = v33 != 0;
      v43 = "ACDKeychainCache(syncState:%ld) miss for %@.%@: itemExist:%d";
      goto LABEL_45;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v33;
}

+ (void)updateItemForServiceName:(id)name username:(id)username accessGroup:(id)group newValues:(id)values options:(id)options error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  valuesCopy = values;
  optionsCopy = options;
  if (nameCopy && usernameCopy)
  {
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  +[ACDKeychain updateItemForServiceName:username:accessGroup:newValues:options:error:];
  if (error)
  {
LABEL_4:
    *error = 0;
  }

LABEL_5:
  attributesToUpdate = valuesCopy;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], nameCopy);
  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], groupCopy);
  }

  v39 = groupCopy;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = optionsCopy;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        CFDictionaryAddValue(Mutable, *(*(&v40 + 1) + 8 * i), [v20 valueForKey:{*(*(&v40 + 1) + 8 * i), attributesToUpdate}]);
      }

      v22 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v22);
  }

  cache = [self cache];
  [cache clearDataForService:nameCopy username:usernameCopy syncState:2];

  v26 = SecItemUpdate(Mutable, attributesToUpdate);
  cache2 = [self cache];
  [cache2 clearDataForService:nameCopy username:usernameCopy syncState:2];

  if (!v26)
  {
    v29 = [(__CFDictionary *)attributesToUpdate objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    v30 = [self _syncStateForKeychainDictionary:v20];
    v31 = v30;
    v28 = v39;
    if (v29)
    {
      v32 = [objc_alloc(MEMORY[0x277CB8FC8]) initWithData:v29 encoding:4];
      cache3 = [self cache];
      [cache3 cacheData:v32 forService:nameCopy username:usernameCopy syncState:v31];

      v35 = _ACDKeychainLogSystem(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = ACHashedString();
        *buf = 134218498;
        v45 = v31;
        v46 = 2112;
        v47 = nameCopy;
        v48 = 2112;
        v49 = v36;
        v37 = v36;
        _os_log_debug_impl(&dword_221D2F000, v35, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) update for %@.%@", buf, 0x20u);
      }
    }

    else
    {
      v32 = _ACDKeychainLogSystem(v30);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v35 = ACHashedString();
      *buf = 134218498;
      v45 = v31;
      v46 = 2112;
      v47 = nameCopy;
      v48 = 2112;
      v49 = v35;
      _os_log_debug_impl(&dword_221D2F000, v32, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) update for %@.%@ has no data, ignoring", buf, 0x20u);
    }

LABEL_22:
    goto LABEL_23;
  }

  v28 = v39;
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v26 userInfo:0];
  }

LABEL_23:
  CFRelease(Mutable);
}

+ (void)addItemWithServiceName:(id)name username:(id)username accessGroup:(id)group passwordData:(id)data options:(id)options error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  dataCopy = data;
  optionsCopy = options;
  if (nameCopy && usernameCopy)
  {
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  +[ACDKeychain addItemWithServiceName:username:accessGroup:passwordData:options:error:];
  if (error)
  {
LABEL_4:
    *error = 0;
  }

LABEL_5:
  errorCopy = error;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], nameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], *MEMORY[0x277CBED28]);
  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], groupCopy);
  }

  v42 = groupCopy;
  v43 = dataCopy;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], dataCopy);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = optionsCopy;
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v47;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v20);
        }

        CFDictionaryAddValue(Mutable, *(*(&v46 + 1) + 8 * i), [v20 valueForKey:*(*(&v46 + 1) + 8 * i)]);
      }

      v22 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v22);
  }

  v56 = 0x283538FB8;
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v57 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];

  v45 = 0;
  v27 = [MEMORY[0x277CCAC58] dataWithPropertyList:v26 format:100 options:0 error:&v45];
  v28 = v45;
  v29 = v28;
  if (v28 || !v27)
  {
    v30 = _ACDKeychainLogSystem(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[ACDKeychain addItemWithServiceName:username:accessGroup:passwordData:options:error:];
    }
  }

  else
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFB8], v27);
  }

  cache = [self cache];
  [cache clearDataForService:nameCopy username:usernameCopy syncState:2];

  result = 0;
  v32 = SecItemAdd(Mutable, &result);
  cache2 = [self cache];
  [cache2 clearDataForService:nameCopy username:usernameCopy syncState:2];

  if (v32)
  {
    if (errorCopy)
    {
      *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v32 userInfo:0];
    }
  }

  else
  {
    v34 = [self _syncStateForKeychainDictionary:v20];
    v35 = [objc_alloc(MEMORY[0x277CB8FC8]) initWithData:v43 encoding:4];
    cache3 = [self cache];
    [cache3 cacheData:v35 forService:nameCopy username:usernameCopy syncState:v34];

    v38 = _ACDKeychainLogSystem(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = ACHashedString();
      *buf = 134218498;
      v51 = v34;
      v52 = 2112;
      v53 = nameCopy;
      v54 = 2112;
      v55 = v39;
      v40 = v39;
      _os_log_debug_impl(&dword_221D2F000, v38, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) add for %@.%@", buf, 0x20u);
    }
  }

  CFRelease(Mutable);
}

+ (BOOL)addSyncItemWithServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options extension:(id)extension error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  optionsCopy = options;
  extensionCopy = extension;
  v18 = extensionCopy;
  if (nameCopy && usernameCopy && extensionCopy)
  {
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  +[ACDKeychain addSyncItemWithServiceName:username:accessGroup:options:extension:error:];
  if (error)
  {
LABEL_5:
    *error = 0;
  }

LABEL_6:
  v32 = nameCopy;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nameCopy, v18];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  v31 = v19;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v19);
  v21 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFC0], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], v21);
  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], groupCopy);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = optionsCopy;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        CFDictionaryAddValue(Mutable, *(*(&v34 + 1) + 8 * i), [v22 valueForKey:*(*(&v34 + 1) + 8 * i)]);
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], v21);
  result = 0;
  v27 = SecItemAdd(Mutable, &result);
  v28 = v27 == 0;
  if (error)
  {
    v29 = v32;
    if (v27)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v27 userInfo:0];
      *error = v28 = 0;
    }
  }

  else
  {
    v29 = v32;
  }

  CFRelease(Mutable);

  return v28;
}

+ (BOOL)updateSyncItemForServiceName:(id)name username:(id)username accessGroup:(id)group newValues:(id)values extension:(id)extension error:(id *)error
{
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  valuesCopy = values;
  extensionCopy = extension;
  v18 = extensionCopy;
  if (nameCopy && usernameCopy && extensionCopy)
  {
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  +[ACDKeychain updateSyncItemForServiceName:username:accessGroup:newValues:extension:error:];
  if (error)
  {
LABEL_5:
    *error = 0;
  }

LABEL_6:
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nameCopy, v18];
  v20 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v19);
  v22 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], groupCopy);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v20, 0, valuesCopy);
  CFDictionaryAddValue(MutableCopy, *MEMORY[0x277CDBFC0], v22);
  v24 = SecItemUpdate(Mutable, MutableCopy);
  v25 = v24 == 0;
  if (error && v24)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v24 userInfo:0];
    *error = v25 = 0;
  }

  CFRelease(MutableCopy);
  CFRelease(Mutable);

  return v25;
}

+ (BOOL)removeItemForServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  optionsCopy = options;
  if (nameCopy && usernameCopy)
  {
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  +[ACDKeychain removeItemForServiceName:username:accessGroup:options:error:];
  if (error)
  {
LABEL_4:
    *error = 0;
  }

LABEL_5:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  if ([usernameCopy length])
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  }

  if ([nameCopy length])
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], nameCopy);
  }

  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], groupCopy);
  }

  v36 = groupCopy;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = optionsCopy;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        CFDictionaryAddValue(Mutable, *(*(&v37 + 1) + 8 * i), [v17 valueForKey:*(*(&v37 + 1) + 8 * i)]);
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v19);
  }

  cache = [self cache];
  [cache clearDataForService:nameCopy username:usernameCopy syncState:2];

  v23 = SecItemDelete(Mutable);
  cache2 = [self cache];
  [cache2 clearDataForService:nameCopy username:usernameCopy syncState:2];

  v26 = _ACDKeychainLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychain removeItemForServiceName:v23 username:v26 accessGroup:? options:? error:?];
  }

  if (v23 != -25300 && v23)
  {
    v32 = v36;
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v23 userInfo:0];
      *error = v33 = 0;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v27 = [self _syncStateForKeychainDictionary:v17];
    cache3 = [self cache];
    null = [MEMORY[0x277CBEB68] null];
    [cache3 cacheData:null forService:nameCopy username:usernameCopy syncState:v27];

    v31 = _ACDKeychainLogSystem(v30);
    v32 = v36;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v35 = ACHashedString();
      *buf = 134218498;
      v42 = v27;
      v43 = 2112;
      v44 = nameCopy;
      v45 = 2112;
      v46 = v35;
      _os_log_debug_impl(&dword_221D2F000, v31, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) delete for %@.%@", buf, 0x20u);
    }

    v33 = 1;
  }

  CFRelease(Mutable);

  return v33;
}

+ (BOOL)removeTombstoneForServiceName:(id)name username:(id)username accessGroup:(id)group extension:(id)extension error:(id *)error
{
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  extensionCopy = extension;
  v15 = extensionCopy;
  if (nameCopy && usernameCopy && extensionCopy)
  {
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  +[ACDKeychain removeTombstoneForServiceName:username:accessGroup:extension:error:];
  if (error)
  {
LABEL_5:
    *error = 0;
  }

LABEL_6:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nameCopy, v15];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v16);
  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], groupCopy);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
  result = 0;
  v18 = SecItemAdd(Mutable, &result);
  v19 = v18 == 0;
  if (error && v18)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v18 userInfo:0];
    *error = v19 = 0;
  }

  CFRelease(Mutable);

  return v19;
}

+ (id)keychainDeletedAccounts
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  v3 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC568], v3);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], v3);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC180], v3);
  result = 0;
  if (SecItemCopyMatching(Mutable, &result) || !result)
  {
    CFRelease(Mutable);
    v4 = 0;
  }

  else
  {
    v4 = result;
    CFRelease(result);
    CFRelease(Mutable);
    v6 = _ACDKeychainLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychain keychainDeletedAccounts];
    }
  }

  return v4;
}

uint64_t __42__ACDKeychain__knownMigratedKeychainItems__block_invoke()
{
  _knownMigratedKeychainItems_migratedKeychainItems = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_isKnownMigratedKeychainItem:(id)item
{
  itemCopy = item;
  persistentRef = [itemCopy persistentRef];
  if (persistentRef)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _knownMigratedKeychainItems = [selfCopy _knownMigratedKeychainItems];
    v8 = [_knownMigratedKeychainItems containsObject:persistentRef];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (void)_addKnownMigratedKeychainItem:(id)item
{
  itemCopy = item;
  persistentRef = [itemCopy persistentRef];
  if (persistentRef)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _knownMigratedKeychainItems = [selfCopy _knownMigratedKeychainItems];
    [_knownMigratedKeychainItems addObject:persistentRef];

    objc_sync_exit(selfCopy);
  }
}

+ (void)_migrateKeychainItemIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  hasCustomAccessControl = [necessaryCopy hasCustomAccessControl];
  if (hasCustomAccessControl)
  {
    v6 = _ACDKeychainLogSystem(hasCustomAccessControl);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychain _migrateKeychainItemIfNecessary:];
    }

LABEL_11:

    goto LABEL_12;
  }

  v7 = [self _isKnownMigratedKeychainItem:necessaryCopy];
  if (v7)
  {
    v6 = _ACDKeychainLogSystem(v7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychain _migrateKeychainItemIfNecessary:];
    }

    goto LABEL_11;
  }

  v8 = +[ACDKeychainMigrator sharedInstance];
  v9 = [v8 migrateKeychainItem:necessaryCopy toKeybag:0];

  if ((v9 & 1) == 0)
  {
    v6 = _ACDKeychainLogSystem(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ACDKeychain _migrateKeychainItemIfNecessary:];
    }

    goto LABEL_11;
  }

  [self _addKnownMigratedKeychainItem:necessaryCopy];
LABEL_12:
}

+ (void)_passwordForServiceName:username:accessGroup:checkInKeybag:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)updateItemForServiceName:username:accessGroup:newValues:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)addItemWithServiceName:username:accessGroup:passwordData:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)addItemWithServiceName:username:accessGroup:passwordData:options:error:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "addItemWithServiceName failed to set current version on item %@", v1, 0xCu);
}

+ (void)addSyncItemWithServiceName:username:accessGroup:options:extension:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)updateSyncItemForServiceName:username:accessGroup:newValues:extension:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)removeItemForServiceName:username:accessGroup:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)removeItemForServiceName:(NSObject *)a3 username:accessGroup:options:error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_221D2F000, a3, OS_LOG_TYPE_DEBUG, "Keychain query - %@ with result - %@", &v6, 0x16u);
}

+ (void)removeTombstoneForServiceName:username:accessGroup:extension:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)keychainDeletedAccounts
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_migrateKeychainItemIfNecessary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Failed to migrate keychain item %@.", v1, 0xCu);
}

+ (void)_migrateKeychainItemIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_migrateKeychainItemIfNecessary:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end