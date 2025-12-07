@interface _CFXPreferences
+ (id)copyDefaultPreferences;
- (BOOL)appValueIsForcedForKey:(__CFString *)key appIdentifier:;
- (BOOL)currentUserHasInvalidHomeDirectory;
- (CFMutableDictionaryRef)copyDictionaryForApp:(const __CFString *)app withContainer:;
- (CFMutableDictionaryRef)copyDictionaryForSourceWithIdentifier:(uint64_t)identifier;
- (CFMutableDictionaryRef)copyManagedValuesForKeys:(__CFString *)keys identifier:(int)identifier useSystemContainer:;
- (CFMutableDictionaryRef)copyValuesForKeys:(__CFString *)keys identifier:(__CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:;
- (CFMutableStringRef)copyDescriptionOfSearchLists;
- (_CFXPreferences)init;
- (_xpc_connection_s)_copyDaemonConnectionSettingUpIfNecessaryForRole:(const void *)role andUserIdentifier:;
- (os_unfair_lock_s)copyDictionaryForVolatileSourceWithName:(os_unfair_lock_s *)name;
- (uint64_t)alreadylocked_withNamedVolatileSources:(uint64_t)result;
- (uint64_t)alreadylocked_withSearchLists:(uint64_t)result;
- (uint64_t)alreadylocked_withSources:(uint64_t)result;
- (uint64_t)appSynchronizeWithIdentifier:(const __CFString *)identifier container:;
- (uint64_t)copyKeyListForIdentifier:(const __CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:;
- (uint64_t)euid;
- (uint64_t)fileProtectionClassForIdentifier:(const __CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:;
- (uint64_t)hasCloudValueForKey:(__CFString *)key appIdentifier:(const __CFString *)identifier container:(uint64_t)container configurationURL:;
- (uint64_t)hasNonRegisteredValueForKey:(__CFString *)key appIdentifier:(const __CFString *)identifier container:(uint64_t)container configurationURL:;
- (uint64_t)nonLaunchPersonaUID;
- (uint64_t)preloadAppValuesForIdentifiers:(uint64_t)result containers:configurationURLs:count:;
- (uint64_t)synchronizeIdentifier:(const __CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:;
- (uint64_t)volatileSourceNames;
- (void)_deliverPendingKVONotifications;
- (void)_setupNewDaemonConnection:(uint64_t)connection invalidationHandler:;
- (void)addSuitePreferences:(CFTypeRef)cf1 toAppIdentifier:(uint64_t)identifier container:;
- (void)assertEquivalence:(BOOL)equivalence ofIdentifiers:(__CFArray *)identifiers containers:(__CFArray *)containers cloudConfigurationURLs:(__CFArray *)ls;
- (void)assertEquivalence:(BOOL)equivalence ofIdentifiers:(__CFArray *)identifiers users:(__CFArray *)users hosts:(__CFArray *)hosts containers:(__CFArray *)containers managedFlags:(__CFArray *)flags cloudFlags:(__CFArray *)cloudFlags;
- (void)copyAppValueForKey:(__CFString *)key identifier:(__CFString *)identifier container:(__CFString *)container configurationURL:(__CFURL *)l;
- (void)copyValueForKey:(__CFString *)key identifier:(__CFString *)identifier user:(__CFString *)user host:(__CFString *)host container:(__CFString *)container;
- (void)currentUserHasInvalidHomeDirectory;
- (void)dealloc;
- (void)destroyConnections;
- (void)flushCachesForAppIdentifier:(const void *)identifier user:;
- (void)flushManagedSources;
- (void)fullCloudSynchronizeForAppIdentifier:(uint64_t)identifier container:configurationURL:completionHandler:;
- (void)generateKVONotificationsForIdentifier:(__CFString *)identifier withOldValues:(id)values newValues:(id)newValues;
- (void)ingestVolatileStateFromPreferences:(uint64_t)result;
- (void)registerDefaultValues:(__CFDictionary *)values;
- (void)registerUserDefaultsInstance:(id)instance configurationURL:(__CFURL *)l;
- (void)removeSuite:(uint64_t)suite fromApp:(uint64_t)app withContainer:;
- (void)removeVolatileSourceForName:(os_unfair_lock_s *)name;
- (void)replaceSearchList:(uint64_t)list withSearchList:;
- (void)replaceValuesInSourceForIdentifier:(uint64_t)identifier user:host:container:withValues:;
- (void)replaceValuesInVolatileSourceNamed:(uint64_t)named withValues:;
- (void)resetPreferences:(BOOL)preferences;
- (void)resetUserPreferences;
- (void)setAccessRestricted:(CFTypeRef)cf1 forAppIdentifier:;
- (void)setBackupDisabled:(__CFString *)cf1 identifier:(const __CFString *)identifier user:(const void *)user host:(__CFString *)host container:;
- (void)setCloudSyncEnabled:(uint64_t)enabled forKey:(__CFString *)theString appIdentifier:(CFStringRef)identifier container:;
- (void)setDaemonCacheEnabled:(BOOL)enabled identifier:(__CFString *)identifier user:(__CFString *)user host:(__CFString *)host container:(__CFString *)container;
- (void)setFileProtectionClass:(__CFString *)cf1 identifier:(const __CFString *)identifier user:(const void *)user host:(__CFString *)host container:;
- (void)setValue:(uint64_t)result forKey:identifier:user:host:container:;
- (void)setValue:(void *)value forKey:(__CFString *)key appIdentifier:(__CFString *)identifier container:(__CFString *)container configurationURL:(__CFURL *)l;
- (void)setValuesForKeys:(uint64_t)result removingValuesForKeys:identifier:user:host:container:;
- (void)shmemForRole:(const char *)role name:(uint64_t)name;
- (void)simulateTimerSynchronizeForTestingForUser:(__CFString *)user;
- (void)synchronizeEverything;
- (void)unregisterUserDefaultsInstance:(id)instance;
- (void)updateSearchListsForIdentifier:(uint64_t)identifier;
- (void)with23930198HackSourceForIdentifier:(__CFString *)cf2 user:(int)user byHost:(__CFString *)host container:(int)container cloud:(uint64_t)cloud perform:;
- (void)withConnectionForRole:(const void *)role andUserIdentifier:(uint64_t)identifier performBlock:;
- (void)withManagedSourceForIdentifier:(uint64_t)identifier user:(uint64_t)user perform:;
- (void)withNamedVolatileSourceForIdentifier:(uint64_t)identifier perform:;
- (void)withNamedVolatileSources:(os_unfair_lock_s *)sources;
- (void)withSearchListForIdentifier:(CFStringRef)identifier container:(uint64_t)container cloudConfigurationURL:(uint64_t)l perform:;
- (void)withSearchLists:(uint64_t)lists;
- (void)withSourceForIdentifier:(const __CFString *)cf2 user:(int)user byHost:(__CFString *)host container:(int)container cloud:(uint64_t)cloud perform:;
- (void)withSources:(os_unfair_lock_s *)sources;
- (void)withSuiteSearchListForIdentifier:(const __CFString *)cf1 user:(int)user locked:(uint64_t)locked perform:;
- (xpc_object_t)_replaceDirectConnection:(xpc_object_t *)result;
@end

@implementation _CFXPreferences

- (void)_deliverPendingKVONotifications
{
  if (self)
  {
    os_unfair_lock_assert_not_owner(self + 18);
    os_unfair_lock_assert_not_owner(self + 19);
    os_unfair_lock_assert_not_owner(self + 20);
    v2 = _CFGetTSD(16);
    if (v2)
    {
      v3 = v2;
      _CFSetTSD(16, 0, 0);
      if (v3 != 16)
      {
        _CFPrefsDeliverPendingKVONotificationsGuts(v3);

        CFRelease(v3);
      }
    }
  }
}

- (uint64_t)euid
{
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

- (BOOL)currentUserHasInvalidHomeDirectory
{
  if (result)
  {
    v1 = result;
    v2 = (result + 68);
    if (atomic_load((result + 68)))
    {
LABEL_15:
      v10 = atomic_load(v2);
      return v10 == 2;
    }

    v4 = _CFUnsandboxedHomeDirectoryForCurrentUser();
    v5 = v4;
    if (v4)
    {
      if (*v4 && strncmp(v4, "/var/empty", 0xAuLL))
      {
        atomic_store(1u, (v1 + 68));
LABEL_14:
        free(v5);
        goto LABEL_15;
      }

      atomic_store(2u, (v1 + 68));
      if (*v5)
      {
        v6 = "starts with /var/empty";
      }

      else
      {
        v6 = "is empty";
      }
    }

    else
    {
      atomic_store(2u, (v1 + 68));
      v6 = "is null";
    }

    v7 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
    v9 = _CFPrefsClientLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_CFXPreferences *)v6 currentUserHasInvalidHomeDirectory];
    }

    _CFSetTSD(15, 0, 0);
    goto LABEL_14;
  }

  return result;
}

- (_CFXPreferences)init
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _CFXPreferences;
  v2 = [(_CFXPreferences *)&v11 init];
  if (v2)
  {
    v2->_sources = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->_sourcesLock._os_unfair_lock_opaque = 0;
    v2->_namedVolatileSources = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->_namedVolatileSourcesLock._os_unfair_lock_opaque = 0;
    v2->_searchLists = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->_searchListsLock._os_unfair_lock_opaque = 0;
    v2->_launchdUID = -1;
    v2->_euid = _CFGetEUID();
    v3 = xpc_copy_entitlement_for_self();
    v4 = v3;
    if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E50] && (count = xpc_array_get_count(v4)) != 0)
    {
      v7 = count;
      v8 = 0;
      v2->_groupContainersForCurrentUser = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
      do
      {
        string = xpc_array_get_string(v4, v8);
        v10 = CFStringCreateWithCString(0, string, 0x8000100u);
        CFSetAddValue(v2->_groupContainersForCurrentUser, v10);
        CFRelease(v10);
        ++v8;
      }

      while (v7 != v8);
    }

    else
    {
      v2->_groupContainersForCurrentUser = 0;
    }

    if (v4)
    {
      xpc_release(v4);
    }
  }

  return v2;
}

- (void)synchronizeEverything
{
  v6 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = 0;
    v3 = &v2;
    v4 = 0x2020000000;
    v5 = 0;
    [_CFXPreferences withSources:self];
    v1 = v3[3];
    if (v1)
    {
      CFDictionaryApplyFunction(v1, synchronizeApplier, 0);
      CFRelease(v3[3]);
    }

    _Block_object_dispose(&v2, 8);
  }
}

- (void)currentUserHasInvalidHomeDirectory
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  selfCopy = self;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "All kCFPreferencesCurrentUser domains in this process will be volatile, because homeDirPath %{public}s", &v2, 0xCu);
}

- (void)destroyConnections
{
  if (self)
  {
    os_unfair_lock_lock(&unk_1ED40BDE8);
    v2 = self[4];
    if (v2)
    {
      xpc_release(v2);
    }

    self[4] = 0;
    v3 = self[5];
    if (v3)
    {
      xpc_release(v3);
    }

    self[5] = 0;
    qword_1ED40BDF0 = 0;
    qword_1ED40BDF8 = 0;
    v4 = self[6];
    if (v4)
    {
      xpc_release(v4);
    }

    self[6] = 0;

    os_unfair_lock_unlock(&unk_1ED40BDE8);
  }
}

- (void)withSourceForIdentifier:(const __CFString *)cf2 user:(int)user byHost:(__CFString *)host container:(int)container cloud:(uint64_t)cloud perform:
{
  v48 = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (self)
  {
    if (user && !CFEqual(@"kCFPreferencesAnyUser", cf2))
    {
      userCopy = 0;
    }

    v45 = 0;
    v46 = 0;
    v44 = 0;
    v43 = 0;
    _CFPrefsExtractQuadrupleFromPathIfPossible(a2, &v46, &v45, &v44, &userCopy, &v43 + 1, &v43);
    v12 = v46;
    if (v46)
    {
      a2 = v46;
      if (container)
      {
        [_CFXPreferences withSourceForIdentifier:user:byHost:container:cloud:perform:];
      }
    }

    v14 = v44;
    v13 = v45;
    if (v45)
    {
      v15 = v45;
    }

    else
    {
      v15 = cf2;
    }

    if (v44)
    {
      host = v44;
    }

    v16 = _CFPrefsCopyUserForContainer(v15, host);
    Copy = @"kCFPreferencesAnyUser";
    if (CFEqual(@"kCFPreferencesAnyUser", v16))
    {
      v18 = userCopy;
      if (!userCopy)
      {
        v18 = 1;
      }

      userCopy = v18;
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v37 = __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke;
    v38 = &__block_descriptor_64_e5_v8__0l;
    v39 = v14;
    v40 = v12;
    v41 = v13;
    v42 = v16;
    if (HIBYTE(v43) == 1)
    {
      [(_CFXPreferences *)self withManagedSourceForIdentifier:a2 user:v16 perform:cloud];
      v37(v36);
    }

    else
    {
      CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
      if (CFEqual(v16, @"kCFPreferencesCurrentUser"))
      {
        Copy = @"kCFPreferencesCurrentUser";
      }

      else if (!CFEqual(v16, @"kCFPreferencesAnyUser"))
      {
        v20 = CFCopyUserName();
        v21 = CFEqual(v16, v20) == 0;
        CFRelease(v20);
        v22 = !v21;
        if (!@"kCFPreferencesCurrentUser")
        {
          v22 = 0;
        }

        Copy = @"kCFPreferencesCurrentUser";
        if (!v22)
        {
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v16);
        }
      }

      if (withSourceForIdentifier_user_byHost_container_cloud_perform__registerOnce != -1)
      {
        [_CFXPreferences withSourceForIdentifier:user:byHost:container:cloud:perform:];
      }

      v23 = userCopy;
      CacheKeyForQuintuplet = _CFPrefsCreateCacheKeyForQuintuplet(CacheStringForBundleID, Copy, userCopy, host, container);
      v30 = 0;
      v31 = &v30;
      v32 = 0x3052000000;
      v33 = __Block_byref_object_copy__0;
      v34 = __Block_byref_object_dispose__0;
      v35 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216;
      v27[3] = &unk_1E6DCF088;
      v27[6] = CacheKeyForQuintuplet;
      v27[7] = Copy;
      containerCopy = container;
      v29 = v23;
      v27[8] = CacheStringForBundleID;
      v27[9] = host;
      v27[4] = self;
      v27[5] = &v30;
      os_unfair_lock_lock((self + 72));
      __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216(v27, *(self + 8));
      os_unfair_lock_unlock((self + 72));
      if (CacheKeyForQuintuplet)
      {
        CFRelease(CacheKeyForQuintuplet);
      }

      CFRelease(Copy);
      v37(v36);
      v25 = _CFPrefsArmPendingKVOSlot();
      (*(cloud + 16))(cloud, v31[5]);

      if (v25)
      {
        [(_CFXPreferences *)self _deliverPendingKVONotifications];
      }

      _Block_object_dispose(&v30, 8);
    }
  }
}

- (void)withNamedVolatileSourceForIdentifier:(uint64_t)identifier perform:
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__0;
    v12 = __Block_byref_object_dispose__0;
    v13 = 0;
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, CacheStringForBundleID);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81___CFXPreferences_SourceAdditions__withNamedVolatileSourceForIdentifier_perform___block_invoke;
    v7[3] = &unk_1E6DCF0B0;
    v7[4] = self;
    v7[5] = &v8;
    v7[6] = Copy;
    v7[7] = CacheStringForBundleID;
    os_unfair_lock_lock((self + 80));
    __81___CFXPreferences_SourceAdditions__withNamedVolatileSourceForIdentifier_perform___block_invoke(v7, *(self + 16));
    os_unfair_lock_unlock((self + 80));
    LODWORD(CacheStringForBundleID) = _CFPrefsArmPendingKVOSlot();
    (*(identifier + 16))(identifier, v9[5]);

    if (CacheStringForBundleID)
    {
      [(_CFXPreferences *)self _deliverPendingKVONotifications];
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (void)assertEquivalence:(BOOL)equivalence ofIdentifiers:(__CFArray *)identifiers users:(__CFArray *)users hosts:(__CFArray *)hosts containers:(__CFArray *)containers managedFlags:(__CFArray *)flags cloudFlags:(__CFArray *)cloudFlags
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  Count = CFArrayGetCount(identifiers);
  if (Count != CFArrayGetCount(containers) || (v11 = CFArrayGetCount(identifiers), v11 != CFArrayGetCount(users)) || (v12 = CFArrayGetCount(identifiers), v12 != CFArrayGetCount(hosts)) || (v13 = CFArrayGetCount(identifiers), v13 != CFArrayGetCount(containers)) || (v14 = CFArrayGetCount(identifiers), v14 != CFArrayGetCount(flags)) || (v15 = CFArrayGetCount(identifiers), v15 != CFArrayGetCount(cloudFlags)))
  {
    __assert_rtn("[_CFXPreferences(SourceAdditions) assertEquivalence:ofIdentifiers:users:hosts:containers:managedFlags:cloudFlags:]", "CFPrefsSource.m", 1303, "CFArrayGetCount(identifiers) == CFArrayGetCount(containers) && CFArrayGetCount(identifiers) == CFArrayGetCount(users) && CFArrayGetCount(identifiers) == CFArrayGetCount(hosts) && CFArrayGetCount(identifiers) == CFArrayGetCount(containers) && CFArrayGetCount(identifiers) == CFArrayGetCount(managedFlags) && CFArrayGetCount(identifiers) == CFArrayGetCount(isCloudFlags)");
  }

  for (i = 0; i < CFArrayGetCount(identifiers); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(containers, i);
    v18 = CFArrayGetValueAtIndex(hosts, i);
    v19 = CFArrayGetValueAtIndex(cloudFlags, i);
    v20 = CFArrayGetValueAtIndex(flags, i);
    v21 = CFArrayGetValueAtIndex(identifiers, i);
    v22 = CFArrayGetValueAtIndex(users, i);
    if (v20 == &__kCFBooleanTrue && v19 == &__kCFBooleanTrue)
    {
      __assert_rtn("[_CFXPreferences(SourceAdditions) assertEquivalence:ofIdentifiers:users:hosts:containers:managedFlags:cloudFlags:]", "CFPrefsSource.m", 1311, "!(managed && cloud)");
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke;
    v32[3] = &unk_1E6DCF0D8;
    v32[4] = &v34;
    equivalenceCopy = equivalence;
    if (v20 == &__kCFBooleanTrue)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke_2;
      v31[3] = &unk_1E6DCF100;
      v31[4] = v32;
      [(_CFXPreferences *)self withManagedSourceForIdentifier:v21 user:v22 perform:v31];
    }

    else
    {
      if (ValueAtIndex == &__kCFNull)
      {
        v23 = 0;
      }

      else
      {
        v23 = ValueAtIndex;
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke_3;
      v30[3] = &unk_1E6DCF128;
      v30[4] = v32;
      [(_CFXPreferences *)self withSourceForIdentifier:v21 user:v22 byHost:v18 == @"kCFPreferencesCurrentHost" container:v23 cloud:v19 == &__kCFBooleanTrue perform:v30];
    }
  }

  _Block_object_dispose(&v34, 8);
}

- (void)withSuiteSearchListForIdentifier:(const __CFString *)cf1 user:(int)user locked:(uint64_t)locked perform:
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = a2;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    if (CFEqual(cf1, @"kCFPreferencesCurrentUser"))
    {
      Copy = @"kCFPreferencesCurrentUser";
    }

    else
    {
      Copy = @"kCFPreferencesAnyUser";
      if (!CFEqual(cf1, @"kCFPreferencesAnyUser"))
      {
        v11 = CFCopyUserName();
        v12 = CFEqual(cf1, v11);
        CFRelease(v11);
        if (!@"kCFPreferencesCurrentUser" || (Copy = @"kCFPreferencesCurrentUser", !v12))
        {
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf1);
        }
      }
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __93___CFXPreferences_SearchListAdditions__withSuiteSearchListForIdentifier_user_locked_perform___block_invoke;
    v15 = &unk_1E6DD0B88;
    v19 = a2;
    v20 = Copy;
    v17 = v27;
    v18 = &v21;
    selfCopy = self;
    if (user)
    {
      __93___CFXPreferences_SearchListAdditions__withSuiteSearchListForIdentifier_user_locked_perform___block_invoke(v13, *(self + 24));
    }

    else
    {
      os_unfair_lock_lock((self + 76));
      v14(v13, *(self + 24));
      os_unfair_lock_unlock((self + 76));
    }

    (*(locked + 16))(locked, v22[5]);

    CFRelease(Copy);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v27, 8);
  }
}

- (void)with23930198HackSourceForIdentifier:(__CFString *)cf2 user:(int)user byHost:(__CFString *)host container:(int)container cloud:(uint64_t)cloud perform:
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if ((container & 1) != 0 || !eduModeEnabled())
  {
    goto LABEL_18;
  }

  if (appIsInternal_onceToken != -1)
  {
    [_CFXPreferences with23930198HackSourceForIdentifier:user:byHost:container:cloud:perform:];
  }

  if (appIsInternal_isInternal != 1 || _CFGetTSD(15) == &__kCFBooleanTrue)
  {
    goto LABEL_18;
  }

  if (CFEqual(cf2, @"kCFPreferencesCurrentUser"))
  {
    Copy = @"kCFPreferencesCurrentUser";
  }

  else
  {
    Copy = @"kCFPreferencesAnyUser";
    if (!CFEqual(cf2, @"kCFPreferencesAnyUser"))
    {
      v15 = CFCopyUserName();
      v17 = CFEqual(cf2, v15);
      CFRelease(v15);
      if (@"kCFPreferencesCurrentUser" && v17)
      {
        CFRelease(@"kCFPreferencesCurrentUser");
        goto LABEL_21;
      }

      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf2);
    }
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (Copy != @"kCFPreferencesCurrentUser")
  {
LABEL_18:

    [(_CFXPreferences *)self withSourceForIdentifier:a2 user:cf2 byHost:user container:host cloud:container perform:cloud];
    return;
  }

LABEL_21:
  _CFSetTSD(15, &__kCFBooleanTrue, 0);
  v16 = _CFPrefsArmPendingKVOSlot();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112___CFXPreferences_SearchListAdditions__with23930198HackSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke;
  v18[3] = &unk_1E6DD0AE8;
  v18[4] = self;
  v18[5] = cloud;
  normalizeQuintuplet(a2, cf2, user, host, 0, v18);
  _CFSetTSD(15, 0, 0);
  if (v16)
  {
    [(_CFXPreferences *)self _deliverPendingKVONotifications];
  }
}

- (void)updateSearchListsForIdentifier:(uint64_t)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71___CFXPreferences_SearchListAdditions__updateSearchListsForIdentifier___block_invoke;
    v5[3] = &unk_1E6DD0960;
    v5[4] = &v6;
    os_unfair_lock_lock((identifier + 76));
    __71___CFXPreferences_SearchListAdditions__updateSearchListsForIdentifier___block_invoke(v5, *(identifier + 24));
    os_unfair_lock_unlock((identifier + 76));
    v4 = v7[3];
    if (v4)
    {
      CFDictionaryApplyFunction(v4, notifySearchListOfRemoteChangesCallback, a2);
      CFRelease(v7[3]);
    }

    _Block_object_dispose(&v6, 8);
  }
}

- (void)assertEquivalence:(BOOL)equivalence ofIdentifiers:(__CFArray *)identifiers containers:(__CFArray *)containers cloudConfigurationURLs:(__CFArray *)ls
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  Count = CFArrayGetCount(identifiers);
  if (Count != CFArrayGetCount(containers) || (v12 = CFArrayGetCount(identifiers), v12 != CFArrayGetCount(ls)))
  {
    __assert_rtn("[_CFXPreferences(SearchListAdditions) assertEquivalence:ofIdentifiers:containers:cloudConfigurationURLs:]", "CFPrefsSearchListSource.m", 1784, "CFArrayGetCount(identifiers) == CFArrayGetCount(containers) && CFArrayGetCount(identifiers) == CFArrayGetCount(cloudURLs)");
  }

  for (i = 0; i < CFArrayGetCount(identifiers); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(containers, i);
    v15 = CFArrayGetValueAtIndex(ls, i);
    v16 = CFArrayGetValueAtIndex(identifiers, i);
    if (ValueAtIndex == &__kCFNull)
    {
      v17 = 0;
    }

    else
    {
      v17 = ValueAtIndex;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __106___CFXPreferences_SearchListAdditions__assertEquivalence_ofIdentifiers_containers_cloudConfigurationURLs___block_invoke;
    v19[3] = &unk_1E6DD0B60;
    if (v15 == &__kCFNull)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v19[4] = &v21;
    equivalenceCopy = equivalence;
    [(_CFXPreferences *)self withSearchListForIdentifier:v16 container:v17 cloudConfigurationURL:v18 perform:v19];
  }

  _Block_object_dispose(&v21, 8);
}

- (void)ingestVolatileStateFromPreferences:(uint64_t)result
{
  v2[6] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 == result)
    {
      [_CFXPreferences ingestVolatileStateFromPreferences:];
    }

    [_CFXPreferences ingestVolatileStateFromPreferences:v2];
  }
}

+ (id)copyDefaultPreferences
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    return 0;
  }

  if (qword_1ED40BE20 != -1)
  {
    +[_CFXPreferences copyDefaultPreferences];
  }

  v3 = qword_1ED40BE18;

  return [v3 copyPrefs];
}

- (void)unregisterUserDefaultsInstance:(id)instance
{
  v7[5] = *MEMORY[0x1E69E9840];
  _identifier = [instance _identifier];
  _container = [instance _container];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___CFXPreferences_unregisterUserDefaultsInstance___block_invoke;
  v7[3] = &unk_1E6DD0910;
  v7[4] = instance;
  [(_CFXPreferences *)self withSearchListForIdentifier:_identifier container:_container cloudConfigurationURL:0 perform:v7];
}

- (void)registerUserDefaultsInstance:(id)instance configurationURL:(__CFURL *)l
{
  v9[5] = *MEMORY[0x1E69E9840];
  _identifier = [instance _identifier];
  _container = [instance _container];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___CFXPreferences_registerUserDefaultsInstance_configurationURL___block_invoke;
  v9[3] = &unk_1E6DD0910;
  v9[4] = instance;
  [(_CFXPreferences *)self withSearchListForIdentifier:_identifier container:_container cloudConfigurationURL:l perform:v9];
}

- (BOOL)appValueIsForcedForKey:(__CFString *)key appIdentifier:
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___CFXPreferences_appValueIsForcedForKey_appIdentifier___block_invoke;
  v9[3] = &unk_1E6DD22B0;
  v9[4] = &v10;
  v9[5] = a2;
  [(_CFXPreferences *)self withManagedSourceForIdentifier:key user:@"kCFPreferencesCurrentUser" perform:v9];
  if (*(v11 + 24))
  {
    v6 = 1;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56___CFXPreferences_appValueIsForcedForKey_appIdentifier___block_invoke_2;
    v8[3] = &unk_1E6DD22B0;
    v8[4] = &v10;
    v8[5] = a2;
    [(_CFXPreferences *)self withManagedSourceForIdentifier:key user:@"kCFPreferencesAnyUser" perform:v8];
    v6 = *(v11 + 24) != 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

- (uint64_t)hasCloudValueForKey:(__CFString *)key appIdentifier:(const __CFString *)identifier container:(uint64_t)container configurationURL:
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80___CFXPreferences_hasCloudValueForKey_appIdentifier_container_configurationURL___block_invoke;
    v7[3] = &unk_1E6DD22E0;
    v7[4] = &v8;
    v7[5] = a2;
    [(_CFXPreferences *)self withSearchListForIdentifier:key container:identifier cloudConfigurationURL:container perform:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)hasNonRegisteredValueForKey:(__CFString *)key appIdentifier:(const __CFString *)identifier container:(uint64_t)container configurationURL:
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88___CFXPreferences_hasNonRegisteredValueForKey_appIdentifier_container_configurationURL___block_invoke;
    v7[3] = &unk_1E6DD22E0;
    v7[4] = &v8;
    v7[5] = a2;
    [(_CFXPreferences *)self withSearchListForIdentifier:key container:identifier cloudConfigurationURL:container perform:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)copyKeyListForIdentifier:(const __CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = CFEqual(cf1, @"kCFPreferencesCurrentHost") != 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64___CFXPreferences_copyKeyListForIdentifier_user_host_container___block_invoke;
  v14[3] = &unk_1E6DD2310;
  v14[4] = &v15;
  [(_CFXPreferences *)self withSourceForIdentifier:a2 user:identifier byHost:v9 container:host cloud:0 perform:v14];
  v10 = v16[3];
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    v12 = v16[3];
    if (!Count)
    {
      CFRelease(v16[3]);
      v12 = 0;
      v16[3] = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v12;
}

- (uint64_t)synchronizeIdentifier:(const __CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v9 = CFEqual(cf1, @"kCFPreferencesCurrentHost") != 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61___CFXPreferences_synchronizeIdentifier_user_host_container___block_invoke;
  v12[3] = &unk_1E6DD2310;
  v12[4] = &v13;
  [(_CFXPreferences *)self withSourceForIdentifier:a2 user:identifier byHost:v9 container:host cloud:0 perform:v12];
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (void)setDaemonCacheEnabled:(BOOL)enabled identifier:(__CFString *)identifier user:(__CFString *)user host:(__CFString *)host container:(__CFString *)container
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = CFEqual(host, @"kCFPreferencesCurrentHost") != 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72___CFXPreferences_setDaemonCacheEnabled_identifier_user_host_container___block_invoke;
  v13[3] = &__block_descriptor_33_e23_v16__0__CFPrefsSource_8l;
  enabledCopy = enabled;
  [(_CFXPreferences *)self withSourceForIdentifier:identifier user:user byHost:v12 container:container cloud:0 perform:v13];
}

- (void)setBackupDisabled:(__CFString *)cf1 identifier:(const __CFString *)identifier user:(const void *)user host:(__CFString *)host container:
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
    {
      [_CFXPreferences setBackupDisabled:identifier:user:host:container:];
    }

    v12 = CFEqual(user, @"kCFPreferencesCurrentHost") != 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68___CFXPreferences_setBackupDisabled_identifier_user_host_container___block_invoke;
    v13[3] = &__block_descriptor_33_e23_v16__0__CFPrefsSource_8l;
    v14 = a2;
    [(_CFXPreferences *)self withSourceForIdentifier:identifier user:v12 byHost:host container:0 cloud:v13 perform:?];
  }
}

- (void)setFileProtectionClass:(__CFString *)cf1 identifier:(const __CFString *)identifier user:(const void *)user host:(__CFString *)host container:
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
    {
      [_CFXPreferences setFileProtectionClass:identifier:user:host:container:];
    }

    v12 = CFEqual(user, @"kCFPreferencesCurrentHost") != 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73___CFXPreferences_setFileProtectionClass_identifier_user_host_container___block_invoke;
    v13[3] = &__block_descriptor_36_e23_v16__0__CFPrefsSource_8l;
    v14 = a2;
    [(_CFXPreferences *)self withSourceForIdentifier:identifier user:v12 byHost:host container:0 cloud:v13 perform:?];
  }
}

- (uint64_t)fileProtectionClassForIdentifier:(const __CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v9 = CFEqual(cf1, @"kCFPreferencesCurrentHost") != 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72___CFXPreferences_fileProtectionClassForIdentifier_user_host_container___block_invoke;
  v12[3] = &unk_1E6DD2310;
  v12[4] = &v13;
  [(_CFXPreferences *)self withSourceForIdentifier:a2 user:identifier byHost:v9 container:host cloud:0 perform:v12];
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (void)setAccessRestricted:(CFTypeRef)cf1 forAppIdentifier:
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
    {
      [_CFXPreferences setAccessRestricted:forAppIdentifier:];
    }

    [_CFXPreferences setAccessRestricted:v3 forAppIdentifier:?];
  }
}

- (void)addSuitePreferences:(CFTypeRef)cf1 toAppIdentifier:(uint64_t)identifier container:
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (self && !CFEqual(cf1, a2))
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = a2;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = identifier;
    v8 = _CFPrefsArmPendingKVOSlot();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke;
    v9[3] = &unk_1E6DD23F8;
    v9[4] = self;
    v9[5] = v11;
    v9[6] = v10;
    v9[7] = cf1;
    [(_CFXPreferences *)self withSearchLists:v9];
    if (v8)
    {
      [(_CFXPreferences *)self _deliverPendingKVONotifications];
    }

    _Block_object_dispose(v10, 8);
    _Block_object_dispose(v11, 8);
  }
}

- (void)setValue:(void *)value forKey:(__CFString *)key appIdentifier:(__CFString *)identifier container:(__CFString *)container configurationURL:(__CFURL *)l
{
  v7[6] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76___CFXPreferences_setValue_forKey_appIdentifier_container_configurationURL___block_invoke;
  v7[3] = &__block_descriptor_48_e33_v16__0__CFPrefsSearchListSource_8l;
  v7[4] = value;
  v7[5] = key;
  [(_CFXPreferences *)self withSearchListForIdentifier:identifier container:container cloudConfigurationURL:l perform:v7];
}

- (CFMutableDictionaryRef)copyValuesForKeys:(__CFString *)keys identifier:(__CFString *)identifier user:(CFTypeRef)cf1 host:(__CFString *)host container:
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = CFEqual(cf1, @"kCFPreferencesCurrentHost");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68___CFXPreferences_copyValuesForKeys_identifier_user_host_container___block_invoke;
  v14[3] = &unk_1E6DD24F8;
  v14[4] = &v15;
  v14[5] = a2;
  [(_CFXPreferences *)self with23930198HackSourceForIdentifier:keys user:identifier byHost:v11 != 0 container:host cloud:0 perform:v14];
  Mutable = v16[3];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  _Block_object_dispose(&v15, 8);
  return Mutable;
}

- (CFMutableDictionaryRef)copyManagedValuesForKeys:(__CFString *)keys identifier:(int)identifier useSystemContainer:
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (identifier && (v7 = _CFPreferencesCopyManagedPreferencesContainerURL(), (v8 = v7) != 0))
  {
    v9 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74___CFXPreferences_copyManagedValuesForKeys_identifier_useSystemContainer___block_invoke;
  v12[3] = &unk_1E6DD22E0;
  v12[4] = &v13;
  v12[5] = a2;
  [(_CFXPreferences *)self withSearchListForIdentifier:keys container:v9 cloudConfigurationURL:0 perform:v12];
  Mutable = v14[3];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  _Block_object_dispose(&v13, 8);
  return Mutable;
}

- (void)copyValueForKey:(__CFString *)key identifier:(__CFString *)identifier user:(__CFString *)user host:(__CFString *)host container:(__CFString *)container
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = CFEqual(host, @"kCFPreferencesCurrentHost");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66___CFXPreferences_copyValueForKey_identifier_user_host_container___block_invoke;
  v15[3] = &unk_1E6DD24F8;
  v15[4] = &v16;
  v15[5] = key;
  [(_CFXPreferences *)self with23930198HackSourceForIdentifier:identifier user:user byHost:v12 != 0 container:container cloud:0 perform:v15];
  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

- (void)copyAppValueForKey:(__CFString *)key identifier:(__CFString *)identifier container:(__CFString *)container configurationURL:(__CFURL *)l
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___CFXPreferences_copyAppValueForKey_identifier_container_configurationURL___block_invoke;
  v8[3] = &unk_1E6DD22E0;
  v8[4] = &v9;
  v8[5] = key;
  [(_CFXPreferences *)self withSearchListForIdentifier:identifier container:container cloudConfigurationURL:l perform:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CFMutableDictionaryRef)copyDictionaryForSourceWithIdentifier:(uint64_t)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57___CFXPreferences_copyDictionaryForSourceWithIdentifier___block_invoke;
  v6[3] = &unk_1E6DD2310;
  v6[4] = &v7;
  [(_CFXPreferences *)identifier withSourceForIdentifier:a2 user:@"kCFPreferencesCurrentUser" byHost:0 container:0 cloud:0 perform:v6];
  v2 = v8[3];
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v2);
    v4 = v8[3];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  _Block_object_dispose(&v7, 8);
  return MutableCopy;
}

- (os_unfair_lock_s)copyDictionaryForVolatileSourceWithName:(os_unfair_lock_s *)name
{
  nameCopy = name;
  v13 = *MEMORY[0x1E69E9840];
  if (name)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if (CFEqual(cf1, @"NSArgumentDomain") || CFEqual(cf1, @"NSRegistrationDomain"))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59___CFXPreferences_copyDictionaryForVolatileSourceWithName___block_invoke;
      v8[3] = &unk_1E6DD2310;
      v8[4] = &v9;
      [(_CFXPreferences *)nameCopy withNamedVolatileSourceForIdentifier:v8 perform:?];
    }

    else
    {
      _CFPrefsGetCacheStringForBundleID(cf1);
      [_CFXPreferences withNamedVolatileSources:nameCopy];
    }

    v4 = v10[3];
    if (v4)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v4);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    nameCopy = MutableCopy;
    v6 = v10[3];
    if (v6)
    {
      CFRelease(v6);
    }

    _Block_object_dispose(&v9, 8);
  }

  return nameCopy;
}

- (CFMutableDictionaryRef)copyDictionaryForApp:(const __CFString *)app withContainer:
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___CFXPreferences_copyDictionaryForApp_withContainer___block_invoke;
  v8[3] = &unk_1E6DD2568;
  v8[4] = &v9;
  [(_CFXPreferences *)self withSearchListForIdentifier:a2 container:app cloudConfigurationURL:0 perform:v8];
  v3 = v10[3];
  if (v3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = MutableCopy;
  v6 = v10[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

- (uint64_t)volatileSourceNames
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  [_CFXPreferences withNamedVolatileSources:self];
  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

- (void)registerDefaultValues:(__CFDictionary *)values
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41___CFXPreferences_registerDefaultValues___block_invoke;
  v3[3] = &unk_1E6DD2590;
  v3[4] = self;
  withKeysAndValues(values, v3, values);
}

- (void)resetPreferences:(BOOL)preferences
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36___CFXPreferences_resetPreferences___block_invoke;
  v4[3] = &unk_1E6DD26A8;
  preferencesCopy = preferences;
  v4[4] = self;
  v4[5] = &v6;
  [(_CFXPreferences *)self withSearchLists:v4];
  v3 = v7[3];
  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v6, 8);
}

- (void)resetUserPreferences
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39___CFXPreferences_resetUserPreferences__block_invoke;
    v9[3] = &unk_1E6DD2720;
    v9[4] = self;
    v9[5] = &v10;
    [(_CFXPreferences *)self withSearchLists:v9];
    v8 = v11[3];
    if (v8)
    {
      CFRelease(v8);
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (void)_setupNewDaemonConnection:(uint64_t)connection invalidationHandler:
{
  location[1] = *MEMORY[0x1E69E9840];
  if (val)
  {
    objc_initWeak(location, val);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke;
    v5[3] = &unk_1E6DD2770;
    objc_copyWeak(&v6, location);
    v5[4] = connection;
    xpc_connection_set_event_handler(a2, v5);
    xpc_connection_activate(a2);
    objc_destroyWeak(&v6);
    objc_destroyWeak(location);
  }
}

- (uint64_t)appSynchronizeWithIdentifier:(const __CFString *)identifier container:
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58___CFXPreferences_appSynchronizeWithIdentifier_container___block_invoke;
  v5[3] = &unk_1E6DD2568;
  v5[4] = &v6;
  [(_CFXPreferences *)self withSearchListForIdentifier:a2 container:identifier cloudConfigurationURL:0 perform:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)removeSuite:(uint64_t)suite fromApp:(uint64_t)app withContainer:
{
  v9[8] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = _CFPrefsArmPendingKVOSlot();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke;
    v9[3] = &unk_1E6DD27E8;
    v9[4] = self;
    v9[5] = suite;
    v9[6] = a2;
    v9[7] = app;
    [(_CFXPreferences *)self withSearchLists:v9];
    if (v8)
    {
      [(_CFXPreferences *)self _deliverPendingKVONotifications];
    }
  }
}

- (void)generateKVONotificationsForIdentifier:(__CFString *)identifier withOldValues:(id)values newValues:(id)newValues
{
  v10[7] = *MEMORY[0x1E69E9840];
  v9 = [values count];
  if (v9 != [newValues count])
  {
    [_CFXPreferences generateKVONotificationsForIdentifier:withOldValues:newValues:];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___CFXPreferences_generateKVONotificationsForIdentifier_withOldValues_newValues___block_invoke;
  v10[3] = &unk_1E6DD2838;
  v10[4] = values;
  v10[5] = newValues;
  v10[6] = self;
  [(_CFXPreferences *)self withSearchListForIdentifier:identifier container:0 cloudConfigurationURL:0 perform:v10];
}

- (void)withManagedSourceForIdentifier:(uint64_t)identifier user:(uint64_t)user perform:
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
    v8 = _CFPrefsGetCacheStringForBundleID(CacheStringForBundleID);
    CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"managed/%@/%@", v8, identifier);
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__7;
    v13 = __Block_byref_object_dispose__7;
    v14 = 0;
    [_CFXPreferences withSources:self];
    LODWORD(identifier) = _CFPrefsArmPendingKVOSlot();
    (*(user + 16))(user, v10[5]);

    if (identifier)
    {
      [(_CFXPreferences *)self _deliverPendingKVONotifications];
    }

    _Block_object_dispose(&v9, 8);
  }
}

- (void)withSources:(os_unfair_lock_s *)sources
{
  if (sources)
  {
    os_unfair_lock_lock(sources + 18);
    v2 = OUTLINED_FUNCTION_2_3();
    v3(v2);

    os_unfair_lock_unlock(sources + 18);
  }
}

- (void)withNamedVolatileSources:(os_unfair_lock_s *)sources
{
  if (sources)
  {
    os_unfair_lock_lock(sources + 20);
    v2 = OUTLINED_FUNCTION_2_3();
    v3(v2);

    os_unfair_lock_unlock(sources + 20);
  }
}

- (uint64_t)alreadylocked_withSources:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_10(result, a2, 8);
  }

  return result;
}

- (uint64_t)alreadylocked_withNamedVolatileSources:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_10(result, a2, 16);
  }

  return result;
}

- (CFMutableStringRef)copyDescriptionOfSearchLists
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  OUTLINED_FUNCTION_2_6();
  v5[1] = 3221225472;
  v5[2] = __68___CFXPreferences_SearchListAdditions__copyDescriptionOfSearchLists__block_invoke;
  v5[3] = &__block_descriptor_40_e25_v16__0____CFDictionary__8l;
  v5[4] = v3;
  os_unfair_lock_lock((self + 76));
  __68___CFXPreferences_SearchListAdditions__copyDescriptionOfSearchLists__block_invoke(v5, *(self + 24));
  os_unfair_lock_unlock((self + 76));
  return Mutable;
}

- (void)withSearchLists:(uint64_t)lists
{
  if (lists)
  {
    os_unfair_lock_lock((lists + 76));
    (*(a2 + 16))(a2, *(lists + 24));

    os_unfair_lock_unlock((lists + 76));
  }
}

- (void)withSearchListForIdentifier:(CFStringRef)identifier container:(uint64_t)container cloudConfigurationURL:(uint64_t)l perform:
{
  v5[7] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __108___CFXPreferences_SearchListAdditions__withSearchListForIdentifier_container_cloudConfigurationURL_perform___block_invoke;
    v5[3] = &unk_1E6DD0B38;
    v5[5] = l;
    v5[6] = container;
    v5[4] = self;
    normalizeQuintuplet(theString, @"kCFPreferencesCurrentUser", 0, identifier, container != 0, v5);
  }
}

- (uint64_t)alreadylocked_withSearchLists:(uint64_t)result
{
  if (result)
  {
    return (*(a2 + 16))(a2, *(result + 24));
  }

  return result;
}

- (void)replaceSearchList:(uint64_t)list withSearchList:
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    OUTLINED_FUNCTION_1_15();
    v8 = 3221225472;
    v9 = __73___CFXPreferences_SearchListAdditions__replaceSearchList_withSearchList___block_invoke;
    v10 = &unk_1E6DD0BB0;
    v11 = a2;
    listCopy = list;
    selfCopy = self;
    v14 = v6;
    __73___CFXPreferences_SearchListAdditions__replaceSearchList_withSearchList___block_invoke(v7, *(self + 24));
  }
}

- (uint64_t)nonLaunchPersonaUID
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)flushManagedSources
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (self)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v3[2] = __38___CFXPreferences_flushManagedSources__block_invoke;
    v3[3] = &unk_1E6DD1D00;
    v3[4] = v2;
    if (xpc_user_sessions_enabled())
    {
      [(_CFXPreferences *)self withConnectionForRole:0 andUserIdentifier:v3 performBlock:?];
    }

    [(_CFXPreferences *)self withConnectionForRole:0 andUserIdentifier:v3 performBlock:?];
    _CFPrefsResetManagedPreferencesStateCache();
  }
}

- (void)withConnectionForRole:(const void *)role andUserIdentifier:(uint64_t)identifier performBlock:
{
  if (self)
  {
    v5 = [(_CFXPreferences *)self _copyDaemonConnectionSettingUpIfNecessaryForRole:a2 andUserIdentifier:role];
    (*(identifier + 16))(identifier, v5);
    if (v5)
    {

      xpc_release(v5);
    }
  }
}

- (void)flushCachesForAppIdentifier:(const void *)identifier user:
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
    v6 = 1;
    if (xpc_user_sessions_enabled())
    {
      if (CFEqual(identifier, @"kCFPreferencesAnyUser"))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      if (!xpc_user_sessions_get_session_uid())
      {
        if (CFEqual(identifier, @"kCFPreferencesCurrentUser"))
        {
          v6 = 2;
        }

        else
        {
          v6 = v6;
        }
      }
    }

    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v7[2] = __52___CFXPreferences_flushCachesForAppIdentifier_user___block_invoke;
    v7[3] = &unk_1E6DD2358;
    v8 = v6;
    v7[4] = self;
    v7[5] = CacheStringForBundleID;
    [(_CFXPreferences *)self withConnectionForRole:v6 andUserIdentifier:identifier performBlock:v7];
  }
}

- (void)simulateTimerSynchronizeForTestingForUser:(__CFString *)user
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (xpc_user_sessions_enabled())
  {
    if (CFEqual(@"kCFPreferencesAnyUser", user))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_9_1();
  v7 = __61___CFXPreferences_simulateTimerSynchronizeForTestingForUser___block_invoke;
  v8 = &unk_1E6DD2380;
  v10 = v5;
  selfCopy = self;
  [(_CFXPreferences *)&self->super.isa withConnectionForRole:v5 andUserIdentifier:user performBlock:v6];
}

- (void)fullCloudSynchronizeForAppIdentifier:(uint64_t)identifier container:configurationURL:completionHandler:
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v6[2] = __101___CFXPreferences_fullCloudSynchronizeForAppIdentifier_container_configurationURL_completionHandler___block_invoke;
    v6[3] = &unk_1E6DD2420;
    v6[4] = v1;
    [(_CFXPreferences *)v2 withSearchListForIdentifier:v3 container:v4 cloudConfigurationURL:v5 perform:v6];
  }
}

- (void)setCloudSyncEnabled:(uint64_t)enabled forKey:(__CFString *)theString appIdentifier:(CFStringRef)identifier container:
{
  v7 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70___CFXPreferences_setCloudSyncEnabled_forKey_appIdentifier_container___block_invoke;
    v5[3] = &__block_descriptor_41_e33_v16__0__CFPrefsSearchListSource_8l;
    v6 = a2;
    v5[4] = enabled;
    [(_CFXPreferences *)self withSearchListForIdentifier:identifier container:0 cloudConfigurationURL:v5 perform:?];
  }
}

- (void)setValuesForKeys:(uint64_t)result removingValuesForKeys:identifier:user:host:container:
{
  if (result)
  {
    OUTLINED_FUNCTION_6_4();
    CFEqual(v1, @"kCFPreferencesCurrentHost");
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_5_5(v2, v3, v4, v2 != 0, v5, v6, v7, v8, v9, v10, v11, __89___CFXPreferences_setValuesForKeys_removingValuesForKeys_identifier_user_host_container___block_invoke, &__block_descriptor_48_e23_v16__0__CFPrefsSource_8l, v12, v13);
  }
}

- (void)setValue:(uint64_t)result forKey:identifier:user:host:container:
{
  if (result)
  {
    OUTLINED_FUNCTION_6_4();
    CFEqual(v1, @"kCFPreferencesCurrentHost");
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_5_5(v2, v3, v4, v2 != 0, v5, v6, v7, v8, v9, v10, v11, __66___CFXPreferences_setValue_forKey_identifier_user_host_container___block_invoke, &__block_descriptor_48_e23_v16__0__CFPrefsSource_8l, v12, v13);
  }
}

- (uint64_t)preloadAppValuesForIdentifiers:(uint64_t)result containers:configurationURLs:count:
{
  if (result)
  {
    return [CFPrefsSearchListSource preloadDomainsForIdentifiers:? containers:? cloudConfigurationURLs:? count:? containingPreferences:?];
  }

  return result;
}

- (void)replaceValuesInSourceForIdentifier:(uint64_t)identifier user:host:container:withValues:
{
  v7[9] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v7[2] = __85___CFXPreferences_replaceValuesInSourceForIdentifier_user_host_container_withValues___block_invoke;
    v7[3] = &unk_1E6DD2540;
    v7[4] = v1;
    v7[5] = v2;
    v7[6] = v3;
    v7[7] = v4;
    v7[8] = v5;
    withKeysAndValues(v6, v7, v3);
  }
}

- (void)removeVolatileSourceForName:(os_unfair_lock_s *)name
{
  if (name && !CFEqual(cf1, @"NSArgumentDomain") && !CFEqual(cf1, @"NSRegistrationDomain"))
  {
    _CFPrefsGetCacheStringForBundleID(cf1);
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    [_CFXPreferences withNamedVolatileSources:name];
  }
}

- (void)shmemForRole:(const char *)role name:(uint64_t)name
{
  block[5] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = a2;
  if (a2 != 3 && !_CFPrefsDirectMode(self))
  {
    if (v6 == 2)
    {
      if ((_MergedGlobals_2 & 1) == 0)
      {
LABEL_14:
        os_unfair_lock_lock(&unk_1ED40BDE8);
        v11 = &qword_1ED40BDF0;
        if (v6 != 2)
        {
          v11 = &qword_1ED40BDF8;
        }

        v10 = *v11;
        if (*v11)
        {
          os_unfair_lock_unlock(&unk_1ED40BDE8);
          return v10;
        }

        v12 = shm_open(role, 0, 0);
        if (v12 == -1)
        {
          v10 = 0;
        }

        else
        {
          v13 = v12;
          v10 = mmap(0, 0x4000uLL, 1, 1, v12, 0);
          close(v13);
          if (v10 == -1)
          {
            if (v6 == 2)
            {
              v10 = 0;
              _MergedGlobals_2 = 1;
LABEL_24:
              qword_1ED40BDF0 = v10;
LABEL_27:
              os_unfair_lock_unlock(&unk_1ED40BDE8);
              if (v10)
              {
                return v10;
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __37___CFXPreferences_shmemForRole_name___block_invoke;
              block[3] = &__block_descriptor_40_e5_v8__0l;
              block[4] = role;
              if (qword_1ED40BE00 == -1)
              {
                return 0;
              }

              dispatch_once(&qword_1ED40BE00, block);
              return 0;
            }

            v10 = 0;
            byte_1ED40BDE1 = 1;
LABEL_26:
            qword_1ED40BDF8 = v10;
            goto LABEL_27;
          }
        }

        if (v6 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }
    }

    else if ((byte_1ED40BDE1 & 1) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (qword_1ED40BE10 != -1)
  {
    dispatch_once(&qword_1ED40BE10, &__block_literal_global_255);
  }

  v8 = qword_1ED40BE08;

  return [(CFPrefsDaemon *)v8 shmem:a2];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  [(_CFXPreferences *)self destroyConnections];
  sources = self->_sources;
  if (sources)
  {
    CFRelease(sources);
  }

  namedVolatileSources = self->_namedVolatileSources;
  if (namedVolatileSources)
  {
    CFRelease(namedVolatileSources);
  }

  searchLists = self->_searchLists;
  if (searchLists)
  {
    CFRelease(searchLists);
  }

  groupContainersForCurrentUser = self->_groupContainersForCurrentUser;
  if (groupContainersForCurrentUser)
  {
    CFRelease(groupContainersForCurrentUser);
  }

  v7.receiver = self;
  v7.super_class = _CFXPreferences;
  [(_CFXPreferences *)&v7 dealloc];
}

- (xpc_object_t)_replaceDirectConnection:(xpc_object_t *)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(&stru_1ED40BDE4);
    v4 = v3[6];
    if (v4)
    {
      xpc_connection_cancel(v4);
      xpc_release(v3[6]);
      v3[6] = 0;
    }

    v3[6] = xpc_retain(a2);
    [(_CFXPreferences *)v3 _setupNewDaemonConnection:a2 invalidationHandler:0];
    os_unfair_lock_unlock(&stru_1ED40BDE4);

    return [(xpc_object_t *)v3 resetPreferences:0];
  }

  return result;
}

- (_xpc_connection_s)_copyDaemonConnectionSettingUpIfNecessaryForRole:(const void *)role andUserIdentifier:
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock(&stru_1ED40BDE4);
  v7 = _CFPrefsDirectMode(v6);
  if (a2 != 3 && (v7 & 1) == 0)
  {
    v8 = 5;
    if (a2 == 2)
    {
      v8 = 4;
    }

    v9 = &self[v8];
    v10 = self[v8];
    if (v10)
    {
      goto LABEL_25;
    }

    if (a2 == 1 && xpc_user_sessions_enabled() && (session_uid = xpc_user_sessions_get_session_uid(), !session_uid))
    {
      if (!role || (session_uid = _CFPreferencesUIDForUsername(role), session_uid == -101))
      {
        v21 = _CFPrefsClientLog(session_uid, v12);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          roleCopy2 = role;
          _os_log_error_impl(&dword_1830E6000, v21, OS_LOG_TYPE_ERROR, "Could not resolve UID for user identifier %@. Please use _CFPreferencesGetUserIdentifierForUid() to target a specific user", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_26;
      }

      v14 = session_uid;
      foreground_uid = xpc_user_sessions_get_foreground_uid();
      if (foreground_uid != v14)
      {
        v24 = _CFPrefsClientLog(foreground_uid, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          roleCopy2 = role;
          v27 = 1024;
          v28 = v14;
          _os_log_error_impl(&dword_1830E6000, v24, OS_LOG_TYPE_ERROR, "Could not target user session daemon connection for user %@: user session with UID %i is not active", buf, 0x12u);
        }
      }

      v13 = &__block_literal_global_111;
    }

    else
    {
      v13 = 0;
      v14 = -101;
    }

    if (__CFProcessIsRestricted() || !getenv("__CFPreferencesTestDaemon"))
    {
      v15 = "com.apple.cfprefsd.daemon";
      v16 = "com.apple.cfprefsd.daemon.system";
    }

    else
    {
      v15 = "com.apple.cfprefsd.daemon.test";
      v16 = "com.apple.cfprefsd.daemon.system.test";
    }

    if (a2 == 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    *v9 = xpc_connection_create_mach_service(v19, 0, 0);
    if (v14 != -101)
    {
      xpc_connection_set_target_user_session_uid();
    }

    goto LABEL_24;
  }

  v9 = self + 6;
  v10 = self[6];
  if (!v10)
  {
    if (qword_1ED40BE10 != -1)
    {
      dispatch_once(&qword_1ED40BE10, &__block_literal_global_255);
    }

    listener = [(CFPrefsDaemon *)qword_1ED40BE08 listener];
    v18 = xpc_endpoint_create(listener);
    *v9 = xpc_connection_create_from_endpoint(v18);
    xpc_release(v18);
    v13 = 0;
LABEL_24:
    [(_CFXPreferences *)self _setupNewDaemonConnection:v13 invalidationHandler:?];
    v10 = *v9;
  }

LABEL_25:
  xpc_retain(v10);
LABEL_26:
  os_unfair_lock_unlock(&stru_1ED40BDE4);
  return v10;
}

- (void)replaceValuesInVolatileSourceNamed:(uint64_t)named withValues:
{
  v9 = *MEMORY[0x1E69E9840];
  if (named)
  {
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_9_1();
    v5 = __65___CFXPreferences_replaceValuesInVolatileSourceNamed_withValues___block_invoke;
    v6 = &unk_1E6DD2490;
    v7 = v1;
    v8 = v2;
    withKeysAndValues(v3, v4, v3);
  }
}

- (void)ingestVolatileStateFromPreferences:(void *)a1 .cold.2(void *a1)
{
  v1 = OUTLINED_FUNCTION_3_7(a1);
  v1[1] = 3221225472;
  v1[2] = __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke;
  v1[3] = &unk_1E6DD2608;
  v1[4] = v2;
  v1[5] = v3;
  [_CFXPreferences withNamedVolatileSources:v3];
}

- (void)setAccessRestricted:(void *)a1 forAppIdentifier:.cold.2(void *a1)
{
  v1 = OUTLINED_FUNCTION_3_7(a1);
  v1[1] = 3221225472;
  v1[2] = __56___CFXPreferences_setAccessRestricted_forAppIdentifier___block_invoke;
  v1[3] = &__block_descriptor_33_e23_v16__0__CFPrefsSource_8l;
  *(v1 + 32) = v2;
  [(_CFXPreferences *)v5 withSourceForIdentifier:v3 user:@"kCFPreferencesAnyUser" byHost:1 container:0 cloud:0 perform:v4];
}

@end