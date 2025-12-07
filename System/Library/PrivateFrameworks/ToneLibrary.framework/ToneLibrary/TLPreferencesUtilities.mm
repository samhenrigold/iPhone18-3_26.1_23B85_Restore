@interface TLPreferencesUtilities
+ (BOOL)_valueForEntitlement:(id)entitlement task:(__SecTask *)task;
+ (BOOL)canAccessNanoRegistry;
+ (__CFDictionary)_copyAllKeysAndValuesFromDomain:(__CFString *)domain usingPreferencesScope:(int)scope;
+ (__CFString)copySharedResourcesPreferencesDomain;
+ (id)_existingPerTopicPreferenceKeyPrefixesWithRegularPreferenceKeys:(const void *)keys regularPreferenceKeysCount:(unint64_t)count;
+ (void)_enumerateKeysAndValuesWithEligibleKeyPrefixes:(id)prefixes inDomain:(__CFString *)domain usingPreferencesScope:(int)scope withBlock:(id)block;
+ (void)_setValue:(void *)value forKey:(__CFString *)key inDomain:(__CFString *)domain usingPreferencesScope:(int)scope;
+ (void)_synchronizeDomain:(__CFString *)domain usingPreferencesScope:(int)scope;
+ (void)migratePerTopicPreferencesInDomain:(__CFString *)domain withRegularPreferenceKeys:(const void *)keys regularPreferenceKeysCount:(unint64_t)count intoSinglePerTopicPreferenceWithSuffix:(id)suffix usingPreferencesScope:(int)scope;
@end

@implementation TLPreferencesUtilities

+ (__CFString)copySharedResourcesPreferencesDomain
{
  preferencesDomain = [self preferencesDomain];

  return [self copySharedResourcesPreferencesDomainForDomain:preferencesDomain];
}

+ (void)migratePerTopicPreferencesInDomain:(__CFString *)domain withRegularPreferenceKeys:(const void *)keys regularPreferenceKeysCount:(unint64_t)count intoSinglePerTopicPreferenceWithSuffix:(id)suffix usingPreferencesScope:(int)scope
{
  v7 = *&scope;
  suffixCopy = suffix;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v13 = [self _existingPerTopicPreferenceKeyPrefixesWithRegularPreferenceKeys:keys regularPreferenceKeysCount:count];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __175__TLPreferencesUtilities_migratePerTopicPreferencesInDomain_withRegularPreferenceKeys_regularPreferenceKeysCount_intoSinglePerTopicPreferenceWithSuffix_usingPreferencesScope___block_invoke;
  v26[3] = &unk_1E8578E18;
  v15 = v14;
  selfCopy = self;
  domainCopy = domain;
  v31 = v7;
  v27 = v15;
  v28 = &v32;
  [self _enumerateKeysAndValuesWithEligibleKeyPrefixes:v13 inDomain:domain usingPreferencesScope:v7 withBlock:v26];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __175__TLPreferencesUtilities_migratePerTopicPreferencesInDomain_withRegularPreferenceKeys_regularPreferenceKeysCount_intoSinglePerTopicPreferenceWithSuffix_usingPreferencesScope___block_invoke_2;
  v20 = &unk_1E8578E40;
  v16 = suffixCopy;
  selfCopy2 = self;
  domainCopy2 = domain;
  v25 = v7;
  v21 = v16;
  v22 = &v32;
  [v15 enumerateKeysAndObjectsUsingBlock:&v17];
  if (*(v33 + 24) == 1)
  {
    [self _synchronizeDomain:domain usingPreferencesScope:{v7, v17, v18, v19, v20}];
  }

  _Block_object_dispose(&v32, 8);
}

void __175__TLPreferencesUtilities_migratePerTopicPreferencesInDomain_withRegularPreferenceKeys_regularPreferenceKeysCount_intoSinglePerTopicPreferenceWithSuffix_usingPreferencesScope___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v11 substringFromIndex:{objc_msgSend(v8, "length")}];
  v10 = [*(a1 + 32) objectForKey:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) setObject:v10 forKey:v8];
  }

  [v10 setObject:v7 forKey:v9];
  [*(a1 + 48) _setValue:0 forKey:v11 inDomain:*(a1 + 56) usingPreferencesScope:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __175__TLPreferencesUtilities_migratePerTopicPreferencesInDomain_withRegularPreferenceKeys_regularPreferenceKeysCount_intoSinglePerTopicPreferenceWithSuffix_usingPreferencesScope___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

  v7 = [v8 stringByAppendingString:*(a1 + 32)];
  [*(a1 + 48) _setValue:v5 forKey:v7 inDomain:*(a1 + 56) usingPreferencesScope:*(a1 + 64)];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

+ (BOOL)canAccessNanoRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__TLPreferencesUtilities_canAccessNanoRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistryOnceToken != -1)
  {
    dispatch_once(&canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistryOnceToken, block);
  }

  return canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistry;
}

void __47__TLPreferencesUtilities_canAccessNanoRegistry__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _valueForEntitlement:@"com.apple.nano.nanoregistry.generalaccess" task:v2];
    v5 = [*(a1 + 32) _valueForEntitlement:@"com.apple.nano.nanoregistry" task:v3];
    CFRelease(v3);
    canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistry = (v4 | v5) & 1;
    v8 = TLLogGeneral(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistry;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "Can access NanoRegistry: %{BOOL}u.", v9, 8u);
    }
  }
}

+ (BOOL)_valueForEntitlement:(id)entitlement task:(__SecTask *)task
{
  v17 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);
  v8 = TLLogGeneral(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = entitlementCopy;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "Value of %{public}@ entitlement for current process: %{public}@.", buf, 0x16u);
  }

  if (v6)
  {
    v9 = CFGetTypeID(v6);
    if (v9 == CFBooleanGetTypeID())
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    CFRelease(v6);
  }

  else
  {
    bOOLValue = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  return bOOLValue;
}

+ (id)_existingPerTopicPreferenceKeyPrefixesWithRegularPreferenceKeys:(const void *)keys regularPreferenceKeysCount:(unint64_t)count
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); count; --count)
  {
    if (*keys)
    {
      v7 = [*keys stringByAppendingString:@"-"];
      [i addObject:v7];
    }

    ++keys;
  }

  return i;
}

+ (void)_enumerateKeysAndValuesWithEligibleKeyPrefixes:(id)prefixes inDomain:(__CFString *)domain usingPreferencesScope:(int)scope withBlock:(id)block
{
  v7 = *&scope;
  prefixesCopy = prefixes;
  blockCopy = block;
  v12 = [self _copyAllKeysAndValuesFromDomain:domain usingPreferencesScope:v7];
  if (v12)
  {
    v13 = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __114__TLPreferencesUtilities__enumerateKeysAndValuesWithEligibleKeyPrefixes_inDomain_usingPreferencesScope_withBlock___block_invoke;
    v14[3] = &unk_1E8578E68;
    v15 = prefixesCopy;
    v16 = blockCopy;
    [v13 enumerateKeysAndObjectsUsingBlock:v14];
    CFRelease(v13);
  }
}

void __114__TLPreferencesUtilities__enumerateKeysAndValuesWithEligibleKeyPrefixes_inDomain_usingPreferencesScope_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = v6;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([v7 hasPrefix:{*(*(&v14 + 1) + 8 * i), v14}])
            {
              (*(*(a1 + 40) + 16))();
              goto LABEL_13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

+ (__CFDictionary)_copyAllKeysAndValuesFromDomain:(__CFString *)domain usingPreferencesScope:(int)scope
{
  if (!scope)
  {
    v4 = MEMORY[0x1E695E898];
    return CFPreferencesCopyMultiple(0, domain, *MEMORY[0x1E695E8B8], *v4);
  }

  if (scope == 1)
  {
    v4 = MEMORY[0x1E695E8B0];
    return CFPreferencesCopyMultiple(0, domain, *MEMORY[0x1E695E8B8], *v4);
  }

  return 0;
}

+ (void)_setValue:(void *)value forKey:(__CFString *)key inDomain:(__CFString *)domain usingPreferencesScope:(int)scope
{
  if (scope == 1)
  {
    CFPreferencesSetValue(key, value, domain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  }

  else if (!scope)
  {
    CFPreferencesSetAppValue(key, value, domain);
  }
}

+ (void)_synchronizeDomain:(__CFString *)domain usingPreferencesScope:(int)scope
{
  if (scope)
  {
    if (scope != 1)
    {
      return;
    }

    v4 = MEMORY[0x1E695E8B0];
  }

  else
  {
    v4 = MEMORY[0x1E695E898];
  }

  CFPreferencesSynchronize(domain, *MEMORY[0x1E695E8B8], *v4);
}

@end