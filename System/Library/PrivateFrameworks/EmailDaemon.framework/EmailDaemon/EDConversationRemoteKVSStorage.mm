@interface EDConversationRemoteKVSStorage
+ (OS_os_log)log;
- (BOOL)synchronize;
- (EDConversationRemoteKVSStorage)initWithDelegate:(id)delegate;
- (EDConversationRemoteStorageDelegate)delegate;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryRepresentation;
- (id)storageName;
- (id)subsetOfMessageIDsToSyncFromMessageIDString:(id)string;
- (void)_storeChangedExternally:(id)externally;
- (void)removeDictionaryForKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
@end

@implementation EDConversationRemoteKVSStorage

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDConversationRemoteKVSStorage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_33 != -1)
  {
    dispatch_once(&log_onceToken_33, block);
  }

  v2 = log_log_33;

  return v2;
}

void __37__EDConversationRemoteKVSStorage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_33;
  log_log_33 = v1;
}

- (EDConversationRemoteKVSStorage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = EDConversationRemoteKVSStorage;
  v5 = [(EDConversationRemoteKVSStorage *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Initializing Conversation KVS storage", buf, 2u);
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v8 = [MEMORY[0x1E696AFB8] additionalStoreWithIdentifier:@"com.apple.mail.threadinfo"];
    kvStore = v5->_kvStore;
    v5->_kvStore = v8;

    v10 = dispatch_queue_create("com.apple.mail.EDConversationRemoteKVSStorage", 0);
    privateQueue = v5->_privateQueue;
    v5->_privateQueue = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__storeChangedExternally_ name:*MEMORY[0x1E696A9E8] object:v6->_kvStore];
    v13 = v6->_privateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__EDConversationRemoteKVSStorage_initWithDelegate___block_invoke;
    block[3] = &unk_1E8250260;
    v16 = v6;
    dispatch_async(v13, block);
  }

  return v6;
}

void __51__EDConversationRemoteKVSStorage_initWithDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInitialized:1];
  v3 = [*(a1 + 32) delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 conversationRemoteStorageDidInitialize:*(a1 + 32)];
  }
}

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__EDConversationRemoteKVSStorage_setDictionary_forKey___block_invoke;
  block[3] = &unk_1E8250720;
  v12 = dictionaryCopy;
  selfCopy = self;
  v14 = keyCopy;
  v9 = keyCopy;
  v10 = dictionaryCopy;
  dispatch_sync(privateQueue, block);
}

void __55__EDConversationRemoteKVSStorage_setDictionary_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"message-ids"];
    v6 = [v3 subsetOfMessageIDsToSyncFromMessageIDString:v4];

    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"message-ids"];
    v5 = [*(a1 + 40) kvStore];
    [v5 setDictionary:*(a1 + 32) forKey:*(a1 + 48)];
  }

  else
  {
    v6 = [*(a1 + 40) kvStore];
    [v6 removeObjectForKey:*(a1 + 48)];
  }
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__EDConversationRemoteKVSStorage_dictionaryRepresentation__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__EDConversationRemoteKVSStorage_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) kvStore];
  v2 = [v5 dictionaryRepresentation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__EDConversationRemoteKVSStorage_dictionaryForKey___block_invoke;
  block[3] = &unk_1E8251C08;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(privateQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__EDConversationRemoteKVSStorage_dictionaryForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) kvStore];
  v2 = [v5 dictionaryForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeDictionaryForKey:(id)key
{
  keyCopy = key;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EDConversationRemoteKVSStorage_removeDictionaryForKey___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(privateQueue, v7);
}

void __57__EDConversationRemoteKVSStorage_removeDictionaryForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) kvStore];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (BOOL)synchronize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EDConversationRemoteKVSStorage_synchronize__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __45__EDConversationRemoteKVSStorage_synchronize__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) kvStore];
  *(*(*(a1 + 40) + 8) + 24) = [v2 synchronize];

  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = [*(a1 + 32) kvStore];
    v6 = v5;
    v7 = @"failed";
    if (v4)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Synchronizing with KVS store %@: %@", &v8, 0x16u);
  }
}

- (id)storageName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)subsetOfMessageIDsToSyncFromMessageIDString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [stringCopy componentsSeparatedByString:@" "];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__EDConversationRemoteKVSStorage_subsetOfMessageIDsToSyncFromMessageIDString___block_invoke;
  v9[3] = &unk_1E8251F60;
  v6 = v4;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];
  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

void *__78__EDConversationRemoteKVSStorage_subsetOfMessageIDsToSyncFromMessageIDString___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addObject:a2];
  if (a3 >= 5)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_storeChangedExternally:(id)externally
{
  externallyCopy = externally;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke;
  v7[3] = &unk_1E8250128;
  v8 = externallyCopy;
  selfCopy = self;
  v6 = externallyCopy;
  dispatch_async(privateQueue, v7);
}

void __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v28 = [*(a1 + 32) object];
  v24 = [*v2 userInfo];
  v3 = [v24 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  v4 = [v3 unsignedIntegerValue];

  v27 = [v24 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
  v5 = [objc_opt_class() log];
  v25 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown change reason (%lu)", v4];
    }

    else
    {
      v6 = off_1E8251FA8[v4];
    }

    *buf = 138412546;
    v37 = v6;
    v38 = 2112;
    v39 = v27;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Received external KVS change event: %@, changed keys=%@", buf, 0x16u);
  }

  if (v4 != 2)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v27, "count")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke_30;
    aBlock[3] = &unk_1E8251F88;
    v23 = v8;
    v34 = v23;
    v9 = _Block_copy(aBlock);
    if ([v27 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v27;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v11)
      {
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = [v28 dictionaryForKey:v14];
            v16 = v15;
            if (!v15)
            {
              v1 = [MEMORY[0x1E695DFB0] null];
              v16 = v1;
            }

            v9[2](v9, v14, v16, 0);
            if (!v15)
            {
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v10 = [v28 dictionaryRepresentation];
      [v10 enumerateKeysAndObjectsUsingBlock:v9];
    }

    if (v25 >= 3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown change reason (%lu)", v25];
    }

    else
    {
      v17 = off_1E8251FA8[v25];
    }

    v18 = [objc_opt_class() log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v17;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    if (v25)
    {
      v19 = a1;
      if (v25 == 1)
      {
        v20 = 1;
LABEL_36:
        v22 = [*(v19 + 40) delegate];
        [v22 conversationRemoteStorage:*(v19 + 40) didChangeEntries:v23 reason:v20];

        v7 = v23;
        goto LABEL_37;
      }

      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v17;
        _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Unknown change reason: %@", buf, 0xCu);
      }

      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    v19 = a1;
    goto LABEL_36;
  }

  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "iCloud Key Value Store Over-Quota…", buf, 2u);
  }

LABEL_37:
}

void __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (EDConversationRemoteStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end