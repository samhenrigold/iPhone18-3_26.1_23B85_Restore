@interface UAFUserManager
+ (id)getConcurrentQueue;
+ (id)removeUser:(id)user;
+ (void)performUserCleanup;
+ (void)performUserCleanupOnQueue:(id)queue completion:(id)completion;
+ (void)removeUser:(id)user queue:(id)queue completion:(id)completion;
+ (void)updateLastSeenForCurrentUserOnQueue:(id)queue completion:(id)completion;
+ (void)updateLastSeenForUser:(id)user queue:(id)queue completion:(id)completion;
@end

@implementation UAFUserManager

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_13 != -1)
  {
    dispatch_once(&_MergedGlobals_13, &__block_literal_global_13);
  }

  v3 = qword_1ED7D11A0;

  return v3;
}

void __36__UAFUserManager_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFUserManager.Concurrent", v2);
  v1 = qword_1ED7D11A0;
  qword_1ED7D11A0 = v0;
}

+ (void)updateLastSeenForCurrentUserOnQueue:(id)queue completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFUserManager getConcurrentQueue];
  }

  v15 = 0;
  v7 = [UAFUser currentUserWithNode:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [UAFUserManager updateLastSeenForUser:v7 queue:queueCopy completion:completionCopy];
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "+[UAFUserManager updateLastSeenForCurrentUserOnQueue:completion:]";
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Could not retrieve current user: %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__UAFUserManager_updateLastSeenForCurrentUserOnQueue_completion___block_invoke;
      block[3] = &unk_1E7FFD940;
      v14 = completionCopy;
      v13 = v9;
      dispatch_async(queueCopy, block);
    }
  }
}

+ (void)updateLastSeenForUser:(id)user queue:(id)queue completion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFUserManager getConcurrentQueue];
  }

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  v11 = v10;
  if (userCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "+[UAFUserManager updateLastSeenForUser:queue:completion:]";
      v30 = 2112;
      v31 = userCopy;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_INFO, "%s Updating last seen time for %@", buf, 0x16u);
    }

    v26[0] = @"Operation";
    v26[1] = @"SubscriptionUser";
    v27[0] = @"UpdateLastSeen";
    v27[1] = userCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v13 = +[UAFAssetSetManager createXPCConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_289;
    v18[3] = &unk_1E7FFE2F8;
    v19 = v13;
    v22 = completionCopy;
    v20 = queueCopy;
    v21 = userCopy;
    v14 = v13;
    [v14 operationWithConfig:v12 completion:v18];

    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "+[UAFUserManager updateLastSeenForUser:queue:completion:]";
    _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Cannot update last seen time for nil user", buf, 0xCu);
  }

  if (completionCopy)
  {
    v15 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33[0] = @"Cannot update last seen time for nil user";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v16];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke;
    block[3] = &unk_1E7FFD940;
    v24 = v17;
    v25 = completionCopy;
    v12 = v17;
    dispatch_async(queueCopy, block);

    v14 = v25;
LABEL_11:
  }
}

void __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_2;
    block[3] = &unk_1E7FFD620;
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v3;
    v8 = *(a1 + 56);
    dispatch_async(v4, block);
  }
}

uint64_t __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 136315650;
    v7 = "+[UAFUserManager updateLastSeenForUser:queue:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_INFO, "%s Update complete for %@: %{public}@", &v6, 0x20u);
  }

  return (*(a1[6] + 16))();
}

+ (void)removeUser:(id)user queue:(id)queue completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  userCopy = user;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFUserManager getConcurrentQueue];
  }

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "+[UAFUserManager removeUser:queue:completion:]";
    v26 = 2112;
    v27 = userCopy;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_INFO, "%s Removing user '%@'", buf, 0x16u);
  }

  v22[0] = @"Operation";
  v22[1] = @"SubscriptionUser";
  v23[0] = @"RemoveUser";
  v23[1] = userCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v12 = +[UAFAssetSetManager createXPCConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__UAFUserManager_removeUser_queue_completion___block_invoke;
  v17[3] = &unk_1E7FFE2F8;
  v18 = v12;
  v19 = queueCopy;
  v20 = userCopy;
  v21 = completionCopy;
  v13 = userCopy;
  v14 = queueCopy;
  v15 = completionCopy;
  v16 = v12;
  [v16 operationWithConfig:v11 completion:v17];
}

void __46__UAFUserManager_removeUser_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__UAFUserManager_removeUser_queue_completion___block_invoke_2;
    block[3] = &unk_1E7FFD620;
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v3;
    v8 = *(a1 + 56);
    dispatch_async(v4, block);
  }
}

uint64_t __46__UAFUserManager_removeUser_queue_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 136315650;
    v7 = "+[UAFUserManager removeUser:queue:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_INFO, "%s Remove complete for %@: %{public}@", &v6, 0x20u);
  }

  return (*(a1[6] + 16))();
}

+ (id)removeUser:(id)user
{
  v36 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  v4 = +[UAFSubscriptionStoreManager defaultManager];
  v5 = (v23 + 5);
  obj = v23[5];
  v6 = [v4 getSubscribers:userCopy error:&obj];
  objc_storeStrong(v5, obj);

  if (v23[5])
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = v23[5];
      *v34 = 136315394;
      *&v34[4] = "+[UAFUserManager removeUser:]";
      *&v34[12] = 2112;
      *&v34[14] = v16;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving all subscriptions: %@", v34, 0x16u);
    }

    v8 = v23[5];
  }

  else
  {
    *v34 = 0;
    *&v34[8] = v34;
    *&v34[16] = 0x2020000000;
    v35 = 1;
    if (v6 && (v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v17[2] = __29__UAFUserManager_removeUser___block_invoke, v17[3] = &unk_1E7FFE320, v18 = userCopy, v19 = &v22, v20 = v34, [v6 enumerateObjectsUsingBlock:v17], v18, (*(*&v34[8] + 24) & 1) == 0))
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "+[UAFUserManager removeUser:]";
        _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Not removing user, failed removing all subscriptions", buf, 0xCu);
      }
    }

    else
    {
      v9 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "+[UAFUserManager removeUser:]";
        v30 = 2112;
        v31 = userCopy;
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Removing user '%@' from database", buf, 0x16u);
      }

      v10 = +[UAFSubscriptionStoreManager writeManager];
      v11 = [v10 removeUser:userCopy];
      v12 = v23[5];
      v23[5] = v11;
    }

    v13 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v23[5];
      *buf = 136315650;
      v29 = "+[UAFUserManager removeUser:]";
      v30 = 2112;
      v31 = userCopy;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Completing removal of user '%@' with: %{public}@", buf, 0x20u);
    }

    v8 = v23[5];
    _Block_object_dispose(v34, 8);
  }

  _Block_object_dispose(&v22, 8);

  return v8;
}

void __29__UAFUserManager_removeUser___block_invoke(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = +[UAFSubscriptionStoreManager defaultManager];
  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [v5 getSubscriptions:v3 user:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(a1[5] + 8) + 40))
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      v18 = *(*(a1[5] + 8) + 40);
      *buf = 136315906;
      v29 = "+[UAFUserManager removeUser:]_block_invoke";
      v30 = 2112;
      v31 = v17;
      v32 = 2114;
      v33 = v3;
      v34 = 2114;
      v35 = v18;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not get subscriptions for %@ subscriber %{public}@: %{public}@", buf, 0x2Au);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __29__UAFUserManager_removeUser___block_invoke_293;
    v23 = &unk_1E7FFDEF0;
    v10 = v4;
    v24 = v10;
    [v8 enumerateObjectsUsingBlock:&v20];
    if (![UAFAssetSetManager unsubscribe:v3 subscriptions:v10 user:a1[4] storeManager:0 configurationManager:0 userInitiated:0, v20, v21, v22, v23])
    {
      *(*(a1[6] + 8) + 24) = 0;
      v11 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A588];
      v27 = @"Unsubscribe failed";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v12];
      v14 = *(a1[5] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[4];
        *buf = 136315906;
        v29 = "+[UAFUserManager removeUser:]_block_invoke_2";
        v30 = 2112;
        v31 = v19;
        v32 = 2114;
        v33 = v3;
        v34 = 2114;
        v35 = v10;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Error removing %@:%{public}@subscriber:%{public}@subscriptionNames", buf, 0x2Au);
      }
    }
  }
}

void __29__UAFUserManager_removeUser___block_invoke_293(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (void)performUserCleanupOnQueue:(id)queue completion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFUserManager getConcurrentQueue];
  }

  v16 = @"Operation";
  v17[0] = @"UserCleanup";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = +[UAFAssetSetManager createXPCConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke;
  v12[3] = &unk_1E7FFE348;
  v14 = queueCopy;
  v15 = completionCopy;
  v13 = v8;
  v9 = queueCopy;
  v10 = completionCopy;
  v11 = v8;
  [v11 operationWithConfig:v7 completion:v12];
}

void __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (*(a1 + 48))
  {
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke_2;
    v5[3] = &unk_1E7FFD5A8;
    v6 = v3;
    v7 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

uint64_t __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "+[UAFUserManager performUserCleanupOnQueue:completion:]_block_invoke_2";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_INFO, "%s User cleanup complete: %{public}@", &v5, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

+ (void)performUserCleanup
{
  v44 = *MEMORY[0x1E69E9840];
  if (+[UAFUser isMultiUser])
  {
    v2 = +[UAFSubscriptionStoreManager defaultManager];
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[UAFUserManager performUserCleanup]";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Beginning user expiration", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__8;
    v42 = __Block_byref_object_dispose__8;
    v43 = 0;
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-15552000.0];
    v5 = *(&buf + 1);
    v34 = *(*(&buf + 1) + 40);
    v6 = [v2 getUsersOlderThanDate:v4 error:&v34];
    objc_storeStrong((v5 + 40), v34);

    if (*(*(&buf + 1) + 40))
    {
      v7 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(*(&buf + 1) + 40);
        *v35 = 136315394;
        v36 = "+[UAFUserManager performUserCleanup]";
        v37 = 2114;
        v38 = v8;
        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving users older than timeout: %{public}@", v35, 0x16u);
      }
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __36__UAFUserManager_performUserCleanup__block_invoke;
      v33[3] = &unk_1E7FFE370;
      v33[4] = &buf;
      [v6 enumerateKeysAndObjectsUsingBlock:v33];
      v9 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 136315138;
        v36 = "+[UAFUserManager performUserCleanup]";
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Beginning user validation", v35, 0xCu);
      }

      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v11 = *(&buf + 1);
      obj = *(*(&buf + 1) + 40);
      v12 = [v2 getUsersOlderThanDate:distantFuture error:&obj];
      objc_storeStrong((v11 + 40), obj);

      if (*(*(&buf + 1) + 40))
      {
        v7 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v13 = *(*(&buf + 1) + 40);
          *v35 = 136315394;
          v36 = "+[UAFUserManager performUserCleanup]";
          v37 = 2114;
          v38 = v13;
          _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving all users: %{public}@", v35, 0x16u);
        }
      }

      else
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __36__UAFUserManager_performUserCleanup__block_invoke_302;
        v29[3] = &unk_1E7FFE398;
        v30 = v2;
        p_buf = &buf;
        [v12 enumerateKeysAndObjectsUsingBlock:v29];
        v14 = objc_opt_new();
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __36__UAFUserManager_performUserCleanup__block_invoke_304;
        v27[3] = &unk_1E7FFE050;
        v15 = v14;
        v28 = v15;
        [v12 enumerateKeysAndObjectsUsingBlock:v27];
        v16 = +[UAFUser validLocalNode];
        if (v16)
        {
          v17 = *(&buf + 1);
          v26 = *(*(&buf + 1) + 40);
          v18 = [UAFUser validNodesWithError:&v26];
          objc_storeStrong((v17 + 40), v26);
          if (*(*(&buf + 1) + 40) || !v18)
          {
            v20 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(*(&buf + 1) + 40);
              *v35 = 136315394;
              v36 = "+[UAFUserManager performUserCleanup]";
              v37 = 2114;
              v38 = v21;
              _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Could not get valid nodes: %{public}@", v35, 0x16u);
            }
          }

          else
          {
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __36__UAFUserManager_performUserCleanup__block_invoke_308;
            v22[3] = &unk_1E7FFE3E8;
            v23 = v16;
            v25 = &buf;
            v24 = v18;
            [v15 enumerateKeysAndObjectsUsingBlock:v22];
            v19 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v35 = 136315138;
              v36 = "+[UAFUserManager performUserCleanup]";
              _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s End of user cleanup", v35, 0xCu);
            }

            v20 = v23;
          }
        }

        else
        {
          v18 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v35 = 136315138;
            v36 = "+[UAFUserManager performUserCleanup]";
            _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Local Node is nil", v35, 0xCu);
          }
        }

        v7 = v30;
      }

      v6 = v12;
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __36__UAFUserManager_performUserCleanup__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = [UAFUser isSystemUser:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = UAFGetLogCategory(&UAFLogContextClient);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 136315650;
      v16 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v17 = 2112;
      v18 = v3;
      v19 = 2114;
      v20 = v9;
      v10 = "%s Could not determine if '%@' is system user, skipping: %{public}@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    if (v8)
    {
      *buf = 136315394;
      v16 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v17 = 2112;
      v18 = v3;
      v10 = "%s User '%@' is expired, but system user, keeping";
      v11 = v7;
      v12 = 22;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v8)
  {
    *buf = 136315394;
    v16 = "+[UAFUserManager performUserCleanup]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Beginning expiration removal of %@", buf, 0x16u);
  }

  v13 = [UAFUserManager removeUser:v3];
LABEL_9:
}

void __36__UAFUserManager_performUserCleanup__block_invoke_302(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v4 getSubscribers:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315650;
      v13 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v14 = 2112;
      v15 = v3;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Error retrieving subscribers for user '%@': %{public}@", buf, 0x20u);
    }
  }

  else if (!v6 || ![v6 count])
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Removing user that has no subscriptions: '%@'", buf, 0x16u);
    }

    v10 = [UAFUserManager removeUser:v3];
  }
}

void __36__UAFUserManager_performUserCleanup__block_invoke_304(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"Node"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1F3B6B510;
  }

  v11 = v7;
  v8 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v8)
  {
    v9 = objc_opt_new();
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v11];
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v11];
  [v10 addObject:v5];
}

void __36__UAFUserManager_performUserCleanup__block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isEqualToString:v5])
  {
    v7 = v6;
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    v9 = [UAFUser validLocalUsers:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (v9 && !*(*(*(a1 + 48) + 8) + 40))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__UAFUserManager_performUserCleanup__block_invoke_309;
      v15[3] = &unk_1E7FFE3C0;
      v16 = v9;
      v9 = v9;
      [v7 enumerateObjectsUsingBlock:v15];
    }

    else
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136315650;
        v19 = "+[UAFUserManager performUserCleanup]_block_invoke";
        v20 = 2112;
        v21 = v7;
        v22 = 2114;
        v23 = v12;
        _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Could not retrieve valid local users for %@: %{public}@", buf, 0x20u);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  if (([*(a1 + 40) containsObject:v5] & 1) == 0)
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Node '%@' removed, removing all users from node", buf, 0x16u);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__UAFUserManager_performUserCleanup__block_invoke_310;
    v13[3] = &unk_1E7FFE3C0;
    v14 = v5;
    [v6 enumerateObjectsUsingBlock:v13];
    v7 = v14;
    goto LABEL_13;
  }

LABEL_14:
}

void __36__UAFUserManager_performUserCleanup__block_invoke_309(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing deleted local user '%@'", &v6, 0x16u);
    }

    v5 = [UAFUserManager removeUser:v3];
  }
}

void __36__UAFUserManager_performUserCleanup__block_invoke_310(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "+[UAFUserManager performUserCleanup]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing user '%@' from removed node '%@'", &v7, 0x20u);
  }

  v6 = [UAFUserManager removeUser:v3];
}

@end