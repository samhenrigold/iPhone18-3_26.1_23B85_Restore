@interface CFPrefsSearchListSource
- (BOOL)alreadylocked_hasNonRegisteredValueForKey:(uint64_t)key;
- (CFMutableArrayRef)_getPendingNotifications;
- (CFMutableDictionaryRef)alreadylocked_copyManagedDictionary;
- (CFPrefsSearchListSource)initWithIdentifier:(__CFString *)identifier containingPreferences:(id)preferences;
- (CFStringRef)copyCloudConfigurationWithURL:(CFPrefsConfigurationFileSource *)l outConfigFileSource:(CFStringRef *)source outStoreName:;
- (__CFArray)alreadylocked_copyKeyList;
- (__CFDictionary)alreadylocked_copyDictionary;
- (__CFString)copyOSLogDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createRequestNewContentMessageForDaemon:(int)daemon;
- (id)description;
- (int64_t)generationCount;
- (uint64_t)_getPendingNotifications;
- (uint64_t)alreadylocked_hasCloudValueForKey:(uint64_t)result;
- (uint64_t)alreadylocked_requestNewData;
- (uint64_t)alreadylocked_useCloudForKey:(uint64_t)result;
- (uint64_t)freeze;
- (uint64_t)synchronouslySendSystemMessage:(uint64_t)message andUserMessage:(uint64_t)userMessage andDirectMessage:(uint64_t)directMessage replyHandler:;
- (void)addCloudSourceForIdentifier:(uint64_t)identifier configurationPath:(uint64_t)path storeName:(__CFString *)name container:;
- (void)addManagedSourceForIdentifier:(uint64_t)identifier user:;
- (void)addNamedVolatileSourceForIdentifier:(uint64_t)identifier;
- (void)addPreferencesObserver:(uint64_t)observer;
- (void)addSource:(uint64_t)source;
- (void)addSourceForIdentifier:(uint64_t)identifier user:byHost:container:;
- (void)addSuiteSourceForIdentifier:(uint64_t)identifier user:;
- (void)alreadylocked_copyValueForKey:(__CFString *)key;
- (void)alreadylocked_generationCountFromListOfSources:(uint64_t)sources count:;
- (void)alreadylocked_getDictionary:(uint64_t)dictionary;
- (void)alreadylocked_reloadCacheIfStale;
- (void)alreadylocked_setObservingContents:(uint64_t)contents;
- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from;
- (void)dealloc;
- (void)deferredNotifyCausedByLoadingOfChangesFromDictionary:(__CFDictionary *)dictionary toDictionary:(__CFDictionary *)Copy;
- (void)deferredNotifyCausedByLocalWriteOfChangesToKey:(__CFString *)key fromValue:(void *)value toValue:(void *)toValue;
- (void)fullCloudSynchronizeWithCompletionHandler:(id)handler;
- (void)generationCount;
- (void)handleChangeNotificationForDomainIdentifier:(__CFString *)identifier isRemote:(BOOL)remote;
- (void)handleReply:(id)reply toRequestNewDataMessage:(id)message onConnection:(id)connection retryCount:(int)count error:(BOOL *)error;
- (void)removePreferencesObserver:(uint64_t)observer;
- (void)removeSource:(uint64_t)source;
- (void)replaceSource:(const void *)source withSource:;
- (void)setCloudEnabled:(const void *)enabled forKey:;
- (void)setCloudEnabled:(const void *)enabled forKeyPrefix:;
- (xpc_object_t)createMultiMessageWithContainedMessages:(uint64_t)messages;
@end

@implementation CFPrefsSearchListSource

- (__CFDictionary)alreadylocked_copyDictionary
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CFPrefsSearchListSource_alreadylocked_copyDictionary__block_invoke;
  v4[3] = &unk_1E6DD0960;
  v4[4] = &v5;
  [(CFPrefsSearchListSource *)self alreadylocked_getDictionary:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFMutableDictionaryRef __55__CFPrefsSearchListSource_alreadylocked_copyDictionary__block_invoke(CFMutableDictionaryRef result, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v2 = result;
    result = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theDict);
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

- (uint64_t)freeze
{
  if (result)
  {
    *(result + 120) = 1;
  }

  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  sourceList = self->_sourceList;
  if (sourceList)
  {
    CFRelease(sourceList);
  }

  identifier = self->_identifier;
  if (identifier)
  {
    CFRelease(identifier);
  }

  cloudKeys = self->_cloudKeys;
  if (cloudKeys)
  {
    CFRelease(cloudKeys);
  }

  cloudPrefixKeys = self->_cloudPrefixKeys;
  if (cloudPrefixKeys)
  {
    CFRelease(cloudPrefixKeys);
  }

  keysToSources = self->_keysToSources;
  if (keysToSources)
  {
    CFRelease(keysToSources);
  }

  self->_identifier = 0;
  self->_sourceList = 0;
  v8.receiver = self;
  v8.super_class = CFPrefsSearchListSource;
  [(CFPrefsSource *)&v8 dealloc];
}

- (CFMutableArrayRef)_getPendingNotifications
{
  v1[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = _CFGetTSD(16);
    if (result == 16)
    {
      [(CFPrefsSearchListSource *)v1 _getPendingNotifications];
      return v1[0];
    }

    else if (!result)
    {
      [CFPrefsSearchListSource _getPendingNotifications];
    }
  }

  return result;
}

- (uint64_t)_getPendingNotifications
{
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  *self = Mutable;

  return _CFSetTSD(16, Mutable, pendingKVODestructor);
}

- (uint64_t)alreadylocked_requestNewData
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
    {
      v4 = Count;
      result = [CFArrayGetValueAtIndex(*(v1 + 80) 0)];
      if (result)
      {
        v5 = 1;
        do
        {
          v6 = v5;
          if (v4 == v5)
          {
            break;
          }

          v7 = [CFArrayGetValueAtIndex(*(v1 + 80) v5)];
          v5 = v6 + 1;
        }

        while ((v7 & 1) != 0);
        return v4 <= v6;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)generationCount
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (!self->_sourceList)
  {
    return 0;
  }

  [(CFPrefsSearchListSource *)self generationCount];
  return v3[0];
}

- (void)generationCount
{
  os_unfair_lock_lock((self + 52));
  [(CFPrefsSearchListSource *)self alreadylocked_getDictionary:?];
  os_unfair_lock_unlock((self + 52));
  v4 = atomic_load((self + 32));
  *a2 = v4;
}

- (CFPrefsSearchListSource)initWithIdentifier:(__CFString *)identifier containingPreferences:(id)preferences
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CFPrefsSearchListSource;
  v5 = [(CFPrefsSource *)&v7 initWithContainingPreferences:preferences];
  if (v5)
  {
    v5->_identifier = _CFStringCopyBundleUnloadingProtectedString(identifier);
    v5->super._isSearchList = 1;
    atomic_store(0xFFFFFFFFFFFFFFFFLL, &v5->super._generationCount);
  }

  return v5;
}

- (CFStringRef)copyCloudConfigurationWithURL:(CFPrefsConfigurationFileSource *)l outConfigFileSource:(CFStringRef *)source outStoreName:
{
  selfCopy = self;
  v51 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return selfCopy;
  }

  if (!eduModeEnabled())
  {
    return 0;
  }

  if (a2)
  {
    v8 = CFRetain(a2);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesAnyApplication");
  if (CacheStringForBundleID == _CFPrefsGetCacheStringForBundleID(selfCopy[2].info))
  {
    return 0;
  }

  ConfigurationFileNameFromIdentifier = _CFPrefsCreateConfigurationFileNameFromIdentifier(selfCopy[2].info);
  if (ConfigurationFileNameFromIdentifier)
  {
    v12 = ConfigurationFileNameFromIdentifier;
    lCopy2 = l;
    v13 = CFCopySearchPathForDirectoriesInDomains(5, 8, 0);
    Count = CFArrayGetCount(v13);
    if (Count < 1)
    {
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v15 = Count;
      sourceCopy3 = source;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
        v18 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, ValueAtIndex, @"DefaultsConfigurations", 1u);
        v8 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, v18, v12, 0);
        v19 = _CFDataCreateFromURL(v8, 0);
        if (v19)
        {
          break;
        }

        CFRelease(v8);
        CFRelease(v18);
        if (v15 == ++v16)
        {
          v9 = 0;
          v8 = 0;
          goto LABEL_18;
        }
      }

      v9 = v19;
LABEL_18:
      source = sourceCopy3;
    }

    CFRelease(v13);
    CFRelease(v12);
    l = lCopy2;
    if (v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = 0;
  }

  sourceCopy2 = source;
  info = selfCopy[2].info;
  v22 = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
  if (!CFEqual(info, v22))
  {
    if (_CFPrefsWritingToExternalAppCloudPreferencesEnabled())
    {
      if (v8)
      {
        CFRelease(v8);
      }

      v25 = _CFPrefsCopyCloudConfigurationURLForIdentifier(selfCopy[2].info);
      goto LABEL_29;
    }

    if (v8)
    {
      CFRelease(v8);
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v9 = 0;
    }

    source = sourceCopy2;
LABEL_36:
    v50 = v8 == 0;
    if (v9)
    {
      goto LABEL_37;
    }

LABEL_67:
    _CFSetTSD(15, &__kCFBooleanTrue, 0);
    if (makeLogHandles_logToken != -1)
    {
      [CFPrefsSearchListSource copyCloudConfigurationWithURL:outConfigFileSource:outStoreName:];
    }

    if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_DEBUG))
    {
      [CFPrefsSearchListSource copyCloudConfigurationWithURL:selfCopy outConfigFileSource:? outStoreName:?];
    }

    _CFSetTSD(15, 0, 0);
    goto LABEL_72;
  }

  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    goto LABEL_30;
  }

  v24 = MainBundle;
  if (v8)
  {
    CFRelease(v8);
  }

  v25 = _CFPrefsCopyCloudConfigurationURLFromBundle(v24, selfCopy[2].info);
LABEL_29:
  v8 = v25;
LABEL_30:
  source = sourceCopy2;
  if (!v8)
  {
LABEL_31:
    v50 = 1;
    goto LABEL_67;
  }

LABEL_5:
  v9 = _CFDataCreateFromURL(v8, 0);
  v50 = 0;
  if (!v9)
  {
    goto LABEL_67;
  }

LABEL_37:
  lCopy2 = l;
  v26 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v9, 0, 0, 0);
  CFRelease(v9);
  if (!v26)
  {
    goto LABEL_67;
  }

  if (CFGetTypeID(v26) != 18)
  {
    CFRelease(v26);
    goto LABEL_67;
  }

  sourceCopy3 = source;
  _CFSetTSD(15, &__kCFBooleanTrue, 0);
  if (makeLogHandles_logToken != -1)
  {
    [CFPrefsSearchListSource copyCloudConfigurationWithURL:outConfigFileSource:outStoreName:];
  }

  if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_DEBUG))
  {
    [CFPrefsSearchListSource copyCloudConfigurationWithURL:selfCopy outConfigFileSource:? outStoreName:?];
  }

  _CFSetTSD(15, 0, 0);
  v27 = CFDictionaryGetCount(v26);
  v47[1] = v47;
  MEMORY[0x1EEE9AC00](v27, v28, v29);
  v30 = (8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = (v47 - v30);
  if ((8 * v27) >= 0x200)
  {
    v32 = 512;
  }

  else
  {
    v32 = 8 * v27;
  }

  bzero(v47 - v30, v32);
  MEMORY[0x1EEE9AC00](v33, v34, v35);
  v36 = (v47 - v30);
  bzero(v36, v32);
  CFDictionaryGetKeysAndValues(v26, v31, v36);
  if (v27 < 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      if (CFGetTypeID(*v36) == 18)
      {
        if (CFDictionaryGetValue(*v36, @"NSUserDefaultsUbiquitous") != &__kCFBooleanFalse)
        {
          HasSuffix = CFStringHasSuffix(*v31, @"*");
          v39 = *v31;
          if (HasSuffix)
          {
            v52.length = CFStringGetLength(*v31) - 1;
            v52.location = 0;
            v40 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v39, v52);
            [(CFPrefsSearchListSource *)selfCopy setCloudEnabled:v40 forKeyPrefix:?];
            CFRelease(v40);
          }

          else
          {
            [(CFPrefsSearchListSource *)selfCopy setCloudEnabled:*v31 forKey:?];
          }
        }

        v37 = 1;
      }

      ++v31;
      ++v36;
      --v27;
    }

    while (v27);
  }

  if (lCopy2)
  {
    v41 = [[CFPrefsConfigurationFileSource alloc] initWithConfigurationPropertyList:v26 containingPreferences:selfCopy->info];
    *lCopy2 = v41;
  }

  if (sourceCopy3)
  {
    Value = CFDictionaryGetValue(v26, @"NSUserDefaultsCloudStoreIdentifier");
    if (!Value)
    {
      Value = selfCopy[2].info;
    }

    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, Value);
    *sourceCopy3 = Copy;
  }

  CFRelease(v26);
  if ((v37 & 1) == 0)
  {
    goto LABEL_67;
  }

  v44 = CFURLCopyAbsoluteURL(v8);
  v45 = v44;
  if (v44)
  {
    selfCopy = CFURLCopyFileSystemPath(v44, kCFURLPOSIXPathStyle);
    CFRelease(v45);
    goto LABEL_73;
  }

LABEL_72:
  selfCopy = 0;
LABEL_73:
  if (!v50)
  {
    CFRelease(v8);
  }

  return selfCopy;
}

- (void)alreadylocked_setObservingContents:(uint64_t)contents
{
  v27 = *MEMORY[0x1E69E9840];
  if (contents)
  {
    os_unfair_lock_assert_owner((contents + 52));
    v4 = *(contents + 80);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      v23 = 0;
      v24 = 0;
      v22 = 0;
      if (Count < 1)
      {
        v13 = 0;
        v12 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(contents + 80), i);
          os_unfair_lock_lock(ValueAtIndex + 13);
          if (a2)
          {
            v8 = [(CFPrefsSource *)ValueAtIndex alreadylocked_addPreferencesObserver:contents];
          }

          else
          {
            v8 = [(CFPrefsSource *)ValueAtIndex alreadylocked_removePreferencesObserver:contents];
          }

          v25 = 0;
          v9 = [(os_unfair_lock_s *)ValueAtIndex alreadylocked_createObserverUpdateMessageWithOperation:v8 forRole:&v25];
          objects.opaque[0] = v9;
          if (v9)
          {
            if (v25 == 1)
            {
              v10 = &v24;
            }

            else
            {
              v10 = &v22;
            }

            if (v25 == 2)
            {
              v11 = &v23;
            }

            else
            {
              v11 = v10;
            }

            if (*v11)
            {
              xpc_array_append_value(*v11, v9);
            }

            else
            {
              *v11 = xpc_array_create(&objects, 1uLL);
            }

            xpc_release(objects.opaque[0]);
          }
        }

        v12 = v24;
        v13 = Count > 0;
      }
    }

    else
    {
      v13 = 0;
      Count = 0;
      v12 = 0;
      v22 = 0;
      v23 = 0;
    }

    v14 = _os_activity_create(&dword_1830E6000, "Updating Key-Value Observers Of Preferences", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    objects.opaque[0] = 0;
    objects.opaque[1] = 0;
    os_activity_scope_enter(v14, &objects);
    if (v12)
    {
      v15 = [(CFPrefsSearchListSource *)contents createMultiMessageWithContainedMessages:v12];
      xpc_release(v12);
    }

    else
    {
      v15 = 0;
    }

    v16 = v23;
    if (v23)
    {
      v17 = [(CFPrefsSearchListSource *)contents createMultiMessageWithContainedMessages:v23];
      xpc_release(v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = v22;
    if (v22)
    {
      v19 = [(CFPrefsSearchListSource *)contents createMultiMessageWithContainedMessages:v22];
      xpc_release(v18);
    }

    else
    {
      v19 = 0;
    }

    [(CFPrefsSearchListSource *)contents synchronouslySendSystemMessage:v17 andUserMessage:v15 andDirectMessage:v19 replyHandler:0];
    if (v17)
    {
      xpc_release(v17);
    }

    if (v15)
    {
      xpc_release(v15);
    }

    if (v19)
    {
      xpc_release(v19);
    }

    if (v13)
    {
      v20 = 0;
      do
      {
        v21 = CFArrayGetValueAtIndex(*(contents + 80), v20);
        os_unfair_lock_unlock(v21 + 13);
        ++v20;
      }

      while (Count != v20);
    }

    os_activity_scope_leave(&objects);
  }
}

- (void)addPreferencesObserver:(uint64_t)observer
{
  if (observer && a2)
  {
    v4 = objc_autoreleasePoolPush();
    os_unfair_lock_lock((observer + 52));
    if (![*(observer + 24) approximateCount])
    {
      [(CFPrefsSearchListSource *)observer alreadylocked_getDictionary:?];
    }

    if ([(CFPrefsSource *)observer alreadylocked_addPreferencesObserver:a2])
    {
      [CFPrefsSearchListSource addPreferencesObserver:];
    }

    if ([*(observer + 24) approximateCount] == 1)
    {
      [(CFPrefsSearchListSource *)observer alreadylocked_setObservingContents:?];
    }

    os_unfair_lock_unlock((observer + 52));

    objc_autoreleasePoolPop(v4);
  }
}

- (void)removePreferencesObserver:(uint64_t)observer
{
  if (observer && a2)
  {
    v4 = objc_autoreleasePoolPush();
    os_unfair_lock_lock((observer + 52));
    if ([(CFPrefsSource *)observer alreadylocked_removePreferencesObserver:a2])
    {
      [CFPrefsSearchListSource removePreferencesObserver:];
    }

    if (![*(observer + 24) approximateCount])
    {
      [(CFPrefsSearchListSource *)observer alreadylocked_setObservingContents:?];
    }

    os_unfair_lock_unlock((observer + 52));

    objc_autoreleasePoolPop(v4);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->super._lock);
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:self->_identifier containingPreferences:self->super._containingPreferences];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 80);
    if (v6)
    {
      CFRelease(v6);
    }

    sourceList = self->_sourceList;
    if (sourceList)
    {
      MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, sourceList);
    }

    else
    {
      MutableCopy = 0;
    }

    v5[10] = MutableCopy;
    v9 = v5[3];
    if (v9)
    {
      CFRelease(v9);
    }

    observers = self->super._observers;
    if (observers)
    {
      observers = [(__CFPrefsWeakObservers *)observers mutableCopy];
    }

    v5[3] = observers;
    v11 = v5[11];
    if (v11)
    {
      CFRelease(v11);
    }

    cloudKeys = self->_cloudKeys;
    if (cloudKeys)
    {
      v13 = CFSetCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, cloudKeys);
    }

    else
    {
      v13 = 0;
    }

    v5[11] = v13;
    cloudPrefixKeys = self->_cloudPrefixKeys;
    if (cloudPrefixKeys)
    {
      v5[12] = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, cloudPrefixKeys);
    }

    v5[13] = self->_standardSetTarget;
    v5[14] = self->_cloudSetTarget;
    dict = self->super._dict;
    if (dict)
    {
      v5[2] = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, dict);
    }

    keysToSources = self->_keysToSources;
    if (keysToSources)
    {
      v5[8] = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, keysToSources);
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (void)addSource:(uint64_t)source
{
  if (source && a2)
  {
    if (*(source + 120) == 1)
    {
      [CFPrefsSearchListSource addSource:];
    }

    Mutable = *(source + 80);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      *(source + 80) = Mutable;
    }

    v5.length = CFArrayGetCount(Mutable);
    v5.location = 0;
    if (!CFArrayContainsValue(Mutable, v5, a2))
    {
      CFArrayAppendValue(*(source + 80), a2);
    }

    atomic_store(0xFFFFFFFFFFFFFFFFLL, (source + 32));
  }
}

void __93__CFPrefsSearchListSource_addCloudSourceForIdentifier_configurationPath_storeName_container___block_invoke(void *a1, void *a2)
{
  [a2 setConfigurationPath:a1[5]];
  [a2 setStoreName:a1[6]];
  v4 = a1[4];

  [(CFPrefsSearchListSource *)v4 addSource:a2];
}

- (void)alreadylocked_copyValueForKey:(__CFString *)key
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_sourceList)
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CFPrefsSearchListSource_alreadylocked_copyValueForKey___block_invoke;
  v12[3] = &unk_1E6DD0938;
  v12[4] = &v13;
  v12[5] = key;
  [(CFPrefsSearchListSource *)self alreadylocked_getDictionary:v12];
  if (makeLogHandles_logToken != -1)
  {
    [CFPrefsSearchListSource alreadylocked_copyValueForKey:];
  }

  if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_DEBUG))
  {
    if (v14[3])
    {
      Value = CFDictionaryGetValue(self->_keysToSources, key);
    }

    else
    {
      Value = 0;
    }

    copyOSLogDescription = [(CFPrefsSearchListSource *)self copyOSLogDescription];
    copyOSLogDescription2 = [Value copyOSLogDescription];
    if (v14[3])
    {
      _CFSetTSD(15, &__kCFBooleanTrue, 0);
      if (makeLogHandles_logToken != -1)
      {
        [CFPrefsSearchListSource alreadylocked_copyValueForKey:];
      }

      v9 = clientHandle;
      if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_DEBUG))
      {
        v11 = v14[3];
        *buf = 138478595;
        v18 = v11;
        v19 = 2114;
        keyCopy = key;
        v21 = 2114;
        v22 = copyOSLogDescription2;
        v23 = 2114;
        v24 = copyOSLogDescription;
        _os_log_debug_impl(&dword_1830E6000, v9, OS_LOG_TYPE_DEBUG, "looked up value %{private}@ for key %{public}@ in %{public}@ via %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      _CFSetTSD(15, &__kCFBooleanTrue, 0);
      if (makeLogHandles_logToken != -1)
      {
        [CFPrefsSearchListSource alreadylocked_copyValueForKey:];
      }

      if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_DEBUG))
      {
        [CFPrefsSearchListSource alreadylocked_copyValueForKey:key];
      }
    }

    _CFSetTSD(15, 0, 0);
    CFRelease(copyOSLogDescription);
    if (copyOSLogDescription2)
    {
      CFRelease(copyOSLogDescription2);
    }
  }

  v6 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v6;
}

const void **__57__CFPrefsSearchListSource_alreadylocked_copyValueForKey___block_invoke(const void **result, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v2 = result;
    *(*(result[4] + 1) + 24) = CFDictionaryGetValue(theDict, result[5]);
    result = *(*(v2[4] + 1) + 24);
    if (result)
    {

      return CFRetain(result);
    }
  }

  return result;
}

- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from
{
  valuesCopy = values;
  v94[1] = *MEMORY[0x1E69E9840];
  p_standardSetTarget = &self->_standardSetTarget;
  if (*&self->_standardSetTarget == 0)
  {
    [CFPrefsSearchListSource alreadylocked_setPrecopiedValues:forKeys:count:from:];
  }

  v93 = 16;
  if (!self->super._dict)
  {
    [(CFPrefsSearchListSource *)self alreadylocked_getDictionary:?];
  }

  if (!self->_keysToSources)
  {
    [CFPrefsSearchListSource alreadylocked_setPrecopiedValues:forKeys:count:from:];
  }

  MEMORY[0x1EEE9AC00](self, a2, values);
  v10 = (count + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v82 - v10;
  bzero(&v82 - v10, count);
  v82 = valuesCopy;
  countCopy = count;
  v86 = &v82 - v10;
  if (count < 1)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    countCopy2 = count;
    LODWORD(v87) = 0;
    keysCopy = keys;
    do
    {
      v12 = [(CFPrefsSource *)self validateValue:*keysCopy forKey:0 inDict:1 forWriting:?];
      if (v12)
      {
        if (self->_cloudKeys || self->_cloudPrefixKeys)
        {
          v12 = [(CFPrefsSearchListSource *)self alreadylocked_useCloudForKey:?];
          *v11 = v12;
          LODWORD(v87) = v12 | v87;
        }
      }

      else
      {
        *keysCopy = 0;
      }

      ++v11;
      ++keysCopy;
      ++valuesCopy;
      --countCopy2;
    }

    while (countCopy2);
  }

  v17 = countCopy;
  MEMORY[0x1EEE9AC00](v12, v13, v14);
  v91 = &v82 - v10;
  bzero(&v82 - v10, v17);
  sourceList = self->_sourceList;
  v95.length = CFArrayGetCount(sourceList);
  v95.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(sourceList, v95, *p_standardSetTarget);
  if (v87)
  {
    v19 = self->_sourceList;
    v96.length = CFArrayGetCount(v19);
    v96.location = 0;
    v89 = CFArrayGetFirstIndexOfValue(v19, v96, self->_cloudSetTarget);
  }

  else
  {
    v89 = -1;
  }

  v92 = 80;
  if (v17 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    keysCopy2 = keys;
    v22 = v91;
    v23 = v86;
    do
    {
      Value = CFDictionaryGetValue(self->_keysToSources, *keysCopy2);
      *v22 = 1;
      if (Value)
      {
        v25 = Value;
        v26 = *(&self->super.super.isa + v92);
        v97.length = CFArrayGetCount(v26);
        v97.location = 0;
        v27 = CFArrayGetFirstIndexOfValue(v26, v97, v25);
        if (v27 == -1)
        {
          v29 = 1;
        }

        else
        {
          v28 = FirstIndexOfValue;
          if (*v23)
          {
            v28 = v89;
          }

          v29 = v27 >= v28;
        }

        *v22 = v29;
        v20 |= v29;
      }

      else
      {
        v20 = 1;
      }

      ++v23;
      ++v22;
      ++keysCopy2;
      --v17;
    }

    while (v17);
  }

  approximateCount = [(__CFPrefsWeakObservers *)self->super._observers approximateCount];
  Mutable = 0;
  v31 = *(&self->super.super.isa + v93);
  v84 = approximateCount;
  if (v31)
  {
    v32 = approximateCount == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v34 = v82;
    v33 = countCopy;
  }

  else
  {
    v34 = v82;
    v33 = countCopy;
    if (v20)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v33 >= 1)
      {
        v35 = v33;
        keysCopy3 = keys;
        v37 = v91;
        do
        {
          v38 = CFDictionaryGetValue(*(&self->super.super.isa + v93), *keysCopy3);
          if (v38 && *v37)
          {
            CFDictionarySetValue(Mutable, *keysCopy3, v38);
          }

          ++v37;
          ++keysCopy3;
          --v35;
        }

        while (v35);
      }
    }
  }

  if ((v87 & 1) != 0 && [(CFPrefsCloudSource *)self->_cloudSetTarget enabled])
  {
    if (((v33 >> 59) & 0xF) != 0)
    {
      v79 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v33);
      v80 = [NSException exceptionWithName:@"NSGenericException" reason:v79 userInfo:0];
      CFRelease(v79);
      objc_exception_throw(v80);
    }

    if (v33)
    {
      v41 = 2 * v33;
    }

    else
    {
      v41 = 1;
    }

    v42 = MEMORY[0x1EEE9AC00](v41, v39, v40);
    v44 = &v82 - v43;
    v94[0] = 0;
    if (v45 >= 0x101)
    {
      v44 = _CFCreateArrayStorage(v42, 0, v94);
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = &v44[8 * v33];
    if (v33 < 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = 0;
      v49 = v86;
      keysCopy4 = keys;
      v51 = v34;
      v52 = v33;
      do
      {
        v53 = *v49++;
        if (v53 == 1)
        {
          *&v44[8 * v48] = *keysCopy4;
          *&v47[8 * v48++] = *v51;
        }

        ++v51;
        ++keysCopy4;
        --v52;
      }

      while (v52);
    }

    [(CFPrefsSource *)self->_cloudSetTarget setValues:v44 forKeys:v48 count:0 copyValues:self from:?];
    if (v33 < 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = 0;
      v55 = v86;
      v56 = v33;
      keysCopy5 = keys;
      v58 = v34;
      do
      {
        v59 = *v55++;
        if ((v59 & 1) == 0)
        {
          *&v44[8 * v54] = *keysCopy5;
          *&v47[8 * v54++] = *v58;
        }

        ++v58;
        ++keysCopy5;
        --v56;
      }

      while (v56);
    }

    [(CFPrefsSource *)*p_standardSetTarget setValues:v44 forKeys:v54 count:0 copyValues:self from:?];
    free(v46);
    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    [(CFPrefsSource *)*p_standardSetTarget setValues:v34 forKeys:keys count:v33 copyValues:0 from:self];
    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  if (v33 >= 1)
  {
    for (i = 0; i != v33; ++i)
    {
      if (v91[i])
      {
        v61 = keys[i];
        if (v61)
        {
          v62 = *(v34 + 8 * i);
          if (v62)
          {
            CFDictionarySetValue(*(&self->super.super.isa + v93), v61, v62);
            p_cloudSetTarget = p_standardSetTarget;
            if (v86[i] == 1)
            {
              p_cloudSetTarget = &self->_cloudSetTarget;
            }

            CFDictionarySetValue(self->_keysToSources, keys[i], *p_cloudSetTarget);
          }

          else
          {
            v64 = *(&self->super.super.isa + v92);
            if (v64)
            {
              Count = CFArrayGetCount(v64);
              v87 = &v82;
              v68 = MEMORY[0x1EEE9AC00](Count, v66, v67);
              v70 = (&v82 - v69);
              if (v68 >= 1)
              {
                v98.location = 0;
                v98.length = Count;
                CFArrayGetValues(*(&self->super.super.isa + v92), v98, v70);
              }
            }

            else
            {
              v87 = &v82;
              MEMORY[0x1EEE9AC00](0, v61, 0);
              v70 = &v81;
              Count = 0;
            }

            v71 = FirstIndexOfValue;
            if (v86[i])
            {
              v71 = v89;
            }

            if (v71 + 1 < Count)
            {
              v72 = &v70[v71 + 1];
              v73 = ~v71 + Count;
              while (1)
              {
                v74 = [*v72 copyValueForKey:keys[i]];
                v75 = *(&self->super.super.isa + v93);
                v76 = keys[i];
                if (v74)
                {
                  break;
                }

                CFDictionaryRemoveValue(v75, v76);
                CFDictionaryRemoveValue(self->_keysToSources, keys[i]);
                ++v72;
                if (!--v73)
                {
                  goto LABEL_91;
                }
              }

              CFDictionarySetValue(v75, v76, v74);
              CFDictionarySetValue(self->_keysToSources, keys[i], *v72);
              CFRelease(v74);
            }
          }

LABEL_91:
          if (v84)
          {
            v77 = keys[i];
            v78 = CFDictionaryGetValue(Mutable, v77);
            [(CFPrefsSearchListSource *)self deferredNotifyCausedByLocalWriteOfChangesToKey:v77 fromValue:v78 toValue:CFDictionaryGetValue(*(&self->super.super.isa + v93), keys[i])];
          }
        }
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (void)fullCloudSynchronizeWithCompletionHandler:(id)handler
{
  cloudSetTarget = self->_cloudSetTarget;
  if (cloudSetTarget)
  {
    [(CFPrefsCloudSource *)cloudSetTarget fullCloudSynchronizeWithCompletionHandler:handler];
  }

  else
  {
    (*(handler + 2))(handler, 0);
  }
}

- (__CFArray)alreadylocked_copyKeyList
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_sourceList)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__CFPrefsSearchListSource_alreadylocked_copyKeyList__block_invoke;
    v4[3] = &unk_1E6DD0960;
    v4[4] = &v5;
    [(CFPrefsSearchListSource *)self alreadylocked_getDictionary:v4];
    Mutable = v6[3];
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    }

    _Block_object_dispose(&v5, 8);
    return Mutable;
  }

  else
  {

    return CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  }
}

void __52__CFPrefsSearchListSource_alreadylocked_copyKeyList__block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v7 = Count;
    if (Count >> 60)
    {
      v12 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
      v13 = [NSException exceptionWithName:@"NSGenericException" reason:v12 userInfo:0];
      CFRelease(v12);
      objc_exception_throw(v13);
    }

    if (Count <= 1)
    {
      Count = 1;
    }

    v8 = MEMORY[0x1EEE9AC00](Count, v5, v6);
    v10 = (v14 - v9);
    v14[0] = 0;
    if (v7 >= 0x101)
    {
      v10 = _CFCreateArrayStorage(v8, 0, v14);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    CFDictionaryGetKeysAndValues(theDict, v10, 0);
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreate(&__kCFAllocatorSystemDefault, v10, v7, &kCFTypeArrayCallBacks);
    free(v11);
  }
}

- (void)handleReply:(id)reply toRequestNewDataMessage:(id)message onConnection:(id)connection retryCount:(int)count error:(BOOL *)error
{
  v17[7] = *MEMORY[0x1E69E9840];
  sourceList = self->_sourceList;
  if (!sourceList)
  {
    return;
  }

  if (!reply)
  {
    goto LABEL_5;
  }

  if (object_getClass(reply) != MEMORY[0x1E69E9E80])
  {
    sourceList = self->_sourceList;
LABEL_5:
    if (CFArrayGetCount(sourceList) >= 1)
    {
      v12 = 0;
      do
      {
        [CFArrayGetValueAtIndex(self->_sourceList v12++)];
      }

      while (CFArrayGetCount(self->_sourceList) > v12);
    }

    return;
  }

  value = xpc_dictionary_get_value(message, "CFPreferencesMessages");
  v14 = xpc_dictionary_get_value(reply, "CFPreferencesMessages");
  if (v14)
  {
    v15 = v14;
    Count = CFArrayGetCount(self->_sourceList);
    if (Count != xpc_array_get_count(v15))
    {
      [CFPrefsSearchListSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__CFPrefsSearchListSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke;
    v17[3] = &unk_1E6DD0988;
    v17[4] = self;
    v17[5] = value;
    v17[6] = connection;
    xpc_array_apply(v15, v17);
  }
}

uint64_t __93__CFPrefsSearchListSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke(uint64_t a1, size_t a2, id a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (object_getClass(a3) != MEMORY[0x1E69E9ED0])
  {
    v8 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 80), a2);
    os_unfair_lock_lock(ValueAtIndex + 13);
    [(os_unfair_lock_s *)ValueAtIndex handleReply:a3 toRequestNewDataMessage:xpc_array_get_value(*(a1 + 40) onConnection:a2) retryCount:*(a1 + 48) error:0, &v8];
    os_unfair_lock_unlock(ValueAtIndex + 13);
  }

  return 1;
}

- (id)createRequestNewContentMessageForDaemon:(int)daemon
{
  v25 = *MEMORY[0x1E69E9840];
  sourceList = self->_sourceList;
  if (!sourceList)
  {
    return 0;
  }

  v5 = *&daemon;
  Count = CFArrayGetCount(sourceList);
  MEMORY[0x1EEE9AC00](Count, v7, v8);
  v9 = (&v22 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  v26.location = 0;
  v26.length = Count;
  CFArrayGetValues(self->_sourceList, v26, v9);
  v10 = xpc_null_create();
  MEMORY[0x1EEE9AC00](v10, v11, v12);
  v13 = v9;
  if (Count < 1)
  {
    v19 = 0;
  }

  else
  {
    selfCopy = self;
    v24 = &v22;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v9[v14];
      os_unfair_lock_lock(v16 + 13);
      v17 = [(os_unfair_lock_s *)v16 createRequestNewContentMessageForDaemon:v5];
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v10;
      }

      v9[v14] = v18;
      os_unfair_lock_unlock(v16 + 13);
      v15 |= v18 != v10;
      ++v14;
    }

    while (Count != v14);
    if (v15)
    {
      v21 = xpc_array_create(v9, Count);
      v19 = [(CFPrefsSearchListSource *)selfCopy createMultiMessageWithContainedMessages:v21];
      xpc_release(v21);
      do
      {
        if (*v13 != v10)
        {
          xpc_release(*v13);
        }

        ++v13;
        --Count;
      }

      while (Count);
    }

    else
    {
      v19 = 0;
    }
  }

  xpc_release(v10);
  return v19;
}

void __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[6] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_2;
  v5[3] = &unk_1E6DCFF38;
  v4 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v4;
  [(_CFXPreferences *)v3 withConnectionForRole:a3 andUserIdentifier:0 performBlock:v5];
}

void __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_2(uint64_t a1, xpc_connection_t connection)
{
  if (connection)
  {
    v4 = xpc_connection_send_message_with_reply_sync(connection, *(a1 + 32));
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 32), v4, connection);
    }

    xpc_release(v4);
  }
}

void __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_4;
  v1[3] = &unk_1E6DD09D8;
  v3 = *(a1 + 48);
  v2 = *(a1 + 32);
  dispatch_apply(2uLL, 0, v1);
}

uint64_t __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = 40;
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v2 = 32;
    v3 = 2;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + v2), v3);
}

uint64_t __80__CFPrefsSearchListSource_alreadylocked_generationCountFromListOfSources_count___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  return [*(a1 + 32) handleReply:a3 toRequestNewDataMessage:a2 onConnection:a4 retryCount:0 error:&v5];
}

- (void)handleChangeNotificationForDomainIdentifier:(__CFString *)identifier isRemote:(BOOL)remote
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_sourceList)
  {
    remoteCopy = remote;
    if (CFEqual(identifier, @"Volatile"))
    {

      [(CFPrefsSearchListSource *)self generationCount];
    }

    else if (!remoteCopy || (identifier = self->_identifier, identifier == identifier) || CFEqual(identifier, identifier))
    {
      sourceList = self->_sourceList;
      if (sourceList)
      {
        Count = CFArrayGetCount(sourceList);
        v12 = MEMORY[0x1EEE9AC00](Count, v10, v11);
        v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
        v15 = &v18[-v14];
        if (v12 >= 1)
        {
          v23.location = 0;
          v23.length = Count;
          CFArrayGetValues(self->_sourceList, v23, &v18[-v14]);
        }
      }

      else
      {
        Count = 0;
        v15 = &v20;
      }

      v19 = 0;
      v16 = generationCountFromListOfSources(v15, Count, &v19);
      if ((v19 & 1) != 0 || !remoteCopy && (v17 = atomic_load(&self->super._generationCount), v16 != v17))
      {
        [(CFPrefsSearchListSource *)self generationCount];
      }
    }
  }
}

- (void)deferredNotifyCausedByLocalWriteOfChangesToKey:(__CFString *)key fromValue:(void *)value toValue:(void *)toValue
{
  valueCopy = value;
  keys[1] = *MEMORY[0x1E69E9840];
  values = value;
  keys[0] = key;
  toValueCopy = toValue;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (valueCopy)
  {
    valueCopy = CFDictionaryCreate(&__kCFAllocatorSystemDefault, keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (toValue)
  {
    v8 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, keys, &toValueCopy, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(_CFPrefsPendingKVONotification);
  [(_CFPrefsPendingKVONotification *)v9 setSource:?];
  [(_CFPrefsPendingKVONotification *)v9 setValues:v8];
  [(_CFPrefsPendingKVONotification *)v9 setOldValues:valueCopy];
  if (valueCopy)
  {
    CFRelease(valueCopy);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  Pending = [(CFPrefsSearchListSource *)self _getPendingNotifications];
  CFArrayAppendValue(Pending, v9);
}

- (void)deferredNotifyCausedByLoadingOfChangesFromDictionary:(__CFDictionary *)dictionary toDictionary:(__CFDictionary *)Copy
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if (dictionary)
  {
    CFRetain(dictionary);
  }

  if (Copy)
  {
    Copy = CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, Copy);
  }

  value = objc_alloc_init(_CFPrefsPendingKVONotification);
  [(_CFPrefsPendingKVONotification *)value setSource:?];
  [(_CFPrefsPendingKVONotification *)value setValues:?];
  [(_CFPrefsPendingKVONotification *)value setOldValues:dictionary];
  if (dictionary)
  {
    CFRelease(dictionary);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  Pending = [(CFPrefsSearchListSource *)self _getPendingNotifications];
  CFArrayAppendValue(Pending, value);
}

- (void)removeSource:(uint64_t)source
{
  if (source)
  {
    if (a2)
    {
      v4 = *(source + 80);
      if (v4)
      {
        if (*(source + 120) == 1)
        {
          [CFPrefsSearchListSource removeSource:];
        }

        v6.length = CFArrayGetCount(*(source + 80));
        v6.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v6, a2);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(source + 80), FirstIndexOfValue);
        }

        if (*(source + 104) == a2)
        {
          *(source + 104) = 0;
        }

        if (*(source + 112) == a2)
        {
          *(source + 112) = 0;
        }

        atomic_store(0xFFFFFFFFFFFFFFFFLL, (source + 32));
      }
    }
  }
}

- (void)replaceSource:(const void *)source withSource:
{
  if (result)
  {
    v5 = *(result + 80);
    if (v5)
    {
      if (!a2 || !source || *(result + 120) == 1)
      {
        [CFPrefsSearchListSource replaceSource:withSource:];
      }

      [(CFPrefsSearchListSource *)v5 replaceSource:a2 withSource:result, source];
    }
  }
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  os_unfair_lock_lock(&self->super._lock);
  sourceList = self->_sourceList;
  if (sourceList && (Count = CFArrayGetCount(sourceList), Count >= 1))
  {
    v8 = Count;
    MEMORY[0x1EEE9AC00](Count, v6, v7);
    v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27.location = 0;
    v27.length = v8;
    CFArrayGetValues(self->_sourceList, v27, v10);
    v25.receiver = self;
    v25.super_class = CFPrefsSearchListSource;
    v11 = [(CFPrefsSource *)&v25 description];
    CFStringAppend(Mutable, v11);
    CFStringAppend(Mutable, @"Sources: [\n");
    do
    {
      v12 = _CFAutoreleasePoolPush();
      CFStringAppend(Mutable, @"    ");
      v13 = *v10++;
      CFStringAppend(Mutable, [v13 description]);
      CFStringAppend(Mutable, @"\n");
      _CFAutoreleasePoolPop(v12);
      --v8;
    }

    while (v8);
    CFStringAppend(Mutable, @"]\n");
  }

  else
  {
    CFStringAppend(Mutable, @"Sources: []\n");
  }

  CFStringAppend(Mutable, @"Cloud Keys: [");
  cloudKeys = self->_cloudKeys;
  if (cloudKeys)
  {
    cloudKeys = CFSetGetCount(cloudKeys);
    v17 = cloudKeys;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1EEE9AC00](cloudKeys, v14, v15);
  v20 = (&v24 - v19);
  if (v18 >= 0x200)
  {
    v21 = 512;
  }

  else
  {
    v21 = v18;
  }

  bzero(&v24 - v19, v21);
  if (v17 >= 1)
  {
    CFSetGetValues(self->_cloudKeys, v20);
    do
    {
      v22 = *v20++;
      CFStringAppend(Mutable, v22);
      CFStringAppend(Mutable, @", ");
      --v17;
    }

    while (v17);
  }

  CFStringAppend(Mutable, @"]\n");
  os_unfair_lock_unlock(&self->super._lock);
  return CFAutorelease(Mutable);
}

- (__CFString)copyOSLogDescription
{
  nonLaunchPersonaUID = [(_CFXPreferences *)self->super._containingPreferences nonLaunchPersonaUID];
  ClassName = object_getClassName(self);
  domainIdentifier = [(CFPrefsSearchListSource *)self domainIdentifier];
  container = [(CFPrefsPlistSource *)self->_standardSetTarget container];
  if (nonLaunchPersonaUID == -1)
  {
    return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s<%p> (Domain: %@, Container: %@)", ClassName, self, domainIdentifier, container);
  }

  else
  {
    return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s<%p> (Domain: %@, Container: %@ Non-launch persona: %d)", ClassName, self, domainIdentifier, container, nonLaunchPersonaUID);
  }
}

- (void)setCloudEnabled:(const void *)enabled forKeyPrefix:
{
  if (!self)
  {
    return;
  }

  os_unfair_lock_lock((self + 52));
  Mutable = *(self + 96);
  if (a2)
  {
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      *(self + 96) = Mutable;
    }

    CFArrayAppendValue(Mutable, enabled);
    goto LABEL_6;
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(*(self + 96));
    v8 = OUTLINED_FUNCTION_8_0(Count);
    if (v8 != -1)
    {
      CFArrayRemoveValueAtIndex(*(self + 96), v8);
      if (!CFArrayGetCount(*(self + 96)))
      {
LABEL_6:
        [*(self + 112) setEnabled:a2];
      }
    }
  }

  os_unfair_lock_unlock((self + 52));
}

- (void)setCloudEnabled:(const void *)enabled forKey:
{
  if (!self)
  {
    return;
  }

  os_unfair_lock_lock((self + 52));
  Mutable = *(self + 88);
  if (a2)
  {
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringSetCallBacks);
      *(self + 88) = Mutable;
    }

    CFSetAddValue(Mutable, enabled);
    goto LABEL_6;
  }

  if (Mutable)
  {
    CFSetRemoveValue(Mutable, enabled);
    if (!CFSetGetCount(*(self + 88)))
    {
LABEL_6:
      [*(self + 112) setEnabled:a2];
    }
  }

  os_unfair_lock_unlock((self + 52));
}

- (xpc_object_t)createMultiMessageWithContainedMessages:(uint64_t)messages
{
  if (!messages)
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "CFPreferencesOperation", 5);
  xpc_dictionary_set_value(v3, "CFPreferencesMessages", a2);
  return v3;
}

- (uint64_t)synchronouslySendSystemMessage:(uint64_t)message andUserMessage:(uint64_t)userMessage andDirectMessage:(uint64_t)directMessage replyHandler:
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke;
    v18[3] = &unk_1E6DD09B0;
    v18[4] = result;
    v18[5] = directMessage;
    if (a2 && message)
    {
      v6 = OUTLINED_FUNCTION_5_2();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_3;
      v17[3] = &unk_1E6DD0A00;
      v17[5] = v7;
      v17[6] = v18;
      v17[4] = v8;
      result = CFPREFERENCES_IS_WAITING_FOR_SYSTEM_AND_USER_CFPREFSDS(v6, v17);
    }

    else if (a2)
    {
      v9 = OUTLINED_FUNCTION_5_2();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_5;
      v16[3] = &unk_1E6DD0A28;
      v16[4] = v10;
      v16[5] = v18;
      result = CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(v9, v16);
    }

    else if (message)
    {
      v11 = OUTLINED_FUNCTION_5_2();
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_6;
      v15[3] = &unk_1E6DD0A28;
      v15[4] = v12;
      v15[5] = v18;
      result = CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(v11, v15);
    }

    if (userMessage)
    {
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2_6();
      v14[1] = 3221225472;
      v14[2] = __103__CFPrefsSearchListSource_synchronouslySendSystemMessage_andUserMessage_andDirectMessage_replyHandler___block_invoke_7;
      v14[3] = &unk_1E6DD0A28;
      v14[4] = userMessage;
      v14[5] = v18;
      return CFPREFERENCES_IS_WAITING_FOR_DIRECT_CFPREFSD(v13, v14);
    }
  }

  return result;
}

- (void)alreadylocked_reloadCacheIfStale
{
  if (result)
  {
    [(CFPrefsSearchListSource *)result alreadylocked_getDictionary:?];
  }
}

- (void)addManagedSourceForIdentifier:(uint64_t)identifier user:
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_6_1();
    v5[2] = __62__CFPrefsSearchListSource_addManagedSourceForIdentifier_user___block_invoke;
    v5[3] = &unk_1E6DD0898;
    v5[4] = v1;
    [(_CFXPreferences *)v4 withManagedSourceForIdentifier:v2 user:v3 perform:v5];
  }
}

- (void)addSourceForIdentifier:(uint64_t)identifier user:byHost:container:
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_6_1();
    v7[2] = __72__CFPrefsSearchListSource_addSourceForIdentifier_user_byHost_container___block_invoke;
    v7[3] = &unk_1E6DD08C0;
    v7[4] = v1;
    [(_CFXPreferences *)v6 withSourceForIdentifier:v2 user:v3 byHost:v4 container:v5 cloud:0 perform:v7];
  }
}

- (void)addCloudSourceForIdentifier:(uint64_t)identifier configurationPath:(uint64_t)path storeName:(__CFString *)name container:
{
  v6[7] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = *(self + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __93__CFPrefsSearchListSource_addCloudSourceForIdentifier_configurationPath_storeName_container___block_invoke;
    v6[3] = &unk_1E6DD08E8;
    v6[5] = identifier;
    v6[6] = path;
    v6[4] = self;
    [(_CFXPreferences *)v5 withSourceForIdentifier:a2 user:@"kCFPreferencesCurrentUser" byHost:0 container:name cloud:1 perform:v6];
  }
}

- (void)addSuiteSourceForIdentifier:(uint64_t)identifier user:
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_6_1();
    v5[2] = __60__CFPrefsSearchListSource_addSuiteSourceForIdentifier_user___block_invoke;
    v5[3] = &unk_1E6DD0910;
    v5[4] = v1;
    [(_CFXPreferences *)v4 withSuiteSearchListForIdentifier:v2 user:v3 locked:1 perform:v5];
  }
}

- (void)addNamedVolatileSourceForIdentifier:(uint64_t)identifier
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_6_1();
    v4[2] = __63__CFPrefsSearchListSource_addNamedVolatileSourceForIdentifier___block_invoke;
    v4[3] = &unk_1E6DD08C0;
    v4[4] = v1;
    [(_CFXPreferences *)v3 withNamedVolatileSourceForIdentifier:v2 perform:v4];
  }
}

- (void)alreadylocked_getDictionary:(uint64_t)dictionary
{
  v27[5] = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    return;
  }

  os_unfair_lock_assert_owner((dictionary + 52));
  v6 = *(dictionary + 80);
  if (v6)
  {
    if (!byte_1EA84A4F1)
    {
      goto LABEL_11;
    }

    atomic_store(0xFFFFFFFFFFFFFFFFLL, (dictionary + 32));
    v8 = *(dictionary + 16);
    if (v8)
    {
      CFRelease(v8);
    }

    *(dictionary + 16) = 0;
    v6 = *(dictionary + 80);
    if (v6)
    {
LABEL_11:
      Count = CFArrayGetCount(v6);
      v13 = MEMORY[0x1EEE9AC00](Count, v11, v12);
      v9 = (v26 - v14);
      if (v13 >= 1)
      {
        v29.location = 0;
        v29.length = Count;
        CFArrayGetValues(*(dictionary + 80), v29, v9);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](0, v4, v5);
      v9 = &v25;
      Count = 0;
    }

    v15 = [(CFPrefsSearchListSource *)dictionary alreadylocked_generationCountFromListOfSources:v9 count:Count];
    v16 = atomic_load((dictionary + 32));
    if (v16 == v15)
    {
      v17 = *(dictionary + 16);
      if (!v17)
      {
        *(dictionary + 16) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v17 = *(dictionary + 16);
      }

      v18 = CFRetain(v17);
LABEL_26:
      (*(a2 + 16))(a2, v18);
      CFRelease(v18);
      return;
    }

    v19 = v15;
    v26[1] = v26;
    v20 = OUTLINED_FUNCTION_7_0();
    v21 = OUTLINED_FUNCTION_7_0();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __55__CFPrefsSearchListSource_alreadylocked_getDictionary___block_invoke;
    v27[3] = &unk_1E6DD0A98;
    v27[4] = dictionary;
    if (Count >= 1)
    {
      do
      {
        v22 = *v9++;
        [v22 mergeIntoDictionary:v20 sourceDictionary:v21 cloudKeyEvaluator:v27];
        --Count;
      }

      while (Count);
    }

    v23 = *(dictionary + 16);
    *(dictionary + 16) = v20;
    v24 = *(dictionary + 64);
    *(dictionary + 64) = v21;
    atomic_store(v19, (dictionary + 32));
    v18 = CFRetain(*(dictionary + 16));
    if ([*(dictionary + 24) approximateCount])
    {
      if (!(v23 | *(dictionary + 16)))
      {
LABEL_24:
        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_26;
      }

      [dictionary deferredNotifyCausedByLoadingOfChangesFromDictionary:v23 toDictionary:?];
    }

    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_24;
  }

  v7 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  (*(a2 + 16))(a2, v7);

  CFRelease(v7);
}

- (uint64_t)alreadylocked_useCloudForKey:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 88);
    if (v4 && CFSetContainsValue(v4, value))
    {
      return 1;
    }

    else
    {
      result = *(v3 + 96);
      if (result)
      {
        Count = CFArrayGetCount(result);
        v6 = Count - 1;
        if (Count < 1)
        {
          return 0;
        }

        else
        {
          v7 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 96), v7);
            HasPrefix = CFStringHasPrefix(value, ValueAtIndex);
            v10 = HasPrefix == 0;
            result = HasPrefix != 0;
            v10 = !v10 || v6 == v7++;
          }

          while (!v10);
        }
      }
    }
  }

  return result;
}

- (uint64_t)alreadylocked_hasCloudValueForKey:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 80))
    {
      result = [(CFPrefsSearchListSource *)result alreadylocked_useCloudForKey:a2];
      if (result)
      {
        result = [*(v2 + 112) copyValueForKey:a2];
        if (result)
        {
          CFRelease(result);
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)alreadylocked_hasNonRegisteredValueForKey:(uint64_t)key
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return 0;
  }

  v3 = *(key + 80);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  MEMORY[0x1EEE9AC00](Count, v6, v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20.location = 0;
  v20.length = v8;
  CFArrayGetValues(*(key + 80), v20, v10);
  if (objc_opt_isKindOfClass())
  {
    v11 = -2;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 + v8;
  if (v11 + v8 < 1)
  {
    return 0;
  }

  v13 = [*v10 copyValueForKey:a2];
  if (!v13)
  {
    v15 = 0;
    v16 = v10 + 1;
    v17 = v11 + v8 - 1;
    while (v17 != v15)
    {
      v13 = [v16[v15++] copyValueForKey:a2];
      if (v13)
      {
        v14 = v12 > v15;
        goto LABEL_15;
      }
    }

    return 0;
  }

  v14 = 1;
LABEL_15:
  CFRelease(v13);
  return v14;
}

- (void)alreadylocked_generationCountFromListOfSources:(uint64_t)sources count:
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v14 = 0;
    result = generationCountFromListOfSources(a2, sources, &v14);
    if (v14 == 1)
    {
      v6 = [v5 createRequestNewContentMessageForDaemon:2];
      v7 = [v5 createRequestNewContentMessageForDaemon:1];
      v8 = [v5 createRequestNewContentMessageForDaemon:3];
      OUTLINED_FUNCTION_1_15();
      v10 = 3221225472;
      v11 = __80__CFPrefsSearchListSource_alreadylocked_generationCountFromListOfSources_count___block_invoke;
      v12 = &unk_1E6DD0A50;
      v13 = v5;
      [(CFPrefsSearchListSource *)v5 synchronouslySendSystemMessage:v6 andUserMessage:v7 andDirectMessage:v8 replyHandler:v9];
      if (v6)
      {
        xpc_release(v6);
      }

      if (v7)
      {
        xpc_release(v7);
      }

      if (v8)
      {
        xpc_release(v8);
      }

      return generationCountFromListOfSources(a2, sources, &v14);
    }
  }

  return result;
}

- (CFMutableDictionaryRef)alreadylocked_copyManagedDictionary
{
  if (!self)
  {
    return 0;
  }

  alreadylocked_copyKeyList = [self alreadylocked_copyKeyList];
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Count = CFArrayGetCount(alreadylocked_copyKeyList);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      CFArrayGetValueAtIndex(alreadylocked_copyKeyList, i);
    }
  }

  CFRelease(alreadylocked_copyKeyList);
  return Mutable;
}

- (void)copyCloudConfigurationWithURL:(uint64_t)a1 outConfigFileSource:outStoreName:.cold.2(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 72);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_4(&dword_1830E6000, v1, v2, "Found defaults configuration for %{public}@ at %{public}@", v3, DWORD2(v3));
}

- (void)copyCloudConfigurationWithURL:(uint64_t)a1 outConfigFileSource:outStoreName:.cold.4(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 72);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_4(&dword_1830E6000, v1, v2, "No defaults configuration file found for %{public}@ (looked at %{public}@)", v3, DWORD2(v3));
}

- (void)alreadylocked_copyValueForKey:(uint64_t)a1 .cold.4(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_4(&dword_1830E6000, v1, v2, "found no value for key %{public}@ in %{public}@", v3, DWORD2(v3));
}

- (void)replaceSource:(uint64_t)a3 withSource:(const void *)a4 .cold.2(const __CFArray *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  Count = CFArrayGetCount(a1);
  v7 = OUTLINED_FUNCTION_8_0(Count);
  if (v7 != -1)
  {
    v8 = v7;
    v9 = *(a3 + 80);

    CFArraySetValueAtIndex(v9, v8, a4);
  }
}

@end