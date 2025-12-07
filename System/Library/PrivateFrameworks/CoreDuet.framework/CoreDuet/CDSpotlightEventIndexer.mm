@interface CDSpotlightEventIndexer
@end

@implementation CDSpotlightEventIndexer

void __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
LABEL_5:
    [(_CDSpotlightEventIndexer *)v8 finishIndexing];
    goto LABEL_6;
  }

  v9 = (a1 + 32);
  v10 = [objc_opt_class() currentVersion];
  v11 = [*v9 context];
  if (v11)
  {
    v11[2] = v10;
  }

  v12 = v5;
  v13 = v12;
  if (!v12 || ![v12 length])
  {
    goto LABEL_16;
  }

  *v30 = 0;
  v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:v30];
  v15 = *v30;
  if (v15)
  {
    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_2();
    }
  }

  if (!v14)
  {
LABEL_16:
    v14 = [_CDEventIndexerBookmark baseBookmarkWithVersion:v10];
  }

  v17 = [*v9 context];
  [(_DKPredictionTimeline *)v17 setStartDate:v14];

  v18 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = &stru_1F05B9908;
    if (v13 && [v13 length])
    {
      v19 = @"non-";
    }

    v20 = [*v9 context];
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 8);
    }

    else
    {
      v22 = 0;
    }

    *v30 = 138412546;
    *&v30[4] = v19;
    v31 = 2112;
    v32 = v22;
    _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Success fetching %@nil client state from spotlight, resulting bookmark: %@", v30, 0x16u);
  }

  v23 = [*v9 context];
  v24 = [(_CDEventIndexerContext *)v23 isBookmarkValid];

  if (v24)
  {
    [(_CDSpotlightEventIndexer *)*v9 indexDeletionsAsBatch];
    goto LABEL_6;
  }

  v25 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_3(v9, v25);
  }

  v26 = [*v9 context];
  v27 = [(_CDEventIndexerContext *)v26 isBookmarkValidInRecoverableThreshold];

  v28 = +[_CDLogging knowledgeChannel];
  v29 = v28;
  if (v27)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_5(v29);
    }

    v8 = *v9;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_4(v29);
  }

  [(_CDSpotlightEventIndexer *)*v9 resetIndex];
LABEL_6:
}

void __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_1();
    }
  }

  else if ((__49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_2(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) finishIndexing];
LABEL_6:
}

void __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_1();
    }
  }

  else if ((__49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_2(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) finishIndexing];
LABEL_6:
}

void __38___CDSpotlightEventIndexer_resetIndex__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      OUTLINED_FUNCTION_10(&dword_191750000, v6, v7, "[Spotlight Indexer] Spotlight event indexer failed to reset index: %@", &v11);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) context];
    [(_DKPredictionTimeline *)v5 setStartDate:v4];
  }

  v8 = [*(a1 + 32) context];
  v9 = [(_CDEventIndexerContext *)v8 isBookmarkValid];

  v10 = *(a1 + 32);
  if (v9)
  {
    [(_CDSpotlightEventIndexer *)v10 indexDeletionsAsBatch];
  }

  else
  {
    [(_CDSpotlightEventIndexer *)v10 finishIndexing];
  }
}

void __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_3(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 context];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_191750000, a2, v4, "[Spotlight Indexer] Bookmark is invalid: %@", v5);
}

uint64_t __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) context];
  [(_DKPredictionTimeline *)v3 setStartDate:v2];

  v4 = [*(a1 + 32) context];
  if (!v4)
  {
    return 1;
  }

  v5 = v4[3];

  if (!v5)
  {
    return 1;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) indexAdditionsAsBatch];
  return 0;
}

uint64_t __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) context];
  [(_DKPredictionTimeline *)v3 setStartDate:v2];

  if (!*(a1 + 48))
  {
    return 1;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) indexAdditionsAsBatch];
  return 0;
}

@end