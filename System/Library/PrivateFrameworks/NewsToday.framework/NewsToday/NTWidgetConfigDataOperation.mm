@interface NTWidgetConfigDataOperation
- (BOOL)validateOperation;
- (void)_finishByConvertingRecordsWithArticlesByID:(id)d articleListsByID:(id)iD tagsByID:(id)byID;
- (void)_finishByFetchingRecordsForArticleIDs:(id)ds articleListIDs:(id)iDs;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTWidgetConfigDataOperation

- (BOOL)validateOperation
{
  widgetConfiguration = [(NTWidgetConfigDataOperation *)self widgetConfiguration];

  if (!widgetConfiguration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  configuration = [(NTWidgetConfigDataOperation *)self configuration];

  if (!configuration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  context = [(NTWidgetConfigDataOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  widgetConfigDataCompletionHandler = [(NTWidgetConfigDataOperation *)self widgetConfigDataCompletionHandler];

  if (!widgetConfigDataCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  if (widgetConfiguration)
  {
    v7 = configuration == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && context != 0 && widgetConfigDataCompletionHandler != 0;
}

- (void)performOperation
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  shortOperationDescription = [a2 shortOperationDescription];
  widgetConfiguration = [a2 widgetConfiguration];
  v6 = 138543618;
  v7 = shortOperationDescription;
  v8 = 2114;
  v9 = widgetConfiguration;
  _os_log_debug_impl(&dword_25BF21000, selfCopy, OS_LOG_TYPE_DEBUG, "%{public}@ about to convert config JSON: %{public}@", &v6, 0x16u);
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  resultHeldRecordsByType = [(NTWidgetConfigDataOperation *)self resultHeldRecordsByType];
  v5 = [resultHeldRecordsByType objectForKeyedSubscript:&unk_286D9ED50];
  allRecordIDs = [v5 allRecordIDs];

  resultHeldRecordsByType2 = [(NTWidgetConfigDataOperation *)self resultHeldRecordsByType];
  v8 = [resultHeldRecordsByType2 objectForKeyedSubscript:&unk_286D9ED68];
  allRecordIDs2 = [v8 allRecordIDs];

  widgetConfigDataCompletionHandler = [(NTWidgetConfigDataOperation *)self widgetConfigDataCompletionHandler];

  if (widgetConfigDataCompletionHandler)
  {
    widgetConfigDataCompletionHandler2 = [(NTWidgetConfigDataOperation *)self widgetConfigDataCompletionHandler];
    resultHeldRecordsByType3 = [(NTWidgetConfigDataOperation *)self resultHeldRecordsByType];
    (widgetConfigDataCompletionHandler2)[2](widgetConfigDataCompletionHandler2, allRecordIDs, allRecordIDs2, resultHeldRecordsByType3, errorCopy);
  }
}

- (void)_finishByFetchingRecordsForArticleIDs:(id)ds articleListIDs:(id)iDs
{
  v6 = MEMORY[0x277D31110];
  iDsCopy = iDs;
  dsCopy = ds;
  v9 = objc_alloc_init(v6);
  context = [(NTWidgetConfigDataOperation *)self context];
  [v9 setContext:context];

  configuration = [(NTWidgetConfigDataOperation *)self configuration];
  [v9 setConfiguration:configuration];

  ignoreCacheCachePolicy = [MEMORY[0x277D30E98] ignoreCacheCachePolicy];
  [v9 setCachePolicyForArticles:ignoreCacheCachePolicy];

  ignoreCacheCachePolicy2 = [MEMORY[0x277D30E98] ignoreCacheCachePolicy];
  [v9 setCachePolicyForArticleLists:ignoreCacheCachePolicy2];

  [v9 setShouldBypassRecordSourcePersistence:1];
  edgeCacheHintForWidgetArticles = [MEMORY[0x277D30F68] edgeCacheHintForWidgetArticles];
  [v9 setEdgeCacheHint:edgeCacheHintForWidgetArticles];

  [v9 setArticleIDs:dsCopy];
  [v9 setArticleListIDs:iDsCopy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__NTWidgetConfigDataOperation__finishByFetchingRecordsForArticleIDs_articleListIDs___block_invoke;
  v15[3] = &unk_279982BA0;
  v15[4] = self;
  [v9 setHeldRecordsCompletionHandler:v15];
  [(FCOperation *)self associateChildOperation:v9];
  [v9 start];
}

void __84__NTWidgetConfigDataOperation__finishByFetchingRecordsForArticleIDs_articleListIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultHeldRecordsByType:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)_finishByConvertingRecordsWithArticlesByID:(id)d articleListsByID:(id)iD tagsByID:(id)byID
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB18];
  byIDCopy = byID;
  iDCopy = iD;
  dCopy = d;
  array = [v8 array];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke;
  v43[3] = &unk_279982BC8;
  v43[4] = self;
  v13 = array;
  v44 = v13;
  [dCopy enumerateKeysAndObjectsUsingBlock:v43];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_33;
  v41[3] = &unk_279982BC8;
  v41[4] = self;
  v14 = v13;
  v42 = v14;
  [iDCopy enumerateKeysAndObjectsUsingBlock:v41];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_34;
  v39[3] = &unk_279982BC8;
  v39[4] = self;
  v15 = v14;
  v40 = v15;
  [byIDCopy enumerateKeysAndObjectsUsingBlock:v39];

  context = [(NTWidgetConfigDataOperation *)self context];
  v17 = [context convertRecords:v15];

  v18 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    v21 = [v17 count];
    *buf = 138543618;
    v46 = shortOperationDescription;
    v47 = 2048;
    v48 = v21;
    _os_log_impl(&dword_25BF21000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ converted %lu records", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_36;
  v36[3] = &unk_279982BF0;
  v24 = dictionary;
  v37 = v24;
  v25 = dictionary2;
  v38 = v25;
  [v17 enumerateRecordsAndInterestTokensWithBlock:v36];
  v26 = MEMORY[0x277CBEAC0];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_2;
  v33 = &unk_279982C18;
  v34 = v24;
  v35 = v25;
  v27 = v25;
  v28 = v24;
  v29 = [v26 fc_dictionary:&v30];
  [(NTWidgetConfigDataOperation *)self setResultHeldRecordsByType:v29, v30, v31, v32, v33];

  [(FCOperation *)self finishedPerformingOperationWithError:0];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTCKRecordFromArticleJSONDictionary(v4);
  v6 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 shortOperationDescription];
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_25BF21000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ convert article JSON: %@ into record: %@", &v10, 0x20u);
  }

  [*(a1 + 40) addObject:v5];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTCKRecordFromArticleListJSONDictionary(v4);
  v6 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 shortOperationDescription];
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_25BF21000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ convert articleList JSON: %@ into record: %@", &v10, 0x20u);
  }

  [*(a1 + 40) addObject:v5];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTCKRecordFromTagJSONDictionary(v4);
  v6 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 shortOperationDescription];
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_25BF21000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ convert tag JSON: %@ into record: %@", &v10, 0x20u);
  }

  [*(a1 + 40) addObject:v5];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v14 = [v6 base];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "recordType")}];
  v8 = [v14 identifier];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];

    v11 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
  }

  v12 = [*(a1 + 32) objectForKeyedSubscript:v7];
  [v12 setObject:v6 forKeyedSubscript:v8];

  v13 = [*(a1 + 40) objectForKeyedSubscript:v7];
  [v13 setObject:v5 forKeyedSubscript:v8];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D310A0]);
        v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v11 = [*(a1 + 40) objectForKeyedSubscript:v8];
        v12 = [v9 initWithRecordsByID:v10 interestTokensByID:v11];

        [v3 setObject:v12 forKeyedSubscript:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)validateOperation
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Today config data operation requires a completion handler."];
  v6 = 136315906;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

@end