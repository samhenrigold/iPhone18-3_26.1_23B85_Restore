@interface CFPDCloudSource
- (CFPDCloudSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name storeName:(id)storeName configurationPath:(__CFString *)path containerPath:(__CFString *)containerPath shmemIndex:(signed __int16)index daemon:(id)daemon;
- (id)copyConfigurationFromPath:(uint64_t)path;
- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(uint64_t)plist;
- (uint64_t)enqueueNewKey:(id *)key value:(const __CFURL *)value encoding:(xpc_object_t)xdict inBatch:(int)batch;
- (void)_writeToDisk:(void *)result;
- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)source replacingWithTombstone:(id *)tombstone;
- (void)registerForChangeNotifications;
- (void)synchronizeWithCloud:(id)cloud replyHandler:(id)handler;
@end

@implementation CFPDCloudSource

void __49__CFPDCloudSource_registerForChangeNotifications__block_invoke()
{
  os_unfair_lock_lock(&_MergedGlobals_0);
  CFSetApplyFunction(qword_1ED40BDC8, remoteStoreChanged, 0);

  os_unfair_lock_unlock(&_MergedGlobals_0);
}

- (CFPDCloudSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name storeName:(id)storeName configurationPath:(__CFString *)path containerPath:(__CFString *)containerPath shmemIndex:(signed __int16)index daemon:(id)daemon
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CFPDCloudSource;
  v12 = [(CFPDContainerSource *)&v14 initWithDomain:domain userName:name container:containerPath byHost:0 managed:0 shmemIndex:index daemon:daemon];
  if (v12)
  {
    [CFPDCloudSource initWithDomain:storeName userName:path storeName:v12 configurationPath:containerPath containerPath:? shmemIndex:? daemon:?];
  }

  return v12;
}

- (uint64_t)enqueueNewKey:(id *)key value:(const __CFURL *)value encoding:(xpc_object_t)xdict inBatch:(int)batch
{
  keyCopy = key;
  v24 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return keyCopy & 1;
  }

  if (batch == 1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__CFPDCloudSource_enqueueNewKey_value_encoding_inBatch___block_invoke;
    v19[3] = &unk_1E6D81E70;
    v19[4] = key;
    v19[5] = &v20;
    xpc_dictionary_apply(xdict, v19);
    LOBYTE(keyCopy) = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
    return keyCopy & 1;
  }

  v7 = _CFXPCCreateCFObjectFromXPCObject(value);
  if (object_getClass(xdict) == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(xdict);
    bytes_ptr = xpc_data_get_bytes_ptr(xdict);
    v11 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, bytes_ptr, length, &__kCFAllocatorNull);
    v8 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v11, 0, 0, 0);
    CFRelease(v11);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject(xdict);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v8)
  {
    v12 = CFGetTypeID(v8);
    TypeID = CFNullGetTypeID();
    v14 = keyCopy[19];
    if (v12 == TypeID)
    {
      [v14 setValue:0 forKey:v7];
    }

    else
    {
      [v14 setValue:v8 forKey:v7];
    }

    [keyCopy[19] synchronizeForced:0];
    updateShmemEntry = [keyCopy updateShmemEntry];
    v17 = _CFPrefsDaemonLog(updateShmemEntry, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CFPDCloudSource enqueueNewKey:value value:keyCopy encoding:v17 inBatch:?];
    }

    LOBYTE(keyCopy) = 1;
    goto LABEL_17;
  }

LABEL_11:
  LOBYTE(keyCopy) = 0;
  if (v7)
  {
LABEL_17:
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return keyCopy & 1;
}

uint64_t __56__CFPDCloudSource_enqueueNewKey_value_encoding_inBatch___block_invoke(uint64_t a1, char *string, void *a3)
{
  v5 = xpc_string_create(string);
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [CFPDCloudSource enqueueNewKey:v5 value:a3 encoding:0 inBatch:?];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
  xpc_release(v5);
  return 1;
}

- (void)synchronizeWithCloud:(id)cloud replyHandler:(id)handler
{
  v8[6] = *MEMORY[0x1E69E9840];
  reply = xpc_dictionary_create_reply(cloud);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  cloudSource = self->cloudSource;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CFPDCloudSource_synchronizeWithCloud_replyHandler___block_invoke;
  v8[3] = &unk_1E6D81E98;
  v8[4] = reply;
  v8[5] = handler;
  [(SYDRemotePreferencesSource *)cloudSource synchronizationWithCompletionHandler:v8];
}

void __53__CFPDCloudSource_synchronizeWithCloud_replyHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  xpc_release(v2);
}

- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)source replacingWithTombstone:(id *)tombstone
{
  v5 = *MEMORY[0x1E69E9840];
  *source = 0;
  v4.receiver = self;
  v4.super_class = CFPDCloudSource;
  [CFPDSource processEndOfMessageIntendingToRemoveSource:sel_processEndOfMessageIntendingToRemoveSource_replacingWithTombstone_ replacingWithTombstone:?];
}

- (id)copyConfigurationFromPath:(uint64_t)path
{
  v8 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    return 0;
  }

  bzero(buffer, 0x402uLL);
  if (!CFStringGetFileSystemRepresentation(a2, buffer, 1026))
  {
    return 0;
  }

  v3 = open(buffer, 256);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = v3;
  v5 = [CFPDDataBuffer newBufferFromFile:v3 allowMappingIfSafe:0];
  close(v4);
  return v5;
}

- (void)registerForChangeNotifications
{
  v5 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock(&_MergedGlobals_0);
    v2 = qword_1ED40BDC8;
    if (!qword_1ED40BDC8)
    {
      qword_1ED40BDC8 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      out_token = 0;
      global_queue = dispatch_get_global_queue(-2, 0);
      notify_register_dispatch("SYDRemotePreferencesSourceDidChangeExternally", &out_token, global_queue, &__block_literal_global_9);
      v2 = qword_1ED40BDC8;
    }

    CFSetAddValue(v2, self);
    os_unfair_lock_unlock(&_MergedGlobals_0);
  }
}

- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(uint64_t)plist
{
  if (!plist)
  {
    return 0;
  }

  copyDictionary = [*(plist + 152) copyDictionary];
  if (!copyDictionary)
  {
    return 0;
  }

  v2 = copyDictionary;
  v3 = [CFPDDataBuffer newBufferFromPropertyList:copyDictionary];
  CFRelease(v2);
  return v3;
}

- (void)_writeToDisk:(void *)result
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v2 = result[19];

      return [v2 synchronizeForced:0];
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __32__CFPDCloudSource__writeToDisk___block_invoke;
      v3[3] = &unk_1E6D81EC0;
      v3[4] = result;
      return [result lockedAsync:v3];
    }
  }

  return result;
}

- (void)initWithDomain:(uint64_t)a3 userName:(uint64_t)a4 storeName:configurationPath:containerPath:shmemIndex:daemon:.cold.1(const __CFURL *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v7 = _CFXPCCreateCFObjectFromXPCObject(a1);
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a3 + 160) = v8;
  v9 = [objc_alloc(getSYDRemotePreferencesSourceClass[0]()) initWithApplicationID:@"NSUserDefaults" storeID:v7 shared:1 additionalSource:1 containerPath:a4];
  *(a3 + 152) = v9;
  if (v7)
  {
    CFRelease(v7);
    v9 = *(a3 + 152);
  }

  [v9 registerForSynchronizedDefaults];
  v10 = [(CFPDCloudSource *)a3 copyConfigurationFromPath:a2];
  v11 = [v10 copyPropertyListWithMutability:0 error:0];

  if (v11)
  {
    if (CFGetTypeID(v11) == 18)
    {
      v12 = sel_registerName("setDefaultsConfiguration:");
      if (objc_opt_respondsToSelector())
      {
        [*(a3 + 152) performSelector:v12 withObject:v11];
      }
    }

    CFRelease(v11);
  }

  [(CFPDCloudSource *)a3 registerForChangeNotifications];
}

- (void)enqueueNewKey:(os_log_t)log value:encoding:inBatch:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = 138478083;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "writing key %{private}@ in cloud domain %{public}@", &v4, 0x16u);
}

@end