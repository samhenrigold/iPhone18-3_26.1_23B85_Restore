@interface FCReadingHistory
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (void)populateLocalStoreClassRegistry:(id)registry;
- (BOOL)hasArticleBeenConsumed:(id)consumed;
- (BOOL)hasArticleBeenMarkedAsOffensive:(id)offensive;
- (BOOL)hasArticleBeenRead:(id)read;
- (BOOL)hasArticleBeenReadMoreThanThreshold:(id)threshold;
- (BOOL)hasArticleBeenRemovedFromAudio:(id)audio;
- (BOOL)hasArticleBeenSeen:(id)seen;
- (BOOL)hasArticleBeenVisited:(id)visited;
- (BOOL)hasArticleCompletedListening:(id)listening;
- (BOOL)hasArticleCompletedReading:(id)reading;
- (BOOL)markArticle:(id)article withCompletedListening:(BOOL)listening;
- (BOOL)markArticle:(id)article withCompletedReading:(BOOL)reading;
- (BOOL)markArticle:(id)article withLikingStatus:(unint64_t)status;
- (BOOL)markArticle:(id)article withRemovedFromAudio:(BOOL)audio;
- (BOOL)markArticleAsReadWithArticleID:(id)d articleVersion:(int64_t)version readDate:(id)date;
- (BOOL)markArticleAsSeenWithArticleID:(id)d articleVersion:(int64_t)version seenDate:(id)date;
- (BOOL)markArticleAsSeenWithHeadline:(id)headline;
- (BOOL)markArticleAsSeenWithHeadline:(id)headline rememberForever:(BOOL)forever;
- (BOOL)toggleArticleHasBeenMarkedAsOffensive:(id)offensive;
- (BOOL)toggleDislikeForArticleWithID:(id)d;
- (BOOL)toggleLikeForArticleWithID:(id)d;
- (FCReadingHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSArray)readingHistoryItems;
- (NSArray)sortedListenedArticleIDs;
- (NSArray)sortedVisitedArticleIDs;
- (NSDictionary)readingHistoryItemsByArticleID;
- (NSSet)allConsumedArticleIDs;
- (NSSet)allDislikedArticleIDs;
- (NSSet)allLikedArticleIDs;
- (NSSet)allReadArticleIDs;
- (NSSet)allSeenArticleIDs;
- (double)listeningProgressFor:(id)for;
- (id)_markHistoryItemsAsSeenWithItemExposures:(int)exposures rememberForever:;
- (id)_readingHistoryItemForArticleID:(uint64_t)d;
- (id)_sortedReadingHistoryItemsWithMaxCount:(void *)count;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)consumedArticleIDsForTagID:(id)d fromTime:(id)time;
- (id)firstSeenDateFor:(id)for;
- (id)historyItemsByArticleIDForArticleIDs:(id)ds;
- (id)historyItemsForArticleIDs:(id)ds;
- (id)lastListenedFor:(id)for;
- (id)lastVisitedDateForArticleID:(id)d;
- (id)listeningProgressSavedDateFor:(id)for;
- (id)localStoreMigrator;
- (id)markArticlesAsSeenWithHeadlines:(uint64_t)headlines rememberForever:;
- (id)mostRecentlyCompletedListeningArticlesWithMaxCount:(unint64_t)count;
- (id)readDateFor:(id)for;
- (id)readingPositionJSONFor:(id)for;
- (id)readingPositionSavedDateFor:(id)for;
- (id)recordsForRestoringZoneName:(id)name;
- (id)sortedVisitedArticleIDsSatisfying:(id)satisfying;
- (int64_t)listenedCountFor:(id)for;
- (unint64_t)likingStatusForArticleID:(id)d;
- (void)_addHistoryItems:(uint64_t)items addToStore:(void *)store;
- (void)_cacheHistoryItemByArticleID:(uint64_t)d;
- (void)_markArticle:(uint64_t)article withLikingStatus:;
- (void)_markArticleAsSeenWithArticleID:(int)d rememberForever:(uint64_t)forever articleVersion:(void *)version seenDate:(void *)date firstSeenDate:(void *)seenDate historyItem:(uint64_t *)item modifiedHistoryFeaturesOut:;
- (void)_modifyHistoryForArticleID:(void *)d withBlock:;
- (void)addObserver:(id)observer;
- (void)clearHistory;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)markArticle:(id)article asArticleConsumed:(BOOL)consumed sourceChannelTagID:(id)d;
- (void)markArticle:(id)article asOffensive:(BOOL)offensive;
- (void)markArticle:(id)article withLastListened:(id)listened;
- (void)markArticle:(id)article withListeningProgress:(double)progress;
- (void)markArticle:(id)article withReadingPositionJSON:(id)n;
- (void)markArticleAsReadWithHeadline:(id)headline fromGroupType:(int64_t)type swipedToArticle:(BOOL)article onScreenChecker:(id)checker;
- (void)removeArticleFromHistory:(id)history;
- (void)removeObserver:(id)observer;
- (void)willAccessArticleIDs:(id)ds;
@end

@implementation FCReadingHistory

- (id)localStoreMigrator
{
  v2 = objc_alloc_init(FCReadingHistoryMigrator);

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
  v3[2] = __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) localStore];
  [v3 addAllEntriesToDictionary:v2];

  v4 = [objc_opt_class() internalLocalStoreKeys];
  v5 = [v4 allObjects];
  [v2 removeObjectsForKeys:v5];

  if (([*(a1 + 32) isSyncingEnabled] & 1) == 0)
  {
    v6 = [v2 count];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v7 = [v2 allValues];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke_2;
    v15[3] = &unk_1E7C37398;
    v15[4] = *(a1 + 32);
    v16 = v2;
    v17 = &v18;
    FCVisitLocallyPrunableHistoryItems(v7, v15);

    if (v19[3])
    {
      v8 = FCPrivateDataLog;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = v19[3];
        *buf = 138543874;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v6;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ pruned %lu of %lu history items", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    objc_storeStrong((v12 + 96), v2);
  }

  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = *(a1 + 32);
  if (v14)
  {
    objc_storeStrong((v14 + 104), v13);
  }
}

void __38__FCReadingHistory_allLikedArticleIDs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 articleLikingStatus] == 1)
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSSet)allLikedArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
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
  v9[2] = __38__FCReadingHistory_allLikedArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (NSSet)allDislikedArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
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
  v9[2] = __41__FCReadingHistory_allDislikedArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __41__FCReadingHistory_allDislikedArticleIDs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 articleLikingStatus] == 2)
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSArray)sortedVisitedArticleIDs
{
  v2 = [(FCReadingHistory *)self _sortedReadingHistoryItemsWithMaxCount:?];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_61_0];

  return v3;
}

- (NSArray)readingHistoryItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
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
  v7[2] = __39__FCReadingHistory_readingHistoryItems__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__FCReadingHistory_readingHistoryItems__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
}

- (FCReadingHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v9.receiver = self;
  v9.super_class = FCReadingHistory;
  v5 = [(FCPrivateDataController *)&v9 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;
  }

  return v5;
}

- (void)_addHistoryItems:(uint64_t)items addToStore:(void *)store
{
  storeCopy = store;
  [MEMORY[0x1E696AF00] isMainThread];
  if (storeCopy)
  {
    v4 = *(items + 112);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke;
    v5[3] = &unk_1E7C37678;
    v5[4] = items;
    v7 = 1;
    v6 = storeCopy;
    [v4 performWriteSync:v5];
  }
}

FCItemExposure *__91__FCReadingHistory_syncReadingHistoryItemRecords_deletedArticleIDs_didRemoveLastVisitedAt___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [FCItemExposure alloc];
  v4 = v2;
  v5 = v4;
  if (v3)
  {
    if ([v4 hasArticleBeenSeen])
    {
      v6 = [MEMORY[0x1E695DF00] date];
      v7 = [v5 articleID];
      v8 = [v5 firstSeenAt];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      v11 = [v5 firstSeenAtOfMaxVersionSeen];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v6;
      }

      v14 = [v5 maxVersionSeen];
      v15 = [v5 firstSeenAtOfMaxVersionSeen];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v6;
      }

      v3 = [(FCItemExposure *)v3 initWithItemID:v7 firstExposedAt:v10 lastExposedAt:v13 maxExposedVersion:v14 maxExposedVersionFirstExposedAt:v17];

      v18 = v3;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 localStore];
  v6 = [v4 identifier];
  [v5 removeObjectForKey:v6];

  v7 = a1[5];
  v8 = [v4 identifier];

  [v7 removeObjectForKey:v8];
  ++*(*(a1[6] + 8) + 24);
}

+ (id)backingRecordZoneIDs
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"ReadingHistory" ownerName:*MEMORY[0x1E695B728]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

+ (void)populateLocalStoreClassRegistry:(id)registry
{
  registryCopy = registry;
  [registryCopy registerClass:objc_opt_class()];
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v23 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [cloudCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([self isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [cloudCopy objectForKeyedSubscript:v12];
          [array addObject:v13];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [[FCModifyHistoryCommand alloc] initWithHistoryItems:array merge:1];
  v21 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];

  return v15;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v236 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = namesCopy;
  v9 = "bly";
  v172 = v8;
  if (self)
  {
    v10 = v8;
    [MEMORY[0x1E696AF00] isMainThread];
    if ([v10 count])
    {
      v11 = MEMORY[0x1E695DFA8];
      allKeys = [(NSMutableDictionary *)self->_itemsByIdentifier allKeys];
      v13 = [v11 setWithArray:allKeys];

      [v13 fc_removeObjectsFromArray:v10];
      recordNamesPendingSaveToCloud = [(FCPrivateDataController *)self recordNamesPendingSaveToCloud];
      [v13 fc_removeObjectsFromArray:recordNamesPendingSaveToCloud];

      v15 = [v13 count];
      v170 = v15 == 0;
      v16 = FCPrivateDataLog;
      v17 = os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = v16;
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ detected a likely remote pruning of seen items", &buf, 0xCu);
        }

        v21 = [MEMORY[0x1E695DF00] fc_dateWithTimeIntervalBeforeNow:864000.0];
        v22 = MEMORY[0x1E695DFD8];
        articleExposureRegistry = [(FCReadingHistory *)self articleExposureRegistry];
        v24 = [articleExposureRegistry subsetOfItemIDs:v172 accessedSinceDate:v21];
        v25 = [v22 setWithArray:v24];

        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        itemsLock = self->_itemsLock;
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v222 = __67__FCReadingHistory__preprocessSyncedDeletions_didUserClearHistory___block_invoke_135;
        v223 = &unk_1E7C376C8;
        v224 = v172;
        selfCopy2 = self;
        v29 = v25;
        v226 = v29;
        v30 = array2;
        v227 = v30;
        v31 = array;
        v228 = v31;
        [(FCMTWriterLock *)itemsLock performReadSync:&buf];
        if ([v30 count])
        {
          v32 = FCPrivateDataLog;
          if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v30 count];
            *v229 = 138543618;
            *&v229[4] = v35;
            *&v229[12] = 2048;
            *&v229[14] = v36;
            _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ will resurrect %lu history items after server-side pruning", v229, 0x16u);
          }

          v37 = [[FCModifyHistoryCommand alloc] initWithHistoryItems:v30 merge:0];
          [(FCPrivateDataController *)self addCommandToCommandQueue:v37];
        }

        v38 = v228;
        v39 = v31;

        v9 = "PrivateDataAssembly" + 16;
      }

      else
      {
        if (v17)
        {
          v40 = v16;
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v42;
          _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ detected a likely remote clearing of history", &buf, 0xCu);
        }

        v39 = v172;
      }
    }

    else
    {
      v170 = 0;
      v39 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v170 = 0;
    v39 = 0;
  }

  v181 = objc_opt_new();
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  obj = recordsCopy;
  v43 = [obj countByEnumeratingWithState:&v210 objects:v220 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v211;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v211 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v210 + 1) + 8 * i);
        recordType = [v47 recordType];
        v49 = [recordType isEqualToString:@"ReadingHistoryItem"];

        if (v49)
        {
          [v181 addObject:v47];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v210 objects:v220 count:16];
    }

    while (v44);
  }

  v183 = objc_opt_new();
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v179 = v39;
  v50 = [v179 countByEnumeratingWithState:&v206 objects:v219 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v207;
    v53 = *(v9 + 109);
    do
    {
      v54 = 0;
      do
      {
        if (*v207 != v52)
        {
          objc_enumerationMutation(v179);
        }

        v55 = *(*(&v206 + 1) + 8 * v54);
        if (self)
        {
          itemsByIdentifier = self->_itemsByIdentifier;
        }

        else
        {
          itemsByIdentifier = 0;
        }

        v57 = [(NSMutableDictionary *)itemsByIdentifier objectForKeyedSubscript:*(*(&v206 + 1) + 8 * v54)];
        articleID = [v57 articleID];

        if (articleID)
        {
          articleID2 = [v57 articleID];
          [v183 addObject:articleID2];
        }

        articleID3 = [v57 articleID];
        v61 = v55;
        v62 = articleID3;
        if (self)
        {
          [MEMORY[0x1E696AF00] isMainThread];
          if (!v61 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "itemID != nil"];
            *v229 = 136315906;
            *&v229[4] = "[FCReadingHistory _removeHistoryItemWithItemID:articleID:]";
            *&v229[12] = 2080;
            *&v229[14] = "FCReadingHistory.m";
            *&v229[22] = 1024;
            *&v229[24] = 1704;
            *&v229[28] = 2114;
            *&v229[30] = v64;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v229, 0x26u);
          }

          v63 = self->_itemsLock;
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = v53;
          v222 = __59__FCReadingHistory__removeHistoryItemWithItemID_articleID___block_invoke;
          v223 = &unk_1E7C376A0;
          v224 = v61;
          selfCopy2 = self;
          v226 = v62;
          [(FCMTWriterLock *)v63 performWriteSync:&buf];
        }

        ++v54;
      }

      while (v51 != v54);
      v65 = [v179 countByEnumeratingWithState:&v206 objects:v219 count:16];
      v51 = v65;
    }

    while (v65);
  }

  v66 = v181;
  v173 = v183;
  v171 = v66;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v177 = objc_opt_new();
    v176 = objc_opt_new();
    v175 = objc_opt_new();
    v67 = objc_opt_new();
    memset(v229, 0, sizeof(v229));
    v230 = 0u;
    v178 = v66;
    v68 = [v178 countByEnumeratingWithState:v229 objects:&buf count:16];
    v174 = v67;
    if (v68)
    {
      v69 = v68;
      v70 = 0;
      v184 = **&v229[16];
      v71 = 0x1E69B6000uLL;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (**&v229[16] != v184)
          {
            objc_enumerationMutation(v178);
          }

          v73 = *(*&v229[8] + 8 * j);
          objc_opt_self();
          if (!v73 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "record != nil"];
            *v231 = 136315906;
            *&v231[4] = "+[NTPBReadingHistoryItem(FCReadingHistory) readingHistoryItemWithCKRecord:]";
            *&v231[12] = 2080;
            *&v231[14] = "FCReadingHistory.m";
            v232 = 1024;
            v233 = 1886;
            v234 = 2114;
            v235 = v112;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v231, 0x26u);
          }

          v74 = objc_alloc_init(*(v71 + 3960));
          v75 = [v73 objectForKeyedSubscript:@"articleID"];
          [v74 setArticleID:v75];

          v76 = [v73 objectForKeyedSubscript:@"sourceChannelTagID"];
          [v74 setSourceChannelTagID:v76];

          v77 = [v73 objectForKeyedSubscript:@"deviceID"];
          [v74 setDeviceID:v77];

          v78 = [v73 objectForKeyedSubscript:@"lastVisited"];
          [v74 setLastVisitedAt:v78];

          v79 = [v73 objectForKeyedSubscript:@"articleRead"];
          [v74 setHasArticleBeenRead:{objc_msgSend(v79, "BOOLValue")}];

          v80 = [v73 objectForKeyedSubscript:@"articleSeen"];
          [v74 setHasArticleBeenSeen:{objc_msgSend(v80, "BOOLValue")}];

          v81 = [v73 objectForKeyedSubscript:@"articleConsumed"];
          [v74 setHasArticleBeenConsumed:{objc_msgSend(v81, "BOOLValue")}];

          v82 = [v73 objectForKeyedSubscript:@"offensive"];
          [v74 setHasArticleBeenMarkedOffensive:{objc_msgSend(v82, "BOOLValue")}];

          v83 = [v73 objectForKeyedSubscript:@"removedFromAudio"];
          [v74 setHasArticleBeenRemovedFromAudio:{objc_msgSend(v83, "BOOLValue")}];

          v84 = [v73 objectForKeyedSubscript:@"completedListening"];
          [v74 setHasArticleCompletedListening:{objc_msgSend(v84, "BOOLValue")}];

          v85 = [v73 objectForKeyedSubscript:@"completedReading"];
          [v74 setHasArticleCompletedReading:{objc_msgSend(v85, "BOOLValue")}];

          v86 = [v73 objectForKeyedSubscript:@"listenedCount"];
          [v74 setListenedCount:{objc_msgSend(v86, "intValue")}];

          v87 = [v73 objectForKeyedSubscript:@"listeningProgress"];
          [v87 doubleValue];
          [v74 setListeningProgress:?];

          v88 = [v73 objectForKeyedSubscript:@"listeningProgressLastSaved"];
          [v74 setListeningProgressSavedAt:v88];

          v89 = [v73 objectForKeyedSubscript:@"lastListened"];
          [v74 setLastListenedAt:v89];

          v90 = [v73 objectForKeyedSubscript:@"readingPosition"];
          [v74 setReadingPosition:v90];

          v91 = [v73 objectForKeyedSubscript:@"readingPositionLastSaved"];
          [v74 setReadingPositionSavedAt:v91];

          v92 = [v73 objectForKeyedSubscript:@"readCount"];
          [v74 setReadCount:{objc_msgSend(v92, "intValue")}];

          v93 = [v73 objectForKeyedSubscript:@"pruningDisabled"];
          [v74 setPruningDisabled:{objc_msgSend(v93, "BOOLValue")}];

          v94 = [v73 objectForKeyedSubscript:@"liked"];
          bOOLValue = [v94 BOOLValue];

          if (bOOLValue)
          {
            [v74 setArticleLikingStatus:1];
          }

          v96 = [v73 objectForKeyedSubscript:@"disliked"];
          bOOLValue2 = [v96 BOOLValue];

          if (bOOLValue2)
          {
            [v74 setArticleLikingStatus:2];
          }

          if ([v74 hasArticleBeenSeen])
          {
            lastVisitedDate = [v74 lastVisitedDate];
            if (lastVisitedDate)
            {
              [v74 setFirstSeenDate:lastVisitedDate];
            }

            else
            {
              lastListened = [v74 lastListened];
              if (lastListened)
              {
                [v74 setFirstSeenDate:lastListened];
              }

              else
              {
                [v73 creationDate];
                v101 = v100 = v70;
                pbDate = [v101 pbDate];
                [v74 setFirstSeenDate:pbDate];

                v70 = v100;
                v67 = v174;
              }
            }

            firstSeenDate = [v74 firstSeenDate];
            [v74 setFirstSeenDateOfMaxVersionSeen:firstSeenDate];

            v71 = 0x1E69B6000;
          }

          articleID4 = [v74 articleID];
          if (articleID4)
          {
            v105 = [(NSMutableDictionary *)self->_itemsByArticleID objectForKeyedSubscript:articleID4];
            v106 = v105;
            if (v105)
            {
              lastVisitedAt = [v105 lastVisitedAt];
              if (lastVisitedAt)
              {
                v108 = lastVisitedAt;
                lastVisitedAt2 = [v74 lastVisitedAt];

                if (lastVisitedAt2)
                {
                  v110 = 0;
                }

                else
                {
                  [v175 addObject:articleID4];
                  v110 = 1;
                }

                v71 = 0x1E69B6000;
              }

              else
              {
                v110 = 0;
              }

              v70 = v70 | v110;
              v111 = v177;
            }

            else
            {
              v111 = v176;
            }

            [v111 addObject:articleID4];
            [v67 addObject:v74];
          }
        }

        v69 = [v178 countByEnumeratingWithState:v229 objects:&buf count:16];
      }

      while (v69);
    }

    else
    {
      LOBYTE(v70) = 0;
    }

    v113 = v70;

    [FCReadingHistory _addHistoryItems:v67 addToStore:?];
    v114 = [v67 fc_arrayByTransformingWithBlock:&__block_literal_global_3];
    v115 = [FCReadingHistorySyncResults alloc];
    if (v173)
    {
      v116 = v173;
    }

    else
    {
      v116 = MEMORY[0x1E695E0F0];
    }

    v117 = [v175 arrayByAddingObjectsFromArray:v116];
    v118 = v177;
    v119 = v117;
    v120 = v176;
    v121 = v114;
    if (v115)
    {
      *v231 = v115;
      *&v231[8] = FCReadingHistorySyncResults;
      v122 = objc_msgSendSuper2(v231, sel_init);
      v115 = v122;
      if (v122)
      {
        objc_storeStrong(&v122->_modifiedArticleIDs, v177);
        objc_storeStrong(&v115->_deletedArticleIDs, v117);
        objc_storeStrong(&v115->_newlyCreatedArticleIDs, v176);
        objc_storeStrong(&v115->_articleExposures, v114);
      }
    }
  }

  else
  {
    v113 = 0;
    v115 = 0;
  }

  if (v115)
  {
    modifiedArticleIDs = v115->_modifiedArticleIDs;
  }

  else
  {
    modifiedArticleIDs = 0;
  }

  v182 = modifiedArticleIDs;
  v185 = [(NSArray *)v182 arrayByAddingObjectsFromArray:v173];
  if (v115)
  {
    newlyCreatedArticleIDs = v115->_newlyCreatedArticleIDs;
  }

  else
  {
    newlyCreatedArticleIDs = 0;
  }

  v125 = newlyCreatedArticleIDs;
  articleExposureRegistry2 = [(FCReadingHistory *)self articleExposureRegistry];
  v127 = articleExposureRegistry2;
  if (v115)
  {
    articleExposures = v115->_articleExposures;
  }

  else
  {
    articleExposures = 0;
  }

  [articleExposureRegistry2 registerExposures:articleExposures];

  if ((v113 & 1) != 0 || [v173 count])
  {
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    v130 = [observers copy];

    v131 = [v130 countByEnumeratingWithState:&v202 objects:v218 count:16];
    if (v131)
    {
      v132 = v131;
      v133 = *v203;
      do
      {
        v134 = 0;
        do
        {
          if (*v203 != v133)
          {
            objc_enumerationMutation(v130);
          }

          v135 = *(*(&v202 + 1) + 8 * v134);
          if (objc_opt_respondsToSelector())
          {
            if (v115)
            {
              deletedArticleIDs = v115->_deletedArticleIDs;
            }

            else
            {
              deletedArticleIDs = 0;
            }

            [v135 readingHistory:self didRemoveArticlesWithIDs:deletedArticleIDs];
          }

          ++v134;
        }

        while (v132 != v134);
        v137 = [v130 countByEnumeratingWithState:&v202 objects:v218 count:16];
        v132 = v137;
      }

      while (v137);
    }
  }

  if ([(NSArray *)v125 count])
  {
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    observers2 = [(FCPrivateDataController *)self observers];
    v139 = [observers2 copy];

    v140 = [v139 countByEnumeratingWithState:&v198 objects:v217 count:16];
    if (v140)
    {
      v141 = v140;
      v142 = *v199;
      do
      {
        for (k = 0; k != v141; ++k)
        {
          if (*v199 != v142)
          {
            objc_enumerationMutation(v139);
          }

          v144 = *(*(&v198 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v144 readingHistory:self didAddArticlesWithIDs:v125];
          }
        }

        v141 = [v139 countByEnumeratingWithState:&v198 objects:v217 count:16];
      }

      while (v141);
    }
  }

  if ([v185 count])
  {
    v145 = objc_opt_new();
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v146 = v185;
    v147 = [v146 countByEnumeratingWithState:&v194 objects:v216 count:16];
    if (v147)
    {
      v148 = v147;
      v149 = *v195;
      do
      {
        for (m = 0; m != v148; ++m)
        {
          if (*v195 != v149)
          {
            objc_enumerationMutation(v146);
          }

          [v145 setObject:&unk_1F2E6FB70 forKeyedSubscript:*(*(&v194 + 1) + 8 * m)];
        }

        v148 = [v146 countByEnumeratingWithState:&v194 objects:v216 count:16];
      }

      while (v148);
    }

    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    observers3 = [(FCPrivateDataController *)self observers];
    v152 = [observers3 copy];

    v153 = [v152 countByEnumeratingWithState:&v190 objects:v215 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = *v191;
      do
      {
        for (n = 0; n != v154; ++n)
        {
          if (*v191 != v155)
          {
            objc_enumerationMutation(v152);
          }

          v157 = *(*(&v190 + 1) + 8 * n);
          if (objc_opt_respondsToSelector())
          {
            [v157 readingHistory:self didChangeFeaturesForArticles:v145];
          }
        }

        v154 = [v152 countByEnumeratingWithState:&v190 objects:v215 count:16];
      }

      while (v154);
    }
  }

  if (v170)
  {
    context = [(FCPrivateDataController *)self context];
    personalizationData = [context personalizationData];
    [personalizationData markAsDirty];

    context2 = [(FCPrivateDataController *)self context];
    userEventHistory = [context2 userEventHistory];
    [userEventHistory markAsDirty];

    articleExposureRegistry3 = [(FCReadingHistory *)self articleExposureRegistry];
    [articleExposureRegistry3 eraseAll];

    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    observers4 = [(FCPrivateDataController *)self observers];
    v164 = [observers4 copy];

    v165 = [v164 countByEnumeratingWithState:&v186 objects:v214 count:16];
    if (v165)
    {
      v166 = v165;
      v167 = *v187;
      do
      {
        for (ii = 0; ii != v166; ++ii)
        {
          if (*v187 != v167)
          {
            objc_enumerationMutation(v164);
          }

          v169 = *(*(&v186 + 1) + 8 * ii);
          if (objc_opt_respondsToSelector())
          {
            [v169 readingHistoryLikelyClearedRemotely:self];
          }
        }

        v166 = [v164 countByEnumeratingWithState:&v186 objects:v214 count:16];
      }

      while (v166);
    }
  }
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByIdentifier = self->_itemsByIdentifier;
  }

  else
  {
    itemsByIdentifier = 0;
  }

  return [(NSMutableDictionary *)itemsByIdentifier allKeys];
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCReadingHistory;
  [(FCPrivateDataController *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCReadingHistory;
  [(FCPrivateDataController *)&v3 removeObserver:observer];
}

- (id)recordsForRestoringZoneName:(id)name
{
  readingHistoryItems = [(FCReadingHistory *)self readingHistoryItems];
  v4 = _FCPruneHistoryForUpload(readingHistoryItems, &__block_literal_global_99, &__block_literal_global_11_1);
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_46_0];

  return v5;
}

- (id)historyItemsForArticleIDs:(id)ds
{
  v3 = [(FCReadingHistory *)self historyItemsByArticleIDForArticleIDs:ds];
  allValues = [v3 allValues];

  return allValues;
}

- (id)historyItemsByArticleIDForArticleIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
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
    v9[2] = __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_50;
    v9[3] = &unk_1E7C37408;
    v9[4] = self;
    v10 = dsCopy;
    v11 = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v9];

    v7 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_50(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v4 fc_subdictionaryForKeys:v3];

  v6 = [v5 count];
  if (v6 == [a1[5] count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
  }

  else
  {
    v7 = a1[5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_2;
    v13[3] = &unk_1E7C373E0;
    v8 = v5;
    v9 = a1[4];
    v14 = v8;
    v15 = v9;
    v10 = [v7 fc_dictionaryWithValueBlock:v13];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

id __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[12];
    }

    v6 = v5;
    v7 = FCHistoryItemIDFromArticleID(v3);
    v4 = [v6 objectForKeyedSubscript:v7];

    [(FCReadingHistory *)*(a1 + 40) _cacheHistoryItemByArticleID:v4];
  }

  return v4;
}

- (void)_cacheHistoryItemByArticleID:(uint64_t)d
{
  v3 = a2;
  v4 = v3;
  if (d && v3)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v5 = *(d + 112);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_2;
      v10[3] = &unk_1E7C36C58;
      v10[4] = d;
      v11 = v4;
      [v5 performWriteSync:v10];
      v6 = v11;
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_3;
      v7[3] = &unk_1E7C36C58;
      v8 = v4;
      dCopy = d;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      v6 = v8;
    }
  }
}

- (id)_sortedReadingHistoryItemsWithMaxCount:(void *)count
{
  if (count)
  {
    context = [count context];
    bundleSubscriptionManager = [context bundleSubscriptionManager];
    bundleSubscription = [bundleSubscriptionManager bundleSubscription];
    v7 = objc_getAssociatedObject(bundleSubscription, (bundleSubscription + 1));
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    v9 = unsignedIntegerValue;
    v10 = objc_getAssociatedObject(bundleSubscription, ~unsignedIntegerValue);
    v11 = [v10 unsignedIntegerValue] ^ v9;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke;
    aBlock[3] = &__block_descriptor_33_e40___NSDate_16__0___FCReadingHistoryItem__8l;
    v24 = v11 & 1;
    v12 = _Block_copy(aBlock);
    readingHistoryItems = [count readingHistoryItems];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_2;
    v21[3] = &__block_descriptor_33_e32_B16__0___FCReadingHistoryItem__8l;
    v22 = v11 & 1;
    v14 = [readingHistoryItems fc_arrayOfObjectsPassingTest:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_3;
    v19[3] = &unk_1E7C374B8;
    v20 = v12;
    v15 = v12;
    v16 = [v14 sortedArrayUsingComparator:v19];
    v17 = [v16 fc_subarrayWithMaxCount:a2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)mostRecentlyCompletedListeningArticlesWithMaxCount:(unint64_t)count
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastListenedAt" ascending:0];
  if (self)
  {
    v6 = &__block_literal_global_58;
    v7 = v5;
    readingHistoryItems = [(FCReadingHistory *)self readingHistoryItems];
    v9 = [readingHistoryItems fc_arrayOfObjectsPassingTest:&__block_literal_global_58];

    v14[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    v11 = [v9 sortedArrayUsingDescriptors:v10];
    v12 = [v11 fc_subarrayWithMaxCount:count];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)sortedVisitedArticleIDsSatisfying:(id)satisfying
{
  satisfyingCopy = satisfying;
  v5 = [(FCReadingHistory *)self _sortedReadingHistoryItemsWithMaxCount:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__FCReadingHistory_sortedVisitedArticleIDsSatisfying___block_invoke;
  v9[3] = &unk_1E7C37430;
  v10 = satisfyingCopy;
  v6 = satisfyingCopy;
  v7 = [v5 fc_arrayByTransformingWithBlock:v9];

  return v7;
}

id __54__FCReadingHistory_sortedVisitedArticleIDsSatisfying___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 articleID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)sortedListenedArticleIDs
{
  readingHistoryItems = [(FCReadingHistory *)self readingHistoryItems];
  v3 = [readingHistoryItems fc_arrayOfObjectsPassingTest:&__block_literal_global_63];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_66_0];
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_68_0];

  return v5;
}

BOOL __44__FCReadingHistory_sortedListenedArticleIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lastListenedAt];
  v3 = v2 != 0;

  return v3;
}

uint64_t __44__FCReadingHistory_sortedListenedArticleIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastListenedAt];
  v6 = [v4 lastListenedAt];

  v7 = [v5 compare:v6];
  return v7;
}

id __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 lastVisitedAt];
  if (v4 == 1)
  {
    v6 = [v3 lastListenedAt];
    if ([v5 fc_isLaterThanOrEqualTo:v6])
    {
      [v3 lastVisitedAt];
    }

    else
    {
      [v3 lastListenedAt];
    }
    v7 = ;

    v5 = v7;
  }

  return v5;
}

BOOL __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 lastVisitedAt];
  v6 = v5;
  if (v4 == 1)
  {
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 lastListenedAt];
      v7 = v8 != 0;
    }
  }

  else
  {
    v7 = v5 != 0;
  }

  return v7;
}

uint64_t __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, a3);
  v9 = (*(*(a1 + 32) + 16))();

  v10 = [v8 compare:v9];
  return v10;
}

- (NSSet)allReadArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
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
  v9[2] = __37__FCReadingHistory_allReadArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __37__FCReadingHistory_allReadArticleIDs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasArticleBeenRead])
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSSet)allSeenArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
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
  v9[2] = __37__FCReadingHistory_allSeenArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __37__FCReadingHistory_allSeenArticleIDs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasArticleBeenSeen])
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSSet)allConsumedArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
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
  v9[2] = __41__FCReadingHistory_allConsumedArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __41__FCReadingHistory_allConsumedArticleIDs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasArticleBeenConsumed])
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSDictionary)readingHistoryItemsByArticleID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
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
  v7[2] = __50__FCReadingHistory_readingHistoryItemsByArticleID__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __50__FCReadingHistory_readingHistoryItemsByArticleID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v6 = v2;
  v3 = [v6 fc_dictionaryByTransformingKeysWithKeyAndValueBlock:&__block_literal_global_75];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)consumedArticleIDsForTagID:(id)d fromTime:(id)time
{
  dCopy = d;
  timeCopy = time;
  array = [MEMORY[0x1E695DF70] array];
  readingHistoryItems = [(FCReadingHistory *)self readingHistoryItems];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__FCReadingHistory_consumedArticleIDsForTagID_fromTime___block_invoke;
  v16[3] = &unk_1E7C37500;
  v17 = dCopy;
  v18 = timeCopy;
  v10 = array;
  v19 = v10;
  v11 = timeCopy;
  v12 = dCopy;
  [readingHistoryItems enumerateObjectsUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __56__FCReadingHistory_consumedArticleIDsForTagID_fromTime___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  if ([v9 hasArticleBeenConsumed])
  {
    v3 = [v9 sourceChannelTagID];
    if (v3)
    {
      v4 = v3;
      v5 = [v9 sourceChannelTagID];
      if ([v5 isEqualToString:a1[4]])
      {
        v6 = [v9 lastVisitedAt];
        v7 = [v6 fc_isLaterThan:a1[5]];

        if (!v7)
        {
          goto LABEL_8;
        }

        v8 = a1[6];
        v4 = [v9 articleID];
        [v8 addObject:v4];
      }

      else
      {
      }
    }
  }

LABEL_8:
}

- (id)lastVisitedDateForArticleID:(id)d
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:d];
  lastVisitedAt = [v3 lastVisitedAt];

  return lastVisitedAt;
}

- (id)_readingHistoryItemForArticleID:(uint64_t)d
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (d && v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    v6 = *(d + 112);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__FCReadingHistory__readingHistoryItemForArticleID___block_invoke_2;
    v8[3] = &unk_1E7C37138;
    v10 = &v11;
    v8[4] = d;
    v9 = v4;
    [v6 performReadSync:v8];

    v5 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

- (BOOL)hasArticleBeenRead:(id)read
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:read];
  hasArticleBeenRead = [v3 hasArticleBeenRead];

  return hasArticleBeenRead;
}

- (BOOL)hasArticleBeenReadMoreThanThreshold:(id)threshold
{
  v4 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:threshold];
  readCount = [v4 readCount];
  context = [(FCPrivateDataController *)self context];
  appConfigurationManager = [context appConfigurationManager];
  appConfiguration = [appConfigurationManager appConfiguration];
  LOBYTE(readCount) = readCount > [appConfiguration articleReadCountThreshold];

  return readCount;
}

- (BOOL)hasArticleBeenVisited:(id)visited
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:visited];
  lastVisitedAt = [v3 lastVisitedAt];
  v5 = lastVisitedAt != 0;

  return v5;
}

- (BOOL)hasArticleBeenSeen:(id)seen
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:seen];
  hasArticleBeenSeen = [v3 hasArticleBeenSeen];

  return hasArticleBeenSeen;
}

- (BOOL)markArticleAsSeenWithHeadline:(id)headline
{
  v11 = *MEMORY[0x1E69E9840];
  if (!headline)
  {
    return 0;
  }

  headlineCopy = headline;
  v4 = MEMORY[0x1E695DEC8];
  headlineCopy2 = headline;
  v6 = [v4 arrayWithObjects:&headlineCopy count:1];

  v7 = [(FCReadingHistory *)self markArticlesAsSeenWithHeadlines:v6 rememberForever:0];
  v8 = [v7 count] != 0;

  return v8;
}

- (id)markArticlesAsSeenWithHeadlines:(uint64_t)headlines rememberForever:
{
  if (self)
  {
    headlinesCopy = headlines;
    v5 = MEMORY[0x1E695DF00];
    v6 = a2;
    date = [v5 date];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke;
    v16[3] = &unk_1E7C37528;
    v17 = date;
    v8 = date;
    v9 = [v6 fc_arrayByTransformingWithBlock:v16];
    v10 = [(FCReadingHistory *)self _markHistoryItemsAsSeenWithItemExposures:v9 rememberForever:headlinesCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke_2;
    v14[3] = &unk_1E7C37550;
    v15 = v10;
    v11 = v10;
    v12 = [v6 fc_arrayOfObjectsPassingTest:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)markArticleAsSeenWithHeadline:(id)headline rememberForever:(BOOL)forever
{
  v13 = *MEMORY[0x1E69E9840];
  if (!headline)
  {
    return 0;
  }

  foreverCopy = forever;
  headlineCopy = headline;
  v6 = MEMORY[0x1E695DEC8];
  headlineCopy2 = headline;
  v8 = [v6 arrayWithObjects:&headlineCopy count:1];

  v9 = [(FCReadingHistory *)self markArticlesAsSeenWithHeadlines:v8 rememberForever:foreverCopy];
  v10 = [v9 count] != 0;

  return v10;
}

- (BOOL)markArticleAsSeenWithArticleID:(id)d articleVersion:(int64_t)version seenDate:(id)date
{
  v5 = 0;
  v15[1] = *MEMORY[0x1E69E9840];
  if (d && date)
  {
    dateCopy = date;
    dCopy = d;
    v11 = [[FCItemExposure alloc] initWithItemID:dCopy exposedAt:dateCopy version:version];

    v15[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [(FCReadingHistory *)self _markHistoryItemsAsSeenWithItemExposures:v12 rememberForever:0];

    v5 = [v13 containsObject:dCopy];
  }

  return v5;
}

- (id)_markHistoryItemsAsSeenWithItemExposures:(int)exposures rememberForever:
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v41;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v41 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v40 + 1) + 8 * i);
          itemID = [v9 itemID];
          v11 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:itemID];
          v12 = [v11 mutableCopyWithZone:0];

          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E69B6F78]);
            itemID2 = [v9 itemID];
            [v12 setArticleID:itemID2];
          }

          v39 = 0;
          itemID3 = [v9 itemID];
          maxExposedVersion = [v9 maxExposedVersion];
          maxExposedVersionFirstExposedAt = [v9 maxExposedVersionFirstExposedAt];
          firstExposedAt = [v9 firstExposedAt];
          [(FCReadingHistory *)self _markArticleAsSeenWithArticleID:itemID3 rememberForever:exposures articleVersion:maxExposedVersion seenDate:maxExposedVersionFirstExposedAt firstSeenDate:firstExposedAt historyItem:v12 modifiedHistoryFeaturesOut:&v39];

          if (v39)
          {
            [array addObject:v12];
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
            itemID4 = [v9 itemID];
            [dictionary setObject:v18 forKey:itemID4];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v6);
    }

    [FCReadingHistory _addHistoryItems:self addToStore:array];
    articleExposureRegistry = [self articleExposureRegistry];
    [articleExposureRegistry registerExposures:obj];

    v21 = [[FCModifyHistoryCommand alloc] initWithHistoryItems:array merge:0];
    [self addCommandToCommandQueue:v21];
    if ([dictionary count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      observers = [self observers];
      v23 = [observers copy];

      v24 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v35 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v28 readingHistory:self didChangeFeaturesForArticles:dictionary];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v25);
      }
    }

    self = [array fc_setByTransformingWithBlock:&__block_literal_global_89];

    v4 = v30;
  }

  return self;
}

FCItemExposure *__68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCItemExposure alloc];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [v6 articleID];
    v8 = [v6 publisherArticleVersion];

    v9 = [(FCItemExposure *)v4 initWithItemID:v7 exposedAt:v5 version:v8];
    v4 = v9;
  }

  return v4;
}

uint64_t __68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 articleID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)_markArticleAsSeenWithArticleID:(int)d rememberForever:(uint64_t)forever articleVersion:(void *)version seenDate:(void *)date firstSeenDate:(void *)seenDate historyItem:(uint64_t *)item modifiedHistoryFeaturesOut:
{
  v40 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  dateCopy = date;
  seenDateCopy = seenDate;
  if (!self)
  {
    goto LABEL_25;
  }

  v18 = MEMORY[0x1E696AF00];
  v19 = a2;
  [v18 isMainThread];
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v33 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v34 = 2080;
    v35 = "FCReadingHistory.m";
    v36 = 1024;
    v37 = 982;
    v38 = 2114;
    v39 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (seenDateCopy)
    {
      goto LABEL_7;
    }
  }

  else if (seenDateCopy)
  {
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item"];
    *buf = 136315906;
    v33 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v34 = 2080;
    v35 = "FCReadingHistory.m";
    v36 = 1024;
    v37 = 983;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_7:
  articleID = [seenDateCopy articleID];
  v21 = [v19 isEqualToString:articleID];

  if ((v21 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "[articleID isEqualToString:item.articleID]"];
    *buf = 136315906;
    v33 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v34 = 2080;
    v35 = "FCReadingHistory.m";
    v36 = 1024;
    v37 = 984;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (item)
    {
      goto LABEL_12;
    }
  }

  else if (item)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "modifiedHistoryFeaturesOut"];
    *buf = 136315906;
    v33 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v34 = 2080;
    v35 = "FCReadingHistory.m";
    v36 = 1024;
    v37 = 985;
    v38 = 2114;
    v39 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_12:
  hasArticleBeenSeen = [seenDateCopy hasArticleBeenSeen];
  if (!hasArticleBeenSeen)
  {
    [seenDateCopy setHasArticleBeenSeen:1];
    v27 = 9;
LABEL_17:
    [seenDateCopy setFirstSeenAt:dateCopy];
    if (d)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  firstSeenAt = [seenDateCopy firstSeenAt];
  if (!firstSeenAt || (v24 = firstSeenAt, [seenDateCopy firstSeenAt], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(dateCopy, "fc_isEarlierThan:", v25), v25, v24, (v26 & 1) != 0))
  {
    v27 = 8;
    goto LABEL_17;
  }

  v27 = 0;
  if (d)
  {
LABEL_18:
    if (([seenDateCopy isPruningDisabled] & 1) == 0)
    {
      [seenDateCopy setPruningDisabled:1];
      v27 |= 0x8000uLL;
    }
  }

LABEL_21:
  if (!hasArticleBeenSeen || [seenDateCopy maxVersionSeen] < forever)
  {
    [seenDateCopy setMaxVersionSeen:forever];
    [seenDateCopy setFirstSeenAtOfMaxVersionSeen:versionCopy];
    v27 |= 0x90uLL;
  }

  *item = v27;
LABEL_25:
}

- (BOOL)hasArticleCompletedListening:(id)listening
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:listening];
  hasArticleCompletedListening = [v3 hasArticleCompletedListening];

  return hasArticleCompletedListening;
}

- (BOOL)markArticle:(id)article withCompletedListening:(BOOL)listening
{
  listeningCopy = listening;
  articleCopy = article;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self hasArticleCompletedListening:articleCopy]^ listeningCopy;
  if (v7 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__FCReadingHistory_markArticle_withCompletedListening___block_invoke;
    v9[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v10 = listeningCopy;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:articleCopy withBlock:v9];
  }

  return v7;
}

void __55__FCReadingHistory_markArticle_withCompletedListening___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleCompletedListening])
  {
    [v5 setHasArticleCompletedListening:?];
    *a3 = 0x2000;
  }
}

- (void)_modifyHistoryForArticleID:(void *)d withBlock:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dCopy = d;
  v7 = dCopy;
  if (!self)
  {
    goto LABEL_24;
  }

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCReadingHistory _modifyHistoryForArticleID:withBlock:]";
      v37 = 2080;
      v38 = "FCReadingHistory.m";
      v39 = 1024;
      v40 = 1598;
      v41 = 2114;
      v42 = v23;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!dCopy)
  {
LABEL_21:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "modifyBlock != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCReadingHistory _modifyHistoryForArticleID:withBlock:]";
      v37 = 2080;
      v38 = "FCReadingHistory.m";
      v39 = 1024;
      v40 = 1599;
      v41 = 2114;
      v42 = v24;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

LABEL_23:
    [MEMORY[0x1E696AF00] isMainThread];
    goto LABEL_24;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v8 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:v5];
  v9 = [v8 mutableCopyWithZone:0];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69B6F78]);
    [v9 setArticleID:v5];
  }

  *buf = 0;
  (v7)[2](v7, v9, buf);
  v35 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [FCReadingHistory _addHistoryItems:self addToStore:v10];

  v11 = [FCModifyHistoryCommand alloc];
  v34 = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v13 = [(FCModifyHistoryCommand *)v11 initWithHistoryItems:v12 merge:0];

  [self addCommandToCommandQueue:v13];
  if (*buf)
  {
    v25 = v7;
    v26 = v5;
    v32 = v5;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v33 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    observers = [self observers];
    v17 = [observers copy];

    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v22 readingHistory:self didChangeFeaturesForArticles:v15];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v19);
    }

    v7 = v25;
    v5 = v26;
  }

LABEL_24:
}

- (BOOL)hasArticleCompletedReading:(id)reading
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:reading];
  hasArticleCompletedReading = [v3 hasArticleCompletedReading];

  return hasArticleCompletedReading;
}

- (BOOL)markArticle:(id)article withCompletedReading:(BOOL)reading
{
  readingCopy = reading;
  articleCopy = article;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self hasArticleCompletedReading:articleCopy]^ readingCopy;
  if (v7 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__FCReadingHistory_markArticle_withCompletedReading___block_invoke;
    v9[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v10 = readingCopy;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:articleCopy withBlock:v9];
  }

  return v7;
}

void __53__FCReadingHistory_markArticle_withCompletedReading___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleCompletedReading])
  {
    [v5 setHasArticleCompletedReading:?];
    *a3 = 0x10000;
  }
}

- (BOOL)hasArticleBeenRemovedFromAudio:(id)audio
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:audio];
  hasArticleBeenRemovedFromAudio = [v3 hasArticleBeenRemovedFromAudio];

  return hasArticleBeenRemovedFromAudio;
}

- (BOOL)markArticle:(id)article withRemovedFromAudio:(BOOL)audio
{
  audioCopy = audio;
  articleCopy = article;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self hasArticleBeenRemovedFromAudio:articleCopy]^ audioCopy;
  if (v7 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__FCReadingHistory_markArticle_withRemovedFromAudio___block_invoke;
    v9[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v10 = audioCopy;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:articleCopy withBlock:v9];
  }

  return v7;
}

void __53__FCReadingHistory_markArticle_withRemovedFromAudio___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleBeenRemovedFromAudio])
  {
    [v5 setHasArticleBeenRemovedFromAudio:?];
    *a3 = 0x20000;
  }
}

- (unint64_t)likingStatusForArticleID:(id)d
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:d];
  articleLikingStatus = [v3 articleLikingStatus];

  return articleLikingStatus;
}

- (BOOL)markArticle:(id)article withLikingStatus:(unint64_t)status
{
  articleCopy = article;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self likingStatusForArticleID:articleCopy];
  if (v7 != status)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__FCReadingHistory_markArticle_withLikingStatus___block_invoke;
    v9[3] = &__block_descriptor_40_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v9[4] = status;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:articleCopy withBlock:v9];
  }

  return v7 != status;
}

void __49__FCReadingHistory_markArticle_withLikingStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 articleLikingStatus] != *(a1 + 32))
  {
    [v5 setArticleLikingStatus:?];
    *a3 = 32;
  }
}

- (void)_markArticle:(uint64_t)article withLikingStatus:
{
  if (self)
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = a2;
    [v5 isMainThread];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__FCReadingHistory__markArticle_withLikingStatus___block_invoke;
    v7[3] = &__block_descriptor_40_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v7[4] = article;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v6 withBlock:v7];
  }
}

void *__50__FCReadingHistory__markArticle_withLikingStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 setArticleLikingStatus:*(a1 + 32)];
  *a3 = 32;
  return result;
}

- (BOOL)toggleLikeForArticleWithID:(id)d
{
  dCopy = d;
  context = [(FCPrivateDataController *)self context];
  appConfigurationManager = [context appConfigurationManager];
  appConfiguration = [appConfigurationManager appConfiguration];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  context2 = [(FCPrivateDataController *)self context];
  appConfigurationManager2 = [context2 appConfigurationManager];
  appConfiguration2 = [appConfigurationManager2 appConfiguration];
  likeDislikeBehavior = [appConfiguration2 likeDislikeBehavior];

  if (likeDislikeBehavior == 2)
  {
    goto LABEL_7;
  }

  if (likeDislikeBehavior != 1)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v13 = [(FCReadingHistory *)self likingStatusForArticleID:dCopy];
  if (v13 == 2)
  {
    goto LABEL_7;
  }

  v14 = 0;
  if (v13 == 1)
  {
    v15 = 0;
    goto LABEL_8;
  }

  if (!v13)
  {
LABEL_7:
    v15 = 1;
    v14 = 1;
LABEL_8:
    [(FCReadingHistory *)self _markArticle:dCopy withLikingStatus:v15];
  }

LABEL_10:

  return v14;
}

- (BOOL)toggleDislikeForArticleWithID:(id)d
{
  dCopy = d;
  context = [(FCPrivateDataController *)self context];
  appConfigurationManager = [context appConfigurationManager];
  appConfiguration = [appConfigurationManager appConfiguration];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    context2 = [(FCPrivateDataController *)self context];
    appConfigurationManager2 = [context2 appConfigurationManager];
    appConfiguration2 = [appConfigurationManager2 appConfiguration];
    likeDislikeBehavior = [appConfiguration2 likeDislikeBehavior];

    if (likeDislikeBehavior == 2)
    {
      v14 = 1;
LABEL_8:
      [(FCReadingHistory *)self _markArticle:dCopy withLikingStatus:likeDislikeBehavior];
      goto LABEL_9;
    }

    if (likeDislikeBehavior == 1)
    {
      v13 = [(FCReadingHistory *)self likingStatusForArticleID:dCopy];
      if (v13 >= 2)
      {
        v14 = 0;
        if (v13 != 2)
        {
          goto LABEL_9;
        }

        likeDislikeBehavior = 0;
      }

      else
      {
        v14 = 1;
        likeDislikeBehavior = 2;
      }

      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (BOOL)hasArticleBeenMarkedAsOffensive:(id)offensive
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:offensive];
  hasArticleBeenMarkedOffensive = [v3 hasArticleBeenMarkedOffensive];

  return hasArticleBeenMarkedOffensive;
}

- (BOOL)toggleArticleHasBeenMarkedAsOffensive:(id)offensive
{
  offensiveCopy = offensive;
  v5 = [(FCReadingHistory *)self hasArticleBeenMarkedAsOffensive:offensiveCopy];
  v6 = v5;
  [(FCReadingHistory *)self markArticle:offensiveCopy asOffensive:!v5];

  return !v6;
}

- (void)markArticle:(id)article asOffensive:(BOOL)offensive
{
  offensiveCopy = offensive;
  v23 = *MEMORY[0x1E69E9840];
  articleCopy = article;
  [MEMORY[0x1E696AF00] isMainThread];
  if ([(FCReadingHistory *)self hasArticleBeenMarkedAsOffensive:articleCopy]!= offensiveCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__FCReadingHistory_markArticle_asOffensive___block_invoke;
    v19[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v20 = offensiveCopy;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:articleCopy withBlock:v19];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    v8 = [observers copy];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v21 = articleCopy;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
            [v13 readingHistory:self didChangeOffensiveStateForArticlesWithIDs:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

void __44__FCReadingHistory_markArticle_asOffensive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleBeenMarkedOffensive])
  {
    [v5 setHasArticleBeenMarkedOffensive:?];
    *a3 = 512;
  }
}

- (BOOL)hasArticleBeenConsumed:(id)consumed
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:consumed];
  hasArticleBeenConsumed = [v3 hasArticleBeenConsumed];

  return hasArticleBeenConsumed;
}

- (void)markArticle:(id)article asArticleConsumed:(BOOL)consumed sourceChannelTagID:(id)d
{
  consumedCopy = consumed;
  articleCopy = article;
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if ([(FCReadingHistory *)self hasArticleBeenConsumed:articleCopy]!= consumedCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FCReadingHistory_markArticle_asArticleConsumed_sourceChannelTagID___block_invoke;
    v10[3] = &unk_1E7C375B8;
    v12 = consumedCopy;
    v11 = dCopy;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:articleCopy withBlock:v10];
  }
}

void __69__FCReadingHistory_markArticle_asArticleConsumed_sourceChannelTagID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (*(a1 + 40) != [v6 hasArticleBeenConsumed])
  {
    [v6 setHasArticleBeenConsumed:?];
    if (*(a1 + 32))
    {
      v5 = FCDeviceIdentifierForVendor();
      [v6 setDeviceID:v5];
      [v6 setSourceChannelTagID:*(a1 + 32)];
    }

    *a3 = 256;
  }
}

- (BOOL)markArticleAsReadWithArticleID:(id)d articleVersion:(int64_t)version readDate:(id)date
{
  v26[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__FCReadingHistory_markArticleAsReadWithArticleID_articleVersion_readDate___block_invoke;
  v16[3] = &unk_1E7C375E0;
  v10 = dateCopy;
  versionCopy = version;
  v17 = v10;
  selfCopy = self;
  v11 = dCopy;
  v19 = v11;
  v20 = &v22;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:v11 withBlock:v16];
  v12 = [[FCItemExposure alloc] initWithItemID:v11 exposedAt:v10 version:version];
  articleExposureRegistry = [(FCReadingHistory *)self articleExposureRegistry];
  v26[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [articleExposureRegistry registerExposures:v14];

  LOBYTE(articleExposureRegistry) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return articleExposureRegistry & 1;
}

void __75__FCReadingHistory_markArticleAsReadWithArticleID_articleVersion_readDate___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = a2;
  [v7 setLastVisitedAt:*(a1 + 32)];
  v5 = [v7 hasArticleBeenRead];
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    [v7 setHasArticleBeenRead:1];
    v6 = 6;
  }

  if ([v7 maxVersionRead] < *(a1 + 64))
  {
    [v7 setMaxVersionRead:?];
    v6 |= 0x40uLL;
  }

  [v7 setReadCount:{objc_msgSend(v7, "readCount") + 1}];
  [(FCReadingHistory *)*(a1 + 40) _markArticleAsSeenWithArticleID:0 rememberForever:*(a1 + 64) articleVersion:*(a1 + 32) seenDate:*(a1 + 32) firstSeenDate:v7 historyItem:a3 modifiedHistoryFeaturesOut:?];
  *a3 = v6 | 0x4000;
  *(*(*(a1 + 56) + 8) + 24) = v5 ^ 1;
}

- (void)markArticleAsReadWithHeadline:(id)headline fromGroupType:(int64_t)type swipedToArticle:(BOOL)article onScreenChecker:(id)checker
{
  articleCopy = article;
  v46 = *MEMORY[0x1E69E9840];
  headlineCopy = headline;
  checkerCopy = checker;
  v10 = headlineCopy;
  v31 = checkerCopy;
  articleID = [headlineCopy articleID];
  if (articleID)
  {
    articleID2 = [headlineCopy articleID];
    publisherArticleVersion = [headlineCopy publisherArticleVersion];
    date = [MEMORY[0x1E695DF00] date];
    LODWORD(publisherArticleVersion) = [(FCReadingHistory *)self markArticleAsReadWithArticleID:articleID2 articleVersion:publisherArticleVersion readDate:date];

    if (publisherArticleVersion)
    {
      v27 = articleID;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      observers = [(FCPrivateDataController *)self observers];
      v28 = headlineCopy;
      v16 = [observers copy];

      v17 = v16;
      v18 = v16;
      v10 = v28;
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v33;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v32 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v23 readingHistory:self didAddHeadline:v10 fromGroupType:type swipedToArticle:articleCopy withOnScreenChecker:v31];
            }

            if (objc_opt_respondsToSelector())
            {
              articleID3 = [v10 articleID];
              v36 = articleID3;
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
              [v23 readingHistory:self didAddArticlesWithIDs:v25];

              v10 = v28;
            }
          }

          v20 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v20);
      }

      articleID = v27;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "articleID"];
    *buf = 136315906;
    v39 = "[FCReadingHistory markArticleAsReadWithHeadline:fromGroupType:swipedToArticle:onScreenChecker:]";
    v40 = 2080;
    v41 = "FCReadingHistory.m";
    v42 = 1024;
    v43 = 1273;
    v44 = 2114;
    v45 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (void)removeArticleFromHistory:(id)history
{
  v30 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!historyCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v23 = "[FCReadingHistory removeArticleFromHistory:]";
    v24 = 2080;
    v25 = "FCReadingHistory.m";
    v26 = 1024;
    v27 = 1306;
    v28 = 2114;
    v29 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:historyCopy];

  if (v5)
  {
    [(FCReadingHistory *)self _modifyHistoryForArticleID:historyCopy withBlock:&__block_literal_global_116];
    articleExposureRegistry = [(FCReadingHistory *)self articleExposureRegistry];
    [articleExposureRegistry removeExposureForItemID:historyCopy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    v8 = [observers copy];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (historyCopy)
          {
            v13 = *(*(&v16 + 1) + 8 * v12);
            if (objc_opt_respondsToSelector())
            {
              v20 = historyCopy;
              v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
              [v13 readingHistory:self didRemoveArticlesWithIDs:v14];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

void __45__FCReadingHistory_removeArticleFromHistory___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = MEMORY[0x1E69E58C0];
  v13 = v4;
  v6 = [v4 lastVisitedAt];
  LOBYTE(v5) = [v5 nf_object:v6 isEqualToObject:0];

  v7 = 0;
  if ((v5 & 1) == 0)
  {
    [v13 setLastVisitedAt:0];
    v7 = 4;
  }

  v8 = MEMORY[0x1E69E58C0];
  v9 = [v13 readingPosition];
  LOBYTE(v8) = [v8 nf_object:v9 isEqualToObject:0];

  if ((v8 & 1) == 0)
  {
    [v13 setReadingPosition:0];
    v7 |= 0x1000uLL;
  }

  v10 = MEMORY[0x1E69E58C0];
  v11 = [v13 lastListenedAt];
  LOBYTE(v10) = [v10 nf_object:v11 isEqualToObject:0];

  if ((v10 & 1) == 0)
  {
    [v13 setLastListenedAt:0];
    v7 |= 0x800uLL;
  }

  [v13 listeningProgress];
  if (v12 != 0.0)
  {
    [v13 setListeningProgress:0.0];
    v7 |= 0x400uLL;
  }

  if ([v13 hasArticleBeenRead])
  {
    [v13 setHasArticleBeenRead:0];
    v7 |= 2uLL;
  }

  if ([v13 hasArticleBeenSeen])
  {
    [v13 setHasArticleBeenSeen:0];
    v7 |= 1uLL;
  }

  if ([v13 hasArticleCompletedListening])
  {
    [v13 setHasArticleCompletedListening:0];
    v7 |= 0x2000uLL;
  }

  if ([v13 hasArticleCompletedReading])
  {
    [v13 setHasArticleCompletedReading:0];
    v7 |= 0x10000uLL;
  }

  if ([v13 hasArticleBeenRemovedFromAudio])
  {
    [v13 setHasArticleBeenRemovedFromAudio:0];
    v7 |= 0x20000uLL;
  }

  *a3 = v7;
}

- (void)clearHistory
{
  v48 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByIdentifier = self->_itemsByIdentifier;
  }

  else
  {
    itemsByIdentifier = 0;
  }

  allKeys = [(NSMutableDictionary *)itemsByIdentifier allKeys];
  if ([allKeys count])
  {
    if (self)
    {
      v5 = self->_itemsByIdentifier;
    }

    else
    {
      v5 = 0;
    }

    allValues = [(NSMutableDictionary *)v5 allValues];
    v7 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_119];

    localStore = [(FCPrivateDataController *)self localStore];
    [localStore removeObjectsForKeys:allKeys];

    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __32__FCReadingHistory_clearHistory__block_invoke_2;
    v44[3] = &unk_1E7C36EA0;
    v44[4] = self;
    [(FCMTWriterLock *)itemsLock performWriteSync:v44];
    v30 = [[FCRemoveHistoryCommand alloc] initWithHistoryItemIDs:allKeys];
    [(FCPrivateDataController *)self addCommandToCommandQueue:?];
    v10 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 setObject:&unk_1F2E6FB70 forKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v13);
    }

    v31 = allKeys;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    v17 = [observers copy];

    v18 = [v17 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v36 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v22 readingHistory:self didChangeFeaturesForArticles:v10];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v19);
    }

    allKeys = v31;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  observers2 = [(FCPrivateDataController *)self observers];
  v24 = [observers2 copy];

  v25 = [v24 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v32 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          [v29 readingHistoryDidClear:self];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v26);
  }
}

uint64_t __32__FCReadingHistory_clearHistory__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeAllObjects];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  return [v5 removeAllObjects];
}

- (double)listeningProgressFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  [v3 listeningProgress];
  v5 = v4;

  return v5;
}

- (id)listeningProgressSavedDateFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  listeningProgressSavedAt = [v3 listeningProgressSavedAt];

  return listeningProgressSavedAt;
}

- (id)firstSeenDateFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  firstSeenAt = [v3 firstSeenAt];

  return firstSeenAt;
}

- (id)readDateFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  lastVisitedAt = [v3 lastVisitedAt];

  return lastVisitedAt;
}

- (void)markArticle:(id)article withListeningProgress:(double)progress
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__FCReadingHistory_markArticle_withListeningProgress___block_invoke;
  v4[3] = &__block_descriptor_40_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
  *&v4[4] = progress;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:article withBlock:v4];
}

void __54__FCReadingHistory_markArticle_withListeningProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  [v5 listeningProgress];
  if (v6 != v7 && vabdd_f64(v6, v7) >= fabs(v7 * 0.000000999999997))
  {
    [v9 setListeningProgress:*(a1 + 32)];
    v8 = [MEMORY[0x1E695DF00] date];
    [v9 setListeningProgressSavedAt:v8];

    *a3 = 1024;
  }
}

- (id)lastListenedFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  lastListenedAt = [v3 lastListenedAt];

  return lastListenedAt;
}

- (void)markArticle:(id)article withLastListened:(id)listened
{
  listenedCopy = listened;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__FCReadingHistory_markArticle_withLastListened___block_invoke;
  v8[3] = &unk_1E7C37628;
  v9 = listenedCopy;
  v7 = listenedCopy;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:article withBlock:v8];
}

void __49__FCReadingHistory_markArticle_withLastListened___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E69E58C0];
  v7 = *(a1 + 32);
  v10 = v5;
  v8 = [v5 lastListenedAt];
  LOBYTE(v6) = [v6 nf_object:v7 isEqualToObject:v8];

  if (v6)
  {
    v9 = 0x40000;
  }

  else
  {
    [v10 setLastListenedAt:*(a1 + 32)];
    v9 = 264192;
  }

  [v10 setListenedCount:{objc_msgSend(v10, "listenedCount") + 1}];
  *a3 = v9;
}

- (int64_t)listenedCountFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  listenedCount = [v3 listenedCount];

  return listenedCount;
}

- (id)readingPositionJSONFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  readingPosition = [v3 readingPosition];

  return readingPosition;
}

- (id)readingPositionSavedDateFor:(id)for
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:for];
  readingPositionSavedAt = [v3 readingPositionSavedAt];

  return readingPositionSavedAt;
}

- (void)markArticle:(id)article withReadingPositionJSON:(id)n
{
  nCopy = n;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__FCReadingHistory_markArticle_withReadingPositionJSON___block_invoke;
  v8[3] = &unk_1E7C37628;
  v9 = nCopy;
  v7 = nCopy;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:article withBlock:v8];
}

void __56__FCReadingHistory_markArticle_withReadingPositionJSON___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E69E58C0];
  v7 = *(a1 + 32);
  v10 = v5;
  v8 = [v5 readingPosition];
  LOBYTE(v6) = [v6 nf_object:v7 isEqualToObject:v8];

  if ((v6 & 1) == 0)
  {
    [v10 setReadingPosition:*(a1 + 32)];
    v9 = [MEMORY[0x1E695DF00] date];
    [v10 setReadingPositionSavedAt:v9];

    *a3 = 4096;
  }
}

- (void)willAccessArticleIDs:(id)ds
{
  dsCopy = ds;
  articleExposureRegistry = [(FCReadingHistory *)self articleExposureRegistry];
  [articleExposureRegistry willAccessItemIDs:dsCopy];
}

void __52__FCReadingHistory__readingHistoryItemForArticleID___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = a1[4];
    if (v8)
    {
      v8 = v8[12];
    }

    v9 = a1[5];
    v10 = v8;
    v11 = FCHistoryItemIDFromArticleID(v9);
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = a1[4];
    v16 = *(*(a1[6] + 8) + 40);

    [(FCReadingHistory *)v15 _cacheHistoryItemByArticleID:v16];
  }
}

void __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v1 = v1[13];
  }

  v3 = v1;
  v4 = [v2 articleID];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[12];
  }

  v4 = v2;
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v3 == v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 112);
    }

    else
    {
      v8 = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_4;
    v9[3] = &unk_1E7C36C58;
    v9[4] = v7;
    v10 = *(a1 + 32);
    [v8 performWriteSync:v9];
  }
}

void __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v1 = v1[13];
  }

  v3 = v1;
  v4 = [v2 articleID];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke_2;
  aBlock[3] = &unk_1E7C37650;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  if (*(a1 + 48) == 1)
  {
    v28 = [*(a1 + 32) localStore];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v34;
      do
      {
        v6 = 0;
        do
        {
          if (*v34 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = v2[2](v2, *(*(&v33 + 1) + 8 * v6));
          v8 = [v7 identifier];
          v9 = *(a1 + 32);
          if (v9)
          {
            v10 = *(v9 + 96);
          }

          else
          {
            v10 = 0;
          }

          [v10 setObject:v7 forKeyedSubscript:v8];
          v11 = *(a1 + 32);
          if (v11)
          {
            v11 = v11[13];
          }

          v12 = v11;
          v13 = [v7 articleID];
          [v12 setObject:v7 forKeyedSubscript:v13];

          [v28 setObject:v7 forKeyedSubscript:v8];
          ++v6;
        }

        while (v4 != v6);
        v14 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        v4 = v14;
      }

      while (v14);
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = *(a1 + 40);
    v15 = [v28 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v28);
          }

          v19 = v2[2](v2, *(*(&v29 + 1) + 8 * v18));
          v20 = [v19 identifier];
          v21 = *(a1 + 32);
          if (v21)
          {
            v22 = *(v21 + 96);
          }

          else
          {
            v22 = 0;
          }

          [v22 setObject:v19 forKeyedSubscript:v20];
          v23 = *(a1 + 32);
          if (v23)
          {
            v23 = v23[13];
          }

          v24 = v23;
          v25 = [v19 articleID];
          [v24 setObject:v19 forKeyedSubscript:v25];

          ++v18;
        }

        while (v16 != v18);
        v26 = [v28 countByEnumeratingWithState:&v29 objects:v38 count:16];
        v16 = v26;
      }

      while (v26);
    }
  }
}

id __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[12];
  }

  v5 = v4;
  v6 = [v3 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = v3;
  if (v7)
  {
    v8 = [v3 mutableCopyWithZone:0];
    v9 = [v8 maxVersionRead];
    v10 = [v7 maxVersionRead];
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [v8 setMaxVersionRead:v11];
    FCMergeHistoryItemSeenFields(v8, v7);
  }

  return v8;
}

void __59__FCReadingHistory__removeHistoryItemWithItemID_articleID___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 96);
    }

    else
    {
      v3 = 0;
    }

    [v3 removeObjectForKey:?];
    v4 = [*(a1 + 40) localStore];
    [v4 removeObjectForKey:*(a1 + 32)];
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = 0;
    }

    [v6 removeObjectForKey:?];
  }
}

void __67__FCReadingHistory__preprocessSyncedDeletions_didUserClearHistory___block_invoke_135(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        if (v7)
        {
          v8 = *(v7 + 96);
        }

        else
        {
          v8 = 0;
        }

        v9 = [v8 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v5)];
        v10 = [v9 articleID];
        if (!v10 || (v11 = v10, v12 = *(a1 + 48), [v9 articleID], v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(v12) = objc_msgSend(v12, "containsObject:", v13), v13, v11, v14 = (a1 + 56), v15 = v9, (v12 & 1) == 0))
        {
          v14 = (a1 + 64);
          v15 = v6;
        }

        [*v14 addObject:v15];

        ++v5;
      }

      while (v3 != v5);
      v16 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v3 = v16;
    }

    while (v16);
  }
}

id __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 dictionaryRepresentation];

  return v5;
}

id __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [v7 isEqualToString:@"flags"];
  if (v8)
  {
    v9 = MEMORY[0x1E695DF20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke_3;
    v12[3] = &unk_1E7C36EC8;
    v13 = v4;
    v10 = v4;
    v4 = [v9 fc_dictionary:v12];
  }

  return v4;
}

void __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 numberWithInt:{objc_msgSend(v4, "unsignedIntegerValue") & 1}];
  [v5 setObject:v6 forKeyedSubscript:@"hasBeenRead"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 1) & 1}];
  [v5 setObject:v7 forKeyedSubscript:@"hasBeenSeen"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 2) & 1}];
  [v5 setObject:v8 forKeyedSubscript:@"hasBeenMarkedOffensive"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 3) & 1}];
  [v5 setObject:v9 forKeyedSubscript:@"hasBeenLiked"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 4) & 1}];
  [v5 setObject:v10 forKeyedSubscript:@"hasBeenDisliked"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 5) & 1}];
  [v5 setObject:v11 forKeyedSubscript:@"hasBeenConsumed"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 6) & 1}];
  [v5 setObject:v12 forKeyedSubscript:@"hasCompletedListening"];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 8) & 1}];
  [v5 setObject:v13 forKeyedSubscript:@"hasCompletedReading"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 9) & 1}];
  [v5 setObject:v14 forKeyedSubscript:@"hasBeenRemovedFromAudio"];
}

@end