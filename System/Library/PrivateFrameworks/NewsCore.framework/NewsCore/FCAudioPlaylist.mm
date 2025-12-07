@interface FCAudioPlaylist
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (void)populateLocalStoreClassRegistry:(id)registry;
- (BOOL)containsArticleID:(id)d;
- (FCAudioPlaylist)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSArray)articleIDs;
- (id)_itemWithArticleID:(uint64_t)d;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)dateAddedForArticleID:(id)d;
- (id)localStoreMigrator;
- (id)recordsForRestoringZoneName:(id)name;
- (void)_modifyWithInsertedOrChangedItems:(void *)items removedArticleIDs:;
- (void)_regenerateOrderedArticleIDs;
- (void)addObserver:(id)observer;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)insertArticleID:(id)d atIndex:(unint64_t)index;
- (void)loadLocalCachesFromStore;
- (void)removeArticleID:(id)d;
- (void)removeObserver:(id)observer;
- (void)save;
@end

@implementation FCAudioPlaylist

- (id)localStoreMigrator
{
  v2 = objc_alloc_init(FCAudioPlaylistMigrator);

  return v2;
}

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__FCAudioPlaylist_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __43__FCAudioPlaylist_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  obj = [MEMORY[0x1E695DF90] dictionary];
  v2 = [*(a1 + 32) localStore];
  [v2 addAllEntriesToDictionary:obj];

  v3 = [objc_opt_class() internalLocalStoreKeys];
  v4 = [v3 allObjects];
  [obj removeObjectsForKeys:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    objc_storeStrong((v5 + 88), obj);
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  [(FCAudioPlaylist *)v6 _regenerateOrderedArticleIDs];
}

- (void)_regenerateOrderedArticleIDs
{
  if (self)
  {
    allValues = [*(self + 88) allValues];
    v6 = [allValues sortedArrayUsingComparator:&__block_literal_global_30_1];

    v3 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_33_1];
    v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v3];
    v5 = *(self + 96);
    *(self + 96) = v4;
  }
}

- (FCAudioPlaylist)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v9.receiver = self;
  v9.super_class = FCAudioPlaylist;
  v5 = [(FCPrivateDataController *)&v9 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;
  }

  return v5;
}

+ (id)backingRecordZoneIDs
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"AudioPlaylist" ownerName:*MEMORY[0x1E695B728]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v19[1] = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  allKeys = [cloudCopy allKeys];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __72__FCAudioPlaylist_commandsToMergeLocalDataToCloud_privateDataDirectory___block_invoke;
  v16 = &unk_1E7C42840;
  v17 = cloudCopy;
  selfCopy = self;
  v7 = cloudCopy;
  v8 = [allKeys fc_arrayByTransformingWithBlock:&v13];

  v9 = [FCModifyAudioPlaylistCommand alloc];
  v10 = [(FCModifyAudioPlaylistCommand *)v9 initWithItems:v8 merge:1, v13, v14, v15, v16];
  v19[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v11;
}

id __72__FCAudioPlaylist_commandsToMergeLocalDataToCloud_privateDataDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 40) isLocalStoreKeyInternal:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  return v4;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v36 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = recordsCopy;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [objc_alloc(MEMORY[0x1E69B6D18]) initWithCKRecord:*(*(&v30 + 1) + 8 * i)];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = namesCopy;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (self)
        {
          itemsByID = self->_itemsByID;
        }

        else
        {
          itemsByID = 0;
        }

        v22 = [(NSMutableDictionary *)itemsByID objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v20)];
        articleID = [v22 articleID];

        if (articleID)
        {
          articleID2 = [v22 articleID];
          [v9 addObject:articleID2];
        }

        ++v20;
      }

      while (v18 != v20);
      v25 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v18 = v25;
    }

    while (v25);
  }

  [(FCAudioPlaylist *)&self->super.super.isa _modifyWithInsertedOrChangedItems:v8 removedArticleIDs:v9];
}

- (void)_modifyWithInsertedOrChangedItems:(void *)items removedArticleIDs:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  itemsCopy = items;
  if (self && ([v5 count] || objc_msgSend(itemsCopy, "count")))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = v7;
      v10 = *v41;
      do
      {
        v11 = 0;
        do
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v40 + 1) + 8 * v11);
          v13 = self[11];
          identifier = [v12 identifier];
          [v13 setObject:v12 forKeyedSubscript:identifier];

          localStore = [self localStore];
          identifier2 = [v12 identifier];
          [localStore setObject:v12 forKeyedSubscript:identifier2];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v9);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = itemsCopy;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        v21 = 0;
        do
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [MEMORY[0x1E69B6D18] identifierFromArticleID:{*(*(&v36 + 1) + 8 * v21), v30}];
          v23 = [self[11] objectForKeyedSubscript:v22];

          if (v23)
          {
            localStore2 = [self localStore];
            [localStore2 removeObjectForKey:v22];

            [self[11] removeObjectForKey:v22];
            v8 = 1;
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v19);
    }

    v5 = v30;
    if (v8)
    {
      [(FCAudioPlaylist *)self _regenerateOrderedArticleIDs];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      observers = [self observers];
      v26 = [observers countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v33;
        do
        {
          v29 = 0;
          do
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(observers);
            }

            [*(*(&v32 + 1) + 8 * v29++) audioPlaylistDidChange:{self, v30}];
          }

          while (v27 != v29);
          v27 = [observers countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v27);
      }
    }
  }
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  if (self)
  {
    self = self->_itemsByID;
  }

  return [(FCAudioPlaylist *)self allKeys];
}

+ (void)populateLocalStoreClassRegistry:(id)registry
{
  registryCopy = registry;
  [registryCopy registerClass:objc_opt_class()];
}

- (id)recordsForRestoringZoneName:(id)name
{
  nameCopy = name;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__54;
  v14 = __Block_byref_object_dispose__54;
  v15 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v6 = itemsLock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__FCAudioPlaylist_recordsForRestoringZoneName___block_invoke;
  v9[3] = &unk_1E7C37160;
  v9[4] = self;
  v9[5] = &v10;
  [(FCMTWriterLock *)v6 performReadSync:v9];

  v7 = [v11[5] fc_arrayByTransformingWithBlock:&__block_literal_global_112];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__FCAudioPlaylist_recordsForRestoringZoneName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (NSArray)articleIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__54;
  v12 = __Block_byref_object_dispose__54;
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
  v7[2] = __29__FCAudioPlaylist_articleIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __29__FCAudioPlaylist_articleIDs__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v7 = [v3 array];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)containsArticleID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
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
  v10[2] = __37__FCAudioPlaylist_containsArticleID___block_invoke;
  v10[3] = &unk_1E7C37138;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [(FCMTWriterLock *)v6 performReadSync:v10];

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__FCAudioPlaylist_containsArticleID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = a1[5];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = [v4 containsObject:v3];
}

- (id)dateAddedForArticleID:(id)d
{
  dCopy = d;
  if ([(FCAudioPlaylist *)self containsArticleID:dCopy])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__54;
    v16 = __Block_byref_object_dispose__54;
    v17 = 0;
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__FCAudioPlaylist_dateAddedForArticleID___block_invoke_2;
    v9[3] = &unk_1E7C37408;
    v9[4] = self;
    v10 = dCopy;
    v11 = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v9];

    v7 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __41__FCAudioPlaylist_dateAddedForArticleID___block_invoke_2(void *a1)
{
  v7 = [(FCAudioPlaylist *)a1[4] _itemWithArticleID:?];
  if ([v7 hasDateAdded])
  {
    v2 = MEMORY[0x1E695DF00];
    v3 = [v7 dateAdded];
    v4 = [v2 dateWithPBDate:v3];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)_itemWithArticleID:(uint64_t)d
{
  if (d)
  {
    v3 = MEMORY[0x1E69B6D18];
    v4 = *(d + 88);
    v5 = [v3 identifierFromArticleID:a2];
    v6 = [v4 objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)insertArticleID:(id)d atIndex:(unint64_t)index
{
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke;
  v9[3] = &unk_1E7C393F8;
  v9[4] = self;
  v10 = dCopy;
  indexCopy = index;
  v8 = dCopy;
  [(FCMTWriterLock *)itemsLock performWriteSync:v9];
}

void __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69B6D18]);
    v6 = [MEMORY[0x1E69B6D18] identifierFromArticleID:*(a1 + 40)];
    [v5 setIdentifier:v6];

    [v5 setArticleID:*(a1 + 40)];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v7 pbDate];
    [v5 setDateAdded:v8];

    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[11];
    }

    v10 = v9;
    v11 = [v5 identifier];
    [v10 setObject:v5 forKeyedSubscript:v11];
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 88);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 count];
  if (v12 >= v15 - 1)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = v12;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 96);
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 mutableCopy];
  v20 = MEMORY[0x1E695DEC8];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke_2;
  v39[3] = &unk_1E7C42868;
  v21 = v19;
  v40 = v21;
  v22 = *(a1 + 40);
  v44 = v16;
  v23 = *(a1 + 32);
  v41 = v22;
  v42 = v23;
  v24 = v5;
  v43 = v24;
  v25 = [v20 fc_array:v39];
  v26 = [[FCTagSubscriptionOrderAssigner alloc] initWithInitialOrder:1000000000000000 orderSpacing:?];
  v27 = [(FCTagSubscriptionOrderAssigner *)v26 assignOrderToTagSubscriptions:v25];
  [(FCAudioPlaylist *)*(a1 + 32) _modifyWithInsertedOrChangedItems:v27 removedArticleIDs:0];
  v28 = FCAudioLog;
  if (os_log_type_enabled(FCAudioLog, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v24;
    v38 = v21;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = v16;
    if (v29)
    {
      v29 = v29[12];
    }

    v32 = v29;
    v33 = v28;
    v34 = [v32 array];
    v35 = [v34 fc_subarrayWithMaxCount:2];
    *buf = 138543874;
    v46 = v30;
    v47 = 2048;
    v48 = v31;
    v49 = 2114;
    v50 = v35;
    _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "did insert %{public}@ into playlist at index=%lu, playlist=%{public}@, ...", buf, 0x20u);

    v24 = v37;
    v21 = v38;
  }

  v36 = [[FCModifyAudioPlaylistCommand alloc] initWithItems:v27 merge:0];
  [*(a1 + 32) addCommandToCommandQueue:v36];
}

void __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) removeObject:*(a1 + 40)];
  [*(a1 + 32) insertObject:*(a1 + 40) atIndex:*(a1 + 64)];
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = [*(a1 + 32) objectAtIndex:v3 - 1];
    v5 = [(FCAudioPlaylist *)*(a1 + 48) _itemWithArticleID:v4];
    [v10 addObject:v5];
  }

  v6 = [*(a1 + 56) copyWithOrder:0];
  [v10 addObject:v6];
  v7 = *(a1 + 64) + 1;
  if (v7 != [*(a1 + 32) count])
  {
    v8 = [*(a1 + 32) objectAtIndex:*(a1 + 64) + 1];
    v9 = [(FCAudioPlaylist *)*(a1 + 48) _itemWithArticleID:v8];
    [v10 addObject:v9];
  }
}

- (void)removeArticleID:(id)d
{
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FCAudioPlaylist_removeArticleID___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [(FCMTWriterLock *)itemsLock performWriteSync:v7];
}

void __35__FCAudioPlaylist_removeArticleID___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(FCAudioPlaylist *)v2 _modifyWithInsertedOrChangedItems:v3 removedArticleIDs:?];

  v4 = [[FCRemoveFromAudioPlaylistCommand alloc] initWithArticleID:*(a1 + 40)];
  [*(a1 + 32) addCommandToCommandQueue:v4];
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCAudioPlaylist;
  [(FCPrivateDataController *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCAudioPlaylist;
  [(FCPrivateDataController *)&v3 removeObserver:observer];
}

- (void)save
{
  localStore = [(FCPrivateDataController *)self localStore];
  [localStore save];
}

uint64_t __47__FCAudioPlaylist__regenerateOrderedArticleIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 order];
  v7 = [v5 order];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    if (!v9)
    {
LABEL_9:
      v10 = [v4 articleID];
      v11 = [v5 articleID];
      v9 = [v10 compare:v11];
    }
  }

  else
  {
    if (v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (!(v6 | v7))
    {
      goto LABEL_9;
    }
  }

  return v9;
}

@end