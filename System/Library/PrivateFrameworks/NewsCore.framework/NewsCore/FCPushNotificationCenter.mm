@interface FCPushNotificationCenter
- (FCPushNotificationCenter)init;
- (id)serverChangeTokenKey;
- (void)addObserver:(void *)observer forChangesToRecordZoneID:(void *)d usingBlock:;
- (void)disableSyncing;
- (void)enableSyncing;
- (void)handleRemoteNotification:(id)notification completionHandler:(id)handler;
- (void)initWithPrivateDatabase:(void *)database storeDirectory:;
- (void)prepareForUse;
- (void)removeRecordZoneObserver:(uint64_t)observer;
@end

@implementation FCPushNotificationCenter

- (void)disableSyncing
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    *(self + 8) = 0;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    serverChangeTokenKey = [FCPushNotificationCenter serverChangeTokenKey];
    [standardUserDefaults removeObjectForKey:serverChangeTokenKey];

    if (*(self + 8) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be disabled"];
      v5 = 136315906;
      v6 = "[FCPushNotificationCenter(Setup) disableSyncing]";
      v7 = 2080;
      v8 = "FCPushNotificationCenter.m";
      v9 = 1024;
      v10 = 260;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
    }
  }
}

- (id)serverChangeTokenKey
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu-%lu", @"server-change-token", 2, 4];

  return v0;
}

- (FCPushNotificationCenter)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPushNotificationCenter init]";
    v10 = 2080;
    v11 = "FCPushNotificationCenter.m";
    v12 = 1024;
    v13 = 61;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPushNotificationCenter init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)initWithPrivateDatabase:(void *)database storeDirectory:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  databaseCopy = database;
  if (self)
  {
    if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDatabase != nil"];
      *buf = 136315906;
      v15 = "[FCPushNotificationCenter initWithPrivateDatabase:storeDirectory:]";
      v16 = 2080;
      v17 = "FCPushNotificationCenter.m";
      v18 = 1024;
      v19 = 66;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v13.receiver = self;
    v13.super_class = FCPushNotificationCenter;
    v8 = objc_msgSendSuper2(&v13, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      v9 = [[FCMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:0];
      v10 = self[3];
      self[3] = v9;
    }
  }

  return self;
}

- (void)addObserver:(void *)observer forChangesToRecordZoneID:(void *)d usingBlock:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  observerCopy = observer;
  dCopy = d;
  if (!self)
  {
    goto LABEL_13;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v16 = "[FCPushNotificationCenter addObserver:forChangesToRecordZoneID:usingBlock:]";
    v17 = 2080;
    v18 = "FCPushNotificationCenter.m";
    v19 = 1024;
    v20 = 82;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!observerCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordZoneID != nil"];
        *buf = 136315906;
        v16 = "[FCPushNotificationCenter addObserver:forChangesToRecordZoneID:usingBlock:]";
        v17 = 2080;
        v18 = "FCPushNotificationCenter.m";
        v19 = 1024;
        v20 = 83;
        v21 = 2114;
        v22 = v13;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!observerCopy)
  {
    goto LABEL_5;
  }

  if (dCopy)
  {
    if (v7 && observerCopy)
    {
      v10 = [dCopy copy];
      v11 = [FCPair pairWithFirst:observerCopy second:v10];

      [*(self + 24) setObject:v11 forKey:v7];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v16 = "[FCPushNotificationCenter addObserver:forChangesToRecordZoneID:usingBlock:]";
    v17 = 2080;
    v18 = "FCPushNotificationCenter.m";
    v19 = 1024;
    v20 = 84;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_13:
}

- (void)removeRecordZoneObserver:(uint64_t)observer
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observer)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (v3)
    {
      [*(observer + 24) removeObjectForKey:v3];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
      *buf = 136315906;
      v6 = "[FCPushNotificationCenter removeRecordZoneObserver:]";
      v7 = 2080;
      v8 = "FCPushNotificationCenter.m";
      v9 = 1024;
      v10 = 96;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }
}

- (void)handleRemoteNotification:(id)notification completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  handlerCopy = handler;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = FCCloudKitLog;
  if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = notificationCopy;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "handling notification userInfo:%@", &buf, 0xCu);
  }

  v9 = [MEMORY[0x1E695B9D8] notificationFromRemoteNotificationDictionary:notificationCopy];
  subscriptionID = [v9 subscriptionID];
  if ([v9 notificationType] == 4 && objc_msgSend(subscriptionID, "isEqualToString:", @"private-db-sub"))
  {
    v11 = handlerCopy;
    if (self)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      serverChangeTokenKey = [FCPushNotificationCenter serverChangeTokenKey];
      v14 = [standardUserDefaults objectForKey:serverChangeTokenKey];

      v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      v23 = v14;
      v16 = v11;
      if (v14)
      {
        v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v14 error:0];
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v20 = 17;
      }

      else
      {
        v20 = 25;
      }

      privateDatabase = self->_privateDatabase;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v25 = __81__FCPushNotificationCenter__handlePrivateDatabaseNotification_completionHandler___block_invoke;
      v26 = &unk_1E7C3C9C8;
      selfCopy = self;
      v28 = v16;
      v22 = privateDatabase;
      v11 = v16;
      [(FCCKPrivateDatabase *)v22 fetchAllDatabaseChangesWithServerChangeToken:v17 qualityOfService:v20 completionQueue:MEMORY[0x1E69E96A0] completionHandler:&buf];
    }
  }

  else
  {
    v18 = objc_opt_new();
    v19 = v18;
    if (v18)
    {
      *(v18 + 8) = 0;
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v18);
    }
  }
}

void __81__FCPushNotificationCenter__handlePrivateDatabaseNotification_completionHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = FCCloudKitLog;
  v13 = os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v13)
    {
      *buf = 138412546;
      v63 = v9;
      v64 = 2112;
      v65 = v10;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "fetched database changes changedRecordZoneIDs: %@ deletedRecordZoneIDs: %@", buf, 0x16u);
    }

    v14 = *(a1 + 32);
    v50 = v9;
    v15 = v9;
    v51 = v11;
    v52 = v10;
    if (v14)
    {
      v16 = FCCloudKitLog;
      if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v15;
        _os_log_debug_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEBUG, "Zones changed: %@", buf, 0xCu);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v17 = *(v14 + 24);
      v18 = [v17 countByEnumeratingWithState:&v57 objects:buf count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v58;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(v14 + 24) objectForKey:*(*(&v57 + 1) + 8 * i)];
            v23 = [v22 first];
            if ([v15 containsObject:v23])
            {
              v24 = [v22 second];
              v24[2]();
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v57 objects:buf count:16];
        }

        while (v19);
      }

      v11 = v51;
      v10 = v52;
    }

    v25 = *(a1 + 32);
    v26 = v10;
    if (v25)
    {
      v27 = FCCloudKitLog;
      if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v26;
        _os_log_debug_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEBUG, "Zones deleted: %@", buf, 0xCu);
      }
    }

    v28 = *(a1 + 32);
    v29 = v11;
    if (v28)
    {
      v30 = FCCloudKitLog;
      if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v29;
        _os_log_debug_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_DEBUG, "Database change token updated: %@", buf, 0xCu);
      }

      v31 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v29 requiringSecureCoding:1 error:0];
      v32 = [MEMORY[0x1E695E000] standardUserDefaults];
      v33 = [FCPushNotificationCenter serverChangeTokenKey];
      [v32 setObject:v31 forKey:v33];
    }

    v34 = objc_opt_new();
    if ([v15 count])
    {
      v35 = [MEMORY[0x1E695DFA8] set];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v36 = *(a1 + 32);
      if (v36)
      {
        v36 = v36[3];
      }

      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v54;
        do
        {
          v41 = 0;
          do
          {
            if (*v54 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(a1 + 32);
            if (v42)
            {
              v43 = *(v42 + 24);
            }

            else
            {
              v43 = 0;
            }

            v44 = [v43 objectForKey:*(*(&v53 + 1) + 8 * v41)];
            v45 = [v44 first];
            if ([v15 containsObject:v45])
            {
              [v35 addObject:v45];
            }

            ++v41;
          }

          while (v39 != v41);
          v46 = [v37 countByEnumeratingWithState:&v53 objects:v61 count:16];
          v39 = v46;
        }

        while (v46);
      }

      if (v34)
      {
        v34[8] = 1;
      }

      v47 = [v35 copy];
      [(FCHandlePushNotificationResult *)v34 setRecordZoneIDs:v47];

      v11 = v51;
      v10 = v52;
    }

    v48 = FCCloudKitLog;
    v9 = v50;
    if (os_log_type_enabled(FCCloudKitLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v34;
      _os_log_impl(&dword_1B63EF000, v48, OS_LOG_TYPE_DEFAULT, "fetched database changes will return pushNotificationResult: %@", buf, 0xCu);
    }

    v49 = *(a1 + 40);
    if (v49)
    {
      (*(v49 + 16))(v49, v34);
    }
  }

  else if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "failed to fetch database changes", buf, 2u);
  }
}

- (void)enableSyncing
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    self[8] = 1;
    [self prepareForUse];
    if ((self[8] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be enabled"];
      v3 = 136315906;
      v4 = "[FCPushNotificationCenter(Setup) enableSyncing]";
      v5 = 2080;
      v6 = "FCPushNotificationCenter.m";
      v7 = 1024;
      v8 = 250;
      v9 = 2114;
      v10 = v2;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v3, 0x26u);
    }
  }
}

- (void)prepareForUse
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"record-zone-subs-deleted"];

  if ((v4 & 1) == 0)
  {
    v5 = objc_alloc_init(FCCKPrivateDeleteAllZoneSubscriptionsOperation);
    [(FCOperation *)v5 setQualityOfService:17];
    [(FCOperation *)v5 setRelativePriority:0];
    if (self)
    {
      privateDatabase = self->_privateDatabase;
    }

    else
    {
      privateDatabase = 0;
    }

    [(FCCKPrivateDatabase *)privateDatabase addOperation:v5];
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setBool:1 forKey:@"record-zone-subs-deleted"];
  }

  v10 = objc_alloc_init(FCCKPrivateSaveDatabaseSubscriptionOperation);
  [(FCOperation *)v10 setQualityOfService:17];
  [(FCOperation *)v10 setRelativePriority:0];
  [(FCCKPrivateSaveDatabaseSubscriptionOperation *)v10 setSubscriptionID:@"private-db-sub"];
  v8 = objc_alloc_init(MEMORY[0x1E695B9F0]);
  [v8 setShouldSendContentAvailable:1];
  [(FCCKPrivateSaveDatabaseSubscriptionOperation *)v10 setNotificationInfo:v8];
  if (self)
  {
    v9 = self->_privateDatabase;
  }

  else
  {
    v9 = 0;
  }

  [(FCCKPrivateDatabase *)v9 addOperation:v10];
}

@end