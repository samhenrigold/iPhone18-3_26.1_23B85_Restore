@interface UAFAssetSetSubscriptionManager
+ (id)getSubscribers:(id)subscribers storeManager:(id)manager error:(id *)error;
+ (id)getSubscription:(id)subscription subscriber:(id)subscriber user:(id)user storeManager:(id)manager error:(id *)error;
+ (id)getSubscriptions:(id)subscriptions user:(id)user storeManager:(id)manager error:(id *)error;
+ (void)daemonSubscriptionMigration;
+ (void)migrateSubscriptions:(id)subscriptions user:(id)user completion:(id)completion;
@end

@implementation UAFAssetSetSubscriptionManager

+ (id)getSubscriptions:(id)subscriptions user:(id)user storeManager:(id)manager error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  userCopy = user;
  managerCopy = manager;
  if (!managerCopy)
  {
    managerCopy = +[UAFSubscriptionStoreManager defaultManager];
  }

  v33 = 0;
  v12 = [managerCopy getSubscriptions:subscriptionsCopy user:userCopy error:&v33];
  v13 = v33;
  v14 = v13;
  if (v12 || !v13)
  {
    if (!+[UAFUser isMultiUser]|| [UAFUser isSystemUser:userCopy error:0])
    {
      goto LABEL_28;
    }

    v32 = v14;
    v17 = [UAFUser systemUserWithNode:0 error:&v32];
    v18 = v32;

    if (!v17 || v18)
    {
      v21 = UAFGetLogCategory(&UAFLogContextClient);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 136315394;
      v35 = "+[UAFAssetSetSubscriptionManager getSubscriptions:user:storeManager:error:]";
      v36 = 2114;
      v37 = v18;
      v22 = "%s Could not get system user: %{public}@";
      v23 = v21;
      v24 = 22;
    }

    else
    {
      v31 = 0;
      v19 = [managerCopy getSubscriptions:subscriptionsCopy user:v17 error:&v31];
      v20 = v31;
      v18 = v20;
      if (v19 || !v20)
      {
        if (!v12)
        {
          v12 = MEMORY[0x1E695E0F0];
        }

        v27 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __75__UAFAssetSetSubscriptionManager_getSubscriptions_user_storeManager_error___block_invoke;
        v29[3] = &unk_1E7FFDEF0;
        v26 = v27;
        v30 = v26;
        [v19 enumerateObjectsUsingBlock:v29];

        goto LABEL_27;
      }

      v21 = UAFGetLogCategory(&UAFLogContextClient);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        if (error)
        {
          v25 = v18;
          v26 = 0;
          *error = v18;
        }

        else
        {
          v26 = 0;
        }

LABEL_27:

        v14 = v18;
        v12 = v26;
        goto LABEL_28;
      }

      *buf = 136315906;
      v35 = "+[UAFAssetSetSubscriptionManager getSubscriptions:user:storeManager:error:]";
      v36 = 2112;
      v37 = v17;
      v38 = 2114;
      v39 = subscriptionsCopy;
      v40 = 2114;
      v41 = v18;
      v22 = "%s Could not get subscriptions for User: '%@', Subscriber: '%{public}@': %{public}@";
      v23 = v21;
      v24 = 42;
    }

    _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    goto LABEL_21;
  }

  v15 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v35 = "+[UAFAssetSetSubscriptionManager getSubscriptions:user:storeManager:error:]";
    v36 = 2112;
    v37 = userCopy;
    v38 = 2114;
    v39 = subscriptionsCopy;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Could not get subscriptions for User: '%@', Subscriber: '%{public}@': %{public}@", buf, 0x2Au);
  }

  if (error)
  {
    v16 = v14;
    v12 = 0;
    *error = v14;
  }

  else
  {
    v12 = 0;
  }

LABEL_28:

  return v12;
}

void __75__UAFAssetSetSubscriptionManager_getSubscriptions_user_storeManager_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = *(a1 + 32);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __75__UAFAssetSetSubscriptionManager_getSubscriptions_user_storeManager_error___block_invoke_2;
  v9 = &unk_1E7FFDEC8;
  v5 = v3;
  v10 = v5;
  v11 = &v12;
  [v4 enumerateObjectsUsingBlock:&v6];
  if ((v13[3] & 1) == 0)
  {
    [*(a1 + 32) addObject:{v5, v6, v7, v8, v9}];
    *(v13 + 24) = 0;
  }

  _Block_object_dispose(&v12, 8);
}

void __75__UAFAssetSetSubscriptionManager_getSubscriptions_user_storeManager_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 name];
  v7 = [*(a1 + 32) name];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)getSubscription:(id)subscription subscriber:(id)subscriber user:(id)user storeManager:(id)manager error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  subscriberCopy = subscriber;
  userCopy = user;
  managerCopy = manager;
  if (managerCopy)
  {
    if (subscriptionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    managerCopy = +[UAFSubscriptionStoreManager defaultManager];
    if (subscriptionCopy)
    {
LABEL_3:
      if (!subscriberCopy)
      {
        if (error)
        {
          v24 = MEMORY[0x1E696ABC0];
          v39 = *MEMORY[0x1E696A588];
          v40[0] = @"Both subscriptionName and subscriber must be provided";
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
          *error = [v24 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v25];
        }

        v26 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v38 = "+[UAFAssetSetSubscriptionManager getSubscription:subscriber:user:storeManager:error:]";
          _os_log_fault_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_FAULT, "%s API MISUSE: subscriptionName provided without a subscriber", buf, 0xCu);
        }

        v18 = 0;
        goto LABEL_18;
      }

      v36 = 0;
      v15 = [managerCopy getSubscription:subscriptionCopy subscriber:subscriberCopy user:userCopy error:&v36];
      v16 = v36;
      if (v16 || (v35 = 0, v17 = [UAFUser isSystemUser:userCopy error:&v35], (v16 = v35) != 0))
      {
        v18 = v16;
        if (error)
        {
          v19 = v16;
          *error = v18;
        }

        goto LABEL_8;
      }

      if (v15)
      {
        goto LABEL_21;
      }

      if (v17 | !+[UAFUser isMultiUser])
      {
LABEL_23:
        v20 = 0;
        goto LABEL_24;
      }

      v34 = 0;
      v28 = [UAFUser systemUserWithNode:0 error:&v34];
      v29 = v34;
      v18 = v29;
      if (!v28 || v29)
      {
        v15 = 0;
        if (!error)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v33 = 0;
        v15 = [managerCopy getSubscription:subscriptionCopy subscriber:subscriberCopy user:v28 error:&v33];
        v30 = v33;
        if (!v30)
        {

          if (v15)
          {
LABEL_21:
            v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];

            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v18 = v30;
        if (!error)
        {
LABEL_35:

LABEL_8:
LABEL_18:
          v20 = 0;
LABEL_19:
          v23 = 0;
          goto LABEL_25;
        }
      }

      v31 = v18;
      *error = v18;
      goto LABEL_35;
    }
  }

  v32 = 0;
  v20 = [UAFAssetSetSubscriptionManager getSubscriptions:subscriberCopy user:userCopy storeManager:managerCopy error:&v32];
  v21 = v32;
  if (v21)
  {
    v18 = v21;
    if (error)
    {
      v22 = v21;
      v23 = 0;
      *error = v18;
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_24:
  v20 = v20;
  v18 = 0;
  v23 = v20;
LABEL_25:

  return v23;
}

+ (id)getSubscribers:(id)subscribers storeManager:(id)manager error:(id *)error
{
  subscribersCopy = subscribers;
  managerCopy = manager;
  v27 = 0;
  v9 = [managerCopy getSubscribers:subscribersCopy error:&v27];
  v10 = v27;
  if (v10 || (v26 = 0, v11 = [UAFUser isSystemUser:subscribersCopy error:&v26], (v10 = v26) != 0))
  {
    v12 = v10;
    if (error)
    {
      v13 = v10;
      v14 = 0;
      *error = v12;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v11 | !+[UAFUser isMultiUser])
  {
LABEL_6:
    v9 = v9;
    v12 = 0;
    v14 = v9;
    goto LABEL_17;
  }

  v25 = 0;
  v15 = [UAFUser systemUserWithNode:0 error:&v25];
  v16 = v25;
  v12 = v16;
  if (!v15 || v16)
  {
    if (error)
    {
      v20 = v16;
      *error = v12;
    }
  }

  else
  {
    v24 = 0;
    v17 = [managerCopy getSubscribers:v15 error:&v24];
    v18 = v24;
    if (!v18)
    {
      v22 = [MEMORY[0x1E695DFA8] setWithArray:v9];
      [v22 addObjectsFromArray:v17];
      allObjects = [v22 allObjects];

      v9 = allObjects;
      goto LABEL_6;
    }

    v12 = v18;
    if (error)
    {
      v19 = v18;
      *error = v12;
    }
  }

LABEL_16:
  v14 = 0;
LABEL_17:

  return v14;
}

+ (void)daemonSubscriptionMigration
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v2 = [UAFSubscriptionStoreManager alloc];
  v3 = +[UAFCommonUtilities getUserDefaultStoragePath];
  v31 = [(UAFSubscriptionStoreManager *)v2 initWithDbDirPath:v3 dbName:0 readOnly:0 allowCreate:1];

  v4 = [v27[5] getSystemConfigurationForKey:@"HasMigrated"];
  if ([v4 isEqualToString:@"1"])
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "+[UAFAssetSetSubscriptionManager daemonSubscriptionMigration]";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_INFO, "%s User database subscriptions have already migrated, skipping", buf, 0xCu);
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v27[5];
    v25 = 0;
    v6 = [v8 getAllSubscriptions:&v25];
    v9 = v25;
    if (v9)
    {
      v7 = v9;
      v5 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "+[UAFAssetSetSubscriptionManager daemonSubscriptionMigration]";
        v36 = 2114;
        v37 = v7;
        _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Could not retrieve all user subscriptions: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (!v6)
      {
        v6 = MEMORY[0x1E695E0F8];
      }

      v24 = 0;
      v5 = [UAFUser currentUserWithNode:0 error:&v24];
      v10 = v24;
      v7 = v10;
      if (!v5 || v10)
      {
        v17 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "+[UAFAssetSetSubscriptionManager daemonSubscriptionMigration]";
          v36 = 2114;
          v37 = v7;
          _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Could not determine current user: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v11 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "+[UAFAssetSetSubscriptionManager daemonSubscriptionMigration]";
          v36 = 2112;
          v37 = v5;
          _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Migrating subscriptions for user '%@'", buf, 0x16u);
        }

        v12 = dispatch_group_create();
        v13 = +[UAFAssetSetManager createSubscriptionXPCConnection];
        v32[0] = @"Operation";
        v32[1] = @"SubscriptionUser";
        v33[0] = @"MigrateSubscriptions";
        v33[1] = v5;
        v32[2] = @"SubscriptionsToMigrate";
        v33[2] = v6;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
        dispatch_group_enter(v12);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __61__UAFAssetSetSubscriptionManager_daemonSubscriptionMigration__block_invoke;
        v19[3] = &unk_1E7FFDF18;
        v15 = v13;
        v20 = v15;
        v16 = v5;
        v21 = v16;
        v23 = &v26;
        v17 = v12;
        v22 = v17;
        [v15 operationWithConfig:v14 completion:v19];
        dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
        v18 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "+[UAFAssetSetSubscriptionManager daemonSubscriptionMigration]";
          v36 = 2112;
          v37 = v16;
          _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Migrated subscriptions for user '%@'", buf, 0x16u);
        }
      }
    }
  }

  _Block_object_dispose(&v26, 8);
}

void __61__UAFAssetSetSubscriptionManager_daemonSubscriptionMigration__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 136315650;
    v7 = "+[UAFAssetSetSubscriptionManager daemonSubscriptionMigration]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Migration XPC for user '%@' complete with error: %{public}@", &v6, 0x20u);
  }

  if (!v3)
  {
    [*(*(*(a1 + 56) + 8) + 40) setSystemConfigurationForKey:@"HasMigrated" withValue:@"1"];
  }

  dispatch_group_leave(*(a1 + 48));
}

+ (void)migrateSubscriptions:(id)subscriptions user:(id)user completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  userCopy = user;
  completionCopy = completion;
  v10 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]";
    v31 = 2112;
    v32 = userCopy;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Received request to migrate subscriptions for user '%@'", buf, 0x16u);
  }

  v11 = +[UAFSubscriptionStoreManager writeManager];
  v28 = 0;
  v12 = [v11 getAllSubscriptions:&v28];
  v13 = v28;

  if (v13)
  {
    v14 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]";
      v31 = 2114;
      v32 = v13;
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Error getting all system subscriptions for migration: %{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v13);
    v15 = 0;
  }

  else
  {
    v27 = 0;
    v15 = [UAFUser nodeForUser:userCopy error:&v27];
    v16 = v27;
    if (v16)
    {
      v13 = v16;
      v17 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]";
        v31 = 2112;
        v32 = userCopy;
        v33 = 2114;
        v34 = v13;
        _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to determine node for user '%@': %{public}@", buf, 0x20u);
      }

      completionCopy[2](completionCopy, v13);
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke;
      v23[3] = &unk_1E7FFDF90;
      v18 = v12;
      v24 = v18;
      v19 = userCopy;
      v25 = v19;
      v15 = v15;
      v26 = v15;
      [subscriptionsCopy enumerateKeysAndObjectsUsingBlock:v23];
      v20 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]";
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Completed migration of subscriptions for user '%@', migrating system subscriptions", buf, 0x16u);
      }

      [UAFAssetSetSubscriptionManager migrateMBSetupUserSubscriptions:v18 user:v19 node:v15];
      v21 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]";
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s Completed migration of all subscriptions for user '%@', configuring", buf, 0x16u);
      }

      v22 = +[UAFAssetSetManager defaults];
      [v22 setBool:0 forKey:@"InhibitRemoval"];

      [UAFAssetSetManager configureAssetDelivery:0 configurationManager:0 lockIfUnchanged:0 oldSubscriptions:0 newSubscriptions:0 userInitiated:1];
      completionCopy[2](completionCopy, 0);

      v13 = 0;
    }
  }
}

void __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke_2;
  v5[3] = &unk_1E7FFDF68;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"com.apple.siri.uaf"] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    if (v7 && (v8 = v7, [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v5), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
    {
      v11 = objc_opt_new();
      v12 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        *buf = 136315650;
        v32 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]_block_invoke_2";
        v33 = 2112;
        v34 = v13;
        v35 = 2114;
        v36 = v5;
        _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s Subscriptions exist for user '%@' subscriber '%{public}@'", buf, 0x20u);
      }

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke_300;
      v26 = &unk_1E7FFDF40;
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v29 = v5;
      v14 = v11;
      v30 = v14;
      [v6 enumerateObjectsUsingBlock:&v23];
    }

    else
    {
      v15 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        *buf = 136315906;
        v32 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]_block_invoke";
        v33 = 2112;
        v34 = v16;
        v35 = 2114;
        v36 = v5;
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s No existing subscriptions for user %@ subscriber %{public}@, migrating all subscriptions: %{public}@", buf, 0x2Au);
      }

      v14 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
    }

    if ([v14 count])
    {
      v17 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        *buf = 136315906;
        v32 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]_block_invoke";
        v33 = 2112;
        v34 = v18;
        v35 = 2114;
        v36 = v5;
        v37 = 2114;
        v38 = v14;
        _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Migrating the following additional subscriptions: '%@': '%{public}@': %{public}@", buf, 0x2Au);
      }

      v19 = +[UAFSubscriptionStoreManager writeManager];
      v20 = [v19 subscribe:v5 subscriptions:v14 user:*(a1 + 40) node:*(a1 + 48)];

      if ((v20 & 1) == 0)
      {
        v21 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 40);
          *buf = 136315906;
          v32 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]_block_invoke";
          v33 = 2114;
          v34 = v14;
          v35 = 2114;
          v36 = v5;
          v37 = 2112;
          v38 = v22;
          _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s Failed to update storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
        }
      }
    }
  }
}

void __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke_300(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke_2_301;
  v13 = &unk_1E7FFDEC8;
  v6 = v3;
  v14 = v6;
  v15 = &v16;
  [v5 enumerateObjectsUsingBlock:&v10];

  if ((v17[3] & 1) == 0)
  {
    v7 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 136315906;
      v21 = "+[UAFAssetSetSubscriptionManager migrateSubscriptions:user:completion:]_block_invoke";
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Adding subscription %{public}@ for subscriber %{public}@ for user %@", buf, 0x2Au);
    }

    [*(a1 + 56) addObject:{v6, v10, v11, v12, v13}];
  }

  _Block_object_dispose(&v16, 8);
}

void __71__UAFAssetSetSubscriptionManager_migrateSubscriptions_user_completion___block_invoke_2_301(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 name];
  v9 = [v7 name];

  LODWORD(v7) = [v8 isEqualToString:v9];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end