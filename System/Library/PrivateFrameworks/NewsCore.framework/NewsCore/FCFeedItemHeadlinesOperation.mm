@interface FCFeedItemHeadlinesOperation
- (BOOL)validateOperation;
- (FCFeedItemHeadlinesOperation)init;
- (FCMapTable)feedItemScoreProfiles;
- (void)_fetchUnadornedHeadlinesWithCompletionHandler:(id)handler;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)setFeedItemScoreProfiles:(id)profiles;
@end

@implementation FCFeedItemHeadlinesOperation

- (FCFeedItemHeadlinesOperation)init
{
  v7.receiver = self;
  v7.super_class = FCFeedItemHeadlinesOperation;
  v2 = [(FCOperation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_feedPersonalizationConfigurationSet = 0;
    v4 = objc_alloc_init(FCFeedItemHeadlinesOperationProperties);
    properties = v3->_properties;
    v3->_properties = v4;
  }

  return v3;
}

- (FCMapTable)feedItemScoreProfiles
{
  properties = [(FCFeedItemHeadlinesOperation *)self properties];
  feedItemScoreProfiles = [properties feedItemScoreProfiles];

  return feedItemScoreProfiles;
}

- (void)setFeedItemScoreProfiles:(id)profiles
{
  profilesCopy = profiles;
  properties = [(FCFeedItemHeadlinesOperation *)self properties];
  [properties setFeedItemScoreProfiles:profilesCopy];
}

- (BOOL)validateOperation
{
  v19 = *MEMORY[0x1E69E9840];
  configuration = [(FCFeedItemHeadlinesOperation *)self configuration];

  if (!configuration && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed item headlines operation must have a configuration"];
    v11 = 136315906;
    v12 = "[FCFeedItemHeadlinesOperation validateOperation]";
    v13 = 2080;
    v14 = "FCFeedItemHeadlinesOperation.m";
    v15 = 1024;
    v16 = 72;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  context = [(FCFeedItemHeadlinesOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed item headlines operation must have a context"];
    v11 = 136315906;
    v12 = "[FCFeedItemHeadlinesOperation validateOperation]";
    v13 = 2080;
    v14 = "FCFeedItemHeadlinesOperation.m";
    v15 = 1024;
    v16 = 73;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  configuration2 = [(FCFeedItemHeadlinesOperation *)self configuration];
  if (configuration2)
  {
    context2 = [(FCFeedItemHeadlinesOperation *)self context];
    v7 = context2 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performOperation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__FCFeedItemHeadlinesOperation_performOperation__block_invoke;
  v2[3] = &unk_1E7C37750;
  v2[4] = self;
  [(FCFeedItemHeadlinesOperation *)self _fetchUnadornedHeadlinesWithCompletionHandler:v2];
}

void __48__FCFeedItemHeadlinesOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v45 = [a2 fc_dictionaryWithKeySelector:sel_articleID];
    v6 = [*(a1 + 32) properties];
    v7 = [v6 feedItemScoreProfiles];

    v8 = a1;
    v44 = v7;
    if (!v7)
    {
      v9 = NewsCoreUserDefaults();
      v10 = [v9 BOOLForKey:@"personalization_disabled"];

      if (v10)
      {
        v44 = 0;
      }

      else
      {
        v11 = [*(v8 + 32) personalizer];
        v12 = [*(v8 + 32) feedItems];
        v13 = [v11 sortItems:v12 options:1 configurationSet:{objc_msgSend(*(v8 + 32), "feedPersonalizationConfigurationSet")}];

        v44 = [v13 scoreProfiles];
      }
    }

    v43 = [MEMORY[0x1E695DF70] array];
    v42 = [FCMapTable mapTableWithKeyOptions:512 valueOptions:0];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [*(v8 + 32) feedItems];
    v14 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v51;
      do
      {
        v17 = 0;
        do
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v50 + 1) + 8 * v17);
          v19 = objc_opt_class();
          v20 = [v18 articleID];
          v21 = [v45 objectForKeyedSubscript:v20];
          v22 = FCCheckedDynamicCast(v19, v21);

          if (v22)
          {
            v23 = v8;
            v24 = [v18 feedID];
            [v22 setSurfacedByBinID:v24];

            [v22 setFeedOrder:{objc_msgSend(v18, "order")}];
            [v18 globalUserFeedback];
            [v22 setGlobalUserFeedback:?];
            if ([v18 isEvergreen])
            {
              [v22 markAsEvergreen];
            }

            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v25 = [v18 surfacedByArticleListIDs];
            v26 = [v25 countByEnumeratingWithState:&v46 objects:v62 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v47;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v47 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  [v22 addSurfacedByArticleListID:*(*(&v46 + 1) + 8 * i)];
                }

                v27 = [v25 countByEnumeratingWithState:&v46 objects:v62 count:16];
              }

              while (v27);
            }

            v8 = v23;
            v30 = [*(v23 + 32) feedContextByFeedID];
            v31 = [v18 feedID];
            v32 = [v30 fc_safeObjectForKey:v31];

            if (v32)
            {
              v33 = [v32 sectionID];
              [v22 setSurfacedBySectionID:v33];

              v34 = [v32 channelID];
              [v22 setSurfacedByChannelID:v34];

              v35 = [v32 topicID];
              [v22 setSurfacedByTopicID:v35];

              [v22 setTopStoryType:{objc_msgSend(v32, "isTopStories")}];
            }

            v36 = [v44 objectForKey:v18];
            if (v36)
            {
              [v22 setScoreProfile:v36];
              [v36 sortingScore];
              [v22 setTileProminenceScore:?];
            }

            else
            {
              v37 = [*(v23 + 32) personalizer];

              if (v37 && !NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"personalizer should have provided a score"];
                *buf = 136315906;
                v55 = "[FCFeedItemHeadlinesOperation performOperation]_block_invoke";
                v56 = 2080;
                v57 = "FCFeedItemHeadlinesOperation.m";
                v58 = 1024;
                v59 = 133;
                v60 = 2114;
                v61 = v38;
                _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }
            }

            [v43 addObject:v22];
            [v42 setObject:v22 forKey:v18];
          }

          ++v17;
        }

        while (v17 != v15);
        v39 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
        v15 = v39;
      }

      while (v39);
    }

    [*(v8 + 32) setResultHeadlines:v43];
    v40 = [*(v8 + 32) properties];
    [v40 setResultHeadlinesByFeedItem:v42];

    a1 = v8;
    v5 = 0;
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v5];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  headlinesCompletionHandler = [(FCFeedItemHeadlinesOperation *)self headlinesCompletionHandler];

  if (headlinesCompletionHandler)
  {
    headlinesCompletionHandler2 = [(FCFeedItemHeadlinesOperation *)self headlinesCompletionHandler];
    resultHeadlines = [(FCFeedItemHeadlinesOperation *)self resultHeadlines];
    (headlinesCompletionHandler2)[2](headlinesCompletionHandler2, resultHeadlines, errorCopy);
  }

  headlinesMapCompletionHandler = [(FCFeedItemHeadlinesOperation *)self headlinesMapCompletionHandler];

  if (headlinesMapCompletionHandler)
  {
    headlinesMapCompletionHandler2 = [(FCFeedItemHeadlinesOperation *)self headlinesMapCompletionHandler];
    properties = [(FCFeedItemHeadlinesOperation *)self properties];
    resultHeadlinesByFeedItem = [properties resultHeadlinesByFeedItem];
    (headlinesMapCompletionHandler2)[2](headlinesMapCompletionHandler2, resultHeadlinesByFeedItem, errorCopy);
  }
}

- (void)_fetchUnadornedHeadlinesWithCompletionHandler:(id)handler
{
  v105 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(FCFeedItemHeadlinesOperation *)self context];
  internalContentContext = [context internalContentContext];
  articleRecordSource = [internalContentContext articleRecordSource];

  context2 = [(FCFeedItemHeadlinesOperation *)self context];
  internalContentContext2 = [context2 internalContentContext];
  issueRecordSource = [internalContentContext2 issueRecordSource];

  context3 = [(FCFeedItemHeadlinesOperation *)self context];
  internalContentContext3 = [context3 internalContentContext];
  tagRecordSource = [internalContentContext3 tagRecordSource];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [MEMORY[0x1E695DFA8] set];
  v77 = [MEMORY[0x1E695DFA8] set];
  [MEMORY[0x1E695DFA8] set];
  v76 = v75 = self;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  feedItems = [(FCFeedItemHeadlinesOperation *)self feedItems];
  v14 = [feedItems countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v101;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v101 != v16)
        {
          objc_enumerationMutation(feedItems);
        }

        v18 = *(*(&v100 + 1) + 8 * i);
        articleID = [v18 articleID];
        [v12 addObject:articleID];
        [dictionary setObject:v18 forKey:articleID];
        sourceChannelID = [v18 sourceChannelID];

        if (sourceChannelID)
        {
          sourceChannelID2 = [v18 sourceChannelID];
          [v77 addObject:sourceChannelID2];
        }

        parentIssueID = [v18 parentIssueID];

        if (parentIssueID)
        {
          parentIssueID2 = [v18 parentIssueID];
          [v76 addObject:parentIssueID2];
        }

        feedID = [v18 feedID];

        if (feedID)
        {
          array = [dictionary2 objectForKeyedSubscript:articleID];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary2 setObject:array forKeyedSubscript:articleID];
          }

          feedID2 = [v18 feedID];
          [array addObject:feedID2];
        }
      }

      v15 = [feedItems countByEnumeratingWithState:&v100 objects:v104 count:16];
    }

    while (v15);
  }

  allObjects = [v12 allObjects];
  v28 = [articleRecordSource cachedRecordsWithIDs:allObjects];

  allObjects2 = [v77 allObjects];
  v30 = [tagRecordSource cachedRecordsWithIDs:allObjects2];

  allObjects3 = [v76 allObjects];
  v32 = [issueRecordSource cachedRecordsWithIDs:allObjects3];

  v33 = [MEMORY[0x1E695DFA8] set];
  [v33 unionSet:v12];
  [v33 unionSet:v77];
  [v33 unionSet:v76];
  v66 = v28;
  allRecordIDs = [v28 allRecordIDs];
  [v33 fc_removeObjectsFromArray:allRecordIDs];

  v63 = v30;
  allRecordIDs2 = [v30 allRecordIDs];
  [v33 fc_removeObjectsFromArray:allRecordIDs2];

  v61 = v32;
  allRecordIDs3 = [v32 allRecordIDs];
  v74 = v33;
  [v33 fc_removeObjectsFromArray:allRecordIDs3];

  if (![(FCFeedItemHeadlinesOperation *)v75 cachedOnly])
  {
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke;
    v96[3] = &unk_1E7C44EC0;
    v96[4] = v75;
    v97 = dictionary2;
    v98 = dictionary;
    v99 = v33;
    [v28 enumerateRecordsAndInterestTokensWithBlock:v96];
  }

  v37 = MEMORY[0x1E695DEC8];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_3;
  v92[3] = &unk_1E7C3B1F8;
  v38 = articleRecordSource;
  v93 = v38;
  v68 = tagRecordSource;
  v94 = v68;
  v70 = issueRecordSource;
  v95 = v70;
  v39 = [v37 fc_array:v92];
  v40 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
  context4 = [(FCFeedItemHeadlinesOperation *)v75 context];
  internalContentContext4 = [context4 internalContentContext];
  contentDatabase = [internalContentContext4 contentDatabase];
  [(FCCKContentBatchedFetchRecordsOperation *)v40 setDatabase:contentDatabase];

  if (v40)
  {
    objc_setProperty_nonatomic_copy(v40, v44, v39, 384);
  }

  if (![(FCFeedItemHeadlinesOperation *)v75 cachedOnly])
  {
    allObjects4 = [v74 allObjects];
    v47 = [allObjects4 fc_arrayByTransformingWithBlock:&__block_literal_global_141];
    if (v40)
    {
      objc_setProperty_nonatomic_copy(v40, v46, v47, 376);
    }
  }

  v73 = v39;
  v48 = objc_opt_new();
  v49 = objc_opt_new();
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_5;
  newValue[3] = &unk_1E7C38B88;
  v50 = v48;
  v90 = v50;
  v52 = v49;
  v91 = v52;
  if (v40)
  {
    objc_setProperty_nonatomic_copy(v40, v51, newValue, 416);
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_6;
  v78[3] = &unk_1E7C44EE8;
  v79 = v50;
  v80 = v38;
  v59 = v50;
  v81 = v68;
  v82 = v70;
  v83 = v75;
  v84 = v66;
  v85 = v63;
  v86 = v61;
  v87 = v52;
  v88 = handlerCopy;
  v65 = handlerCopy;
  v60 = v52;
  v62 = v61;
  v53 = v63;
  v54 = v66;
  v71 = v70;
  v55 = v68;
  v56 = v38;
  v58 = v59;
  if (v40)
  {
    objc_setProperty_nonatomic_copy(v40, v57, v78, 424);
  }

  [(FCOperation *)v75 associateChildOperation:v40];
  [(FCOperation *)v40 start];
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2;
  v11 = &unk_1E7C44E98;
  v12 = *(a1 + 32);
  v4 = v3;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (__78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2(&v8))
  {
    v5 = *(a1 + 56);
    v6 = [v4 base];
    v7 = [v6 identifier];
    [v5 addObject:v7];
  }
}

BOOL __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) rapidUpdateRefreshTest];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) behaviorFlags];

    if (v4)
    {
      v5 = MEMORY[0x1E695DF00];
      v6 = [*(a1 + 40) base];
      v7 = [v6 fetchDate];
      v8 = [v5 dateWithPBDate:v7];
      [v8 fc_timeIntervalUntilNow];
      v10 = v9;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = *(a1 + 48);
      v12 = [*(a1 + 40) base];
      v13 = [v12 identifier];
      v14 = [v11 objectForKeyedSubscript:v13];

      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v27 + 1) + 8 * v18);
            v20 = [*(a1 + 32) rapidUpdateRefreshTest];
            LOBYTE(v19) = v20[2](v20, v19, v10);

            if (v19)
            {
              v25 = 1;
              goto LABEL_13;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v21 = *(a1 + 56);
  v22 = [*(a1 + 40) base];
  v23 = [v22 identifier];
  v14 = [v21 objectForKeyedSubscript:v23];

  v24 = [v14 backendArticleVersion];
  v25 = v24 > [*(a1 + 40) backendArticleVersion];
LABEL_13:

  return v25;
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 desiredKeys];
  [v4 addObjectsFromArray:v5];

  v6 = [*(a1 + 40) desiredKeys];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 48) desiredKeys];
  [v4 addObjectsFromArray:v7];
}

id __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = 32;
    v11 = v7;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = 40;
    v11 = v8;
  }

  [*(a1 + v10) setObject:v11 forKey:v12];
LABEL_6:
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v56 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DF70] array];
  v54 = [MEMORY[0x1E695DF70] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v51 = a1;
  v3 = [*(a1 + 32) allValues];
  v4 = [v3 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v60;
    do
    {
      v7 = 0;
      do
      {
        if (*v60 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v59 + 1) + 8 * v7);
        v9 = [v8 recordType];
        v10 = [v9 isEqualToString:@"Article"];

        if (v10)
        {
          v11 = v56;
LABEL_12:
          [v11 addObject:v8];
          goto LABEL_13;
        }

        v12 = [v8 recordType];
        v13 = [v12 isEqualToString:@"Tag"];

        if (v13)
        {
          v11 = v55;
          goto LABEL_12;
        }

        v14 = [v8 recordType];
        v15 = [v14 isEqualToString:@"Issue"];

        if (v15)
        {
          v11 = v54;
          goto LABEL_12;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v16 = objc_alloc(MEMORY[0x1E696AEC0]);
          v17 = [v8 recordType];
          v18 = [v16 initWithFormat:@"unexpected record type %@", v17];
          *buf = 136315906;
          v64 = "[FCFeedItemHeadlinesOperation _fetchUnadornedHeadlinesWithCompletionHandler:]_block_invoke_6";
          v65 = 2080;
          v66 = "FCFeedItemHeadlinesOperation.m";
          v67 = 1024;
          v68 = 311;
          v69 = 2114;
          v70 = v18;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_13:
        ++v7;
      }

      while (v5 != v7);
      v19 = [v3 countByEnumeratingWithState:&v59 objects:v71 count:16];
      v5 = v19;
    }

    while (v19);
  }

  v20 = [*(v51 + 40) saveArticleRecords:v56];
  v21 = [*(v51 + 48) saveTagRecords:v55];
  v22 = [*(v51 + 56) saveRecords:v54];
  v23 = [*(v51 + 64) configuration];
  v53 = v20;
  v24 = [FCHeldRecords heldRecordsByMerging:v20 with:*(v51 + 72)];
  v25 = v21;
  v26 = [FCHeldRecords heldRecordsByMerging:v21 with:*(v51 + 80)];
  v50 = v22;
  v27 = [FCHeldRecords heldRecordsByMerging:v22 with:*(v51 + 88)];
  v28 = [*(v51 + 64) feedItems];
  v29 = [v28 fc_setByTransformingWithBlock:&__block_literal_global_37_0];

  v30 = [*(v51 + 64) context];
  v31 = [v30 tagController];
  v47 = v26;
  v32 = [v31 channelsForTagRecords:v26];

  v33 = [*(v51 + 64) context];
  v34 = [v33 assetManager];
  v48 = v24;
  v49 = v23;
  v35 = FCHeadlinesByArticleIDFromHeldRecords(v23, v34, v29, v24, v32, v27, [*(v51 + 64) shouldFilterHeadlinesWithoutSourceChannels], 1);

  v36 = [*(v51 + 64) feedItems];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2_38;
  v57[3] = &unk_1E7C3C7A0;
  v37 = v35;
  v58 = v37;
  v38 = [v36 fc_arrayByTransformingWithBlock:v57];

  v39 = [v38 count];
  v40 = [*(v51 + 64) feedItems];
  v41 = [v40 count];

  if (v39 >= v41)
  {
    v44 = 0;
    v42 = v52;
    v43 = v53;
  }

  else
  {
    v42 = v52;
    if (v52)
    {
      v43 = v53;
      if ([v52 fc_isCKUnknownItemError])
      {
        v44 = 0;
      }

      else
      {
        v44 = v52;
      }

      if (![v38 count])
      {
        v45 = v52;
LABEL_29:
        v46 = v45;

        v44 = v46;
      }
    }

    else
    {
      v43 = v53;
      if (![v38 count])
      {
        v44 = [*(v51 + 96) allValues];
        v45 = [v44 firstObject];
        goto LABEL_29;
      }

      v44 = 0;
    }
  }

  (*(*(v51 + 104) + 16))();
}

id __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2_38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 articleID];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

@end