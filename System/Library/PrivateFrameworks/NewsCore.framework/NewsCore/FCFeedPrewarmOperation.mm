@interface FCFeedPrewarmOperation
- (FCFeedPrewarmOperation)initWithPrewarmRequest:(id)request contentContext:(id)context;
- (id)_commitQueryResult:(id)result;
- (void)commitResultsOnceWithCompletionHandler:(id)handler;
- (void)performOperation;
@end

@implementation FCFeedPrewarmOperation

- (FCFeedPrewarmOperation)initWithPrewarmRequest:(id)request contentContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = FCFeedPrewarmOperation;
  v9 = [(FCOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prewarmRequest, request);
    objc_storeStrong(&v10->_contentContext, context);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    feedIDsByCKFeedID = v10->_feedIDsByCKFeedID;
    v10->_feedIDsByCKFeedID = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestRangeByFeedID = v10->_requestRangeByFeedID;
    v10->_requestRangeByFeedID = v13;
  }

  return v10;
}

- (void)commitResultsOnceWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(FCOperation *)self startIfNeeded];
  lazyResultPromise = [(FCFeedPrewarmOperation *)self lazyResultPromise];

  if (!lazyResultPromise && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"lazy result promise should be created as soon as the operation starts"];
    *buf = 136315906;
    v20 = "[FCFeedPrewarmOperation commitResultsOnceWithCompletionHandler:]";
    v21 = 2080;
    v22 = "FCFeedPrewarmOperation.m";
    v23 = 1024;
    v24 = 65;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E7C396C0;
  v18[4] = self;
  v6 = [MEMORY[0x1E69B68F8] firstly:v18];
  v7 = zalgo();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E7C396E8;
  v8 = handlerCopy;
  v17 = v8;
  v9 = [v6 thenOn:v7 then:v16];
  v10 = zalgo();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke_3;
  v14[3] = &unk_1E7C39710;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  v12 = [v9 errorOn:v10 error:v14];
}

id __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) lazyResultPromise];
  v2 = [v1 value];

  return v2;
}

void __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [FCFeedPrewarmResult alloc];
  v6 = [*(a1 + 32) prewarmRequest];
  v4 = [v6 feedRequests];
  v5 = [(FCFeedPrewarmResult *)v3 initWithSuccessfulRequests:MEMORY[0x1E695E0F0] failedRequests:v4 networkEvents:MEMORY[0x1E695E0F0]];
  (*(v2 + 16))(v2, v5);
}

- (void)performOperation
{
  prewarmRequest = [(FCFeedPrewarmOperation *)self prewarmRequest];
  feedRequests = [prewarmRequest feedRequests];
  v5 = [feedRequests fc_arrayByTransformingWithBlock:&__block_literal_global_16];

  array = [MEMORY[0x1E695DF70] array];
  contentContext = [(FCFeedPrewarmOperation *)self contentContext];
  internalContentContext = [contentContext internalContentContext];
  feedDatabase = [internalContentContext feedDatabase];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_2;
  v56[3] = &unk_1E7C39758;
  v56[4] = self;
  v10 = array;
  v57 = v10;
  [feedDatabase enumerateRangesMissingFromLookups:v5 visitor:v56];

  if ([v10 count])
  {
    v49 = v5;
    v11 = objc_alloc_init(FCCKBatchedOrderFeedQueryOperation);
    contentContext2 = [(FCFeedPrewarmOperation *)self contentContext];
    internalContentContext2 = [contentContext2 internalContentContext];
    contentDatabase = [internalContentContext2 contentDatabase];
    [(FCCKBatchedOrderFeedQueryOperation *)v11 setDatabase:contentDatabase];

    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v15, v10, 376);
      v11->_resultsLimit = 4000;
    }

    v16 = MEMORY[0x1E69B6E30];
    contentContext3 = [(FCFeedPrewarmOperation *)self contentContext];
    internalContentContext3 = [contentContext3 internalContentContext];
    articleRecordSource = [internalContentContext3 articleRecordSource];
    v20 = [v16 keysForFeedItemAndArticleRecordWithRecordSource:articleRecordSource];

    array2 = [MEMORY[0x1E695DF70] array];
    prewarmRequest2 = [(FCFeedPrewarmOperation *)self prewarmRequest];
    LOBYTE(internalContentContext3) = [prewarmRequest2 options];

    if ((internalContentContext3 & 2) != 0)
    {
      contentContext4 = [(FCFeedPrewarmOperation *)self contentContext];
      internalContentContext4 = [contentContext4 internalContentContext];
      articleRecordSource2 = [internalContentContext4 articleRecordSource];
      desiredKeys = [articleRecordSource2 desiredKeys];
      v27 = [v20 arrayByAddingObjectsFromArray:desiredKeys];

      v20 = v27;
    }

    prewarmRequest3 = [(FCFeedPrewarmOperation *)self prewarmRequest];
    options = [prewarmRequest3 options];

    if ((options & 4) != 0)
    {
      contentContext5 = [(FCFeedPrewarmOperation *)self contentContext];
      internalContentContext5 = [contentContext5 internalContentContext];
      tagRecordSource = [internalContentContext5 tagRecordSource];
      desiredKeys2 = [tagRecordSource desiredKeys];
      v34 = [v20 arrayByAddingObjectsFromArray:desiredKeys2];

      [array2 addObject:@"sourceChannelTagID"];
      v20 = v34;
    }

    prewarmRequest4 = [(FCFeedPrewarmOperation *)self prewarmRequest];
    options2 = [prewarmRequest4 options];

    if ((options2 & 8) != 0)
    {
      contentContext6 = [(FCFeedPrewarmOperation *)self contentContext];
      internalContentContext6 = [contentContext6 internalContentContext];
      issueRecordSource = [internalContentContext6 issueRecordSource];
      desiredKeys3 = [issueRecordSource desiredKeys];
      v42 = [v20 arrayByAddingObjectsFromArray:desiredKeys3];

      [array2 addObject:@"parentIssueID"];
      v20 = v42;
    }

    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v37, v20, 384);
      objc_setProperty_nonatomic_copy(v11, v43, array2, 408);
    }

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_5;
    newValue[3] = &unk_1E7C39780;
    newValue[4] = self;
    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v37, newValue, 432);
      queryCompletionPromise = v11->_queryCompletionPromise;
    }

    else
    {
      queryCompletionPromise = 0;
    }

    v45 = queryCompletionPromise;
    v46 = objc_alloc(MEMORY[0x1E69B68D8]);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_6;
    v51[3] = &unk_1E7C397D0;
    v52 = v45;
    selfCopy = self;
    v47 = v45;
    v48 = [v46 initWithConstructor:v51];
    [(FCFeedPrewarmOperation *)self setLazyResultPromise:v48];

    [(FCOperation *)self associateChildOperation:v11];
    [(FCOperation *)v11 start];

    v5 = v50;
  }

  else
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_3;
    v55[3] = &unk_1E7C36EA0;
    v55[4] = self;
    __42__FCFeedPrewarmOperation_performOperation__block_invoke_3(v55);
  }
}

FCFeedDatabaseLookup *__42__FCFeedPrewarmOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(FCFeedDatabaseLookup);
  v4 = [v2 feedID];
  [(FCFeedDatabaseLookup *)v3 setFeedID:v4];

  v5 = [v2 feedRange];

  [(FCFeedDatabaseLookup *)v3 setFeedRange:v5];

  return v3;
}

void __42__FCFeedPrewarmOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 firstObject];
  v8 = [v7 top];
  v9 = [v5 lastObject];

  v10 = [v9 bottom];
  v16 = [FCFeedRange feedRangeWithTop:v8 bottom:v10];

  v11 = [FCCKOrderFeedUtilities orderFeedRequestForFeedID:v6 feedRange:v16];
  v12 = [*(a1 + 32) feedIDsByCKFeedID];
  if (v11)
  {
    v13 = v11[1];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v12 setObject:v6 forKey:v14];

  v15 = [*(a1 + 32) requestRangeByFeedID];
  [v15 setObject:v16 forKey:v6];

  [*(a1 + 40) addObject:v11];
}

void __42__FCFeedPrewarmOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_17];
  [*(a1 + 32) setLazyResultPromise:v2];
}

id __42__FCFeedPrewarmOperation_performOperation__block_invoke_4()
{
  v0 = objc_alloc(MEMORY[0x1E69B68F8]);
  v1 = [FCFeedPrewarmResult alloc];
  v2 = [(FCFeedPrewarmResult *)v1 initWithSuccessfulRequests:MEMORY[0x1E695E0F0] failedRequests:MEMORY[0x1E695E0F0] networkEvents:MEMORY[0x1E695E0F0]];
  v3 = [v0 initWithValue:v2];

  return v3;
}

id __42__FCFeedPrewarmOperation_performOperation__block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69B68F8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_7;
  v8[3] = &unk_1E7C396C0;
  v9 = *(a1 + 32);
  v3 = [v2 firstly:v8];
  v4 = zalgo();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_8;
  v7[3] = &unk_1E7C397A8;
  v7[4] = *(a1 + 40);
  v5 = [v3 thenOn:v4 then:v7];

  return v5;
}

id __42__FCFeedPrewarmOperation_performOperation__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) _commitQueryResult:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_commitQueryResult:(id)result
{
  v99 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    *buf = 138543362;
    v94 = shortOperationDescription;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will commit query response to database", buf, 0xCu);
  }

  date = [MEMORY[0x1E695DF00] date];
  feedIDsByCKFeedID = [(FCFeedPrewarmOperation *)self feedIDsByCKFeedID];
  requestRangeByFeedID = [(FCFeedPrewarmOperation *)self requestRangeByFeedID];
  if (resultCopy)
  {
    v10 = resultCopy[2];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke;
  v91[3] = &unk_1E7C397F8;
  v12 = feedIDsByCKFeedID;
  v92 = v12;
  v81 = [v11 fc_dictionaryWithKeyBlock:v91 valueBlock:&__block_literal_global_27_0];

  date2 = [MEMORY[0x1E695DF00] date];
  if (resultCopy)
  {
    v14 = resultCopy[1];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3;
  v89[3] = &unk_1E7C39840;
  v89[4] = self;
  v16 = v12;
  v90 = v16;
  v82 = [v15 fc_arrayByTransformingWithBlock:v89];

  v17 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
    fc_millisecondTimeIntervalUntilNow = [date2 fc_millisecondTimeIntervalUntilNow];
    *buf = 138543618;
    v94 = shortOperationDescription2;
    v95 = 2048;
    v96 = fc_millisecondTimeIntervalUntilNow;
    _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ spent %llums creating feed items", buf, 0x16u);
  }

  v79 = date2;
  date3 = [MEMORY[0x1E695DF00] date];
  contentContext = [(FCFeedPrewarmOperation *)self contentContext];
  internalContentContext = [contentContext internalContentContext];
  feedDatabase = [internalContentContext feedDatabase];
  allValues = [v16 allValues];
  [feedDatabase saveFeedItems:v82 feedIDs:allValues extentByFeedID:v81 requestRangeByFeedID:requestRangeByFeedID];

  v26 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    shortOperationDescription3 = [(FCOperation *)self shortOperationDescription];
    fc_millisecondTimeIntervalUntilNow2 = [date3 fc_millisecondTimeIntervalUntilNow];
    v30 = [v82 count];
    *buf = 138543874;
    v94 = shortOperationDescription3;
    v95 = 2048;
    v96 = fc_millisecondTimeIntervalUntilNow2;
    v97 = 2048;
    v98 = v30;
    _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ spent %llums saving %lu feed items", buf, 0x20u);
  }

  prewarmRequest = [(FCFeedPrewarmOperation *)self prewarmRequest];
  options = [prewarmRequest options];

  if ((options & 2) != 0)
  {
    contentContext2 = [(FCFeedPrewarmOperation *)self contentContext];
    internalContentContext2 = [contentContext2 internalContentContext];
    articleRecordSource = [internalContentContext2 articleRecordSource];
    if (resultCopy)
    {
      v36 = resultCopy[1];
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = [articleRecordSource saveArticleRecords:v37];
  }

  prewarmRequest2 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  options2 = [prewarmRequest2 options];

  if ((options2 & 4) != 0)
  {
    contentContext3 = [(FCFeedPrewarmOperation *)self contentContext];
    internalContentContext3 = [contentContext3 internalContentContext];
    tagRecordSource = [internalContentContext3 tagRecordSource];
    if (resultCopy)
    {
      v44 = resultCopy[3];
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    v46 = [tagRecordSource saveTagRecords:v45];
  }

  prewarmRequest3 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  options3 = [prewarmRequest3 options];

  if ((options3 & 8) != 0)
  {
    contentContext4 = [(FCFeedPrewarmOperation *)self contentContext];
    internalContentContext4 = [contentContext4 internalContentContext];
    issueRecordSource = [internalContentContext4 issueRecordSource];
    if (resultCopy)
    {
      v52 = resultCopy[4];
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
    v54 = [issueRecordSource saveRecords:v53];
  }

  v55 = MEMORY[0x1E695DFD8];
  v78 = date3;
  if (resultCopy)
  {
    v56 = resultCopy[2];
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_31;
  v87[3] = &unk_1E7C39868;
  v58 = v16;
  v88 = v58;
  v59 = [v57 fc_arrayByTransformingWithBlock:v87];
  v60 = [v55 setWithArray:v59];

  prewarmRequest4 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  feedRequests = [prewarmRequest4 feedRequests];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_2_32;
  v85[3] = &unk_1E7C39890;
  v63 = v60;
  v86 = v63;
  v64 = [feedRequests fc_arrayOfObjectsPassingTest:v85];

  prewarmRequest5 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  feedRequests2 = [prewarmRequest5 feedRequests];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3_34;
  v83[3] = &unk_1E7C39890;
  v67 = v63;
  v84 = v67;
  v68 = [feedRequests2 fc_arrayOfObjectsPassingTest:v83];

  v69 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v70 = v69;
    shortOperationDescription4 = [(FCOperation *)self shortOperationDescription];
    fc_millisecondTimeIntervalUntilNow3 = [date fc_millisecondTimeIntervalUntilNow];
    *buf = 138543618;
    v94 = shortOperationDescription4;
    v95 = 2048;
    v96 = fc_millisecondTimeIntervalUntilNow3;
    _os_log_impl(&dword_1B63EF000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ did commit query response to database, total time = %llums", buf, 0x16u);
  }

  v73 = [FCFeedPrewarmResult alloc];
  if (resultCopy)
  {
    v74 = resultCopy[5];
  }

  else
  {
    v74 = 0;
  }

  v75 = v74;
  v76 = [(FCFeedPrewarmResult *)v73 initWithSuccessfulRequests:v64 failedRequests:v68 networkEvents:v75];

  return v76;
}

id __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v2 objectForKeyedSubscript:v4];

  return v5;
}

uint64_t __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
  }

  else
  {
    v2 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
}

id __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 contentContext];
  v7 = [v6 contentStoreFrontID];
  v8 = [*(a1 + 32) contentContext];
  v9 = [v8 internalContentContext];
  v10 = [v9 articleRecordSource];
  v11 = [v3 feedItemFromCKRecord:v5 storefrontID:v7 recordSource:v10];

  v12 = *(a1 + 40);
  v13 = [v11 feedID];
  v14 = [v12 objectForKeyedSubscript:v13];
  [v11 setFeedID:v14];

  return v11;
}

id __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 10))
    {
      v5 = 0;
      goto LABEL_6;
    }

    v6 = *(v3 + 2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = v6;
  v5 = [v7 objectForKeyedSubscript:v8];

LABEL_6:

  return v5;
}

uint64_t __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_2_32(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 feedID];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 feedID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end