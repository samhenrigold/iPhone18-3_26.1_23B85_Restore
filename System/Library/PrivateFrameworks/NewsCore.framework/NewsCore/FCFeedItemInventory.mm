@interface FCFeedItemInventory
- (BOOL)_isRefreshNeeded;
- (FCFeedItemInventory)init;
- (FCFeedItemInventory)initWithFeedItemService:(id)service feedPersonalizer:(id)personalizer readingHistory:(id)history fileURL:(id)l version:(unsigned int)version refreshInterval:(double)interval loggingKey:(id)key;
- (NSArray)allFeedItems;
- (NSArray)allNetworkEvents;
- (id)_loadInventoryFromCache;
- (id)_refreshIfNeeded;
- (id)allFeedItemScoreProfilesForConfigurationSet:(int64_t)set scoringVersion:(unint64_t)version;
- (id)allFeedItemsWithTopic:(id)topic;
- (void)_adoptInventory:(id)inventory;
- (void)_populateScoreProfilesForFeedItems:(id)items;
- (void)_populateScoreProfilesForFeedItems:(id)items configurationSet:(int64_t)set;
- (void)_prepareForUse;
- (void)_rescoreInventoryIfNeeded:(id)needed forScoringVersion:(unint64_t)version;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
- (void)refreshIfNeededWithCompletion:(id)completion;
@end

@implementation FCFeedItemInventory

- (FCFeedItemInventory)initWithFeedItemService:(id)service feedPersonalizer:(id)personalizer readingHistory:(id)history fileURL:(id)l version:(unsigned int)version refreshInterval:(double)interval loggingKey:(id)key
{
  serviceCopy = service;
  personalizerCopy = personalizer;
  historyCopy = history;
  lCopy = l;
  keyCopy = key;
  v41.receiver = self;
  v41.super_class = FCFeedItemInventory;
  v22 = [(FCFeedItemInventory *)&v41 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_feedItemService, service);
    objc_storeStrong(&v23->_feedPersonalizer, personalizer);
    v24 = [lCopy copy];
    fileURL = v23->_fileURL;
    v23->_fileURL = v24;

    v23->_version = version;
    v23->_refreshInterval = interval;
    v26 = [keyCopy copy];
    loggingKey = v23->_loggingKey;
    v23->_loggingKey = v26;

    v28 = [[FCOnce alloc] initWithOptions:1];
    loadFromCacheOnce = v23->_loadFromCacheOnce;
    v23->_loadFromCacheOnce = v28;

    v30 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    feedItemsRefreshSerialQueue = v23->_feedItemsRefreshSerialQueue;
    v23->_feedItemsRefreshSerialQueue = v30;

    v32 = objc_alloc_init(FCThreadSafeMutableArray);
    networkEvents = v23->_networkEvents;
    v23->_networkEvents = v32;

    [historyCopy addObserver:v23];
    v34 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    articleIDsToRescoreLock = v23->_articleIDsToRescoreLock;
    v23->_articleIDsToRescoreLock = v34;

    v36 = [MEMORY[0x1E695DFA8] set];
    articleIDsToRescore = v23->_articleIDsToRescore;
    v23->_articleIDsToRescore = v36;

    v38 = [[FCTimedOperationThrottler alloc] initWithDelegate:v23];
    [(FCTimedOperationThrottler *)v38 setCooldownTime:5.0];
    targetedRescoreThrottler = v23->_targetedRescoreThrottler;
    v23->_targetedRescoreThrottler = v38;
  }

  return v23;
}

- (FCFeedItemInventory)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedItemInventory init]";
    v10 = 2080;
    v11 = "FCFeedItemInventory.m";
    v12 = 1024;
    v13 = 87;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedItemInventory init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSArray)allFeedItems
{
  [(FCFeedItemInventory *)self _prepareForUse];
  latestInventory = [(FCFeedItemInventory *)self latestInventory];
  feedItems = [latestInventory feedItems];
  v5 = feedItems;
  if (feedItems)
  {
    v6 = feedItems;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSArray)allNetworkEvents
{
  networkEvents = [(FCFeedItemInventory *)self networkEvents];
  readOnlyArray = [networkEvents readOnlyArray];

  return readOnlyArray;
}

- (id)allFeedItemScoreProfilesForConfigurationSet:(int64_t)set scoringVersion:(unint64_t)version
{
  v38 = *MEMORY[0x1E69E9840];
  [(FCFeedItemInventory *)self _prepareForUse];
  v7 = [FCMapTable mapTableWithKeyOptions:512 valueOptions:0];
  latestInventory = [(FCFeedItemInventory *)self latestInventory];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  feedItems = [latestInventory feedItems];
  v10 = [feedItems countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v10)
  {

    goto LABEL_22;
  }

  v11 = v10;
  selfCopy = self;
  v26 = latestInventory;
  v12 = *v28;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(feedItems);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      if (set == 11)
      {
        scoreProfiles = [*(*(&v27 + 1) + 8 * i) scoreProfiles];
        forYouGroupScoreProfile = [scoreProfiles forYouGroupScoreProfile];
      }

      else
      {
        if (set)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
            *buf = 136315906;
            v32 = "[FCFeedItemInventory allFeedItemScoreProfilesForConfigurationSet:scoringVersion:]";
            v33 = 2080;
            v34 = "FCFeedItemInventory.m";
            v35 = 1024;
            LODWORD(v36[0]) = 128;
            WORD2(v36[0]) = 2114;
            *(v36 + 6) = v19;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          continue;
        }

        scoreProfiles = [*(*(&v27 + 1) + 8 * i) scoreProfiles];
        forYouGroupScoreProfile = [scoreProfiles defaultScoreProfile];
      }

      v17 = forYouGroupScoreProfile;

      if (v17)
      {
        if ([v17 scoringVersion] != version)
        {
          v20 = FCFeedItemInventoryLog;
          if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            loggingKey = [(FCFeedItemInventory *)selfCopy loggingKey];
            scoringVersion = [v17 scoringVersion];
            *buf = 138543874;
            v32 = loggingKey;
            v33 = 2048;
            v34 = scoringVersion;
            v35 = 2048;
            v36[0] = version;
            _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] rescoring inventory because cached scored version of %llu doesn't match %llu", buf, 0x20u);
          }

          latestInventory = v26;
          [(FCFeedItemInventory *)selfCopy _rescoreInventoryIfNeeded:v26 forScoringVersion:version];
          goto LABEL_22;
        }

        v18 = [[FCFeedPersonalizedItemScoreProfile alloc] initWithPBScoreProfile:v17];
        [v7 setObject:v18 forKey:v14];
      }
    }

    v11 = [feedItems countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  latestInventory = v26;
LABEL_22:

  return v7;
}

- (id)allFeedItemsWithTopic:(id)topic
{
  topicCopy = topic;
  allFeedItems = [(FCFeedItemInventory *)self allFeedItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__FCFeedItemInventory_allFeedItemsWithTopic___block_invoke;
  v9[3] = &unk_1E7C42320;
  v10 = topicCopy;
  v6 = topicCopy;
  v7 = [allFeedItems fc_arrayOfObjectsPassingTest:v9];

  return v7;
}

uint64_t __45__FCFeedItemInventory_allFeedItemsWithTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 topicIDs];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)refreshIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FCFeedItemInventory *)self _prepareForUse];
  _refreshIfNeeded = [(FCFeedItemInventory *)self _refreshIfNeeded];
  v6 = zalgo();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__FCFeedItemInventory_refreshIfNeededWithCompletion___block_invoke;
  v9[3] = &unk_1E7C379C8;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [_refreshIfNeeded alwaysOn:v6 always:v9];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  throttlerCopy = throttler;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__80;
  v26 = __Block_byref_object_dispose__80;
  v27 = 0;
  articleIDsToRescoreLock = [(FCFeedItemInventory *)self articleIDsToRescoreLock];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v21[3] = &unk_1E7C37160;
  v21[4] = self;
  v21[5] = &v22;
  [articleIDsToRescoreLock performWithLockSync:v21];

  v9 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    loggingKey = [(FCFeedItemInventory *)self loggingKey];
    v11 = [v23[5] count];
    *buf = 138543618;
    v29 = loggingKey;
    v30 = 2048;
    v31 = v11;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing %ld article IDs for targeted rescoring", buf, 0x16u);
  }

  if ([v23[5] count])
  {
    feedItemsRefreshSerialQueue = [(FCFeedItemInventory *)self feedItemsRefreshSerialQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2;
    v13[3] = &unk_1E7C45EE0;
    v13[4] = self;
    v15 = &v22;
    v14 = completionCopy;
    [feedItemsRefreshSerialQueue enqueueBlock:v13];
  }

  else
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_19;
    v19 = &unk_1E7C379C8;
    v20 = completionCopy;
    v20[2]();
  }

  _Block_object_dispose(&v22, 8);
}

void __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) articleIDsToRescore];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) articleIDsToRescore];
  [v6 removeAllObjects];
}

void __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) latestInventory];
  v5 = [v4 feedItems];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_3;
  v14[3] = &unk_1E7C45EB8;
  v14[4] = *(a1 + 48);
  v6 = [v5 fc_arrayOfObjectsPassingTest:v14];

  v7 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 loggingKey];
    v11 = [v6 count];
    *buf = 138543618;
    v16 = v10;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] identified %ld feed items for targeted rescoring", buf, 0x16u);
  }

  if ([v6 count])
  {
    [*(a1 + 32) _populateScoreProfilesForFeedItems:v6];
    [*(a1 + 32) _adoptInventory:v4];
    v3[2](v3);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = v3;
    v13 = *(a1 + 40);
    v12[2](v12);
    v13[2]();
  }
}

uint64_t __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 articleID];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_20(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  v23 = *MEMORY[0x1E69E9840];
  articlesCopy = articles;
  v6 = objc_opt_new();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke;
  v17[3] = &unk_1E7C41CC8;
  v7 = v6;
  v18 = v7;
  [articlesCopy enumerateKeysAndObjectsUsingBlock:v17];

  articleIDsToRescoreLock = [(FCFeedItemInventory *)self articleIDsToRescoreLock];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke_2;
  v15[3] = &unk_1E7C36C58;
  v15[4] = self;
  v9 = v7;
  v16 = v9;
  [articleIDsToRescoreLock performWithLockSync:v15];

  v10 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    loggingKey = [(FCFeedItemInventory *)self loggingKey];
    v13 = [v9 count];
    *buf = 138543618;
    v20 = loggingKey;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueuing %ld article IDs for targeted rescoring", buf, 0x16u);
  }

  targetedRescoreThrottler = [(FCFeedItemInventory *)self targetedRescoreThrottler];
  [targetedRescoreThrottler tickle];
}

void __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 unsignedIntegerValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) articleIDsToRescore];
  [v2 unionSet:*(a1 + 40)];
}

- (void)_prepareForUse
{
  loadFromCacheOnce = [(FCFeedItemInventory *)self loadFromCacheOnce];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__FCFeedItemInventory__prepareForUse__block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [loadFromCacheOnce executeOnce:v4];
}

void __37__FCFeedItemInventory__prepareForUse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadInventoryFromCache];
  [*(a1 + 32) setLatestInventory:v2];
}

- (id)_refreshIfNeeded
{
  if ([(FCFeedItemInventory *)self _isRefreshNeeded])
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = self;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke;
    v7[3] = &unk_1E7C396C0;
    v7[4] = self;
    v4 = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke(v7);
  }

  return v4;
}

id __39__FCFeedItemInventory__refreshIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B68F8]);
  v3 = [*(a1 + 32) latestInventory];
  v4 = [v2 initWithValue:v3];

  return v4;
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) feedItemsRefreshSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3;
  v10[3] = &unk_1E7C45F80;
  v11 = v5;
  v12 = v6;
  v10[4] = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  [v7 enqueueBlock:v10];
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3(id *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4;
  aBlock[3] = &unk_1E7C45F08;
  v46 = a1[5];
  v4 = v3;
  v47 = v4;
  v5 = _Block_copy(aBlock);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_5;
  v42[3] = &unk_1E7C3F590;
  v43 = a1[6];
  v6 = v4;
  v44 = v6;
  v7 = _Block_copy(v42);
  if (([a1[4] _isRefreshNeeded] & 1) == 0)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_6;
    v40[3] = &unk_1E7C37778;
    v17 = v5;
    v40[4] = a1[4];
    v41 = v17;
    __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_6(v40);
    v18 = v41;
    goto LABEL_16;
  }

  v8 = [a1[4] latestInventory];

  v9 = FCFeedItemInventoryLog;
  v10 = os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = a1[4];
      v12 = v9;
      v13 = [v11 loggingKey];
      v14 = [a1[4] latestInventory];
      v15 = [v14 lastRefreshed];
      v16 = [v15 nsDate];
      *buf = 138543618;
      v49 = v13;
      v50 = 2114;
      v51 = v16;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] will refresh because last refresh was at %{public}@", buf, 0x16u);

LABEL_8:
    }
  }

  else if (v10)
  {
    v19 = a1[4];
    v12 = v9;
    v13 = [v19 loggingKey];
    *buf = 138543362;
    v49 = v13;
    _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] will refresh because there is no cached instance", buf, 0xCu);
    goto LABEL_8;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [a1[4] latestInventory];
  if (v22)
  {
    v23 = [FCFeedItemServiceCursor alloc];
    v24 = [v22 lastRefreshed];
    v25 = [v22 feedItems];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
    }

    v18 = [(FCFeedItemServiceCursor *)v23 initWithLastRefreshed:v24 feedItems:v27];
  }

  else
  {
    v18 = 0;
  }

  v28 = objc_opt_new();
  v29 = [a1[4] feedItemService];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_29;
  v38[3] = &unk_1E7C3C778;
  v39 = v28;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2_31;
  v36[3] = &unk_1E7C45F30;
  v37 = a1[4];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3_33;
  v31[3] = &unk_1E7C45F58;
  v31[4] = v37;
  v32 = v39;
  v33 = v7;
  v35 = v21;
  v34 = v5;
  v30 = v39;
  [v29 fetchFeedItemsWithCursor:v18 feedItemHandler:v38 networkEventHandler:v36 completionHandler:v31];

LABEL_16:
}

uint64_t __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v5 = [*(a1 + 32) latestInventory];
  v4 = [v3 initWithValue:v5];
  (*(v2 + 16))(v2, v4);
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 networkEvents];
  [v4 addObject:v3];
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3_33(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4_34;
    v21[3] = &unk_1E7C38FF0;
    v21[4] = *(a1 + 32);
    v22 = v3;
    v23 = *(a1 + 48);
    __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4_34(v21);
  }

  else
  {
    v5 = [*(a1 + 40) readOnlyArray];
    v6 = FCFeedItemInventoryLog;
    if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 loggingKey];
      v10 = [v5 count];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v12 = (fmax(v11 - *(a1 + 64), 0.0) * 1000.0);
      *buf = 138543874;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 2048;
      v29 = v12;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully fetched %lu feed items in %llums, will generate score profiles", buf, 0x20u);
    }

    [*(a1 + 32) _populateScoreProfilesForFeedItems:v5];
    v13 = FCFeedItemInventoryLog;
    if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 loggingKey];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v18 = (fmax(v17 - *(a1 + 64), 0.0) * 1000.0);
      *buf = 138543618;
      v25 = v16;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully refreshed in %llums", buf, 0x16u);
    }

    v19 = objc_alloc_init(FCPBFeedItemInventory);
    -[FCPBFeedItemInventory setInventoryVersion:](v19, "setInventoryVersion:", [*(a1 + 32) version]);
    [(FCPBFeedItemInventory *)v19 setFeedItemVersion:24];
    v20 = [MEMORY[0x1E69B6E00] date];
    [(FCPBFeedItemInventory *)v19 setLastRefreshed:v20];

    [(FCPBFeedItemInventory *)v19 setFeedItems:v5];
    [*(a1 + 32) _adoptInventory:v19];
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4_34(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 loggingKey];
    v6 = a1[5];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to refresh with error: %{public}@", &v8, 0x16u);
  }

  return (*(a1[6] + 16))();
}

- (void)_adoptInventory:(id)inventory
{
  [(FCFeedItemInventory *)self setLatestInventory:inventory];
  v4 = FCPersistenceQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FCFeedItemInventory__adoptInventory___block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __39__FCFeedItemInventory__adoptInventory___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) latestInventory];
  v3 = [v2 data];

  v4 = [*(a1 + 32) fileURL];
  v16 = 0;
  v5 = [v3 writeToURL:v4 options:1 error:&v16];
  v6 = v16;

  v7 = FCFeedItemInventoryLog;
  v8 = os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = [v9 loggingKey];
      v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v3 countStyle:{"length"), 0}];
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully persisted with size: %{public}@", buf, 0x16u);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v15 = [v13 loggingKey];
    *buf = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to persist with error: %{public}@", buf, 0x16u);
  }
}

- (BOOL)_isRefreshNeeded
{
  latestInventory = [(FCFeedItemInventory *)self latestInventory];
  v4 = latestInventory;
  if (latestInventory)
  {
    lastRefreshed = [latestInventory lastRefreshed];
    nsDate = [lastRefreshed nsDate];
    [nsDate fc_timeIntervalUntilNow];
    v8 = v7;
    [(FCFeedItemInventory *)self refreshInterval];
    v10 = v8 > v9;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_rescoreInventoryIfNeeded:(id)needed forScoringVersion:(unint64_t)version
{
  neededCopy = needed;
  feedItemsRefreshSerialQueue = [(FCFeedItemInventory *)self feedItemsRefreshSerialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__FCFeedItemInventory__rescoreInventoryIfNeeded_forScoringVersion___block_invoke;
  v9[3] = &unk_1E7C45FA8;
  v9[4] = self;
  v10 = neededCopy;
  versionCopy = version;
  v8 = neededCopy;
  [feedItemsRefreshSerialQueue enqueueBlock:v9];
}

void __67__FCFeedItemInventory__rescoreInventoryIfNeeded_forScoringVersion___block_invoke(id *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 latestInventory];
  v6 = v5;
  if (v5 == a1[5])
  {
    v11 = [v5 feedItems];
    v12 = [v11 lastObject];
    v13 = [v12 scoreProfiles];
    v9 = [v13 defaultScoreProfile];

    if (v9)
    {
      if ([v9 scoringVersion]== a1[6])
      {
        v14 = FCFeedItemInventoryLog;
        if (!os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v15 = a1[4];
        v16 = v14;
        v17 = [v15 loggingKey];
        v25 = 138543362;
        v26 = v17;
        v18 = "[%{public}@] not rescoring inventory due to version match";
      }

      else
      {
        v21 = a1[4];
        v22 = [v6 feedItems];
        [v21 _populateScoreProfilesForFeedItems:v22];

        [a1[4] _adoptInventory:v6];
        v23 = FCFeedItemInventoryLog;
        if (!os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v24 = a1[4];
        v16 = v23;
        v17 = [v24 loggingKey];
        v25 = 138543362;
        v26 = v17;
        v18 = "[%{public}@] rescored inventory";
      }
    }

    else
    {
      v19 = FCFeedItemInventoryLog;
      if (!os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v20 = a1[4];
      v16 = v19;
      v17 = [v20 loggingKey];
      v25 = 138543362;
      v26 = v17;
      v18 = "[%{public}@] not rescoring inventory due to no score profile";
    }

    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, v18, &v25, 0xCu);

    goto LABEL_13;
  }

  v7 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = v7;
    v10 = [v8 loggingKey];
    v25 = 138543362;
    v26 = v10;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] did not rescore inventory because it is no longer the latest", &v25, 0xCu);

LABEL_13:
  }

  v4[2](v4);
}

- (id)_loadInventoryFromCache
{
  v38 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    v33 = "[FCFeedItemInventory _loadInventoryFromCache]";
    v34 = 2080;
    v35 = "FCFeedItemInventory.m";
    v36 = 1024;
    *v37 = 391;
    *&v37[4] = 2114;
    *&v37[6] = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = MEMORY[0x1E695DEF0];
  fileURL = [(FCFeedItemInventory *)self fileURL];
  v7 = [v5 dataWithContentsOfURL:fileURL];

  if (!v7)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke;
    v31[3] = &unk_1E7C36F98;
    v31[4] = self;
    v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke(v31);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [[FCPBFeedItemInventory alloc] initWithData:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    inventoryVersion = [(FCPBFeedItemInventory *)v11 inventoryVersion];
    if (inventoryVersion == [(FCFeedItemInventory *)self version])
    {
      if ([(FCPBFeedItemInventory *)v11 feedItemVersion]== 24)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v14 = v13;
        v15 = FCFeedItemInventoryLog;
        if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
        {
          log = v15;
          loggingKey = [(FCFeedItemInventory *)self loggingKey];
          feedItems = [(FCPBFeedItemInventory *)v11 feedItems];
          v17 = [feedItems count];
          lastRefreshed = [(FCPBFeedItemInventory *)v11 lastRefreshed];
          nsDate = [lastRefreshed nsDate];
          *buf = 138544130;
          v33 = loggingKey;
          v34 = 2048;
          v35 = (fmax(v14 - v4, 0.0) * 1000.0);
          v36 = 2048;
          *v37 = v17;
          *&v37[8] = 2114;
          *&v37[10] = nsDate;
          _os_log_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded cached data in %llums with %lu feed items and last-refresh date %{public}@", buf, 0x2Au);
        }

        v20 = v11;
        goto LABEL_16;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_47;
      v26[3] = &unk_1E7C397D0;
      v26[4] = self;
      v27 = v11;
      v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_47(v26);
      v21 = v27;
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_46;
      v28[3] = &unk_1E7C397D0;
      v28[4] = self;
      v29 = v11;
      v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_46(v28);
      v21 = v29;
    }

LABEL_16:
    goto LABEL_17;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_45;
  v30[3] = &unk_1E7C36F98;
  v30[4] = self;
  v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_45(v30);
LABEL_17:

LABEL_18:

  return v20;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] found no cached data on disk", &v7, 0xCu);
  }

  return 0;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_45(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to initialize inventory from cached data", &v7, 0xCu);
  }

  return 0;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_46(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v6 = [*(a1 + 40) inventoryVersion];
    v7 = [*(a1 + 32) version];
    v9 = 138543874;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring cached data because its inventory version %u does not match the current version %u", &v9, 0x18u);
  }

  return 0;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_47(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v6 = [*(a1 + 40) feedItemVersion];
    v8 = 138543874;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 1024;
    v13 = 24;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring cached data because its feed item version %u does not match the current version %u", &v8, 0x18u);
  }

  return 0;
}

- (void)_populateScoreProfilesForFeedItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(FCFeedItemInventory *)self _populateScoreProfilesForFeedItems:itemsCopy configurationSet:0];
  [(FCFeedItemInventory *)self _populateScoreProfilesForFeedItems:itemsCopy configurationSet:11];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    loggingKey = [(FCFeedItemInventory *)self loggingKey];
    v12 = 138543874;
    v13 = loggingKey;
    v14 = 2048;
    v15 = (fmax(v8 - v6, 0.0) * 1000.0);
    v16 = 2048;
    v17 = [itemsCopy count];
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] took %llums to generate score profiles for %ld items", &v12, 0x20u);
  }
}

- (void)_populateScoreProfilesForFeedItems:(id)items configurationSet:(int64_t)set
{
  v38 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  context = objc_autoreleasePoolPush();
  feedPersonalizer = [(FCFeedItemInventory *)self feedPersonalizer];
  v24 = itemsCopy;
  v8 = [feedPersonalizer sortItems:itemsCopy options:1 configurationSet:set];

  v22 = v8;
  scoreProfiles = [v8 scoreProfiles];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [scoreProfiles countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(scoreProfiles);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [scoreProfiles objectForKey:v15];
        scoreProfiles2 = [v15 scoreProfiles];

        if (!scoreProfiles2)
        {
          v18 = objc_alloc_init(MEMORY[0x1E69B6FC0]);
          [v15 setScoreProfiles:v18];
        }

        if (set == 11)
        {
          pbScoreProfile = [v16 pbScoreProfile];
          scoreProfiles3 = [v15 scoreProfiles];
          [scoreProfiles3 setForYouGroupScoreProfile:pbScoreProfile];
          goto LABEL_12;
        }

        if (!set)
        {
          pbScoreProfile = [v16 pbScoreProfile];
          scoreProfiles3 = [v15 scoreProfiles];
          [scoreProfiles3 setDefaultScoreProfile:pbScoreProfile];
LABEL_12:

          goto LABEL_15;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
          *buf = 136315906;
          v30 = "[FCFeedItemInventory _populateScoreProfilesForFeedItems:configurationSet:]";
          v31 = 2080;
          v32 = "FCFeedItemInventory.m";
          v33 = 1024;
          v34 = 457;
          v35 = 2114;
          v36 = v21;
          _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_15:
      }

      v11 = [scoreProfiles countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
}

@end