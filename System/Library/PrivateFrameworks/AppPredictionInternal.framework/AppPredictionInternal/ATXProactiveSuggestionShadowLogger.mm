@interface ATXProactiveSuggestionShadowLogger
- (ATXProactiveSuggestionShadowLogger)initWithClientModelIds:(id)ids shadowEventPublisher:(id)publisher clientModelPublisher:(id)modelPublisher contextPublisher:(id)contextPublisher bookmarkURLPath:(id)path;
- (id)newBookmarkWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata;
- (id)shadowLoggingPublisher;
- (void)enumerateShadowLoggingResultsWithBlock:(id)block clientModelCacheUpdatedBlock:(id)updatedBlock completionBlock:(id)completionBlock;
- (void)enumerateShadowLoggingResultsWithBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation ATXProactiveSuggestionShadowLogger

- (ATXProactiveSuggestionShadowLogger)initWithClientModelIds:(id)ids shadowEventPublisher:(id)publisher clientModelPublisher:(id)modelPublisher contextPublisher:(id)contextPublisher bookmarkURLPath:(id)path
{
  idsCopy = ids;
  publisherCopy = publisher;
  modelPublisherCopy = modelPublisher;
  contextPublisherCopy = contextPublisher;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = ATXProactiveSuggestionShadowLogger;
  v17 = [(ATXProactiveSuggestionShadowLogger *)&v23 init];
  if (v17)
  {
    v18 = [idsCopy copy];
    clientModelIds = v17->_clientModelIds;
    v17->_clientModelIds = v18;

    objc_storeStrong(&v17->_shadowEventPublisher, publisher);
    objc_storeStrong(&v17->_clientModelPublisher, modelPublisher);
    objc_storeStrong(&v17->_contextPublisher, contextPublisher);
    v20 = [pathCopy copy];
    bookmarkURLPath = v17->_bookmarkURLPath;
    v17->_bookmarkURLPath = v20;
  }

  return v17;
}

- (void)enumerateShadowLoggingResultsWithBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_completionBlock___block_invoke;
  v12[3] = &unk_2785A0740;
  v13 = blockCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_completionBlock___block_invoke_3;
  v10[3] = &unk_2785A0788;
  v11 = completionBlockCopy;
  v8 = completionBlockCopy;
  v9 = blockCopy;
  [(ATXProactiveSuggestionShadowLogger *)self enumerateShadowLoggingResultsWithBlock:v12 clientModelCacheUpdatedBlock:&__block_literal_global_214 completionBlock:v10];
}

- (void)enumerateShadowLoggingResultsWithBlock:(id)block clientModelCacheUpdatedBlock:(id)updatedBlock completionBlock:(id)completionBlock
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  completionBlockCopy = completionBlock;
  v11 = completionBlockCopy;
  bookmarkURLPath = self->_bookmarkURLPath;
  if (bookmarkURLPath)
  {
    completionBlockCopy = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:bookmarkURLPath maxFileSize:kATXProactiveSuggestionShadowLoggerMaxOnDiskFileSizeInBytes versionNumber:&unk_283A57488];
    v13 = completionBlockCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = __atxlog_handle_blending_ecosystem(completionBlockCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%@ - starting enumeration with bookmark: %@", buf, 0x16u);
  }

  shadowLoggingPublisher = [(ATXProactiveSuggestionShadowLogger *)self shadowLoggingPublisher];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v40 = 0;
  bookmark = [v13 bookmark];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke;
  v30[3] = &unk_2785A07B0;
  v30[4] = self;
  v19 = v11;
  v31 = v19;
  v32 = buf;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke_24;
  v27[3] = &unk_2785A07D8;
  v20 = updatedBlockCopy;
  v28 = v20;
  v21 = blockCopy;
  v29 = v21;
  v22 = [shadowLoggingPublisher sinkWithBookmark:bookmark completion:v30 receiveInput:v27];

  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = __atxlog_handle_blending_ecosystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *v33 = 138412802;
      v34 = v26;
      v35 = 1024;
      v36 = 1;
      v37 = 2112;
      v38 = 0;
      _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%@ - invoking outside completion handler with success: %u, error: %@", v33, 0x1Cu);
    }

    (*(v19 + 2))(v19, 1, 0);
    objc_autoreleasePoolPop(v23);
  }

  _Block_object_dispose(buf, 8);
}

void __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];
  v8 = [v5 state];
  v9 = v8 == 0;
  v10 = __atxlog_handle_blending_ecosystem(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412802;
    v25 = v12;
    v26 = 1024;
    v27 = v8 == 0;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - sinkWithBookmark complete with completion success: %u, error: %@", buf, 0x1Cu);
  }

  if (!v8 && !v7)
  {
    v13 = a1[4];
    v14 = v13[2];
    if (v14)
    {
      v15 = [v13 newBookmarkWithURLPath:v14 versionNumber:&unk_283A57488 bookmark:v6 metadata:0];
      v23 = 0;
      v9 = [v15 saveBookmarkWithError:&v23];
      v7 = v23;
      v16 = __atxlog_handle_blending_ecosystem(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138412802;
        v25 = v18;
        v26 = 1024;
        v27 = v9;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%@ - saved new bookmark with success: %u, error: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  v19 = objc_autoreleasePoolPush();
  v20 = __atxlog_handle_blending_ecosystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138412802;
    v25 = v22;
    v26 = 1024;
    v27 = v9;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%@ - invoking completion handler with success: %u, error: %@", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  objc_autoreleasePoolPop(v19);
}

void __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke_24(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 32;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  (*(*(a1 + v4) + 16))();
LABEL_6:
  objc_autoreleasePoolPop(v3);
}

- (id)shadowLoggingPublisher
{
  v15[2] = *MEMORY[0x277D85DE8];
  clientModelPublisher = [(ATXProactiveSuggestionShadowLogger *)self clientModelPublisher];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke;
  v14[3] = &unk_27859A798;
  v14[4] = self;
  v4 = [clientModelPublisher filterWithIsIncluded:v14];

  contextPublisher = [(ATXProactiveSuggestionShadowLogger *)self contextPublisher];
  v15[0] = contextPublisher;
  shadowEventPublisher = [(ATXProactiveSuggestionShadowLogger *)self shadowEventPublisher];
  v15[1] = shadowEventPublisher;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v8 = [v4 orderedMergeWithOthers:v7 comparator:&__block_literal_global_32_2];

  v9 = objc_opt_new();
  v10 = [v8 scanWithInitial:v9 nextPartialResult:&__block_literal_global_37];

  v11 = [v10 filterWithIsIncluded:&__block_literal_global_41_2];
  v12 = [v11 flatMapWithTransform:&__block_literal_global_44_2];

  return v12;
}

uint64_t __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [v3 clientModelId];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

ATXProactiveSuggestionShadowLoggingContextEventTuple *__60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 eventBody];
  if (v6)
  {
    v7 = [v4 shadowLoggingContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 updateWithClientModelCacheUpdate:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 updateWithContext:v6];
      }
    }

    v8 = [[ATXProactiveSuggestionShadowLoggingContextEventTuple alloc] initWithEvent:v5 shadowLoggingContext:v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

uint64_t __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 event];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 eventBody];
    if (v4)
    {
      objc_opt_class();
      v5 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

id __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 event];
  v5 = v4;
  if (!v4)
  {
    v7 = [v3 bpsPublisher];
    goto LABEL_12;
  }

  v6 = [v4 eventBody];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [v2 shadowLoggingContext];
      v9 = [v8 context];

      if (v9)
      {
        v10 = objc_alloc(MEMORY[0x277CBEAA8]);
        [v5 timestamp];
        v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
        v12 = [v8 clientModelCacheUpdates];
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_6;
        v19 = &unk_2785A0860;
        v20 = v6;
        v21 = v11;
        v22 = v8;
        v13 = v3;
        v23 = v13;
        v14 = v11;
        [v12 enumerateKeysAndObjectsUsingBlock:&v16];

        v7 = [v13 bpsPublisher];
      }

      else
      {
        v7 = [v3 bpsPublisher];
      }

      goto LABEL_11;
    }

    [v3 addObject:v6];
  }

  v7 = [v3 bpsPublisher];
LABEL_11:

LABEL_12:

  return v7;
}

void __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [ATXProactiveSuggestionShadowLoggingResult alloc];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) context];
  v9 = [(ATXProactiveSuggestionShadowLoggingResult *)v5 initWithShadowEvent:v6 shadowEventDate:v7 clientModelCacheUpdate:v4 context:v8];

  [*(a1 + 56) addObject:v9];
}

- (id)newBookmarkWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata
{
  v9 = MEMORY[0x277CEBBF8];
  metadataCopy = metadata;
  bookmarkCopy = bookmark;
  numberCopy = number;
  pathCopy = path;
  v14 = [[v9 alloc] initWithURLPath:pathCopy versionNumber:numberCopy bookmark:bookmarkCopy metadata:metadataCopy];

  return v14;
}

@end