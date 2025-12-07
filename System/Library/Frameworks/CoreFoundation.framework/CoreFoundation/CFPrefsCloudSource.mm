@interface CFPrefsCloudSource
- (CFPrefsCloudSource)initWithDomain:(__CFString *)domain user:(__CFString *)user byHost:(BOOL)host containerPath:(__CFString *)path containingPreferences:(id)preferences;
- (id)createSynchronizeMessage;
- (int)alreadylocked_updateObservingRemoteChanges;
- (void)dealloc;
- (void)fullCloudSynchronizeWithCompletionHandler:(id)handler;
- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator;
- (void)setConfigurationPath:(__CFString *)path;
- (void)setEnabled:(BOOL)enabled;
- (void)setStoreName:(__CFString *)name;
@end

@implementation CFPrefsCloudSource

- (CFPrefsCloudSource)initWithDomain:(__CFString *)domain user:(__CFString *)user byHost:(BOOL)host containerPath:(__CFString *)path containingPreferences:(id)preferences
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CFPrefsCloudSource;
  result = [(CFPrefsPlistSource *)&v8 initWithDomain:domain user:user byHost:host containerPath:path containingPreferences:preferences];
  if (result)
  {
    atomic_store(&sentinelGeneration, &result->super.super.shmemEntry);
  }

  return result;
}

- (id)createSynchronizeMessage
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CFPrefsCloudSource;
  createSynchronizeMessage = [(CFPrefsPlistSource *)&v7 createSynchronizeMessage];
  v4 = createSynchronizeMessage;
  if (createSynchronizeMessage)
  {
    configPath = self->_configPath;
    if (configPath)
    {
      xpc_dictionary_set_string(createSynchronizeMessage, "CFPreferencesCloudConfig", configPath);
      xpc_dictionary_set_string(v4, "CFPreferencesCloudStoreIdentifier", self->_storeName);
    }
  }

  return v4;
}

- (int)alreadylocked_updateObservingRemoteChanges
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->super._volatile);
  if (v2)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CFPrefsCloudSource;
  return [(CFPrefsPlistSource *)&v4 alreadylocked_updateObservingRemoteChanges];
}

- (void)fullCloudSynchronizeWithCompletionHandler:(id)handler
{
  v8[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  if ([(CFPrefsPlistSource *)self isDirectModeEnabled])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
    if (xpc_user_sessions_enabled())
    {
      if (CFEqual(@"kCFPreferencesAnyUser", [(CFPrefsPlistSource *)self userIdentifier]))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  containingPreferences = self->super.super._containingPreferences;
  userIdentifier = [(CFPrefsPlistSource *)self userIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6DCFF38;
  v8[4] = self;
  v8[5] = handler;
  [(_CFXPreferences *)&containingPreferences->super.isa withConnectionForRole:v5 andUserIdentifier:userIdentifier performBlock:v8];
}

void __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = [(os_unfair_lock_s *)v3 createSynchronizeMessage];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_BOOL(v5, "FullCloudSync", 1);
      os_unfair_lock_unlock((*(a1 + 32) + 52));
      v7 = qos_class_self();
      global_queue = dispatch_get_global_queue(v7, 0);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke_2;
      v11[3] = &unk_1E6DCFF10;
      v11[4] = *(a1 + 40);
      xpc_connection_send_message_with_reply(a2, v6, global_queue, v11);
      xpc_release(v6);
      return;
    }

    v9 = (*(a1 + 32) + 52);
  }

  else
  {
    v9 = v3 + 13;
  }

  os_unfair_lock_unlock(v9);
  v10 = *(*(a1 + 40) + 16);

  v10();
}

void __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  (*(*(a1 + 32) + 16))();

  CFRelease(v2);
}

- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator
{
  context[8] = *MEMORY[0x1E69E9840];
  if (self->_enabled)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    alreadylocked_copyDictionary = [(CFPrefsPlistSource *)self alreadylocked_copyDictionary];
    os_unfair_lock_unlock(&self->super.super._lock);
    if (alreadylocked_copyDictionary)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __77__CFPrefsCloudSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke;
      context[3] = &unk_1E6DCFF60;
      context[6] = dictionary;
      context[7] = sourceDictionary;
      context[4] = self;
      context[5] = evaluator;
      _CFPrefsDictionaryApplyBlock(alreadylocked_copyDictionary, context);
      CFRelease(alreadylocked_copyDictionary);
    }
  }
}

void __77__CFPrefsCloudSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  if ((*(*(a1 + 40) + 16))())
  {
    CFDictionaryAddValue(*(a1 + 48), a2, a3);
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(a1 + 32);

      CFDictionaryAddValue(v6, a2, v7);
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  atomic_store(!enabledCopy, &self->super._volatile);
  self->_enabled = enabledCopy;
  p_shmemEntry = &self->super.super.shmemEntry;
  if (!enabledCopy)
  {
    atomic_store(&sentinelGeneration, p_shmemEntry);
  }

  else
  {
    atomic_store(0, p_shmemEntry);
    v13 = 0;
    v6 = [(CFPrefsPlistSource *)self alreadylocked_createObserverUpdateMessageWithOperation:[(CFPrefsCloudSource *)self alreadylocked_updateObservingRemoteChanges] forRole:&v13];
    if (v6)
    {
      v7 = v6;
      containingPreferences = self->super.super._containingPreferences;
      v9 = v13;
      userIdentifier = [(CFPrefsPlistSource *)self userIdentifier];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__CFPrefsCloudSource_setEnabled___block_invoke;
      v11[3] = &unk_1E6DCFFB0;
      v12 = v13;
      v11[4] = self;
      v11[5] = v7;
      [(_CFXPreferences *)&containingPreferences->super.isa withConnectionForRole:v9 andUserIdentifier:userIdentifier performBlock:v11];
      xpc_release(v7);
    }
  }

  os_unfair_lock_unlock(&self->super.super._lock);
}

void __33__CFPrefsCloudSource_setEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _os_activity_create(&dword_1830E6000, "Updating Key-Value Observers Of Preferences", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__CFPrefsCloudSource_setEnabled___block_invoke_2;
    v8[3] = &unk_1E6DCFF88;
    v7 = *(a1 + 40);
    v8[4] = a2;
    v8[5] = v7;
    if (v5 == 1)
    {
      CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(v6, v8);
    }

    else if (v5 == 3)
    {
      CFPREFERENCES_IS_WAITING_FOR_DIRECT_CFPREFSD(v6, v8);
    }

    else
    {
      CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(v6, v8);
    }

    os_activity_scope_leave(&state);
  }
}

void __33__CFPrefsCloudSource_setEnabled___block_invoke_2(uint64_t a1)
{
  v1 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  if (v1)
  {

    xpc_release(v1);
  }
}

- (void)setConfigurationPath:(__CFString *)path
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  configPath = self->_configPath;
  if (configPath)
  {
    free(configPath);
  }

  bzero(buffer, 0x402uLL);
  if (path && CFStringGetCString(path, buffer, 1026, 0x8000100u))
  {
    self->_configPath = strdup(buffer);
  }

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)setStoreName:(__CFString *)name
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  storeName = self->_storeName;
  if (storeName)
  {
    free(storeName);
  }

  bzero(buffer, 0x402uLL);
  if (name && CFStringGetCString(name, buffer, 1026, 0x8000100u))
  {
    self->_storeName = strdup(buffer);
  }

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  storeName = self->_storeName;
  if (storeName)
  {
    free(storeName);
  }

  configPath = self->_configPath;
  if (configPath)
  {
    free(configPath);
  }

  v5.receiver = self;
  v5.super_class = CFPrefsCloudSource;
  [(CFPrefsPlistSource *)&v5 dealloc];
}

@end