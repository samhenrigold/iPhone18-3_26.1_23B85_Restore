@interface _PSBlockedHandlesCache
+ (id)sharedBlockedHandlesCache;
- (BOOL)isHandleBlocked:(id)blocked;
- (_PSBlockedHandlesCache)init;
- (void)beginSyncingWithTU;
- (void)handlePrivacyManagerChangeNotification:(id)notification;
- (void)rebuildCacheFromPrivacyManager;
- (void)rebuildCacheWithBlockedHandles:(id)handles;
@end

@implementation _PSBlockedHandlesCache

+ (id)sharedBlockedHandlesCache
{
  if (sharedBlockedHandlesCache__pasOnceToken1 != -1)
  {
    +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
  }

  v3 = sharedBlockedHandlesCache_cache;

  return v3;
}

- (_PSBlockedHandlesCache)init
{
  v5.receiver = self;
  v5.super_class = _PSBlockedHandlesCache;
  v2 = [(_PSBlockedHandlesCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_PSBlockedHandlesCache *)v2 rebuildCacheWithBlockedHandles:MEMORY[0x1E695E0F0]];
  }

  return v3;
}

- (BOOL)isHandleBlocked:(id)blocked
{
  blockedCopy = blocked;
  v5 = (*(self->_isHandleBlocked + 2))();
  v6 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_PSBlockedHandlesCache *)blockedCopy isHandleBlocked:v5, v6];
  }

  v7 = (*(self->_isHandleBlocked + 2))();
  return v7;
}

- (void)beginSyncingWithTU
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [_PSBlockedHandlesCache handlePrivacyManagerChangeNotification:];
}

- (void)handlePrivacyManagerChangeNotification:(id)notification
{
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "_PSBlockedHandlesCache handling change notification", buf, 2u);
  }

  if (handlePrivacyManagerChangeNotification___pasOnceToken6 != -1)
  {
    [_PSBlockedHandlesCache handlePrivacyManagerChangeNotification:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___PSBlockedHandlesCache_handlePrivacyManagerChangeNotification___block_invoke_2;
  block[3] = &unk_1E7C24268;
  block[4] = self;
  v5 = handlePrivacyManagerChangeNotification___pasExprOnceResult;
  dispatch_async(v5, block);
}

- (void)rebuildCacheFromPrivacyManager
{
  v3 = os_transaction_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getTUPrivacyManagerClass_softClass;
  v13 = getTUPrivacyManagerClass_softClass;
  if (!getTUPrivacyManagerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getTUPrivacyManagerClass_block_invoke;
    v9[3] = &unk_1E7C23BF0;
    v9[4] = &v10;
    __getTUPrivacyManagerClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  sharedPrivacyManager = [v4 sharedPrivacyManager];
  privacyRules = [sharedPrivacyManager privacyRules];
  v8 = [privacyRules _pas_mappedArrayWithTransform:&__block_literal_global_16_0];

  [(_PSBlockedHandlesCache *)self rebuildCacheWithBlockedHandles:v8];
}

- (void)rebuildCacheWithBlockedHandles:(id)handles
{
  v45 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if ([handlesCopy count])
  {
    if ([handlesCopy count] > 0x3E7)
    {
      v13 = MEMORY[0x1E69C5CC8];
      v14 = [handlesCopy count];
      LODWORD(v15) = 897988541;
      v16 = [v13 bloomFilterInMemoryWithNumberOfValuesN:v14 errorRateP:v15];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = handlesCopy;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v35;
        do
        {
          v22 = 0;
          v23 = v20;
          do
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v34 + 1) + 8 * v22);
            v25 = objc_autoreleasePoolPush();
            v20 = [v16 computeHashesForString:v24 reuse:v23];

            [v16 setWithHashes:v20];
            objc_autoreleasePoolPop(v25);
            ++v22;
            v23 = v20;
          }

          while (v19 != v22);
          v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v19);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __57___PSBlockedHandlesCache_rebuildCacheWithBlockedHandles___block_invoke_3;
      v32[3] = &unk_1E7C242D0;
      v33 = v16;
      v27 = v16;
      v28 = MEMORY[0x1B8C8C060](v32);
      isHandleBlocked = selfCopy->_isHandleBlocked;
      selfCopy->_isHandleBlocked = v28;

      objc_sync_exit(selfCopy);
      v10 = @"bloom filter";
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:handlesCopy];
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __57___PSBlockedHandlesCache_rebuildCacheWithBlockedHandles___block_invoke_2;
      v38[3] = &unk_1E7C242D0;
      v39 = v5;
      v7 = v5;
      v8 = MEMORY[0x1B8C8C060](v38);
      v9 = selfCopy2->_isHandleBlocked;
      selfCopy2->_isHandleBlocked = v8;

      objc_sync_exit(selfCopy2);
      v10 = @"set";
    }
  }

  else
  {
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    v12 = selfCopy3->_isHandleBlocked;
    selfCopy3->_isHandleBlocked = &__block_literal_global_22_0;

    objc_sync_exit(selfCopy3);
    v10 = @"empty";
  }

  v30 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [handlesCopy count];
    *buf = 134218242;
    v41 = v31;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_DEFAULT, "_PSBlockedHandlesCache rebuilt cache with %tu blocked handles using %@ path", buf, 0x16u);
  }
}

- (void)isHandleBlocked:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138478083;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "_PSBlockedHandlesCache _isHandleBlocked:%{private}@ result:%d", &v3, 0x12u);
}

@end