@interface FCFDBStorage
- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options;
- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options pruningPolicy:(id)policy;
- (FCFDBStorage)initWithPath:(id)path options:(int64_t)options pruningPolicy:(id)policy;
- (id)_pruneFeedsIfNeeded:(id)needed;
- (id)feedForFeedID:(id)d;
- (id)feedItemsForFeedIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeed:(id)feed totalMaxCount:(unint64_t)count;
- (id)feedsForFeedIDs:(id)ds;
- (int64_t)_feedLookupIDForFeedID:(id)d;
- (void)accessWithBlock:(id)block;
- (void)flushChanges;
- (void)insertFeedItems:(id)items;
- (void)updateFeedID:(id)d refreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder fetchedRange:(id)range;
@end

@implementation FCFDBStorage

- (FCFDBStorage)initWithPath:(id)path options:(int64_t)options pruningPolicy:(id)policy
{
  v40 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = FCFDBStorage;
  v10 = [(FCFDBStorage *)&v37 init];
  if (v10)
  {
    v11 = [[FCFDBConnection alloc] initWithPath:pathCopy];
    if (v11)
    {
      v12 = *(v10 + 4);
      *(v10 + 4) = v11;
      v13 = v11;

      *(v10 + 1) = options;
      v14 = [pathCopy copy];
      v15 = *(v10 + 2);
      *(v10 + 2) = v14;

      objc_storeStrong(v10 + 3, policy);
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("FCFDBStorage.access", v16);
      v18 = *(v10 + 5);
      *(v10 + 5) = v17;

      dispatch_queue_set_specific(*(v10 + 5), FCFDBStorageAccessQueueUnique, FCFDBStorageAccessQueueUnique, 0);
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = *(v10 + 6);
      *(v10 + 6) = v19;

      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = *(v10 + 7);
      *(v10 + 7) = v21;

      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = *(v10 + 8);
      *(v10 + 8) = v23;

      v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v26 = *(v10 + 10);
      *(v10 + 10) = v25;

      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v28 = *(v10 + 11);
      *(v10 + 11) = v27;

      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v30 = *(v10 + 12);
      *(v10 + 12) = v29;

      v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_BACKGROUND, 0);
      v33 = dispatch_queue_create("FCFDBStorage.slowSave", v32);
      v34 = *(v10 + 13);
      *(v10 + 13) = v33;
    }

    else
    {
      v35 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = pathCopy;
        _os_log_error_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_ERROR, "failed to establish connection to SQL database at path=%{public}@", buf, 0xCu);
      }

      v31 = v10;
      v10 = 0;
    }
  }

  return v10;
}

- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options
{
  path = [l path];
  v7 = [(FCFDBStorage *)self initWithPath:path options:options pruningPolicy:0];

  return v7;
}

- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options pruningPolicy:(id)policy
{
  policyCopy = policy;
  path = [l path];
  v10 = [(FCFDBStorage *)self initWithPath:path options:options pruningPolicy:policyCopy];

  return v10;
}

- (id)feedForFeedID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  cachedFeeds = [(FCFDBStorage *)self cachedFeeds];
  v6 = [cachedFeeds objectForKey:dCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v11[0] = dCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(FCFDBStorage *)self feedsForFeedIDs:v8];
    v7 = [v9 objectForKey:dCopy];
  }

  return v7;
}

- (void)accessWithBlock:(id)block
{
  blockCopy = block;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__61;
  v33 = __Block_byref_object_dispose__61;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__61;
  v27 = __Block_byref_object_dispose__61;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__61;
  v21 = __Block_byref_object_dispose__61;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__61;
  v15[4] = __Block_byref_object_dispose__61;
  v16 = 0;
  accessQueue = [(FCFDBStorage *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__FCFDBStorage_accessWithBlock___block_invoke;
  block[3] = &unk_1E7C44288;
  v6 = blockCopy;
  block[4] = self;
  v10 = v6;
  v11 = &v29;
  v12 = &v23;
  v13 = &v17;
  v14 = v15;
  dispatch_sync(accessQueue, block);

  if ([v30[5] count] || objc_msgSend(v24[5], "count") || objc_msgSend(v18[5], "count"))
  {
    saveQueue = [(FCFDBStorage *)self saveQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__FCFDBStorage_accessWithBlock___block_invoke_2;
    v8[3] = &unk_1E7C442B0;
    v8[4] = self;
    v8[5] = &v17;
    v8[6] = v15;
    v8[7] = &v29;
    v8[8] = &v23;
    dispatch_async(saveQueue, v8);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void __32__FCFDBStorage_accessWithBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) cachedFeeds];
  v3 = [*(a1 + 32) modifiedFeedIDs];
  v4 = [v3 allObjects];
  v5 = [v2 nf_objectsForKeysWithoutMarker:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) cachedFeeds];
  v9 = [*(a1 + 32) prunedFeedIDs];
  v10 = [v9 allObjects];
  v11 = [v8 nf_objectsForKeysWithoutMarker:v10];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) cachedFeedItems];
  v15 = [*(a1 + 32) modifiedFeedItemIDs];
  v16 = [v15 allObjects];
  v17 = [v14 nf_objectsForKeysWithoutMarker:v16];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 32) cachedFeeds];
  v21 = [v20 copy];
  v22 = *(*(a1 + 72) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = [*(a1 + 32) modifiedFeedIDs];
  [v24 removeAllObjects];

  v25 = [*(a1 + 32) prunedFeedIDs];
  [v25 removeAllObjects];

  v26 = [*(a1 + 32) modifiedFeedItemIDs];
  [v26 removeAllObjects];
}

void __32__FCFDBStorage_accessWithBlock___block_invoke_2(uint64_t a1)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69C7548]);
  v3 = [MEMORY[0x1E69C7640] currentProcess];
  v4 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v43[0] = v4;
  v5 = [MEMORY[0x1E69C7530] attributeWithCompletionPolicy:1];
  v43[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v7 = [v2 initWithExplanation:@"News feed item storage write" target:v3 attributes:v6];

  [v7 acquireWithError:0];
  v8 = [*(a1 + 32) writeDBConnection];

  if (!v8)
  {
    v9 = [FCFDBConnection alloc];
    v10 = [*(a1 + 32) path];
    v11 = [(FCFDBConnection *)v9 initWithPath:v10];
    [*(a1 + 32) setWriteDBConnection:v11];
  }

  v12 = [*(a1 + 32) writeDBConnection];
  [v12 beginTransaction];

  v13 = [*(a1 + 32) writeDBConnection];
  [v13 insertIndexesForFeedItems:*(*(*(a1 + 40) + 8) + 40) knownFeedsByID:*(*(*(a1 + 48) + 8) + 40)];

  v14 = [*(a1 + 32) writeDBConnection];
  [v14 insertFeedItems:*(*(*(a1 + 40) + 8) + 40) knownFeedsByID:*(*(*(a1 + 48) + 8) + 40)];

  v15 = [*(a1 + 32) writeDBConnection];
  [v15 insertFeeds:*(*(*(a1 + 56) + 8) + 40)];

  if (([*(a1 + 32) options] & 2) != 0)
  {
    v16 = [*(a1 + 32) writeDBConnection];
    [v16 insertFeatureIndexesForFeedItems:*(*(*(a1 + 40) + 8) + 40) knownFeedsByID:*(*(*(a1 + 48) + 8) + 40)];
  }

  if (([*(a1 + 32) options] & 4) != 0 && objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count"))
  {
    v33 = v7;
    v36 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v17 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v35 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          v21 = [*(a1 + 32) writeDBConnection];
          [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "feedLookupID")}];
          v23 = v22 = a1;
          v41 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          v25 = [v20 trailingEmptyRegion];
          v26 = [v21 selectFeedItemIDsWithFeedLookupIDs:v24 feedRange:v25 feature:0 maxCountByFeedLookupID:0 totalMaxCount:0];

          a1 = v22;
          [v36 addObjectsFromArray:v26];
          v27 = [*(v22 + 32) writeDBConnection];
          v28 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "feedLookupID")}];
          v29 = [v20 trailingEmptyRegion];
          [v27 deleteFeedItemIndexesFromFeedLookupID:v28 feedRange:v29];

          ++v19;
        }

        while (v18 != v19);
        v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v18);
    }

    v30 = [*(a1 + 32) writeDBConnection];
    [v30 deleteFeedItemsWithIDs:v36];

    v31 = [*(a1 + 32) writeDBConnection];
    [v31 incrementalVacuum];

    v7 = v33;
  }

  v32 = [*(a1 + 32) writeDBConnection];
  [v32 commitTransaction];

  [v7 invalidateWithError:0];
}

- (id)feedsForFeedIDs:(id)ds
{
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v38 = "[FCFDBStorage feedsForFeedIDs:]";
    v39 = 2080;
    v40 = "FCFDBStorage.m";
    v41 = 1024;
    v42 = 209;
    v43 = 2114;
    v44 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  cachedFeeds = [(FCFDBStorage *)self cachedFeeds];
  v7 = [dsCopy fc_arrayByRemovingKeysInDictionary:cachedFeeds];

  if ([v7 count])
  {
    readDBConnection = [(FCFDBStorage *)self readDBConnection];
    v9 = [readDBConnection selectFeedsWithFeedIDs:v7];

    v10 = [(FCFDBStorage *)self _pruneFeedsIfNeeded:v9];
    cachedFeeds2 = [(FCFDBStorage *)self cachedFeeds];
    [cachedFeeds2 addEntriesFromDictionary:v10];

    v12 = [v7 fc_arrayByRemovingKeysInDictionary:v10];
    if ([v12 count])
    {
      v31 = dsCopy;
      lastFeedLookupID = [(FCFDBStorage *)self lastFeedLookupID];
      v30 = v9;
      if (lastFeedLookupID)
      {
        [(FCFDBStorage *)self setLastFeedLookupID:lastFeedLookupID];
      }

      else
      {
        readDBConnection2 = [(FCFDBStorage *)self readDBConnection];
        -[FCFDBStorage setLastFeedLookupID:](self, "setLastFeedLookupID:", [readDBConnection2 selectMaxFeedLookupID]);
      }

      v28 = v12;
      v29 = v10;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            [(FCFDBStorage *)self setLastFeedLookupID:[(FCFDBStorage *)self lastFeedLookupID:v28]+ 1];
            v21 = [[FCFDBFeed alloc] initWithFeedID:v20 feedLookupID:[(FCFDBStorage *)self lastFeedLookupID]];
            cachedFeeds3 = [(FCFDBStorage *)self cachedFeeds];
            [cachedFeeds3 setObject:v21 forKey:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v17);
      }

      modifiedFeedIDs = [(FCFDBStorage *)self modifiedFeedIDs];
      [modifiedFeedIDs addObjectsFromArray:v15];

      v9 = v30;
      dsCopy = v31;
      v12 = v28;
      v10 = v29;
    }
  }

  v24 = [(FCFDBStorage *)self cachedFeeds:v28];
  v25 = [v24 fc_subdictionaryForKeys:dsCopy];

  return v25;
}

- (id)feedItemsForFeedIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeed:(id)feed totalMaxCount:(unint64_t)count
{
  v66 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  rangeCopy = range;
  featureCopy = feature;
  feedCopy = feed;
  v16 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v59 = "[FCFDBStorage feedItemsForFeedIDs:feedRange:feature:maxCountByFeed:totalMaxCount:]";
    v60 = 2080;
    v61 = "FCFDBStorage.m";
    v62 = 1024;
    v63 = 243;
    v64 = 2114;
    v65 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke;
  v57[3] = &unk_1E7C38D38;
  v57[4] = self;
  v17 = [dsCopy fc_arrayByTransformingWithBlock:v57];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_2;
  v56[3] = &unk_1E7C442D8;
  v56[4] = self;
  v18 = [feedCopy fc_dictionaryByTransformingKeysWithBlock:v56];
  readDBConnection = [(FCFDBStorage *)self readDBConnection];
  v42 = v18;
  v43 = v17;
  countCopy = count;
  v20 = [readDBConnection selectFeedItemIDsWithFeedLookupIDs:v17 feedRange:rangeCopy feature:featureCopy maxCountByFeedLookupID:v18 totalMaxCount:count];

  v21 = MEMORY[0x1E695DEC8];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_3;
  v52[3] = &unk_1E7C3B1F8;
  v40 = dsCopy;
  v53 = v40;
  selfCopy = self;
  v22 = rangeCopy;
  v55 = v22;
  v23 = [v21 fc_array:v52];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5;
  v47[3] = &unk_1E7C44328;
  v24 = feedCopy;
  v48 = v24;
  v25 = v23;
  v49 = v25;
  v26 = v20;
  v50 = v26;
  selfCopy2 = self;
  v27 = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5(v47);
  allObjects = [v27 allObjects];
  cachedFeedItems = [(FCFDBStorage *)self cachedFeedItems];
  v30 = [allObjects fc_arrayByRemovingKeysInDictionary:cachedFeedItems];

  if ([v30 count])
  {
    readDBConnection2 = [(FCFDBStorage *)self readDBConnection];
    v32 = [readDBConnection2 selectFeedItemsWithIDs:v30];

    cachedFeedItems2 = [(FCFDBStorage *)self cachedFeedItems];
    [cachedFeedItems2 addEntriesFromDictionary:v32];
  }

  cachedFeedItems3 = [(FCFDBStorage *)self cachedFeedItems];
  allObjects2 = [v27 allObjects];
  v36 = [cachedFeedItems3 nf_mutableObjectsForKeysWithoutMarker:allObjects2];

  if (featureCopy)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_9;
    v45[3] = &unk_1E7C44350;
    v46 = featureCopy;
    v37 = [v36 indexesOfObjectsPassingTest:v45];
    [v36 removeObjectsAtIndexes:v37];
  }

  [v36 sortUsingSelector:sel_compareOrderDescending_];
  if (countCopy - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v36 fc_trimToMaxCount:?];
  }

  return v36;
}

uint64_t __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) _feedLookupIDForFeedID:a2];

  return [v2 numberWithLongLong:v3];
}

uint64_t __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) _feedLookupIDForFeedID:a2];

  return [v2 numberWithLongLong:v3];
}

void __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_3(id *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [a1[5] _feedLookupIDForFeedID:v8];
        v10 = [a1[5] cachedFeedItemOrders];
        v11 = [v10 objectForKey:v8];

        v12 = [a1[6] nsRange];
        v14 = v13;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_4;
        v16[3] = &unk_1E7C44300;
        v17 = v3;
        v18 = v9;
        [v11 enumerateIndexesInRange:v12 options:v14 usingBlock:{0, v16}];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

void __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40) | (a2 << 20)];
  [v2 addObject:v3];
}

id __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v16 = [MEMORY[0x1E695DFA8] set];
    v2 = [MEMORY[0x1E695DFA0] orderedSet];
    [v2 addObjectsFromArray:*(a1 + 48)];
    [v2 addObjectsFromArray:*(a1 + 40)];
    [v2 sortUsingComparator:&__block_literal_global_131];
    v3 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_8;
    v21[3] = &unk_1E7C442D8;
    v21[4] = *(a1 + 56);
    v4 = [v3 fc_dictionaryByTransformingKeysWithBlock:v21];
    v5 = [MEMORY[0x1E696AB50] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "unsignedLongLongValue") & 0xFFFFF}];
          v13 = [v4 objectForKeyedSubscript:v12];
          if (!v13 || (v14 = [v5 countForObject:v12], v14 < objc_msgSend(v13, "unsignedIntegerValue")))
          {
            [v16 addObject:v11];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_6;
    v22[3] = &unk_1E7C397D0;
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v16 = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_6(v22);

    v6 = v23;
  }

  return v16;
}

id __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:*(a1 + 32) toArray:*(a1 + 40)];
  v3 = [v1 setWithArray:v2];

  return v3;
}

uint64_t __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) _feedLookupIDForFeedID:a2];

  return [v2 numberWithLongLong:v3];
}

- (void)insertFeedItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v32 = "[FCFDBStorage insertFeedItems:]";
    v33 = 2080;
    v34 = "FCFDBStorage.m";
    v35 = 1024;
    v36 = 343;
    v37 = 2114;
    v38 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = itemsCopy;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        feedID = [v10 feedID];
        v12 = [(FCFDBStorage *)self _feedLookupIDForFeedID:feedID];

        order = [v10 order];
        cachedFeedItemOrders = [(FCFDBStorage *)self cachedFeedItemOrders];
        feedID2 = [v10 feedID];
        indexSet = [cachedFeedItemOrders objectForKey:feedID2];

        if (!indexSet)
        {
          indexSet = [MEMORY[0x1E696AD50] indexSet];
          cachedFeedItemOrders2 = [(FCFDBStorage *)self cachedFeedItemOrders];
          feedID3 = [v10 feedID];
          [cachedFeedItemOrders2 setObject:indexSet forKey:feedID3];
        }

        [indexSet addIndex:{objc_msgSend(v10, "order")}];
        v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v12 | (order << 20)];
        [dictionary setObject:v10 forKey:v19];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  cachedFeedItems = [(FCFDBStorage *)self cachedFeedItems];
  [cachedFeedItems addEntriesFromDictionary:dictionary];

  modifiedFeedItemIDs = [(FCFDBStorage *)self modifiedFeedItemIDs];
  allKeys = [dictionary allKeys];
  [modifiedFeedItemIDs addObjectsFromArray:allKeys];
}

- (void)updateFeedID:(id)d refreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder fetchedRange:(id)range
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  rangeCopy = range;
  v12 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    v18 = 136315906;
    v19 = "[FCFDBStorage updateFeedID:refreshedFromOrder:refreshedToOrder:fetchedRange:]";
    v20 = 2080;
    v21 = "FCFDBStorage.m";
    v22 = 1024;
    v23 = 374;
    v24 = 2114;
    v25 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v18, 0x26u);
  }

  v13 = [(FCFDBStorage *)self feedForFeedID:dCopy];
  v14 = [v13 copyWithRefreshedFromOrder:order refreshedToOrder:toOrder newlyFetchedRange:rangeCopy];
  cachedFeeds = [(FCFDBStorage *)self cachedFeeds];
  [cachedFeeds setObject:v14 forKey:dCopy];

  modifiedFeedIDs = [(FCFDBStorage *)self modifiedFeedIDs];
  [modifiedFeedIDs addObject:dCopy];
}

- (void)flushChanges
{
  saveQueue = [(FCFDBStorage *)self saveQueue];
  dispatch_sync(saveQueue, &__block_literal_global_43_2);
}

- (int64_t)_feedLookupIDForFeedID:(id)d
{
  v3 = [(FCFDBStorage *)self feedForFeedID:d];
  feedLookupID = [v3 feedLookupID];

  return feedLookupID;
}

- (id)_pruneFeedsIfNeeded:(id)needed
{
  v51 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v44 = "[FCFDBStorage _pruneFeedsIfNeeded:]";
    v45 = 2080;
    v46 = "FCFDBStorage.m";
    v47 = 1024;
    v48 = 401;
    v49 = 2114;
    v50 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (([(FCFDBStorage *)self options]& 4) != 0)
  {
    pruningPolicy = [(FCFDBStorage *)self pruningPolicy];
    feedRangeToPrune = [pruningPolicy feedRangeToPrune];

    if (feedRangeToPrune)
    {
      v6 = feedRangeToPrune;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = neededCopy;
      v10 = neededCopy;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
      if (v11)
      {
        v12 = v11;
        selfCopy = self;
        v13 = 0;
        v14 = *v29;
        do
        {
          v15 = 0;
          v27 = v12;
          do
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v28 + 1) + 8 * v15);
            v17 = [v10 objectForKey:v16];
            if ([v17 hasFetchedRangesInRange:v6])
            {
              if (!v13)
              {
                v13 = [v10 mutableCopy];
              }

              v18 = v6;
              v19 = [v17 copyWithoutFetchedRange:v6];
              [v13 setObject:v19 forKey:v16];
              modifiedFeedIDs = [(FCFDBStorage *)selfCopy modifiedFeedIDs];
              [modifiedFeedIDs addObject:v16];

              prunedFeedIDs = [(FCFDBStorage *)selfCopy prunedFeedIDs];
              [prunedFeedIDs addObject:v16];

              v6 = v18;
              v12 = v27;
            }

            ++v15;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v22 = v13;
      }

      else
      {
        v22 = v10;
      }

      v7 = v22;

      neededCopy = v25;
    }

    else
    {
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __36__FCFDBStorage__pruneFeedsIfNeeded___block_invoke_2;
      v35 = &unk_1E7C36F98;
      v36 = neededCopy;
      v7 = v36;

      v6 = 0;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __36__FCFDBStorage__pruneFeedsIfNeeded___block_invoke;
    v40 = &unk_1E7C36F98;
    v41 = neededCopy;
    v6 = v41;
    v7 = v6;
  }

  return v7;
}

@end