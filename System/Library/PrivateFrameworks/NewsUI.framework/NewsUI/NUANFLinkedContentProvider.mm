@interface NUANFLinkedContentProvider
- (NUANFLinkedContentProvider)initWithContentContext:(id)context;
- (id)headlineForIdentifier:(id)identifier;
- (id)issueForIdentifier:(id)identifier;
- (id)loadLinkedArticlesWithIDs:(id)ds priority:(int64_t)priority completion:(id)completion;
- (id)loadLinkedContentForHeadline:(id)headline withContext:(id)context priority:(int64_t)priority completion:(id)completion;
- (id)loadLinkedIssuesWithIDs:(id)ds priority:(int64_t)priority completion:(id)completion;
- (id)loadLinkedTagsWithIDs:(id)ds priority:(int64_t)priority completion:(id)completion;
- (id)tagForIdentifier:(id)identifier;
@end

@implementation NUANFLinkedContentProvider

- (NUANFLinkedContentProvider)initWithContentContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = NUANFLinkedContentProvider;
  v6 = [(NUANFLinkedContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
  }

  return v7;
}

- (id)loadLinkedContentForHeadline:(id)headline withContext:(id)context priority:(int64_t)priority completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  headlineCopy = headline;
  contextCopy = context;
  block = completion;
  linkedArticleIDs = [headlineCopy linkedArticleIDs];
  v12 = [linkedArticleIDs mutableCopy];
  v13 = v12;
  if (v12)
  {
    array = v12;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v15 = array;

  identifier = [headlineCopy identifier];
  [v15 addObject:identifier];

  linkedIssueIDs = [headlineCopy linkedIssueIDs];
  v18 = [linkedIssueIDs mutableCopy];
  v19 = v18;
  v45 = headlineCopy;
  priorityCopy = priority;
  if (v18)
  {
    array2 = v18;
  }

  else
  {
    array2 = [MEMORY[0x277CBEB18] array];
  }

  v21 = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v44 = contextCopy;
  documentController = [contextCopy documentController];
  additions = [documentController additions];

  v25 = [additions countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(additions);
        }

        v29 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v29 URL];
          fc_NewsArticleID = [v30 fc_NewsArticleID];
          [v15 fc_safelyAddObject:fc_NewsArticleID];

          fc_NewsIssueID = [v30 fc_NewsIssueID];
          [v21 fc_safelyAddObject:fc_NewsIssueID];

          fc_feldsparTagID = [v30 fc_feldsparTagID];
          [array3 fc_safelyAddObject:fc_feldsparTagID];
        }
      }

      v26 = [additions countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  array4 = [MEMORY[0x277CBEB18] array];
  v35 = dispatch_group_create();
  v36 = priorityCopy;
  if ([v15 count])
  {
    dispatch_group_enter(v35);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __91__NUANFLinkedContentProvider_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke;
    v51[3] = &unk_2799A3498;
    v52 = v35;
    v37 = [(NUANFLinkedContentProvider *)self loadLinkedArticlesWithIDs:v15 priority:priorityCopy completion:v51];
    [array4 addObject:v37];
  }

  if ([v21 count])
  {
    dispatch_group_enter(v35);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __91__NUANFLinkedContentProvider_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke_2;
    v49[3] = &unk_2799A3498;
    v50 = v35;
    v38 = [(NUANFLinkedContentProvider *)self loadLinkedIssuesWithIDs:v21 priority:v36 completion:v49];
    [array4 addObject:v38];
  }

  if ([array3 count])
  {
    dispatch_group_enter(v35);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __91__NUANFLinkedContentProvider_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke_3;
    v47[3] = &unk_2799A3498;
    v48 = v35;
    v39 = [(NUANFLinkedContentProvider *)self loadLinkedTagsWithIDs:array3 priority:v36 completion:v47];
    [array4 addObject:v39];
  }

  dispatch_group_notify(v35, MEMORY[0x277D85CD0], block);
  v40 = [MEMORY[0x277D31088] groupCancelHandlerWithCancelHandlers:array4];

  return v40;
}

- (id)headlineForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  linkedHeadlines = [(NUANFLinkedContentProvider *)self linkedHeadlines];
  v6 = [linkedHeadlines objectForKey:identifierCopy];

  return v6;
}

- (id)issueForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  linkedIssues = [(NUANFLinkedContentProvider *)self linkedIssues];
  v6 = [linkedIssues objectForKey:identifierCopy];

  return v6;
}

- (id)tagForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  linkedTags = [(NUANFLinkedContentProvider *)self linkedTags];
  v6 = [linkedTags objectForKey:identifierCopy];

  return v6;
}

- (id)loadLinkedArticlesWithIDs:(id)ds priority:(int64_t)priority completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    v10 = objc_alloc(MEMORY[0x277D30DE8]);
    contentContext = [(NUANFLinkedContentProvider *)self contentContext];
    v12 = [v10 initWithContext:contentContext articleIDs:dsCopy ignoreCacheForArticleIDs:0];

    [v12 setQualityOfService:FCInferQualityOfServiceFromRelativePriority()];
    [v12 setRelativePriority:priority];
    [v12 setFetchCompletionQueue:MEMORY[0x277D85CD0]];
    objc_initWeak(location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_2;
    v18 = &unk_2799A4860;
    objc_copyWeak(&v20, location);
    v19 = completionCopy;
    [v12 setFetchCompletionBlock:&v15];
    fc_sharedConcurrentQueue = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
    [fc_sharedConcurrentQueue addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke;
    location[4] = &unk_2799A4838;
    v22 = completionCopy;
    v22[2]();

    v12 = 0;
  }

  return v12;
}

void __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([v3 status])
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_4;
      v20[3] = &unk_2799A3148;
      v21 = *(a1 + 32);
      __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_4(v20);
      v7 = v21;
    }

    else
    {
      v15 = v6;
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v3 fetchedObject];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [v13 identifier];
            [v7 setObject:v13 forKey:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v10);
      }

      v6 = v15;
      [v15 setLinkedHeadlines:v7];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_3;
    v22[3] = &unk_2799A3148;
    v23 = *(a1 + 32);
    __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_3(v22);
    v6 = v23;
  }
}

- (id)loadLinkedIssuesWithIDs:(id)ds priority:(int64_t)priority completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    v10 = objc_alloc(MEMORY[0x277D310C0]);
    contentContext = [(NUANFLinkedContentProvider *)self contentContext];
    v12 = [v10 initWithContext:contentContext issueIDs:dsCopy];

    [v12 setQualityOfService:FCInferQualityOfServiceFromRelativePriority()];
    [v12 setRelativePriority:priority];
    objc_initWeak(location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_2;
    v18 = &unk_2799A4888;
    objc_copyWeak(&v20, location);
    v19 = completionCopy;
    [v12 setFetchCompletionHandler:&v15];
    fc_sharedConcurrentQueue = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
    [fc_sharedConcurrentQueue addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke;
    location[4] = &unk_2799A4838;
    v22 = completionCopy;
    v22[2]();

    v12 = 0;
  }

  return v12;
}

void __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v14 + 1) + 8 * i) identifier];
          [v7 setObject:v8 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }

    [v6 setLinkedIssues:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_3;
    v18[3] = &unk_2799A3148;
    v19 = *(a1 + 32);
    __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_3(v18);
    v6 = v19;
  }
}

- (id)loadLinkedTagsWithIDs:(id)ds priority:(int64_t)priority completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    contentContext = [(NUANFLinkedContentProvider *)self contentContext];
    tagController = [contentContext tagController];
    v12 = [tagController fetchOperationForTagsWithIDs:dsCopy];

    [v12 setQualityOfService:FCInferQualityOfServiceFromRelativePriority()];
    [v12 setRelativePriority:priority];
    objc_initWeak(location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_2;
    v18 = &unk_2799A4860;
    objc_copyWeak(&v20, location);
    v19 = completionCopy;
    [v12 setFetchCompletionBlock:&v15];
    fc_sharedConcurrentQueue = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
    [fc_sharedConcurrentQueue addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke;
    location[4] = &unk_2799A4838;
    v22 = completionCopy;
    v22[2]();

    v12 = 0;
  }

  return v12;
}

void __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([v3 status])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_4;
      v8[3] = &unk_2799A3148;
      v9 = *(a1 + 32);
      __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_4(v8);
    }

    else
    {
      v7 = [v3 fetchedObject];
      [v6 setLinkedTags:v7];

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_3;
    v10[3] = &unk_2799A3148;
    v11 = *(a1 + 32);
    __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_3(v10);
    v6 = v11;
  }
}

@end