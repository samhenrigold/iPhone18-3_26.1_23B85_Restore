@interface CFPrefsPlistSource
- (BOOL)_logLoudlyAboutSettingKey:(_BOOL8)result;
- (BOOL)attachAccessTokenToMessage:(int)message accessType:;
- (BOOL)synchronize;
- (CFPrefsPlistSource)initWithDomain:(__CFString *)domain user:(__CFString *)user byHost:(BOOL)host containerPath:(__CFString *)path containingPreferences:(id)preferences;
- (__CFArray)alreadylocked_copyKeyList;
- (__CFDictionary)alreadylocked_copyDictionary;
- (id)alreadylocked_createObserverUpdateMessageWithOperation:(int)operation forRole:(int *)role;
- (id)createRequestNewContentMessageForDaemon:(int)daemon;
- (id)createSynchronizeMessage;
- (int)alreadylocked_updateObservingRemoteChanges;
- (int64_t)alreadylocked_generationCount;
- (int64_t)generationCount;
- (uint64_t)_shouldEnableDirectMode;
- (uint64_t)alreadylocked_requestNewData;
- (uint64_t)handleErrorReply:(void *)reply toMessage:(const void *)message settingKeys:(__CFString *)keys toValues:(CFIndex)values count:(uint64_t)count retryCount:(uint64_t)retryCount retryContinuation:;
- (uint64_t)handleErrorReply:(void *)reply toMessage:(uint64_t)message retryCount:(uint64_t)count retryContinuation:;
- (uint64_t)sendMessageSettingValues:(__objc2_class *)values forKeys:(uint64_t)keys count:;
- (uint64_t)volatilizeIfInvalidHomeDir;
- (void)_sharedCleanup;
- (void)addPIDImpersonationIfNecessary:(void *)necessary;
- (void)alreadylocked_clearCache;
- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from;
- (void)copyValueForKey:(__CFString *)key;
- (void)createSynchronizeMessage;
- (void)dealloc;
- (void)goReadOnlyAfterTryingToWriteKeys:(__CFString *)keys values:(uint64_t)values count:;
- (void)goVolatileAfterTryingToWriteKeys:(__CFString *)keys values:(uint64_t)values count:;
- (void)handlePossibleOversizedMessage:(const void *)message forWritingKeys:(const void *)keys values:(CFIndex)values count:;
- (void)handleReply:(id)reply toRequestNewDataMessage:(id)message onConnection:(id)connection retryCount:(int)count error:(BOOL *)error;
- (void)requestPlistValidation;
- (void)sendFullyPreparedMessage:(xpc_connection_t)connection toConnection:(uint64_t)connection settingValues:(uint64_t)values forKeys:(uint64_t)keys count:(int)count retryCount:;
- (void)sendRequestNewDataMessage:(uint64_t)message toConnection:(uint64_t)connection retryCount:(BOOL *)count error:;
- (void)setContainer:(uint64_t)container;
- (void)setDomainIdentifier:(uint64_t)identifier;
- (void)setUserIdentifier:(uint64_t)identifier;
- (void)transitionIntoDirectModeIfNeededWithRetryBlock:(id)block;
- (void)writeFailedForKeys:(__CFString *)keys values:(uint64_t)values count:;
@end

@implementation CFPrefsPlistSource

- (__CFDictionary)alreadylocked_copyDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v17 = &unk_1E6D81EC0;
  selfCopy = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v16(v15);
    }
  }

  if (atomic_load(&self->_locallySetDict))
  {
    dict = self->super._dict;
    if (dict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, dict);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v11 = MutableCopy;
    os_unfair_lock_lock(&locallySetDictLock);
    v12 = atomic_load(&self->_locallySetDict);
    CFDictionaryApplyFunction(v12, locallySetValueOverlayMergeFunc, v11);
    os_unfair_lock_unlock(&locallySetDictLock);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CFPrefsPlistSource;
    return [(CFPrefsSource *)&v14 alreadylocked_copyDictionary];
  }

  return v11;
}

- (id)createSynchronizeMessage
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = atomic_load(&self->_volatile);
  if (v3)
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  domainIdentifier = [(CFPrefsPlistSource *)self domainIdentifier];
  if ((_CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesDomain", domainIdentifier, 0) & 1) == 0)
  {
    xpc_release(v4);
    return 0;
  }

  os_unfair_lock_lock_with_options();
  groupContainersForCurrentUser = self->super._containingPreferences->_groupContainersForCurrentUser;
  if (groupContainersForCurrentUser && CFSetContainsValue(groupContainersForCurrentUser, domainIdentifier))
  {
    bzero(buffer, 0x400uLL);
    if (CFStringGetCString(domainIdentifier, buffer, 1024, 0x8000100u))
    {
      v26 = 1;
      v7 = container_create_or_lookup_app_group_path_by_app_group_identifier();
      if (v7)
      {
        free(v7);
      }

      else
      {
        v10 = _CFPrefsDaemonLog(0, v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(CFPrefsPlistSource *)buffer createSynchronizeMessage];
        }
      }
    }

    CFSetRemoveValue(self->super._containingPreferences->_groupContainersForCurrentUser, domainIdentifier);
    if (!CFSetGetCount(self->super._containingPreferences->_groupContainersForCurrentUser))
    {
      CFRelease(self->super._containingPreferences->_groupContainersForCurrentUser);
      self->super._containingPreferences->_groupContainersForCurrentUser = 0;
    }
  }

  os_unfair_lock_unlock(&groupContainersLock);
  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
  _CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesHostBundleIdentifier", CacheStringForBundleID, 0);
  if (CFEqual(domainIdentifier, CacheStringForBundleID))
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesCurrentApplicationDomain", 1);
  }

  v12 = atomic_load(&self->_isByHost);
  if (v12)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesIsByHost", 1);
  }

  xpc_dictionary_set_int64(v4, "CFPreferencesOperation", 1);
  if ([(CFPrefsSource *)self managed])
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesIsManaged", 1);
  }

  userIdentifier = [(CFPrefsPlistSource *)self userIdentifier];
  Copy = @"kCFPreferencesAnyUser";
  if (CFEqual(@"kCFPreferencesAnyUser", userIdentifier))
  {
    goto LABEL_32;
  }

  _CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesUser", userIdentifier, 0);
  if (!CFEqual(@"kCFPreferencesCurrentUser", @"kCFPreferencesCurrentUser"))
  {
    if (CFEqual(@"kCFPreferencesCurrentUser", @"kCFPreferencesAnyUser"))
    {
      goto LABEL_28;
    }

    v15 = CFCopyUserName();
    v16 = CFEqual(@"kCFPreferencesCurrentUser", v15);
    CFRelease(v15);
    if (!@"kCFPreferencesCurrentUser" || !v16)
    {
      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"kCFPreferencesCurrentUser");
      goto LABEL_28;
    }
  }

  Copy = @"kCFPreferencesCurrentUser";
LABEL_28:
  if (!CFEqual(Copy, userIdentifier))
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesUseCorrectOwner", 1);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_32:
  container = [(CFPrefsPlistSource *)self container];
  if (container)
  {
    v18 = container;
    if (CFStringGetLength(container) >= 1)
    {
      _CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesContainer", v18, 0);
    }
  }

  if (_CFPrefsSynchronizeIsSynchronous & 1) != 0 || (v25 = atomic_load(&self->_avoidsDaemonCache), (v25) || _CFPrefsTestingFlags || byte_1EA84A4F2 && (arc4random() & 1) == 0)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesShouldWriteSynchronously", 1);
    xpc_dictionary_set_BOOL(v4, "CFPreferencesAvoidCache", 1);
  }

  v19 = atomic_load(&self->_disableBackup);
  if (v19)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesDisableBackups", 1);
  }

  if (atomic_load(&self->_fileProtectionClass))
  {
    v21 = atomic_load(&self->_fileProtectionClass);
    xpc_dictionary_set_int64(v4, "CFPreferencesFileProtectionClass", v21);
  }

  v22 = atomic_load(&self->_restrictedAccess);
  if (v22)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesRestrictedReadability", 1);
  }

  if (byte_1EA84A4F3)
  {
    xpc_dictionary_set_BOOL(v4, "kCFPreferencesTestingSimulateSlowFilesystem", 1);
  }

  if (atomic_load(&dword_1EA84A4FC))
  {
    v24 = atomic_load(&dword_1EA84A4FC);
    xpc_dictionary_set_int64(v4, "kCFPreferencesTestingSimulateOutOfDiskSpace", v24);
  }

  return v4;
}

- (uint64_t)volatilizeIfInvalidHomeDir
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = atomic_load((self + 109));
  if (v2)
  {
    return 0;
  }

  atomic_store(1u, (self + 109));
  if (![(_CFXPreferences *)*(self + 8) euid])
  {
    return 0;
  }

  if (CFEqual(@"kCFPreferencesAnyUser", [self userIdentifier]))
  {
    return 0;
  }

  HasInvalidHome = [(_CFXPreferences *)*(self + 8) currentUserHasInvalidHomeDirectory];
  if (!HasInvalidHome)
  {
    return 0;
  }

  v5 = _CFPrefsClientLog(HasInvalidHome, v4);
  v6 = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    copyOSLogDescription = [self copyOSLogDescription];
    v8 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
    v10 = _CFPrefsClientLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      v13 = copyOSLogDescription;
      _os_log_impl(&dword_1830E6000, v10, OS_LOG_TYPE_INFO, "Volatilizing domain, because home directory is invalid. %{public}@", &v12, 0xCu);
    }

    _CFSetTSD(15, 0, 0);
    if (copyOSLogDescription)
    {
      CFRelease(copyOSLogDescription);
    }
  }

  atomic_store(1u, (self + 105));
  return v6;
}

- (uint64_t)alreadylocked_requestNewData
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = atomic_load((self + 105));
    if (v2)
    {
      LOBYTE(selfCopy) = 0;
    }

    else
    {
      v3 = atomic_load((self + 40));
      if (v3 && ((v4 = atomic_load(v3), v5 = atomic_load(&sentinelGeneration), v4 == v5) || (v6 = atomic_load((self + 48)), v4 == v6)))
      {
        LOBYTE(selfCopy) = 1;
      }

      else
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v16 = 0;
        v7 = *(self + 8);
        v8 = atomic_load((self + 113));
        if (v8 & 1) != 0 || (_CFPrefsDirectMode(self))
        {
          v9 = 3;
        }

        else if (xpc_user_sessions_enabled() && (CFEqual(selfCopy[8], @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(selfCopy[8], @"kCFPreferencesCurrentUser")))
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        userIdentifier = [(CFTypeRef *)selfCopy userIdentifier];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __50__CFPrefsPlistSource_alreadylocked_requestNewData__block_invoke;
        v12[3] = &unk_1E6DD2C28;
        v12[4] = selfCopy;
        v12[5] = &v13;
        [(_CFXPreferences *)v7 withConnectionForRole:v9 andUserIdentifier:userIdentifier performBlock:v12];
        LOBYTE(selfCopy) = *(v14 + 24) ^ 1;
        _Block_object_dispose(&v13, 8);
      }
    }
  }

  return selfCopy & 1;
}

void __50__CFPrefsPlistSource_alreadylocked_requestNewData__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && ((v4 = *(a1 + 32), v5 = atomic_load((v4 + 113)), (v5 & 1) == 0) && (_CFPrefsDirectMode(a1) & 1) == 0 ? (xpc_user_sessions_enabled() && (CFEqual(*(v4 + 64), @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(*(v4 + 64), @"kCFPreferencesCurrentUser")) ? (v6 = 2) : (v6 = 1)) : (v6 = 3), (v7 = [v4 createRequestNewContentMessageForDaemon:v6]) != 0))
  {
    v8 = v7;
    [(CFPrefsPlistSource *)*(a1 + 32) sendRequestNewDataMessage:v7 toConnection:a2 retryCount:0 error:(*(*(a1 + 40) + 8) + 24)];

    xpc_release(v8);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)synchronize
{
  v2 = atomic_load(&self->_lastWriteFailed);
  if (v2)
  {
    v3 = 0;
    atomic_store(0, &self->_lastWriteFailed);
  }

  else
  {
    v4 = atomic_load(&self->_volatile);
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v5 = atomic_load(&self->_readonly);
      v3 = v5 ^ 1;
    }
  }

  return v3 & 1;
}

- (int)alreadylocked_updateObservingRemoteChanges
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(__CFPrefsWeakObservers *)self->super._observers approximateCount]&& (v3 = atomic_load(&self->_observing), (v3 & 1) == 0))
  {
    atomic_store(1u, &self->_observing);
  }

  else
  {
    if ([(__CFPrefsWeakObservers *)self->super._observers approximateCount])
    {
      return 0;
    }

    v4 = atomic_load(&self->_observing);
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    atomic_store(0, &self->_observing);
  }

  if ([(CFPrefsPlistSource *)self isVolatile])
  {
    return 0;
  }

  v6 = atomic_load(&self->_observing);
  if (v6)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

- (__CFArray)alreadylocked_copyKeyList
{
  v14 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v12 = &unk_1E6D81EC0;
  selfCopy = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v11(v10);
    }
  }

  v9.receiver = self;
  v9.super_class = CFPrefsPlistSource;
  return [(CFPrefsSource *)&v9 alreadylocked_copyKeyList];
}

- (void)_sharedCleanup
{
  if (self)
  {
    if (atomic_load(self + 12))
    {
      v3 = atomic_load(self + 12);
      free(v3);
    }

    v4 = self[9];
    if (v4)
    {
      self[9] = 0;
      CFRelease(v4);
    }

    v5 = self[8];
    if (v5)
    {
      self[8] = 0;
      CFRelease(v5);
    }

    v6 = self[10];
    if (v6)
    {
      self[10] = 0;
      CFRelease(v6);
    }

    if (atomic_load(self + 11))
    {
      v8 = atomic_load(self + 11);

      CFRelease(v8);
    }
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(CFPrefsPlistSource *)self _sharedCleanup];
  v3.receiver = self;
  v3.super_class = CFPrefsPlistSource;
  [(CFPrefsSource *)&v3 dealloc];
}

- (void)setDomainIdentifier:(uint64_t)identifier
{
  if (!identifier)
  {
    return;
  }

  if (!cf1)
  {
    v4 = *(identifier + 72);
    if (!v4)
    {
      return;
    }

    *(identifier + 72) = 0;
    goto LABEL_8;
  }

  if (CFEqual(cf1, @"kCFPreferencesCurrentApplication"))
  {
    [CFPrefsPlistSource setDomainIdentifier:];
  }

  v4 = *(identifier + 72);
  if (v4 != cf1 && ![(CFPrefsPlistSource *)cf1 setDomainIdentifier:identifier, *(identifier + 72), @"kCFPreferencesCurrentApplication"])
  {
LABEL_8:

    CFRelease(v4);
  }
}

- (CFPrefsPlistSource)initWithDomain:(__CFString *)domain user:(__CFString *)user byHost:(BOOL)host containerPath:(__CFString *)path containingPreferences:(id)preferences
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CFPrefsPlistSource;
  v11 = [(CFPrefsSource *)&v14 initWithContainingPreferences:preferences];
  v12 = v11;
  if (v11)
  {
    [(CFPrefsPlistSource *)v11 setDomainIdentifier:domain];
    [(CFPrefsPlistSource *)v12 setUserIdentifier:user];
    [(CFPrefsPlistSource *)v12 setContainer:path];
    atomic_store(host, (v12 + 104));
    atomic_store(0, (v12 + 40));
    atomic_store(0, (v12 + 48));
  }

  return v12;
}

- (void)copyValueForKey:(__CFString *)key
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = _copyValueForKey(self, key);
  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from
{
  v65 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (_CFPrefsTestingFlags)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v11 = atomic_load(&self->super.shmemEntry);
  if (!v11)
  {
    v14 = 1;
LABEL_8:
    cf = v14;
    goto LABEL_9;
  }

  v12 = atomic_load(v11);
  v13 = atomic_load(&sentinelGeneration);
  if (v12 != v13)
  {
    v15 = atomic_load(&self->super.lastKnownShmemState);
    v14 = v12 != v15;
    goto LABEL_8;
  }

  cf = 0;
LABEL_9:
  if (count < 1)
  {
LABEL_39:
    cfb = 0;
    goto LABEL_68;
  }

  v57 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = keys[v17];
    v19 = values[v17];
    if (_CFPrefsTestingFlags)
    {
      goto LABEL_29;
    }

    v20 = atomic_load(&self->_locallySetDict);
    if (v20 != 0 || cf)
    {
      goto LABEL_29;
    }

    dict = self->super._dict;
    if (!dict)
    {
      v22 = 0;
      v23 = v19 != 0;
LABEL_21:
      if (v22 || !self->super._dict || v23)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    dict = CFDictionaryGetValue(dict, keys[v17]);
    v22 = dict != 0;
    v23 = v19 != 0;
    if (dict)
    {
      v24 = v19 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_21;
    }

    dict = CFEqual(dict, v19);
    if (!dict)
    {
      goto LABEL_29;
    }

LABEL_24:
    v25 = _CFPrefsClientLog(dict, v10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
      v27 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v29 = _CFPrefsClientLog(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v62 = copyOSLogDescription;
        v63 = 2114;
        v64 = v18;
        _os_log_debug_impl(&dword_1830E6000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ skipping setting already-present value for key %{public}@", buf, 0x16u);
      }

      _CFSetTSD(15, 0, 0);
      CFRelease(copyOSLogDescription);
    }

    keys[v17] = 0;
LABEL_29:
    v30 = [(CFPrefsSource *)self validateValue:v19 forKey:v18 inDict:0 forWriting:1];
    if (v30)
    {
      if (keys[v17])
      {
        v30 = [CFPrefsPlistSource _logLoudlyAboutSettingKey:?];
        v16 |= v30;
        v57 = 1;
      }
    }

    else
    {
      keys[v17] = 0;
    }

    ++v17;
  }

  while (count != v17);
  if ((v57 & 1) == 0)
  {
    goto LABEL_39;
  }

  v31 = _CFPrefsClientLog(v30, v10);
  if (((os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG) | v16) & 1) == 0)
  {
    goto LABEL_67;
  }

  cfa = [(CFPrefsSource *)self copyOSLogDescription];
  v33 = _CFPrefsClientLog(cfa, v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if ((v16 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v35 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    Mutable = 0;
    if (v16)
    {
      goto LABEL_41;
    }

LABEL_38:
    v35 = 0;
  }

  countCopy = count;
  keysCopy = keys;
  valuesCopy = values;
  while (2)
  {
    if (*keysCopy)
    {
      if (v35)
      {
        v39 = [CFPrefsPlistSource _logLoudlyAboutSettingKey:?];
        v40 = v39 || Mutable != 0;
        if (v39)
        {
          v41 = v35;
        }

        else
        {
          v41 = Mutable;
        }

        if (!v40)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v41 = Mutable;
        if (!Mutable)
        {
          goto LABEL_55;
        }
      }

      if (*valuesCopy)
      {
        v42 = *valuesCopy;
      }

      else
      {
        v42 = @"nil";
      }

      CFDictionarySetValue(v41, *keysCopy, v42);
    }

LABEL_55:
    ++valuesCopy;
    ++keysCopy;
    if (--countCopy)
    {
      continue;
    }

    break;
  }

  v43 = objc_autoreleasePoolPush();
  _CFSetTSD(15, &__kCFBooleanTrue, 0);
  if (Mutable)
  {
    if (CFDictionaryGetCount(Mutable) >= 1)
    {
      v44 = [(__CFDictionary *)Mutable description];
      v46 = _CFPrefsClientLog(v44, v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [CFPrefsPlistSource alreadylocked_setPrecopiedValues:forKeys:count:from:];
      }
    }

    CFRelease(Mutable);
  }

  if (v35)
  {
    if (CFDictionaryGetCount(v35) >= 1)
    {
      v47 = [(__CFDictionary *)v35 description];
      v49 = _CFPrefsClientLog(v47, v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v62 = v47;
        v63 = 2114;
        v64 = cfa;
        _os_log_impl(&dword_1830E6000, v49, OS_LOG_TYPE_DEFAULT, "setting %{public}@ in %{public}@", buf, 0x16u);
      }
    }

    CFRelease(v35);
  }

  CFRelease(cfa);
  _CFSetTSD(15, 0, 0);
  objc_autoreleasePoolPop(v43);
LABEL_67:
  cfb = [(CFPrefsPlistSource *)self sendMessageSettingValues:values forKeys:keys count:count]!= 1;
LABEL_68:
  v50 = atomic_load(&self->_locallySetDict);
  if (!v50 && _CFPrefsReadOnly())
  {
    os_unfair_lock_lock(&locallySetDictLock);
    atomic_store(CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), &self->_locallySetDict);
    os_unfair_lock_unlock(&locallySetDictLock);
  }

  if (count >= 1)
  {
    while (2)
    {
      v51 = *keys;
      if (!*keys)
      {
        goto LABEL_82;
      }

      v52 = *values;
      v53 = self->super._dict;
      if (*values)
      {
        if (!v53)
        {
          v53 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          self->super._dict = v53;
        }

        CFDictionarySetValue(v53, v51, v52);
        if (!atomic_load(&self->_locallySetDict))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v53)
        {
          CFDictionaryRemoveValue(v53, *keys);
        }

        v55 = atomic_load(&self->_locallySetDict);
        v52 = @"MagicRemovedValue";
        if (!v55)
        {
LABEL_82:
          ++values;
          ++keys;
          if (!--count)
          {
            goto LABEL_83;
          }

          continue;
        }
      }

      break;
    }

    os_unfair_lock_lock(&locallySetDictLock);
    v56 = atomic_load(&self->_locallySetDict);
    CFDictionarySetValue(v56, v51, v52);
    os_unfair_lock_unlock(&locallySetDictLock);
    goto LABEL_82;
  }

LABEL_83:
  if (cfb)
  {
    atomic_fetch_add(&self->super._generationCount, 1uLL);
  }
}

- (uint64_t)sendMessageSettingValues:(__objc2_class *)values forKeys:(uint64_t)keys count:
{
  v34 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (_CFPrefsReadOnly())
  {
    return 0;
  }

  v8 = atomic_load(v7 + 105);
  if ((v8 & 1) == 0)
  {
    v9 = atomic_load(v7 + 106);
    if ((v9 & 1) == 0)
    {
      createSynchronizeMessage = [v7 createSynchronizeMessage];
      if (!createSynchronizeMessage)
      {
        return 3;
      }

      v23 = createSynchronizeMessage;
      *buf = 0;
      v24 = _CFPrefsEncodeKeyValuePairsIntoMessage(createSynchronizeMessage, values, a2, keys, buf);
      v25 = _CFPrefsDomainSizeAcceptabilityForByteCount(*buf);
      [(CFPrefsPlistSource *)v7 handlePossibleOversizedMessage:v25 forWritingKeys:values values:a2 count:keys];
      v27 = atomic_load(v7 + 112);
      if ((v27 & 1) != 0 && (_CFPrefsDirectMode(v26) & 1) == 0)
      {
        v28 = atomic_load(v7 + 113);
        if ((v28 & v24 & 1) == 0)
        {
LABEL_27:
          xpc_release(v23);
          return 0;
        }
      }

      else if (!v24)
      {
        goto LABEL_27;
      }

      if ([(CFPrefsPlistSource *)v7 attachAccessTokenToMessage:v23 accessType:1])
      {
        [(CFPrefsPlistSource *)v7 addPIDImpersonationIfNecessary:v23];
        [(CFPrefsPlistSource *)v7 sendFullyPreparedMessage:v23 toConnection:0 settingValues:a2 forKeys:values count:keys retryCount:0];
      }

      goto LABEL_27;
    }
  }

  copyOSLogDescription = [v7 copyOSLogDescription];
  if (keys >= 1)
  {
    do
    {
      if (*values)
      {
        v11 = atomic_load(v7 + 106);
        if (v11)
        {
          v12 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v14 = _CFPrefsClientLog(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = *a2;
            v19 = *values;
            *buf = 138478339;
            *&buf[4] = v18;
            v30 = 2113;
            v31 = v19;
            v32 = 2114;
            v33 = copyOSLogDescription;
            _os_log_error_impl(&dword_1830E6000, v14, OS_LOG_TYPE_ERROR, "attempt to set %{private}@ for key in %{private}@ in read-only (due to a previously logged write error) preferences domain %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v15 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v17 = _CFPrefsClientLog(v15, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = *a2;
            v21 = *values;
            *buf = 138478339;
            *&buf[4] = v20;
            v30 = 2113;
            v31 = v21;
            v32 = 2114;
            v33 = copyOSLogDescription;
            _os_log_error_impl(&dword_1830E6000, v17, OS_LOG_TYPE_ERROR, "attempt to set %{private}@ for key in %{private}@ in non-persistent preferences domain %{public}@", buf, 0x20u);
          }
        }

        _CFSetTSD(15, 0, 0);
      }

      ++a2;
      ++values;
      --keys;
    }

    while (keys);
  }

  CFRelease(copyOSLogDescription);
  return 2;
}

- (void)writeFailedForKeys:(__CFString *)keys values:(uint64_t)values count:
{
  if (self)
  {
    valuesCopy = values;
    if (values >= 1)
    {
      do
      {
        v8 = *a2;
        if (*a2)
        {
          atomic_store(1u, (self + 110));
          os_unfair_lock_lock(&locallySetDictLock);
          if (!atomic_load((self + 88)))
          {
            atomic_store(CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (self + 88));
          }

          v10 = atomic_load((self + 88));
          if (*keys)
          {
            v11 = *keys;
          }

          else
          {
            v11 = @"MagicRemovedValue";
          }

          CFDictionarySetValue(v10, v8, v11);
          os_unfair_lock_unlock(&locallySetDictLock);
        }

        ++keys;
        ++a2;
        --valuesCopy;
      }

      while (valuesCopy);
    }
  }
}

- (uint64_t)handleErrorReply:(void *)reply toMessage:(const void *)message settingKeys:(__CFString *)keys toValues:(CFIndex)values count:(uint64_t)count retryCount:(uint64_t)retryCount retryContinuation:
{
  v81 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
  }

  if (a2 == MEMORY[0x1E69E9E18])
  {
    if (!__CFProcessIsRestricted())
    {
      v29 = getenv("__CFPreferencesTestDaemon");
      if (v29)
      {
        v72 = _CFPrefsClientLog(v29, v30);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
        }

        abort();
      }
    }

    [CFPrefsPlistSource handleErrorReply:count toMessage:retryCount settingKeys:buf toValues:? count:? retryCount:? retryContinuation:?];
    return buf[0];
  }

  v14 = result;
  Class = object_getClass(a2);
  v16 = MEMORY[0x1E69E9E80];
  if (Class == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(a2, "CFPreferencesErrorType");
    if (int64 == 4)
    {
      string = xpc_dictionary_get_string(a2, "CFPreferencesUncanonicalizedPath");
      v45 = string;
      if (count < 4)
      {
        if (string)
        {
          bzero(buf, 0x402uLL);
          if (dirname_r(v45, buf))
          {
            v57 = geteuid();
            v58 = getegid();
            if (_CFPrefsCreatePreferencesDirectory(buf, 448, v57, v58, 0))
            {
              v59 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
              v61 = _CFPrefsClientLog(v59, v60);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
              }

              _CFSetTSD(15, 0, 0);
              (*(retryCount + 16))(retryCount, (count + 1));
              return 1;
            }

            v68 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
            v70 = _CFPrefsClientLog(v68, v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v71 = __error();
              [CFPrefsPlistSource handleErrorReply:buf toMessage:v71 settingKeys:v74 toValues:v70 count:? retryCount:? retryContinuation:?];
            }

            _CFSetTSD(15, 0, 0);
          }

          else
          {
            v65 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
            v67 = _CFPrefsClientLog(v65, v66);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
            }

            _CFSetTSD(15, 0, 0);
          }
        }

        else
        {
          v62 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v64 = _CFPrefsClientLog(v62, v63);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
          }

          _CFSetTSD(15, 0, 0);
        }

        goto LABEL_5;
      }

      v46 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v48 = _CFPrefsClientLog(v46, v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }
    }

    else
    {
      if (int64 != 3)
      {
        goto LABEL_5;
      }

      v32 = xpc_dictionary_get_string(a2, "CFPreferencesAccessToken");
      v33 = v32;
      if (count < 10)
      {
        if (v32)
        {
          xpc_dictionary_set_value(reply, "CFPreferencesAccessToken", 0);
          v55 = strdup(v33);
          v56 = 0;
          atomic_compare_exchange_strong((v14 + 96), &v56, v55);
          if (v56)
          {
            free(v55);
          }

          (*(retryCount + 16))(retryCount, (count + 1));
          return 1;
        }

        goto LABEL_5;
      }

      v34 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v36 = _CFPrefsClientLog(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }
    }

    _CFSetTSD(15, 0, 0);
    return 0;
  }

LABEL_5:
  v17 = xpc_dictionary_get_int64(a2, "CFPreferencesByteCountThreshold");
  [(CFPrefsPlistSource *)v14 handlePossibleOversizedMessage:v17 forWritingKeys:message values:keys count:values];
  if (object_getClass(a2) == MEMORY[0x1E69E9E98] || (result = xpc_dictionary_get_value(a2, "CFPreferencesErrorDescription")) != 0)
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      [(CFPrefsPlistSource *)v14 writeFailedForKeys:message values:keys count:values];
      atomic_store(1u, (v14 + 105));
      if (handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation__onceToken != -1)
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }
    }

    else
    {
      if (object_getClass(a2) != v16)
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }

      v18 = xpc_dictionary_get_int64(a2, "CFPreferencesErrorType");
      v19 = xpc_dictionary_get_string(a2, "CFPreferencesErrorDescription");
      copyOSLogDescription = [v14 copyOSLogDescription];
      if (xpc_dictionary_get_BOOL(a2, "CFPreferencesErrorClientFault"))
      {
        v21 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v21 = OS_LOG_TYPE_ERROR;
      }

      if (v18 == 1)
      {
        if (values < 1)
        {
          v49 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v51 = _CFPrefsClientLog(v49, v50);
          if (os_log_type_enabled(v51, v21))
          {
            *buf = 138543618;
            v76 = copyOSLogDescription;
            v77 = 2082;
            v78 = v19;
            _os_log_impl(&dword_1830E6000, v51, v21, "Couldn't read values in %{public}@: %{public}s, detaching from cfprefsd", buf, 0x16u);
          }

          _CFSetTSD(15, 0, 0);
        }

        else
        {
          Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
          valuesCopy = values;
          messageCopy = message;
          do
          {
            if (*messageCopy)
            {
              CFArrayAppendValue(Mutable, *messageCopy);
            }

            ++messageCopy;
            --valuesCopy;
          }

          while (valuesCopy);
          v25 = CFCopyDescription(Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v26 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v28 = _CFPrefsClientLog(v26, v27);
          if (os_log_type_enabled(v28, v21))
          {
            *buf = 138543874;
            v76 = v25;
            v77 = 2114;
            v78 = copyOSLogDescription;
            v79 = 2082;
            v80 = v19;
            _os_log_impl(&dword_1830E6000, v28, v21, "Couldn't write values for keys %{public}@ in %{public}@: %{public}s, detaching from cfprefsd", buf, 0x20u);
          }

          _CFSetTSD(15, 0, 0);
          if (v25)
          {
            CFRelease(v25);
          }
        }

        [(CFPrefsPlistSource *)v14 writeFailedForKeys:message values:keys count:values];
        atomic_store(1u, (v14 + 105));
      }

      else
      {
        if (values < 1)
        {
          v52 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v54 = _CFPrefsClientLog(v52, v53);
          if (os_log_type_enabled(v54, v21))
          {
            *buf = 138543618;
            v76 = copyOSLogDescription;
            v77 = 2082;
            v78 = v19;
            _os_log_impl(&dword_1830E6000, v54, v21, "Couldn't read values in %{public}@: %{public}s", buf, 0x16u);
          }

          _CFSetTSD(15, 0, 0);
        }

        else
        {
          v37 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
          valuesCopy2 = values;
          messageCopy2 = message;
          do
          {
            if (*messageCopy2)
            {
              CFArrayAppendValue(v37, *messageCopy2);
            }

            ++messageCopy2;
            --valuesCopy2;
          }

          while (valuesCopy2);
          v40 = CFCopyDescription(v37);
          if (v37)
          {
            CFRelease(v37);
          }

          v41 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v43 = _CFPrefsClientLog(v41, v42);
          if (os_log_type_enabled(v43, v21))
          {
            *buf = 138543874;
            v76 = v40;
            v77 = 2114;
            v78 = copyOSLogDescription;
            v79 = 2082;
            v80 = v19;
            _os_log_impl(&dword_1830E6000, v43, v21, "Couldn't write values for keys %{public}@ in %{public}@: %{public}s", buf, 0x20u);
          }

          _CFSetTSD(15, 0, 0);
          if (v40)
          {
            CFRelease(v40);
          }
        }

        [(CFPrefsPlistSource *)v14 writeFailedForKeys:message values:keys count:values];
      }

      CFRelease(copyOSLogDescription);
    }

    if (values >= 1)
    {
      atomic_store(xpc_dictionary_get_uint64(a2, "CFPreferencesShmemState"), (v14 + 48));
    }

    return 1;
  }

  return result;
}

void __81__CFPrefsPlistSource_handlePossibleOversizedMessage_forWritingKeys_values_count___block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.CFPreferences.byteCountLimitReached", 0, 0, 1u);
}

void __105__CFPrefsPlistSource_handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _CFPrefsClientLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __105__CFPrefsPlistSource_handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation___block_invoke_cold_1();
  }
}

void __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke(uint64_t a1, xpc_connection_t connection)
{
  v14[10] = *MEMORY[0x1E69E9840];
  if (connection)
  {
    v4 = xpc_connection_send_message_with_reply_sync(connection, *(a1 + 32));
  }

  else
  {
    v4 = xpc_retain(MEMORY[0x1E69E9E20]);
  }

  v5 = v4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke_2;
  v14[3] = &unk_1E6DD2BD8;
  v14[4] = v7;
  v14[5] = v6;
  v14[6] = connection;
  v14[7] = v9;
  v14[8] = v8;
  v14[9] = v10;
  [(CFPrefsPlistSource *)v6 handleErrorReply:v5 toMessage:v7 settingKeys:v8 toValues:v9 count:v10 retryCount:v11 retryContinuation:v14];
  if (object_getClass(v5) == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v5, "CFPreferencesShmemState");
    if (uint64)
    {
      v13 = atomic_load((*(a1 + 40) + 48));
      if (uint64 == v13 + 1)
      {
        atomic_store(uint64, (*(a1 + 40) + 48));
      }
    }
  }
}

- (void)sendRequestNewDataMessage:(uint64_t)message toConnection:(uint64_t)connection retryCount:(BOOL *)count error:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a2)
    {
      if (([CFPrefsPlistSource sendRequestNewDataMessage:self toConnection:a2 retryCount:count error:&description]& 1) == 0)
      {
        v10 = _os_activity_create(&dword_1830E6000, description, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        os_activity_scope_enter(v10, &state);
        [(CFPrefsPlistSource *)self addPIDImpersonationIfNecessary:a2];
        description = 0;
        p_description = &description;
        v22 = 0x3052000000;
        v23 = __Block_byref_object_copy__7;
        v24 = __Block_byref_object_dispose__7;
        v25 = 0;
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __78__CFPrefsPlistSource_sendRequestNewDataMessage_toConnection_retryCount_error___block_invoke;
        v16 = &unk_1E6DD2280;
        v18 = a2;
        v19 = &description;
        messageCopy = message;
        v12 = atomic_load((self + 113));
        if (v12 & 1) != 0 || (_CFPrefsDirectMode(v11))
        {
          CFPREFERENCES_IS_WAITING_FOR_DIRECT_CFPREFSD(*(self + 8), &v13);
        }

        else if (xpc_user_sessions_enabled() && (CFEqual(*(self + 64), @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(*(self + 64), @"kCFPreferencesCurrentUser")))
        {
          CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(*(self + 8), &v13);
        }

        else
        {
          CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(*(self + 8), &v13);
        }

        [self handleReply:p_description[5] toRequestNewDataMessage:a2 onConnection:message retryCount:connection error:{count, v13, v14, v15, v16, messageCopy, v18, v19, description}];
        xpc_release(p_description[5]);

        _Block_object_dispose(&description, 8);
        os_activity_scope_leave(&state);
      }
    }

    else
    {
      *count = 1;
    }
  }
}

- (id)createRequestNewContentMessageForDaemon:(int)daemon
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v6 = atomic_load(&self->_directMode);
  if (v6 & 1) != 0 || (_CFPrefsDirectMode(v5))
  {
    v7 = 3;
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(self->userIdentifier, @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(self->userIdentifier, @"kCFPreferencesCurrentUser")))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7 == daemon)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke;
    v17 = &unk_1E6DD2C50;
    selfCopy = self;
    v19 = &v20;
    v8 = atomic_load(&self->_volatile);
    if ((v8 & 1) == 0)
    {
      v9 = atomic_load(&self->super.shmemEntry);
      if (!v9 || (v10 = atomic_load(v9), v11 = atomic_load(&sentinelGeneration), v10 != v11) && (v12 = atomic_load(&self->super.lastKnownShmemState), v10 != v12))
      {
        os_unfair_lock_assert_owner(&self->super._lock);
        v16(v15);
      }
    }
  }

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);
  return v13;
}

void __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([(CFPrefsPlistSource *)*(a1 + 32) volatilizeIfInvalidHomeDir]& 1) == 0)
  {
    v3 = [*(a1 + 32) createSynchronizeMessage];
    v5 = *(a1 + 40);
    v4 = a1 + 40;
    *(*(v5 + 8) + 40) = v3;
    v6 = *(*(*v4 + 8) + 40);
    if (v6)
    {
      __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke_cold_1(v2, v6, v4);
    }
  }
}

void __44__CFPrefsPlistSource_requestPlistValidation__block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) createSynchronizeMessage];
  if (v4)
  {
    v5 = v4;
    if ([(CFPrefsPlistSource *)*(a1 + 32) attachAccessTokenToMessage:v4 accessType:0])
    {
      [(CFPrefsPlistSource *)*(a1 + 32) addPIDImpersonationIfNecessary:v5];
      xpc_dictionary_set_BOOL(v5, "ValidatePlist", 1);
      v6 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v8 = _CFPrefsClientLog(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1830E6000, v8, OS_LOG_TYPE_INFO, "Requesting validation of plist after invalid data detected", v10, 2u);
      }

      _CFSetTSD(15, 0, 0);
      global_queue = dispatch_get_global_queue(17, 0);
      xpc_connection_send_message_with_reply(a2, v5, global_queue, &__block_literal_global_53);
    }

    xpc_release(v5);
  }
}

- (void)handleReply:(id)reply toRequestNewDataMessage:(id)message onConnection:(id)connection retryCount:(int)count error:(BOOL *)error
{
  errorCopy = error;
  v7 = *&count;
  v115 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v12 = atomic_load(&self->super.shmemEntry);
  if (v12 || (string = xpc_dictionary_get_string(reply, "CFPreferencesShmemName")) == 0)
  {
LABEL_2:
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke;
    v112[3] = &unk_1E6DD2C98;
    v112[4] = message;
    v112[5] = self;
    v112[6] = connection;
    v112[7] = errorCopy;
    if (([(CFPrefsPlistSource *)self handleErrorReply:reply toMessage:message settingKeys:0 toValues:0 count:0 retryCount:v7 retryContinuation:v112]& 1) != 0)
    {
      return;
    }

    atomic_store(xpc_dictionary_get_uint64(reply, "CFPreferencesShmemState"), &self->super.lastKnownShmemState);
    value = xpc_dictionary_get_value(reply, "CFPreferencesPropertyList");
    v13 = xpc_dictionary_dup_fd(reply, "PlistFD");
    v14 = xpc_dictionary_get_value(reply, "PlistDiff");
    v16 = xpc_dictionary_get_value(reply, "CFPreferencesValidationPropertyList");
    if (v14 | v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = dyld_program_sdk_at_least();
    }

    if (v13 != -1)
    {
      memset(&v114, 0, sizeof(v114));
      if (fstat(v13, &v114))
      {
        v26 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v28 = _CFPrefsClientLog(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = __error();
          [CFPrefsPlistSource handleReply:v29 toRequestNewDataMessage:v113 onConnection:v28 retryCount:? error:?];
        }

        _CFSetTSD(15, 0, 0);
        goto LABEL_17;
      }

      st_size = v114.st_size;
      if (!_plistSizeIsAppropriateToRead(v114.st_size))
      {
LABEL_17:
        v30 = 0;
        Mutable = 0;
LABEL_18:
        v32 = close(v13);
        goto LABEL_19;
      }

      v39 = mmap(0, st_size, 1, 2, v13, 0);
      if (v39 == -1)
      {
        __error();
        copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
        v54 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v56 = _CFPrefsClientLog(v54, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(15, 0, 0);
        CFRelease(copyOSLogDescription);
        goto LABEL_17;
      }

      v113[0] = 0;
      copyOSLogDescription3 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v39, st_size, &__kCFAllocatorNull);
      v40 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, copyOSLogDescription3, v17 ^ 1u, 0, v113);
      Mutable = v40;
      if (v40)
      {
        if (CFGetTypeID(v40) == 18)
        {
          v30 = 1;
LABEL_81:
          if (copyOSLogDescription3)
          {
            CFRelease(copyOSLogDescription3);
          }

          munmap(v39, st_size);
          goto LABEL_18;
        }

        copyOSLogDescription2 = [(CFPrefsSource *)self copyOSLogDescription];
        v60 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v62 = _CFPrefsClientLog(v60, v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(15, 0, 0);
        CFRelease(copyOSLogDescription2);
      }

      else
      {
        copyOSLogDescription2 = [(CFPrefsSource *)self copyOSLogDescription];
        v106 = &__kCFBooleanTrue;
        v57 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v59 = _CFPrefsClientLog(v57, v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(15, 0, 0);
        if (os_variant_has_internal_diagnostics())
        {
          v105 = os_log_create("com.apple.defaults", "diagnostics");
          _CFSetTSD(15, v106, 0);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
          }

          _CFSetTSD(15, 0, 0);
        }

        CFRelease(copyOSLogDescription2);
        if (v113[0])
        {
          CFRelease(v113[0]);
        }
      }

      v30 = 0;
      goto LABEL_81;
    }

    v32 = value;
    if (!value)
    {
      Mutable = 0;
      v30 = 1;
      goto LABEL_19;
    }

    if (object_getClass(value) != MEMORY[0x1E69E9E70] || (length = xpc_data_get_length(value), !_plistSizeIsAppropriateToRead(length)))
    {
      Mutable = 0;
      goto LABEL_126;
    }

    *&v114.st_dev = 0;
    bytes_ptr = xpc_data_get_bytes_ptr(value);
    v50 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, bytes_ptr, length, &__kCFAllocatorNull);
    v51 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v50, v17 ^ 1u, 0, &v114);
    Mutable = v51;
    if (v50)
    {
      v52 = v51 == 0;
    }

    else
    {
      v52 = 0;
    }

    v30 = !v52;
    if (v52)
    {
      copyOSLogDescription3 = [(CFPrefsSource *)self copyOSLogDescription];
      copyOSLogDescription2 = &__kCFBooleanTrue;
      v63 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v65 = _CFPrefsClientLog(v63, v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
      }

      _CFSetTSD(15, 0, 0);
      CFRelease(copyOSLogDescription3);
      [(CFPrefsPlistSource *)self requestPlistValidation];
      if (os_variant_has_internal_diagnostics())
      {
        v66 = os_log_create("com.apple.defaults", "diagnostics");
        v106 = v50;
        _CFSetTSD(15, copyOSLogDescription2, 0);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(15, 0, 0);

        v50 = v106;
      }
    }

    else if (!v50)
    {
      goto LABEL_91;
    }

    CFRelease(v50);
LABEL_91:
    v32 = *&v114.st_dev;
    if (*&v114.st_dev)
    {
      CFRelease(*&v114.st_dev);
    }

    if (Mutable)
    {
      v32 = CFGetTypeID(Mutable);
      if (v32 != 18)
      {
        copyOSLogDescription4 = [(CFPrefsSource *)self copyOSLogDescription];
        v68 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v70 = _CFPrefsClientLog(v68, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(15, 0, 0);
        CFRelease(copyOSLogDescription4);
        [(CFPrefsPlistSource *)self requestPlistValidation];
        v30 = 0;
      }
    }

LABEL_19:
    if (!v30 || !v14)
    {
      if (v16)
      {
        v37 = v30;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
LABEL_103:
        if (object_getClass(v16) == MEMORY[0x1E69E9E70])
        {
          v71 = xpc_data_get_length(v16);
          if (v71 <= 0x7FFFFFFFFFFFFFFELL)
          {
            *&v114.st_dev = 0;
            v72 = xpc_data_get_bytes_ptr(v16);
            errorCopy = &__kCFAllocatorSystemDefault;
            v73 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v72, v71, &__kCFAllocatorNull);
            v74 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v73, 0, 0, &v114);
            v75 = v74;
            if (!v74 || (v32 = CFGetTypeID(v74), v32 != 18))
            {
              copyOSLogDescription5 = [(CFPrefsSource *)self copyOSLogDescription];
              v77 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
              v79 = _CFPrefsClientLog(v77, v78);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
              }

              _CFSetTSD(15, 0, 0);
              CFRelease(copyOSLogDescription5);
              v32 = *&v114.st_dev;
              if (*&v114.st_dev)
              {
                CFRelease(*&v114.st_dev);
              }
            }

            if (v73)
            {
              CFRelease(v73);
            }

            if (v75)
            {
              if (CFDictionaryGetCount(v75) >= 1)
              {
                if (!Mutable)
                {
                  Mutable = CFDictionaryCreateMutable(errorCopy, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                }

                v111[0] = MEMORY[0x1E69E9820];
                v111[1] = 3221225472;
                v111[2] = __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke_62;
                v111[3] = &unk_1E6DD2CC0;
                v111[5] = Mutable;
                v111[6] = v75;
                v111[4] = self;
                CFDictionaryApplyFunction(v75, applyDictBlock, v111);
              }

              CFRelease(v75);
            }

            goto LABEL_119;
          }
        }

LABEL_126:
        copyOSLogDescription6 = [(CFPrefsSource *)self copyOSLogDescription];
        v85 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v87 = _CFPrefsClientLog(v85, v86);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(15, 0, 0);
        if (copyOSLogDescription6)
        {
          CFRelease(copyOSLogDescription6);
        }

        *errorCopy = 1;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

      if (!v30)
      {
        goto LABEL_126;
      }

LABEL_119:
      v80 = _CFPrefsClientLog(v32, v15);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        copyOSLogDescription7 = [(CFPrefsSource *)self copyOSLogDescription];
        v82 = v13 == -1;
        if (!value)
        {
          v82 = 0;
        }

        if (v82)
        {
          v83 = "a new base plist";
        }

        else if (self->super._dict)
        {
          v83 = "the same base plist";
        }

        else
        {
          v83 = "an empty base plist";
        }

        v88 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
        v90 = _CFPrefsClientLog(v88, v89);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v101 = "no additional changes from the base plist";
          v114.st_dev = 138543874;
          *&v114.st_mode = copyOSLogDescription7;
          WORD2(v114.st_ino) = 2080;
          if (v14)
          {
            v101 = "a diff relative to the base plist";
          }

          *(&v114.st_ino + 6) = v83;
          HIWORD(v114.st_gid) = 2080;
          *&v114.st_rdev = v101;
          _os_log_debug_impl(&dword_1830E6000, v90, OS_LOG_TYPE_DEBUG, "%{public}@ loaded: %s and %s", &v114, 0x20u);
        }

        _CFSetTSD(15, 0, 0);
        CFRelease(copyOSLogDescription7);
      }

      dict = self->super._dict;
      if (dict)
      {
        CFRelease(dict);
      }

      if (((Mutable != 0) & v17) == 1)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, Mutable);
        CFRelease(Mutable);
        Mutable = MutableCopy;
      }

      if (Mutable)
      {
        Count = CFDictionaryGetCount(Mutable);
        v96 = Count;
        if (Count >> 60)
        {
          v102 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
          v103 = [NSException exceptionWithName:@"NSGenericException" reason:v102 userInfo:0];
          CFRelease(v102);
          objc_exception_throw(v103);
        }

        if (Count <= 1)
        {
          Count = 1;
        }

        v97 = MEMORY[0x1EEE9AC00](Count, v94, v95);
        v99 = (&v104 - v98);
        *&v114.st_dev = 0;
        if (v96 >= 0x101)
        {
          v99 = _CFCreateArrayStorage(v97, 0, &v114);
          v100 = v99;
        }

        else
        {
          v100 = 0;
        }

        CFDictionaryGetKeysAndValues(Mutable, v99, 0);
        for (; v96; --v96)
        {
          if (([(CFPrefsSource *)self validateValue:*v99 forKey:Mutable inDict:0 forWriting:?]& 1) == 0)
          {
            CFDictionaryRemoveValue(Mutable, *v99);
          }

          ++v99;
        }

        free(v100);
      }

      self->super._dict = Mutable;
      atomic_fetch_add(&self->super._generationCount, 1uLL);
      return;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9E50])
    {
LABEL_22:
      copyOSLogDescription8 = [(CFPrefsSource *)self copyOSLogDescription];
      v34 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v36 = _CFPrefsClientLog(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
      }

      _CFSetTSD(15, 0, 0);
      CFRelease(copyOSLogDescription8);
      goto LABEL_126;
    }

    v45 = xpc_array_get_count(v14);
    if ((v45 & 1) != 0 || Mutable)
    {
      if (v45)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v46 = self->super._dict;
      if (v45)
      {
        if (v46)
        {
          v47 = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v46);
        }

        else
        {
          v47 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        goto LABEL_101;
      }

      if (v46)
      {
        v47 = CFRetain(self->super._dict);
LABEL_101:
        Mutable = v47;
        goto LABEL_102;
      }

      Mutable = 0;
    }

LABEL_102:
    _CFPrefsApplyChangesQueueToDictionary(v14, Mutable);
    if (v16)
    {
      goto LABEL_103;
    }

    goto LABEL_119;
  }

  v22 = string;
  v23 = atomic_load(&self->_directMode);
  if (v23 & 1) != 0 || (_CFPrefsDirectMode(string))
  {
    v24 = 3;
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(self->userIdentifier, @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(self->userIdentifier, @"kCFPreferencesCurrentUser")))
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = [(_CFXPreferences *)self->super._containingPreferences shmemForRole:v24 name:v22, v19, v20, v21];
  if (v25)
  {
    atomic_store(v25 + 4 * xpc_dictionary_get_int64(reply, "CFPreferencesShmemIndex"), &self->super.shmemEntry);
    goto LABEL_2;
  }

  copyOSLogDescription9 = [(CFPrefsSource *)self copyOSLogDescription];
  v42 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
  v44 = _CFPrefsClientLog(v42, v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v114.st_dev = 67109634;
    *&v114.st_mode = v24;
    LOWORD(v114.st_ino) = 2082;
    *(&v114.st_ino + 2) = v22;
    HIWORD(v114.st_uid) = 2114;
    *&v114.st_gid = copyOSLogDescription9;
    _os_log_error_impl(&dword_1830E6000, v44, OS_LOG_TYPE_ERROR, "going volatile, because unable to obtain shmem entry for role: %d name: %{public}s. %{public}@", &v114, 0x1Cu);
  }

  _CFSetTSD(15, 0, 0);
  atomic_store(1u, &self->_volatile);
  *errorCopy = 1;
  if (copyOSLogDescription9)
  {
    CFRelease(copyOSLogDescription9);
  }
}

void __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (byte_1EA84A4F4)
  {
    xpc_dictionary_set_BOOL(*(a1 + 32), "PreviousMessageInjectedFailure", 1);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  [(CFPrefsPlistSource *)v4 sendRequestNewDataMessage:v5 toConnection:v6 retryCount:a2 error:v7];
}

void __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke_62(uint64_t a1, CFStringRef theString, const void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!CFStringHasPrefix(theString, @"Sig_"))
  {
    Value = CFDictionaryGetValue(*(a1 + 40), theString);
    v7 = Value;
    if (!Value || !CFEqual(Value, a3))
    {
      v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s%@", "Sig_", theString);
      v9 = CFDictionaryGetValue(*(a1 + 48), v8);
      CFRelease(v8);
      v10 = [*(a1 + 32) copyOSLogDescription];
      v11 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v13 = _CFPrefsClientLog(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544387;
        v15 = v10;
        v16 = 2114;
        v17 = theString;
        v18 = 2113;
        v19 = v7;
        v20 = 2113;
        v21 = a3;
        v22 = 2114;
        v23 = v9;
        _os_log_error_impl(&dword_1830E6000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Value for key %{public}@ was %{private}@. Expected %{private}@ (%{public}@)", buf, 0x34u);
      }

      _CFSetTSD(15, 0, 0);
      CFRelease(v10);
      CFDictionarySetValue(*(a1 + 40), theString, a3);
    }
  }
}

xpc_object_t __78__CFPrefsPlistSource_sendRequestNewDataMessage_toConnection_retryCount_error___block_invoke(uint64_t a1)
{
  result = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)alreadylocked_clearCache
{
  os_unfair_lock_assert_owner(&self->super._lock);
  dict = self->super._dict;
  if (dict && CFDictionaryGetCount(dict) && !atomic_load(&self->_locallySetDict))
  {
    CFRelease(self->super._dict);
    self->super._dict = 0;
    atomic_store(0xFFFFFFFFFFFFFFFFLL, &self->super._generationCount);
    atomic_store(0, &self->super.lastKnownShmemState);
    atomic_store(0, &self->super.shmemEntry);
  }
}

- (int64_t)alreadylocked_generationCount
{
  v13 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v11 = &unk_1E6D81EC0;
  selfCopy = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v10(v9);
    }
  }

  return atomic_load(&self->super._generationCount);
}

- (int64_t)generationCount
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super._lock);
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v11 = &unk_1E6D81EC0;
  selfCopy = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v10(v9);
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  return atomic_load(&self->super._generationCount);
}

- (id)alreadylocked_createObserverUpdateMessageWithOperation:(int)operation forRole:(int *)role
{
  if (!operation)
  {
    return 0;
  }

  createSynchronizeMessage = [(CFPrefsPlistSource *)self createSynchronizeMessage];
  xpc_dictionary_set_int64(createSynchronizeMessage, "CFPreferencesOperation", operation);
  v9 = atomic_load(&self->_directMode);
  if (v9 & 1) != 0 || (_CFPrefsDirectMode(v8))
  {
    v10 = 3;
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(self->userIdentifier, @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(self->userIdentifier, @"kCFPreferencesCurrentUser")))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *role = v10;
  return createSynchronizeMessage;
}

- (void)setUserIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v4 = *(identifier + 64);
    if (v4 != cf1)
    {
      if (cf1)
      {
        v5 = @"kCFPreferencesAnyUser";
        if (CFEqual(cf1, @"kCFPreferencesAnyUser") || (v5 = @"kCFPreferencesCurrentUser", CFEqual(cf1, @"kCFPreferencesCurrentUser")))
        {
          *(identifier + 64) = v5;
          if (!v4)
          {
            return;
          }
        }

        else
        {
          *(identifier + 64) = CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf1);
          if (!v4)
          {
            return;
          }
        }
      }

      else
      {
        *(identifier + 64) = 0;
        if (!v4)
        {
          return;
        }
      }

      CFRelease(v4);
    }
  }
}

- (void)setContainer:(uint64_t)container
{
  if (container)
  {
    v3 = *(container + 80);
    if (v3 != cf)
    {
      v4 = cf ? CFRetain(cf) : 0;
      *(container + 80) = v4;
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

- (BOOL)_logLoudlyAboutSettingKey:(_BOOL8)result
{
  if (result)
  {
    v1 = OUTLINED_FUNCTION_6_5(result, 105);
    if (v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_6_5(v1, 106);
    if (v4)
    {
      return 0;
    }

    else
    {
      v5 = v3;
      return CFEqual(v3, @"AppleLanguages") || CFEqual(v5, @"AppleLocale") != 0;
    }
  }

  return result;
}

- (void)goVolatileAfterTryingToWriteKeys:(__CFString *)keys values:(uint64_t)values count:
{
  if (self)
  {
    [(CFPrefsPlistSource *)self writeFailedForKeys:a2 values:keys count:values];
    OUTLINED_FUNCTION_4_6((self + 105));
  }
}

- (uint64_t)_shouldEnableDirectMode
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_6_5(self, 112);
    if ((v3 & 1) != 0 && (_CFPrefsDirectMode(v2) & 1) == 0)
    {
      v5 = atomic_load((self + 113));
      v4 = v5 ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)transitionIntoDirectModeIfNeededWithRetryBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = atomic_load(&self->_byteCountLimitExceeded);
    if ((v4 & 1) != 0 && (_CFPrefsDirectMode(self) & 1) == 0)
    {
      v6 = atomic_load(&self->_directMode);
      if ((v6 & 1) == 0)
      {
        copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
        v9 = _CFPrefsClientLog(copyOSLogDescription, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = 138543362;
          v11 = copyOSLogDescription;
          _os_log_error_impl(&dword_1830E6000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Transitioning into direct mode", &v10, 0xCu);
        }

        CFRelease(copyOSLogDescription);
        os_unfair_lock_lock(&self->super._lock);
        [(CFPrefsPlistSource *)self alreadylocked_clearCache];
        atomic_store(0, &self->_byteCountLimitExceeded);
        OUTLINED_FUNCTION_4_6(&self->_directMode);
        os_unfair_lock_unlock(&self->super._lock);
        (*(block + 2))(block);
      }
    }
  }
}

- (void)goReadOnlyAfterTryingToWriteKeys:(__CFString *)keys values:(uint64_t)values count:
{
  if (self)
  {
    [(CFPrefsPlistSource *)self writeFailedForKeys:a2 values:keys count:values];
    OUTLINED_FUNCTION_4_6((self + 106));
  }
}

- (uint64_t)handleErrorReply:(void *)reply toMessage:(uint64_t)message retryCount:(uint64_t)count retryContinuation:
{
  if (result)
  {
    return [(CFPrefsPlistSource *)result handleErrorReply:a2 toMessage:reply settingKeys:0 toValues:0 count:0 retryCount:message retryContinuation:count];
  }

  return result;
}

- (void)handlePossibleOversizedMessage:(const void *)message forWritingKeys:(const void *)keys values:(CFIndex)values count:
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a2 == 1)
    {
      v13 = _CFPrefsClientLog(self, a2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        copyOSLogDescription = [self copyOSLogDescription];
        alreadylocked_copyDictionary = [self alreadylocked_copyDictionary];
        v16 = OUTLINED_FUNCTION_11_1([_CFPrefsOversizedPlistDescription alloc]);
        v18 = _CFPrefsClientLog(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          _CFProcessNameString();
          v20 = 138544642;
          v21 = copyOSLogDescription;
          OUTLINED_FUNCTION_8_3();
          v22 = 3145728;
          v23 = 1026;
          v24 = 0x400000;
          v25 = 2082;
          v26 = "cause performance problems or lose data";
          v27 = 2114;
          v28 = v19;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_1830E6000, v18, OS_LOG_TYPE_INFO, "%{public}@: Storing >= %d bytes of data in CFPreferences/NSUserDefaults. If this exceeds %{public}d, it may %{public}s. This is a bug in %{public}@ or a library it uses.\n%@", &v20, 0x36u);
        }

        CFRelease(copyOSLogDescription);
        if (alreadylocked_copyDictionary)
        {
          CFRelease(alreadylocked_copyDictionary);
        }
      }

      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_50);
    }

    else if (a2 == 2)
    {
      v9 = atomic_load((self + 113));
      if (v9 & 1) != 0 || (_CFPrefsDirectMode(self))
      {
        copyOSLogDescription2 = [self copyOSLogDescription];
        v12 = _CFPrefsClientLog(copyOSLogDescription2, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v20 = 138543618;
          v21 = copyOSLogDescription2;
          OUTLINED_FUNCTION_8_3();
          v22 = 0x400000;
          _os_log_debug_impl(&dword_1830E6000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Attempt to store >= %d bytes of data in CFPreferences/NSUserDefaults was allowed by virtue of direct mode", &v20, 0x12u);
        }

        CFRelease(copyOSLogDescription2);
      }

      else
      {
        if (xpc_user_sessions_enabled() && !CFEqual(*(self + 64), @"kCFPreferencesAnyUser") && !xpc_user_sessions_get_session_uid())
        {
          CFEqual(*(self + 64), @"kCFPreferencesCurrentUser");
        }

        __CFPREFERENCES_HAS_DETECTED_THIS_APP_TRYING_TO_STORE_TOO_MUCH_DATA__(self, message, keys, values);
        OUTLINED_FUNCTION_4_6((self + 112));
      }
    }
  }
}

- (BOOL)attachAccessTokenToMessage:(int)message accessType:
{
  if (result)
  {
    v3 = result;
    v4 = atomic_load((result + 96));
    result = 1;
    if (v4 && !xpc_dictionary_get_value(xdict, "CFPreferencesAccessToken"))
    {
      v7 = atomic_load((v3 + 96));
      v8 = message ? open(v7, 514, 384) : open(v7, 0);
      v9 = v8;
      if (v8 < 0)
      {
        return 0;
      }

      xpc_dictionary_set_fd(xdict, "CFPreferencesAccessToken", v8);
      close(v9);
      if (byte_1EA84A4F8)
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)addPIDImpersonationIfNecessary:(void *)necessary
{
  v7 = *MEMORY[0x1E69E9840];
  if (necessary)
  {
    memset(v6, 0, sizeof(v6));
    if (memcmp(&_CFPrefsAuditTokenToImpersonate, v6, 0x20uLL))
    {
      domainIdentifier = [necessary domainIdentifier];
      CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
      if (CFEqual(domainIdentifier, CacheStringForBundleID))
      {
        xpc_dictionary_set_data(a2, "CFPreferencesAuditTokenToImpersonate", &_CFPrefsAuditTokenToImpersonate, 0x20uLL);
      }
    }
  }
}

- (void)sendFullyPreparedMessage:(xpc_connection_t)connection toConnection:(uint64_t)connection settingValues:(uint64_t)values forKeys:(uint64_t)keys count:(int)count retryCount:
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke;
    v13[3] = &unk_1E6DD2C00;
    v13[4] = a2;
    v13[5] = self;
    v13[6] = values;
    v13[7] = connection;
    v13[8] = keys;
    countCopy = count;
    if (connection)
    {
      __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke(v13, connection);
    }

    else
    {
      v8 = *(self + 8);
      v9 = atomic_load((self + 113));
      if (v9 & 1) != 0 || (_CFPrefsDirectMode(self))
      {
        v10 = 3;
      }

      else if (xpc_user_sessions_enabled() && ((v11 = OUTLINED_FUNCTION_9_2(), CFEqual(v11, @"kCFPreferencesAnyUser")) || !xpc_user_sessions_get_session_uid() && (v12 = OUTLINED_FUNCTION_9_2(), CFEqual(v12, @"kCFPreferencesCurrentUser"))))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      -[_CFXPreferences withConnectionForRole:andUserIdentifier:performBlock:](v8, v10, [self userIdentifier], v13);
    }
  }
}

void __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke_2(uint64_t a1, int a2)
{
  v4 = xpc_copy(*(a1 + 32));
  v5 = v4;
  if (byte_1EA84A4F4)
  {
    xpc_dictionary_set_BOOL(v4, "PreviousMessageInjectedFailure", 1);
  }

  v6 = [(CFPrefsPlistSource *)*(a1 + 40) attachAccessTokenToMessage:v5 accessType:1];
  v7 = *(a1 + 40);
  if (v6)
  {
    [(CFPrefsPlistSource *)*(a1 + 40) sendFullyPreparedMessage:v5 toConnection:*(a1 + 48) settingValues:*(a1 + 56) forKeys:*(a1 + 64) count:*(a1 + 72) retryCount:a2];
  }

  else if (v7)
  {
    [(CFPrefsPlistSource *)*(a1 + 40) writeFailedForKeys:*(a1 + 56) values:*(a1 + 72) count:?];
    OUTLINED_FUNCTION_4_6((v7 + 106));
  }

  xpc_release(v5);
}

- (void)requestPlistValidation
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = atomic_load(requestInvalidPropertyListDeletion);
    if (v1)
    {
      v3 = self[1];
      v4 = OUTLINED_FUNCTION_6_5(self, 113);
      if (v5 & 1) != 0 || (_CFPrefsDirectMode(v4))
      {
        v6 = 3;
      }

      else if (xpc_user_sessions_enabled() && ((v8 = OUTLINED_FUNCTION_9_2(), CFEqual(v8, @"kCFPreferencesAnyUser")) || !xpc_user_sessions_get_session_uid() && (v9 = OUTLINED_FUNCTION_9_2(), CFEqual(v9, @"kCFPreferencesCurrentUser"))))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      userIdentifier = [self userIdentifier];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CFPrefsPlistSource_requestPlistValidation__block_invoke;
      v10[3] = &unk_1E6DD1D00;
      v10[4] = self;
      [(_CFXPreferences *)v3 withConnectionForRole:v6 andUserIdentifier:userIdentifier performBlock:v10];
    }
  }
}

- (BOOL)setDomainIdentifier:(uint64_t)a3 .cold.2(__CFString *cf, uint64_t a2, uint64_t a3, __CFString *a4)
{
  if (@"kCFPreferencesAnyApplication" == cf || _CFPrefsGetCacheStringForBundleID(a4) == cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = _CFStringCopyBundleUnloadingProtectedString(cf);
  }

  *(a2 + 72) = v7;
  return a3 == 0;
}

- (void)createSynchronizeMessage
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136446466;
  selfCopy = self;
  v6 = 2082;
  error_description = container_get_error_description();
  _os_log_error_impl(&dword_1830E6000, a3, OS_LOG_TYPE_ERROR, "Could not lookup group container %{public}s: %{public}s", &v4, 0x16u);
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "Successfully created directory %{private}s. Retrying write.", v1, 0xCu);
}

- (void)handleErrorReply:(uint8_t *)buf toMessage:(os_log_t)log settingKeys:toValues:count:retryCount:retryContinuation:.cold.2(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136380931;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Failed to create directory %{private}s because of %{darwin.errno}d.", buf, 0x12u);
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.5()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.6()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.9()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleErrorReply:(char *)a3 toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.11(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = a1;
  v9 = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsClientLog(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1830E6000, v6, OS_LOG_TYPE_INFO, "cfprefsd crashed, retrying message", v8, 2u);
  }

  if (v5 <= 9)
  {
    (*(a2 + 16))(a2, (v5 + 1));
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
}

- (uint64_t)sendRequestNewDataMessage:(uint64_t)a1 toConnection:(void *)a2 retryCount:(BOOL *)a3 error:(const char *)a4 .cold.1(uint64_t a1, void *a2, BOOL *a3, const char **a4)
{
  v7 = [(CFPrefsPlistSource *)a1 attachAccessTokenToMessage:a2 accessType:0];
  *a3 = !v7;
  if (!v7)
  {
    return 1;
  }

  v8 = atomic_load((a1 + 113));
  if (v8 & 1) != 0 || (_CFPrefsDirectMode(v7))
  {
    v9 = "Loading Preferences From Direct CFPrefsD";
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(*(a1 + 64), @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(*(a1 + 64), @"kCFPreferencesCurrentUser")))
  {
    v9 = "Loading Preferences From System Session CFPrefsD";
  }

  else
  {
    v9 = "Loading Preferences From User Session CFPrefsD";
  }

  result = 0;
  *a4 = v9;
  return result;
}

void __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke_cold_1(_BOOL8 *a1, void *a2, uint64_t a3)
{
  if ([(CFPrefsPlistSource *)*a1 attachAccessTokenToMessage:a2 accessType:0])
  {
    v5 = *a1;
    v6 = *(*(*a3 + 8) + 40);

    [(CFPrefsPlistSource *)v5 addPIDImpersonationIfNecessary:v6];
  }
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.1()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleReply:(os_log_t)log toRequestNewDataMessage:onConnection:retryCount:error:.cold.4(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "failed to lstat plist fd: %{darwin.errno}d.", buf, 8u);
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.6()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.8()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.11()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end