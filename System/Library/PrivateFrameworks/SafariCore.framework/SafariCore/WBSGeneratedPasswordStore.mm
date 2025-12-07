@interface WBSGeneratedPasswordStore
+ (WBSGeneratedPasswordStore)sharedStore;
- (NSArray)allUnexpiredGeneratedPasswords;
- (NSDate)currentExpirationDate;
- (WBSGeneratedPasswordStore)init;
- (id)_generatedPasswordsFilteringExpiredPasswords:(id)passwords olderThanDate:(id)date;
- (id)generatedPasswordsForProtectionSpace:(id)space options:(unint64_t)options;
- (id)generatedPasswordsMatchingSavedAccount:(id)account;
- (void)_loadIfNeeded;
- (void)_purgeExpiredPasswordsOnInternalQueue:(id)queue;
- (void)_removeAllGeneratedPasswordsOnInternalQueue;
- (void)_reset;
- (void)addGeneratedPassword:(id)password forProtectionSpace:(id)space inPrivateBrowsingSession:(BOOL)session completionHandler:(id)handler;
- (void)clearGeneratedPasswordsMatchingSavedAccount:(id)account completionHandler:(id)handler;
- (void)debug_removeAll;
- (void)preWarm;
- (void)removeGeneratedPassword:(id)password completionHandler:(id)handler;
- (void)removeGeneratedPasswordMatchingSavedAccount:(id)account;
- (void)synchronouslyRemoveGeneratedPasswordsNewerThanDate:(id)date;
- (void)updateGeneratedPassword:(id)password withPassword:(id)withPassword completionHandler:(id)handler;
@end

@implementation WBSGeneratedPasswordStore

+ (WBSGeneratedPasswordStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[WBSGeneratedPasswordStore sharedStore];
  }

  v3 = sharedStore_sharedStore;

  return v3;
}

void __40__WBSGeneratedPasswordStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(WBSGeneratedPasswordStore);
  v1 = sharedStore_sharedStore;
  sharedStore_sharedStore = v0;
}

- (WBSGeneratedPasswordStore)init
{
  v21.receiver = self;
  v21.super_class = WBSGeneratedPasswordStore;
  v2 = [(WBSGeneratedPasswordStore *)&v21 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.SafariCore.%@.%p", v5, v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [[WBSKeychainCredentialNotificationMonitor alloc] initWithCoalescingInterval:0.0];
    keychainMonitor = v2->_keychainMonitor;
    v2->_keychainMonitor = v9;

    objc_initWeak(&location, v2);
    v11 = v2->_queue;
    v12 = v2->_keychainMonitor;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __33__WBSGeneratedPasswordStore_init__block_invoke;
    v17[3] = &unk_1E7CF1F78;
    v13 = v11;
    v18 = v13;
    objc_copyWeak(&v19, &location);
    v14 = [(WBSKeychainCredentialNotificationMonitor *)v12 addObserverWithBlock:v17];
    [(WBSGeneratedPasswordStore *)v2 preWarm];
    v15 = v2;
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)preWarm
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__WBSGeneratedPasswordStore_preWarm__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSArray)allUnexpiredGeneratedPasswords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__WBSGeneratedPasswordStore_allUnexpiredGeneratedPasswords__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_loadIfNeeded
{
  if (!self->_cachedGeneratedPasswords)
  {
    v23 = v2;
    v24 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXPasswords(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Reloading generated passwords store", buf, 2u);
    }

    mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    safari_allGeneratedPasswordItems = [mEMORY[0x1E695AC50] safari_allGeneratedPasswordItems];

    v8 = [safari_allGeneratedPasswordItems safari_mapObjectsUsingBlock:&__block_literal_global_18_0];
    currentExpirationDate = [(WBSGeneratedPasswordStore *)self currentExpirationDate];
    v10 = [(WBSGeneratedPasswordStore *)self _generatedPasswordsFilteringExpiredPasswords:v8 olderThanDate:currentExpirationDate];

    first = [v10 first];
    v12 = [first mutableCopy];
    cachedGeneratedPasswords = self->_cachedGeneratedPasswords;
    self->_cachedGeneratedPasswords = v12;

    second = [v10 second];
    v15 = [second count];

    if (v15)
    {
      queue = self->_queue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __42__WBSGeneratedPasswordStore__loadIfNeeded__block_invoke_2;
      v20[3] = &unk_1E7CF1708;
      v20[4] = self;
      v21 = v10;
      dispatch_async(queue, v20);
    }

    v19 = WBS_LOG_CHANNEL_PREFIXPasswords(v16, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v19, OS_LOG_TYPE_DEFAULT, "Finished reloading generated passwords store", buf, 2u);
    }
  }
}

- (NSDate)currentExpirationDate
{
  v2 = [MEMORY[0x1E695DF00] now];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [currentCalendar dateByAddingUnit:16 value:-30 toDate:v2 options:0];

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v6 = [safari_browserDefaults valueForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];

  if (v6)
  {
    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v8 = [safari_browserDefaults2 integerForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];

    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [currentCalendar2 dateByAddingUnit:64 value:-v8 toDate:v2 options:0];

    v4 = v10;
  }

  return v4;
}

void __59__WBSGeneratedPasswordStore_allUnexpiredGeneratedPasswords__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNeeded];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __33__WBSGeneratedPasswordStore_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__WBSGeneratedPasswordStore_init__block_invoke_2;
  block[3] = &unk_1E7CF15E8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __33__WBSGeneratedPasswordStore_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPasswords(WeakRetained, v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Generated passwords store received Keychain update notification", buf, 2u);
    }

    if (v4[32] == 1)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXPasswords(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Generated passwords store is ignoring Keychain update notifications", buf, 2u);
      }
    }

    else
    {
      [v4 _reset];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__WBSGeneratedPasswordStore_init__block_invoke_10;
      block[3] = &unk_1E7CF15E8;
      objc_copyWeak(&v10, (a1 + 32));
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v10);
    }
  }
}

void __33__WBSGeneratedPasswordStore_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"WBSGeneratedPasswordStoreDidChangeNotification" object:v3];

    WeakRetained = v3;
  }
}

WBSGeneratedPassword *__42__WBSGeneratedPasswordStore__loadIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSGeneratedPassword alloc] initWithKeychainItemDictionary:v2];

  return v3;
}

void __42__WBSGeneratedPasswordStore__loadIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) second];
  [v1 _purgeExpiredPasswordsOnInternalQueue:v2];
}

- (void)_reset
{
  cachedGeneratedPasswords = self->_cachedGeneratedPasswords;
  self->_cachedGeneratedPasswords = 0;
}

- (void)_purgeExpiredPasswordsOnInternalQueue:(id)queue
{
  v42 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v5 = [queueCopy count];
  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Purging expired generated passwords", buf, 2u);
    }

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v9 = [safari_browserDefaults valueForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];

    if (v9)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPasswords(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_1B8447000, v12, OS_LOG_TYPE_DEFAULT, "Removing debug generated passwords limit of %@ minutes", buf, 0xCu);
      }

      safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [safari_browserDefaults2 removeObjectForKey:@"DebugGeneratedPasswordsExpirationTimeInMinutes"];
    }

    v30 = v9;
    selfCopy = self;
    self->_shouldIgnoreKeychainUpdates = 1;
    mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = queueCopy;
    v15 = queueCopy;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v16)
    {
      v18 = v16;
      v19 = *v34;
      do
      {
        v20 = 0;
        do
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v33 + 1) + 8 * v20);
          v22 = WBS_LOG_CHANNEL_PREFIXPasswords(v16, v17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            generationDate = [v21 generationDate];
            protectionSpace = [v21 protectionSpace];
            host = [protectionSpace host];
            *buf = 138412546;
            v38 = generationDate;
            v39 = 2112;
            v40 = host;
            _os_log_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEFAULT, "Removing password generated on %@ for host %@", buf, 0x16u);
          }

          v16 = [mEMORY[0x1E695AC50] safari_deleteGeneratedPassword:v21];
          ++v20;
        }

        while (v18 != v20);
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
        v18 = v16;
      }

      while (v16);
    }

    selfCopy->_shouldIgnoreKeychainUpdates = 0;
    v29 = WBS_LOG_CHANNEL_PREFIXPasswords(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v29, OS_LOG_TYPE_DEFAULT, "Finished purging expired generated passwords", buf, 2u);
    }

    queueCopy = v32;
  }
}

- (id)_generatedPasswordsFilteringExpiredPasswords:(id)passwords olderThanDate:(id)date
{
  dateCopy = date;
  v6 = MEMORY[0x1E695DF70];
  passwordsCopy = passwords;
  array = [v6 array];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __88__WBSGeneratedPasswordStore__generatedPasswordsFilteringExpiredPasswords_olderThanDate___block_invoke;
  v18 = &unk_1E7CF1FE8;
  v19 = dateCopy;
  v20 = array;
  v9 = array;
  v10 = dateCopy;
  v11 = [passwordsCopy safari_filterObjectsUsingBlock:&v15];

  v12 = [WBSPair alloc];
  v13 = [(WBSPair *)v12 initWithFirst:v11 second:v9, v15, v16, v17, v18];

  return v13;
}

uint64_t __88__WBSGeneratedPasswordStore__generatedPasswordsFilteringExpiredPasswords_olderThanDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 generationDate];
  v5 = v4;
  if (v4 && ([v4 earlierDate:*(a1 + 32)], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
    [*(a1 + 40) addObject:v3];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)addGeneratedPassword:(id)password forProtectionSpace:(id)space inPrivateBrowsingSession:(BOOL)session completionHandler:(id)handler
{
  passwordCopy = password;
  spaceCopy = space;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (!passwordCopy || !spaceCopy)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXPasswords(handlerCopy, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPasswordStore addGeneratedPassword:forProtectionSpace:inPrivateBrowsingSession:completionHandler:];
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    else if (!v14)
    {
      goto LABEL_7;
    }

    v14[2](v14, 0);
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__WBSGeneratedPasswordStore_addGeneratedPassword_forProtectionSpace_inPrivateBrowsingSession_completionHandler___block_invoke;
  v17[3] = &unk_1E7CF2010;
  objc_copyWeak(&v21, &location);
  v20 = v14;
  v18 = passwordCopy;
  v19 = spaceCopy;
  sessionCopy = session;
  dispatch_async(queue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
LABEL_7:
}

void __112__WBSGeneratedPasswordStore_addGeneratedPassword_forProtectionSpace_inPrivateBrowsingSession_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v3 = [v2 safari_addGeneratedPassword:*(a1 + 32) forProtectionSpace:*(a1 + 40) wasGeneratedInPrivateBrowsingSession:*(a1 + 64)];

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    [WeakRetained _reset];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

- (void)updateGeneratedPassword:(id)password withPassword:(id)withPassword completionHandler:(id)handler
{
  passwordCopy = password;
  withPasswordCopy = withPassword;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!passwordCopy || !withPasswordCopy)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPasswords(handlerCopy, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPasswordStore updateGeneratedPassword:withPassword:completionHandler:];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    else if (!v12)
    {
      goto LABEL_7;
    }

    v12[2](v12, 0);
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSGeneratedPasswordStore_updateGeneratedPassword_withPassword_completionHandler___block_invoke;
  block[3] = &unk_1E7CF2038;
  objc_copyWeak(&v19, &location);
  v18 = v12;
  v16 = passwordCopy;
  v17 = withPasswordCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
LABEL_7:
}

void __84__WBSGeneratedPasswordStore_updateGeneratedPassword_withPassword_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v3 = [v2 safari_updateGeneratedPassword:*(a1 + 32) withPassword:*(a1 + 40)];

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    [WeakRetained _reset];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

- (void)removeGeneratedPassword:(id)password completionHandler:(id)handler
{
  passwordCopy = password;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!passwordCopy)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswords(handlerCopy, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPasswordStore removeGeneratedPassword:v11 completionHandler:?];
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    else if (!v9)
    {
      goto LABEL_6;
    }

    v9[2](v9);
    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__WBSGeneratedPasswordStore_removeGeneratedPassword_completionHandler___block_invoke;
  v12[3] = &unk_1E7CF2060;
  objc_copyWeak(&v15, &location);
  v14 = v9;
  v13 = passwordCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_6:
}

void __71__WBSGeneratedPasswordStore_removeGeneratedPassword_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    [v2 safari_deleteGeneratedPassword:*(a1 + 32)];

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }

    [WeakRetained _reset];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }
}

- (void)synchronouslyRemoveGeneratedPasswordsNewerThanDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__WBSGeneratedPasswordStore_synchronouslyRemoveGeneratedPasswordsNewerThanDate___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v8 = dateCopy;
  selfCopy = self;
  v6 = dateCopy;
  dispatch_sync(queue, v7);
}

void __80__WBSGeneratedPasswordStore_synchronouslyRemoveGeneratedPasswordsNewerThanDate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] distantPast];
  LODWORD(v2) = [v2 isEqualToDate:v3];

  if (v2)
  {
    v6 = *(a1 + 40);

    [v6 _removeAllGeneratedPasswordsOnInternalQueue];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Removing generated passwords newer than %@", buf, 0xCu);
    }

    *(*(a1 + 40) + 32) = 1;
    v9 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v10 = [v9 safari_allGeneratedPasswordItems];
    v11 = [v10 safari_mapObjectsUsingBlock:&__block_literal_global_25_0];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 generationDate];
          v19 = [v18 laterDate:*(a1 + 32)];
          v20 = *(a1 + 32);

          if (v19 != v20)
          {
            [v9 safari_deleteGeneratedPassword:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    *(*(a1 + 40) + 32) = 0;
    v23 = WBS_LOG_CHANNEL_PREFIXPasswords(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEFAULT, "Finished removing generated passwords", buf, 2u);
    }

    [*(a1 + 40) _reset];
  }
}

WBSGeneratedPassword *__80__WBSGeneratedPasswordStore_synchronouslyRemoveGeneratedPasswordsNewerThanDate___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSGeneratedPassword alloc] initWithKeychainItemDictionary:v2];

  return v3;
}

- (void)_removeAllGeneratedPasswordsOnInternalQueue
{
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  [mEMORY[0x1E695AC50] safari_deleteAllGeneratedPasswords];

  [(WBSGeneratedPasswordStore *)self _reset];
}

- (id)generatedPasswordsForProtectionSpace:(id)space options:(unint64_t)options
{
  spaceCopy = space;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = MEMORY[0x1E695E0F0];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke;
  v11[3] = &unk_1E7CF20B0;
  v11[4] = self;
  v12 = spaceCopy;
  v13 = &v15;
  optionsCopy = options;
  v8 = spaceCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNeeded];
  v2 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke_2;
  v8[3] = &unk_1E7CF2088;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  v5 = [v2 safari_filterObjectsUsingBlock:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

BOOL __74__WBSGeneratedPasswordStore_generatedPasswordsForProtectionSpace_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 protectionSpace];
  v4 = 1;
  if (([v3 isEqualToProtectionSpaceForPasswordManager:*(a1 + 32)] & 1) == 0)
  {
    if ((*(a1 + 40) & 1) == 0 || ([*(a1 + 32) safari_protectionSpaceByReplacingHostWithHighlevelDomain], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "safari_protectionSpaceByReplacingHostWithHighlevelDomain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToProtectionSpaceForPasswordManager:", v6), v6, v5, (v7 & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)removeGeneratedPasswordMatchingSavedAccount:(id)account
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  [accountCopy protectionSpacesIncludingAdditionalSites];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    selfCopy = self;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = +[WBSGeneratedPasswordStore sharedStore];
        v13 = [v12 generatedPasswordsForProtectionSpace:v11 options:1];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __73__WBSGeneratedPasswordStore_removeGeneratedPasswordMatchingSavedAccount___block_invoke;
        v15[3] = &unk_1E7CF20D8;
        v16 = accountCopy;
        v7 = [v13 safari_firstObjectPassingTest:v15];

        if (v7)
        {

          [(WBSGeneratedPasswordStore *)selfCopy removeGeneratedPassword:v7 completionHandler:0];
          goto LABEL_11;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_11:
}

uint64_t __73__WBSGeneratedPasswordStore_removeGeneratedPasswordMatchingSavedAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 password];
  v4 = [*(a1 + 32) password];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)clearGeneratedPasswordsMatchingSavedAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(WBSGeneratedPasswordStore *)self generatedPasswordsMatchingSavedAccount:account];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WBSGeneratedPasswordStore_clearGeneratedPasswordsMatchingSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  v12 = v7;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = v7;
  dispatch_async(queue, block);
}

uint64_t __91__WBSGeneratedPasswordStore_clearGeneratedPasswordsMatchingSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeGeneratedPassword:*(*(&v8 + 1) + 8 * v6++) completionHandler:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)generatedPasswordsMatchingSavedAccount:(id)account
{
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DFA8] set];
  v17 = accountCopy;
  protectionSpacesIncludingAdditionalSites = [accountCopy protectionSpacesIncludingAdditionalSites];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [protectionSpacesIncludingAdditionalSites countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(protectionSpacesIncludingAdditionalSites);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        host = [v11 host];
        safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

        if (safari_highLevelDomainFromHost && ([v5 containsObject:safari_highLevelDomainFromHost] & 1) == 0)
        {
          v14 = +[WBSGeneratedPasswordStore sharedStore];
          v15 = [v14 generatedPasswordsForProtectionSpace:v11 options:1];

          [array addObjectsFromArray:v15];
          [v5 addObject:safari_highLevelDomainFromHost];
        }
      }

      v8 = [protectionSpacesIncludingAdditionalSites countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)debug_removeAll
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(WBSGeneratedPasswordStore *)self synchronouslyRemoveGeneratedPasswordsNewerThanDate:distantPast];
}

@end