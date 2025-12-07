@interface EDMessageAuthenticationStateMigrator
+ (OS_dispatch_queue)migrationQueue;
+ (OS_os_log)log;
+ (id)queryForInboxMessagesToAuthenticate;
+ (id)queryForNonInboxMessagesToAuthenticate;
- (EDMessageAuthenticationStateMigrator)initWithCategoryPersistence:(id)persistence authenticator:(id)authenticator messagePersistence:(id)messagePersistence;
- (void)_authenticateMessageBatch:(id)batch cancelationToken:(id)token;
- (void)_iteratePersistedMessagesDroppingLockForMatchingQuery:(id)query limit:(int64_t)limit batchSize:(int64_t)size cancelationToken:(id)token requireProtectedData:(BOOL)data handler:(id)handler completion:(id)completion;
- (void)migrateMessageAuthenticationStateForQuery:(id)query cancelationToken:(id)token completion:(id)completion;
@end

@implementation EDMessageAuthenticationStateMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDMessageAuthenticationStateMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_56 != -1)
  {
    dispatch_once(&log_onceToken_56, block);
  }

  v2 = log_log_56;

  return v2;
}

void __43__EDMessageAuthenticationStateMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_56;
  log_log_56 = v1;
}

- (EDMessageAuthenticationStateMigrator)initWithCategoryPersistence:(id)persistence authenticator:(id)authenticator messagePersistence:(id)messagePersistence
{
  persistenceCopy = persistence;
  authenticatorCopy = authenticator;
  messagePersistenceCopy = messagePersistence;
  v15.receiver = self;
  v15.super_class = EDMessageAuthenticationStateMigrator;
  v12 = [(EDMessageAuthenticationStateMigrator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_categoryPersistence, persistence);
    objc_storeStrong(&v13->_messagePersistence, messagePersistence);
    objc_storeStrong(&v13->_authenticator, authenticator);
  }

  return v13;
}

+ (OS_dispatch_queue)migrationQueue
{
  if (migrationQueue_onceToken != -1)
  {
    +[EDMessageAuthenticationStateMigrator migrationQueue];
  }

  v3 = migrationQueue_queue;

  return v3;
}

void __54__EDMessageAuthenticationStateMigrator_migrationQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.email.EDMessageAuthenticationStateMigrator", v0);
  v2 = migrationQueue_queue;
  migrationQueue_queue = v1;
}

+ (id)queryForNonInboxMessagesToAuthenticate
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699ADA0] predicateForExcludingMessagesInMailboxesWithTypes:&unk_1F45E6EC8];
  v3 = +[EDMessageListItemPredicates predicateForUnauthenticatedMessages];
  v4 = MEMORY[0x1E696AB28];
  v10[0] = v2;
  v10[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v4 andPredicateWithSubpredicates:v5];

  v7 = objc_alloc(MEMORY[0x1E699AE28]);
  v8 = [v7 initWithTargetClass:objc_opt_class() predicate:v6 sortDescriptors:MEMORY[0x1E695E0F0]];

  return v8;
}

+ (id)queryForInboxMessagesToAuthenticate
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageListItemPredicates predicateForUnauthenticatedMessages];
  v3 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithType:7];
  v4 = MEMORY[0x1E696AB28];
  v10[0] = v2;
  v10[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v4 andPredicateWithSubpredicates:v5];

  v7 = objc_alloc(MEMORY[0x1E699AE28]);
  v8 = [v7 initWithTargetClass:objc_opt_class() predicate:v6 sortDescriptors:MEMORY[0x1E695E0F0]];

  return v8;
}

- (void)migrateMessageAuthenticationStateForQuery:(id)query cancelationToken:(id)token completion:(id)completion
{
  queryCopy = query;
  tokenCopy = token;
  completionCopy = completion;
  migrationQueue = [objc_opt_class() migrationQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__EDMessageAuthenticationStateMigrator_migrateMessageAuthenticationStateForQuery_cancelationToken_completion___block_invoke;
  v15[3] = &unk_1E8253348;
  v15[4] = self;
  v16 = queryCopy;
  v17 = tokenCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = tokenCopy;
  v14 = queryCopy;
  dispatch_async(migrationQueue, v15);
}

void __110__EDMessageAuthenticationStateMigrator_migrateMessageAuthenticationStateForQuery_cancelationToken_completion___block_invoke(void *a1)
{
  v2 = +[EDMessageAuthenticationStateMigrator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Querying for messages to authenticate.", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__EDMessageAuthenticationStateMigrator_migrateMessageAuthenticationStateForQuery_cancelationToken_completion___block_invoke_14;
  v8[3] = &unk_1E82537F8;
  v6 = v5;
  v7 = a1[4];
  v9 = v6;
  v10 = v7;
  [v3 _iteratePersistedMessagesDroppingLockForMatchingQuery:v4 limit:0x7FFFFFFFFFFFFFFFLL batchSize:100 cancelationToken:v6 requireProtectedData:1 handler:v8 completion:a1[7]];
}

void __110__EDMessageAuthenticationStateMigrator_migrateMessageAuthenticationStateForQuery_cancelationToken_completion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[EDMessageAuthenticationStateMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 ef_publicDescription];
      __110__EDMessageAuthenticationStateMigrator_migrateMessageAuthenticationStateForQuery_cancelationToken_completion___block_invoke_14_cold_1(v8, &v10, v7);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([*(a1 + 32) isCanceled])
  {
    v7 = +[EDMessageAuthenticationStateMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      v11 = [v5 count];
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Migration was canceled before finishing batch of %u messages. Returning early", &v10, 8u);
    }

    goto LABEL_7;
  }

  v9 = +[EDMessageAuthenticationStateMigrator log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109120;
    v11 = [v5 count];
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Authenticating batch of %u messages.", &v10, 8u);
  }

  [*(a1 + 40) _authenticateMessageBatch:v5 cancelationToken:*(a1 + 32)];
LABEL_8:
}

- (void)_iteratePersistedMessagesDroppingLockForMatchingQuery:(id)query limit:(int64_t)limit batchSize:(int64_t)size cancelationToken:(id)token requireProtectedData:(BOOL)data handler:(id)handler completion:(id)completion
{
  dataCopy = data;
  v52 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tokenCopy = token;
  handlerCopy = handler;
  completionCopy = completion;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__21;
  v42 = __Block_byref_object_dispose__21;
  array = [MEMORY[0x1E695DF70] array];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__21;
  v36 = __Block_byref_object_dispose__21;
  v37 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __167__EDMessageAuthenticationStateMigrator__iteratePersistedMessagesDroppingLockForMatchingQuery_limit_batchSize_cancelationToken_requireProtectedData_handler_completion___block_invoke;
  aBlock[3] = &unk_1E8253820;
  aBlock[4] = &v44;
  aBlock[5] = &v38;
  aBlock[6] = &v32;
  v30 = _Block_copy(aBlock);
  v16 = 1;
  while (!v33[5] && v45[3] < limit && v16)
  {
    if ([tokenCopy isCanceled])
    {
      v26 = +[EDMessageAuthenticationStateMigrator log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v49 = tokenCopy;
        v50 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEFAULT, "MigrationToken:{%p} cancelled. Stopping EDMessageAuthenticationStateMigrator:<%p>", buf, 0x16u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      goto LABEL_25;
    }

    v17 = +[EDMessageAuthenticationStateMigrator log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v45[3];
      *buf = 134217984;
      v49 = v18;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Iterating messages for validation_state = 0. Current processedCount:%lld", buf, 0xCu);
    }

    v19 = objc_autoreleasePoolPush();
    if (limit - v45[3] >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = limit - v45[3];
    }

    messagePersistence = [(EDMessageAuthenticationStateMigrator *)self messagePersistence];
    [messagePersistence iteratePersistedMessagesMatchingQuery:queryCopy limit:sizeCopy cancelationToken:tokenCopy requireProtectedData:dataCopy handler:v30];

    if ([v39[5] count] || v33[5])
    {
      v22 = +[EDMessageAuthenticationStateMigrator log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v39[5] count];
        *buf = 134217984;
        v49 = v23;
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Invoking _authenticateMessageBatch handler for %lu messages.", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, v39[5], v33[5]);
    }

    v24 = [v39[5] count];
    [v39[5] removeAllObjects];
    v16 = v24 == sizeCopy;
    objc_autoreleasePoolPop(v19);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v25 = +[EDMessageAuthenticationStateMigrator log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Finished authenticating messages", buf, 2u);
  }

LABEL_25:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

void __167__EDMessageAuthenticationStateMigrator__iteratePersistedMessagesDroppingLockForMatchingQuery_limit_batchSize_cancelationToken_requireProtectedData_handler_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  *(*(a1[4] + 8) + 24) += [v9 count];
  if ([v9 count])
  {
    [*(*(a1[5] + 8) + 40) addObjectsFromArray:v9];
  }

  v6 = [v5 copy];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)_authenticateMessageBatch:(id)batch cancelationToken:(id)token
{
  v14 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  tokenCopy = token;
  authenticator = [(EDMessageAuthenticationStateMigrator *)self authenticator];
  v9 = [authenticator authenticateMessages:batchCopy trustingServer:1 cancelationToken:tokenCopy];

  if (v9)
  {
    v10 = +[EDMessageAuthenticationStateMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = [batchCopy count];
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Successfully authenticated a batch of messages (count:%lu)", &v12, 0xCu);
    }
  }

  else
  {
    v11 = +[EDMessageAuthenticationStateMigrator log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      -[EDMessageAuthenticationStateMigrator _authenticateMessageBatch:cancelationToken:].cold.1(&v12, [batchCopy count], v11);
    }

    if (tokenCopy)
    {
      [tokenCopy cancel];
    }
  }
}

void __110__EDMessageAuthenticationStateMigrator_migrateMessageAuthenticationStateForQuery_cancelationToken_completion___block_invoke_14_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Message authentication state migrator query failed with error %{public}@", buf, 0xCu);
}

- (void)_authenticateMessageBatch:(os_log_t)log cancelationToken:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to successfully authenticate messages (count:%lu)", buf, 0xCu);
}

@end