@interface NTTodayConfigOperation
- (BOOL)validateOperation;
- (NTTodayConfigOperation)init;
- (id)_todayConfigWithConfigJSON:(id)n articleListIDs:(id)ds articleIDs:(id)iDs error:(id *)error;
- (void)_collectRecordIDsReferencedBySectionConfig:(id)config withArticleListIDs:(id)ds articleIDs:(id)iDs;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTTodayConfigOperation

- (NTTodayConfigOperation)init
{
  v3.receiver = self;
  v3.super_class = NTTodayConfigOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  configuration = [(NTTodayConfigOperation *)self configuration];

  if (!configuration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  context = [(NTTodayConfigOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  widgetConfigID = [(NTTodayConfigOperation *)self widgetConfigID];

  if (!widgetConfigID && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  defaultConfigCompletionHandler = [(NTTodayConfigOperation *)self defaultConfigCompletionHandler];

  if (!defaultConfigCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  singleTagConfigCompletionHandler = [(NTTodayConfigOperation *)self singleTagConfigCompletionHandler];

  if (!singleTagConfigCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  if (configuration)
  {
    v8 = context == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && widgetConfigID != 0 && defaultConfigCompletionHandler != 0 && singleTagConfigCompletionHandler != 0;
}

- (void)performOperation
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    widgetConfigID = [(NTTodayConfigOperation *)self widgetConfigID];
    *buf = 138543618;
    v32 = shortOperationDescription;
    v33 = 2112;
    v34 = widgetConfigID;
    _os_log_impl(&dword_25BF21000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will request config with ID %@", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D312C0]);
  context = [(NTTodayConfigOperation *)self context];
  [v7 setContext:context];

  edgeCacheHintForWidgetConfig = [MEMORY[0x277D30F68] edgeCacheHintForWidgetConfig];
  [v7 setEdgeCacheHint:edgeCacheHintForWidgetConfig];

  widgetConfigID2 = [(NTTodayConfigOperation *)self widgetConfigID];
  v30 = widgetConfigID2;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [v7 setTopLevelRecordIDs:v11];

  [v7 setShouldReturnErrorWhenSomeRecordsMissing:1];
  [v7 setShouldBypassRecordSourcePersistence:1];
  v28[0] = *MEMORY[0x277D307F8];
  v12 = *MEMORY[0x277D30720];
  v27[0] = *MEMORY[0x277D30728];
  v27[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v13;
  v28[1] = *MEMORY[0x277D305A8];
  v26 = *MEMORY[0x277D305A0];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v29[1] = v14;
  v28[2] = *MEMORY[0x277D305C0];
  v15 = *MEMORY[0x277D305B0];
  v25[0] = *MEMORY[0x277D305D8];
  v25[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v16;
  v17 = *MEMORY[0x277D30618];
  v28[3] = *MEMORY[0x277D30660];
  v28[4] = v17;
  v29[3] = MEMORY[0x277CBEBF8];
  v29[4] = MEMORY[0x277CBEBF8];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
  [v7 setLinkKeysByRecordType:v18];

  [v7 setDynamicCachePolicyBlock:&__block_literal_global_12];
  objc_initWeak(buf, v7);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __42__NTTodayConfigOperation_performOperation__block_invoke_2;
  v22 = &unk_279983828;
  selfCopy = self;
  objc_copyWeak(&v24, buf);
  [v7 setRecordChainCompletionHandler:&v19];
  [(FCOperation *)self associateChildOperation:v7, v19, v20, v21, v22, selfCopy];
  [v7 start];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

void __42__NTTodayConfigOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__NTTodayConfigOperation_performOperation__block_invoke_3;
    v31[3] = &unk_279983648;
    v31[4] = *(a1 + 32);
    v32 = v6;
    __42__NTTodayConfigOperation_performOperation__block_invoke_3(v31);
    v8 = v32;
  }

  else
  {
    v28 = [v5 objectForKeyedSubscript:&unk_286D9EDC8];
    v9 = [v28 onlyRecord];
    v10 = [v9 configuration2];
    v11 = *(a1 + 32);
    v12 = [v9 articleListIDs2s];
    v13 = [v9 articleIDs2s];
    v30 = 0;
    v27 = v10;
    v26 = [v11 _todayConfigWithConfigJSON:v10 articleListIDs:v12 articleIDs:v13 error:&v30];
    v14 = v30;

    v25 = v14;
    [*(a1 + 32) setDefaultConfigError:v14];
    v15 = [v9 singleTagConfiguration];
    if (!v15)
    {
      v16 = FCBundle();
      v17 = [v16 URLForResource:@"SingleTagConfiguration" withExtension:@"json"];

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfURL:v17 encoding:4 error:0];
    }

    v18 = *(a1 + 32);
    v19 = [v9 articleListIDs2s];
    v20 = [v9 articleIDs2s];
    v29 = 0;
    v21 = [v18 _todayConfigWithConfigJSON:v15 articleListIDs:v19 articleIDs:v20 error:&v29];
    v22 = v29;

    [*(a1 + 32) setSingleTagConfigError:v22];
    [*(a1 + 32) setResultDefaultConfig:v26];
    [*(a1 + 32) setResultSingleTagConfig:v21];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v24 = [WeakRetained networkEvents];
    [*(a1 + 32) setNetworkEvents:v24];

    [*(a1 + 32) setResultHeldRecordsByType:v5];
    [*(a1 + 32) finishedPerformingOperationWithError:0];

    v8 = v28;
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  defaultConfigCompletionHandler = [(NTTodayConfigOperation *)self defaultConfigCompletionHandler];
  resultDefaultConfig = [(NTTodayConfigOperation *)self resultDefaultConfig];
  resultHeldRecordsByType = [(NTTodayConfigOperation *)self resultHeldRecordsByType];
  defaultConfigError = [(NTTodayConfigOperation *)self defaultConfigError];
  v9 = defaultConfigError;
  if (defaultConfigError)
  {
    v10 = defaultConfigError;
  }

  else
  {
    v10 = errorCopy;
  }

  (defaultConfigCompletionHandler)[2](defaultConfigCompletionHandler, resultDefaultConfig, resultHeldRecordsByType, v10);

  singleTagConfigCompletionHandler = [(NTTodayConfigOperation *)self singleTagConfigCompletionHandler];
  resultSingleTagConfig = [(NTTodayConfigOperation *)self resultSingleTagConfig];
  resultHeldRecordsByType2 = [(NTTodayConfigOperation *)self resultHeldRecordsByType];
  singleTagConfigError = [(NTTodayConfigOperation *)self singleTagConfigError];
  v14 = singleTagConfigError;
  if (singleTagConfigError)
  {
    v15 = singleTagConfigError;
  }

  else
  {
    v15 = errorCopy;
  }

  singleTagConfigCompletionHandler[2](singleTagConfigCompletionHandler, resultSingleTagConfig, resultHeldRecordsByType2, v15);
}

- (id)_todayConfigWithConfigJSON:(id)n articleListIDs:(id)ds articleIDs:(id)iDs error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  nCopy = n;
  dsCopy = ds;
  iDsCopy = iDs;
  v12 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    *buf = 138543618;
    v72 = shortOperationDescription;
    v73 = 2114;
    v74 = nCopy;
    _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ received config JSON %{public}@", buf, 0x16u);
  }

  v69 = 0;
  v15 = [MEMORY[0x277CBEAC0] fc_dictionaryFromJSON:nCopy error:&v69];
  v16 = v69;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    v19 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v22 = [v15 objectForKeyedSubscript:*MEMORY[0x277D30918]];
  if (v22)
  {
    v56 = v15;
    v57 = dsCopy;
    errorCopy = error;
    v55 = nCopy;
    v23 = objc_opt_new();
    v61 = objc_opt_new();
    v60 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v53 = v22;
    obj = v22;
    v24 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v66;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v66 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = [MEMORY[0x277D35568] sectionConfigWithJSONDictionary:*(*(&v65 + 1) + 8 * i)];
          if (v28)
          {
            [(NTTodayConfigOperation *)self _collectRecordIDsReferencedBySectionConfig:v28 withArticleListIDs:v61 articleIDs:v60];
            if ([v28 queueMembershipsCount])
            {
              v29 = 0;
              do
              {
                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v28, "queueMembershipAtIndex:", v29)}];
                v31 = [v23 objectForKeyedSubscript:v30];
                if (!v31)
                {
                  v31 = objc_opt_new();
                  [v23 setObject:v31 forKeyedSubscript:v30];
                }

                [v31 addObject:v28];

                ++v29;
              }

              while (v29 < [v28 queueMembershipsCount]);
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v25);
    }

    v32 = [MEMORY[0x277CBEB98] setWithArray:v57];
    v33 = [MEMORY[0x277CBEB98] setWithArray:iDsCopy];
    obja = v32;
    if (([v61 isSubsetOfSet:v32] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTTodayConfigOperation _todayConfigWithConfigJSON:articleListIDs:articleIDs:error:];
    }

    v52 = v33;
    if (([v60 isSubsetOfSet:v33] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTTodayConfigOperation _todayConfigWithConfigJSON:articleListIDs:articleIDs:error:];
    }

    allKeys = [v23 allKeys];
    v35 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __85__NTTodayConfigOperation__todayConfigWithConfigJSON_articleListIDs_articleIDs_error___block_invoke;
    v63[3] = &unk_2799837E0;
    v50 = v23;
    v51 = v35;
    v64 = v50;
    v36 = [v35 fc_arrayByTransformingWithBlock:v63];
    v37 = [v56 objectForKeyedSubscript:*MEMORY[0x277D307C0]];
    v38 = [v56 objectForKeyedSubscript:*MEMORY[0x277D30760]];
    v39 = [v56 objectForKeyedSubscript:*MEMORY[0x277D30758]];
    v40 = [v56 objectForKeyedSubscript:*MEMORY[0x277D30750]];
    v41 = *MEMORY[0x277D306A8];
    v42 = [v56 objectForKeyedSubscript:*MEMORY[0x277D306A8]];

    if (v42)
    {
      v43 = MEMORY[0x277D35530];
      v44 = [v56 objectForKeyedSubscript:v41];
      v45 = [v43 bannerConfigWithJSONDictionary:v44];
    }

    else
    {
      v45 = 0;
    }

    nCopy = v55;
    configuration = [(NTTodayConfigOperation *)self configuration];
    v47 = v37;
    v48 = v37;
    v49 = v36;
    v19 = [configuration todayConfigWithIdentifier:v47 queueConfigs:v36 backgroundColorLight:v38 backgroundColorDark:v39 audioIndicatorColor:v40 widgetBannerConfig:v45];

    v18 = 0;
    error = errorCopy;
    v15 = v56;
    dsCopy = v57;
    v22 = v53;
    v17 = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D309C8] code:13 userInfo:0];
    v19 = 0;
  }

  if (error)
  {
LABEL_5:
    v20 = v18;
    *error = v18;
  }

LABEL_6:

  return v19;
}

id __85__NTTodayConfigOperation__todayConfigWithConfigJSON_articleListIDs_articleIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setWidgetVisibleSectionsLimit:1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:{v3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addTodaySectionConfigs:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_collectRecordIDsReferencedBySectionConfig:(id)config withArticleListIDs:(id)ds articleIDs:(id)iDs
{
  v58 = *MEMORY[0x277D85DE8];
  configCopy = config;
  dsCopy = ds;
  iDsCopy = iDs;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:];
    if (iDsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:];
  }

LABEL_6:
  sectionType = [configCopy sectionType];
  if (sectionType > 3)
  {
    if (sectionType == 4)
    {
      personalizedTodaySectionConfig = [configCopy personalizedTodaySectionConfig];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      mandatoryArticles = [personalizedTodaySectionConfig mandatoryArticles];
      v28 = [mandatoryArticles countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v47;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(mandatoryArticles);
            }

            articleID = [*(*(&v46 + 1) + 8 * i) articleID];
            [iDsCopy addObject:articleID];
          }

          v29 = [mandatoryArticles countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v29);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      personalizedArticles = [personalizedTodaySectionConfig personalizedArticles];
      v33 = [personalizedArticles countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v43;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(personalizedArticles);
            }

            articleID2 = [*(*(&v42 + 1) + 8 * j) articleID];
            [iDsCopy addObject:articleID2];
          }

          v34 = [personalizedArticles countByEnumeratingWithState:&v42 objects:v55 count:16];
        }

        while (v34);
      }
    }

    else
    {
      if (sectionType != 5)
      {
        goto LABEL_46;
      }

      personalizedTodaySectionConfig = [configCopy itemsTodaySectionConfig];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      personalizedArticles = [personalizedTodaySectionConfig items];
      v19 = [personalizedArticles countByEnumeratingWithState:&v38 objects:v54 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(personalizedArticles);
            }

            v23 = *(*(&v38 + 1) + 8 * k);
            if (![v23 itemType])
            {
              article = [v23 article];
              articleID3 = [article articleID];
              [iDsCopy addObject:articleID3];
            }
          }

          v20 = [personalizedArticles countByEnumeratingWithState:&v38 objects:v54 count:16];
        }

        while (v20);
      }
    }

LABEL_45:
    goto LABEL_46;
  }

  if (!sectionType)
  {
    articleListTodaySectionConfig = [configCopy articleListTodaySectionConfig];
    personalizedTodaySectionConfig = [articleListTodaySectionConfig articleListID];

    [dsCopy addObject:personalizedTodaySectionConfig];
    goto LABEL_45;
  }

  if (sectionType == 3)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    articleIDsTodaySectionConfig = [configCopy articleIDsTodaySectionConfig];
    personalizedTodaySectionConfig = [articleIDsTodaySectionConfig articles];

    v13 = [personalizedTodaySectionConfig countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      do
      {
        for (m = 0; m != v14; ++m)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(personalizedTodaySectionConfig);
          }

          articleID4 = [*(*(&v50 + 1) + 8 * m) articleID];
          [iDsCopy addObject:articleID4];
        }

        v14 = [personalizedTodaySectionConfig countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v14);
    }

    goto LABEL_45;
  }

LABEL_46:
}

- (void)validateOperation
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Today config operation requires a single tag config handler."];
  v6 = 136315906;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

- (void)_todayConfigWithConfigJSON:articleListIDs:articleIDs:error:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleListRecords must be in sync!"];
  v6 = 136315906;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

- (void)_todayConfigWithConfigJSON:articleListIDs:articleIDs:error:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleRecords must be in sync!"];
  v6 = 136315906;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

- (void)_collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleListIDs"];
  *buf = 136315906;
  v2 = "[NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:]";
  v3 = 2080;
  v4 = "NTTodayConfigOperation.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

- (void)_collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleIDs"];
  *buf = 136315906;
  v2 = "[NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:]";
  v3 = 2080;
  v4 = "NTTodayConfigOperation.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

@end