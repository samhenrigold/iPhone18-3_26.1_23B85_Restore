@interface CFPDMirroredSource
- (BOOL)enqueueNewKey:(id)key value:(id)value encoding:(int)encoding inBatch:(BOOL)batch fromMessage:(id)message;
- (CFPDMirroredSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name byHost:(BOOL)host managed:(BOOL)managed mirroredKeys:(__CFArray *)keys shmemIndex:(signed __int16)index daemon:(id)daemon;
- (id)acceptMessage:(id)message;
- (id)createDiskWrite;
- (int)cacheFileInfoForWriting:(BOOL)writing euid:(unsigned int)euid egid:(unsigned int)egid didCreate:(BOOL *)create;
- (void)clearCacheForReason:(__CFString *)reason;
- (void)dealloc;
- (void)drainPendingChanges;
- (void)enqueueMirrorSignatureForKey:(xpc_object_t)xdict fromMessage:;
- (void)handleWritingResult:(__CFDictionary *)result;
- (void)lock;
- (void)unlock;
@end

@implementation CFPDMirroredSource

- (void)lock
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v3 lock];
  [(CFPDSource *)self->_mirrorSource lock];
}

- (void)unlock
{
  v4 = *MEMORY[0x1E69E9840];
  [(CFPDSource *)self->_mirrorSource unlock];
  v3.receiver = self;
  v3.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v3 unlock];
}

- (CFPDMirroredSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name byHost:(BOOL)host managed:(BOOL)managed mirroredKeys:(__CFArray *)keys shmemIndex:(signed __int16)index daemon:(id)daemon
{
  managedCopy = managed;
  hostCopy = host;
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CFPDMirroredSource;
  v14 = [(CFPDSource *)&v23 initWithDomain:domain userName:name byHost:host managed:managed shmemIndex:index daemon:daemon];
  if (v14)
  {
    Count = CFArrayGetCount(keys);
    v14->_mirroredKeys = CFSetCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFCopyStringSetCallBacks);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        mirroredKeys = v14->_mirroredKeys;
        ValueAtIndex = CFArrayGetValueAtIndex(keys, i);
        CFSetAddValue(mirroredKeys, ValueAtIndex);
      }
    }

    v19 = CFEqual(domain, @"kCFPreferencesAnyApplication");
    domainCopy = @".GlobalPreferences";
    if (!v19)
    {
      domainCopy = domain;
    }

    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@_m", domainCopy);
    v14->_mirrorSource = [[CFPDSource alloc] initWithDomain:v21 userName:name byHost:hostCopy managed:managedCopy shmemIndex:0 daemon:0];
    CFRelease(v21);
  }

  return v14;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(self->_mirroredKeys);

  v3.receiver = self;
  v3.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v3 dealloc];
}

- (int)cacheFileInfoForWriting:(BOOL)writing euid:(unsigned int)euid egid:(unsigned int)egid didCreate:(BOOL *)create
{
  v7 = *&egid;
  v8 = *&euid;
  writingCopy = writing;
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v14.receiver = self;
  v14.super_class = CFPDMirroredSource;
  v11 = [(CFPDSource *)&v14 cacheFileInfoForWriting:writingCopy euid:v8 egid:v7 didCreate:create];
  if (v11 <= 1)
  {
    v13 = 0;
    [(CFPDSource *)self->_mirrorSource cacheFileInfoForWriting:writingCopy euid:v8 egid:v7 didCreate:&v13];
  }

  return v11;
}

- (void)enqueueMirrorSignatureForKey:(xpc_object_t)xdict fromMessage:
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    memset(buffer, 0, sizeof(buffer));
    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    if (!remote_connection)
    {
      value = xpc_dictionary_get_value(xdict, "connection");
      if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
      {
        [CFPDMirroredSource enqueueMirrorSignatureForKey:fromMessage:];
      }
    }

    pid = xpc_connection_get_pid(remote_connection);
    v9 = pid;
    v10 = "Unknown";
    if (pid != -1 && proc_name(pid, buffer, 0x40u) >= 0)
    {
      v10 = buffer;
    }

    v16.tv_sec = 0;
    *&v16.tv_usec = 0;
    memset(&v15, 0, sizeof(v15));
    gettimeofday(&v16, 0);
    localtime_r(&v16.tv_sec, &v15);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s(%d): %04d-%02d-%02d %02d:%02d:%02d (%s)", v10, v9, (v15.tm_year + 1900), (v15.tm_mon + 1), v15.tm_mday, v15.tm_hour, v15.tm_min, v15.tm_sec, v15.tm_zone);
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s%@", "Sig_", a2);
    v13 = _CFXPCCreateXPCObjectFromCFObject(v12);
    v14 = _CFXPCCreateXPCObjectFromCFObject(v11);
    [*(self + 152) enqueueNewKey:v13 value:v14 encoding:0 inBatch:0 fromMessage:xdict];
    CFRelease(v11);
    CFRelease(v12);
    xpc_release(v13);
    xpc_release(v14);
  }
}

- (BOOL)enqueueNewKey:(id)key value:(id)value encoding:(int)encoding inBatch:(BOOL)batch fromMessage:(id)message
{
  batchCopy = batch;
  v9 = *&encoding;
  v18[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  string_ptr = xpc_string_get_string_ptr(key);
  if (string_ptr)
  {
    v14 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, string_ptr, 0x8000100u);
    if (v14)
    {
      v15 = v14;
      if (CFSetContainsValue(self->_mirroredKeys, v14))
      {
        if (!value || object_getClass(value) == MEMORY[0x1E69E9ED0])
        {
          CFRelease(v15);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __ERROR_WRITE_REJECTED_block_invoke;
          v18[3] = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
          v18[4] = "the key cannot be deleted";
          _extractCFPDBits(message, key, self, v18);
          return 0;
        }

        [(CFPDSource *)self->_mirrorSource enqueueNewKey:key value:value encoding:v9 inBatch:batchCopy fromMessage:message];
        [(CFPDMirroredSource *)self enqueueMirrorSignatureForKey:v15 fromMessage:message];
      }

      CFRelease(v15);
    }
  }

  v17.receiver = self;
  v17.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v17 enqueueNewKey:key value:value encoding:v9 inBatch:batchCopy fromMessage:message];
  return 1;
}

- (void)drainPendingChanges
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  [(CFPDSource *)self->_mirrorSource drainPendingChanges];
  v3.receiver = self;
  v3.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v3 drainPendingChanges];
}

- (id)createDiskWrite
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v7.receiver = self;
  v7.super_class = CFPDMirroredSource;
  result = [(CFPDSource *)&v7 createDiskWrite];
  if (result)
  {
    v4 = result;
    createDiskWrite = [(CFPDSource *)self->_mirrorSource createDiskWrite];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__CFPDMirroredSource_createDiskWrite__block_invoke;
    v6[3] = &unk_1E6DD1D50;
    v6[4] = v4;
    v6[5] = createDiskWrite;
    return [v6 copy];
  }

  return result;
}

uint64_t __37__CFPDMirroredSource_createDiskWrite__block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v2 = (*(v3 + 16))();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)handleWritingResult:(__CFDictionary *)result
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v5.receiver = self;
  v5.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v5 handleWritingResult:result];
  [(CFPDSource *)self->_mirrorSource handleWritingResult:result];
}

- (void)clearCacheForReason:(__CFString *)reason
{
  v6 = *MEMORY[0x1E69E9840];
  [(CFPDSource *)self->_mirrorSource clearCacheForReason:?];
  v5.receiver = self;
  v5.super_class = CFPDMirroredSource;
  [(CFPDSource *)&v5 clearCacheForReason:reason];
}

- (id)acceptMessage:(id)message
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CFPDMirroredSource;
  v5 = [(CFPDSource *)&v10 acceptMessage:?];
  if (xpc_dictionary_get_int64(message, "CFPreferencesOperation") == 1 && !xpc_dictionary_get_value(v5, "CFPreferencesErrorType") && (_CFPrefsDecodeKeyValuePairFromXPCMessage(message, 0, 0, 0) & 1) == 0)
  {
    v6 = [(CFPDSource *)self->_mirrorSource copyPropertyListValidatingPlist:0];
    copyXPCData = [v6 copyXPCData];
    if (copyXPCData)
    {
      v8 = copyXPCData;
      xpc_dictionary_set_value(v5, "CFPreferencesValidationPropertyList", copyXPCData);
      xpc_release(v8);
    }
  }

  [(CFPDSource *)self->_mirrorSource closeFileDescriptors];
  return v5;
}

@end