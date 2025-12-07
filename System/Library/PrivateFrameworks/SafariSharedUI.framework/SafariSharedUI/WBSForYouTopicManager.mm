@interface WBSForYouTopicManager
- (WBSForYouTopicManager)initWithHistory:(id)history contextClient:(id)client;
- (void)_createInternalQueueIfNecessary;
- (void)contextKitTopicsWithCompletionHandler:(id)handler;
- (void)portraitNamedEntitiesWithCompletionHandler:(id)handler;
@end

@implementation WBSForYouTopicManager

- (WBSForYouTopicManager)initWithHistory:(id)history contextClient:(id)client
{
  historyCopy = history;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = WBSForYouTopicManager;
  v9 = [(WBSForYouTopicManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_history, history);
    objc_storeStrong(&v10->_contextClient, client);
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    lastContextKitRequestDate = v10->_lastContextKitRequestDate;
    v10->_lastContextKitRequestDate = distantPast;

    v13 = v10;
  }

  return v10;
}

- (void)contextKitTopicsWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(NSDate *)self->_lastContextKitRequestDate timeIntervalSinceNow];
  v6 = v5;
  if (v5 >= -20.0)
  {
    v12 = handlerCopy[2](handlerCopy, self->_mostRecentUserVisibleTopics);
    v14 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = v6 + 20.0;
      _os_log_impl(&dword_1C6968000, v14, OS_LOG_TYPE_INFO, "Using cached ContextKit topics (and will for +%fs)", buf, 0xCu);
    }
  }

  else
  {
    if (!self->_historyTopicTagController)
    {
      v7 = [[WBSRecentHistoryTopicTagController alloc] initWithHistory:self->_history];
      historyTopicTagController = self->_historyTopicTagController;
      self->_historyTopicTagController = v7;

      [(WBSRecentHistoryTopicTagController *)self->_historyTopicTagController setMaximumNumberOfTopics:10];
    }

    date = [MEMORY[0x1E695DF00] date];
    lastContextKitRequestDate = self->_lastContextKitRequestDate;
    self->_lastContextKitRequestDate = date;

    v11 = self->_historyTopicTagController;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke;
    v15[3] = &unk_1E8282F48;
    v15[4] = self;
    v16 = handlerCopy;
    [(WBSRecentHistoryTopicTagController *)v11 loadTopicsWithCompletionHandler:v15];
  }
}

void __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v26 = a3;
  v27 = v6;
  if ([v6 count])
  {
    v25 = a1;
    v8 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [v12 historyItems];
          v14 = [v13 firstObject];

          v15 = [WBSForYouTopic alloc];
          v16 = [v12 title];
          v17 = [v12 identifier];
          v18 = [v14 lastVisitedDate];
          v19 = v18;
          if (!v18)
          {
            v3 = [MEMORY[0x1E695DF00] distantPast];
            v19 = v3;
          }

          v20 = [(WBSForYouTopic *)v15 initWithTitle:v16 identifier:v17 relevancyDate:v19 source:1];
          if (!v18)
          {
          }

          [v8 addObject:v20];
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_7;
    block[3] = &unk_1E8283450;
    v21 = *(v25 + 40);
    block[4] = *(v25 + 32);
    v30 = v8;
    v31 = v21;
    v22 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v26)
    {
      v23 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(0, v7);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v26 safari_privacyPreservingDescription];
        __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_cold_1(v24, buf, v23);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)portraitNamedEntitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(WBSForYouTopicManager *)self _createInternalQueueIfNecessary];
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = objc_alloc_init(MEMORY[0x1E69BDCA8]);
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-5400.0];
  [v5 setFromDate:v6];

  [v5 setLimit:3];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F466D040];
  [v5 setMatchingCategories:v7];

  v8 = *(*(a1 + 32) + 16);
  v18 = 0;
  v9 = [v8 rankedNamedEntitiesWithQuery:v5 error:&v18];
  v10 = v18;
  v12 = v10;
  if (v10)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v12 safari_privacyPreservingDescription];
      __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke_cold_1(v14, buf, v13);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, 0);
    }
  }

  else
  {
    v16 = [v9 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_15];
    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, v16);
    }
  }
}

WBSForYouTopic *__68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = [a2 item];
  v3 = [v2 name];

  if ([v3 length] >= 5)
  {
    v5 = [WBSForYouTopic alloc];
    v6 = [MEMORY[0x1E695DF00] distantPast];
    v4 = [(WBSForYouTopic *)v5 initWithTitle:v3 identifier:v3 relevancyDate:v6 source:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_createInternalQueueIfNecessary
{
  if (!self->_internalQueue)
  {
    v4 = dispatch_queue_create("com.apple.Safari.ForYouTopicManager.internalQueue", 0);
    internalQueue = self->_internalQueue;
    self->_internalQueue = v4;
  }
}

void __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Could not load ContextKit topics with error: %{public}@", buf, 0xCu);
}

void __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to get Portrait named entities: %{public}@", buf, 0xCu);
}

@end