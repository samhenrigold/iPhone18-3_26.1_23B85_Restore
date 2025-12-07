@interface NSObject(LockingAdditions)
+ (uint64_t)mf_clearLocks;
- (BOOL)_mf_ntsIsLocked;
- (char)_mf_checkToAllowOrderingWithLock:()LockingAdditions;
- (char)_mf_checkToAllowStrictProgressionWithLock:()LockingAdditions;
- (uint64_t)_mf_checkToAllowLock:()LockingAdditions;
- (uint64_t)_mf_ntsCheckToAllowLock:()LockingAdditions;
- (uint64_t)mf_lock;
- (uint64_t)mf_lockWithPriority;
- (uint64_t)mf_tryLock;
- (uint64_t)mf_tryLockWithPriority;
- (uint64_t)mf_unlock;
- (void)_mf_checkToAllowExclusiveLocksWithLock:()LockingAdditions;
- (void)_mf_dumpLockCallStacks:()LockingAdditions ordering:;
- (void)_mf_lockOrderingForType:()LockingAdditions;
@end

@implementation NSObject(LockingAdditions)

- (uint64_t)mf_lock
{
  pthread_mutex_lock(&sMutex);
  [self _mf_ntsCheckToAllowLock:self];
  v2 = _MFFindObjectLock(self, 1);

  return _MFAcquireObjectLock(v2);
}

- (uint64_t)mf_unlock
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&sMutex);
  v2 = sFirstLock;
  if (!sFirstLock)
  {
    goto LABEL_14;
  }

  do
  {
    if (v2[1] == self)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v2 = *v2;
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 0;
    }
  }

  while (v4);
  if (v3)
  {
    v5 = pthread_self();
    if (v5 == *(v3 + 16))
    {
      v14 = *(v3 + 72);
      if ((v14 & 0x7FFF) != 0)
      {
        v15 = (v14 + 0x7FFF) & 0x7FFF;
        if (v14 < 0)
        {
          *(v3 + 72) = (v14 + 0x7FFF) | 0x8000;
          if (v15)
          {
            return pthread_mutex_unlock(&sMutex);
          }

          v20 = *(v3 + 8);
          if (_mfCallStackLoggingEnabled(v5, v6))
          {
            v21 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            objc_setAssociatedObject(v20, @"MFLock Call Stack Symbols", 0, 0x301);
            [v21 drain];
          }

          v22 = *(v3 + 80);
          if (v22 && CFArrayGetCount(v22))
          {
            *(v3 + 16) = 0;
            pthread_cond_broadcast((v3 + 24));
            return pthread_mutex_unlock(&sMutex);
          }
        }

        else
        {
          *(v3 + 72) = v15;
          --*(v3 + 80);
          if (v15)
          {
            return pthread_mutex_unlock(&sMutex);
          }

          v16 = *(v3 + 8);
          if (_mfCallStackLoggingEnabled(v5, v6))
          {
            v17 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            objc_setAssociatedObject(v16, @"MFLock Call Stack Symbols", 0, 0x301);
            [v17 drain];
          }

          if (*(v3 + 80))
          {
            *(v3 + 16) = 0;
            pthread_cond_signal((v3 + 24));
            return pthread_mutex_unlock(&sMutex);
          }
        }

        _MFRecycleObjectLock(v3);
        return pthread_mutex_unlock(&sMutex);
      }

      v7 = MFLogGeneral();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        return pthread_mutex_unlock(&sMutex);
      }

      v18 = objc_opt_class();
      v19 = *(v3 + 8);
      v23 = 138412546;
      v24 = v18;
      v25 = 2048;
      selfCopy = v19;
      v10 = "*** Can't unlock <%@:%p>: it's already been unlocked.";
      goto LABEL_13;
    }

    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = *(v3 + 8);
      v23 = 138412546;
      v24 = v8;
      v25 = 2048;
      selfCopy = v9;
      v10 = "*** Can't unlock <%@:%p>: it was locked by another thread.";
LABEL_13:
      v11 = v7;
LABEL_16:
      _os_log_impl(&dword_1D36B2000, v11, OS_LOG_TYPE_INFO, v10, &v23, 0x16u);
    }
  }

  else
  {
LABEL_14:
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2048;
      selfCopy = self;
      v10 = "*** Can't unlock <%@:%p>: it's not locked.";
      v11 = v12;
      goto LABEL_16;
    }
  }

  return pthread_mutex_unlock(&sMutex);
}

+ (uint64_t)mf_clearLocks
{
  v45 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&sMutex);
  if (sFirstLock)
  {
    v0 = pthread_self();
    v1 = sFirstLock;
    if (sFirstLock)
    {
      v2 = v0;
      do
      {
        if (*(v1 + 16) == v2)
        {
          v3 = MFLogGeneral();
          v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
          if (v4)
          {
            v6 = *(v1 + 72) & 0x7FFF;
            v7 = *(v1 + 8);
            v8 = *(v1 + 16);
            *buf = 134218496;
            v40 = v7;
            v41 = 1024;
            v42 = v6;
            v43 = 2048;
            v44 = v8;
            _os_log_impl(&dword_1D36B2000, v3, OS_LOG_TYPE_INFO, "object %p still holds lock (count=%u) in thread %p", buf, 0x1Cu);
          }

          v9 = *(v1 + 8);
          if (_mfCallStackLoggingEnabled(v4, v5))
          {
            v10 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            objc_setAssociatedObject(v9, @"MFLock Call Stack Symbols", 0, 0x301);
            [v10 drain];
          }

          v11 = *(v1 + 72);
          if (v11 < 0)
          {
            *(v1 + 72) = 0x8000;
            *(v1 + 16) = 0;
            v14 = *(v1 + 80);
            if (!v14 || !CFArrayGetCount(v14))
            {
              goto LABEL_18;
            }

            pthread_cond_broadcast((v1 + 24));
          }

          else
          {
            v12 = *(v1 + 80);
            if (*(v1 + 72))
            {
              do
              {
                v13 = v11 - 1;
                LOWORD(v11) = v11 & 0x8000 | (v11 - 1) & 0x7FFF;
                --v12;
              }

              while ((v13 & 0x7FFF) != 0);
              *(v1 + 72) = v11;
              *(v1 + 80) = v12;
            }

            *(v1 + 16) = 0;
            if (!v12)
            {
LABEL_18:
              _MFRecycleObjectLock(v1);
              goto LABEL_19;
            }

            pthread_cond_signal((v1 + 24));
          }
        }

LABEL_19:
        v1 = *v1;
      }

      while (v1);
    }
  }

  pthread_mutex_unlock(&sMutex);
  v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  pthread_mutex_lock(&__threadLockRelationsLock);
  v16 = &__threadLockRelationsLock;
  v17 = __threadLockRelations;
  v18 = pthread_self();
  Value = CFDictionaryGetValue(v17, v18);
  v20 = [Value copy];
  pthread_mutex_unlock(&__threadLockRelationsLock);
  if (Value)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:buf count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * i);
          v26 = [v20 countForObject:v25];
          if (v26)
          {
            v27 = v26;
            do
            {
              v28 = MFLogGeneral();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *v37 = 138412290;
                v38 = v25;
                _os_log_impl(&dword_1D36B2000, v28, OS_LOG_TYPE_DEFAULT, "#Warning Unlocking blown lock %@", v37, 0xCu);
              }

              --v27;
              [v25 unlock];
            }

            while (v27);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:buf count:16];
      }

      while (v22);
    }

    if ([Value count])
    {
      v29 = MFLogGeneral();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138412290;
        v38 = Value;
        _os_log_impl(&dword_1D36B2000, v29, OS_LOG_TYPE_DEFAULT, "#Warning ERROR: We released all locks tracked, but we still have %@", v37, 0xCu);
      }
    }

    [Value removeAllObjects];
    pthread_mutex_lock(&__threadLockRelationsLock);
    v16 = &__threadLockRelationsLock;
    if (CFArrayGetCount(__threadLockEmptySets) <= 19)
    {
      CFArrayAppendValue(__threadLockEmptySets, Value);
    }
  }

  else
  {
    pthread_mutex_lock(&__threadLockRelationsLock);
  }

  v30 = *&v16[1].__opaque[16];
  v31 = pthread_self();
  CFDictionaryRemoveValue(v30, v31);
  pthread_mutex_unlock(&__threadLockRelationsLock);
  return [v15 drain];
}

- (BOOL)_mf_ntsIsLocked
{
  v1 = sFirstLock;
  if (!sFirstLock)
  {
    return 0;
  }

  do
  {
    if (v1[1] == self)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    v1 = *v1;
    if (v1)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  while (v3);
  return v2 && pthread_self() == v2[2];
}

- (void)_mf_lockOrderingForType:()LockingAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 3:
      mf_exclusiveLocks = [self mf_exclusiveLocks];
      goto LABEL_7;
    case 2:
      mf_exclusiveLocks = [self mf_strictLockOrdering];
      goto LABEL_7;
    case 1:
      mf_exclusiveLocks = [self mf_lockOrdering];
LABEL_7:
      v5 = mf_exclusiveLocks;
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9) == self)
        {
          [NSObject(LockingAdditions) _mf_lockOrderingForType:];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_mf_dumpLockCallStacks:()LockingAdditions ordering:
{
  v4 = a4;
  v5 = a3;
  selfCopy = self;
  v36 = *MEMORY[0x1E69E9840];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy2 = @"<exclusive locks>";
  }

  else
  {
    self = [a4 objectAtIndex:a3];
    selfCopy2 = self;
  }

  if (_mfCallStackLoggingEnabled(self, a2))
  {
    v30 = selfCopy2;
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8 = [v4 count];
    v9 = v8 - v5;
    if (v8 > v5)
    {
      v10 = @"com.apple.Message.MFLockOrderingSelfReference";
      v11 = @"<no call stack recorded>";
      v12 = "\n";
      do
      {
        v13 = [v4 objectAtIndex:v5];
        if (v13 == v10)
        {
          v14 = selfCopy;
          selfCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<MFLockOrderingSelfReference: %@: %p>", objc_opt_class(), selfCopy];
        }

        else
        {
          v14 = v13;
          selfCopy = [-[__CFString description](v13 "description")];
        }

        v17 = selfCopy;
        if (_mfCallStackLoggingEnabled(selfCopy, v16))
        {
          v18 = v4;
          v19 = v7;
          v20 = v12;
          v21 = v11;
          v22 = v10;
          v23 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v24 = objc_getAssociatedObject(v14, @"MFLock Call Stack Symbols");
          v25 = v23;
          v10 = v22;
          v11 = v21;
          v12 = v20;
          v7 = v19;
          v4 = v18;
          [v25 drain];
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v11;
        }

        ++v5;
        if (--v9)
        {
          v27 = v12;
        }

        else
        {
          v27 = "";
        }

        [v7 appendFormat:@"\t%@ callstack=%@%s", v17, v26, v27];
      }

      while (v9);
    }

    v28 = MFLogGeneral();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v30;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_1D36B2000, v28, OS_LOG_TYPE_DEFAULT, "#Warning MFLock Ordering Violation while taking lock! --> %@\nDumping lock call stack symbols.\n%@", buf, 0x16u);
    }
  }

  else if ([objc_msgSend(MEMORY[0x1E699B7B0] "currentDevice")])
  {
    v29 = MFLogGeneral();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = selfCopy2;
      _os_log_impl(&dword_1D36B2000, v29, OS_LOG_TYPE_DEFAULT, "#Warning MFLock Ordering Violation while taking lock! --> %@\nTurn on MFLockCallStackLoggingEnabled to dump call stack information.", buf, 0xCu);
    }
  }
}

- (char)_mf_checkToAllowOrderingWithLock:()LockingAdditions
{
  if (a3 == self)
  {
    v4 = @"com.apple.Message.MFLockOrderingSelfReference";
  }

  else
  {
    v4 = a3;
  }

  v5 = [(__CFString *)self _mf_lockOrderingForType:1];
  result = [v5 indexOfObject:v4];
  if (v5)
  {
    v7 = result;
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [v5 count];
      v8 = (v7 + 1);
      if (v7 + 1 < result)
      {
        v9 = result;
        do
        {
          v10 = [v5 objectAtIndex:v8];
          if (v10 == @"com.apple.Message.MFLockOrderingSelfReference")
          {
            selfCopy = self;
          }

          else
          {
            selfCopy = v10;
          }

          if ([(__CFString *)selfCopy conformsToProtocol:&unk_1F4F425E8])
          {
            result = [(__CFString *)selfCopy isLockedByMe];
            if (result)
            {
              [(NSObject(LockingAdditions) *)self _mf_checkToAllowOrderingWithLock:v7, v5];
            }
          }

          else
          {
            result = [(__CFString *)selfCopy _mf_ntsIsLocked];
            if (result)
            {
              [(NSObject(LockingAdditions) *)self _mf_checkToAllowOrderingWithLock:v7, v5];
            }
          }

          ++v8;
        }

        while (v9 != v8);
      }
    }
  }

  return result;
}

- (char)_mf_checkToAllowStrictProgressionWithLock:()LockingAdditions
{
  if (a3 == self)
  {
    v4 = @"com.apple.Message.MFLockOrderingSelfReference";
  }

  else
  {
    v4 = a3;
  }

  v5 = [(__CFString *)self _mf_lockOrderingForType:2];
  result = [v5 indexOfObject:v4];
  if (v5)
  {
    v7 = result;
    if (result != 0x7FFFFFFFFFFFFFFFLL && result != 0)
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndex:v9];
        if (v10 == @"com.apple.Message.MFLockOrderingSelfReference")
        {
          selfCopy = self;
        }

        else
        {
          selfCopy = v10;
        }

        if ([(__CFString *)selfCopy conformsToProtocol:&unk_1F4F425E8])
        {
          result = [(__CFString *)selfCopy isLockedByMe];
          if (result)
          {
            [(NSObject(LockingAdditions) *)self _mf_checkToAllowStrictProgressionWithLock:v7, v5];
          }
        }

        else
        {
          result = [(__CFString *)selfCopy _mf_ntsIsLocked];
          if (result)
          {
            [(NSObject(LockingAdditions) *)self _mf_checkToAllowStrictProgressionWithLock:v7, v5];
          }
        }

        ++v9;
      }

      while (v7 != v9);
    }
  }

  return result;
}

- (void)_mf_checkToAllowExclusiveLocksWithLock:()LockingAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == self)
  {
    v4 = @"com.apple.Message.MFLockOrderingSelfReference";
  }

  else
  {
    v4 = a3;
  }

  v5 = [(__CFString *)self _mf_lockOrderingForType:3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != v4)
        {
          if (v10 == @"com.apple.Message.MFLockOrderingSelfReference")
          {
            selfCopy = self;
          }

          else
          {
            selfCopy = *(*(&v12 + 1) + 8 * v9);
          }

          if ([(__CFString *)selfCopy conformsToProtocol:&unk_1F4F425E8])
          {
            if ([(__CFString *)selfCopy isLockedByMe])
            {
              [(NSObject(LockingAdditions) *)v5 _mf_checkToAllowExclusiveLocksWithLock:self];
            }
          }

          else if ([(__CFString *)selfCopy _mf_ntsIsLocked])
          {
            [(NSObject(LockingAdditions) *)v5 _mf_checkToAllowExclusiveLocksWithLock:self];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)_mf_checkToAllowLock:()LockingAdditions
{
  pthread_mutex_lock(&sMutex);
  [self _mf_ntsCheckToAllowLock:a3];

  return pthread_mutex_unlock(&sMutex);
}

- (uint64_t)_mf_ntsCheckToAllowLock:()LockingAdditions
{
  [self _mf_checkToAllowOrderingWithLock:?];
  [self _mf_checkToAllowStrictProgressionWithLock:a3];

  return [self _mf_checkToAllowExclusiveLocksWithLock:a3];
}

- (uint64_t)mf_tryLock
{
  pthread_mutex_lock(&sMutex);
  v2 = _MFFindObjectLock(self, 1);

  return _MFTryObjectLock(v2);
}

- (uint64_t)mf_lockWithPriority
{
  pthread_mutex_lock(&sMutex);
  v2 = _MFFindObjectLock(self, 2);

  return _MFAcquireObjectLock(v2);
}

- (uint64_t)mf_tryLockWithPriority
{
  pthread_mutex_lock(&sMutex);
  v2 = _MFFindObjectLock(self, 1);

  return _MFTryObjectLock(v2);
}

@end