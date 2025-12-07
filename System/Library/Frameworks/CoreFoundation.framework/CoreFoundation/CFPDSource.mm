@interface CFPDSource
- (BOOL)_getUncanonicalizedPath:(_BOOL8)result;
- (BOOL)enqueueNewKey:(id)key value:(id)value encoding:(int)encoding inBatch:(BOOL)batch fromMessage:(id)message;
- (BOOL)getUncanonicalizedPath:(uint64_t)path;
- (BOOL)isEmpty;
- (BOOL)shouldBePurgable;
- (BOOL)validateSandboxForWrite:(const char *)write containerPath:;
- (CFPDSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name byHost:(BOOL)host managed:(BOOL)managed shmemIndex:(signed __int16)index daemon:(id)daemon;
- (CFStringRef)_copyUncanonicalizedPath;
- (__CFString)_canTrustUserPropertyForPOSIXPermissionCheckForAccessType:(__CFString *)result;
- (__CFString)copyUncanonicalizedPath;
- (__CFString)debugDump;
- (const)endHandlingRequest;
- (const)hasObservers;
- (id)acceptMessage:(id)message;
- (id)copyPropertyListValidatingPlist:(BOOL)plist;
- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(BOOL)plist andReturnFileUID:(unsigned int *)d andMode:(unsigned __int16 *)mode;
- (id)createDiskWrite;
- (id)description;
- (int)cacheFileInfoForWriting:(BOOL)writing euid:(unsigned int)euid egid:(unsigned int)egid didCreate:(BOOL *)create;
- (int)validateMessage:(id)message withNewKey:(id)key newValue:(id)value plistIsAvailableToRead:(BOOL)read containerPath:(const char *)path fileUID:(unsigned int)d mode:(unsigned __int16)mode diagnosticMessage:(const char *)self0;
- (uint64_t)approximatePlistSizeIncludingPendingChanges;
- (uint64_t)beginHandlingRequest;
- (uint64_t)closeFileDescriptors;
- (uint64_t)openActualPath;
- (uint64_t)openPropertyListWithoutDrainingPendingChangesOrValidatingPlistAndReturnFileUID:(mode_t *)d andMode:;
- (uint64_t)shouldStayDirtyAfterOpenForWritingFailureWithErrno:(uint64_t)errno;
- (uint64_t)tryEndAccessingPlist;
- (uint64_t)validateAccessToken:(int)token accessType:;
- (uint64_t)validatePOSIXPermissionsForMessage:(uint64_t)message accessType:(int)type fileUID:(int)d mode:(char *)mode fullyValidated:;
- (uint64_t)validateSandboxForRead:(const char *)read containerPath:;
- (uint64_t)validateSandboxPermissionsForMessage:(const char *)message containerPath:(int)path accessType:;
- (void)attachSizeWarningsToReply:(unint64_t)reply forByteCount:;
- (void)beginHandlingRequest;
- (void)cleanUpIfNecessaryAfterCreatingPlist;
- (void)clearCacheForReason:(__CFString *)reason;
- (void)clearPlist;
- (void)createDiskWrite;
- (void)dealloc;
- (void)drainPendingChanges;
- (void)finishedNonRequestWriteWithResult:(__CFDictionary *)result;
- (void)handleAvoidCache;
- (void)handleDeviceUnlock;
- (void)handleEUIDorEGIDMismatch;
- (void)handleNeverCache;
- (void)handleNoPlistFound;
- (void)handleSynchronous;
- (void)handleWritingResult:(__CFDictionary *)result;
- (void)lockedAsync:(id)async;
- (void)lockedSync:(id)sync;
- (void)markNeedsToReloadFromDiskDueToFailedWrite;
- (void)observingConnectionsLockedSync:(uint64_t)sync;
- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)source replacingWithTombstone:(id *)tombstone;
- (void)respondToFileWrittenToBehindOurBack;
- (void)setDirty:(BOOL)dirty;
- (void)setObserved:(void *)observed bySenderOfMessage:;
- (void)setPlist:(int)plist owner:(unsigned int)owner mode:;
- (void)setUncanonicalizedPathCached:(BOOL)cached;
- (void)stopNotifyingObserver:(uint64_t)observer;
- (void)syncWriteToDisk;
- (void)syncWriteToDiskAndFlushCacheForReason:(__CFString *)reason;
@end

@implementation CFPDSource

- (uint64_t)tryEndAccessingPlist
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    if (result)
    {
      result = [result purgable];
      if ((result & 1) == 0)
      {
        result = [(CFPDSource *)v1 shouldBePurgable];
        if (result)
        {
          v2 = *(v1 + 16);

          return [v2 endAccessing];
        }
      }
    }
  }

  return result;
}

- (void)drainPendingChanges
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)clearPlist
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 108));

    *(self + 16) = 0;
    *(self + 112) = 0;
    *(self + 142) &= ~0x80u;
    *(self + 143) &= ~1u;
  }
}

CFDictionaryRef __29__CFPDSource_createDiskWrite__block_invoke(uint64_t a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v2 = _CFPrefsWritePlistToFDThenClose(*(a1 + 32), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 88), *(a1 + 90), *(a1 + 84), *(a1 + 56), *(a1 + 64));
  if (v2 == 47837)
  {
    __29__CFPDSource_createDiskWrite__block_invoke_cold_1(a1);
  }

  os_unfair_lock_unlock((*(a1 + 40) + 104));

  v3 = *(a1 + 84);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  free(*(a1 + 56));
  free(*(a1 + 64));

  if (!v2)
  {
    return 0;
  }

  values[0] = v2;
  return CFDictionaryCreate(&__kCFAllocatorSystemDefault, (a1 + 40), values, 1, 0, 0);
}

- (id)createDiskWrite
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CFPDDataBuffer *)self->_plist purgable])
  {
    [CFPDSource createDiskWrite];
  }

  [(CFPDSource *)self drainPendingChanges];
  os_unfair_lock_lock(&self->_writeLock);
  if ((*(self + 142) & 2) == 0 || !self->_plist || self->_parentFD == -1 || (actualPath = self->_actualPath) == 0)
  {
    os_unfair_lock_unlock(&self->_writeLock);
    return 0;
  }

  v4 = strlen(self->_actualPath);
  v5 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, actualPath, v4, 0);
  lastEuid = self->_lastEuid;
  lastEgid = self->_lastEgid;
  v8 = 384;
  if ((*(self + 142) & 0x10) == 0)
  {
    if (CFEqual(self->_userName, @"kCFPreferencesAnyUser"))
    {
      v8 = 420;
    }

    else
    {
      v8 = 384;
    }
  }

  v9 = _CFPrefsTemporaryFDToWriteTo(v5, lastEuid, lastEgid);
  CFRelease(v5);
  if (v9 < 0)
  {
    [CFPDSource createDiskWrite];
    return 0;
  }

  memcpy(__dst, "CFPrefs domain writing: ", sizeof(__dst));
  if (!CFStringGetCString(self->_domain, &__dst[24], 488, 0x8000100u))
  {
    __strncat_chk();
  }

  v10 = os_transaction_create();
  v11 = self->_plist;
  v12 = (*(self + 142) >> 6) & 1;
  parentFD = self->_parentFD;
  v19 = v10;
  v14 = lastEgid;
  if (parentFD == -2)
  {
    v15 = -2;
  }

  else
  {
    v15 = dup(parentFD);
  }

  v17 = strdup(self->_fileName);
  v18 = strdup(self->_actualPath);
  [(CFPDSource *)self setDirty:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __29__CFPDSource_createDiskWrite__block_invoke;
  v20[3] = &unk_1E6DD19E8;
  v21 = v9;
  v22 = lastEuid;
  v25 = v8;
  v26 = v12;
  v23 = v14;
  v24 = v15;
  v20[7] = v17;
  v20[8] = v18;
  v20[4] = v11;
  v20[5] = self;
  v20[6] = v19;
  return [v20 copy];
}

- (__CFString)copyUncanonicalizedPath
{
  os_unfair_lock_lock(&self->_uncanonicalizedPathCacheLock);
  uncanonicalizedPathCache = self->_uncanonicalizedPathCache;
  if (uncanonicalizedPathCache)
  {
    v4 = CFRetain(uncanonicalizedPathCache);
    os_unfair_lock_unlock(&self->_uncanonicalizedPathCacheLock);
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_uncanonicalizedPathCacheLock);
  }

  return [(CFPDSource *)self _copyUncanonicalizedPath];
}

- (CFStringRef)_copyUncanonicalizedPath
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    bzero(cStr, 0x402uLL);
    if ([CFPDSource _getUncanonicalizedPath:v1])
    {
      v2 = CFStringFileSystemEncoding();
      return CFStringCreateWithCString(&__kCFAllocatorSystemDefault, cStr, v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)beginHandlingRequest
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_17();
  v3 = v0;
  _os_log_debug_impl(&dword_1830E6000, v1, OS_LOG_TYPE_DEBUG, "Data for { %@, %@ } was purged due to memory pressure", v2, 0x16u);
}

- (uint64_t)beginHandlingRequest
{
  *a2 = self | 1;
  if ([*(a3 + 16) purgable])
  {
    v4 = ([*(a3 + 16) beginAccessing] << 31) >> 31;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

- (uint64_t)approximatePlistSizeIncludingPendingChanges
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 32);
  v3 = *(self + 16);
  if (v3)
  {
    v2 += [v3 length];
  }

  else
  {
    v4 = *(self + 128);
    if (v4 != -1)
    {
      bzero(&v8, 0x90uLL);
      v5 = fstatat(v4, *(self + 64), &v8, 0);
      st_size = v8.st_size;
      if (v5)
      {
        st_size = 0;
      }

      v2 += st_size;
    }
  }

  return v2;
}

- (const)hasObservers
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 25);
    result = *&v1[18]._os_unfair_lock_opaque;
    if (result)
    {
      return (CFSetGetCount(result) > 0);
    }
  }

  return result;
}

- (uint64_t)closeFileDescriptors
{
  if (result)
  {
    v1 = result;
    if ((*(result + 142) & 2) == 0)
    {
      v2 = *(result + 128);
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }

      *(v1 + 128) = -1;
      free(*(v1 + 64));
      *(v1 + 64) = 0;
    }

    result = *(v1 + 132);
    if ((result & 0x80000000) == 0)
    {
      result = close(result);
    }

    *(v1 + 132) = -1;
  }

  return result;
}

- (BOOL)isEmpty
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 && xpc_array_get_count(v2) || [*(v1 + 16) length])
    {
      return 0;
    }

    else
    {
      v3 = *(v1 + 128);
      if (v3 == -1)
      {
        return 1;
      }

      else
      {
        bzero(&v5, 0x90uLL);
        return fstatat(v3, *(v1 + 64), &v5, 0) || v5.st_size < 1;
      }
    }
  }

  return result;
}

- (const)endHandlingRequest
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 27);
    if ((v1[35]._os_unfair_lock_opaque & 0x10000) == 0)
    {
      [CFPDSource endHandlingRequest];
    }

    BYTE2(v1[35]._os_unfair_lock_opaque) &= ~1u;

    return [(CFPDSource *)v1 tryEndAccessingPlist];
  }

  return result;
}

- (BOOL)shouldBePurgable
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner((result + 108));
    if (*(v1 + 142) & 2) != 0 || (*(v1 + 142))
    {
      return 0;
    }

    else
    {
      result = os_unfair_lock_trylock((v1 + 104));
      if (result)
      {
        os_unfair_lock_unlock((v1 + 104));
        return 1;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  observingConnections = self->_observingConnections;
  if (observingConnections)
  {
    CFRelease(observingConnections);
  }

  pendingChangesQueue = self->_pendingChangesQueue;
  if (pendingChangesQueue)
  {
    xpc_release(pendingChangesQueue);
  }

  free(self->_actualPath);
  free(self->_fileName);
  parentFD = self->_parentFD;
  if ((parentFD & 0x80000000) == 0)
  {
    close(parentFD);
  }

  v6.receiver = self;
  v6.super_class = CFPDSource;
  [(CFPDSource *)&v6 dealloc];
}

- (uint64_t)openActualPath
{
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 132);
  if (v2 == -1)
  {
    v4 = OUTLINED_FUNCTION_15_0();
    if (v5 || (v6 = *(self + 64)) == 0)
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    else
    {
      v3 = openat(v4, v6, 0);
      if (v3 != -1 && _canDup())
      {
        *(self + 132) = dup(v3);
      }
    }
  }

  else
  {
    v3 = dup(v2);
    lseek(*(self + 132), 0, 0);
  }

  return v3;
}

- (void)syncWriteToDisk
{
  createDiskWrite = [(CFPDSource *)self createDiskWrite];
  if (createDiskWrite)
  {
    v5 = createDiskWrite;
    v4 = createDiskWrite[2]();
    [(CFPDSource *)self handleWritingResult:v4];
    createDiskWrite = v5;
    if (v4)
    {
      CFRelease(v4);
      createDiskWrite = v5;
    }
  }
}

- (int)cacheFileInfoForWriting:(BOOL)writing euid:(unsigned int)euid egid:(unsigned int)egid didCreate:(BOOL *)create
{
  v6 = MEMORY[0x1EEE9AC00](self, a2, writing);
  v8 = v7;
  v10 = v9;
  v11 = v6;
  v80 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(v6 + 27);
  free(*(v11 + 56));
  *(v11 + 56) = 0;
  *(v11 + 143) &= ~2u;
  free(*(v11 + 64));
  *(v11 + 64) = 0;
  v12 = *(v11 + 132);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

  *(v11 + 132) = -1;
  v13 = *(v11 + 128);
  if ((v13 & 0x80000000) == 0)
  {
    close(v13);
  }

  *(v11 + 128) = -1;
  bzero(__s2, 0x402uLL);
  v14 = [CFPDSource getUncanonicalizedPath:v11];
  if (!v14)
  {
    v22 = _CFPrefsDaemonLog(v14, v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
    }

    return 7;
  }

  v68 = -1;
  bzero(__s1, 0x402uLL);
  bzero(&v76, 0x402uLL);
  if (v10)
  {
    v18 = atomic_load(&dword_1EA84A4FC);
    if (v18 == 3)
    {
      v19 = _CFPrefsDaemonLog(v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [CFPDSource cacheFileInfoForWriting:v19 euid:? egid:? didCreate:?];
      }

      v20 = 0;
      v21 = 0;
      *__error() = 28;
      goto LABEL_70;
    }
  }

  IsCFPrefsD = _CFPrefsCurrentProcessIsCFPrefsD();
  if (byte_1EA84A4F6)
  {
    v24 = 1;
  }

  else
  {
    v24 = IsCFPrefsD;
  }

  if (v24 == 1)
  {
    if (dirname_r(__s2, &v76))
    {
      if (basename_r(__s2, __s1))
      {
        v27 = open(&v76, 1074790400);
        v68 = v27;
        if (v27 != -1)
        {
          goto LABEL_25;
        }

        v28 = __error();
        v29 = *v28;
        v31 = _CFPrefsDaemonLog(v28, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }

        *__error() = v29;
      }

      else
      {
        v35 = _CFPrefsDaemonLog(0, v26);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }
      }
    }

    else
    {
      v34 = _CFPrefsDaemonLog(0, v25);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
      }
    }
  }

  else
  {
    v68 = -2;
    __strlcpy_chk();
  }

  v27 = v68;
  if (v68 == -1)
  {
LABEL_32:
    v21 = 0;
    v32 = -1;
    goto LABEL_39;
  }

LABEL_25:
  v32 = openat(v27, __s1, 0);
  v21 = 0;
  if (v32 != -1 || !v10)
  {
    goto LABEL_39;
  }

  if (*__error() != 2)
  {
    goto LABEL_32;
  }

  if ((*(v11 + 142) & 0x10) != 0)
  {
    v33 = 384;
  }

  else if (CFEqual(*(v11 + 40), @"kCFPreferencesAnyUser"))
  {
    v33 = 420;
  }

  else
  {
    v33 = 384;
  }

  v32 = openat(v68, __s1, 512, v33);
  v21 = 1;
LABEL_39:
  if (v32 < 0)
  {
    v36 = v10;
  }

  else
  {
    v36 = 0;
  }

  if (v36 != 1)
  {
    goto LABEL_65;
  }

  v37 = __error();
  if (*v37 != 2)
  {
    v37 = __error();
    if (*v37 != 20)
    {
      goto LABEL_69;
    }
  }

  if (v76 == 0x7972617262694C2FLL && v77[0] == 0x657265666572502FLL && *(v77 + 5) == 0x7365636E657265)
  {
    if (!_CFPrefsCreatePreferencesDirectory(&v76, 493, 0, 80, &v68))
    {
      goto LABEL_69;
    }

    v45 = v68;
    if ((*(v11 + 142) & 0x10) != 0)
    {
      v46 = 384;
    }

    else if (CFEqual(*(v11 + 40), @"kCFPreferencesAnyUser"))
    {
      v46 = 420;
    }

    else
    {
      v46 = 384;
    }

    v32 = openat(v45, __s1, 512, v46);
    v21 = 1;
LABEL_65:
    if ((v32 & 0x80000000) == 0)
    {
      bzero(buf, 0x402uLL);
      if (fcntl(v32, 50, buf) == -1)
      {
        if ((v68 & 0x80000000) == 0)
        {
          close(v68);
        }

        v54 = close(v32);
        v56 = _CFPrefsDaemonLog(v54, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }
      }

      else
      {
        *(v11 + 128) = v68;
        *(v11 + 64) = strdup(__s1);
        *(v11 + 56) = strdup(buf);
        if (_canDup())
        {
          *(v11 + 132) = v32;
        }

        else
        {
          close(v32);
        }

        if (!strcmp(buf, __s2))
        {
          v60 = *(v11 + 143) & 0xFD;
        }

        else
        {
          memset(&out_token, 0, sizeof(out_token));
          v57 = lstat(__s2, &out_token);
          if ((out_token.st_mode & 0xF000) == 0xA000 && v57 == 0)
          {
            v59 = 2;
          }

          else
          {
            v59 = 0;
          }

          v60 = v59 | *(v11 + 143) & 0xFD;
        }

        *(v11 + 143) = v60;
        if (((v36 | v10 ^ 1) & 1) != 0 || (v61 = sandbox_passthrough_access(), !v61))
        {
          v20 = 0;
          if (!v21)
          {
            return v20;
          }

          goto LABEL_102;
        }

        v63 = _CFPrefsDaemonLog(v61, v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }
      }

      v20 = 7;
      if (!v21)
      {
        return v20;
      }

LABEL_102:
      *v8 = 1;
      return v20;
    }

LABEL_69:
    v20 = 0;
LABEL_70:
    v44 = 1;
    goto LABEL_71;
  }

  v41 = _CFPrefsDaemonLog(v37, v38);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    if (v21)
    {
      v42 = "create";
    }

    else
    {
      v42 = "open";
    }

    v43 = *__error();
    *buf = 136446723;
    v71 = v42;
    v72 = 2081;
    v73 = __s2;
    v74 = 1024;
    LODWORD(v75) = v43;
    _os_log_impl(&dword_1830E6000, v41, OS_LOG_TYPE_INFO, "Couldn't %{public}s %{private}s due to %{darwin.errno}d. Asking client to create directory.", buf, 0x1Cu);
  }

  v44 = 0;
  v20 = 5;
LABEL_71:
  if ((v68 & 0x80000000) == 0)
  {
    close(v68);
  }

  if (v44)
  {
    v47 = __error();
    v48 = *v47;
    v50 = _CFPrefsDaemonLog(v47, v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      if (v21)
      {
        v64 = "create";
      }

      else
      {
        v64 = "open";
      }

      v65 = strerror(v48);
      *buf = 136446723;
      v71 = v64;
      v72 = 2081;
      v73 = __s2;
      v74 = 2082;
      v75 = v65;
      _os_log_debug_impl(&dword_1830E6000, v50, OS_LOG_TYPE_DEBUG, "Couldn't %{public}s %{private}s due to %{public}s", buf, 0x20u);
    }

    if (v48 == 1 && (cacheFileInfoForWriting_euid_egid_didCreate__deviceEverUnlocked & 1) == 0 && (*(v11 + 142) & 0x20) == 0)
    {
      *(v11 + 142) |= 0x20u;
      out_token.st_dev = 0;
      objc_initWeak(buf, v11);
      v51 = qos_class_main();
      global_queue = dispatch_get_global_queue(v51, 2uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __58__CFPDSource_cacheFileInfoForWriting_euid_egid_didCreate___block_invoke;
      handler[3] = &unk_1E6DD19C0;
      objc_copyWeak(&v67, buf);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token.st_dev, global_queue, handler);
      objc_destroyWeak(&v67);
      objc_destroyWeak(buf);
    }

    return 7;
  }

  return v20;
}

- (void)setUncanonicalizedPathCached:(BOOL)cached
{
  cachedCopy = cached;
  os_unfair_lock_lock(&self->_uncanonicalizedPathCacheLock);
  uncanonicalizedPathCache = self->_uncanonicalizedPathCache;
  if (cachedCopy)
  {
    if (uncanonicalizedPathCache)
    {
      goto LABEL_7;
    }

    _copyUncanonicalizedPath = [(CFPDSource *)self _copyUncanonicalizedPath];
  }

  else
  {
    if (!uncanonicalizedPathCache)
    {
      goto LABEL_7;
    }

    CFRelease(uncanonicalizedPathCache);
    _copyUncanonicalizedPath = 0;
  }

  self->_uncanonicalizedPathCache = _copyUncanonicalizedPath;
LABEL_7:

  os_unfair_lock_unlock(&self->_uncanonicalizedPathCacheLock);
}

- (CFPDSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name byHost:(BOOL)host managed:(BOOL)managed shmemIndex:(signed __int16)index daemon:(id)daemon
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CFPDSource;
  v14 = [(CFPDSource *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_cfprefsd = daemon;
    *&v14->_uncanonicalizedPathCacheLock._os_unfair_lock_opaque = 0;
    *&v14->_writeLock._os_unfair_lock_opaque = 0;
    *(v14 + 142) &= ~2u;
    v14->_byHost = host;
    v14->_domain = _internString(domain);
    v15->_userName = _internString(name);
    v15->_managed = managed;
    v15->_generationShmemIndex = index;
    *&v15->_parentFD = -1;
  }

  return v15;
}

- (void)respondToFileWrittenToBehindOurBack
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__CFPDSource_respondToFileWrittenToBehindOurBack__block_invoke;
  v2[3] = &unk_1E6D81EC0;
  v2[4] = self;
  [(CFPDSource *)self lockedSync:v2];
}

uint64_t __49__CFPDSource_respondToFileWrittenToBehindOurBack__block_invoke(uint64_t a1)
{
  [*(a1 + 32) syncWriteToDiskAndFlushCacheForReason:@"client invalidated domain"];
  [*(a1 + 32) updateShmemEntry];
  v2 = *(a1 + 32);

  return [v2 asyncNotifyObserversOfWriteFromConnection:0 message:0];
}

- (id)description
{
  debugDump = [(CFPDSource *)self debugDump];

  return debugDump;
}

- (void)setDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  os_unfair_lock_assert_owner(&self->_lock);
  if (dirtyCopy)
  {
    [(CFPDSource *)self updateShmemEntry];
  }

  v5 = *(self + 142);
  if (((((v5 & 2) == 0) ^ dirtyCopy) & 1) == 0)
  {
    if (dirtyCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 142) = v5 & 0xFD | v6;
    if (dirtyCopy)
    {
      [CFPDSource setDirty:?];
    }

    else
    {

      self->_dirtyTransaction = 0;
    }
  }
}

- (void)handleWritingResult:(__CFDictionary *)result
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!result)
  {
LABEL_4:
    if ((*(self + 142) & 2) == 0)
    {
      cachedPlistFD = self->_cachedPlistFD;
      if ((cachedPlistFD & 0x80000000) == 0)
      {
        close(cachedPlistFD);
      }

      self->_cachedPlistFD = -1;
      parentFD = self->_parentFD;
      if ((parentFD & 0x80000000) == 0)
      {
        close(parentFD);
      }

      self->_parentFD = -1;
      free(self->_fileName);
      self->_fileName = 0;
    }

    return;
  }

  Value = CFDictionaryGetValue(result, self);
  if (Value != 28)
  {
    if (Value)
    {
      return;
    }

    goto LABEL_4;
  }

  v9 = _CFPrefsDaemonLog(28, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    userName = self->_userName;
    domain = self->_domain;
    v12 = 138412546;
    v13 = domain;
    v14 = 2112;
    v15 = userName;
    _os_log_impl(&dword_1830E6000, v9, OS_LOG_TYPE_INFO, "Re-marking { %@, %@ } as dirty because previous write failed with ENOSPC", &v12, 0x16u);
  }

  [(CFPDSource *)self setDirty:1];
}

- (void)setPlist:(int)plist owner:(unsigned int)owner mode:
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 108));
    if ([*(self + 16) purgable])
    {
      [CFPDSource setPlist:owner:mode:];
    }

    v8 = *(self + 16);
    *(self + 16) = a2;
    if (v8)
    {
    }

    *(self + 112) = plist;
    *(self + 142) = (owner >> 1) & 0x80 | *(self + 142) & 0x7F;
    *(self + 143) = *(self + 143) & 0xFE | ((owner & 4) != 0);
  }
}

- (void)syncWriteToDiskAndFlushCacheForReason:(__CFString *)reason
{
  [(CFPDSource *)self syncWriteToDisk];

  [(CFPDSource *)self clearCacheForReason:reason];
}

uint64_t __55__CFPDSource_markNeedsToReloadFromDiskDueToFailedWrite__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearCacheForReason:@"previous error"];
  v2 = *(a1 + 32);

  return [v2 updateShmemEntry];
}

uint64_t __32__CFPDSource_handleDeviceUnlock__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = v4[5];
    v5 = v4[6];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = [v4 container];
    _os_log_impl(&dword_1830E6000, v3, OS_LOG_TYPE_INFO, "Responding to device unlock to refresh preferences reads previously denied by data protection { %@, %@, %@ }", &v8, 0x20u);
  }

  *(*(a1 + 32) + 142) &= ~0x20u;
  [*(a1 + 32) syncWriteToDiskAndFlushCacheForReason:@"device was unlocked"];
  [*(a1 + 32) updateShmemEntry];
  return [*(a1 + 32) asyncNotifyObserversOfWriteFromConnection:0 message:0];
}

- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(BOOL)plist andReturnFileUID:(unsigned int *)d andMode:(unsigned __int16 *)mode
{
  plistCopy = plist;
  v53 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CFPDDataBuffer *)self->_plist purgable])
  {
    [CFPDSource copyPropertyListWithoutDrainingPendingChangesValidatingPlist:andReturnFileUID:andMode:];
  }

  plist = self->_plist;
  if (plist)
  {
    v10 = !plistCopy;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!plist)
    {
      goto LABEL_22;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke;
    v47[3] = &unk_1E6D81EC0;
    v47[4] = self;
    [(CFPDDataBuffer *)plist quicklyValidatePlistAndOnFailureInvokeBlock:v47];
  }

  else
  {
    validatePlist = [(CFPDDataBuffer *)plist validatePlist];
    v12 = validatePlist;
    v14 = _CFPrefsDaemonLog(validatePlist, v13);
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        userName = self->_userName;
        domain = self->_domain;
        buf.st_dev = 138412546;
        *&buf.st_mode = domain;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = userName;
        _os_log_impl(&dword_1830E6000, v15, OS_LOG_TYPE_INFO, "Validation of pre-existing plist succeeded. {%@ %@}", &buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CFPDSource copyPropertyListWithoutDrainingPendingChangesValidatingPlist:andReturnFileUID:andMode:];
      }

      [(CFPDSource *)self clearCacheForReason:@"cached plist is invalid"];
    }
  }

  v18 = self->_plist;
  if (v18)
  {
LABEL_16:
    if (d)
    {
      *d = self->_plistFileOwner;
    }

    if (!mode)
    {
      return v18;
    }

    v19 = *(self + 142) & 0x80;
    v20 = v19 >> 7;
    v21 = 2 * v19;
    if (*(self + 143))
    {
      v22 = ((v20 & 1) << 8) | 4;
    }

    else
    {
      v22 = v21;
    }

    goto LABEL_36;
  }

LABEL_22:
  if (!self->_managed || CFPreferencesIsManaged([(CFPDSource *)self user], self->_managedUsesContainer))
  {
    os_unfair_lock_lock(&self->_writeLock);
    if (self->_parentFD == -1)
    {
      cacheFileInfo = [(CFPDSource *)self cacheFileInfo];
      if (self->_parentFD == -1)
      {
        goto LABEL_26;
      }
    }

    actualPath = self->_actualPath;
    v27 = _CFPrefsDaemonLog(cacheFileInfo, v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *&buf.st_dev = MEMORY[0x1E69E9820];
      buf.st_ino = 3221225472;
      *&buf.st_uid = __DEBUG_CACHE_MISS_block_invoke;
      *&buf.st_rdev = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
      buf.st_atimespec.tv_sec = actualPath;
      _extractCFPDBits(0, 0, self, &buf);
    }

    v28 = *(self + 142);
    if ((v28 & 8) == 0)
    {
      if (!strstr(self->_actualPath, "Preferences/"))
      {
        copyUncanonicalizedPath = [(CFPDSource *)self copyUncanonicalizedPath];
        if (copyUncanonicalizedPath && (v30 = copyUncanonicalizedPath, v54.length = CFStringGetLength(copyUncanonicalizedPath), v54.location = 0, v31 = CFStringFindWithOptions(v30, @"Preferences/", v54, 0, 0), CFRelease(v30), v31))
        {
          v28 = *(self + 142);
        }

        else
        {
          v28 = *(self + 142) | 4;
        }
      }

      *(self + 142) = v28 | 8;
    }

    openActualPath = [(CFPDSource *)self openActualPath];
    if ((openActualPath & 0x80000000) != 0)
    {
LABEL_26:
      os_unfair_lock_unlock(&self->_writeLock);
    }

    else
    {
      v33 = openActualPath;
      v34 = !self->_managed && (*(self + 142) & 4) == 0;
      v18 = [CFPDDataBuffer newBufferFromFile:openActualPath allowMappingIfSafe:v34];
      memset(&buf, 0, sizeof(buf));
      if (v18)
      {
        v35 = fstat(v33, &buf);
        if (v35)
        {
          st_uid = 0;
        }

        else
        {
          st_uid = buf.st_uid;
        }

        if (v35)
        {
          st_mode = 0;
        }

        else
        {
          st_mode = buf.st_mode;
        }

        [(CFPDSource *)self setPlist:v18 owner:st_uid mode:st_mode];

        if (plistCopy)
        {
          validatePlist2 = [(CFPDDataBuffer *)v18 validatePlist];
          v39 = validatePlist2;
          v41 = _CFPrefsDaemonLog(validatePlist2, v40);
          v42 = v41;
          if (v39)
          {
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v44 = self->_userName;
              v43 = self->_domain;
              *v48 = 138412546;
              v49 = v43;
              v50 = 2112;
              v51 = v44;
              _os_log_impl(&dword_1830E6000, v42, OS_LOG_TYPE_INFO, "Validation of plist read from disk succeeded. {%@ %@}", v48, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              [CFPDSource copyPropertyListWithoutDrainingPendingChangesValidatingPlist:andReturnFileUID:andMode:];
            }

            unlinkat(self->_parentFD, self->_fileName, 0);
            [(CFPDSource *)self clearCacheForReason:@"plist on disk is invalid"];
            v18 = 0;
          }
        }

        else
        {
          v45 = self->_plist;
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70;
          v46[3] = &unk_1E6D81EC0;
          v46[4] = self;
          [(CFPDDataBuffer *)v45 quicklyValidatePlistAndOnFailureInvokeBlock:v46];
        }
      }

      else
      {
        [(CFPDSource *)self setPlist:0 owner:0 mode:?];
      }

      close(v33);
      os_unfair_lock_unlock(&self->_writeLock);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    if (d)
    {
      *d = self->_lastEuid;
    }

    if (!mode)
    {
      v18 = 0;
      return v18;
    }

    v22 = 384;
    if ((*(self + 142) & 0x10) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      if (CFEqual(self->_userName, @"kCFPreferencesAnyUser"))
      {
        v22 = 420;
      }

      else
      {
        v22 = 384;
      }
    }

LABEL_36:
    *mode = v22;
    return v18;
  }

  return 0;
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_cold_1();
  }
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70(uint64_t a1, uint64_t a2)
{
  v2 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70_cold_1();
  }
}

- (id)copyPropertyListValidatingPlist:(BOOL)plist
{
  [(CFPDSource *)self drainPendingChanges];
  plist = self->_plist;

  return plist;
}

void __64__CFPDSource_asyncNotifyObserversOfWriteFromConnection_message___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CFPDSource *)*(a1 + 32) hasObservers])
  {
    values[0] = _CFXPCCreateXPCObjectFromCFObject(*(*(a1 + 32) + 48));
    values[1] = _CFXPCCreateXPCObjectFromCFObject(*(*(a1 + 32) + 40));
    values[2] = xpc_BOOL_create(*(*(a1 + 32) + 138));
    values[3] = _CFXPCCreateXPCObjectFromCFObject([*(a1 + 32) container]);
    values[4] = _CFXPCCreateXPCObjectFromCFObject([*(a1 + 32) cloudConfigurationPath]);
    if (*(a1 + 40) && (v2 = *(a1 + 48)) != 0)
    {
      length = 0;
      context = 0u;
      v19 = 0u;
      data = xpc_dictionary_get_data(v2, "CFPreferencesAuditToken", &length);
      if (data && length == 32)
      {
        v4 = data[1];
        context = *data;
        v19 = v4;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(v2))
        {
          value = xpc_dictionary_get_value(v2, "connection");
          if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
          {
            __64__CFPDSource_asyncNotifyObserversOfWriteFromConnection_message___block_invoke_cold_1();
          }
        }

        xpc_connection_get_audit_token();
      }

      v5 = DWORD1(v19);
    }

    else
    {
      v5 = getpid();
    }

    v7 = xpc_int64_create(v5);
    v8 = *(a1 + 32);
    values[5] = v7;
    *&context = v8;
    v9 = xpc_dictionary_create(_CFPrefsNotifyFuncKeys, values, 6uLL);
    v11 = 0;
    v12 = *(a1 + 40);
    *(&context + 1) = v9;
    *&v19 = v12;
    do
    {
      v13 = values[v11];
      if (v13)
      {
        xpc_release(v13);
      }

      ++v11;
    }

    while (v11 != 6);
    v14 = *(a1 + 32);
    v15 = _CFPrefsDaemonLog(v13, v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      _extractCFPDBits(0, 0, v14, &__block_literal_global_389);
    }

    CFSetApplyFunction(*(*(a1 + 32) + 72), notifyFunc, &context);
    xpc_release(*(&context + 1));
  }
}

void __33__CFPDSource_drainPendingChanges__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __33__CFPDSource_drainPendingChanges__block_invoke_cold_1();
  }
}

- (BOOL)enqueueNewKey:(id)key value:(id)value encoding:(int)encoding inBatch:(BOOL)batch fromMessage:(id)message
{
  applier[6] = *MEMORY[0x1E69E9840];
  if (object_getClass(key) != MEMORY[0x1E69E9F10])
  {
    [CFPDSource enqueueNewKey:value:encoding:inBatch:fromMessage:];
  }

  if (encoding == 1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __63__CFPDSource_enqueueNewKey_value_encoding_inBatch_fromMessage___block_invoke;
    applier[3] = &unk_1E6DD1A68;
    applier[4] = self;
    applier[5] = message;
    xpc_dictionary_apply(value, applier);
  }

  else
  {
    pendingChangesQueue = self->_pendingChangesQueue;
    if (!pendingChangesQueue)
    {
      pendingChangesQueue = xpc_array_create(0, 0);
      self->_pendingChangesQueue = pendingChangesQueue;
    }

    count = xpc_array_get_count(pendingChangesQueue);
    v15 = count;
    if (count)
    {
      [CFPDSource enqueueNewKey:value:encoding:inBatch:fromMessage:];
    }

    if (count)
    {
      v16 = 1;
      while (1)
      {
        value = xpc_array_get_value(self->_pendingChangesQueue, v16 - 1);
        if (xpc_equal(key, value))
        {
          break;
        }

        v18 = v16 + 1;
        v16 += 2;
        if (v18 >= v15)
        {
          goto LABEL_11;
        }
      }

      v20 = xpc_array_get_value(self->_pendingChangesQueue, v16);
      v21 = _CFPrefsSizeOfValue(value, 0);
      v22 = v21 - _CFPrefsSizeOfValue(v20, 0);
      v23 = self->_pendingChangesQueue;
      self->_pendingChangesSize += v22;
      xpc_array_set_value(v23, v16, value);
    }

    else
    {
LABEL_11:
      xpc_array_append_value(self->_pendingChangesQueue, key);
      xpc_array_append_value(self->_pendingChangesQueue, value);
      if (object_getClass(value) != MEMORY[0x1E69E9ED0])
      {
        v19 = _CFPrefsSizeOfValue(value, 0);
        self->_pendingChangesSize += _CFPrefsSizeOfValue(key, 0) + v19;
      }
    }
  }

  [(CFPDSource *)self setDirty:1];
  if (!batch && self->_pendingChangesSize > 0x20000)
  {

    self->_pendingChangesSize = 0;
  }

  return 1;
}

uint64_t __63__CFPDSource_enqueueNewKey_value_encoding_inBatch_fromMessage___block_invoke(uint64_t a1, char *string, uint64_t a3)
{
  v5 = xpc_string_create(string);
  [*(a1 + 32) enqueueNewKey:v5 value:a3 encoding:0 inBatch:1 fromMessage:*(a1 + 40)];
  xpc_release(v5);
  return 1;
}

- (__CFString)debugDump
{
  copyUncanonicalizedPath = [(CFPDSource *)self copyUncanonicalizedPath];
  userName = self->_userName;
  domain = self->_domain;
  plist = self->_plist;
  generationShmemIndex = self->_generationShmemIndex;
  v8 = *(self + 142);
  v9 = (v8 >> 1) & 1;
  byHost = self->_byHost;
  v11 = 384;
  if ((v8 & 0x10) == 0)
  {
    if (CFEqual(userName, @"kCFPreferencesAnyUser"))
    {
      v11 = 420;
    }

    else
    {
      v11 = 384;
    }
  }

  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"\n*****************************************************\nDomain: %@\nUser: %@\nPath: %@\nplist data:%@\nshmem index:%d\ndirty:%d\nbyHost:%d\nmode:%o\n", domain, userName, copyUncanonicalizedPath, plist, generationShmemIndex, v9, byHost, v11);
  if (copyUncanonicalizedPath)
  {
    CFRelease(copyUncanonicalizedPath);
  }

  return v12;
}

- (void)lockedAsync:(id)async
{
  block[6] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CFPDSource_lockedAsync___block_invoke;
  block[3] = &unk_1E6DD1A90;
  block[4] = self;
  block[5] = async;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v4 = qos_class_self();
  global_queue = dispatch_get_global_queue(v4, 0);
  dispatch_async(global_queue, v3);
}

uint64_t __26__CFPDSource_lockedAsync___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [(os_unfair_lock *)v1 lock];
  [(CFPDSource *)v1 beginHandlingRequest];
  (*(v2 + 16))(v2);
  [(CFPDSource *)v1 endHandlingRequest];

  return [(os_unfair_lock *)v1 unlock];
}

- (void)lockedSync:(id)sync
{
  [(CFPDSource *)self lock];
  [(CFPDSource *)self beginHandlingRequest];
  (*(sync + 2))(sync);
  [(CFPDSource *)self endHandlingRequest];

  [(CFPDSource *)self unlock];
}

- (BOOL)validateSandboxForWrite:(const char *)write containerPath:
{
  v36 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    os_unfair_lock_assert_owner((result + 108));
    if (*(v5 + 128) == -1)
    {
      return 0;
    }

    else
    {
      remote_connection = xpc_dictionary_get_remote_connection(a2);
      if (!remote_connection)
      {
        value = xpc_dictionary_get_value(a2, "connection");
        if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
        {
          [CFPDSource validateSandboxForWrite:containerPath:];
        }
      }

      length[0] = 0;
      length[1] = length;
      *&v35 = 0x2020000000;
      BYTE8(v35) = 1;
      *&v30 = MEMORY[0x1E69E9820];
      *(&v30 + 1) = 3221225472;
      *&v31 = ___CFPrefsMessageSenderIsSandboxed_block_invoke;
      *(&v31 + 1) = &unk_1E6DD1E80;
      v32 = a2;
      v33 = length;
      withClientContext(remote_connection, &v30);
      v8 = *(length[1] + 24);
      _Block_object_dispose(length, 8);
      if (v8 == 1)
      {
        string = xpc_dictionary_get_string(a2, "CFPreferencesDomain");
        v10 = strlen(write);
        if (v10)
        {
          v11 = strncmp(*(v5 + 56), write, v10) != 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = strchr(string, 47) == 0;
        if ((v11 & !xpc_dictionary_get_BOOL(a2, "CFPreferencesHasFixedUpContainer") & v12) == 1)
        {
          v13 = copySanitizedDomain(string);
          length[0] = 0;
          v30 = 0u;
          v31 = 0u;
          data = xpc_dictionary_get_data(a2, "CFPreferencesAuditToken", length);
          if (data && length[0] == 32)
          {
            v15 = data[1];
            v30 = *data;
            v31 = v15;
          }

          else
          {
            if (!xpc_dictionary_get_remote_connection(a2))
            {
              v18 = xpc_dictionary_get_value(a2, "connection");
              if (!v18 || object_getClass(v18) != MEMORY[0x1E69E9E68])
              {
                [CFPDSource validateSandboxForWrite:containerPath:];
              }
            }

            xpc_connection_get_audit_token();
          }

          v19 = *MEMORY[0x1E69E9BD0];
          *length = v30;
          v35 = v31;
          if (sandbox_check_by_audit_token())
          {
            v20 = *(v5 + 128);
            v22 = *(v5 + 56);
            v21 = *(v5 + 64);
            if ((*(v5 + 142) & 0x10) != 0)
            {
              v23 = 384;
            }

            else if (CFEqual(*(v5 + 40), @"kCFPreferencesAnyUser"))
            {
              v23 = 420;
            }

            else
            {
              v23 = 384;
            }

            *length = v30;
            v35 = v31;
            v29 = checkFileWriteData(length, v22, v20, v21, v23, v19);
            if (v29)
            {
              _CFPrefsSandboxCheckForMessage(a2, "user-preference-write", 6);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v13);
        }

        else
        {
          length[0] = 0;
          v30 = 0u;
          v31 = 0u;
          v16 = xpc_dictionary_get_data(a2, "CFPreferencesAuditToken", length);
          if (v16 && length[0] == 32)
          {
            v17 = v16[1];
            v30 = *v16;
            v31 = v17;
          }

          else
          {
            if (!xpc_dictionary_get_remote_connection(a2))
            {
              v24 = xpc_dictionary_get_value(a2, "connection");
              if (!v24 || object_getClass(v24) != MEMORY[0x1E69E9E68])
              {
                [CFPDSource validateSandboxForWrite:containerPath:];
              }
            }

            xpc_connection_get_audit_token();
          }

          v25 = *(v5 + 128);
          v27 = *(v5 + 56);
          v26 = *(v5 + 64);
          if ((*(v5 + 142) & 0x10) != 0)
          {
            v28 = 384;
          }

          else if (CFEqual(*(v5 + 40), @"kCFPreferencesAnyUser"))
          {
            v28 = 420;
          }

          else
          {
            v28 = 384;
          }

          *length = v30;
          v35 = v31;
          v29 = checkFileWriteData(length, v27, v25, v26, v28, 0);
        }

        return v29 == 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (uint64_t)validateSandboxForRead:(const char *)read containerPath:
{
  v32 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!xdict)
    {
      [CFPDSource validateSandboxForRead:containerPath:];
    }

    v5 = result;
    if (*(result + 56))
    {
LABEL_8:
      remote_connection = xpc_dictionary_get_remote_connection(xdict);
      if (!remote_connection)
      {
        value = xpc_dictionary_get_value(xdict, "connection");
        remote_connection = value;
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          [CFPDSource validateSandboxForRead:containerPath:];
        }
      }

      length[0] = 0;
      length[1] = length;
      *&v31 = 0x2020000000;
      BYTE8(v31) = 1;
      *&v26 = MEMORY[0x1E69E9820];
      *(&v26 + 1) = 3221225472;
      *&v27 = ___CFPrefsMessageSenderIsSandboxed_block_invoke;
      *(&v27 + 1) = &unk_1E6DD1E80;
      v28 = xdict;
      v29 = length;
      withClientContext(remote_connection, &v26);
      v13 = *(length[1] + 24);
      _Block_object_dispose(length, 8);
      if (v13 != 1)
      {
        return 1;
      }

      string = xpc_dictionary_get_string(xdict, "CFPreferencesDomain");
      length[0] = 0;
      v26 = 0u;
      v27 = 0u;
      data = xpc_dictionary_get_data(xdict, "CFPreferencesAuditToken", length);
      if (data && length[0] == 32)
      {
        v16 = data[1];
        v26 = *data;
        v27 = v16;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(xdict))
        {
          v17 = xpc_dictionary_get_value(xdict, "connection");
          if (!v17 || object_getClass(v17) != MEMORY[0x1E69E9E68])
          {
            [CFPDSource validateSandboxForRead:containerPath:];
          }
        }

        xpc_connection_get_audit_token();
      }

      if (*(v5 + 139) == 1)
      {
        if (!xpc_dictionary_get_remote_connection(xdict))
        {
          v18 = xpc_dictionary_get_value(xdict, "connection");
          if (!v18 || object_getClass(v18) != MEMORY[0x1E69E9E68])
          {
            [CFPDSource validateSandboxForRead:containerPath:];
          }
        }

        v19 = xpc_connection_copy_bundle_id();
        v20 = v19;
        if (!v19 || strcmp(v19, string))
        {
          v21 = copySanitizedDomain(string);
          *length = v26;
          v31 = v27;
          v22 = sandbox_check_by_audit_token();
          free(v21);
LABEL_39:
          free(v20);
LABEL_40:
          if (v22)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {
        v23 = strlen(read);
        if (v23)
        {
          v24 = strncmp(*(v5 + 56), read, v23) != 0;
        }

        else
        {
          v24 = 1;
        }

        v25 = strchr(string, 47) == 0;
        if ((v24 & !xpc_dictionary_get_BOOL(xdict, "CFPreferencesHasFixedUpContainer") & v25) != 1)
        {
          *length = v26;
          v31 = v27;
          v22 = sandbox_check_by_audit_token();
          goto LABEL_40;
        }

        v20 = copySanitizedDomain(string);
        *length = v26;
        v31 = v27;
        if (sandbox_check_by_audit_token())
        {
          *length = v26;
          v31 = v27;
          v22 = sandbox_check_by_audit_token();
          if (v22)
          {
            *length = v26;
            v31 = v27;
            sandbox_check_by_audit_token();
          }

          goto LABEL_39;
        }
      }

      v22 = 0;
      goto LABEL_39;
    }

    [result cacheFileInfo];
    v6 = *(v5 + 56);
    v7 = MEMORY[0x1865E4620](xdict);
    v9 = _CFPrefsDaemonLog(v7, v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        [CFPDSource validateSandboxForRead:containerPath:];
      }

      free(v7);
      goto LABEL_8;
    }

    if (v10)
    {
      [CFPDSource validateSandboxForRead:containerPath:];
    }

    free(v7);
    return 9;
  }

  return result;
}

- (uint64_t)validatePOSIXPermissionsForMessage:(uint64_t)message accessType:(int)type fileUID:(int)d mode:(char *)mode fullyValidated:
{
  if (!self)
  {
    return 0;
  }

  messageCopy = message;
  os_unfair_lock_assert_owner(self + 27);
  remote_connection = xpc_dictionary_get_remote_connection(a2);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(a2, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      [CFPDSource validatePOSIXPermissionsForMessage:accessType:fileUID:mode:fullyValidated:];
    }
  }

  euid = xpc_connection_get_euid(remote_connection);
  v15 = cfprefsdEuid();
  if (euid && v15 != euid)
  {
    if (messageCopy == 1 || (euid != type ? (v16 = 4) : (v16 = 256), (v16 & d) == 0))
    {
      if (([CFPDSource validatePOSIXPermissionsForMessage:self accessType:messageCopy fileUID:euid mode:mode fullyValidated:?]& 1) == 0)
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  v17 = byte_1EA84A4F7;
  if (byte_1EA84A4F7)
  {
LABEL_18:
    v20 = xpc_dictionary_dup_fd(a2, "CFPreferencesAccessToken");
    v18 = [(CFPDSource *)self validateAccessToken:v20 accessType:messageCopy];
    if ((v20 & 0x80000000) == 0)
    {
      close(v20);
    }

    v17 = 1;
    goto LABEL_14;
  }

  v18 = 1;
LABEL_14:
  *mode = v17;
  return v18;
}

- (int)validateMessage:(id)message withNewKey:(id)key newValue:(id)value plistIsAvailableToRead:(BOOL)read containerPath:(const char *)path fileUID:(unsigned int)d mode:(unsigned __int16)mode diagnosticMessage:(const char *)self0
{
  readCopy = read;
  v27 = *MEMORY[0x1E69E9840];
  v17 = key != 0;
  if (!eduModeEnabled() || !xpc_dictionary_get_BOOL(message, "AllowWritingSpecialKeysToGlobalPreferences"))
  {
    if (key || readCopy)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (!key)
  {
    return 1;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (xpc_dictionary_get_BOOL(message, "MultiKeySet"))
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __118__CFPDSource_validateMessage_withNewKey_newValue_plistIsAvailableToRead_containerPath_fileUID_mode_diagnosticMessage___block_invoke;
    v22[3] = &unk_1E6D7DAB0;
    v22[4] = &v23;
    xpc_dictionary_apply(value, v22);
    v18 = *(v24 + 24);
  }

  else
  {
    string_ptr = xpc_string_get_string_ptr(key);
    v18 = isSpecialKey(string_ptr);
    *(v24 + 24) = v18;
  }

  _Block_object_dispose(&v23, 8);
  if (v18)
  {
    return 1;
  }

LABEL_11:
  LOBYTE(v23) = 0;
  result = [(CFPDSource *)self validatePOSIXPermissionsForMessage:message accessType:v17 fileUID:d mode:mode fullyValidated:&v23];
  if (v23 == 1)
  {
    if (result == 3)
    {
      v21 = "writing to another user's preferences requires sufficient permissions to write to the file";
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v21 = "accessing another user's preferences requires sufficient permissions to be able to read the file";
    }
  }

  else
  {
    result = [(CFPDSource *)self validateSandboxPermissionsForMessage:message containerPath:path accessType:v17];
    if (path && *path)
    {
      if (result == 3)
      {
        v21 = "setting preferences outside an application's container requires user-preference-write or file-write-data sandbox access";
      }

      else
      {
        if (result != 2)
        {
          return result;
        }

        v21 = "accessing preferences outside an application's container requires user-preference-read or file-read-data sandbox access";
      }
    }

    else if (result == 3)
    {
      v21 = "setting these preferences requires user-preference-write or file-write-data sandbox access";
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v21 = "accessing these preferences requires user-preference-read or file-read-data sandbox access";
    }
  }

  *diagnosticMessage = v21;
  return result;
}

uint64_t __118__CFPDSource_validateMessage_withNewKey_newValue_plistIsAvailableToRead_containerPath_fileUID_mode_diagnosticMessage___block_invoke(uint64_t a1, char *__s2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24) == 1 && isSpecialKey(__s2);
  *(v3 + 24) = v4;
  return *(*(*(a1 + 32) + 8) + 24);
}

- (void)setObserved:(void *)observed bySenderOfMessage:
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_assert_owner(self + 27);
    remote_connection = xpc_dictionary_get_remote_connection(observed);
    if (!remote_connection)
    {
      value = xpc_dictionary_get_value(observed, "connection");
      if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
      {
        [CFPDSource setObserved:bySenderOfMessage:];
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke;
    v10[3] = &unk_1E6DD1AB8;
    v11 = a2;
    v10[4] = self;
    if (withClientContext(remote_connection, v10))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2;
      v8[3] = &unk_1E6DD1AE0;
      v9 = a2;
      v8[4] = self;
      v8[5] = observed;
      v8[6] = remote_connection;
      os_unfair_lock_lock(self + 25);
      (__44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2)(v8);
      os_unfair_lock_unlock(self + 25);
    }
  }
}

void __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a2 + 24);
  if (v4 == 1)
  {
    if (!v5)
    {
      v6 = *byte_1EF0680C8;
      *(a2 + 24) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &v6);
      v5 = *(a2 + 24);
    }

    CFSetAddValue(v5, *(a1 + 32));
  }

  else if (v5)
  {
    CFSetRemoveValue(v5, *(a1 + 32));
    if (!CFSetGetCount(*(a2 + 24)))
    {
      CFRelease(*(a2 + 24));
      *(a2 + 24) = 0;
    }
  }
}

void __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2(uint64_t *Mutable, uint64_t a2)
{
  v2 = Mutable;
  v22 = *MEMORY[0x1E69E9840];
  v3 = Mutable[4];
  v4 = v3[9];
  if (*(Mutable + 56) == 1)
  {
    if (!v4)
    {
      Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      *(v2[4] + 72) = Mutable;
      v3 = v2[4];
    }

    v5 = v2[5];
    v6 = _CFPrefsDaemonLog(Mutable, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      _extractCFPDBits(v5, 0, v3, &__block_literal_global_407);
    }

    v7 = *(v2[4] + 72);
    v8 = v2[6];

    CFSetAddValue(v7, v8);
  }

  else if (v4)
  {
    v9 = Mutable[5];
    length = 0;
    v18 = 0u;
    v19 = 0u;
    data = xpc_dictionary_get_data(v9, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v12 = data[1];
      v18 = *data;
      v19 = v12;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(v9))
      {
        value = xpc_dictionary_get_value(v9, "connection");
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2_cold_1();
        }
      }

      data = xpc_connection_get_audit_token();
    }

    v14 = DWORD1(v19);
    v15 = v2[4];
    v16 = _CFPrefsDaemonLog(data, v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *&v18 = MEMORY[0x1E69E9820];
      *(&v18 + 1) = 3221225472;
      *&v19 = __DEBUG_STOPPED_OBSERVING_block_invoke;
      *(&v19 + 1) = &unk_1E6DD1EA8;
      v20 = v9;
      v21 = v14;
      _extractCFPDBits(v9, 0, v15, &v18);
    }

    [CFPDSource stopNotifyingObserver:?];
  }
}

- (id)acceptMessage:(id)message
{
  v93 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CFPDDataBuffer *)self->_plist purgable])
  {
    [CFPDSource acceptMessage:];
  }

  reply = xpc_dictionary_create_reply(message);
  v7 = reply;
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
    v7 = reply;
  }

  v8 = _CFPrefsDaemonLog(reply, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __DEBUG_REQUEST_block_invoke;
    v90[3] = &unk_1E6DD1ED0;
    v90[4] = self;
    _extractCFPDBits(message, 0, self, v90);
  }

  v80 = 0;
  v81 = 0;
  v79 = 0;
  int64 = xpc_dictionary_get_int64(message, "CFPreferencesOperation");
  v10 = _CFPrefsDecodeKeyValuePairFromXPCMessage(message, &v81, &v80, &v79);
  v78 = 0;
  if (xpc_dictionary_get_BOOL(message, "CFPreferencesAvoidCache"))
  {
    [(CFPDSource *)self syncWriteToDiskAndFlushCacheForReason:@"we're avoiding the cache"];
  }

  if (xpc_dictionary_get_BOOL(message, "CFPreferencesRestrictedReadability"))
  {
    *(self + 142) |= 0x10u;
  }

  if (xpc_dictionary_get_BOOL(message, "CFPreferencesDisableBackups"))
  {
    *(self + 142) |= 0x40u;
  }

  self->_fileProtectionClass = xpc_dictionary_get_int64(message, "CFPreferencesFileProtectionClass");
  if (xpc_dictionary_get_BOOL(message, "kCFPreferencesTestingSimulateSlowFilesystem"))
  {
    byte_1EA84A4F3 = 1;
  }

  atomic_store(xpc_dictionary_get_int64(message, "kCFPreferencesTestingSimulateOutOfDiskSpace"), &dword_1EA84A4FC);
  remote_connection = xpc_dictionary_get_remote_connection(message);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(message, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      [CFPDSource acceptMessage:];
    }
  }

  v90[0] = 0;
  v91 = 0u;
  v92 = 0u;
  data = xpc_dictionary_get_data(message, "CFPreferencesAuditToken", v90);
  if (data && v90[0] == 32)
  {
    v14 = data[1];
    v91 = *data;
    v92 = v14;
  }

  else
  {
    if (!xpc_dictionary_get_remote_connection(message))
    {
      v15 = xpc_dictionary_get_value(message, "connection");
      if (!v15 || object_getClass(v15) != MEMORY[0x1E69E9E68])
      {
        [CFPDSource acceptMessage:];
      }
    }

    xpc_connection_get_audit_token();
  }

  bzero(v90, 0x400uLL);
  v87 = v91;
  v88 = v92;
  sandbox_container_path_for_audit_token();
  if (!v10)
  {
    goto LABEL_39;
  }

  if ((_CFPrefsReadOnly() & 1) == 0)
  {
    if (xpc_dictionary_get_BOOL(message, "CFPreferencesUseCorrectOwner"))
    {
      Length = CFStringGetLength(self->_userName);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v21 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v19, v20);
      v23 = &v71 - v22;
      bzero(&v71 - v22, v21 + 1);
      CFStringGetCString(self->_userName, v23, MaximumSizeForEncoding + 1, 0x8000100u);
      v24 = getpwnam(v23);
      if (v24)
      {
        pw_uid = v24->pw_uid;
        pw_gid = v24->pw_gid;
        goto LABEL_34;
      }

      v26 = _CFPrefsDaemonLog(0, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [CFPDSource acceptMessage:];
      }
    }

    pw_uid = xpc_connection_get_euid(remote_connection);
    pw_gid = xpc_connection_get_egid(remote_connection);
LABEL_34:
    if (pw_uid != self->_lastEuid || pw_gid != self->_lastEgid)
    {
      [(CFPDSource *)self syncWriteToDisk];
    }

    self->_lastEuid = pw_uid;
    self->_lastEgid = pw_gid;
    if (self->_parentFD == -1)
    {
      v16 = [(CFPDSource *)self cacheFileInfoForWriting:1 euid:pw_uid egid:pw_gid didCreate:&v78];
      goto LABEL_40;
    }

LABEL_39:
    v16 = 0;
    goto LABEL_40;
  }

  v16 = 8;
LABEL_40:
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v29 = xpc_dictionary_get_BOOL(message, "ValidatePlist");
  if ((v10 & 1) != 0 || (v34 = v29, !self->_plist) && self->_parentFD == -1 && ([(CFPDSource *)self cacheFileInfo], self->_parentFD == -1))
  {
    v30 = 0;
    v31 = 0;
    v32 = -1;
    if (v16)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (_os_feature_enabled_impl() && CFStringFind(self->_domain, @"com.apple.", 0).location != -1)
  {
    if (acceptMessage__onceToken != -1)
    {
      [CFPDSource acceptMessage:];
    }

    if (acceptMessage___CFMKBDeviceUnlockedSinceBoot && !acceptMessage___CFMKBDeviceUnlockedSinceBoot())
    {
      actualPath = self->_actualPath;
      *&v87 = MEMORY[0x1E69E9820];
      *(&v87 + 1) = 3221225472;
      *&v88 = __ERROR_LOG_PREUNLOCK_ACCESS_block_invoke;
      *(&v88 + 1) = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
      v89 = actualPath;
      _extractCFPDBits(message, 0, self, &v87);
    }
  }

  if (v34 || self->_plist || (v36 = [(CFPDSource *)self openPropertyListWithoutDrainingPendingChangesOrValidatingPlistAndReturnFileUID:&v76 andMode:?], v36 == -1))
  {
    v31 = [(CFPDSource *)self copyPropertyListWithoutDrainingPendingChangesValidatingPlist:v34 andReturnFileUID:&v75 andMode:&v76];
    v32 = -1;
  }

  else
  {
    v32 = v36;
    v31 = 0;
  }

  v30 = v32 != -1 || v31 != 0;
  if (!v16)
  {
LABEL_42:
    LOWORD(v70) = v76;
    v16 = [(CFPDSource *)self validateMessage:message withNewKey:v81 newValue:v80 plistIsAvailableToRead:v30 containerPath:v90 fileUID:v75 mode:v70 diagnosticMessage:&v77];
  }

LABEL_43:
  if (v16 > 4)
  {
    if (v16 <= 6)
    {
      if (v16 == 5)
      {
        [CFPDSource acceptMessage:];
        goto LABEL_90;
      }

      v33 = "Invalid plist data";
      v38 = v7;
      v39 = 1;
      goto LABEL_89;
    }

    if (v16 != 7)
    {
      if (v16 == 8)
      {
        v33 = "Writing has been disabled";
      }

      else
      {
        if (v16 != 9)
        {
          goto LABEL_90;
        }

        v33 = "Unable to determine access";
      }

      goto LABEL_88;
    }

LABEL_81:
    v33 = "Path not accessible";
LABEL_88:
    v38 = v7;
    v39 = 0;
LABEL_89:
    populateErrorReply(v33, v38, v39);
    goto LABEL_90;
  }

  if (v16 > 2)
  {
    if (v16 == 3)
    {
      goto LABEL_82;
    }

    if (!self->_actualPath)
    {
      [(CFPDSource *)self cacheFileInfo];
      if (!self->_actualPath)
      {
        goto LABEL_81;
      }
    }

    populateErrorReply("Access token needed", v7, 3u);
    v59 = self->_actualPath;
    v60 = "CFPreferencesAccessToken";
LABEL_146:
    xpc_dictionary_set_string(v7, v60, v59);
    goto LABEL_90;
  }

  if (v16 != 1)
  {
    if (v16 != 2)
    {
      if (!v16)
      {
        [CFPDSource acceptMessage:];
      }

      goto LABEL_90;
    }

LABEL_82:
    if (v77)
    {
      v40 = v77;
    }

    else
    {
      v40 = "Operation not allowed";
    }

    populateErrorReply(v40, v7, 0);
    xpc_dictionary_set_BOOL(v7, "CFPreferencesErrorClientFault", 1);
    goto LABEL_90;
  }

  if (!v10)
  {
    if ((int64 - 7) <= 1)
    {
      [(CFPDSource *)self setObserved:message bySenderOfMessage:?];
      goto LABEL_90;
    }

    if (v32 != -1 || v31 || (v61 = self->_pendingChangesQueue) != 0 && xpc_array_get_count(v61))
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __28__CFPDSource_acceptMessage___block_invoke_2;
      v74[3] = &unk_1E6D81EC0;
      v74[4] = self;
      [v31 quicklyValidatePlistAndOnFailureInvokeBlock:v74];
      copyXPCData = [v31 copyXPCData];
      if (copyXPCData)
      {
        xpc_dictionary_set_value(v7, "CFPreferencesPropertyList", copyXPCData);
        xpc_release(copyXPCData);
      }

      if (v32 != -1)
      {
        xpc_dictionary_set_fd(v7, "PlistFD", v32);
      }

      pendingChangesQueue = self->_pendingChangesQueue;
      if (pendingChangesQueue && xpc_array_get_count(pendingChangesQueue))
      {
        v64 = xpc_array_create(0, 0);
        v65 = self->_pendingChangesQueue;
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __28__CFPDSource_acceptMessage___block_invoke_143;
        v73[3] = &unk_1E6DD1B08;
        v73[4] = v64;
        xpc_array_apply(v65, v73);
        xpc_dictionary_set_value(v7, "PlistDiff", v64);
        xpc_release(v64);
      }

      v66 = self->_actualPath;
      if (copyXPCData)
      {
        DEBUG_READ(message, self, v66);
      }

      else
      {
        DEBUG_READ_EMPTY(message, self, v66);
      }
    }

    xpc_dictionary_set_int64(v7, "CFPreferencesShmemIndex", self->_generationShmemIndex);
    bzero(&v87, 0x400uLL);
    [CFPrefsDaemon getShmemName:? bufLen:?];
    v60 = "CFPreferencesShmemName";
    v59 = &v87;
    goto LABEL_146;
  }

  approximatePlistSizeIncludingPendingChanges = [(CFPDSource *)self approximatePlistSizeIncludingPendingChanges];
  if (![(CFPDSource *)self enqueueNewKey:v81 value:v80 encoding:v79 inBatch:0 fromMessage:message])
  {
    v33 = "Couldn't enqueue updated values";
    v38 = v7;
    v39 = 2;
    goto LABEL_89;
  }

  approximatePlistSizeIncludingPendingChanges2 = [(CFPDSource *)self approximatePlistSizeIncludingPendingChanges];
  if (approximatePlistSizeIncludingPendingChanges2 > approximatePlistSizeIncludingPendingChanges)
  {
    [(CFPDSource *)self attachSizeWarningsToReply:v7 forByteCount:approximatePlistSizeIncludingPendingChanges2];
  }

  syncWriteToDisk = xpc_dictionary_get_BOOL(message, "CFPreferencesShouldWriteSynchronously");
  if (syncWriteToDisk || v78 == 1)
  {
    syncWriteToDisk = [(CFPDSource *)self syncWriteToDisk];
  }

  v72 = v79;
  v67 = v80;
  v71 = v81;
  v68 = _CFPrefsDaemonLog(syncWriteToDisk, v58);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    if (v72)
    {
      v69 = v67;
    }

    else
    {
      v69 = v71;
    }

    _extractCFPDBits(message, v69, self, &__block_literal_global_409);
  }

  [(CFPDSource *)self asyncNotifyObserversOfWriteFromConnection:remote_connection message:message];
LABEL_90:
  xpc_dictionary_set_int64(v7, "CFPreferencesShmemIndex", self->_generationShmemIndex);
  bzero(&v87, 0x400uLL);
  [CFPrefsDaemon getShmemName:? bufLen:?];
  xpc_dictionary_set_string(v7, "CFPreferencesShmemName", &v87);
  v46 = atomic_load(([(CFPrefsDaemon *)self->_cfprefsd shmem:v41]+ 4 * self->_generationShmemIndex));
  xpc_dictionary_set_uint64(v7, "CFPreferencesShmemState", v46);
  if (v16 == 1)
  {
    goto LABEL_101;
  }

  if (v16 == 4)
  {
    v49 = _CFPrefsDaemonLog(v47, v48);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_101;
    }

    v82 = MEMORY[0x1E69E9820];
    v83 = 3221225472;
    v84 = __DEBUG_NEEDS_TOKEN_block_invoke;
    v85 = &__block_descriptor_33_e29_v64__0i8_12_20_28_36_44_52B60l;
    LOBYTE(v86) = v10;
  }

  else
  {
    string = xpc_dictionary_get_string(v7, "CFPreferencesErrorDescription");
    if (v10)
    {
      v51 = &v80;
      if (!v79)
      {
        v51 = &v81;
      }

      v52 = *v51;
      v82 = MEMORY[0x1E69E9820];
      v83 = 3221225472;
      v84 = __ERROR_WRITE_REJECTED_block_invoke;
      v85 = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
      v86 = string;
      messageCopy2 = message;
      goto LABEL_100;
    }

    v82 = MEMORY[0x1E69E9820];
    v83 = 3221225472;
    v84 = __ERROR_READ_REJECTED_block_invoke;
    v85 = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    v86 = string;
  }

  messageCopy2 = message;
  v52 = 0;
LABEL_100:
  _extractCFPDBits(messageCopy2, v52, self, &v82);
LABEL_101:
  if (v78 == 1)
  {
    [(CFPDSource *)self cleanUpIfNecessaryAfterCreatingPlist];
  }

  if ((*(self + 142) & 4) != 0)
  {
    [(CFPDSource *)self syncWriteToDiskAndFlushCacheForReason:@"we're never caching"];
  }

  [(CFPDSource *)self closeFileDescriptors];
  if (v81)
  {
    xpc_release(v81);
  }

  if (v80)
  {
    xpc_release(v80);
  }

  if (v32 != -1)
  {
    close(v32);
  }

  return v7;
}

uint64_t (*__28__CFPDSource_acceptMessage___block_invoke())(void)
{
  v0 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 256);
  result = dlsym(v0, "MKBDeviceUnlockedSinceBoot");
  acceptMessage___CFMKBDeviceUnlockedSinceBoot = result;
  return result;
}

void __28__CFPDSource_acceptMessage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __28__CFPDSource_acceptMessage___block_invoke_2_cold_1();
  }
}

- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)source replacingWithTombstone:(id *)tombstone
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (*source)
  {
    if ((*(self + 142) & 0x20) != 0)
    {
      *source = 0;
    }

    else
    {
      [(CFPDSource *)self processEndOfMessageIntendingToRemoveSource:v21 replacingWithTombstone:tombstone, source];
    }
  }

  if (self->_actualPath)
  {
    if (_CFPrefsCurrentProcessIsCFPrefsD())
    {
      v7 = strlen(self->_actualPath);
      v8 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, self->_actualPath, v7, 0);
      if (v8)
      {
        v9 = v8;
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(&__kCFAllocatorSystemDefault, v8);
        CFRelease(v9);
        if (PathComponent)
        {
          v11 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
          CFRelease(PathComponent);
          if (v11)
          {
            v12 = *source;
            os_unfair_lock_assert_owner(&self->_lock);
            if (v12)
            {
              os_unfair_lock_lock(&dirWatcherLock);
              if (self->_watchingParentDirectory)
              {
                self->_watchingParentDirectory = 0;
                Value = CFDictionaryGetValue(dirWatcherTargets, v11);
                if (Value)
                {
                  v14 = Value;
                  v23.length = CFArrayGetCount(Value);
                  v23.location = 0;
                  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v23, self);
                  if (FirstIndexOfValue != -1)
                  {
                    CFArrayRemoveValueAtIndex(v14, FirstIndexOfValue);
                  }

                  if (!CFArrayGetCount(v14))
                  {
                    CFDictionaryRemoveValue(dirWatcherTargets, v11);
                    v16 = watchedDirs;
                    v24.length = CFArrayGetCount(watchedDirs);
                    v24.location = 0;
                    v17 = CFArrayGetFirstIndexOfValue(v16, v24, v11);
                    if (v17 != -1)
                    {
                      CFArrayRemoveValueAtIndex(watchedDirs, v17);
LABEL_34:
                      os_unfair_lock_unlock(&dirWatcherLock);
                      os_unfair_lock_assert_not_owner(&dirWatcherLock);
                      dispatch_async(fseventsQueue, &__block_literal_global_428);
                      goto LABEL_31;
                    }
                  }
                }
              }
            }

            else
            {
              if ([(CFPrefsDaemon *)self->_cfprefsd role]== 2)
              {
LABEL_31:
                CFRelease(v11);
                return;
              }

              if (initializeFSEvents_predicate != -1)
              {
                [CFPDSource processEndOfMessageIntendingToRemoveSource:replacingWithTombstone:];
              }

              if (_CFPrefsWatchForDeletionOfDirectory_onceToken != -1)
              {
                [CFPDSource processEndOfMessageIntendingToRemoveSource:replacingWithTombstone:];
              }

              v18 = _internString(v11);
              os_unfair_lock_lock(&dirWatcherLock);
              if (!self->_watchingParentDirectory)
              {
                self->_watchingParentDirectory = 1;
                Mutable = CFDictionaryGetValue(dirWatcherTargets, v18);
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
                  if (Mutable)
                  {
                    CFDictionarySetValue(dirWatcherTargets, v18, Mutable);
                    CFRelease(Mutable);
                  }
                }

                v25.length = CFArrayGetCount(Mutable);
                v25.location = 0;
                if (!CFArrayContainsValue(Mutable, v25, self))
                {
                  CFArrayAppendValue(Mutable, self);
                }

                v20 = watchedDirs;
                v26.length = CFArrayGetCount(watchedDirs);
                v26.location = 0;
                if (!CFArrayContainsValue(v20, v26, v18))
                {
                  CFArrayAppendValue(watchedDirs, v18);
                  goto LABEL_34;
                }
              }
            }

            os_unfair_lock_unlock(&dirWatcherLock);
            goto LABEL_31;
          }
        }
      }
    }
  }
}

- (BOOL)getUncanonicalizedPath:(uint64_t)path
{
  if (!path)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  os_unfair_lock_lock(v3 + 24);
  v4 = *(v1 + 88);
  if (v4)
  {
    v5 = CFStringFileSystemEncoding();
    v6 = CFStringGetCString(v4, v2, 1024, v5) != 0;
    os_unfair_lock_unlock((v1 + 96));
    return v6;
  }

  os_unfair_lock_unlock((v1 + 96));

  return [CFPDSource _getUncanonicalizedPath:v1];
}

id __58__CFPDSource_cacheFileInfoForWriting_euid_egid_didCreate___block_invoke(uint64_t a1, int token)
{
  notify_cancel(token);
  cacheFileInfoForWriting_euid_egid_didCreate__deviceEverUnlocked = 1;
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_18();
    return [v4 lockedSync:?];
  }

  return result;
}

- (void)handleDeviceUnlock
{
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_18();
    return [v1 lockedSync:?];
  }

  return result;
}

- (BOOL)_getUncanonicalizedPath:(_BOOL8)result
{
  if (result)
  {
    OUTLINED_FUNCTION_14_0();
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v6 = *(v3 + 138);
    container = [v3 container];
    v8 = *(v2 + 139);
    v9 = *(v2 + 140);

    return [CFPrefsDaemon _getUncanonicalizedSourcePath:v1 withDomain:v4 user:v5 byHost:v6 containerPath:container managed:v8 managedUsesContainer:v9];
  }

  return result;
}

- (uint64_t)shouldStayDirtyAfterOpenForWritingFailureWithErrno:(uint64_t)errno
{
  v18 = *MEMORY[0x1E69E9840];
  if (!errno)
  {
    return 0;
  }

  v2 = a2;
  v4 = _CFPrefsDaemonLog(errno, a2);
  v5 = v4;
  if (v2 != 28)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(errno + 56);
      strerror(v2);
      v15 = 136380931;
      v16 = v9;
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v10, v11, v12, v13, v14, 0x16u);
    }

    return 0;
  }

  v6 = 1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_17();
    v17 = v7;
    _os_log_impl(&dword_1830E6000, v5, OS_LOG_TYPE_INFO, "Re-marking { %@, %@ } as dirty because attempt to open temporary path failed with ENOSPC", &v15, 0x16u);
  }

  return v6;
}

- (void)cleanUpIfNecessaryAfterCreatingPlist
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_assert_owner((self + 108));
    bzero(&v16, 0x90uLL);
    v2 = OUTLINED_FUNCTION_15_0();
    if (!v3)
    {
      if (fstatat(v2, *(self + 64), &v16, 32))
      {
        v4 = __error();
        if (*v4 != 2)
        {
          v6 = _CFPrefsDaemonLog(v4, v5);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = *(self + 56);
            v8 = __error();
            strerror(*v8);
            v14 = 136380931;
            v15 = v7;
            OUTLINED_FUNCTION_5_3();
            _os_log_error_impl(&dword_1830E6000, v6, OS_LOG_TYPE_ERROR, "couldn't stat file at %{private}s due to %{public}s", &v14, 0x16u);
          }
        }
      }

      else if (!v16.st_size && (v16.st_mode & 0xF000) == 0x8000)
      {
        v9 = unlinkat(*(self + 128), *(self + 64), 0);
        if (v9 == -1)
        {
          v11 = _CFPrefsDaemonLog(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v12 = *(self + 56);
            v13 = __error();
            strerror(*v13);
            v14 = 136380931;
            v15 = v12;
            OUTLINED_FUNCTION_5_3();
            _os_log_fault_impl(&dword_1830E6000, v11, OS_LOG_TYPE_FAULT, "couldn't delete temporary file at %{private}s due to %{public}s", &v14, 0x16u);
          }
        }
      }
    }
  }
}

- (void)markNeedsToReloadFromDiskDueToFailedWrite
{
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_18();
    return [v1 lockedAsync:?];
  }

  return result;
}

- (void)finishedNonRequestWriteWithResult:(__CFDictionary *)result
{
  [(CFPDSource *)self lock];
  [(CFPDSource *)self handleWritingResult:result];
  [(CFPDSource *)self tryEndAccessingPlist];

  [(CFPDSource *)self unlock];
}

- (uint64_t)openPropertyListWithoutDrainingPendingChangesOrValidatingPlistAndReturnFileUID:(mode_t *)d andMode:
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 104));
  v6 = OUTLINED_FUNCTION_15_0();
  if (v7 && ([self cacheFileInfo], v6 = OUTLINED_FUNCTION_15_0(), v7))
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = openat(v6, *(self + 64), 256);
    if (v8 != -1)
    {
      bzero(&v10, 0x90uLL);
      if (fstat(v8, &v10) || v10.st_size < 0x100000)
      {
        close(v8);
        v8 = 0xFFFFFFFFLL;
      }

      if (a2)
      {
        *a2 = v10.st_uid;
      }

      if (d)
      {
        *d = v10.st_mode;
      }
    }
  }

  os_unfair_lock_unlock((self + 104));
  return v8;
}

- (void)observingConnectionsLockedSync:(uint64_t)sync
{
  if (sync)
  {
    OUTLINED_FUNCTION_11_0();
    os_unfair_lock_lock(v3 + 25);
    (*(v2 + 16))(v2);

    os_unfair_lock_unlock(v1 + 25);
  }
}

- (void)stopNotifyingObserver:(uint64_t)observer
{
  if (observer)
  {
    OUTLINED_FUNCTION_11_0();
    os_unfair_lock_assert_owner(v3 + 25);
    v4 = *(v1 + 72);
    if (v4)
    {
      CFSetRemoveValue(v4, v2);
      if (!CFSetGetCount(*(v1 + 72)))
      {
        CFRelease(*(v1 + 72));
        *(v1 + 72) = 0;
      }
    }
  }
}

- (void)clearCacheForReason:(__CFString *)reason
{
  v8[5] = *MEMORY[0x1E69E9840];
  v5 = _CFPrefsDaemonLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_24();
    v8[1] = 3221225472;
    v8[2] = __DEBUG_CACHE_EVICT_block_invoke;
    v8[3] = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    v8[4] = reason;
    _extractCFPDBits(0, 0, self, v8);
  }

  [(CFPDSource *)self setDirty:0];
  pendingChangesQueue = self->_pendingChangesQueue;
  if (pendingChangesQueue)
  {
    xpc_release(pendingChangesQueue);
  }

  [(CFPDSource *)self clearPlist];
  self->_pendingChangesQueue = 0;
  self->_pendingChangesSize = 0;
  free(self->_actualPath);
  self->_actualPath = 0;
  *(self + 143) &= ~2u;
  free(self->_fileName);
  self->_fileName = 0;
  parentFD = self->_parentFD;
  if ((parentFD & 0x80000000) == 0)
  {
    close(parentFD);
  }

  self->_parentFD = -1;
}

- (uint64_t)validateAccessToken:(int)token accessType:
{
  v75 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (a2 == -1)
  {
    return 4;
  }

  if (token)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  bzero(__s2, 0x400uLL);
  if (a2 < 0)
  {
    v12 = _CFPrefsDaemonLog(v7, v8);
    if (OUTLINED_FUNCTION_12_0(v12))
    {
      *buf = 67109120;
      LODWORD(v69) = a2;
LABEL_12:
      OUTLINED_FUNCTION_13_0();
      v18 = 8;
LABEL_13:
      _os_log_impl(v13, v14, v15, v16, v17, v18);
      return v6;
    }

    return v6;
  }

  bzero(&v73, 0x90uLL);
  v9 = fstat(a2, &v73);
  if (!v9)
  {
    v19 = fcntl(a2, 50, __s2);
    if (v19 == -1)
    {
      v23 = _CFPrefsDaemonLog(v19, v20);
      if (!OUTLINED_FUNCTION_12_0(v23))
      {
        return v6;
      }

      goto LABEL_41;
    }

    v21 = *(self + 56);
    if (v21)
    {
      v22 = strdup(v21);
    }

    else
    {
      v22 = 0;
    }

    if (*(self + 128) == -1)
    {
      cacheFileInfo = [self cacheFileInfo];
      if (*(self + 128) == -1)
      {
        v31 = _CFPrefsDaemonLog(cacheFileInfo, v25);
        if (OUTLINED_FUNCTION_12_0(v31))
        {
          *buf = 0;
          OUTLINED_FUNCTION_13_0();
          _os_log_impl(v32, v33, v34, v35, v36, 2u);
        }

        free(v22);
        return v6;
      }
    }

    if (v22)
    {
      v26 = strcmp(*(self + 56), v22);
      if (v26)
      {
        v28 = _CFPrefsDaemonLog(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = *(self + 56);
          *buf = 136315394;
          v69 = v22;
          v70 = 2080;
          v71 = v29;
          _os_log_impl(&dword_1830E6000, v28, OS_LOG_TYPE_INFO, "Failed access token check because _actualPath has changed since the last-known path (%s vs %s)", buf, 0x16u);
        }

        [self clearCacheForReason:@"observed actual path changed"];
        free(v22);
        return 4;
      }
    }

    free(v22);
    if (byte_1EA84A4F9)
    {
      [self setDirty:1];
      [self syncWriteToDisk];
      [self cacheFileInfo];
      byte_1EA84A4F9 = 0;
    }

    openActualPath = [(CFPDSource *)self openActualPath];
    if (openActualPath == -1)
    {
      v48 = _CFPrefsDaemonLog(openActualPath, v38);
      if (!OUTLINED_FUNCTION_12_0(v48))
      {
        return v6;
      }

      goto LABEL_41;
    }

    v39 = openActualPath;
    bzero(&v72, 0x90uLL);
    v40 = fstat(v39, &v72);
    if (v40)
    {
      v42 = _CFPrefsDaemonLog(v40, v41);
      if (!OUTLINED_FUNCTION_12_0(v42))
      {
LABEL_39:
        close(v39);
        return v6;
      }

      __error();
      OUTLINED_FUNCTION_17_0();
LABEL_38:
      OUTLINED_FUNCTION_13_0();
      _os_log_impl(v43, v44, v45, v46, v47, 8u);
      goto LABEL_39;
    }

    bzero(buf, 0x400uLL);
    v49 = fcntl(v39, 50, buf);
    if (v49 == -1)
    {
      v54 = _CFPrefsDaemonLog(v49, v50);
      if (!OUTLINED_FUNCTION_12_0(v54))
      {
        goto LABEL_39;
      }

      v55 = *__error();
      *v64 = 67109120;
      LODWORD(v65) = v55;
      goto LABEL_38;
    }

    close(v39);
    v51 = strcmp(buf, __s2);
    if (v51)
    {
      v53 = _CFPrefsDaemonLog(v51, v52);
      if (!OUTLINED_FUNCTION_12_0(v53))
      {
        return v6;
      }

      *v64 = 136315394;
      v65 = __s2;
      v66 = 2080;
      v67 = buf;
      OUTLINED_FUNCTION_13_0();
      v18 = 22;
      goto LABEL_13;
    }

    v56 = *(self + 56);
    if (!v56 || (v51 = strcmp(buf, v56), v51))
    {
      v57 = _CFPrefsDaemonLog(v51, v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = *(self + 56);
        *v64 = 136315394;
        v65 = __s2;
        v66 = 2080;
        v67 = v58;
        _os_log_impl(&dword_1830E6000, v57, OS_LOG_TYPE_INFO, "Failed access token check because verification path doesn't match known actual path (%s vs %s)", v64, 0x16u);
      }

      [self clearCacheForReason:@"observed actual path changed"];
      return v6;
    }

    if (v72.st_dev == v73.st_dev && v72.st_ino == v73.st_ino)
    {
      if (v72.st_nlink)
      {
        if (token != 1)
        {
          return 1;
        }

        v59 = fcntl(a2, 3, 0);
        if ((v59 & 3) == 2)
        {
          return 1;
        }

        v63 = _CFPrefsDaemonLog(v59, v60);
        if (!OUTLINED_FUNCTION_12_0(v63))
        {
          return v6;
        }

        *v64 = 0;
        OUTLINED_FUNCTION_13_0();
        v18 = 2;
        goto LABEL_13;
      }

      v61 = _CFPrefsDaemonLog(v51, v56);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *v64 = 0;
        v62 = "Failed access token check because the file it references has been unlinked";
        goto LABEL_61;
      }
    }

    else
    {
      v61 = _CFPrefsDaemonLog(v51, v56);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *v64 = 0;
        v62 = "Failed access token check because inode of token doesn't match verification inode";
LABEL_61:
        _os_log_impl(&dword_1830E6000, v61, OS_LOG_TYPE_INFO, v62, v64, 2u);
      }
    }

    return 4;
  }

  v11 = _CFPrefsDaemonLog(v9, v10);
  if (OUTLINED_FUNCTION_12_0(v11))
  {
LABEL_41:
    __error();
    OUTLINED_FUNCTION_17_0();
    goto LABEL_12;
  }

  return v6;
}

- (__CFString)_canTrustUserPropertyForPOSIXPermissionCheckForAccessType:(__CFString *)result
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    result = result[1].data;
    if (result)
    {
      if (CFStringHasPrefix(result, @"/"))
      {
        return 0;
      }

      data = v2[1].data;
      v9.length = CFStringGetLength(data);
      v9.location = 0;
      if (CFStringFindWithOptions(data, @"..", v9, 0, 0))
      {
        return 0;
      }

      container = [(__CFString *)v2 container];
      if (container && (!CFStringGetFileSystemRepresentation(container, buffer, 1024) || (getpid(), sandbox_check())))
      {
        return 0;
      }

      else
      {
        return ((v2[4].info & 0x200000000000000) == 0 || a2 != 0);
      }
    }
  }

  return result;
}

- (uint64_t)validateSandboxPermissionsForMessage:(const char *)message containerPath:(int)path accessType:
{
  if (result)
  {
    if (path == 1)
    {
      if ([(CFPDSource *)result validateSandboxForWrite:a2 containerPath:message])
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {

      return [(CFPDSource *)result validateSandboxForRead:a2 containerPath:message];
    }
  }

  return result;
}

- (void)handleAvoidCache
{
  if (result)
  {
    return [result syncWriteToDiskAndFlushCacheForReason:@"we're avoiding the cache"];
  }

  return result;
}

- (void)handleNeverCache
{
  if (result)
  {
    return [result syncWriteToDiskAndFlushCacheForReason:@"we're never caching"];
  }

  return result;
}

- (void)handleEUIDorEGIDMismatch
{
  if (result)
  {
    return [result syncWriteToDisk];
  }

  return result;
}

- (void)handleSynchronous
{
  if (result)
  {
    return [result syncWriteToDisk];
  }

  return result;
}

- (void)handleNoPlistFound
{
  if (result)
  {
    return [result syncWriteToDisk];
  }

  return result;
}

- (void)attachSizeWarningsToReply:(unint64_t)reply forByteCount:
{
  if (self)
  {
    v4 = _CFPrefsDomainSizeAcceptabilityForByteCount(reply);

    xpc_dictionary_set_int64(a2, "CFPreferencesByteCountThreshold", v4);
  }
}

const os_unfair_lock *__80__CFPDSource_processEndOfMessageIntendingToRemoveSource_replacingWithTombstone___block_invoke(uint64_t a1)
{
  result = [(CFPDSource *)*(a1 + 32) hasObservers];
  if (result)
  {
    **(a1 + 40) = [[CFPDObserverOnlyTombstone alloc] initMatchingSource:*(a1 + 32)];
    v3 = *(a1 + 32);
    v4 = **(a1 + 40);

    return [v4 alreadyLocked_transferObservingConnectionsFromSource:v3];
  }

  return result;
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_1830E6000, v1, OS_LOG_TYPE_DEBUG, "Couldn't open parent path %{private}s due to %{darwin.errno}d", v2, 0x12u);
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.3()
{
  __error();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.4()
{
  __error();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.5()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.6()
{
  OUTLINED_FUNCTION_14_0();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)cacheFileInfoForWriting:(os_log_t)log euid:egid:didCreate:.cold.7(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Simulating ENOSPC in cacheFileInfo for testing", v1, 2u);
}

- (uint64_t)setDirty:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = +[_CFPrefsSynchronizer sharedInstance];
  [_CFPrefsSynchronizer noteDirtySource:v2];
  memcpy(__dst, "CFPrefs domain dirty: ", sizeof(__dst));
  if (!CFStringGetCString(*(a1 + 48), &__dst[22], 490, 0x8000100u))
  {
    __strncat_chk();
  }

  result = os_transaction_create();
  *(a1 + 80) = result;
  return result;
}

- (void)createDiskWrite
{
  OUTLINED_FUNCTION_14_0();
  v2 = __error();
  [v1 setDirty:{-[CFPDSource shouldStayDirtyAfterOpenForWritingFailureWithErrno:](v1, *v2)}];

  os_unfair_lock_unlock(v0);
}

void *__29__CFPDSource_createDiskWrite__block_invoke_cold_1(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_18();
    return [v2 lockedAsync:?];
  }

  return result;
}

- (void)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:andReturnFileUID:andMode:.cold.1()
{
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:andReturnFileUID:andMode:.cold.2()
{
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __33__CFPDSource_drainPendingChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (uint64_t)validatePOSIXPermissionsForMessage:(uint64_t)a3 accessType:(_BYTE *)a4 fileUID:mode:fullyValidated:.cold.1(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (![(CFPDSource *)a1 _canTrustUserPropertyForPOSIXPermissionCheckForAccessType:a2])
  {
    return 1;
  }

  v7 = _CFPrefsCopyUserNameForUID(a3);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (CFEqual(*(a1 + 40), v7))
  {
    v9 = 0;
    *a4 = 0;
  }

  else
  {
    v9 = 1;
  }

  CFRelease(v8);
  return v9;
}

- (void)acceptMessage:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(&dword_1830E6000, v0, OS_LOG_TYPE_FAULT, "unable to find user information for requested user %s", v1, 0xCu);
}

- (void)acceptMessage:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  v3 = *MEMORY[0x1E69E9840];
  populateErrorReply("Directory needed", v0, 4u);
  bzero(string, 0x402uLL);
  if ([CFPDSource getUncanonicalizedPath:v1])
  {
    xpc_dictionary_set_string(v0, "CFPreferencesUncanonicalizedPath", string);
  }
}

void __28__CFPDSource_acceptMessage___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)processEndOfMessageIntendingToRemoveSource:(uint64_t)a3 replacingWithTombstone:(_BYTE *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_14_0();
  if ([(CFPDSource *)v8 isEmpty])
  {
    *v4 = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__CFPDSource_processEndOfMessageIntendingToRemoveSource_replacingWithTombstone___block_invoke;
    v4[3] = &unk_1E6DD1B30;
    v4[4] = v5;
    v4[5] = a3;
    [CFPDSource observingConnectionsLockedSync:v5];
  }

  else
  {
    *a4 = 0;
  }
}

@end