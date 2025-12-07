@interface _CDSpotlightEventIndexer
- (BOOL)finishIndexing;
- (BOOL)isIndexing;
- (_CDSpotlightEventIndexer)initWithDataSource:(id)source;
- (void)_beginIndexingFromLatestSpotlightClientState;
- (void)beginIndexingWithBatchSize:(unint64_t)size completion:(id)completion;
- (void)finishIndexing;
- (void)indexAdditionsAsBatch;
- (void)indexDeletionsAsBatch;
- (void)resetIndex;
@end

@implementation _CDSpotlightEventIndexer

- (BOOL)isIndexing
{
  context = [(_CDSpotlightEventIndexer *)self context];
  v3 = context != 0;

  return v3;
}

- (void)_beginIndexingFromLatestSpotlightClientState
{
  if (result)
  {
    v1 = result[2];
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke;
    v2[3] = &unk_1E736A460;
    v2[4] = result;
    return [v1 fetchLastClientStateWithCompletionHandler:v2];
  }

  return result;
}

- (void)indexDeletionsAsBatch
{
  v58 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v3 = +[_CDLogging knowledgeChannel];
  if (OUTLINED_FUNCTION_8_11(v3))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v1, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Performing batch deletes in spotlight indexer", buf, 2u);
  }

  context = [self context];
  v5 = context;
  if (context)
  {
    v6 = *(context + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = *(self + 24);
  v55 = 0;
  v9 = v8;
  v10 = [v9 earliestEventCreationDateWithError:&v55];
  v11 = v55;

  v12 = v11 == 0;
  if (v11)
  {
    v13 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v11;
      OUTLINED_FUNCTION_10(&dword_191750000, v13, v14, "[Spotlight Indexer] Spotlight event indexer data source failed to fetch earliest event creation date: %@", buf);
    }

LABEL_9:

    goto LABEL_15;
  }

  context2 = [self context];
  v16 = context2;
  if (context2)
  {
    v17 = *(context2 + 8);
    v18 = v17;
    if (v17)
    {
      v19 = v17[1];
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
LABEL_13:
  v20 = [v10 compare:v19];

  if (v20 == 1)
  {
    v45 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v10;
      OUTLINED_FUNCTION_3(&dword_191750000, v45, v46, "[Spotlight Indexer] Deleting all searchable items before date: %@", buf);
    }

    [*(self + 16) beginIndexBatch];
    [v10 timeIntervalSinceReferenceDate];
    [*(self + 16) _deleteActionsBeforeTime:0 completionHandler:?];
    [(_CDEventIndexerBookmark *)v7 updatedBookmarkWithEarliestCreationDate:v10];
    v7 = v13 = v7;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  context3 = [self context];
  v23 = context3;
  if (context3)
  {
    v24 = *(context3 + 8);
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 3);
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
LABEL_18:
  v27 = v26;
  context4 = [self context];
  v29 = context4;
  if (context4)
  {
    v30 = *(context4 + 40);
  }

  else
  {
    v30 = 0;
  }

  v31 = [v21 initWithStartDate:v27 endDate:{v30, v10}];

  v32 = *(self + 24);
  v53 = v11;
  v54 = 0;
  v33 = v32;
  v34 = [v33 searchableItemIdentifiersForTombstonedEventsInInterval:v31 latestTombstoneDate:&v54 error:&v53];
  v35 = v54;
  v36 = v53;

  if (v36)
  {
    v37 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v36;
      OUTLINED_FUNCTION_10(&dword_191750000, v37, v38, "[Spotlight Indexer] Spotlight event indexer data source failed to fetch events tombstones: %@", buf);
    }
  }

  else
  {
    if (!v35)
    {
      goto LABEL_25;
    }

    v47 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
      *buf = 138412290;
      v57 = v48;
      OUTLINED_FUNCTION_3(&dword_191750000, v47, v49, "[Spotlight Indexer] Deleting %@ searchable items from spotlight index (from user initiated deletes).", buf);
    }

    if (!v12)
    {
      [*(self + 16) beginIndexBatch];
    }

    [*(self + 16) _deleleActionsWithIdentifiers:v34 completionHandler:0];
    [(_CDEventIndexerBookmark *)v7 updatedBookmarkWithLatestTombstoneDate:v35];
    v37 = v7;
    v7 = v12 = 1;
  }

LABEL_25:
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke;
  v51[3] = &unk_1E7367670;
  v51[4] = self;
  v39 = v7;
  v52 = v39;
  v40 = MEMORY[0x193B00C50](v51);
  v41 = v40;
  if (v12)
  {
    v42 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v39;
      OUTLINED_FUNCTION_3(&dword_191750000, v42, v43, "[Spotlight Indexer] Updating spotlight index bookmark at end of batch deletions: %@", buf);
    }

    v44 = _CDClientStateFromEventIndexerBookmark(v39);
    [*(self + 16) endIndexBatchWithClientState:v44 completionHandler:v41];
  }

  else
  {
    (*(v40 + 16))(v40, 0);
  }
}

- (_CDSpotlightEventIndexer)initWithDataSource:(id)source
{
  sourceCopy = source;
  CSSearchableIndexClass = getCSSearchableIndexClass();
  if (CSSearchableIndexClass && (v7 = CSSearchableIndexClass, ([(objc_class *)CSSearchableIndexClass isIndexingAvailable]& 1) != 0))
  {
    v19.receiver = self;
    v19.super_class = _CDSpotlightEventIndexer;
    v8 = [(_CDSpotlightEventIndexer *)&v19 init];
    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      stream = [sourceCopy stream];
      name = [stream name];
      v12 = [v9 stringWithFormat:@"com.apple.coreduet:%@", name];

      v13 = [v7 alloc];
      v14 = [v13 initWithName:v12 protectionClass:*MEMORY[0x1E696A388]];
      index = v8->_index;
      v8->_index = v14;

      objc_storeStrong(&v8->_dataSource, source);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v17 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_CDSpotlightEventIndexer initWithDataSource:v17];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)beginIndexingWithBatchSize:(unint64_t)size completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(_CDSpotlightEventIndexer *)selfCopy isIndexing])
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Spotlight event indexer is already in the process of indexing", &v15, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (selfCopy)
      {
        dataSource = selfCopy->_dataSource;
      }

      else
      {
        dataSource = 0;
      }

      v11 = dataSource;
      stream = [(_CDSpotlightEventIndexerDataSource *)v11 stream];
      name = [stream name];
      v15 = 138412290;
      v16 = name;
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Begin indexing %@ events with spotlight", &v15, 0xCu);
    }

    v14 = objc_alloc_init(_CDEventIndexerContext);
    [(_CDSpotlightEventIndexer *)selfCopy setContext:v14];
    [(_CDSpotlightEventIndexer *)v14 beginIndexingWithBatchSize:selfCopy completion:size, completionCopy];
  }
}

- (void)finishIndexing
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = selfCopy[3];
      stream = [v3 stream];
      name = [stream name];
      context = [selfCopy context];
      v7 = context;
      if (context)
      {
        v8 = *(context + 8);
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        v8 = @"<never fetched>";
      }

      v14 = 138412546;
      v15 = name;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Finished indexing %@ events with spotlight, final bookmark: %@", &v14, 0x16u);
    }

    context2 = [selfCopy context];
    if (![(_CDSpotlightEventIndexer *)context2 finishIndexing])
    {
      context3 = [selfCopy context];
      v11 = context3;
      if (context3)
      {
        v12 = *(context3 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v13[2]();
    }

    [selfCopy setContext:0];
    objc_sync_exit(selfCopy);
  }
}

- (void)resetIndex
{
  if (self)
  {
    [*(self + 16) beginIndexBatch];
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    v4 = v3;

    [*(self + 16) _deleteActionsBeforeTime:0 completionHandler:v4];
    currentVersion = [objc_opt_class() currentVersion];
    v6 = [_CDEventIndexerBookmark baseBookmarkWithVersion:currentVersion];
    v7 = _CDClientStateFromEventIndexerBookmark(v6);
    v8 = *(self + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38___CDSpotlightEventIndexer_resetIndex__block_invoke;
    v10[3] = &unk_1E7367670;
    v10[4] = self;
    v11 = v6;
    v9 = v6;
    [v8 endIndexBatchWithClientState:v7 completionHandler:v10];
  }
}

- (void)indexAdditionsAsBatch
{
  v72 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = +[_CDLogging knowledgeChannel];
    if (OUTLINED_FUNCTION_8_11(v3))
    {
      v4 = MEMORY[0x1E696AD98];
      context = [self context];
      v6 = context;
      if (context)
      {
        v7 = *(context + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = [v4 numberWithUnsignedInteger:v7];
      *buf = 138412290;
      v68 = v8;
      OUTLINED_FUNCTION_3(&dword_191750000, v1, v9, "[Spotlight Indexer] Performing batch additions (%@ batch size) in spotlight indexer", buf);
    }

    v10 = objc_alloc(MEMORY[0x1E696AB80]);
    context2 = [OUTLINED_FUNCTION_7_10() context];
    v12 = context2;
    selfCopy = self;
    if (context2)
    {
      v13 = *(context2 + 8);
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 2);
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
LABEL_9:
    v16 = v15;
    context3 = [self context];
    v18 = context3;
    if (context3)
    {
      v19 = *(context3 + 40);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v1 initWithStartDate:v16 endDate:v19];

    v66 = 0;
    selfCopy2 = self;
    v22 = self[3];
    context4 = [self context];
    v24 = context4;
    if (context4)
    {
      v25 = *(context4 + 24);
    }

    else
    {
      v25 = 0;
    }

    v64 = 0;
    v65 = 0;
    v26 = [v22 bundleIDToSearchableItemsDictionaryWithCreationDateInInterval:v20 limit:v25 nextBatch:&v66 latestCreationDate:&v65 error:&v64];
    v27 = v65;
    v28 = v64;

    if (v28)
    {
      v29 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = selfCopy[3];
        stream = [v30 stream];
        name = [stream name];
        *buf = 138412546;
        v68 = name;
        v69 = 2112;
        v70 = v28;
        _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "[Spotlight Indexer] Spotlight event indexer data source failed to fetch %@ events: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v27)
      {
        v54 = v27;
        v55 = v20;
        [selfCopy[2] beginIndexBatch];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v53 = v26;
        v33 = v26;
        v34 = [v33 countByEnumeratingWithState:&v60 objects:v71 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v61;
          v37 = *MEMORY[0x1E696A388];
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v61 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v39 = *(*(&v60 + 1) + 8 * i);
              v40 = [v33 objectForKeyedSubscript:v39];
              v41 = +[_CDLogging knowledgeChannel];
              if (OUTLINED_FUNCTION_8_11(v41))
              {
                v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v40, "count")}];
                *buf = 138412546;
                v68 = v42;
                v69 = 2112;
                v70 = v39;
                _os_log_impl(&dword_191750000, v1, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Adding %@ searchable items with bundleID %@ to spotlight index", buf, 0x16u);

                selfCopy2 = selfCopy;
              }

              [selfCopy2[2] indexSearchableItems:v40 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v37 forBundleID:v39 options:4 completionHandler:0];
            }

            v35 = [v33 countByEnumeratingWithState:&v60 objects:v71 count:16];
          }

          while (v35);
        }

        context5 = [selfCopy2 context];
        v44 = context5;
        if (context5)
        {
          v45 = *(context5 + 8);
        }

        else
        {
          v45 = 0;
        }

        v27 = v54;
        v20 = v55;
        v28 = 0;
        v46 = v45;
        v47 = [(_CDEventIndexerBookmark *)v46 updatedBookmarkWithLatestCreationDate:v54];

        v48 = +[_CDLogging knowledgeChannel];
        if (OUTLINED_FUNCTION_8_11(v48))
        {
          *buf = 138412290;
          v68 = v47;
          OUTLINED_FUNCTION_3(&dword_191750000, v44, v49, "[Spotlight Indexer] Updating spotlight index bookmark at end of batch additions: %@", buf);
        }

        v50 = _CDClientStateFromEventIndexerBookmark(v47);
        v51 = selfCopy2[2];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke;
        v57[3] = &unk_1E736A488;
        v57[4] = selfCopy2;
        v58 = v47;
        v59 = v66;
        v52 = v47;
        [v51 endIndexBatchWithClientState:v50 completionHandler:v57];

        v26 = v53;
        goto LABEL_20;
      }

      v29 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "[Spotlight Indexer] No new searchable items to index", buf, 2u);
      }
    }

    [(_CDSpotlightEventIndexer *)selfCopy finishIndexing];
LABEL_20:
  }
}

- (void)beginIndexingWithBatchSize:(uint64_t)a3 completion:(void *)a4 .cold.1(void *a1, void *a2, uint64_t a3, void *a4)
{
  objc_sync_exit(a2);

  v7 = [a2 context];
  if (v7)
  {
    v7[3] = a3;
  }

  v8 = [a2 context];
  v10 = v8;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v9, a4, 32);
  }

  return [(_CDSpotlightEventIndexer *)a2 _beginIndexingFromLatestSpotlightClientState];
}

- (BOOL)finishIndexing
{
  if (self)
  {
    v1 = self[4];
  }

  else
  {
    v1 = 0;
  }

  return v1 == 0;
}

@end