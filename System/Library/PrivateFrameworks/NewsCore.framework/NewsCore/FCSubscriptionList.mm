@interface FCSubscriptionList
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (id)desiredKeys;
+ (id)subscriptionIDForTagID:(id)d type:(unint64_t)type;
- (BOOL)addSubscriptionForTagID:(id)d type:(unint64_t)type origin:(unint64_t)origin groupID:(id)iD notificationsEnabled:(BOOL)enabled;
- (BOOL)appendSubscriptionForTagID:(id)d type:(unint64_t)type;
- (BOOL)canAddSubscription;
- (BOOL)canHelpRestoreZoneName:(id)name;
- (BOOL)hasAutoFavoriteSubscriptionForTagID:(id)d;
- (BOOL)hasIgnoredSubscriptionForTagID:(id)d;
- (BOOL)hasMutedSubscriptionForTagID:(id)d;
- (BOOL)hasNotificationsEnabledForTagID:(id)d;
- (BOOL)hasSubscriptionForTagID:(id)d;
- (BOOL)moveSubscriptionForTagID:(id)d toIndex:(unint64_t)index;
- (BOOL)setNotificationsEnabled:(BOOL)enabled forTagID:(id)d;
- (FCSubscriptionList)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSArray)rankedAllSubscribedTagIDs;
- (NSDictionary)subscriptionsBySubscriptionID;
- (NSOrderedSet)orderedSubscribedTagIDs;
- (NSSet)allSubscribedTagIDs;
- (NSSet)autoFavoriteTagIDs;
- (NSSet)groupableTagIDs;
- (NSSet)ignoredTagIDs;
- (NSSet)mutedTagIDs;
- (NSSet)subscribedTagIDs;
- (id)_reconcileSubscriptions:(uint64_t)subscriptions;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)recordsForRestoringZoneName:(id)name;
- (id)subscriptionForTagID:(id)d type:(unint64_t)type;
- (id)subscriptionForTagIDOfAnyType:(id)type;
- (id)subscriptionsForType:(unint64_t)type;
- (void)_localAddSubscriptions:(void *)subscriptions changeSubscriptions:(void *)changeSubscriptions removeSubscriptions:;
- (void)_modifyRemoteSubscriptions:(void *)subscriptions;
- (void)_newSubscriptionOrder;
- (void)_regenerateSortedSubscriptions;
- (void)addObserver:(id)observer;
- (void)addSubscriptionsForTagIDs:(id)ds typeProvider:(id)provider originProvider:(id)originProvider completion:(id)completion;
- (void)assignOrderToTagSubscriptionsIfNeeded;
- (void)handleSyncDidResetLocalDataForRecordZoneWithID:(id)d;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)removeObserver:(id)observer;
- (void)removeSubscriptionForTagID:(id)d type:(unint64_t)type;
- (void)removeSubscriptionsForTagIDs:(id)ds typeProvider:(id)provider completion:(id)completion;
- (void)reorderSubscriptionOrderForOrderedIdentifiers:(id)identifiers;
- (void)setMutableSubscriptionsBySubscriptionID:(uint64_t)d;
@end

@implementation FCSubscriptionList

- (void)loadLocalCachesFromStore
{
  v38 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localStore = [(FCPrivateDataController *)self localStore];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [localStore allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if (([objc_opt_class() isLocalStoreKeyInternal:v9] & 1) == 0)
        {
          v10 = v9;
          objc_opt_class();
          v11 = [localStore objectForKey:v10];
          if (v11)
          {
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13 && ([v13 allKeys], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
          {
            v16 = [FCSubscription subscriptionWithSubscriptionID:v10 dictionaryRepresentation:v13];
            v17 = v16;
            if (v16 && v10 && ([v16 isDeprecated] & 1) == 0)
            {
              [dictionary setObject:v17 forKey:v10];
            }
          }

          else
          {
            v18 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v19 = v18;
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 138543618;
              v34 = v21;
              v35 = 2114;
              v36 = v10;
              _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "ERROR: %{public}@ is not a valid dictionary for key %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v6);
  }

  allValues = [dictionary allValues];
  v23 = [(FCSubscriptionList *)self _reconcileSubscriptions:allValues];

  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __46__FCSubscriptionList_loadLocalCachesFromStore__block_invoke;
  v27[3] = &unk_1E7C36C58;
  v27[4] = self;
  v28 = v23;
  v25 = v23;
  [(FCMTWriterLock *)itemsLock performWriteSync:v27];
}

- (void)_regenerateSortedSubscriptions
{
  v44 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  self = self;
  v7 = self[18];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v7;
  allValues = [v7 allValues];
  v9 = [allValues countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v11 = *v34;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v34 != v11)
      {
        objc_enumerationMutation(allValues);
      }

      v13 = *(*(&v33 + 1) + 8 * i);
      subscriptionType = [v13 subscriptionType];
      if (subscriptionType > 2)
      {
        switch(subscriptionType)
        {
          case 3:
            tagID = [v13 tagID];
            v16 = v4;
            break;
          case 4:
            tagID = [v13 tagID];
            v16 = v5;
            break;
          case 5:
            tagID = [v13 tagID];
            v16 = v6;
            break;
          default:
            continue;
        }

        goto LABEL_21;
      }

      if (!subscriptionType)
      {
        tagID = [v13 tagID];
        v16 = v2;
LABEL_21:
        [v16 addObject:tagID];
        goto LABEL_22;
      }

      if (subscriptionType != 1)
      {
        if (subscriptionType != 2)
        {
          continue;
        }

        tagID = [v13 tagID];
        v16 = v3;
        goto LABEL_21;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      tagID = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pending subscriptions are deprecated and should be filtered when loading from the cache"];
      *buf = 136315906;
      v38 = "[FCSubscriptionList _regenerateSortedSubscriptions]";
      v39 = 2080;
      v40 = "FCSubscriptionList.m";
      v41 = 1024;
      LODWORD(v42[0]) = 1277;
      WORD2(v42[0]) = 2114;
      *(v42 + 6) = tagID;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_22:
    }

    v10 = [allValues countByEnumeratingWithState:&v33 objects:v43 count:16];
  }

  while (v10);
LABEL_25:

  v17 = FCSubscriptionListLog;
  if (os_log_type_enabled(FCSubscriptionListLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v38 = v2;
    v39 = 2112;
    v40 = v4;
    v41 = 2112;
    v42[0] = v3;
    _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "subscribedTagIDs: %@ autoFavoriteTagIDs: %@ mutedTagIDs: %@", buf, 0x20u);
  }

  v19 = v2;
  objc_setProperty_nonatomic_copy(self, v18, v2, 104);
  allObjects = [v2 allObjects];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52__FCSubscriptionList__regenerateSortedSubscriptions__block_invoke;
  v31[3] = &unk_1E7C3F390;
  v32 = v29;
  v21 = v29;
  v22 = [allObjects sortedArrayUsingComparator:v31];

  v23 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v22];
  objc_setProperty_nonatomic_copy(self, v24, v23, 96);

  objc_setProperty_nonatomic_copy(self, v25, v3, 112);
  objc_setProperty_nonatomic_copy(self, v26, v4, 120);
  objc_setProperty_nonatomic_copy(self, v27, v5, 128);
  objc_setProperty_nonatomic_copy(self, v28, v6, 136);
}

void __46__FCSubscriptionList_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  [(FCSubscriptionList *)*(a1 + 32) setMutableSubscriptionsBySubscriptionID:?];
  v2 = *(a1 + 32);

  [(FCSubscriptionList *)v2 _regenerateSortedSubscriptions];
}

void __38__FCSubscriptionList_subscribedTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 104);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)subscribedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FCSubscriptionList_subscribedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSSet)mutedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__FCSubscriptionList_mutedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__FCSubscriptionList_mutedTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)autoFavoriteTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCSubscriptionList_autoFavoriteTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__FCSubscriptionList_autoFavoriteTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSDictionary)subscriptionsBySubscriptionID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__FCSubscriptionList_subscriptionsBySubscriptionID__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __51__FCSubscriptionList_subscriptionsBySubscriptionID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v6 = v2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)assignOrderToTagSubscriptionsIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  subscriptionsBySubscriptionID = [(FCSubscriptionList *)self subscriptionsBySubscriptionID];
  allValues = [subscriptionsBySubscriptionID allValues];
  v5 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_91];

  subscribedTagRanker = [(FCSubscriptionList *)self subscribedTagRanker];

  if (subscribedTagRanker)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __59__FCSubscriptionList_assignOrderToTagSubscriptionsIfNeeded__block_invoke_2;
    v17 = &unk_1E7C3C550;
    selfCopy = self;
    v7 = v5;
    v8 = &v14;
    if (self)
    {
      if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        selfCopy = [v11 initWithFormat:@"Invalid parameter not satisfying %s", "tagSubscriptions", v14, v15, v16, v17, selfCopy];
        *buf = 136315906;
        *&buf[4] = "[FCSubscriptionList _assignOrderToTagSubscriptions:withCompletion:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCSubscriptionList.m";
        *&buf[22] = 1024;
        LODWORD(v20) = 937;
        WORD2(v20) = 2114;
        *(&v20 + 6) = selfCopy;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      subscribedTagRanker2 = [(FCSubscriptionList *)self subscribedTagRanker];
      if (!subscribedTagRanker2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "tagRanker"];
        *buf = 136315906;
        *&buf[4] = "[FCSubscriptionList _assignOrderToTagSubscriptions:withCompletion:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCSubscriptionList.m";
        *&buf[22] = 1024;
        LODWORD(v20) = 941;
        WORD2(v20) = 2114;
        *(&v20 + 6) = v13;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke;
      *&v20 = &unk_1E7C38FF0;
      *(&v20 + 1) = subscribedTagRanker2;
      v21 = v7;
      v22 = v8;
      v10 = subscribedTagRanker2;
      [FCTaskScheduler scheduleLowPriorityBlock:buf];
    }
  }
}

- (NSOrderedSet)orderedSubscribedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FCSubscriptionList_orderedSubscribedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __45__FCSubscriptionList_orderedSubscribedTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)groupableTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FCSubscriptionList_groupableTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__FCSubscriptionList_groupableTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 128);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)ignoredTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FCSubscriptionList_ignoredTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __35__FCSubscriptionList_ignoredTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 136);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (FCSubscriptionList)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v9.receiver = self;
  v9.super_class = FCSubscriptionList;
  v5 = [(FCPrivateDataController *)&v9 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;
  }

  return v5;
}

void __59__FCSubscriptionList_assignOrderToTagSubscriptionsIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(FCSubscriptionList *)v3 _localAddSubscriptions:v4 changeSubscriptions:0 removeSubscriptions:?];
  [(FCSubscriptionList *)*(a1 + 32) _modifyRemoteSubscriptions:v4];
}

- (void)_localAddSubscriptions:(void *)subscriptions changeSubscriptions:(void *)changeSubscriptions removeSubscriptions:
{
  v113 = *MEMORY[0x1E69E9840];
  v7 = a2;
  subscriptionsCopy = subscriptions;
  changeSubscriptionsCopy = changeSubscriptions;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v70 = objc_opt_new();
    v69 = objc_opt_new();
    v68 = objc_opt_new();
    if (changeSubscriptionsCopy)
    {
      v10 = changeSubscriptionsCopy;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v66 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    localStore = [self localStore];
    v12 = [self[18] mutableCopy];
    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:v7];
    [array addObjectsFromArray:subscriptionsCopy];
    v14 = [array fc_setByTransformingWithBlock:&__block_literal_global_79_0];
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_2;
    v98[3] = &unk_1E7C41320;
    v15 = v14;
    v99 = v15;
    v16 = array;
    v100 = v16;
    [v12 enumerateKeysAndObjectsUsingBlock:v98];
    v60 = v16;
    v17 = [(FCSubscriptionList *)self _reconcileSubscriptions:v16];
    v61 = changeSubscriptionsCopy;
    if ([changeSubscriptionsCopy count])
    {
      v18 = [changeSubscriptionsCopy fc_setByTransformingWithBlock:&__block_literal_global_82_0];
      v19 = [v18 mutableCopy];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFA8] set];
    }

    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_4;
    v94[3] = &unk_1E7C41348;
    v59 = v15;
    v95 = v59;
    v20 = v17;
    v96 = v20;
    v57 = v19;
    v97 = v57;
    [v12 enumerateKeysAndObjectsUsingBlock:v94];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_5;
    aBlock[3] = &unk_1E7C41370;
    aBlock[4] = self;
    v58 = v20;
    v91 = v58;
    v64 = localStore;
    v92 = v64;
    v71 = v12;
    v93 = v71;
    v21 = _Block_copy(aBlock);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v63 = v7;
    v22 = v7;
    v23 = [v22 countByEnumeratingWithState:&v86 objects:v112 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v87;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v87 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v86 + 1) + 8 * i);
          if (v21[2](v21, v27))
          {
            [v70 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v86 objects:v112 count:16];
      }

      while (v24);
    }

    selfCopy = self;

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v62 = subscriptionsCopy;
    obj = subscriptionsCopy;
    v28 = [obj countByEnumeratingWithState:&v82 objects:v111 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v83;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v83 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v82 + 1) + 8 * j);
          subscriptionID = [v32 subscriptionID];
          v34 = [v71 objectForKeyedSubscript:subscriptionID];

          if (!v34 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "existingSubscription"];
            *buf = 136315906;
            v104 = "[FCSubscriptionList _localAddSubscriptions:changeSubscriptions:removeSubscriptions:]";
            v105 = 2080;
            v106 = "FCSubscriptionList.m";
            v107 = 1024;
            v108 = 1194;
            v109 = 2114;
            v110 = v39;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v35 = MEMORY[0x1E69E58C0];
          order = [v34 order];
          order2 = [v32 order];
          v38 = [v35 nf_object:order isEqualToObject:order2];

          if ((v21)[2](v21, v32))
          {
            [v69 addObject:v32];
            if ((v38 & 1) == 0)
            {
              [v68 addObject:v32];
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:&v82 objects:v111 count:16];
      }

      while (v29);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v40 = v57;
    v41 = [v40 countByEnumeratingWithState:&v78 objects:v102 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v79;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v79 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v78 + 1) + 8 * k);
          v46 = [v71 objectForKeyedSubscript:v45];
          if (v46)
          {
            [v66 addObject:v46];
          }

          [v64 removeObjectForKey:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v78 objects:v102 count:16];
      }

      while (v42);
    }

    if ([v40 count])
    {
      allObjects = [v40 allObjects];
      [v71 removeObjectsForKeys:allObjects];
    }

    v48 = selfCopy[19];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_85;
    v76[3] = &unk_1E7C36C58;
    v76[4] = selfCopy;
    v49 = v71;
    v77 = v49;
    [v48 performWriteSync:v76];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    observers = [selfCopy observers];
    v51 = [observers copy];

    v52 = [v51 countByEnumeratingWithState:&v72 objects:v101 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v73;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v73 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v72 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v56 subscriptionList:selfCopy didAddSubscriptions:v70 changeSubscriptions:v69 moveSubscriptions:v68 removeSubscriptions:v66];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v72 objects:v101 count:16];
      }

      while (v53);
    }

    subscriptionsCopy = v62;
    v7 = v63;
    changeSubscriptionsCopy = v61;
  }
}

- (void)_modifyRemoteSubscriptions:(void *)subscriptions
{
  v4 = a2;
  if (subscriptions && [v4 count])
  {
    v3 = [[FCModifySubscriptionsCommand alloc] initWithSubscriptions:v4 merge:0];
    [subscriptions addCommandToCommandQueue:v3];
  }
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCSubscriptionList;
  [(FCPrivateDataController *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCSubscriptionList;
  [(FCPrivateDataController *)&v3 removeObserver:observer];
}

- (id)_reconcileSubscriptions:(uint64_t)subscriptions
{
  if (subscriptions)
  {
    v2 = [a2 fc_dictionaryOfSortedObjectsWithKeyBlock:&__block_literal_global_95];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__FCSubscriptionList__reconcileSubscriptions___block_invoke_2;
    v6[3] = &unk_1E7C3F720;
    v4 = dictionary;
    v7 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMutableSubscriptionsBySubscriptionID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 144), a2);
  }
}

+ (id)desiredKeys
{
  v4[10] = *MEMORY[0x1E69E9840];
  v4[0] = @"subscriptionType";
  v4[1] = @"subscriptionOrder";
  v4[2] = @"subscriptionOrigin";
  v4[3] = @"dateAdded";
  v4[4] = @"tagID";
  v4[5] = @"groupID";
  v4[6] = @"url";
  v4[7] = @"title";
  v4[8] = @"pollingURL";
  v4[9] = @"notificationsEnabled";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:10];

  return v2;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v124 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  [MEMORY[0x1E696AF00] isMainThread];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v8 = [observers copy];

  v9 = [v8 countByEnumeratingWithState:&v108 objects:v115 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v109;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v109 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v108 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 subscriptionListWillStartSyncingRemoteChanges:self];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v108 objects:v115 count:16];
    }

    while (v10);
  }

  v87 = objc_opt_new();
  v86 = objc_opt_new();
  v89 = objc_opt_new();
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = recordsCopy;
  v92 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (v92)
  {
    v91 = *v105;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v105 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v104 + 1) + 8 * v14);
        recordName2 = v15;
        if (!self)
        {
          v40 = 0;
LABEL_59:

          goto LABEL_61;
        }

        v17 = [v15 objectForKeyedSubscript:@"subscriptionType"];
        v18 = [recordName2 objectForKeyedSubscript:@"subscriptionOrder"];
        v19 = [recordName2 objectForKeyedSubscript:@"subscriptionOrigin"];
        v20 = FCSubscriptionOriginFromFCCKSubscriptionOrigin([v19 unsignedIntegerValue]);
        recordID = [recordName2 recordID];
        recordName = [recordID recordName];

        if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing subscription type from record: %@", recordName2];
          *buf = 136315906;
          v117 = "[FCSubscriptionList _subscriptionFromRecord:]";
          v118 = 2080;
          v119 = "FCSubscriptionList.m";
          v120 = 1024;
          v121 = 992;
          v122 = 2114;
          v123 = v56;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v23 = [recordName2 objectForKeyedSubscript:@"dateAdded"];
        v24 = v23;
        v94 = v19;
        v95 = v18;
        v25 = recordName;
        if (v23)
        {
          creationDate = v23;
        }

        else
        {
          creationDate = [recordName2 creationDate];
        }

        v93 = creationDate;

        recordID2 = [recordName2 recordID];
        zoneID = [recordID2 zoneID];
        zoneName = [zoneID zoneName];
        v30 = [zoneName isEqualToString:@"SensitiveSubscriptions"];

        if ([v17 isEqualToString:@"tag"])
        {
          v31 = [recordName2 objectForKeyedSubscript:@"tagID"];
          v32 = [v31 length];

          if (v32)
          {
            v33 = [recordName2 objectForKeyedSubscript:@"tagID"];
            v34 = [recordName2 objectForKeyedSubscript:@"notificationsEnabled"];
            v80 = v30;
            LOBYTE(v79) = [v34 BOOLValue];
            v35 = v93;
            v36 = v25;
            v37 = v95;
            [FCSubscription subscriptionWithSubscriptionID:v25 tagID:v33 type:0 order:v95 origin:v20 groupID:0 dateAdded:v93 notificationsEnabled:v79 zone:v80];
            v40 = LABEL_28:;

            goto LABEL_39;
          }
        }

        else if ([v17 isEqualToString:@"mutedTag"])
        {
          v38 = [recordName2 objectForKeyedSubscript:@"tagID"];
          v39 = [v38 length];

          if (v39)
          {
            v33 = [recordName2 objectForKeyedSubscript:@"tagID"];
            v34 = [recordName2 objectForKeyedSubscript:@"groupID"];
            v81 = v30;
            LOBYTE(v79) = 0;
            v35 = v93;
            v36 = v25;
            v37 = v95;
            [FCSubscription subscriptionWithSubscriptionID:v25 tagID:v33 type:2 order:v95 origin:v20 groupID:v34 dateAdded:v93 notificationsEnabled:v79 zone:v81];
            goto LABEL_28;
          }
        }

        else if ([v17 isEqualToString:@"autoFavoriteTag"])
        {
          v41 = [recordName2 objectForKeyedSubscript:@"tagID"];
          v42 = [v41 length];

          if (v42)
          {
            v33 = [recordName2 objectForKeyedSubscript:@"tagID"];
            v82 = v30;
            LOBYTE(v79) = 0;
            v35 = v93;
            v78 = v93;
            v36 = v25;
            v43 = v25;
            v44 = v33;
            v45 = 3;
            goto LABEL_38;
          }
        }

        else if ([v17 isEqualToString:@"groupableTag"])
        {
          v46 = [recordName2 objectForKeyedSubscript:@"tagID"];
          v47 = [v46 length];

          if (v47)
          {
            v33 = [recordName2 objectForKeyedSubscript:@"tagID"];
            v82 = v30;
            LOBYTE(v79) = 0;
            v35 = v93;
            v78 = v93;
            v36 = v25;
            v43 = v25;
            v44 = v33;
            v45 = 4;
            goto LABEL_38;
          }
        }

        else if ([v17 isEqualToString:@"ignoredTag"])
        {
          v48 = [recordName2 objectForKeyedSubscript:@"tagID"];
          v49 = [v48 length];

          if (v49)
          {
            v33 = [recordName2 objectForKeyedSubscript:@"tagID"];
            v82 = v30;
            LOBYTE(v79) = 0;
            v35 = v93;
            v78 = v93;
            v36 = v25;
            v43 = v25;
            v44 = v33;
            v45 = 5;
LABEL_38:
            v37 = v95;
            v40 = [FCSubscription subscriptionWithSubscriptionID:v43 tagID:v44 type:v45 order:v95 origin:v20 groupID:0 dateAdded:v78 notificationsEnabled:v79 zone:v82];
LABEL_39:

LABEL_40:
            v50 = v94;
            goto LABEL_53;
          }
        }

        else
        {
          if (![v17 isEqualToString:@"pending"])
          {
            v57 = FCSubscriptionListLog;
            v36 = v25;
            if (os_log_type_enabled(FCSubscriptionListLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v117 = v17;
              v118 = 2112;
              v119 = recordName2;
              _os_log_impl(&dword_1B63EF000, v57, OS_LOG_TYPE_DEFAULT, "ignoring unrecognized subscription type '%{public}@' from record: %@", buf, 0x16u);
            }

            v40 = 0;
            v50 = v94;
            v37 = v95;
            goto LABEL_52;
          }

          v51 = [recordName2 objectForKeyedSubscript:@"pollingURL"];
          v52 = [recordName2 objectForKeyedSubscript:@"url"];
          if ([v51 length] && objc_msgSend(v52, "length"))
          {
            [MEMORY[0x1E695DFF8] URLWithString:v51];
            v53 = v85 = v51;
            [MEMORY[0x1E695DFF8] URLWithString:v52];
            v54 = v84 = v52;
            v55 = [recordName2 objectForKeyedSubscript:@"title"];
            v36 = v25;
            v35 = v93;
            v40 = [FCSubscription pendingSubscriptionWithSubscriptionID:v25 url:v54 title:v55 pollingURL:v53 dateAdded:v93];

            v37 = v95;
            goto LABEL_40;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"subscription record is missing metadata: %@", recordName2];
          *buf = 136315906;
          v117 = "[FCSubscriptionList _subscriptionFromRecord:]";
          v118 = 2080;
          v119 = "FCSubscriptionList.m";
          v120 = 1024;
          v121 = 1103;
          v122 = 2114;
          v123 = v61;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v40 = 0;
        v50 = v94;
        v37 = v95;
        v36 = v25;
LABEL_52:
        v35 = v93;
LABEL_53:

        if (v40)
        {
          self = selfCopy;
          if ([v40 isDeprecated])
          {
            goto LABEL_61;
          }

          recordID3 = [recordName2 recordID];
          recordName2 = [recordID3 recordName];

          v59 = [(NSMutableDictionary *)selfCopy->_mutableSubscriptionsBySubscriptionID objectForKey:recordName2];
          if (v59)
          {
            v60 = v86;
          }

          else
          {
            v60 = v87;
          }

          [v60 addObject:v40];

          goto LABEL_59;
        }

        self = selfCopy;
LABEL_61:

        ++v14;
      }

      while (v92 != v14);
      v62 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
      v92 = v62;
    }

    while (v62);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v63 = namesCopy;
  v64 = [v63 countByEnumeratingWithState:&v100 objects:v113 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v101;
    do
    {
      v67 = 0;
      do
      {
        if (*v101 != v66)
        {
          objc_enumerationMutation(v63);
        }

        if (self)
        {
          mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
        }

        else
        {
          mutableSubscriptionsBySubscriptionID = 0;
        }

        v69 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:*(*(&v100 + 1) + 8 * v67)];
        if (v69)
        {
          [v89 addObject:v69];
        }

        ++v67;
      }

      while (v65 != v67);
      v70 = [v63 countByEnumeratingWithState:&v100 objects:v113 count:16];
      v65 = v70;
    }

    while (v70);
  }

  [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v87 changeSubscriptions:v86 removeSubscriptions:v89];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  observers2 = [(FCPrivateDataController *)self observers];
  v72 = [observers2 copy];

  v73 = [v72 countByEnumeratingWithState:&v96 objects:v112 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v97;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v97 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v96 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v77 subscriptionListDidStopSyncingRemoteChanges:self];
        }
      }

      v74 = [v72 countByEnumeratingWithState:&v96 objects:v112 count:16];
    }

    while (v74);
  }
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  v4 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v4 isMainThread];
  zoneName = [dCopy zoneName];

  v7 = [zoneName isEqualToString:@"Subscriptions"];
  if (self)
  {
    mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
  }

  else
  {
    mutableSubscriptionsBySubscriptionID = 0;
  }

  allValues = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID allValues];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FCSubscriptionList_allKnownRecordNamesWithinRecordZoneWithID___block_invoke;
  v12[3] = &__block_descriptor_40_e34___NSString_16__0__FCSubscription_8l;
  v12[4] = v7 ^ 1u;
  v10 = [allValues fc_arrayByTransformingWithBlock:v12];

  return v10;
}

id __64__FCSubscriptionList_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zone] == *(a1 + 32))
  {
    v4 = [v3 subscriptionID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleSyncDidResetLocalDataForRecordZoneWithID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  zoneName = [dCopy zoneName];
  if (([zoneName isEqualToString:@"Subscriptions"] & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v6 = [(FCSubscriptionList *)self allKnownRecordNamesWithinRecordZoneWithID:dCopy];
  v7 = [v6 count];

  if (!v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    zoneName = [observers copy];

    v9 = [zoneName countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(zoneName);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 subscriptionListDidResetToEmpty:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [zoneName countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    goto LABEL_12;
  }

LABEL_13:
}

+ (id)backingRecordZoneIDs
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = *MEMORY[0x1E695B728];
  v4 = [v2 initWithZoneName:@"Subscriptions" ownerName:*MEMORY[0x1E695B728]];
  v8[0] = v4;
  v5 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:@"SensitiveSubscriptions" ownerName:v3];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v38 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  allKeys = [cloudCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    *&v8 = 138543618;
    v25 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        if (([self isLocalStoreKeyInternal:{v12, v25}] & 1) == 0)
        {
          objc_opt_class();
          v13 = [cloudCopy objectForKey:v12];
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            v16 = [FCSubscription subscriptionWithSubscriptionID:v12 dictionaryRepresentation:v15];
            v17 = v16;
            if (v16 && ([v16 isDeprecated]& 1) == 0)
            {
              [array addObject:v17];
            }

LABEL_16:
          }

          else
          {
            v18 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              log = v18;
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              *buf = v25;
              v34 = v20;
              v35 = 2114;
              v36 = v12;
              v17 = log;
              _os_log_error_impl(&dword_1B63EF000, log, OS_LOG_TYPE_ERROR, "ERROR: %{public}@ is not a dictionary for key %{public}@", buf, 0x16u);

              goto LABEL_16;
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v21 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
      v9 = v21;
    }

    while (v21);
  }

  v22 = [[FCModifySubscriptionsCommand alloc] initWithSubscriptions:array merge:1];
  v32 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

  return v23;
}

- (BOOL)canHelpRestoreZoneName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Subscriptions"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [nameCopy isEqualToString:@"SensitiveSubscriptions"];
  }

  return v4;
}

- (id)recordsForRestoringZoneName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  if ([nameCopy isEqualToString:@"Subscriptions"])
  {
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke;
    v11[3] = &unk_1E7C37160;
    v11[4] = self;
    v11[5] = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v11];
  }

  else
  {
    if (![nameCopy isEqualToString:@"SensitiveSubscriptions"])
    {
      goto LABEL_10;
    }

    if (self)
    {
      v7 = self->_itemsLock;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke_3;
    v10[3] = &unk_1E7C37160;
    v10[4] = self;
    v10[5] = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v10];
  }

LABEL_10:
  v8 = [v13[5] fc_arrayByTransformingWithBlock:&__block_literal_global_34_0];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 fc_arrayOfObjectsPassingTest:&__block_literal_global_29];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 fc_arrayOfObjectsPassingTest:&__block_literal_global_31];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)subscriptionIDForTagID:(id)d type:(unint64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (type <= 2)
  {
    if (!type)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"tag", dCopy, @"subscription"];
      goto LABEL_12;
    }

    if (type == 2)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = FCCKSubscriptionTypeMutedTag;
      goto LABEL_11;
    }
  }

  else
  {
    switch(type)
    {
      case 3uLL:
        v6 = MEMORY[0x1E696AEC0];
        v7 = FCCKSubscriptionTypeAutoFavoriteTag;
        goto LABEL_11;
      case 4uLL:
        v6 = MEMORY[0x1E696AEC0];
        v7 = FCCKSubscriptionTypeGroupableTag;
        goto LABEL_11;
      case 5uLL:
        v6 = MEMORY[0x1E696AEC0];
        v7 = FCCKSubscriptionTypeIgnoredTag;
LABEL_11:
        [v6 stringWithFormat:@"%@-%@", *v7, dCopy, v11];
        v8 = LABEL_12:;
        goto LABEL_13;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported Tag Type"];
    *buf = 136315906;
    v13 = "+[FCSubscriptionList subscriptionIDForTagID:type:]";
    v14 = 2080;
    v15 = "FCSubscriptionList.m";
    v16 = 1024;
    v17 = 391;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = 0;
LABEL_13:

  return v8;
}

void __116__FCSubscriptionList_addSubscriptionsForTagIDs_typeProvider_originProvider_groupID_notificationsEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [FCSubscriptionList subscriptionIDForTagID:v17 type:(*(*(a1 + 64) + 16))()];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    [*(a1 + 56) addObject:v17];
  }

  else
  {
    v7 = (*(*(a1 + 64) + 16))();
    v8 = [(FCSubscriptionList *)*(a1 + 32) _newSubscriptionOrder];
    v9 = (*(*(a1 + 72) + 16))();
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = v11;
    v14 = (v7 - 3) < 3 && *(a1 + 32) != 0;
    LOBYTE(v16) = *(a1 + 80);
    v15 = [FCSubscription subscriptionWithSubscriptionID:v3 tagID:v17 type:v7 order:v8 origin:v9 groupID:v10 dateAdded:v11 notificationsEnabled:v16 zone:v14];

    [*(a1 + 48) addObject:v15];
  }
}

- (void)_newSubscriptionOrder
{
  if (result)
  {
    v1 = result;
    v2 = -1000000000000000;
    v3 = MEMORY[0x1E696AD98];
    orderedSubscribedTagIDs = [result orderedSubscribedTagIDs];
    firstObject = [orderedSubscribedTagIDs firstObject];

    if (firstObject)
    {
      v6 = [FCSubscriptionList subscriptionIDForTagID:firstObject type:0];
      if (v6)
      {
        v7 = v6;
        subscriptionsBySubscriptionID = [v1 subscriptionsBySubscriptionID];
        v9 = [subscriptionsBySubscriptionID objectForKeyedSubscript:v7];
        order = [v9 order];
        longLongValue = [order longLongValue];

        v2 = longLongValue - 1000000000000000;
      }
    }

    [v3 numberWithLongLong:v2];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (BOOL)addSubscriptionForTagID:(id)d type:(unint64_t)type origin:(unint64_t)origin groupID:(id)iD notificationsEnabled:(BOOL)enabled
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v32 = "[FCSubscriptionList addSubscriptionForTagID:type:origin:groupID:notificationsEnabled:]";
    v33 = 2080;
    v34 = "FCSubscriptionList.m";
    v35 = 1024;
    v36 = 450;
    v37 = 2114;
    v38 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14 = [FCSubscriptionList subscriptionIDForTagID:dCopy type:type];
  if (self)
  {
    mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
  }

  else
  {
    mutableSubscriptionsBySubscriptionID = 0;
  }

  v16 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:v14];

  if (!v16)
  {
    _newSubscriptionOrder = [(FCSubscriptionList *)self _newSubscriptionOrder];
    date = [MEMORY[0x1E695DF00] date];
    originCopy = origin;
    v20 = date;
    if (self)
    {
      v21 = type - 3 >= 3;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    LOBYTE(v28) = enabled;
    v23 = [FCSubscription subscriptionWithSubscriptionID:v14 tagID:dCopy type:type order:_newSubscriptionOrder origin:originCopy groupID:iDCopy dateAdded:date notificationsEnabled:v28 zone:v22];

    v30 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v24 changeSubscriptions:0 removeSubscriptions:0];

    v29 = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v25];
  }

  return v16 == 0;
}

- (void)addSubscriptionsForTagIDs:(id)ds typeProvider:(id)provider originProvider:(id)originProvider completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  originProviderCopy = originProvider;
  completionCopy = completion;
  if (self)
  {
    dsCopy = ds;
    v14 = objc_opt_new();
    [MEMORY[0x1E696AF00] isMainThread];
    if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCSubscriptionList addSubscriptionsForTagIDs:typeProvider:originProvider:groupID:notificationsEnabled:completion:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCSubscriptionList.m";
      *&buf[22] = 1024;
      LODWORD(v20) = 406;
      WORD2(v20) = 2114;
      *(&v20 + 6) = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v15 = objc_opt_new();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __116__FCSubscriptionList_addSubscriptionsForTagIDs_typeProvider_originProvider_groupID_notificationsEnabled_completion___block_invoke;
    *&v20 = &unk_1E7C41230;
    v24 = providerCopy;
    *(&v20 + 1) = self;
    v25 = originProviderCopy;
    v21 = 0;
    v26 = 0;
    v16 = v15;
    v22 = v16;
    v17 = v14;
    v23 = v17;
    [dsCopy enumerateObjectsUsingBlock:buf];

    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v16 changeSubscriptions:0 removeSubscriptions:0];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v16];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (BOOL)appendSubscriptionForTagID:(id)d type:(unint64_t)type
{
  v41 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v34 = "[FCSubscriptionList appendSubscriptionForTagID:type:]";
    v35 = 2080;
    v36 = "FCSubscriptionList.m";
    v37 = 1024;
    v38 = 513;
    v39 = 2114;
    v40 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [FCSubscriptionList subscriptionIDForTagID:dCopy type:type];
  if (self)
  {
    mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
  }

  else
  {
    mutableSubscriptionsBySubscriptionID = 0;
  }

  v9 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:v7];

  if (!v9)
  {
    if (self)
    {
      v10 = 1000000000000000;
      v30 = MEMORY[0x1E696AD98];
      orderedSubscribedTagIDs = [(FCSubscriptionList *)self orderedSubscribedTagIDs];
      lastObject = [orderedSubscribedTagIDs lastObject];

      if (lastObject)
      {
        v13 = [FCSubscriptionList subscriptionIDForTagID:lastObject type:0];
        if (v13)
        {
          v14 = v13;
          subscriptionsBySubscriptionID = [(FCSubscriptionList *)self subscriptionsBySubscriptionID];
          v15 = [subscriptionsBySubscriptionID objectForKeyedSubscript:v14];
          order = [v15 order];
          longLongValue = [order longLongValue];

          v10 = longLongValue + 1000000000000000;
        }
      }

      v17 = [v30 numberWithLongLong:v10];
    }

    else
    {
      v17 = 0;
    }

    date = [MEMORY[0x1E695DF00] date];
    v19 = date;
    if (self)
    {
      v20 = type - 3 >= 3;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    LOBYTE(v27) = 0;
    v22 = [FCSubscription subscriptionWithSubscriptionID:v7 tagID:dCopy type:type order:v17 origin:0 groupID:0 dateAdded:date notificationsEnabled:v27 zone:v21];

    v32 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v23 changeSubscriptions:0 removeSubscriptions:0];

    v31 = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v24];
  }

  return v9 == 0;
}

- (void)removeSubscriptionsForTagIDs:(id)ds typeProvider:(id)provider completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  completionCopy = completion;
  v10 = MEMORY[0x1E696AF00];
  dsCopy = ds;
  [v10 isMainThread];
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
    *buf = 136315906;
    v24 = "[FCSubscriptionList removeSubscriptionsForTagIDs:typeProvider:completion:]";
    v25 = 2080;
    v26 = "FCSubscriptionList.m";
    v27 = 1024;
    v28 = 541;
    v29 = 2114;
    v30 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12 = objc_opt_new();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__FCSubscriptionList_removeSubscriptionsForTagIDs_typeProvider_completion___block_invoke;
  v20[3] = &unk_1E7C41258;
  v22 = providerCopy;
  v20[4] = self;
  v13 = v12;
  v21 = v13;
  v14 = providerCopy;
  v15 = [dsCopy fc_arrayByTransformingWithBlock:v20];

  if ([v15 count])
  {
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:0 changeSubscriptions:v15 removeSubscriptions:?];
    v16 = v15;
    v17 = v16;
    if (self && [v16 count])
    {
      v18 = [[FCRemoveSubscriptionsCommand alloc] initWithSubscriptions:v17];
      [(FCPrivateDataController *)self addCommandToCommandQueue:v18];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13);
  }
}

id __75__FCSubscriptionList_removeSubscriptionsForTagIDs_typeProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCSubscriptionList subscriptionIDForTagID:v3 type:(*(*(a1 + 48) + 16))()];
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 objectForKey:v4];
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    v7 = 0;
  }

  return v7;
}

- (void)removeSubscriptionForTagID:(id)d type:(unint64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    v7 = [FCSubscriptionList subscriptionIDForTagID:dCopy type:type];
    if (self)
    {
      mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
    }

    else
    {
      mutableSubscriptionsBySubscriptionID = 0;
    }

    v9 = mutableSubscriptionsBySubscriptionID;
    v10 = [(NSMutableDictionary *)v9 objectForKey:v7];

    if (v10)
    {
      v15 = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:0 changeSubscriptions:v11 removeSubscriptions:?];

      if (self)
      {
        v12 = v10;
        v13 = [[FCRemoveSubscriptionsCommand alloc] initWithSubscription:v12];

        [(FCPrivateDataController *)self addCommandToCommandQueue:v13];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v17 = "[FCSubscriptionList removeSubscriptionForTagID:type:]";
    v18 = 2080;
    v19 = "FCSubscriptionList.m";
    v20 = 1024;
    v21 = 575;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (NSArray)rankedAllSubscribedTagIDs
{
  subscribedTagRanker = [(FCSubscriptionList *)self subscribedTagRanker];
  allSubscribedTagIDs = [(FCSubscriptionList *)self allSubscribedTagIDs];
  allObjects = [allSubscribedTagIDs allObjects];
  v6 = [subscribedTagRanker rankTagIDsDescending:allObjects];

  return v6;
}

- (id)subscriptionsForType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  if (type <= 2)
  {
    if (!type)
    {
      subscribedTagIDs = [(FCSubscriptionList *)self subscribedTagIDs];
      goto LABEL_15;
    }

    if (type == 2)
    {
      subscribedTagIDs = [(FCSubscriptionList *)self mutedTagIDs];
      goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 3uLL:
        subscribedTagIDs = [(FCSubscriptionList *)self autoFavoriteTagIDs];
        goto LABEL_15;
      case 4uLL:
        subscribedTagIDs = [(FCSubscriptionList *)self groupableTagIDs];
        goto LABEL_15;
      case 5uLL:
        subscribedTagIDs = [(FCSubscriptionList *)self ignoredTagIDs];
        goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported Tag Type"];
    v6 = 136315906;
    v7 = "[FCSubscriptionList subscriptionsForType:]";
    v8 = 2080;
    v9 = "FCSubscriptionList.m";
    v10 = 1024;
    v11 = 667;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  subscribedTagIDs = 0;
LABEL_15:

  return subscribedTagIDs;
}

- (BOOL)canAddSubscription
{
  subscribedTagIDs = [(FCSubscriptionList *)self subscribedTagIDs];
  v3 = [subscribedTagIDs count] < 0xFA;

  return v3;
}

- (BOOL)hasSubscriptionForTagID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v10 = "[FCSubscriptionList hasSubscriptionForTagID:]";
    v11 = 2080;
    v12 = "FCSubscriptionList.m";
    v13 = 1024;
    v14 = 681;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  subscribedTagIDs = [(FCSubscriptionList *)self subscribedTagIDs];
  v6 = [subscribedTagIDs containsObject:dCopy];

  return v6;
}

- (id)subscriptionForTagID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v7 = [FCSubscriptionList subscriptionIDForTagID:dCopy type:type];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__42;
  v20 = __Block_byref_object_dispose__42;
  v21 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9 = itemsLock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__FCSubscriptionList_subscriptionForTagID_type___block_invoke;
  v13[3] = &unk_1E7C37138;
  v15 = &v16;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  [(FCMTWriterLock *)v9 performReadSync:v13];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __48__FCSubscriptionList_subscriptionForTagID_type___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)subscriptionForTagIDOfAnyType:(id)type
{
  typeCopy = type;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__42;
  v18 = __Block_byref_object_dispose__42;
  v19 = 0;
  if (typeCopy)
  {
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke;
    v10[3] = &unk_1E7C412A8;
    selfCopy = self;
    v13 = &v14;
    v11 = typeCopy;
    [(FCMTWriterLock *)v6 performReadSync:v10];

    v7 = v15[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke(uint64_t a1)
{
  v2 = FCSubscriptionTypes();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke_2;
  v3[3] = &unk_1E7C41280;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke_2(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v11 = +[FCSubscriptionList subscriptionIDForTagID:type:](FCSubscriptionList, "subscriptionIDForTagID:type:", a1[4], [a2 unsignedIntegerValue]);
  v6 = a1[5];
  if (v6)
  {
    v6 = v6[18];
  }

  v7 = v6;
  v8 = [v7 objectForKeyedSubscript:v11];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a4 = *(*(a1[6] + 8) + 40) != 0;
}

- (NSSet)allSubscribedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke_2;
  v5[3] = &unk_1E7C371F8;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] fc_set:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 104);
    if (v4)
    {
      [v8 unionSet:v4];
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 120);
      if (v6)
      {
        v7 = v6;
        [v8 unionSet:v6];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)hasNotificationsEnabledForTagID:(id)d
{
  v3 = [(FCSubscriptionList *)self subscriptionForTagID:d];
  notificationsEnabled = [v3 notificationsEnabled];

  return notificationsEnabled;
}

- (BOOL)setNotificationsEnabled:(BOOL)enabled forTagID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    v7 = [FCSubscriptionList subscriptionIDForTagID:dCopy type:0];
    if (self)
    {
      mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
    }

    else
    {
      mutableSubscriptionsBySubscriptionID = 0;
    }

    v9 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:v7];
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      subscriptionID = [v9 subscriptionID];
      tagID = [v10 tagID];
      order = [v10 order];
      v24 = v7;
      subscriptionOrigin = [v10 subscriptionOrigin];
      [v10 dateAdded];
      v16 = v23 = v11;
      LOBYTE(v22) = enabled;
      v17 = [FCSubscription subscriptionWithSubscriptionID:subscriptionID tagID:tagID type:0 order:order origin:subscriptionOrigin groupID:0 dateAdded:v16 notificationsEnabled:v22 zone:0];

      v26 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v18 changeSubscriptions:0 removeSubscriptions:?];

      v25 = v17;
      v11 = v23;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v19];

      v7 = v24;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
      *buf = 136315906;
      v28 = "[FCSubscriptionList setNotificationsEnabled:forTagID:]";
      v29 = 2080;
      v30 = "FCSubscriptionList.m";
      v31 = 1024;
      v32 = 756;
      v33 = 2114;
      v34 = v21;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)hasMutedSubscriptionForTagID:(id)d
{
  dCopy = d;
  mutedTagIDs = [(FCSubscriptionList *)self mutedTagIDs];
  v6 = [mutedTagIDs containsObject:dCopy];

  return v6;
}

- (BOOL)hasIgnoredSubscriptionForTagID:(id)d
{
  dCopy = d;
  ignoredTagIDs = [(FCSubscriptionList *)self ignoredTagIDs];
  v6 = [ignoredTagIDs containsObject:dCopy];

  return v6;
}

- (BOOL)hasAutoFavoriteSubscriptionForTagID:(id)d
{
  dCopy = d;
  autoFavoriteTagIDs = [(FCSubscriptionList *)self autoFavoriteTagIDs];
  v6 = [autoFavoriteTagIDs containsObject:dCopy];

  return v6;
}

- (BOOL)moveSubscriptionForTagID:(id)d toIndex:(unint64_t)index
{
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  subscribedTagIDs = [(FCSubscriptionList *)self subscribedTagIDs];
  v8 = [subscribedTagIDs count];

  if (dCopy)
  {
    v9 = v8 > index;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v10)
  {
    orderedSubscribedTagIDs = [(FCSubscriptionList *)self orderedSubscribedTagIDs];
    v12 = [orderedSubscribedTagIDs mutableCopy];

    v13 = MEMORY[0x1E695DEC8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__FCSubscriptionList_moveSubscriptionForTagID_toIndex___block_invoke;
    v19[3] = &unk_1E7C412D0;
    v20 = v12;
    selfCopy = self;
    indexCopy = index;
    v21 = dCopy;
    v14 = v12;
    v15 = [v13 fc_array:v19];
    v16 = [[FCTagSubscriptionOrderAssigner alloc] initWithInitialOrder:1000000000000000 orderSpacing:?];
    v17 = [(FCTagSubscriptionOrderAssigner *)v16 assignOrderToTagSubscriptions:v15];
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v17 changeSubscriptions:0 removeSubscriptions:?];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v17];
  }

  return v10;
}

void __55__FCSubscriptionList_moveSubscriptionForTagID_toIndex___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) removeObject:*(a1 + 40)];
  [*(a1 + 32) insertObject:*(a1 + 40) atIndex:*(a1 + 56)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [*(a1 + 32) objectAtIndex:v3 - 1];
    v5 = [*(a1 + 48) subscriptionForTagID:v4];
    [v11 addObject:v5];
  }

  v6 = [*(a1 + 48) subscriptionForTagID:*(a1 + 40)];
  v7 = [v6 copyWithOrder:0];
  [v11 addObject:v7];
  v8 = *(a1 + 56) + 1;
  if (v8 != [*(a1 + 32) count])
  {
    v9 = [*(a1 + 32) objectAtIndex:*(a1 + 56) + 1];
    v10 = [*(a1 + 48) subscriptionForTagID:v9];
    [v11 addObject:v10];
  }
}

- (void)reorderSubscriptionOrderForOrderedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [MEMORY[0x1E696AF00] isMainThread];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__FCSubscriptionList_reorderSubscriptionOrderForOrderedIdentifiers___block_invoke;
  v15[3] = &unk_1E7C412F8;
  v15[4] = self;
  v5 = [identifiersCopy fc_arrayByTransformingWithBlock:v15];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      order = [v9 order];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      v12 = [order isEqualToNumber:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        v14 = [v9 copyWithOrder:v13];

        [v6 addObject:v14];
      }

      ++v8;
      v7 += 1000000000000000;
    }

    while (v8 < [v5 count]);
  }

  if ([v6 count])
  {
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v6 changeSubscriptions:0 removeSubscriptions:?];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v6];
  }
}

void __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke_2;
  v3[3] = &unk_1E7C38FF0;
  v4 = v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v4 prepareForUseWithCompletionHandler:v3];
}

void __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke_2(void **a1)
{
  v2 = [[FCTagSubscriptionSorter alloc] initWithTagRanker:?];
  v3 = [(FCTagSubscriptionSorter *)v2 sortTagSubscriptions:?];
  v4 = [[FCTagSubscriptionOrderAssigner alloc] initWithInitialOrder:1000000000000000 orderSpacing:?];
  v5 = [(FCTagSubscriptionOrderAssigner *)v4 assignOrderToTagSubscriptions:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke_3;
  v8[3] = &unk_1E7C37778;
  v6 = a1[6];
  v9 = v5;
  v10 = v6;
  v7 = v5;
  FCPerformBlockOnMainThread(v8);
}

void __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = v4;
  v6 = [v4 tagID];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 tagID];
  if ([v6 containsObject:v7])
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v10];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = *(a1 + 48);
    v7 = [v5 subscriptionID];
    [v9 addObject:v7];
  }

LABEL_5:
}

uint64_t __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dictionaryRepresentation];
  v5 = [v3 subscriptionID];
  if ([v3 subscriptionType] != 1 && (v6 = objc_opt_class(), objc_msgSend(v3, "tagID"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "subscriptionIDForTagID:type:", v7, objc_msgSend(v3, "subscriptionType")), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "isEqualToString:", v8), v8, v7, v9) && (v10 = *(a1 + 40), objc_msgSend(v3, "subscriptionID"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    [*(a1 + 48) setObject:v4 forKeyedSubscript:v5];
    [*(a1 + 56) setObject:v3 forKeyedSubscript:v5];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_85(uint64_t a1)
{
  [(FCSubscriptionList *)*(a1 + 32) setMutableSubscriptionsBySubscriptionID:?];
  v2 = *(a1 + 32);

  [(FCSubscriptionList *)v2 _regenerateSortedSubscriptions];
}

uint64_t __52__FCSubscriptionList__regenerateSortedSubscriptions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [FCSubscriptionList subscriptionIDForTagID:a2 type:0];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(a1 + 32);
  v10 = [FCSubscriptionList subscriptionIDForTagID:v6 type:0];

  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v8 order];
  v13 = [v11 order];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (v12)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v17 = [v12 compare:v13];
    v16 = v17;
    if (!v17)
    {
      v18 = [v8 tagID];
      v19 = [v11 tagID];
      v16 = [v18 compare:v19];
    }
  }

  return v16;
}

void __46__FCSubscriptionList__reconcileSubscriptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 sortedArrayUsingSelector:sel_comparePriority_];
  v4 = [v7 firstObject];
  v5 = *(a1 + 32);
  v6 = [v4 subscriptionID];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

id __60__FCSubscriptionList_configureKeyValueStoreForJSONHandling___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 isEqualToString:@"subscriptionOrigin"];

  if (v8)
  {
    v9 = NSStringFromFCSubscriptionOrigin([v5 unsignedIntegerValue]);
  }

  else
  {
    objc_opt_class();
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v4;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 isEqualToString:@"subscriptionType"];

    if (v12)
    {
      v9 = NSStringFromFCSubscriptionType([v5 unsignedIntegerValue]);
    }

    else
    {
      v9 = v5;
    }
  }

  v13 = v9;

  return v13;
}

@end