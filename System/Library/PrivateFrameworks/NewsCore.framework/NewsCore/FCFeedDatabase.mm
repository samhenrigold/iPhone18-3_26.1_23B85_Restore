@interface FCFeedDatabase
+ (id)temporaryFeedDatabaseWithEndpoint:(int64_t)endpoint;
- (FCFeedDatabase)initWithParentDirectoryURL:(id)l usage:(int64_t)usage endpoint:(int64_t)endpoint;
- (FCFeedDatabaseLookupResult)_shortCircuitLookup:(void *)lookup withFeed:;
- (id)_feedsForLookups:(uint64_t)lookups;
- (id)_serviceLookup:(void *)lookup withFeed:(void *)feed feedItems:;
- (id)performDatabaseLookups:(id)lookups;
- (id)performDatabaseLookups:(id)lookups boundedByCount:(unint64_t)count;
- (id)t_lookupFeedID:(id)d range:(id)range maxCount:(unint64_t)count;
- (void)_performWithStorageAndWait:(uint64_t)wait;
- (void)_synchronizedInit;
- (void)enumerateRangesMissingFromLookups:(id)lookups visitor:(id)visitor;
- (void)lookupFeedItemsForFeedID:(id)d feedRange:(id)range completion:(id)completion;
- (void)saveFeedItems:(id)items feedID:(id)d feedRange:(id)range;
- (void)saveFeedItems:(id)items feedIDs:(id)ds extentByFeedID:(id)d requestRangeByFeedID:(id)iD;
- (void)saveFeedItems:(id)items forFeedID:(id)d insertionToken:(id)token requestDate:(id)date reachedToOrder:(BOOL)order extent:(unint64_t)extent reachedEnd:(BOOL)end;
- (void)saveWithCompletionHandler:(id)handler;
- (void)t_insertSegmentForFeedID:(id)d range:(id)range items:(id)items;
@end

@implementation FCFeedDatabase

+ (id)temporaryFeedDatabaseWithEndpoint:(int64_t)endpoint
{
  v3 = [[FCFeedDatabase alloc] initWithParentDirectoryURL:0 usage:2 endpoint:endpoint];

  return v3;
}

- (FCFeedDatabase)initWithParentDirectoryURL:(id)l usage:(int64_t)usage endpoint:(int64_t)endpoint
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v20.receiver = self;
  v20.super_class = FCFeedDatabase;
  v9 = [(FCFeedDatabase *)&v20 init];
  if (v9)
  {
    v10 = [lCopy copy];
    parentDirectoryURL = v9->_parentDirectoryURL;
    v9->_parentDirectoryURL = v10;

    if (usage == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed database should not be created if it's not intended for use"];
      *buf = 136315906;
      v22 = "[FCFeedDatabase initWithParentDirectoryURL:usage:endpoint:]";
      v23 = 2080;
      v24 = "FCFeedDatabase.m";
      v25 = 1024;
      v26 = 88;
      v27 = 2114;
      v28 = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v9->_usage = usage;
    v9->_endpoint = endpoint;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.news.feeddb.init", v12);
    initQueue = v9->_initQueue;
    v9->_initQueue = v13;

    if (endpoint == 1)
    {
      v17 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "feed database will use the OrderFeed endpoint", buf, 2u);
      }

      v16 = 1029;
    }

    else if (endpoint)
    {
      v16 = 24;
    }

    else
    {
      v15 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "feed database will use the MultiFeed endpoint", buf, 2u);
      }

      v16 = 26;
    }

    v9->_version = v16;
  }

  return v9;
}

- (void)_synchronizedInit
{
  if (self)
  {
    v1 = *(self + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__FCFeedDatabase__synchronizedInit__block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = self;
    dispatch_sync(v1, block);
  }
}

- (id)performDatabaseLookups:(id)lookups
{
  lookupsCopy = lookups;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__FCFeedDatabase_performDatabaseLookups___block_invoke;
  v11[3] = &unk_1E7C376A0;
  v11[4] = self;
  v12 = lookupsCopy;
  v6 = dictionary;
  v13 = v6;
  v7 = lookupsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __41__FCFeedDatabase_performDatabaseLookups___block_invoke(uint64_t a1)
{
  v1 = a1;
  v96 = *MEMORY[0x1E69E9840];
  v2 = [(FCFeedDatabase *)*(a1 + 32) _feedsForLookups:?];
  v3 = [MEMORY[0x1E695DF70] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v4 = *(v1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v76 objects:v91 count:16];
  v71 = v1;
  if (v5)
  {
    v6 = v5;
    v7 = *v77;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v77 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v76 + 1) + 8 * i);
        v10 = [v9 feedID];
        v11 = [v2 objectForKeyedSubscript:v10];

        v12 = [(FCFeedDatabase *)*(v1 + 32) _shortCircuitLookup:v9 withFeed:v11];
        if (v12)
        {
          v13 = *(v71 + 48);
          v14 = [v9 feedID];
          v15 = v13;
          v1 = v71;
          [v15 setObject:v12 forKey:v14];
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v76 objects:v91 count:16];
    }

    while (v6);
  }

  v16 = *(v1 + 32);
  v17 = v3;
  v18 = v2;
  v63 = v16;
  if (v16)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v64 = v17;
    v20 = v17;
    v69 = [v20 countByEnumeratingWithState:&v86 objects:v95 count:16];
    v21 = 0;
    if (v69)
    {
      v66 = 0;
      obj = *v87;
      v65 = v20;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v87 != obj)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v86 + 1) + 8 * j);
          v24 = [v23 feedID];
          v25 = [v18 objectForKeyedSubscript:v24];

          if (v25)
          {
            v26 = [v25 feedID];
            v27 = [v23 feedRange];
            v28 = [v19 objectForKeyedSubscript:v27];

            if (v28)
            {
              v29 = [v19 objectForKeyedSubscript:v27];
              [v29 addObject:v26];
            }

            else
            {
              v29 = [MEMORY[0x1E695DFA8] setWithObject:v26];
              [v19 setObject:v29 forKeyedSubscript:v27];
            }

            if ([v23 hasMaxCount])
            {
              v30 = v21;
              v31 = v19;
              v32 = v18;
              v33 = v66;
              if (!v66)
              {
                v33 = [MEMORY[0x1E695DF90] dictionary];
              }

              v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v23, "maxCount") + 1}];
              v66 = v33;
              [v33 setObject:v34 forKeyedSubscript:v26];

              v18 = v32;
              v19 = v31;
              v21 = v30;
              v20 = v65;
            }

            if (!v21)
            {
              v21 = [v23 requiredFeature];
            }
          }
        }

        v69 = [v20 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v69);
    }

    else
    {
      v66 = 0;
    }

    if ([v19 count])
    {
      [MEMORY[0x1E695DF00] date];
      v36 = v35 = v20;
      v37 = [MEMORY[0x1E695DF70] array];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke;
      v80[3] = &unk_1E7C41500;
      v38 = v35;
      v81 = v38;
      v39 = v37;
      v82 = v39;
      v83 = v63;
      v84 = v21;
      v85 = v66;
      [v19 enumerateKeysAndObjectsUsingBlock:v80];
      v40 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = [v36 fc_millisecondTimeIntervalUntilNow];
        v43 = [v39 count];
        v44 = [v38 count];
        *buf = 134218496;
        *&buf[4] = v42;
        *&buf[12] = 2048;
        *&buf[14] = v43;
        *&buf[22] = 2048;
        v93 = v44;
        _os_log_impl(&dword_1B63EF000, v41, OS_LOG_TYPE_DEFAULT, "feed database took %llums to lookup %lu feed items across %lu feeds", buf, 0x20u);
      }

      v1 = v71;
      v17 = v64;
      if ([v19 count] >= 2)
      {
        [v39 sortUsingSelector:sel_compareOrderDescending_];
      }

      v45 = MEMORY[0x1E695DF20];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke_65;
      v93 = &unk_1E7C36EC8;
      v94 = v39;
      v46 = v39;
      v47 = [v45 fc_dictionary:buf];
    }

    else
    {
      v47 = 0;
      v1 = v71;
      v17 = v64;
    }

    v48 = v47;

    v70 = v48;
  }

  else
  {
    v70 = 0;
  }

  v49 = v18;

  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obja = v17;
  v50 = [obja countByEnumeratingWithState:&v72 objects:v90 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v73;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v72 + 1) + 8 * k);
        v55 = *(v1 + 32);
        v56 = [v54 feedID];
        v57 = [v49 objectForKeyedSubscript:v56];
        v58 = [v54 feedID];
        v59 = [v70 objectForKeyedSubscript:v58];
        v60 = [(FCFeedDatabase *)v55 _serviceLookup:v54 withFeed:v57 feedItems:v59];

        v1 = v71;
        v61 = *(v71 + 48);
        v62 = [v54 feedID];
        [v61 setObject:v60 forKey:v62];
      }

      v51 = [obja countByEnumeratingWithState:&v72 objects:v90 count:16];
    }

    while (v51);
  }
}

- (id)_feedsForLookups:(uint64_t)lookups
{
  if (lookups)
  {
    v3 = *(lookups + 48);
    v4 = [a2 fc_arrayByTransformingWithBlock:&__block_literal_global_61_4];
    v5 = [v3 feedsForFeedIDs:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FCFeedDatabaseLookupResult)_shortCircuitLookup:(void *)lookup withFeed:
{
  v5 = a2;
  lookupCopy = lookup;
  if (self)
  {
    feedRange = [v5 feedRange];
    if ([feedRange isEmpty])
    {
      v8 = objc_alloc_init(FCFeedDatabaseLookupResult);
      [(FCFeedDatabaseLookupResult *)v8 setFeedItems:0];
      [(FCFeedDatabaseLookupResult *)v8 setFeedRange:feedRange];
      [(FCFeedDatabaseLookupResult *)v8 setExhaustedRange:1];
LABEL_21:

      goto LABEL_22;
    }

    if ([v5 cachedOnly])
    {
      v8 = 0;
      goto LABEL_21;
    }

    refreshRegion = [lookupCopy refreshRegion];
    v10 = refreshRegion;
    if (refreshRegion && [refreshRegion containsFeedRange:feedRange])
    {
      v8 = objc_alloc_init(FCFeedDatabaseLookupResult);
      [(FCFeedDatabaseLookupResult *)v8 setFeedItems:0];
      v11 = [feedRange top];
      bottom = [v10 bottom];
      v13 = [FCFeedRange feedRangeWithTop:v11 bottom:bottom];
      [(FCFeedDatabaseLookupResult *)v8 setFeedRange:v13];

      [(FCFeedDatabaseLookupResult *)v8 setExhaustedRange:1];
LABEL_20:

      goto LABEL_21;
    }

    fetchedRanges = [lookupCopy fetchedRanges];
    firstObject = [fetchedRanges firstObject];

    v16 = off_1E7C34000;
    if ([lookupCopy refreshedFromOrder] && (objc_msgSend(feedRange, "top"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "top"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compareToCursor:", v18), v18, v17, v19 != 1))
    {
      if (firstObject)
      {
        firstObject2 = [feedRange top];
        order = [firstObject2 order];
        v33 = [firstObject top];
        if (order <= [(FCFeedInsertionToken *)v33 order])
        {
          v8 = 0;
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        bottom2 = [v10 bottom];
        order2 = [bottom2 order];
        v39 = [firstObject top];
        order3 = [v39 order];

        v41 = order2 > order3;
        v16 = off_1E7C34000;
        if (!v41)
        {
          v8 = 0;
          goto LABEL_19;
        }
      }

      v43 = firstObject;
      v20 = v16;
      bottom3 = [v10 bottom];
    }

    else
    {
      v43 = firstObject;
      v20 = off_1E7C34000;
      bottom3 = +[FCFeedCursor cursorForCurrentDate];
    }

    v22 = bottom3;
    order4 = [bottom3 order];

    v8 = objc_alloc_init(FCFeedDatabaseLookupResult);
    v24 = [feedRange top];
    v25 = [feedRange top];
    v26 = [FCFeedRange feedRangeWithTop:v24 bottom:v25];
    [(FCFeedDatabaseLookupResult *)v8 setFeedRange:v26];

    [(FCFeedDatabaseLookupResult *)v8 setCkFromOrder:order4];
    fetchedRanges2 = [lookupCopy fetchedRanges];
    firstObject2 = [fetchedRanges2 firstObject];

    bottom4 = [feedRange bottom];
    v30 = bottom4;
    if (firstObject2)
    {
      v31 = [firstObject2 top];
      v32 = [v30 topmostCursor:v31];
      -[FCFeedDatabaseLookupResult setCkToOrder:](v8, "setCkToOrder:", [v32 order] + 1);
    }

    else
    {
      -[FCFeedDatabaseLookupResult setCkToOrder:](v8, "setCkToOrder:", [bottom4 order] + 1);
    }

    v33 = objc_alloc_init(FCFeedInsertionToken);
    cursorForTopOfFeed = [(__objc2_class *)v20[133] cursorForTopOfFeed];
    order5 = [cursorForTopOfFeed order];
    if (v33)
    {
      v33->_fromOrder = order5;

      v33->_toOrder = [(FCFeedDatabaseLookupResult *)v8 ckToOrder]- 1;
    }

    else
    {

      [(FCFeedDatabaseLookupResult *)v8 ckToOrder];
    }

    firstObject = v43;
    [(FCFeedDatabaseLookupResult *)v8 setInsertionToken:v33];
    goto LABEL_18;
  }

  v8 = 0;
LABEL_22:

  return v8;
}

- (id)_serviceLookup:(void *)lookup withFeed:(void *)feed feedItems:
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2;
  lookupCopy = lookup;
  feedCopy = feed;
  if (self)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__43;
    v53 = __Block_byref_object_dispose__43;
    v54 = objc_alloc_init(FCFeedDatabaseLookupResult);
    feedRange = [v7 feedRange];
    if ([v7 hasMaxCount])
    {
      maxCount = [v7 maxCount];
    }

    else
    {
      maxCount = -1;
    }

    cachedOnly = [v7 cachedOnly];
    if ([feedRange isEmpty])
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"empty feed ranges aren't handled yet"];
        *buf = 136315906;
        v56 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
        v57 = 2080;
        v58 = "FCFeedDatabase.m";
        v59 = 1024;
        v60 = 872;
        v61 = 2114;
        v62 = v36;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    if (cachedOnly)
    {
      v15 = [feedCopy fc_subarrayWithMaxCount:maxCount];
      [v50[5] setFeedItems:v15];

      feedItems = [v50[5] feedItems];
      v17 = FCFeedRangeCoveredByFeedItems(feedItems);
      [v50[5] setFeedRange:v17];

      feedItems2 = [v50[5] feedItems];
      v19 = [feedItems2 count];
      v20 = v19 != [feedCopy count];
      [v50[5] setExhaustedRange:v20];
LABEL_18:

      v29 = v50[5];
      _Block_object_dispose(&v49, 8);

      goto LABEL_19;
    }

    refreshRegion = [lookupCopy refreshRegion];
    feedItems2 = refreshRegion;
    if (refreshRegion)
    {
      if ([refreshRegion containsFeedRange:feedRange])
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this case should have been short-circuited"];
          *buf = 136315906;
          v56 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
          v57 = 2080;
          v58 = "FCFeedDatabase.m";
          v59 = 1024;
          v60 = 885;
          v61 = 2114;
          v62 = v24;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

LABEL_33:
          v22 = MEMORY[0x1E69E9C10];
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      v25 = [feedRange top];
      v26 = [feedItems2 top];
      v27 = [v25 compareToCursor:v26] == 1;

      if (!v27)
      {
        fetchedRanges = [lookupCopy fetchedRanges];
        v32 = [fetchedRanges count] == 0;

        if (!v32)
        {
          v22 = [lookupCopy contiguousFetchedRangeInRange:feedRange];
          v33 = [feedCopy fc_subarrayWithMaxCount:maxCount];
          v44 = [v33 count];
          v34 = [feedCopy count];
          if (v22)
          {
            v35 = [v22 containsFeedRange:feedRange];
          }

          else
          {
            v35 = 0;
          }

          if (([feedCopy count] >= maxCount) | v35 & 1)
          {
            [v50[5] setFeedItems:v33];
            v39 = FCFeedRangeCoveredByFeedItems(v33);
            [v50[5] setFeedRange:v39];

            [v50[5] setExhaustedRange:(v44 >= v34) & v35];
          }

          else
          {
            v40 = [feedRange top];
            v41 = [feedRange top];
            v42 = [FCFeedRange feedRangeWithTop:v40 bottom:v41];
            [v50[5] setFeedRange:v42];

            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __52__FCFeedDatabase__serviceLookup_withFeed_feedItems___block_invoke;
            v45[3] = &unk_1E7C41528;
            v46 = feedRange;
            v48 = &v49;
            v47 = lookupCopy;
            [v47 enumerateGapsWithBlock:v45];
          }

          goto LABEL_17;
        }

        v22 = MEMORY[0x1E69E9C10];
        v37 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this case should have been short-circuited"];
          *buf = 136315906;
          v56 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
          v57 = 2080;
          v58 = "FCFeedDatabase.m";
          v59 = 1024;
          v60 = 893;
          v61 = 2114;
          v62 = v38;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          goto LABEL_33;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v22 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this case should have been short-circuited"];
      *buf = 136315906;
      v56 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
      v57 = 2080;
      v58 = "FCFeedDatabase.m";
      v59 = 1024;
      v60 = 889;
      v61 = 2114;
      v62 = v43;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      goto LABEL_33;
    }

    goto LABEL_17;
  }

  v29 = 0;
LABEL_19:

  return v29;
}

- (void)_performWithStorageAndWait:(uint64_t)wait
{
  v13 = *MEMORY[0x1E69E9840];
  if (wait)
  {
    v3 = a2;
    if (!NSClassFromString(&cfstr_Xctest.isa) && [MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
      v5 = 136315906;
      v6 = "[FCFeedDatabase _performWithStorageAndWait:]";
      v7 = 2080;
      v8 = "FCFeedDatabase.m";
      v9 = 1024;
      v10 = 602;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
    }

    [(FCFeedDatabase *)wait _synchronizedInit];
    [*(wait + 48) accessWithBlock:v3];
  }
}

- (id)performDatabaseLookups:(id)lookups boundedByCount:(unint64_t)count
{
  v39 = *MEMORY[0x1E69E9840];
  lookupsCopy = lookups;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = lookupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E69E9C10];
    v9 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        requiredFeature = [v11 requiredFeature];

        if (requiredFeature && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"count-bounded lookups don't yet support required features"];
          *buf = 136315906;
          v31 = "[FCFeedDatabase performDatabaseLookups:boundedByCount:]";
          v32 = 2080;
          v33 = "FCFeedDatabase.m";
          v34 = 1024;
          v35 = 170;
          v36 = 2114;
          v37 = v13;
          _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        [v11 setRequiredFeature:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v7);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke;
  v22[3] = &unk_1E7C41440;
  v22[4] = self;
  v23 = v5;
  v14 = dictionary;
  v24 = v14;
  countCopy = count;
  v15 = v5;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v22];
  v16 = v24;
  v17 = v14;

  return v14;
}

void __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke(uint64_t a1)
{
  v1 = a1;
  v153 = *MEMORY[0x1E69E9840];
  v102 = [(FCFeedDatabase *)*(a1 + 32) _feedsForLookups:?];
  v87 = [*(v1 + 40) fc_dictionaryWithKeyBlock:&__block_literal_global_92];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v2 = *(v1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v123 objects:v138 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v124;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v124 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v123 + 1) + 8 * i);
        v8 = [v7 feedID];
        v9 = [v102 objectForKeyedSubscript:v8];

        v10 = [(FCFeedDatabase *)*(v1 + 32) _shortCircuitLookup:v7 withFeed:v9];
        if ([v10 ckFromOrder])
        {
          v11 = *(v1 + 48);
          v12 = [v7 feedID];
          [v11 setObject:v10 forKey:v12];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v123 objects:v138 count:16];
    }

    while (v4);
  }

  v13 = [*(v1 + 48) count];
  if (v13 < [*(v1 + 40) count])
  {
    v14 = *(v1 + 32);
    v93 = *(v1 + 56);
    v15 = *(v1 + 40);
    v103 = v102;
    v16 = 0x1E695D000;
    if (v14)
    {
      v91 = v14;
      v17 = [MEMORY[0x1E695DF90] dictionary];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v96 = v15;
      obj = v15;
      v18 = [obj countByEnumeratingWithState:&v132 objects:v145 count:16];
      if (v18)
      {
        v19 = v18;
        v100 = 0;
        v20 = *v133;
        v88 = v1;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v133 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v132 + 1) + 8 * j);
            v23 = [v22 feedID];
            v24 = [v103 objectForKeyedSubscript:v23];

            if (v24)
            {
              v25 = [v24 feedID];
              v26 = [v22 feedRange];
              v27 = [v17 objectForKeyedSubscript:v26];

              if (v27)
              {
                v28 = [v17 objectForKeyedSubscript:v26];
                [v28 addObject:v25];
              }

              else
              {
                v28 = [MEMORY[0x1E695DFA8] setWithObject:v25];
                [v17 setObject:v28 forKeyedSubscript:v26];
              }

              if ([v22 hasMaxCount])
              {
                v29 = v19;
                v30 = v20;
                v31 = v17;
                v32 = v100;
                if (!v100)
                {
                  v32 = [MEMORY[0x1E695DF90] dictionary];
                }

                v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "maxCount") + 1}];
                v100 = v32;
                [v32 setObject:v33 forKeyedSubscript:v25];

                v17 = v31;
                v20 = v30;
                v19 = v29;
                v1 = v88;
              }
            }
          }

          v19 = [obj countByEnumeratingWithState:&v132 objects:v145 count:16];
        }

        while (v19);
      }

      else
      {
        v100 = 0;
      }

      if ([v17 count])
      {
        v34 = [MEMORY[0x1E695DF00] date];
        v16 = 0x1E695D000uLL;
        v35 = [MEMORY[0x1E695DF70] array];
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __68__FCFeedDatabase__feedItemsForLookups_withFeedsByID_boundedByCount___block_invoke;
        v127[3] = &unk_1E7C41550;
        v36 = v35;
        v128 = v36;
        v129 = v91;
        v130 = v100;
        v131 = v93 + 1;
        [v17 enumerateKeysAndObjectsUsingBlock:v127];
        v37 = FCFeedDatabaseLog;
        if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          v39 = [v34 fc_millisecondTimeIntervalUntilNow];
          v40 = [v36 count];
          v41 = [obj count];
          *buf = 134218496;
          v140 = v39;
          v141 = 2048;
          v142 = v40;
          v143 = 2048;
          v144 = v41;
          _os_log_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_DEFAULT, "feed database took %llums to lookup %lu feed items across %lu feeds", buf, 0x20u);
        }

        if ([v17 count] >= 2)
        {
          [v36 sortUsingSelector:sel_compareOrderDescending_];
        }

        v42 = v130;
        v14 = v36;
      }

      else
      {
        v14 = 0;
        v16 = 0x1E695D000uLL;
      }

      v15 = v96;
    }

    v43 = [*(v16 + 3952) array];
    v44 = MEMORY[0x1E695DF20];
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_3;
    v118[3] = &unk_1E7C413F0;
    v89 = v14;
    v119 = v89;
    v120 = v87;
    v45 = v43;
    v46 = *(v1 + 56);
    v121 = v45;
    v122 = v46;
    [v44 fc_dictionary:v118];
    v101 = obja = v45;
    v97 = FCFeedRangeCoveredByFeedItems(v45);
    v90 = [*(v16 + 3952) array];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v92 = *(v1 + 40);
    v47 = [v92 countByEnumeratingWithState:&v114 objects:v137 count:16];
    if (v47)
    {
      v48 = v47;
      v94 = *v115;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v115 != v94)
          {
            objc_enumerationMutation(v92);
          }

          v50 = *(*(&v114 + 1) + 8 * k);
          v51 = [v50 feedID];
          v52 = [v103 objectForKeyedSubscript:v51];

          v53 = [v50 feedRange];
          v54 = [v52 contiguousFetchedRangeInRange:v53];

          v55 = [v50 feedID];
          v56 = [v101 objectForKeyedSubscript:v55];
          v57 = FCFeedItemsCoveredByRange(v56, v54);

          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_4;
          v108[3] = &unk_1E7C41418;
          v108[4] = v50;
          v58 = v54;
          v109 = v58;
          v59 = v57;
          v110 = v59;
          v60 = obja;
          v61 = *(v1 + 56);
          v111 = v60;
          v113 = v61;
          v62 = v97;
          v112 = v62;
          if (__56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_4(v108))
          {
            [v90 addObject:v50];
          }

          else
          {
            v63 = objc_alloc_init(FCFeedDatabaseLookupResult);
            [(FCFeedDatabaseLookupResult *)v63 setFeedItems:v59];
            [(FCFeedDatabaseLookupResult *)v63 setFeedRange:v62];
            if ([v89 count] <= *(v1 + 56))
            {
              v64 = [v50 feedRange];
              -[FCFeedDatabaseLookupResult setExhaustedRange:](v63, "setExhaustedRange:", [v58 containsFeedRange:v64]);
            }

            else
            {
              [(FCFeedDatabaseLookupResult *)v63 setExhaustedRange:0];
            }

            v65 = *(v1 + 48);
            v66 = [v50 feedID];
            [v65 setObject:v63 forKey:v66];
          }
        }

        v48 = [v92 countByEnumeratingWithState:&v114 objects:v137 count:16];
      }

      while (v48);
    }

    v67 = v90;
    if ([v90 count])
    {
      [*(v1 + 48) removeAllObjects];
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v95 = v90;
      v68 = [v95 countByEnumeratingWithState:&v104 objects:v136 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v105;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v105 != v70)
            {
              objc_enumerationMutation(v95);
            }

            v72 = *(*(&v104 + 1) + 8 * m);
            v73 = [v72 feedID];
            v74 = [v103 objectForKeyedSubscript:v73];

            v75 = [v72 feedRange];
            v76 = [v74 contiguousFetchedRangeInRange:v75];

            v77 = [v72 feedID];
            v78 = [v101 objectForKeyedSubscript:v77];
            v79 = FCFeedItemsCoveredByRange(v78, v76);

            v80 = [(FCFeedDatabase *)*(v1 + 32) _shortCircuitLookup:v72 withFeed:v74];
            v81 = v80;
            if (v80)
            {
              v82 = v80;
            }

            else
            {
              v82 = [(FCFeedDatabase *)*(v1 + 32) _serviceLookup:v72 withFeed:v74 feedItems:v79];
            }

            v83 = v82;

            if (![v83 ckFromOrder] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed is missing data but lookup result has no cursor"];
              *v145 = 136315906;
              v146 = "[FCFeedDatabase performDatabaseLookups:boundedByCount:]_block_invoke";
              v147 = 2080;
              v148 = "FCFeedDatabase.m";
              v149 = 1024;
              v150 = 291;
              v151 = 2114;
              v152 = v86;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v145, 0x26u);
            }

            v84 = *(v1 + 48);
            v85 = [v72 feedID];
            [v84 setObject:v83 forKey:v85];
          }

          v69 = [v95 countByEnumeratingWithState:&v104 objects:v136 count:16];
        }

        while (v69);
      }

      v67 = v90;
    }
  }
}

void __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v20 = a1;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 feedID];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
        if ([*(a1 + 48) count] >= *(a1 + 56))
        {

          goto LABEL_17;
        }

        if (![v10 hasMaxCount] || (objc_msgSend(v3, "objectForKeyedSubscript:", v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = v3, v13 = v5, v14 = v6, v15 = objc_msgSend(v11, "count"), v16 = objc_msgSend(v10, "maxCount"), v11, v17 = v15 >= v16, v6 = v14, v5 = v13, v3 = v12, a1 = v20, !v17))
        {
          [*(a1 + 48) addObject:v8];
          v18 = [v3 objectForKeyedSubscript:v9];

          if (v18)
          {
            v19 = [v3 objectForKeyedSubscript:v9];
            [v19 addObject:v8];
          }

          else
          {
            v19 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
            [v3 setObject:v19 forKeyedSubscript:v9];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)saveFeedItems:(id)items forFeedID:(id)d insertionToken:(id)token requestDate:(id)date reachedToOrder:(BOOL)order extent:(unint64_t)extent reachedEnd:(BOOL)end
{
  v40 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  tokenCopy = token;
  dateCopy = date;
  if ([itemsCopy count] | extent || end || order || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (dCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItems.count != 0 || ckReachedToOrder || reachedEnd || extent != 0"];
    *buf = 136315906;
    v33 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v34 = 2080;
    v35 = "FCFeedDatabase.m";
    v36 = 1024;
    v37 = 309;
    v38 = 2114;
    v39 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedID != nil"];
    *buf = 136315906;
    v33 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v34 = 2080;
    v35 = "FCFeedDatabase.m";
    v36 = 1024;
    v37 = 310;
    v38 = 2114;
    v39 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "opaqueInsertionToken != nil"];
    *buf = 136315906;
    v33 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v34 = 2080;
    v35 = "FCFeedDatabase.m";
    v36 = 1024;
    v37 = 311;
    v38 = 2114;
    v39 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dateCopy)
    {
      goto LABEL_13;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "requestDate != nil"];
    *buf = 136315906;
    v33 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v34 = 2080;
    v35 = "FCFeedDatabase.m";
    v36 = 1024;
    v37 = 312;
    v38 = 2114;
    v39 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_13:
  if (dCopy)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __102__FCFeedDatabase_saveFeedItems_forFeedID_insertionToken_requestDate_reachedToOrder_extent_reachedEnd___block_invoke;
    v23[3] = &unk_1E7C41468;
    v24 = tokenCopy;
    selfCopy = self;
    v26 = dCopy;
    v27 = itemsCopy;
    orderCopy = order;
    v28 = dateCopy;
    extentCopy = extent;
    endCopy = end;
    [(FCFeedDatabase *)self _performWithStorageAndWait:v23];
  }
}

void __102__FCFeedDatabase_saveFeedItems_forFeedID_insertionToken_requestDate_reachedToOrder_extent_reachedEnd___block_invoke(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't save feed items without an insertion token"];
    *buf = 136315906;
    v69 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]_block_invoke";
    v70 = 2080;
    v71 = "FCFeedDatabase.m";
    v72 = 1024;
    v73 = 321;
    v74 = 2114;
    v75 = v54;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = objc_opt_class();
  v4 = FCCheckedDynamicCast(v3, *(a1 + 32));
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 feedForFeedID:*(a1 + 48)];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a feed in order to save feed items"];
    *buf = 136315906;
    v69 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]_block_invoke";
    v70 = 2080;
    v71 = "FCFeedDatabase.m";
    v72 = 1024;
    v73 = 325;
    v74 = 2114;
    v75 = v55;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [v7 refreshedFromOrder];
  v9 = [v7 refreshedToOrder];
  v10 = [*(a1 + 56) sortedArrayUsingSelector:sel_compareOrderDescending_];
  if (v4)
  {
    v11 = v4[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [FCFeedCursor cursorForOrder:v11];
  if (v4)
  {
    v13 = v4[2];
  }

  else
  {
    v13 = 0;
  }

  v14 = [FCFeedCursor cursorForOrder:v13];
  v15 = [FCFeedRange feedRangeWithTop:v12 bottom:v14];
  v16 = FCFeedItemsCoveredByRange(v10, v15);

  v17 = v16;
  v18 = [v16 count];
  if (v18 != [*(a1 + 56) count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CK cursor shouldn't produce feed items that precede it"];
    *buf = 136315906;
    v69 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]_block_invoke";
    v70 = 2080;
    v71 = "FCFeedDatabase.m";
    v72 = 1024;
    v73 = 335;
    v74 = 2114;
    v75 = v53;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v19 = *(a1 + 80);
  if ([*(a1 + 56) count] && !objc_msgSend(v16, "count"))
  {
    v20 = FCFeedDatabaseLog;
    if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_ERROR))
    {
      v56 = v8;
      if (v4)
      {
        v57 = v4[2];
      }

      else
      {
        v57 = 0;
      }

      v58 = v20;
      v59 = [v7 feedID];
      *buf = 134218242;
      v69 = v57;
      v70 = 2112;
      v71 = v59;
      _os_log_error_impl(&dword_1B63EF000, v58, OS_LOG_TYPE_ERROR, "pretending to reach order %llu for feed %@ because rdar://problem/27201634 caused us to make no progress", buf, 0x16u);

      v19 = 1;
      v8 = v56;
      v17 = v16;
    }

    else
    {
      v19 = 1;
    }
  }

  v66 = [v7 refreshRegion];
  v63 = v19;
  if (v4)
  {
    v21 = v4[1];
  }

  else
  {
    v21 = 0;
  }

  v22 = +[FCFeedCursor cursorForTopOfFeed];
  v23 = [v22 order];

  if (v21 == v23)
  {
    v24 = [v7 refreshedFromOrder];
    v25 = [*(a1 + 64) fc_millisecondTimeIntervalSince1970];
    if (v25 > v8)
    {
      v8 = v25;
    }

    if (v4)
    {
      v26 = v4[2];
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 72);
    v28 = v27 != 0;
    v29 = v27 - 1;
    if (!v28)
    {
      v29 = 0;
    }

    if (v24)
    {
      v30 = v9;
    }

    else
    {
      v30 = -1;
    }

    if (v26 < v30)
    {
      v30 = v26;
    }

    if (v26 >= v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    if (![v17 count])
    {
      v48 = 0;
      goto LABEL_61;
    }

    v67 = v21;
    v65 = v31;
  }

  else
  {
    v67 = v21;
    v65 = v9;
    [v17 count];
  }

  v64 = v17;
  v32 = FCFeedRangeCoveredByFeedItems(v17);
  v33 = [v32 top];
  v34 = [v32 bottom];
  if (v67 == v23)
  {
    v35 = [v7 fetchedRangePrecedingOrder:{objc_msgSend(v33, "order")}];
    v36 = v35;
    if (v35)
    {
      v60 = v8;
      v61 = v10;
      v62 = v7;
      v37 = [v35 bottom];
      v38 = [v37 order];
      v39 = [v33 order];

      if (v38 > v39)
      {
        v40 = [v36 bottom];

        v33 = v40;
      }

      v10 = v61;
      v7 = v62;
      v8 = v60;
    }
  }

  else
  {
    if (v4)
    {
      v41 = v4[1];
    }

    else
    {
      v41 = 0;
    }

    [FCFeedCursor cursorForOrder:v41];
    v33 = v36 = v33;
  }

  if (*(a1 + 81) == 1)
  {
    v42 = +[FCFeedCursor cursorForBottomOfFeed];
  }

  else
  {
    if (v63)
    {
      if (v4)
      {
        v43 = v4[2];
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v44 = *(a1 + 72);
      if (!v44)
      {
        goto LABEL_57;
      }

      v43 = v44 - 1;
    }

    v42 = [FCFeedCursor cursorForOrder:v43];
  }

  v45 = v42;

  v34 = v45;
LABEL_57:
  if (v67 == v23 && [v66 containsOrder:{objc_msgSend(v34, "order")}])
  {
    [v66 bottom];
    v47 = v46 = v8;

    v34 = v47;
    v8 = v46;
  }

  v48 = [FCFeedRange feedRangeWithTop:v33 bottom:v34];

  v17 = v64;
  v31 = v65;
LABEL_61:
  v49 = *(a1 + 40);
  if (v49)
  {
    v50 = *(v49 + 48);
  }

  else
  {
    v50 = 0;
  }

  [v50 insertFeedItems:v17];
  v51 = *(a1 + 40);
  if (v51)
  {
    v52 = *(v51 + 48);
  }

  else
  {
    v52 = 0;
  }

  [v52 updateFeedID:*(a1 + 48) refreshedFromOrder:v8 refreshedToOrder:v31 fetchedRange:v48];
}

- (void)saveFeedItems:(id)items feedIDs:(id)ds extentByFeedID:(id)d requestRangeByFeedID:(id)iD
{
  itemsCopy = items;
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__FCFeedDatabase_saveFeedItems_feedIDs_extentByFeedID_requestRangeByFeedID___block_invoke;
  v18[3] = &unk_1E7C376C8;
  v19 = itemsCopy;
  v20 = dsCopy;
  selfCopy = self;
  v22 = dCopy;
  v23 = iDCopy;
  v14 = iDCopy;
  v15 = dCopy;
  v16 = dsCopy;
  v17 = itemsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v18];
}

void __76__FCFeedDatabase_saveFeedItems_feedIDs_extentByFeedID_requestRangeByFeedID___block_invoke(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v70 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v84;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v84 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v83 + 1) + 8 * i);
        v9 = [v8 feedID];
        v10 = [v2 objectForKeyedSubscript:v9];

        if (v10)
        {
          [v10 addObject:v8];
        }

        else
        {
          v11 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
          v12 = [v8 feedID];
          [v2 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v5);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v13 = v70;
  obj = *(v70 + 40);
  v71 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v71)
  {
    v69 = *v80;
    *&v14 = 136315906;
    v67 = v14;
    v77 = v2;
    do
    {
      v15 = 0;
      do
      {
        if (*v80 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v79 + 1) + 8 * v15);
        v17 = *(v13 + 48);
        v74 = v15;
        if (v17)
        {
          v18 = *(v17 + 48);
        }

        else
        {
          v18 = 0;
        }

        v19 = [v18 feedForFeedID:{v16, v67}];
        if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a feed in order to save feed items"];
          *buf = v67;
          v88 = "[FCFeedDatabase saveFeedItems:feedIDs:extentByFeedID:requestRangeByFeedID:]_block_invoke";
          v89 = 2080;
          v90 = "FCFeedDatabase.m";
          v91 = 1024;
          v92 = 443;
          v93 = 2114;
          v94 = v62;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v20 = [v19 refreshedFromOrder];
        v21 = [v19 refreshedToOrder];
        v76 = [*(v13 + 56) objectForKey:v16];
        v22 = [v76 unsignedLongLongValue];
        v78 = [v19 refreshRegion];
        v23 = [v19 refreshedFromOrder];
        v24 = [*(v13 + 64) objectForKey:v16];
        v25 = [v24 dateRange];
        v26 = [v25 laterDate];
        v27 = [v26 fc_millisecondTimeIntervalSince1970];

        if (v27 <= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v27;
        }

        v75 = v24;
        v29 = v24;
        v30 = v16;
        v31 = [v29 bottom];
        v32 = [v31 order];
        if (v22)
        {
          v33 = v22 - 1;
        }

        else
        {
          v33 = 0;
        }

        if (v23)
        {
          v34 = v21;
        }

        else
        {
          v34 = -1;
        }

        if (v32 < v34)
        {
          v34 = v32;
        }

        if (v32 >= v33)
        {
          v35 = v34;
        }

        else
        {
          v35 = v33;
        }

        v36 = [v77 objectForKeyedSubscript:v30];
        if ([v36 count])
        {
          v73 = v35;
          v37 = [v36 sortedArrayUsingSelector:sel_compareOrderDescending_];
          v38 = [v37 count];
          if (v38 != [v36 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CK cursor shouldn't produce feed items that precede it"];
            *buf = v67;
            v88 = "[FCFeedDatabase saveFeedItems:feedIDs:extentByFeedID:requestRangeByFeedID:]_block_invoke";
            v89 = 2080;
            v90 = "FCFeedDatabase.m";
            v91 = 1024;
            v92 = 469;
            v93 = 2114;
            v94 = v63;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v72 = v28;
          v39 = FCFeedRangeCoveredByFeedItems(v37);
          v40 = v39;
          if (v22)
          {
            v41 = [v39 top];
            v42 = [FCFeedCursor cursorForOrder:v22 - 1];
            v43 = [FCFeedRange feedRangeWithTop:v41 bottom:v42];

            v40 = v43;
          }

          v44 = v78;
          v45 = [v40 top];
          v46 = [v19 fetchedRangePrecedingOrder:{objc_msgSend(v45, "order")}];

          if (v46)
          {
            v47 = [v46 bottom];
            v48 = [v47 order];
            v49 = [v40 top];
            v50 = [v49 order];

            if (v48 > v50)
            {
              v51 = [v46 bottom];
              v52 = [v51 order];
              v53 = [v40 bottom];
              v54 = +[FCFeedRange feedRangeWithMaxOrder:minOrder:](FCFeedRange, "feedRangeWithMaxOrder:minOrder:", v52, [v53 order]);

              v40 = v54;
            }

            v44 = v78;
          }

          v55 = [v40 bottom];
          v56 = [v44 containsCursor:v55];

          if (v56)
          {
            v57 = [v40 top];
            v58 = [v44 bottom];
            v59 = [FCFeedRange feedRangeWithTop:v57 bottom:v58];

            v40 = v59;
          }

          v13 = v70;
          v28 = v72;

          v35 = v73;
        }

        else
        {
          v40 = 0;
          v13 = v70;
          v44 = v78;
        }

        v60 = *(v13 + 48);
        if (v60)
        {
          v61 = *(v60 + 48);
        }

        else
        {
          v61 = 0;
        }

        [v61 updateFeedID:v30 refreshedFromOrder:v28 refreshedToOrder:v35 fetchedRange:v40];

        v15 = v74 + 1;
        v2 = v77;
      }

      while (v71 != v74 + 1);
      v64 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
      v71 = v64;
    }

    while (v64);
  }

  v65 = *(v13 + 48);
  if (v65)
  {
    v66 = *(v65 + 48);
  }

  else
  {
    v66 = 0;
  }

  [v66 insertFeedItems:*(v13 + 32)];
}

- (void)enumerateRangesMissingFromLookups:(id)lookups visitor:(id)visitor
{
  lookupsCopy = lookups;
  visitorCopy = visitor;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke;
  v10[3] = &unk_1E7C38FF0;
  v11 = lookupsCopy;
  selfCopy = self;
  v13 = visitorCopy;
  v8 = visitorCopy;
  v9 = lookupsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v10];
}

void __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fc_arrayByTransformingWithBlock:&__block_literal_global_45_1];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
  }

  v17 = v2;
  v5 = [v4 feedsForFeedIDs:v2];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 feedID];
        v12 = [v5 objectForKeyedSubscript:v11];

        v13 = [MEMORY[0x1E695DF70] array];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke_3;
        v19[3] = &unk_1E7C414B0;
        v19[4] = v10;
        v14 = v13;
        v20 = v14;
        [v12 enumerateGapsWithBlock:v19];
        if ([v14 count])
        {
          v15 = *(a1 + 48);
          v16 = [v10 feedID];
          (*(v15 + 16))(v15, v16, v14);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

void __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke_3(uint64_t a1, void *a2, BOOL *a3)
{
  v14 = a2;
  v5 = [*(a1 + 32) feedRange];
  v6 = [v14 intersectsRange:v5];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) feedRange];
    v9 = [v14 feedRangeByIntersectingWithRange:v8];
    [v7 addObject:v9];
  }

  v10 = [v14 bottom];
  v11 = [v10 order];
  v12 = [*(a1 + 32) feedRange];
  v13 = [v12 bottom];
  *a3 = v11 <= [v13 order];
}

- (void)lookupFeedItemsForFeedID:(id)d feedRange:(id)range completion:(id)completion
{
  dCopy = d;
  rangeCopy = range;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__43;
  v24 = __Block_byref_object_dispose__43;
  v25 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke;
  v15[3] = &unk_1E7C414D8;
  v19 = &v20;
  v15[4] = self;
  v12 = dCopy;
  v16 = v12;
  v13 = rangeCopy;
  v17 = v13;
  v14 = array;
  v18 = v14;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v15];
  completionCopy[2](completionCopy, v21[5], v14);

  _Block_object_dispose(&v20, 8);
}

void __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v15[0] = *(a1 + 40);
  v3 = MEMORY[0x1E695DEC8];
  v4 = v2;
  v5 = [v3 arrayWithObjects:v15 count:1];
  v6 = [v4 feedItemsForFeedIDs:v5 feedRange:*(a1 + 48) feature:0 maxCountByFeed:0 totalMaxCount:0];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 48);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 feedForFeedID:*(a1 + 40)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke_2;
  v12[3] = &unk_1E7C414B0;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  [v11 enumerateGapsWithBlock:v12];
}

void __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke_2(uint64_t a1, void *a2, BOOL *a3)
{
  v10 = a2;
  if ([v10 intersectsRange:*(a1 + 32)])
  {
    v5 = *(a1 + 40);
    v6 = [v10 feedRangeByIntersectingWithRange:*(a1 + 32)];
    [v5 addObject:v6];
  }

  v7 = [v10 bottom];
  v8 = [v7 order];
  v9 = [*(a1 + 32) bottom];
  *a3 = v8 <= [v9 order];
}

- (void)saveFeedItems:(id)items feedID:(id)d feedRange:(id)range
{
  itemsCopy = items;
  dCopy = d;
  rangeCopy = range;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__FCFeedDatabase_saveFeedItems_feedID_feedRange___block_invoke;
  v14[3] = &unk_1E7C38C98;
  v14[4] = self;
  v15 = itemsCopy;
  v16 = dCopy;
  v17 = rangeCopy;
  v11 = rangeCopy;
  v12 = dCopy;
  v13 = itemsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v14];
}

void __49__FCFeedDatabase_saveFeedItems_feedID_feedRange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  [v3 insertFeedItems:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  v15 = [v5 feedForFeedID:*(a1 + 48)];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[6];
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = v6;
  v10 = [v8 maxOrder];
  v11 = [v15 refreshedFromOrder];
  if (v10 <= v11)
  {
    v10 = v11;
  }

  v12 = [*(a1 + 56) minOrder];
  v13 = [v15 refreshedToOrder];
  if (v12 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [v9 updateFeedID:v7 refreshedFromOrder:v10 refreshedToOrder:v14 fetchedRange:*(a1 + 56)];
}

- (void)saveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    storage = self->_storage;
  }

  else
  {
    storage = 0;
  }

  [(FCFDBStorage *)storage flushChanges];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v5 = handlerCopy;
  }
}

void __35__FCFeedDatabase__synchronizedInit__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 48))
  {
    v2 = [MEMORY[0x1E695DF00] date];
    v3 = *(a1 + 32);
    if (v3)
    {
      if (([v3 usage] & 4) != 0)
      {
        v4 = 6;
      }

      else
      {
        v4 = 4;
      }

      if (!NSClassFromString(&cfstr_Xctest.isa))
      {
        v5 = *(v3 + 16);
        if (v5)
        {
          v6 = [v5 URLByAppendingPathComponent:@"feeddatabase" isDirectory:0];
          v7 = [MEMORY[0x1E696AC08] defaultManager];
          v8 = [v6 path];
          v9 = [v7 fileExistsAtPath:v8];

          if (v9)
          {
            LOWORD(value) = 0;
            getxattr([v6 fileSystemRepresentation], "com.apple.newscore.storeVersion", &value, 2uLL, 0, 0);
            v10 = value;
            v11 = *(v3 + 8);
            if (value != v11)
            {
              v12 = FCFeedDatabaseLog;
              if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v37 = v10;
                v38 = 2048;
                v39 = v11;
                _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "wiping feed database because persisted version %lu does not match current version %lu", buf, 0x16u);
              }

              v13 = [MEMORY[0x1E696AC08] defaultManager];
              [v13 removeItemAtURL:v6 error:0];
            }
          }

          v14 = [MEMORY[0x1E696AC08] defaultManager];
          v15 = [v6 path];
          v16 = [v14 fileExistsAtPath:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AC08] defaultManager];
            v18 = [v6 path];
            [v17 createFileAtPath:v18 contents:0 attributes:0];

            setxattr([v6 fileSystemRepresentation], "com.apple.newscore.storeVersion", (v3 + 8), 2uLL, 0, 0);
          }

          value = 0;
          v19 = [v6 getResourceValue:&value forKey:*MEMORY[0x1E695DB50] error:0];
          v20 = value;
          if (v19)
          {
            v21 = FCFeedDatabaseLog;
            if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
            {
              v22 = MEMORY[0x1E696AAF0];
              v23 = v21;
              v24 = [v22 stringFromByteCount:objc_msgSend(v20 countStyle:{"unsignedLongLongValue"), 0}];
              *buf = 138543362;
              v37 = v24;
              _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "feed database takes up %{public}@ on disk", buf, 0xCu);
            }
          }

          v25 = [FCFDBStorage alloc];
          v26 = [[FCFDBPruningPolicy alloc] initWithMaxAgeToPersist:1209600.0];
          v27 = [(FCFDBStorage *)v25 initWithFileURL:v6 options:v4 pruningPolicy:v26];
          v28 = *(v3 + 48);
          *(v3 + 48) = v27;
        }
      }

      if (!*(v3 + 48))
      {
        v29 = FCFeedDatabaseLog;
        if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEFAULT, "will use in-memory storage", buf, 2u);
        }

        v30 = [[FCFDBStorage alloc] initTransientWithOptions:v4];
        v31 = *(v3 + 48);
        *(v3 + 48) = v30;
      }
    }

    v32 = FCFeedDatabaseLog;
    if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = [v2 fc_millisecondTimeIntervalUntilNow];
      *buf = 134217984;
      v37 = v34;
      _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "feed database took %llums to initialize", buf, 0xCu);
    }
  }
}

void __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 count] != 1 || (objc_msgSend(*(a1 + 32), "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "maxCount"), v7, v8 == -1))
  {
    v10 = -1;
  }

  else
  {
    v9 = [*(a1 + 32) firstObject];
    v10 = [v9 maxCount] + 1;
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v11)
  {
    v11 = v11[6];
  }

  v13 = v11;
  v14 = [v16 allObjects];
  v15 = [v13 feedItemsForFeedIDs:v14 feedRange:v6 feature:*(a1 + 56) maxCountByFeed:*(a1 + 64) totalMaxCount:v10];

  [v12 addObjectsFromArray:v15];
}

void __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke_65(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 feedID];
        v11 = [v3 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = [v3 objectForKeyedSubscript:v10];
          [v12 addObject:v9];
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
          [v3 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void __52__FCFeedDatabase__serviceLookup_withFeed_feedItems___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 intersectsRange:*(a1 + 32)])
  {
    v6 = [v5 feedRangeByIntersectingWithRange:*(a1 + 32)];
    v7 = [v6 top];
    [*(*(*(a1 + 48) + 8) + 40) setCkFromOrder:{objc_msgSend(v7, "order")}];

    v8 = [v6 bottom];
    [*(*(*(a1 + 48) + 8) + 40) setCkToOrder:{objc_msgSend(v8, "order") + 1}];

    v9 = objc_opt_new();
    v10 = [v6 top];
    v11 = [v10 order];
    if (v9)
    {
      v9[1] = v11;
    }

    v12 = [v6 bottom];
    v13 = [v12 order];
    if (v9)
    {
      v9[2] = v13;
    }

    [*(*(*(a1 + 48) + 8) + 40) setInsertionToken:v9];
    v14 = FCFeedDatabaseLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) feedID];
      v16 = v15;
      if (v9)
      {
        v17 = v9[1];
        v18 = v9[2];
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v19 = 138412802;
      v20 = v15;
      v21 = 2048;
      v22 = v17;
      v23 = 2048;
      v24 = v18;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "trying to extend feed %@ from order %llu to order %llu", &v19, 0x20u);
    }

    *a3 = 1;
  }
}

void __68__FCFeedDatabase__feedItemsForLookups_withFeedsByID_boundedByCount___block_invoke(void *a1, void *a2, void *a3)
{
  v7 = a1[4];
  v6 = a1[5];
  if (v6)
  {
    v6 = v6[6];
  }

  v8 = v6;
  v9 = a2;
  v11 = [a3 allObjects];
  v10 = [v8 feedItemsForFeedIDs:v11 feedRange:v9 feature:0 maxCountByFeed:a1[6] totalMaxCount:a1[7]];

  [v7 addObjectsFromArray:v10];
}

- (void)t_insertSegmentForFeedID:(id)d range:(id)range items:(id)items
{
  dCopy = d;
  rangeCopy = range;
  itemsCopy = items;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__FCFeedDatabase_Testing__t_insertSegmentForFeedID_range_items___block_invoke;
  v14[3] = &unk_1E7C38C98;
  v14[4] = self;
  v15 = dCopy;
  v16 = rangeCopy;
  v17 = itemsCopy;
  v11 = itemsCopy;
  v12 = rangeCopy;
  v13 = dCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v14];
}

void __64__FCFeedDatabase_Testing__t_insertSegmentForFeedID_range_items___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v13 = [v3 feedForFeedID:*(a1 + 40)];
  v4 = [v13 refreshedFromOrder];
  v5 = [v13 refreshedToOrder];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v4 = [v7 fc_millisecondTimeIntervalSince1970];

    v8 = [*(a1 + 48) top];
    v6 = [v8 order];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 48);
  }

  else
  {
    v10 = 0;
  }

  [v10 insertFeedItems:*(a1 + 56)];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 48);
  }

  else
  {
    v12 = 0;
  }

  [v12 updateFeedID:*(a1 + 40) refreshedFromOrder:v4 refreshedToOrder:v6 fetchedRange:*(a1 + 48)];
}

- (id)t_lookupFeedID:(id)d range:(id)range maxCount:(unint64_t)count
{
  v16[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  dCopy = d;
  v10 = objc_opt_new();
  [v10 setFeedID:dCopy];

  [v10 setFeedRange:rangeCopy];
  [v10 setMaxCount:count];
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [(FCFeedDatabase *)self performDatabaseLookups:v11];
  allValues = [v12 allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

@end