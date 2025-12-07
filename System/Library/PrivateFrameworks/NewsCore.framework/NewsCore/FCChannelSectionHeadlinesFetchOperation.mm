@interface FCChannelSectionHeadlinesFetchOperation
- (BOOL)validateOperation;
- (FCChannelSectionHeadlinesFetchOperation)init;
- (FCChannelSectionHeadlinesFetchOperation)initWithCloudContext:(id)context channelID:(id)d maxHeadlinesCount:(unint64_t)count maxHeadlinesPerFeed:(unint64_t)feed fetchWindow:(id)window sectionsCacheTimeToLive:(double)live edgeCacheHint:(id)hint;
- (id)_channelAndSectionTagsPromiseWithChannelID:(id)d;
- (id)_channelPromiseWithTagsByID:(id)d parentChannelID:(id)iD;
- (id)_configurationPromise;
- (id)_createFeedRequestWithFeedID:(id)d feedRange:(id)range;
- (id)_feedItemsPromiseWithChannel:(id)channel sectionsByID:(id)d configuration:(id)configuration;
- (id)_feedItemsTransformationWithConfiguration:(id)configuration;
- (id)_headlinesAssembledBySectionFromFeedItemMap:(id)map sectionIDsByFeedID:(id)d sectionsByID:(id)iD;
- (id)_headlinesPromiseWithFeedItems:(id)items sectionsByID:(id)d configuration:(id)configuration;
- (id)_sectionsPromiseWithTagsByID:(id)d sectionIDs:(id)ds;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCChannelSectionHeadlinesFetchOperation

- (FCChannelSectionHeadlinesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCChannelSectionHeadlinesFetchOperation init]";
    v10 = 2080;
    v11 = "FCChannelSectionHeadlinesFetchOperation.m";
    v12 = 1024;
    v13 = 139;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCChannelSectionHeadlinesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCChannelSectionHeadlinesFetchOperation)initWithCloudContext:(id)context channelID:(id)d maxHeadlinesCount:(unint64_t)count maxHeadlinesPerFeed:(unint64_t)feed fetchWindow:(id)window sectionsCacheTimeToLive:(double)live edgeCacheHint:(id)hint
{
  contextCopy = context;
  dCopy = d;
  windowCopy = window;
  hintCopy = hint;
  v26.receiver = self;
  v26.super_class = FCChannelSectionHeadlinesFetchOperation;
  v21 = [(FCOperation *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_cloudContext, context);
    v23 = [dCopy copy];
    channelID = v22->_channelID;
    v22->_channelID = v23;

    v22->_maxHeadlinesCount = count;
    v22->_maxHeadlinesPerFeed = feed;
    objc_storeStrong(&v22->_fetchWindow, window);
    v22->_sectionsCacheTimeToLive = live;
    objc_storeStrong(&v22->_edgeCacheHint, hint);
  }

  return v22;
}

- (BOOL)validateOperation
{
  v20 = *MEMORY[0x1E69E9840];
  cloudContext = [(FCChannelSectionHeadlinesFetchOperation *)self cloudContext];

  if (!cloudContext && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Channel section headlines fetch operation must have a content context"];
    v12 = 136315906;
    v13 = "[FCChannelSectionHeadlinesFetchOperation validateOperation]";
    v14 = 2080;
    v15 = "FCChannelSectionHeadlinesFetchOperation.m";
    v16 = 1024;
    v17 = 170;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  channelID = [(FCChannelSectionHeadlinesFetchOperation *)self channelID];

  if (!channelID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Channel section headlines fetch operation must have a channel ID"];
    v12 = 136315906;
    v13 = "[FCChannelSectionHeadlinesFetchOperation validateOperation]";
    v14 = 2080;
    v15 = "FCChannelSectionHeadlinesFetchOperation.m";
    v16 = 1024;
    v17 = 174;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  fetchCompletionHandler = [(FCChannelSectionHeadlinesFetchOperation *)self fetchCompletionHandler];

  if (!fetchCompletionHandler && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Channel section headlines fetch operation must have a fetch completion handler"];
    v12 = 136315906;
    v13 = "[FCChannelSectionHeadlinesFetchOperation validateOperation]";
    v14 = 2080;
    v15 = "FCChannelSectionHeadlinesFetchOperation.m";
    v16 = 1024;
    v17 = 178;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  if (cloudContext)
  {
    v6 = channelID == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && fetchCompletionHandler != 0;
}

- (void)performOperation
{
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__79;
  v30[4] = __Block_byref_object_dispose__79;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__79;
  v28[4] = __Block_byref_object_dispose__79;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__79;
  v26[4] = __Block_byref_object_dispose__79;
  v27 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke;
  v25[3] = &unk_1E7C396C0;
  v25[4] = self;
  v17 = [MEMORY[0x1E69B68F8] firstly:v25];
  v16 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_2;
  v24[3] = &unk_1E7C45D18;
  v24[4] = self;
  v24[5] = v30;
  v15 = [v17 thenOn:v16 then:v24];
  v14 = zalgo();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_3;
  v23[3] = &unk_1E7C45D40;
  v23[4] = self;
  v23[5] = v28;
  v13 = [v15 thenOn:v14 then:v23];
  v3 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_4;
  v22[3] = &unk_1E7C45D68;
  v22[4] = self;
  v22[5] = v28;
  v4 = [v13 thenOn:v3 then:v22];
  v5 = zalgo();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_5;
  v21[3] = &unk_1E7C45D90;
  v21[4] = self;
  v21[5] = v26;
  v21[6] = v30;
  v6 = [v4 thenOn:v5 then:v21];
  v7 = zalgo();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_6;
  v20[3] = &unk_1E7C45DB8;
  v20[4] = self;
  v20[5] = v26;
  v20[6] = v30;
  v8 = [v6 thenOn:v7 then:v20];
  v9 = zalgo();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_7;
  v19[3] = &unk_1E7C45DE0;
  v19[4] = self;
  v10 = [v8 thenOn:v9 then:v19];
  v11 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_8;
  v18[3] = &unk_1E7C36E50;
  v18[4] = self;
  v12 = [v10 errorOn:v11 error:v18];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v5 channelID];
  v7 = [v5 _channelAndSectionTagsPromiseWithChannelID:v6];

  return v7;
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v5 channelID];
  v8 = [v5 _channelPromiseWithTagsByID:v6 parentChannelID:v7];

  return v8;
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 424), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v5[53] sectionIDs];
  v8 = [v5 _sectionsPromiseWithTagsByID:v6 sectionIDs:v7];

  return v8;
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) _feedItemsPromiseWithChannel:*(*(a1 + 32) + 424) sectionsByID:*(*(*(a1 + 40) + 8) + 40) configuration:*(*(*(a1 + 48) + 8) + 40)];

  return v5;
}

uint64_t __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_7(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSectionHeadlinesGroups:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  v4 = [FCChannelSectionHeadlinesFetchResult alloc];
  channel = [(FCChannelSectionHeadlinesFetchOperation *)self channel];
  sectionHeadlinesGroups = [(FCChannelSectionHeadlinesFetchOperation *)self sectionHeadlinesGroups];
  v7 = [(FCChannelSectionHeadlinesFetchResult *)v4 initWithChannel:channel sectionHeadlinesGroups:sectionHeadlinesGroups];

  fetchCompletionHandler = [(FCChannelSectionHeadlinesFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCChannelSectionHeadlinesFetchOperation *)self fetchCompletionHandler];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, v7, errorCopy);
  }
}

- (id)_configurationPromise
{
  cloudContext = [(FCChannelSectionHeadlinesFetchOperation *)self cloudContext];
  configurationManager = [cloudContext configurationManager];
  v4 = FCCoreConfigurationPromise(configurationManager);

  return v4;
}

- (id)_channelAndSectionTagsPromiseWithChannelID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v13 = "[FCChannelSectionHeadlinesFetchOperation _channelAndSectionTagsPromiseWithChannelID:]";
    v14 = 2080;
    v15 = "FCChannelSectionHeadlinesFetchOperation.m";
    v16 = 1024;
    v17 = 229;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke;
  v10[3] = &unk_1E7C3B310;
  v10[4] = self;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [v5 initWithResolver:v10];

  return v7;
}

void __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cloudContext];
  v8 = [v7 tagController];
  v19[0] = *(a1 + 40);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [*(a1 + 32) sectionsCacheTimeToLive];
  v10 = [v8 fetchOperationForTagsIncludingChildrenWithIDs:v9 softMaxAge:?];

  [v10 setCanSendFetchCompletionSynchronously:1];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke_2;
  v16 = &unk_1E7C404C8;
  v17 = v6;
  v18 = v5;
  v11 = v5;
  v12 = v6;
  [v10 setFetchCompletionBlock:&v13];
  [*(a1 + 32) associateChildOperation:{v10, v13, v14, v15, v16}];
  [v10 start];
}

void __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if (v4)
  {
    v7 = *(a1 + 32);
    v6 = v4;
    v7[2](v7, v6);
  }

  else
  {
    v5 = [v3 fetchedObject];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_channelPromiseWithTagsByID:(id)d parentChannelID:(id)iD
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagsByID"];
    *buf = 136315906;
    v20 = "[FCChannelSectionHeadlinesFetchOperation _channelPromiseWithTagsByID:parentChannelID:]";
    v21 = 2080;
    v22 = "FCChannelSectionHeadlinesFetchOperation.m";
    v23 = 1024;
    v24 = 256;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "parentChannelID"];
    *buf = 136315906;
    v20 = "[FCChannelSectionHeadlinesFetchOperation _channelPromiseWithTagsByID:parentChannelID:]";
    v21 = 2080;
    v22 = "FCChannelSectionHeadlinesFetchOperation.m";
    v23 = 1024;
    v24 = 257;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = objc_alloc(MEMORY[0x1E69B68F8]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke;
  v15[3] = &unk_1E7C3B768;
  v16 = dCopy;
  selfCopy = self;
  v18 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  v11 = [v8 initWithResolver:v15];

  return v11;
}

void __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) channelID];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 asChannel];

  if (v10)
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 48)];
    v12 = [v11 asChannel];

    v5[2](v5, v12);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke_2;
    v13[3] = &unk_1E7C37BC0;
    v13[4] = *(a1 + 40);
    v14 = v6;
    __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke_2(v13);
  }
}

void __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = [*(a1 + 32) channelID];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch failed. The tag with identifer %@ is not a valid channel.", &v11, 0x16u);
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) channelID];
  v10 = [v7 fc_invalidChannelErrorForTagID:v9];
  (*(v8 + 16))(v8, v10);
}

- (id)_sectionsPromiseWithTagsByID:(id)d sectionIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsCopy = ds;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagsByID"];
    *buf = 136315906;
    v20 = "[FCChannelSectionHeadlinesFetchOperation _sectionsPromiseWithTagsByID:sectionIDs:]";
    v21 = 2080;
    v22 = "FCChannelSectionHeadlinesFetchOperation.m";
    v23 = 1024;
    v24 = 272;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sectionIDs"];
    *buf = 136315906;
    v20 = "[FCChannelSectionHeadlinesFetchOperation _sectionsPromiseWithTagsByID:sectionIDs:]";
    v21 = 2080;
    v22 = "FCChannelSectionHeadlinesFetchOperation.m";
    v23 = 1024;
    v24 = 273;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = objc_alloc(MEMORY[0x1E69B68F8]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke;
  v15[3] = &unk_1E7C3B768;
  v16 = dsCopy;
  v17 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  v10 = dsCopy;
  v11 = [v8 initWithResolver:v15];

  return v11;
}

void __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke(id *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v29 = a3;
  v32 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a1[4];
  v5 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v36 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v35 + 1) + 8 * v8);
      v10 = [a1[5] objectForKeyedSubscript:{v9, v29}];
      v11 = [v10 asSection];

      if (!v11)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke_2;
        v33[3] = &unk_1E7C38FF0;
        v33[4] = a1[6];
        v33[5] = v9;
        v28 = v29;
        v34 = v29;
        __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke_2(v33);

        v26 = v30;
        v27 = v32;
        goto LABEL_19;
      }

      v12 = [a1[5] objectForKeyedSubscript:v9];
      v13 = [v12 asSection];

      v14 = [a1[6] channel];
      v15 = [v14 defaultSectionID];
      v16 = [v13 identifier];
      v17 = [v15 isEqualToString:v16];

      if (!v17)
      {
        v19 = [v13 supergroupKnobs];
        if (![v19 isEligible])
        {

LABEL_13:
          v21 = FCOperationLog;
          if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = a1[6];
            v23 = v21;
            v24 = [v22 shortOperationDescription];
            v25 = [v13 description];
            *buf = 138543618;
            v40 = v24;
            v41 = 2114;
            v42 = v25;
            _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Filtering out ineligible section: %{public}@", buf, 0x16u);
          }

          goto LABEL_15;
        }

        v20 = [FCTagController isTagAllowed:v13];

        if (!v20)
        {
          goto LABEL_13;
        }
      }

      v18 = [v13 asSection];
      [v32 setObject:v18 forKeyedSubscript:v9];

LABEL_15:
      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v26 = v30;
  v27 = v32;
  (*(v30 + 2))(v30, v32);
  v28 = v29;
LABEL_19:
}

void __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch failed. The tag with identifer %@ is not a valid section.", &v11, 0x16u);
  }

  v7 = *(a1 + 48);
  v8 = MEMORY[0x1E696ABC0];
  v9 = [*(a1 + 32) channelID];
  v10 = [v8 fc_invalidChannelErrorForTagID:v9];
  (*(v7 + 16))(v7, v10);
}

- (id)_feedItemsPromiseWithChannel:(id)channel sectionsByID:(id)d configuration:(id)configuration
{
  v31 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  dCopy = d;
  configurationCopy = configuration;
  if (!channelCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channel"];
    *buf = 136315906;
    v24 = "[FCChannelSectionHeadlinesFetchOperation _feedItemsPromiseWithChannel:sectionsByID:configuration:]";
    v25 = 2080;
    v26 = "FCChannelSectionHeadlinesFetchOperation.m";
    v27 = 1024;
    v28 = 309;
    v29 = 2114;
    v30 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (configurationCopy)
    {
      goto LABEL_6;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v24 = "[FCChannelSectionHeadlinesFetchOperation _feedItemsPromiseWithChannel:sectionsByID:configuration:]";
    v25 = 2080;
    v26 = "FCChannelSectionHeadlinesFetchOperation.m";
    v27 = 1024;
    v28 = 310;
    v29 = 2114;
    v30 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v11 = objc_alloc(MEMORY[0x1E69B68F8]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke;
  v19[3] = &unk_1E7C45E30;
  v19[4] = self;
  v20 = channelCopy;
  v21 = dCopy;
  v22 = configurationCopy;
  v12 = configurationCopy;
  v13 = dCopy;
  v14 = channelCopy;
  v15 = [v11 initWithResolver:v19];

  return v15;
}

void __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke(id *a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v39 = a3;
  v5 = [a1[4] fetchWindow];
  v6 = [v5 laterDate];
  v7 = [v6 fc_dateByRoundingDownToNearestQuarterHour];

  v8 = [a1[4] fetchWindow];
  v9 = [v8 earlierDate];

  v41 = v9;
  v42 = v7;
  v43 = [FCFeedRange feedRangeFromDate:v7 toDate:v9];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = [a1[5] sectionIDs];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = [a1[6] objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [a1[5] freeFeedIDForSection:v17 bin:3];
          [v10 setObject:v17 forKeyedSubscript:v19];
          v20 = [a1[4] _createFeedRequestWithFeedID:v19 feedRange:v43];
          [v11 addObject:v20];

          v21 = [a1[5] paidFeedIDForSection:v17 bin:3];
          v22 = v21;
          if (v21 && ([v21 isEqualToString:v19] & 1) == 0)
          {
            [v10 setObject:v17 forKeyedSubscript:v22];
            v23 = [a1[4] _createFeedRequestWithFeedID:v22 feedRange:v43];
            [v11 addObject:v23];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v14);
  }

  v24 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1[4];
    v26 = v24;
    v27 = [v25 shortOperationDescription];
    v28 = [v43 dateRange];
    v29 = [v11 count];
    v30 = [a1[5] identifier];
    *buf = 138544130;
    v54 = v27;
    v55 = 2112;
    v56 = v28;
    v57 = 2048;
    v58 = v29;
    v59 = 2112;
    v60 = v30;
    _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching feed items in range %@ for %lu number of feeds in channel %@", buf, 0x2Au);
  }

  v31 = objc_alloc_init(FCFeedRequestOperation);
  v32 = [a1[4] cloudContext];
  [(FCFeedRequestOperation *)v31 setContext:v32];

  [(FCFeedRequestOperation *)v31 setConfiguration:a1[7]];
  [(FCFeedRequestOperation *)v31 setFeedRequests:v11];
  -[FCFeedRequestOperation setMaxCount:](v31, "setMaxCount:", [a1[4] maxHeadlinesCount]);
  [(FCFeedRequestOperation *)v31 setOptions:14];
  v33 = [a1[4] edgeCacheHint];
  [(FCFeedRequestOperation *)v31 setEdgeCacheHint:v33];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke_102;
  v44[3] = &unk_1E7C45E08;
  v34 = a1[4];
  v47 = v39;
  v44[4] = v34;
  v35 = a1[7];
  v48 = v40;
  v45 = v35;
  v46 = v10;
  v36 = v10;
  v37 = v40;
  v38 = v39;
  [(FCFeedRequestOperation *)v31 setRequestCompletionHandler:v44];
  [a1[4] associateChildOperation:v31];
  [(FCOperation *)v31 start];
}

void __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke_102(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v13 = *(a1 + 56);
    v12 = v7;
    v13[2](v13, v12);
  }

  else
  {
    v8 = [*(a1 + 32) _feedItemsTransformationWithConfiguration:*(a1 + 40)];
    v9 = [v8 transformFeedItems:v6];
    v10 = *(a1 + 64);
    v11 = [[FCFeedItemsWithIDLookupResult alloc] initWithSectionIDByFeedID:*(a1 + 48) feedItems:v9];
    (*(v10 + 16))(v10, v11);
  }
}

- (id)_headlinesPromiseWithFeedItems:(id)items sectionsByID:(id)d configuration:(id)configuration
{
  v33 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  configurationCopy = configuration;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItemsResult"];
    *buf = 136315906;
    v26 = "[FCChannelSectionHeadlinesFetchOperation _headlinesPromiseWithFeedItems:sectionsByID:configuration:]";
    v27 = 2080;
    v28 = "FCChannelSectionHeadlinesFetchOperation.m";
    v29 = 1024;
    v30 = 376;
    v31 = 2114;
    v32 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sectionsByID"];
    *buf = 136315906;
    v26 = "[FCChannelSectionHeadlinesFetchOperation _headlinesPromiseWithFeedItems:sectionsByID:configuration:]";
    v27 = 2080;
    v28 = "FCChannelSectionHeadlinesFetchOperation.m";
    v29 = 1024;
    v30 = 377;
    v31 = 2114;
    v32 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v26 = "[FCChannelSectionHeadlinesFetchOperation _headlinesPromiseWithFeedItems:sectionsByID:configuration:]";
    v27 = 2080;
    v28 = "FCChannelSectionHeadlinesFetchOperation.m";
    v29 = 1024;
    v30 = 378;
    v31 = 2114;
    v32 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = objc_alloc(MEMORY[0x1E69B68F8]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke;
  v20[3] = &unk_1E7C45E30;
  v21 = configurationCopy;
  selfCopy = self;
  v23 = itemsCopy;
  v24 = dCopy;
  v12 = dCopy;
  v13 = itemsCopy;
  v14 = configurationCopy;
  v15 = [v11 initWithResolver:v20];

  return v15;
}

void __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setConfiguration:*(a1 + 32)];
  v5 = [*(a1 + 40) cloudContext];
  [v4 setContext:v5];

  v6 = [*(a1 + 48) feedItems];
  [v4 setFeedItems:v6];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke_2;
  v12 = &unk_1E7C45E58;
  v7 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = *(a1 + 56);
  v16 = v3;
  v8 = v3;
  [v4 setHeadlinesMapCompletionHandler:&v9];
  [*(a1 + 40) associateChildOperation:{v4, v9, v10, v11, v12, v13}];
  [v4 start];
}

void __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sectionIDsByFeedID];
  v17 = v3;
  v6 = [v4 _headlinesAssembledBySectionFromFeedItemMap:v3 sectionIDsByFeedID:v5 sectionsByID:*(a1 + 48)];

  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [FCChannelSectionHeadlinesOperationGroup alloc];
        v15 = [v8 objectForKeyedSubscript:v13];
        v16 = [(FCChannelSectionHeadlinesOperationGroup *)v14 initWithSection:v13 headlines:v15];
        [v7 addObject:v16];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 56) + 16))();
}

- (id)_createFeedRequestWithFeedID:(id)d feedRange:(id)range
{
  rangeCopy = range;
  dCopy = d;
  v8 = objc_alloc_init(FCFeedRequest);
  [(FCFeedRequest *)v8 setFeedID:dCopy];

  [(FCFeedRequest *)v8 setMaxCount:[(FCChannelSectionHeadlinesFetchOperation *)self maxHeadlinesPerFeed]];
  [(FCFeedRequest *)v8 setFeedRange:rangeCopy];

  return v8;
}

- (id)_headlinesAssembledBySectionFromFeedItemMap:(id)map sectionIDsByFeedID:(id)d sectionsByID:(id)iD
{
  v43 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  dCopy = d;
  iDCopy = iD;
  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  allValues = [iDCopy allValues];
  v10 = [allValues countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        array = [MEMORY[0x1E695DF70] array];
        [v8 setObject:array forKeyedSubscript:v14];
      }

      v11 = [allValues countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = mapCopy;
  keyEnumerator = [mapCopy keyEnumerator];
  v18 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v22 = *(*(&v33 + 1) + 8 * j);
        feedID = [v22 feedID];
        v24 = [dCopy objectForKeyedSubscript:feedID];

        v25 = [iDCopy objectForKeyedSubscript:v24];
        v26 = [v16 objectForKey:v22];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = [v8 objectForKeyedSubscript:v25];
          [v29 addObject:v27];

          v16 = mapCopy;
        }
      }

      v19 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v19);
  }

  return v8;
}

- (id)_feedItemsTransformationWithConfiguration:(id)configuration
{
  v27 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v20 = "[FCChannelSectionHeadlinesFetchOperation _feedItemsTransformationWithConfiguration:]";
    v21 = 2080;
    v22 = "FCChannelSectionHeadlinesFetchOperation.m";
    v23 = 1024;
    v24 = 444;
    v25 = 2114;
    v26 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  cloudContext = [(FCChannelSectionHeadlinesFetchOperation *)self cloudContext];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  channelID = [(FCChannelSectionHeadlinesFetchOperation *)self channelID];
  v18 = channelID;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v9 = [v6 initWithArray:v8];
  v10 = [FCFeedTransformationFilter transformationWithFilterOptions:0x60002213CLL configuration:configurationCopy context:cloudContext ignoreMutedTagIDs:v9];

  readingHistory = [cloudContext readingHistory];
  v12 = [FCFeedTransformationUnreadOnly transformationWithReadingHistory:readingHistory];

  v17[0] = v10;
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [[FCFeedTransformationComposite alloc] initWithFeedTransformations:v13];

  return v14;
}

@end