@interface EDConversationRemoteCloudKitStorage
+ (OS_os_log)log;
+ (id)cloudKitAPSTopics;
- (BOOL)isMigratedFromKVSStorage;
- (BOOL)synchronize;
- (EDConversationRemoteCloudKitStorage)initWithDelegate:(id)delegate;
- (EDConversationRemoteStorageDelegate)delegate;
- (id)_controlInManagedObjectContext:(id)context;
- (id)_conversationInfoWithObjectId:(id)id managedObjectContext:(id)context;
- (id)_conversationInfoWithUUID:(id)d managedObjectContext:(id)context;
- (id)_conversationInfosWithUUID:(id)d managedObjectContext:(id)context;
- (id)_transactionHistorySinceToken:(id)token managedObjectContext:(id)context error:(id *)error;
- (id)allConversationInfosInManagedObjectContext:(id)context;
- (id)dictionaryForConversationInfo:(id)info;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryRepresentation;
- (id)entityForConversationDictionary:(id)dictionary key:(id)key managedObjectContext:(id)context;
- (id)enumerateChangeHistorySinceToken:(id)token managedObjectContext:(id)context usingBlock:(id)block;
- (id)storageName;
- (void)_addOrUpdateConversationInfo:(id)info managedObjectContext:(id)context;
- (void)_handleDidResetSyncDataNotification:(id)notification;
- (void)_handleDuplicationsForConversationUUIDs:(id)ds managedObjectContext:(id)context;
- (void)_handlePushNotification:(id)notification;
- (void)_handleWillResetSyncDataNotification:(id)notification;
- (void)_initialSetup;
- (void)_recoverHistoryToken;
- (void)_removeConversationInfoWithId:(id)id managedObjectContext:(id)context;
- (void)_removeConversationInfoWithObjectId:(id)id save:(BOOL)save managedObjectContext:(id)context;
- (void)_requestExportWithManagedObjectContext:(id)context;
- (void)_requestFirstSyncWithManagedObjectContext:(id)context;
- (void)_requestImportWithManagedObjectContext:(id)context;
- (void)_retrieveChangesSinceLastRequestInManagedObjectContext:(id)context;
- (void)_updateConversationInfo:(id)info withAnotherConversationInfo:(id)conversationInfo;
- (void)persistHistoryToken;
- (void)refresh;
- (void)removeDictionaryForKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
- (void)setMigratedFromKVSStorage:(BOOL)storage;
@end

@implementation EDConversationRemoteCloudKitStorage

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDConversationRemoteCloudKitStorage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_32 != -1)
  {
    dispatch_once(&log_onceToken_32, block);
  }

  v2 = log_log_32;

  return v2;
}

void __42__EDConversationRemoteCloudKitStorage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_32;
  log_log_32 = v1;
}

- (EDConversationRemoteCloudKitStorage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = EDConversationRemoteCloudKitStorage;
  v5 = [(EDConversationRemoteCloudKitStorage *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Initializing Conversation CloudKit Storage", buf, 2u);
    }

    v8 = [EDTransactionService alloc];
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@-Export", v11];
    v13 = [(EDTransactionService *)v8 initWithServiceName:v12];
    [(EDConversationRemoteCloudKitStorage *)v6 setExportTransaction:v13];

    v14 = [EDTransactionService alloc];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"%@-Import", v17];
    v19 = [(EDTransactionService *)v14 initWithServiceName:v18];
    [(EDConversationRemoteCloudKitStorage *)v6 setImportTransaction:v19];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleWillResetSyncDataNotification_ name:*MEMORY[0x1E695D2E0] object:0];
    [defaultCenter addObserver:v6 selector:sel__handleDidResetSyncDataNotification_ name:*MEMORY[0x1E695D2D0] object:0];
    [defaultCenter addObserver:v6 selector:sel__handlePushNotification_ name:@"EDConversationRemoteCloudKitStoragePushNotificationName" object:0];
    v21 = objc_alloc_init(EDCloudMirroringPersistentStore);
    mirroringPersistentStore = v6->_mirroringPersistentStore;
    v6->_mirroringPersistentStore = v21;

    [(EDConversationRemoteCloudKitStorage *)v6 _initialSetup];
  }

  return v6;
}

- (void)_initialSetup
{
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke;
  v4[3] = &unk_1E8251DD0;
  v4[4] = self;
  [mirroringPersistentStore performBlockAndWait:v4];
}

void __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) exportTransaction];
  v5 = [v4 hasPendingTransactions];

  if (v5)
  {
    v6 = [*(a1 + 32) exportTransaction];
    [v6 resetPendingTransactions];

    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_cold_1(v7);
    }

    v8 = [*(a1 + 32) mirroringPersistentStore];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_36;
    v25[3] = &unk_1E8251DD0;
    v25[4] = *(a1 + 32);
    [v8 performBlock:v25];
  }

  v9 = [*(a1 + 32) importTransaction];
  v10 = [v9 hasPendingTransactions];

  if (v10)
  {
    v11 = [*(a1 + 32) importTransaction];
    [v11 resetPendingTransactions];

    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_cold_2(v12);
    }

    v13 = [*(a1 + 32) mirroringPersistentStore];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_38;
    v24[3] = &unk_1E8251DD0;
    v24[4] = *(a1 + 32);
    [v13 performBlock:v24];
  }

  v14 = [*(a1 + 32) _controlInManagedObjectContext:v3];
  v15 = [v14 migratedFromKVSStorage];

  v16 = *(a1 + 32);
  if (v15)
  {
    [v16 setInitialized:1];
    v17 = [*(a1 + 32) delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }

    v19 = [*(a1 + 32) delegate];
    [v19 conversationRemoteStorageDidInitialize:*(a1 + 32)];
  }

  else
  {
    v19 = [v16 mirroringPersistentStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_2;
    v23[3] = &unk_1E8251DD0;
    v23[4] = *(a1 + 32);
    [v19 performBlock:v23];
  }

LABEL_14:
  [*(a1 + 32) _recoverHistoryToken];
  v20 = [*(a1 + 32) historyToken];

  if (!v20)
  {
    v21 = [*(a1 + 32) mirroringPersistentStore];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_3;
    v22[3] = &unk_1E8251DD0;
    v22[4] = *(a1 + 32);
    [v21 performBlock:v22];
  }
}

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__EDConversationRemoteCloudKitStorage_setDictionary_forKey___block_invoke;
  v11[3] = &unk_1E8251DF8;
  v11[4] = self;
  v9 = dictionaryCopy;
  v12 = v9;
  v10 = keyCopy;
  v13 = v10;
  [mirroringPersistentStore performBlockAndWait:v11];
}

void __60__EDConversationRemoteCloudKitStorage_setDictionary_forKey___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) entityForConversationDictionary:*(a1 + 40) key:*(a1 + 48) managedObjectContext:v3];
  v5 = *(a1 + 32);
  v6 = [v4 conversationUUID];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 _handleDuplicationsForConversationUUIDs:v7 managedObjectContext:v3];

  [*(a1 + 32) _addOrUpdateConversationInfo:v4 managedObjectContext:v3];
}

- (void)removeDictionaryForKey:(id)key
{
  keyCopy = key;
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EDConversationRemoteCloudKitStorage_removeDictionaryForKey___block_invoke;
  v7[3] = &unk_1E8251E20;
  v7[4] = self;
  v6 = keyCopy;
  v8 = v6;
  [mirroringPersistentStore performBlockAndWait:v7];
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__EDConversationRemoteCloudKitStorage_dictionaryForKey___block_invoke;
  v9[3] = &unk_1E8251E48;
  v9[4] = self;
  v6 = keyCopy;
  v10 = v6;
  v11 = &v12;
  [mirroringPersistentStore performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__EDConversationRemoteCloudKitStorage_dictionaryForKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) _conversationInfoWithUUID:*(a1 + 40) managedObjectContext:?];
  v4 = [*(a1 + 32) dictionaryForConversationInfo:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)dictionaryRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__EDConversationRemoteCloudKitStorage_dictionaryRepresentation__block_invoke;
  v6[3] = &unk_1E8251E70;
  v6[4] = self;
  v6[5] = &v7;
  [mirroringPersistentStore performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __63__EDConversationRemoteCloudKitStorage_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) allConversationInfosInManagedObjectContext:v3];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [*(a1 + 32) dictionaryForConversationInfo:{v12, v17}];
        v14 = [v12 conversationUUID];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (BOOL)synchronize
{
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__EDConversationRemoteCloudKitStorage_synchronize__block_invoke;
  v5[3] = &unk_1E8251DD0;
  v5[4] = self;
  [mirroringPersistentStore performBlockAndWait:v5];

  return 1;
}

- (void)refresh
{
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__EDConversationRemoteCloudKitStorage_refresh__block_invoke;
  v4[3] = &unk_1E8251DD0;
  v4[4] = self;
  [mirroringPersistentStore performBlockAndWait:v4];
}

- (void)_requestExportWithManagedObjectContext:(id)context
{
  exportTransaction = [(EDConversationRemoteCloudKitStorage *)self exportTransaction];
  startTransaction = [exportTransaction startTransaction];

  objc_initWeak(&location, self);
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__EDConversationRemoteCloudKitStorage__requestExportWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E8251E98;
  objc_copyWeak(&v10, &location);
  v7 = startTransaction;
  v9 = v7;
  [mirroringPersistentStore requestExportWithCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __78__EDConversationRemoteCloudKitStorage__requestExportWithManagedObjectContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained exportTransaction];
  [v2 endTransaction:*(a1 + 32)];
}

- (void)_requestImportWithManagedObjectContext:(id)context
{
  contextCopy = context;
  if ([(EDConversationRemoteCloudKitStorage *)self isInitialized])
  {
    importTransaction = [(EDConversationRemoteCloudKitStorage *)self importTransaction];
    startTransaction = [importTransaction startTransaction];

    objc_initWeak(&location, self);
    mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke;
    v9[3] = &unk_1E8251E98;
    objc_copyWeak(&v11, &location);
    v8 = startTransaction;
    v10 = v8;
    [mirroringPersistentStore requestImportWithCompletionBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(EDConversationRemoteCloudKitStorage *)self _requestFirstSyncWithManagedObjectContext:contextCopy];
  }
}

void __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained mirroringPersistentStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke_2;
  v6[3] = &unk_1E8251EC0;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  v8 = a2;
  [v5 performBlock:v6];
}

void __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) importTransaction];
  [v3 endTransaction:*(a1 + 40)];

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _retrieveChangesSinceLastRequestInManagedObjectContext:v4];
  }
}

- (void)_requestFirstSyncWithManagedObjectContext:(id)context
{
  objc_initWeak(&location, self);
  importTransaction = [(EDConversationRemoteCloudKitStorage *)self importTransaction];
  startTransaction = [importTransaction startTransaction];

  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E8251E98;
  objc_copyWeak(&v10, &location);
  v7 = startTransaction;
  v9 = v7;
  [mirroringPersistentStore requestImportWithCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained importTransaction];
  [v5 endTransaction:*(a1 + 32)];

  v6 = [WeakRetained mirroringPersistentStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke_2;
  v7[3] = &unk_1E8251EE8;
  v7[4] = WeakRetained;
  v8 = a2;
  [v6 performBlock:v7];
}

void __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "First request import arrived. Success: %lu", &v9, 0xCu);
  }

  if (*(a1 + 40) == 1 && ([*(a1 + 32) isInitialized] & 1) == 0)
  {
    [*(a1 + 32) setInitialized:1];
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 conversationRemoteStorageDidInitialize:*(a1 + 32)];
    }

    [*(a1 + 32) _retrieveChangesSinceLastRequestInManagedObjectContext:v3];
  }
}

- (void)_handlePushNotification:(id)notification
{
  notificationCopy = notification;
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__EDConversationRemoteCloudKitStorage__handlePushNotification___block_invoke;
  v7[3] = &unk_1E8251E20;
  v6 = notificationCopy;
  v8 = v6;
  selfCopy = self;
  [mirroringPersistentStore performBlock:v7];
}

void __63__EDConversationRemoteCloudKitStorage__handlePushNotification___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695B9D8];
  v5 = [*(a1 + 32) userInfo];
  v6 = [v4 notificationFromRemoteNotificationDictionary:v5];

  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "APS Push received - %{public}@", &v8, 0xCu);
  }

  [*(a1 + 40) _requestImportWithManagedObjectContext:v3];
}

- (id)storageName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isMigratedFromKVSStorage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__EDConversationRemoteCloudKitStorage_isMigratedFromKVSStorage__block_invoke;
  v5[3] = &unk_1E8251F10;
  v5[4] = self;
  v5[5] = &v6;
  [mirroringPersistentStore performBlockAndWait:v5];

  LOBYTE(mirroringPersistentStore) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return mirroringPersistentStore;
}

void __63__EDConversationRemoteCloudKitStorage_isMigratedFromKVSStorage__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _controlInManagedObjectContext:?];
  *(*(*(a1 + 40) + 8) + 24) = [v3 migratedFromKVSStorage];
}

- (void)setMigratedFromKVSStorage:(BOOL)storage
{
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke;
  v6[3] = &unk_1E8251EE8;
  v6[4] = self;
  storageCopy = storage;
  [mirroringPersistentStore performBlockAndWait:v6];
}

void __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _controlInManagedObjectContext:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CloudKitControl" inManagedObjectContext:v3];
  }

  [v4 setMigratedFromKVSStorage:*(a1 + 40)];
  v8[0] = 0;
  v5 = [v3 save:v8];
  v6 = v8[0];
  if ((v5 & 1) == 0)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke_cold_1();
    }
  }
}

+ (id)cloudKitAPSTopics
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = cloudKitAPSTopics_cloudKitAPSTopics;
  if (!cloudKitAPSTopics_cloudKitAPSTopics)
  {
    v6[0] = @"com.apple.icloud-container.com.apple.mobilemail";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = cloudKitAPSTopics_cloudKitAPSTopics;
    cloudKitAPSTopics_cloudKitAPSTopics = v3;

    v2 = cloudKitAPSTopics_cloudKitAPSTopics;
  }

  return v2;
}

- (id)entityForConversationDictionary:(id)dictionary key:(id)key managedObjectContext:(id)context
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  contextCopy = context;
  v11 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfoWithUUID:keyCopy managedObjectContext:contextCopy];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"ConversationInfo" inManagedObjectContext:contextCopy];
  }

  [v11 setConversationUUID:keyCopy];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
  unsignedLongLongValue = [v12 unsignedLongLongValue];

  [v11 setNotifyMe:unsignedLongLongValue & 1];
  [v11 setMuted:(unsignedLongLongValue >> 2) & 1];
  v14 = [dictionaryCopy objectForKeyedSubscript:@"message-ids"];
  [v11 setMessageIds:v14];

  v15 = MEMORY[0x1E695DF00];
  v16 = [dictionaryCopy objectForKeyedSubscript:@"last-modified"];
  [v16 doubleValue];
  v17 = [v15 dateWithTimeIntervalSince1970:?];
  [v11 setLastModified:v17];

  return v11;
}

- (id)dictionaryForConversationInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([infoCopy muted])
    {
      notifyMe = 4;
    }

    else
    {
      notifyMe = [infoCopy notifyMe];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:notifyMe];
    [v4 setObject:v6 forKeyedSubscript:@"flags"];

    messageIds = [infoCopy messageIds];
    [v4 setObject:messageIds forKeyedSubscript:@"message-ids"];

    v8 = MEMORY[0x1E696AD98];
    lastModified = [infoCopy lastModified];
    [lastModified timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    [v4 setObject:v10 forKeyedSubscript:@"last-modified"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)persistHistoryToken
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to archive history token - Error: %{public}@", v5);
}

- (void)_recoverHistoryToken
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to unarchive history token - Error: %{public}@", v5);
}

- (void)_handleDuplicationsForConversationUUIDs:(id)ds managedObjectContext:(id)context
{
  v42 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = dsCopy;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (!v9)
  {
LABEL_24:

    goto LABEL_25;
  }

  v10 = 0;
  v23 = *v33;
  v24 = v9;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v33 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfosWithUUID:*(*(&v32 + 1) + 8 * i) managedObjectContext:contextCopy];
      if ([v25 count] >= 2)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v25 subarrayWithRange:{1, objc_msgSend(v25, "count") - 1}];
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v12)
        {
          v13 = *v29;
          do
          {
            v14 = 0;
            do
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v28 + 1) + 8 * v14);
              v16 = [objc_opt_class() log];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                conversationUUID = [v15 conversationUUID];
                objectID = [v15 objectID];
                *buf = 138543618;
                v37 = conversationUUID;
                v38 = 2114;
                v39 = objectID;
                _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Deleting duplicated object. %{public}@, %{public}@", buf, 0x16u);
              }

              objectID2 = [v15 objectID];
              [(EDConversationRemoteCloudKitStorage *)self _removeConversationInfoWithObjectId:objectID2 save:0 managedObjectContext:contextCopy];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v12);
        }

        v10 = 1;
      }
    }

    v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  }

  while (v24);

  if (v10)
  {
    v27 = 0;
    v20 = [contextCopy save:&v27];
    v8 = v27;
    if ((v20 & 1) == 0)
    {
      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDConversationRemoteCloudKitStorage _handleDuplicationsForConversationUUIDs:managedObjectContext:];
      }
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (id)_conversationInfoWithUUID:(id)d managedObjectContext:(id)context
{
  v4 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfosWithUUID:d managedObjectContext:context];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)_conversationInfosWithUUID:(id)d managedObjectContext:(id)context
{
  v16[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v7 = +[EDConversationInfo fetchRequest];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"conversationUUID == %@", dCopy];
  [v7 setPredicate:dCopy];

  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"lastModified" ascending:0];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v7 setSortDescriptors:v10];

  v15 = 0;
  v11 = [contextCopy executeFetchRequest:v7 error:&v15];
  v12 = v15;
  if (v12)
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _conversationInfosWithUUID:managedObjectContext:];
    }
  }

  return v11;
}

- (void)_addOrUpdateConversationInfo:(id)info managedObjectContext:(id)context
{
  v9[4] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9[0] = 0;
  v6 = [context save:v9];
  v7 = v9[0];
  if ((v6 & 1) == 0)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [infoCopy conversationUUID];
      objc_claimAutoreleasedReturnValue();
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _addOrUpdateConversationInfo:managedObjectContext:];
    }
  }
}

- (void)_updateConversationInfo:(id)info withAnotherConversationInfo:(id)conversationInfo
{
  infoCopy = info;
  conversationInfoCopy = conversationInfo;
  [infoCopy setNotifyMe:{objc_msgSend(conversationInfoCopy, "notifyMe")}];
  [infoCopy setMuted:{objc_msgSend(conversationInfoCopy, "muted")}];
  messageIds = [conversationInfoCopy messageIds];
  [infoCopy setMessageIds:messageIds];

  lastModified = [conversationInfoCopy lastModified];
  [infoCopy setLastModified:lastModified];
}

- (void)_removeConversationInfoWithId:(id)id managedObjectContext:(id)context
{
  v12[4] = *MEMORY[0x1E69E9840];
  idCopy = id;
  contextCopy = context;
  v8 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfoWithUUID:idCopy managedObjectContext:contextCopy];
  if (v8)
  {
    [contextCopy deleteObject:v8];
    v12[0] = 0;
    v9 = [contextCopy save:v12];
    v10 = v12[0];
    if ((v9 & 1) == 0)
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v10 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDConversationRemoteCloudKitStorage _removeConversationInfoWithId:managedObjectContext:];
      }
    }
  }
}

- (void)_removeConversationInfoWithObjectId:(id)id save:(BOOL)save managedObjectContext:(id)context
{
  saveCopy = save;
  v16[8] = *MEMORY[0x1E69E9840];
  idCopy = id;
  contextCopy = context;
  v16[0] = 0;
  v9 = [contextCopy existingObjectWithID:idCopy error:v16];
  v10 = v16[0];
  if (v10)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _removeConversationInfoWithObjectId:save:managedObjectContext:];
    }
  }

  if (v9)
  {
    [contextCopy deleteObject:v9];
    if (saveCopy)
    {
      v15 = 0;
      v12 = [contextCopy save:&v15];
      v13 = v15;
      if ((v12 & 1) == 0)
      {
        v14 = [objc_opt_class() log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [v13 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDConversationRemoteCloudKitStorage _removeConversationInfoWithId:managedObjectContext:];
        }
      }
    }
  }
}

- (id)allConversationInfosInManagedObjectContext:(id)context
{
  v9[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = +[EDConversationInfo fetchRequest];
  v9[0] = 0;
  v5 = [contextCopy executeFetchRequest:v4 error:v9];
  v6 = v9[0];
  if (v6)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage allConversationInfosInManagedObjectContext:];
    }
  }

  return v5;
}

- (id)_controlInManagedObjectContext:(id)context
{
  v10[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = +[EDCloudKitControl fetchRequest];
  v10[0] = 0;
  v5 = [contextCopy executeFetchRequest:v4 error:v10];
  v6 = v10[0];
  firstObject = [v5 firstObject];
  if (!v5)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _controlInManagedObjectContext:];
    }
  }

  return firstObject;
}

- (void)_handleWillResetSyncDataNotification:(id)notification
{
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__EDConversationRemoteCloudKitStorage__handleWillResetSyncDataNotification___block_invoke;
  v5[3] = &unk_1E8251DD0;
  v5[4] = self;
  [mirroringPersistentStore performBlock:v5];
}

void __76__EDConversationRemoteCloudKitStorage__handleWillResetSyncDataNotification___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "CoreData will reset sync couldKit data", v6, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 conversationRemoteStorageWillResetData:*(a1 + 32)];
  }
}

- (void)_handleDidResetSyncDataNotification:(id)notification
{
  mirroringPersistentStore = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__EDConversationRemoteCloudKitStorage__handleDidResetSyncDataNotification___block_invoke;
  v5[3] = &unk_1E8251DD0;
  v5[4] = self;
  [mirroringPersistentStore performBlock:v5];
}

void __75__EDConversationRemoteCloudKitStorage__handleDidResetSyncDataNotification___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "CoreData did reset sync couldKit data", v6, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 conversationRemoteStorageDidResetData:*(a1 + 32)];
  }
}

- (void)_retrieveChangesSinceLastRequestInManagedObjectContext:(id)context
{
  contextCopy = context;
  historyToken = [(EDConversationRemoteCloudKitStorage *)self historyToken];

  if (historyToken)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  historyToken2 = [(EDConversationRemoteCloudKitStorage *)self historyToken];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke;
  v14[3] = &unk_1E8251F38;
  v8 = contextCopy;
  v15 = v8;
  selfCopy = self;
  v17 = &v18;
  v9 = [(EDConversationRemoteCloudKitStorage *)self enumerateChangeHistorySinceToken:historyToken2 managedObjectContext:v8 usingBlock:v14];
  [(EDConversationRemoteCloudKitStorage *)self setHistoryToken:v9];

  if ([v19[5] count])
  {
    allKeys = [v19[5] allKeys];
    [(EDConversationRemoteCloudKitStorage *)self _handleDuplicationsForConversationUUIDs:allKeys managedObjectContext:v8];

    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "Finished handling core data changes", v13, 2u);
    }

    delegate = [(EDConversationRemoteCloudKitStorage *)self delegate];
    [delegate conversationRemoteStorage:self didChangeEntries:v19[5] reason:v6];
  }

  [(EDConversationRemoteCloudKitStorage *)self persistHistoryToken];

  _Block_object_dispose(&v18, 8);
}

void __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v3 = [v27 author];
  v4 = [v3 componentsSeparatedByString:@"."];

  v26 = v4;
  v5 = [v4 firstObject];
  v6 = [*(a1 + 32) transactionAuthor];
  LOBYTE(v4) = [v5 isEqualToString:v6];

  if ((v4 & 1) == 0)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Started handling core data changes", buf, 2u);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v27 changes];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v9)
    {
      v10 = *v35;
      do
      {
        v11 = 0;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 changeType];
          if (!v14)
          {
            v24 = *(a1 + 40);
            v25 = [v12 changedObjectID];
            v17 = [v24 _conversationInfoWithObjectId:v25 managedObjectContext:*(a1 + 32)];

            if (!v17)
            {
              v18 = [objc_opt_class() log];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_4(&v32, v33);
              }

              goto LABEL_30;
            }

            v21 = [objc_opt_class() log];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v39 = v17;
              _os_log_debug_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEBUG, "EDConversationInfo added. %{public}@", buf, 0xCu);
            }

LABEL_19:

            v18 = [*(a1 + 40) dictionaryForConversationInfo:v17];
            v22 = *(*(*(a1 + 48) + 8) + 40);
            v23 = [v17 conversationUUID];
            [v22 setObject:v18 forKeyedSubscript:v23];

            goto LABEL_30;
          }

          if (v14 == 1)
          {
            v19 = *(a1 + 40);
            v20 = [v12 changedObjectID];
            v17 = [v19 _conversationInfoWithObjectId:v20 managedObjectContext:*(a1 + 32)];

            if (!v17)
            {
              v18 = [objc_opt_class() log];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_3(&v30, v31);
              }

              goto LABEL_30;
            }

            v21 = [objc_opt_class() log];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v39 = v17;
              _os_log_debug_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEBUG, "EDConversationInfo updated/inserted. %{public}@", buf, 0xCu);
            }

            goto LABEL_19;
          }

          if (v14 != 2)
          {
            goto LABEL_31;
          }

          v15 = [objc_opt_class() log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [v12 changedObjectID];
            objc_claimAutoreleasedReturnValue();
            __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_1();
          }

          v16 = [v12 tombstone];
          v17 = [v16 objectForKeyedSubscript:@"conversationUUID"];

          if (v17)
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [*(*(*(a1 + 48) + 8) + 40) setObject:v18 forKeyedSubscript:v17];
          }

          else
          {
            v18 = [objc_opt_class() log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_2(&v28, v29);
            }
          }

LABEL_30:

LABEL_31:
          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }
  }
}

- (id)enumerateChangeHistorySinceToken:(id)token managedObjectContext:(id)context usingBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  blockCopy = block;
  v10 = tokenCopy;
  v28 = 0;
  v11 = [(EDConversationRemoteCloudKitStorage *)self _transactionHistorySinceToken:v10 managedObjectContext:context error:&v28];
  v12 = v28;
  token = v10;
  if (v11)
  {
    token = v10;
    if ([v11 count])
    {
      v22 = v12;
      v27 = 0;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
      token = v10;
      if (v15)
      {
        v16 = *v24;
        token = v10;
LABEL_5:
        v17 = 0;
        v18 = token;
        while (1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * v17);
          blockCopy[2](blockCopy, v19, &v27);
          token = [v19 token];

          if (v27)
          {
            break;
          }

          ++v17;
          v18 = token;
          if (v15 == v17)
          {
            v15 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v12 = v22;
    }
  }

  if (v12 && [v12 code] == 134301)
  {
    v20 = 0;
  }

  else
  {
    v20 = token;
  }

  return v20;
}

- (id)_transactionHistorySinceToken:(id)token managedObjectContext:(id)context error:(id *)error
{
  v17[4] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  contextCopy = context;
  v9 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:tokenCopy];
  [v9 setResultType:5];
  v17[0] = 0;
  v10 = [contextCopy executeRequest:v9 error:v17];
  v11 = v17[0];
  v12 = v11;
  if (error)
  {
    v13 = v11;
    *error = v12;
  }

  if (v10 && [v10 resultType] == 5)
  {
    result = [v10 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v15 = [objc_opt_class() log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDConversationRemoteCloudKitStorage _transactionHistorySinceToken:result managedObjectContext:v15 error:?];
    }
  }

  else
  {
    result = [objc_opt_class() log];
    if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _transactionHistorySinceToken:managedObjectContext:error:];
    }
  }

  result = 0;
LABEL_12:

  return result;
}

- (id)_conversationInfoWithObjectId:(id)id managedObjectContext:(id)context
{
  v14[4] = *MEMORY[0x1E69E9840];
  idCopy = id;
  v14[0] = 0;
  v6 = [context existingObjectWithID:idCopy error:v14];
  v7 = v14[0];
  if (v7)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _conversationInfoWithObjectId:managedObjectContext:];
    }
  }

  if (v6 && ([v6 entity], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"ConversationInfo"), v10, v9, v11))
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (EDConversationRemoteStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to save Control - Error: %{public}@", v5);
}

- (void)_handleDuplicationsForConversationUUIDs:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to save _handleDuplicationsForConversationUUIDs - Error: %{public}@", v5);
}

- (void)_conversationInfosWithUUID:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to fetching EDConversationInfo with ID: %{public}@ - Error: %{public}@", v4, v5);
}

- (void)_addOrUpdateConversationInfo:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to save EDConversationInfo %{public}@ - Error: %{public}@", v5, v6);
}

- (void)_removeConversationInfoWithId:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to delete EDConversationInfo %{public}@ - Error: %{public}@", v4, v5);
}

- (void)_removeConversationInfoWithObjectId:save:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed fetching EDConversationInfo to remove. ObjectId: %{public}@ - Error: %{public}@", v4, v5);
}

- (void)allConversationInfosInManagedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to fetching allConversationInfos- Error: %{public}@", v5);
}

- (void)_controlInManagedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to fetching cloudKitControl: %{public}@", v5);
}

void __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "EDConversationInfo deleted. %{public}@", v4, 0xCu);
}

- (void)_transactionHistorySinceToken:(uint64_t)a1 managedObjectContext:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "persistentHistoryResult.result is not an array. Ignoring it %{public}@", &v2, 0xCu);
}

- (void)_transactionHistorySinceToken:managedObjectContext:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to fetch change history (%{public}@.)", v5);
}

- (void)_conversationInfoWithObjectId:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed fetching EDConversationInfo. ObjectId: %{public}@ - Error: %{public}@", v4, v5);
}

@end