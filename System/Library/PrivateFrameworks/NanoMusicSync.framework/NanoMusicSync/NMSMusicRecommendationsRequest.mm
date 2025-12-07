@interface NMSMusicRecommendationsRequest
+ (id)_recentMusicDirectory;
- (BOOL)_isLibraryPinsSupported;
- (id)_heavyRotationCacheURL;
- (id)_starterPackMultiplexCacheURL;
- (id)_starterPackRoomCacheURL;
- (id)_unarchivedCombinedResponsesDictionary;
- (void)_continueToHeavyRotationRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLegacyEditorialRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLegacyForYouRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLibraryImportWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLibraryPinsRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLibraryRecentMusicRecommedationsWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToProcessResultsWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToRecentMusicRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToStarterPackMultiplexRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToStarterPackRoomRequestWithURL:(id)l context:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_finishWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_performEditorialBrowseRequestWithCompletion:(id)completion;
- (void)_performForYouRequestWithCompletion:(id)completion;
- (void)_performHeavyRotationRequestWithCompletion:(id)completion;
- (void)_performLegacyLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion;
- (void)_performLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion;
- (void)_performLibraryPinsRequestWithCompletion:(id)completion;
- (void)_performLibraryRecentMusicRequestWithCompletion:(id)completion;
- (void)_performStarterPackMultiplexRequestWithCompletion:(id)completion;
- (void)_performStarterPackRoomRequestWithURL:(id)l completion:(id)completion;
- (void)_writeData:(id)data toURL:(id)l;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation NMSMusicRecommendationsRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendationsRequest", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NMSMusicRecommendationsRequest_performWithResponseHandler___block_invoke;
  block[3] = &unk_27993DE68;
  block[4] = self;
  v9 = v5;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = v5;
  dispatch_async(v7, block);
}

void __61__NMSMusicRecommendationsRequest_performWithResponseHandler___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(NMSMusicRecommendationsRequestContext);
  v2 = +[NMSyncDefaults sharedDefaults];
  v3 = [v2 minimumNumberOfRecentMusicModelObjects];
  -[NMSMusicRecommendationsRequestContext setMinimumNumberOfRecentMusicModelObjects:](v8, "setMinimumNumberOfRecentMusicModelObjects:", [v3 unsignedIntegerValue]);

  v4 = [*(a1 + 32) _isLibraryPinsSupported];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v4)
  {
    [v5 _continueToLibraryPinsRequestWithContext:v8 queue:v6 responseHandler:v7];
  }

  else
  {
    [v5 _continueToRecentMusicRequestWithContext:v8 queue:v6 responseHandler:v7];
  }
}

- (void)_continueToLibraryPinsRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performLibraryPinsRequestWithCompletion:v14];
}

void __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setLibraryPinsResponse:*(a1 + 48)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);

    return [v5 _continueToRecentMusicRequestWithContext:v4 queue:v6 responseHandler:v7];
  }
}

- (void)_continueToRecentMusicRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v10 = +[NMSSubscriptionManager sharedManager];
  v11 = [v10 hasCapability:1];

  if (v11)
  {
    if (self->_useCachedDataOnly && (-[NMSMusicRecommendationsRequest _unarchivedCombinedResponsesDictionary](self, "_unarchivedCombinedResponsesDictionary"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectForKeyedSubscript:@"recommendationsArray"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      [(NMSMusicRecommendationsRequest *)self _continueToLegacyForYouRequestWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
    }

    else
    {
      [(NMSMusicRecommendationsRequest *)self _continueToHeavyRotationRequestWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
    }
  }

  else
  {
    [(NMSMusicRecommendationsRequest *)self _continueToLibraryRecentMusicRecommedationsWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
  }
}

- (void)_continueToHeavyRotationRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performHeavyRotationRequestWithCompletion:v14];
}

void __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setHeavyRotationResponse:*(a1 + 48)];
    v4 = [*(a1 + 40) numberOfRecentMusicModelObjects];
    v5 = [*(a1 + 40) minimumNumberOfRecentMusicModelObjects];
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    if (v4 >= v5)
    {

      return [v7 _continueToProcessResultsWithContext:v6 queue:v8 responseHandler:v9];
    }

    else
    {

      return [v7 _continueToLibraryRecentMusicRecommedationsWithContext:v6 queue:v8 responseHandler:v9];
    }
  }
}

- (void)_continueToLibraryRecentMusicRecommedationsWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performLibraryRecentMusicRequestWithCompletion:v14];
}

void __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setLibraryRecentMusicResponse:*(a1 + 48)];
    v4 = [*(a1 + 40) numberOfRecentMusicModelObjects];
    if (v4 < [*(a1 + 40) minimumNumberOfRecentMusicModelObjects] && (+[NMSSubscriptionManager sharedManager](NMSSubscriptionManager, "sharedManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasCapability:", 1), v5, v6))
    {
      v7 = *(a1 + 56);
      if (v7[8] == 1 && ([v7 _unarchivedCombinedResponsesDictionary], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", @"editorial-cachedLoadedOutput"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7 = *(a1 + 56), v9))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 64);
        v12 = *(a1 + 72);

        return [v7 _continueToLegacyEditorialRequestWithContext:v10 queue:v11 responseHandler:v12];
      }

      else
      {
        v17 = *(a1 + 40);
        v18 = *(a1 + 64);
        v19 = *(a1 + 72);

        return [v7 _continueToStarterPackMultiplexRequestWithContext:v17 queue:v18 responseHandler:v19];
      }
    }

    else
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v16 = *(a1 + 72);

      return [v14 _continueToProcessResultsWithContext:v13 queue:v15 responseHandler:v16];
    }
  }
}

- (void)_continueToStarterPackMultiplexRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  selfCopy = self;
  v17 = contextCopy;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performStarterPackMultiplexRequestWithCompletion:v14];
}

void __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke_2;
  block[3] = &unk_27993DE90;
  v16 = v6;
  v8 = *(a1 + 56);
  v17 = v5;
  v14 = *(a1 + 40);
  v9 = *(a1 + 48);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = v8;
  *&v11 = v14;
  *(&v11 + 1) = v9;
  v18 = v11;
  v19 = v10;
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

void __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 40) results];
    v4 = [v3 firstSection];
    v5 = [v4 loadAdditionalContentURL];

    [*(a1 + 48) _continueToStarterPackRoomRequestWithURL:v5 context:*(a1 + 56) queue:*(a1 + 64) responseHandler:*(a1 + 72)];
  }
}

- (void)_continueToStarterPackRoomRequestWithURL:(id)l context:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  lCopy = l;
  dispatch_assert_queue_V2(queueCopy);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke;
  v17[3] = &unk_27993DEB8;
  v18 = queueCopy;
  v19 = contextCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = contextCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performStarterPackRoomRequestWithURL:lCopy completion:v17];
}

void __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setStarterPackResponse:*(a1 + 48)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);

    return [v5 _continueToProcessResultsWithContext:v4 queue:v6 responseHandler:v7];
  }
}

- (void)_continueToProcessResultsWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  dispatch_assert_queue_V2(queueCopy);
  if (self->_useCachedDataOnly)
  {
    [(NMSMusicRecommendationsRequest *)self _finishWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
  }

  else
  {
    [(NMSMusicRecommendationsRequest *)self _continueToLibraryImportWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
  }
}

- (void)_continueToLibraryImportWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  modelObjects = [contextCopy modelObjects];
  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
  v13 = [modelObjects filteredSetUsingPredicate:v12];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_2;
  v17[3] = &unk_27993DF28;
  v18 = queueCopy;
  selfCopy = self;
  v20 = contextCopy;
  v21 = handlerCopy;
  v14 = contextCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performLibraryImportChangeRequestWithModelObjects:v13 completion:v17];
}

void __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_3;
  block[3] = &unk_27993DF00;
  v12 = v3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v5;
  *&v8 = v10;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v7;
  v9 = v3;
  dispatch_async(v4, block);
}

uint64_t __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*(*(a1 + 64) + 16))();
  }

  else
  {
    return [*(a1 + 40) _finishWithContext:*(a1 + 48) queue:*(a1 + 56) responseHandler:*(a1 + 64)];
  }
}

- (void)_finishWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  v10 = self->_cachedData;
  if (!self->_useCachedDataOnly)
  {
    v11 = objc_opt_new();
    if ([contextCopy minimumNumberOfRecentMusicModelObjects])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contextCopy, "minimumNumberOfRecentMusicModelObjects")}];
      [v11 setObject:v12 forKey:@"minimumNumberOfRecentMusicModelObjects"];
    }

    forYouResponse = [contextCopy forYouResponse];
    nms_cachedRecommendationsArray = [forYouResponse nms_cachedRecommendationsArray];

    if (nms_cachedRecommendationsArray)
    {
      forYouResponse2 = [contextCopy forYouResponse];
      nms_cachedRecommendationsArray2 = [forYouResponse2 nms_cachedRecommendationsArray];
      [v11 setObject:nms_cachedRecommendationsArray2 forKey:@"recommendationsArray"];
    }

    forYouResponse3 = [contextCopy forYouResponse];
    nms_cachedStoreItemMetadataResults = [forYouResponse3 nms_cachedStoreItemMetadataResults];

    if (nms_cachedStoreItemMetadataResults)
    {
      forYouResponse4 = [contextCopy forYouResponse];
      nms_cachedStoreItemMetadataResults2 = [forYouResponse4 nms_cachedStoreItemMetadataResults];
      [v11 setObject:nms_cachedStoreItemMetadataResults2 forKey:@"storeItemMetadataResults"];
    }

    editorialBrowseResponse = [contextCopy editorialBrowseResponse];
    nms_cachedLoadedOutput = [editorialBrowseResponse nms_cachedLoadedOutput];

    if (nms_cachedLoadedOutput)
    {
      editorialBrowseResponse2 = [contextCopy editorialBrowseResponse];
      nms_cachedLoadedOutput2 = [editorialBrowseResponse2 nms_cachedLoadedOutput];
      [v11 setObject:nms_cachedLoadedOutput2 forKey:@"editorial-cachedLoadedOutput"];
    }

    v25 = MEMORY[0x277CCAAB0];
    v26 = [v11 copy];
    v33 = 0;
    v27 = [v25 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v33];
    v28 = v33;

    if (v28)
    {
      v29 = NMLogForCategory(5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [NMSMusicRecommendationsRequest _finishWithContext:queue:responseHandler:];
      }
    }

    v10 = v27;
  }

  v30 = [NMSMusicRecommendationsResponse alloc];
  recommendations = [contextCopy recommendations];
  v32 = [(NMSMusicRecommendationsResponse *)v30 initWithCachedData:v10 recommendations:recommendations];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v32, 0);
  }
}

- (void)_performLibraryPinsRequestWithCompletion:(id)completion
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD5ED8];
  completionCopy = completion;
  v4 = objc_alloc_init(v3);
  [v4 setLabel:@"Library Pins Recommendations"];
  identityKind = [MEMORY[0x277CD5EC8] identityKind];
  [v4 setItemKind:identityKind];

  v22 = objc_alloc(MEMORY[0x277CD6018]);
  v30[0] = *MEMORY[0x277CD5BC8];
  v6 = MEMORY[0x277CD6018];
  v7 = *MEMORY[0x277CD59C0];
  v29[0] = *MEMORY[0x277CD59A0];
  v29[1] = v7;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v8 = [v6 propertySetWithProperties:v23];
  v31[0] = v8;
  v30[1] = *MEMORY[0x277CD5BC0];
  v9 = MEMORY[0x277CD6018];
  v28 = *MEMORY[0x277CD5970];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v11 = [v9 propertySetWithProperties:v10];
  v31[1] = v11;
  v30[2] = *MEMORY[0x277CD5BD0];
  v12 = MEMORY[0x277CD6018];
  v27 = *MEMORY[0x277CD5AF8];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v14 = [v12 propertySetWithProperties:v13];
  v31[2] = v14;
  v30[3] = *MEMORY[0x277CD5BB8];
  v15 = MEMORY[0x277CD6018];
  v26 = *MEMORY[0x277CD5948];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v17 = [v15 propertySetWithProperties:v16];
  v31[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v19 = [v22 initWithProperties:MEMORY[0x277CBEBF8] relationships:v18];
  [v4 setItemProperties:v19];

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CD5998] ascending:1];
  v25 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v4 setItemSortDescriptors:v21];

  [v4 setFilteringOptions:{objc_msgSend(v4, "filteringOptions") | 0x10000}];
  [v4 performWithResponseHandler:completionCopy];
}

- (void)_performHeavyRotationRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277D2B998]);
  [v5 setDefaultMusicRequestProperties];
  allSupportedSectionProperties = [MEMORY[0x277D2B9A0] allSupportedSectionProperties];
  [v5 setSectionProperties:allSupportedSectionProperties];

  allSupportedItemProperties = [MEMORY[0x277D2B9A0] allSupportedItemProperties];
  [v5 setItemProperties:allSupportedItemProperties];

  _heavyRotationCacheURL = [(NMSMusicRecommendationsRequest *)self _heavyRotationCacheURL];
  [v5 setCacheURL:_heavyRotationCacheURL];

  [v5 setCachePolicy:3];
  if (self->_useCachedDataOnly)
  {
    [v5 setCachePolicy:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v10 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"HeavyRotationResponse"];

    _heavyRotationCacheURL2 = [(NMSMusicRecommendationsRequest *)self _heavyRotationCacheURL];
    [(NMSMusicRecommendationsRequest *)self _writeData:v10 toURL:_heavyRotationCacheURL2];

    v12 = @"Defaults";
  }

  else
  {
    v12 = @"Store";
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke;
  v15[3] = &unk_27993DF50;
  v16 = v12;
  v17 = v5;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = v5;
  [v14 performWithResponseHandler:v15];
}

void __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Heavy Rotation) Got heavy rotation response: %@", &v11, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_performLibraryRecentMusicRequestWithCompletion:(id)completion
{
  v110 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x3032000000;
  v100[3] = __Block_byref_object_copy__2;
  v100[4] = __Block_byref_object_dispose__2;
  v101 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = __Block_byref_object_copy__2;
  v98[4] = __Block_byref_object_dispose__2;
  v99 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x3032000000;
  v96[3] = __Block_byref_object_copy__2;
  v96[4] = __Block_byref_object_dispose__2;
  v97 = 0;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x3032000000;
  v94[3] = __Block_byref_object_copy__2;
  v94[4] = __Block_byref_object_dispose__2;
  v95 = 0;
  queue = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendationsRequest.LibraryCompletion", 0);
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke;
  v88[3] = &unk_27993DF78;
  v90 = v100;
  v91 = v96;
  v92 = v98;
  v93 = v94;
  v51 = completionCopy;
  v89 = v51;
  v55 = MEMORY[0x25F865990](v88);
  v4 = +[NMSyncDefaults sharedDefaults];
  libraryRecommendationPlaylists = [v4 libraryRecommendationPlaylists];

  if ([libraryRecommendationPlaylists count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = libraryRecommendationPlaylists;
    v6 = [obj countByEnumeratingWithState:&v84 objects:v109 count:16];
    v58 = v5;
    if (v6)
    {
      v7 = *v85;
      do
      {
        v8 = 0;
        do
        {
          if (*v85 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v84 + 1) + 8 * v8);
          v10 = objc_alloc(MEMORY[0x277CD5DA0]);
          identityKind = [MEMORY[0x277CD5F08] identityKind];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2;
          v83[3] = &unk_27993DFA0;
          v83[4] = v9;
          v12 = [v10 initWithModelKind:identityKind block:v83];

          [v58 addObject:v12];
          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v84 objects:v109 count:16];
      }

      while (v6);
    }

    v13 = objc_alloc_init(MEMORY[0x277CD5ED8]);
    [v13 setLabel:@"Library Recommendation Playlists"];
    v14 = MEMORY[0x277CD5EF0];
    v15 = NMSMPModelPlaylistVariantsNonFolder;
    v16 = MEMORY[0x277CD5EF8];
    v17 = [MEMORY[0x277CD5F58] kindWithVariants:1];
    v108 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
    v19 = [v16 kindWithKinds:v18];
    v20 = [v14 kindWithVariants:v15 & 0xFFFFFFFFFFFFFFFDLL playlistEntryKind:v19 options:4];
    [v13 setItemKind:v20];

    v21 = MEMORY[0x277CD6018];
    v22 = *MEMORY[0x277CD59A0];
    v107[0] = *MEMORY[0x277CD59B8];
    v107[1] = v22;
    v23 = *MEMORY[0x277CD59B0];
    v107[2] = *MEMORY[0x277CD59C0];
    v107[3] = v23;
    v107[4] = *MEMORY[0x277CD59C8];
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:5];
    v25 = [v21 propertySetWithProperties:v24];
    [v13 setItemProperties:v25];

    [v13 setAllowedItemIdentifiers:v58];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3;
    v77[3] = &unk_27993DFF0;
    v26 = v13;
    v78 = v26;
    v79 = queue;
    v81 = v96;
    v82 = v100;
    v80 = v55;
    [v26 performWithResponseHandler:v77];

    v27 = v58;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_88;
    block[3] = &unk_27993E018;
    v76 = v100;
    v75 = v55;
    dispatch_async(queue, block);
    v27 = v75;
  }

  v28 = +[NMSyncDefaults sharedDefaults];
  libraryRecommendationAlbums = [v28 libraryRecommendationAlbums];

  if ([libraryRecommendationAlbums count])
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obja = libraryRecommendationAlbums;
    v30 = [obja countByEnumeratingWithState:&v70 objects:v106 count:16];
    v59 = v29;
    if (v30)
    {
      v31 = *v71;
      do
      {
        v32 = 0;
        do
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v70 + 1) + 8 * v32);
          v34 = objc_alloc(MEMORY[0x277CD5DA0]);
          identityKind2 = [MEMORY[0x277CD5E48] identityKind];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_90;
          v69[3] = &unk_27993DFA0;
          v69[4] = v33;
          v36 = [v34 initWithModelKind:identityKind2 block:v69];

          [v59 addObject:v36];
          ++v32;
        }

        while (v30 != v32);
        v30 = [obja countByEnumeratingWithState:&v70 objects:v106 count:16];
      }

      while (v30);
    }

    v37 = objc_alloc_init(MEMORY[0x277CD5ED8]);
    [v37 setLabel:@"Library Recommendation Albums"];
    v38 = MEMORY[0x277CD5E40];
    v39 = [MEMORY[0x277CD5F58] kindWithVariants:1];
    v40 = [v38 kindWithSongKind:v39];
    [v37 setItemKind:v40];

    v41 = objc_alloc(MEMORY[0x277CD6018]);
    v42 = *MEMORY[0x277CD5948];
    v105[0] = *MEMORY[0x277CD5960];
    v105[1] = v42;
    v105[2] = *MEMORY[0x277CD5958];
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:3];
    v103 = *MEMORY[0x277CD5B68];
    v44 = MEMORY[0x277CD6018];
    v102 = *MEMORY[0x277CD5980];
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
    v46 = [v44 propertySetWithProperties:v45];
    v104 = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v48 = [v41 initWithProperties:v43 relationships:v47];
    [v37 setItemProperties:v48];

    [v37 setAllowedItemIdentifiers:v59];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_4;
    v63[3] = &unk_27993DFF0;
    v49 = v37;
    v64 = v49;
    v65 = queue;
    v67 = v94;
    v68 = v98;
    v66 = v55;
    [v49 performWithResponseHandler:v63];

    v50 = v59;
  }

  else
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_96;
    v60[3] = &unk_27993E018;
    v62 = v98;
    v61 = v55;
    dispatch_async(queue, v60);
    v50 = v61;
  }

  _Block_object_dispose(v94, 8);
  _Block_object_dispose(v96, 8);

  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v100, 8);
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1[6] + 8) + 40) == 0;
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1[8] + 8) + 40) == 0;
  }

  if (v2 || v3)
  {
    v4 = 0;
    v15 = 0;
  }

  else
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (v5 || (v5 = *(*(a1[8] + 8) + 40)) != 0)
    {
      v6 = v5;
      v4 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CD5F40]);
      v9 = objc_alloc_init(MEMORY[0x277CD5F38]);
      v4 = [v8 initWithRequest:v9];

      v10 = objc_alloc_init(MEMORY[0x277CD5FD0]);
      [v10 appendSection:@"Playlists"];
      v11 = [*(*(a1[5] + 8) + 40) results];
      v12 = [v11 allItems];
      [v10 appendItems:v12];

      [v10 appendSection:@"Albums"];
      v13 = [*(*(a1[7] + 8) + 40) results];
      v14 = [v13 allItems];
      [v10 appendItems:v14];

      [v4 setResults:v10];
      v6 = 0;
    }

    v7 = a1[4];
    v15 = v6;
    if (v7)
    {
      (*(v7 + 16))(v7, v4);
    }
  }
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_cold_1();
    }
  }

  v8 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_86;
  block[3] = &unk_27993DFC8;
  v17 = *(a1 + 64);
  v14 = v6;
  v15 = v5;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_86(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_88(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD5F40]);
  v3 = objc_alloc_init(MEMORY[0x277CD5F38]);
  v4 = [v2 initWithRequest:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_cold_1();
    }
  }

  v8 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_95;
  block[3] = &unk_27993DFC8;
  v17 = *(a1 + 64);
  v14 = v6;
  v15 = v5;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_95(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_96(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD5F40]);
  v3 = objc_alloc_init(MEMORY[0x277CD5F38]);
  v4 = [v2 initWithRequest:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

- (void)_performStarterPackMultiplexRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
  v7 = [mEMORY[0x277CF0130] userUnderAgeForAccount:primaryAuthKitAccount];

  v8 = [objc_alloc(MEMORY[0x277D2B9A8]) initWithUnderageUser:v7];
  [v8 setDefaultMusicRequestProperties];
  [v8 setEditorialRequestProperties];
  allSupportedSectionProperties = [MEMORY[0x277D2B9A0] allSupportedSectionProperties];
  [v8 setSectionProperties:allSupportedSectionProperties];

  allSupportedItemProperties = [MEMORY[0x277D2B9A0] allSupportedItemProperties];
  [v8 setItemProperties:allSupportedItemProperties];

  _starterPackMultiplexCacheURL = [(NMSMusicRecommendationsRequest *)self _starterPackMultiplexCacheURL];
  [v8 setCacheURL:_starterPackMultiplexCacheURL];

  [v8 setCachePolicy:3];
  if (self->_useCachedDataOnly)
  {
    [v8 setCachePolicy:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v13 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"StarterPackMultiplexResponse"];

    _starterPackMultiplexCacheURL2 = [(NMSMusicRecommendationsRequest *)self _starterPackMultiplexCacheURL];
    [(NMSMusicRecommendationsRequest *)self _writeData:v13 toURL:_starterPackMultiplexCacheURL2];

    v15 = @"Defaults";
  }

  else
  {
    v15 = @"Store";
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke;
  v18[3] = &unk_27993DF50;
  v19 = v15;
  v20 = v8;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = v8;
  [v17 performWithResponseHandler:v18];
}

void __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Starter Pack) Got multiplex response: %@", &v11, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_performStarterPackRoomRequestWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277D2B9B0];
  lCopy = l;
  v9 = [[v7 alloc] initWithURL:lCopy];

  [v9 setDefaultMusicRequestProperties];
  allSupportedSectionProperties = [MEMORY[0x277D2B9A0] allSupportedSectionProperties];
  [v9 setSectionProperties:allSupportedSectionProperties];

  allSupportedItemProperties = [MEMORY[0x277D2B9A0] allSupportedItemProperties];
  [v9 setItemProperties:allSupportedItemProperties];

  _starterPackRoomCacheURL = [(NMSMusicRecommendationsRequest *)self _starterPackRoomCacheURL];
  [v9 setCacheURL:_starterPackRoomCacheURL];

  [v9 setCachePolicy:3];
  if (self->_useCachedDataOnly)
  {
    [v9 setCachePolicy:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v14 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"StarterPackRoomResponse"];

    _starterPackRoomCacheURL2 = [(NMSMusicRecommendationsRequest *)self _starterPackRoomCacheURL];
    [(NMSMusicRecommendationsRequest *)self _writeData:v14 toURL:_starterPackRoomCacheURL2];

    v16 = @"Defaults";
  }

  else
  {
    v16 = @"Store";
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke;
  v19[3] = &unk_27993DF50;
  v20 = v16;
  v21 = v9;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = v9;
  [v18 performWithResponseHandler:v19];
}

void __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Starter Pack) Got starter pack room response: %@", &v11, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_performLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  completionCopy = completion;
  v7 = objectsCopy;
  v8 = completionCopy;
  v31 = v7;
  if (![v7 count])
  {
    v8[2](v8, 0);
    goto LABEL_25;
  }

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__2;
  v49[4] = __Block_byref_object_dispose__2;
  v50 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke;
  v44[3] = &unk_27993E040;
  v47 = v51;
  v48 = v49;
  v9 = v7;
  v45 = v9;
  v30 = v8;
  v46 = v8;
  v33 = MEMORY[0x25F865990](v44);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *v41;
  do
  {
    v12 = 0;
    do
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v40 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        identifiers = [v14 identifiers];
        universalStore = [identifiers universalStore];
        globalPlaylistID = [universalStore globalPlaylistID];

        if ([globalPlaylistID length])
        {
          v18 = NMLogForCategory(5);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v53 = v14;
            _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Importing playlist: %{public}@", buf, 0xCu);
          }

          defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
          identifiers2 = [v14 identifiers];
          universalStore2 = [identifiers2 universalStore];
          globalPlaylistID2 = [universalStore2 globalPlaylistID];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107;
          v37[3] = &unk_27993E068;
          v38 = v14;
          v39 = v33;
          [defaultMediaLibrary addGlobalPlaylistWithID:globalPlaylistID2 andAddToCloudLibrary:0 completion:v37];

          v23 = v38;
        }

        else
        {
          v23 = NMLogForCategory(5);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v53 = v14;
            _os_log_fault_impl(&dword_25B27B000, v23, OS_LOG_TYPE_FAULT, "[Recommendation] (Import) Skipping import for playlist without a globalPlaylistID: %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33[2](v33, 0);
          goto LABEL_21;
        }

        v24 = v13;
        v25 = NMLogForCategory(5);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v53 = v24;
          _os_log_impl(&dword_25B27B000, v25, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Importing album: %{public}@", buf, 0xCu);
        }

        defaultMediaLibrary2 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
        identifiers3 = [v24 identifiers];
        universalStore3 = [identifiers3 universalStore];
        adamID = [universalStore3 adamID];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110;
        v34[3] = &unk_27993E090;
        v35 = v24;
        v36 = v33;
        [defaultMediaLibrary2 addStoreItem:adamID andAddTracksToCloudLibrary:0 withCompletion:v34];

        globalPlaylistID = v35;
      }

LABEL_21:
      ++v12;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  }

  while (v10);
LABEL_23:

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);
  v8 = v30;
LABEL_25:
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v4 = *(*(a1 + 56) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v9 = v3;
  if (v7)
  {
    v3 = v6;
  }

  objc_storeStrong(v5, v3);
  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v8 == [*(a1 + 32) count])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Successfully imported playlist: %{public}@", &v14, 0xCu);
    }

    v5 = [MEMORY[0x277CD5E38] playlistsQuery];
    v7 = MEMORY[0x277CD5E30];
    v8 = [*(a1 + 32) identifiers];
    v9 = [v8 universalStore];
    v10 = [v9 globalPlaylistID];
    v11 = [v7 predicateWithValue:v10 forProperty:*MEMORY[0x277CD58F0] comparisonType:0];
    [v5 addFilterPredicate:v11];

    v12 = [v5 collections];
    v13 = [v12 firstObject];

    [v13 setValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5920]];
  }

  (*(*(a1 + 40) + 16))();
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(5);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Successfully imported album: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_unarchivedCombinedResponsesDictionary
{
  unarchivedCombinedResponsesDictionary = self->_unarchivedCombinedResponsesDictionary;
  if (!unarchivedCombinedResponsesDictionary)
  {
    if ([(NSData *)self->_cachedData length])
    {
      v4 = MEMORY[0x277CCAAC8];
      v5 = MEMORY[0x277CBEB98];
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
      cachedData = self->_cachedData;
      v19 = 0;
      v13 = [v4 unarchivedObjectOfClasses:v11 fromData:cachedData error:&v19];
      v14 = v19;
      v15 = self->_unarchivedCombinedResponsesDictionary;
      self->_unarchivedCombinedResponsesDictionary = v13;

      if (v14)
      {
        v16 = NMLogForCategory(5);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [NMSMusicRecommendationsRequest _unarchivedCombinedResponsesDictionary];
        }
      }
    }

    else
    {
      v17 = self->_unarchivedCombinedResponsesDictionary;
      self->_unarchivedCombinedResponsesDictionary = 0;
    }

    unarchivedCombinedResponsesDictionary = self->_unarchivedCombinedResponsesDictionary;
  }

  return unarchivedCombinedResponsesDictionary;
}

- (BOOL)_isLibraryPinsSupported
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v4 firstObject];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
  v7 = [firstObject supportsCapability:v6];

  if (!v7)
  {
    return 0;
  }

  mEMORY[0x277CD5D78] = [MEMORY[0x277CD5D78] sharedCloudController];
  isCloudLibraryEnabled = [mEMORY[0x277CD5D78] isCloudLibraryEnabled];

  return isCloudLibraryEnabled;
}

+ (id)_recentMusicDirectory
{
  if (_recentMusicDirectory_onceToken != -1)
  {
    +[NMSMusicRecommendationsRequest _recentMusicDirectory];
  }

  v3 = MEMORY[0x277CBEBC0];
  v4 = _recentMusicDirectory_path;

  return [v3 fileURLWithPath:v4 isDirectory:1];
}

void __55__NMSMusicRecommendationsRequest__recentMusicDirectory__block_invoke()
{
  v0 = +[NMSPathUtil recentMusicDirectory];
  v1 = _recentMusicDirectory_path;
  _recentMusicDirectory_path = v0;

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 createDirectoryAtPath:_recentMusicDirectory_path withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_heavyRotationCacheURL
{
  _recentMusicDirectory = [objc_opt_class() _recentMusicDirectory];
  v3 = [_recentMusicDirectory URLByAppendingPathComponent:@"HeavyRotationResponse"];

  return v3;
}

- (id)_starterPackMultiplexCacheURL
{
  _recentMusicDirectory = [objc_opt_class() _recentMusicDirectory];
  v3 = [_recentMusicDirectory URLByAppendingPathComponent:@"StarterPackMultiplexResponse"];

  return v3;
}

- (id)_starterPackRoomCacheURL
{
  _recentMusicDirectory = [objc_opt_class() _recentMusicDirectory];
  v3 = [_recentMusicDirectory URLByAppendingPathComponent:@"StarterPackRoomResponse"];

  return v3;
}

- (void)_writeData:(id)data toURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  if (dataCopy)
  {
    v11 = 0;
    v7 = [dataCopy writeToURL:lCopy options:1 error:&v11];
    v8 = v11;
    v9 = NMLogForCategory(5);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = dataCopy;
        v14 = 2112;
        v15 = lCopy;
        _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "[Recommendations] Cached data %@ at url %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NMSMusicRecommendationsRequest _writeData:toURL:];
    }
  }

  else
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NMSMusicRecommendationsRequest _writeData:toURL:];
    }
  }
}

- (void)_continueToLegacyForYouRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993E0B8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performForYouRequestWithCompletion:v14];
}

void __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setForYouResponse:*(a1 + 48)];
    v4 = [*(a1 + 40) numberOfRecentMusicModelObjects];
    v5 = [*(a1 + 40) minimumNumberOfRecentMusicModelObjects];
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    if (v4 >= v5)
    {

      return [v7 _continueToProcessResultsWithContext:v6 queue:v8 responseHandler:v9];
    }

    else
    {

      return [v7 _continueToLibraryRecentMusicRecommedationsWithContext:v6 queue:v8 responseHandler:v9];
    }
  }
}

- (void)_continueToLegacyEditorialRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993E0E0;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performEditorialBrowseRequestWithCompletion:v14];
}

void __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setEditorialBrowseResponse:*(a1 + 48)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);

    return [v5 _continueToProcessResultsWithContext:v4 queue:v6 responseHandler:v7];
  }
}

- (void)_performForYouRequestWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(NMSModelForYouRecommendationsRequest);
  [(NMSModelForYouRecommendationsRequest *)v5 setLabel:@"ForYou Music Recommendations"];
  v6 = +[(MPModelForYouRecommendationsRequest *)NMSModelForYouRecommendationsRequest];
  [(NMSModelForYouRecommendationsRequest *)v5 setSectionProperties:v6];

  v7 = +[(MPModelForYouRecommendationsRequest *)NMSModelForYouRecommendationsRequest];
  [(NMSModelForYouRecommendationsRequest *)v5 setItemProperties:v7];

  [(MPStoreModelRequest *)v5 setClientIdentifier:@"NanoMusic"];
  [(MPStoreModelRequest *)v5 setClientVersion:@"2.0"];
  if (self->_useCachedDataOnly)
  {
    [(NMSModelForYouRecommendationsRequest *)v5 setNms_useCachedDataOnly:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v9 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"recommendationsArray"];
    [(NMSModelForYouRecommendationsRequest *)v5 setNms_cachedRecommendationsArray:v9];

    _unarchivedCombinedResponsesDictionary2 = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v11 = [_unarchivedCombinedResponsesDictionary2 objectForKeyedSubscript:@"storeItemMetadataResults"];
    [(NMSModelForYouRecommendationsRequest *)v5 setNms_cachedStoreItemMetadataResults:v11];

    v12 = @"Defaults";
  }

  else
  {
    v12 = @"Store";
  }

  v13 = NMLogForCategory(5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (ForYou) Performing request: %{public}@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke;
  v16[3] = &unk_27993E108;
  v17 = v12;
  v18 = v5;
  v19 = completionCopy;
  v14 = completionCopy;
  v15 = v5;
  [(NMSModelForYouRecommendationsRequest *)v15 performWithResponseHandler:v16];
}

void __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (ForYou) Got response: %@", &v11, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_performEditorialBrowseRequestWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(NMSModelEditorialRecommendationsRequest);
  [(NMSModelEditorialRecommendationsRequest *)v5 setLabel:@"Editorial Recommendations"];
  v6 = +[(MPModelStoreBrowseRequest *)NMSModelEditorialRecommendationsRequest];
  [(NMSModelEditorialRecommendationsRequest *)v5 setSectionProperties:v6];

  v7 = +[(MPModelStoreBrowseRequest *)NMSModelEditorialRecommendationsRequest];
  [(NMSModelEditorialRecommendationsRequest *)v5 setItemProperties:v7];

  [(MPStoreModelRequest *)v5 setClientIdentifier:@"NanoMusic"];
  [(MPStoreModelRequest *)v5 setClientVersion:@"2.0"];
  if (self->_useCachedDataOnly)
  {
    [(NMSModelEditorialRecommendationsRequest *)v5 setNms_useCachedDataOnly:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v9 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"editorial-cachedLoadedOutput"];
    [(NMSModelEditorialRecommendationsRequest *)v5 setNms_cachedLoadedOutput:v9];

    v10 = @"Defaults";
  }

  else
  {
    v10 = @"Store";
  }

  v11 = NMLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Editorial) Performing request: %{public}@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke;
  v14[3] = &unk_27993E130;
  v15 = v10;
  v16 = v5;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = v5;
  [(NMSModelEditorialRecommendationsRequest *)v13 performWithResponseHandler:v14];
}

void __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Editorial) Got response: %@", &v11, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_performLegacyLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = MEMORY[0x277CD5EB8];
  objectsCopy = objects;
  v8 = objc_alloc_init(v6);
  [v8 setShouldLibraryAdd:0];
  [v8 setModelObjects:objectsCopy];

  v9 = NMLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Performing request: %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke;
  v12[3] = &unk_27993E090;
  v13 = v8;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [v11 performWithResponseHandler:v12];
}

void __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Got response: %@", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_writeData:toURL:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end