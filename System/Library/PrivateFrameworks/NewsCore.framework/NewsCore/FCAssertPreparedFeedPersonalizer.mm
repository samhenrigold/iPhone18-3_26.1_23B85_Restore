@interface FCAssertPreparedFeedPersonalizer
- (FCAssertPreparedFeedPersonalizer)init;
- (FCAssertPreparedFeedPersonalizer)initWithTarget:(id)target;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count;
- (id)limitItemsByMinimumItemQuality:(id)quality;
- (id)rankTagIDsDescending:(id)descending;
- (id)scoresForTagIDs:(id)ds;
- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set;
- (void)fetchAggregateMapForPersonalizingItem:(id)item completion:(id)completion;
- (void)prepareForUseWithCompletionHandler:(id)handler;
@end

@implementation FCAssertPreparedFeedPersonalizer

- (FCAssertPreparedFeedPersonalizer)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAssertPreparedFeedPersonalizer init]";
    v10 = 2080;
    v11 = "FCAssertPreparedFeedPersonalizer.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAssertPreparedFeedPersonalizer init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAssertPreparedFeedPersonalizer)initWithTarget:(id)target
{
  v19 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (!targetCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "target"];
    *buf = 136315906;
    v12 = "[FCAssertPreparedFeedPersonalizer initWithTarget:]";
    v13 = 2080;
    v14 = "FCAssertPreparedFeedPersonalizer.m";
    v15 = 1024;
    v16 = 31;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCAssertPreparedFeedPersonalizer;
  v6 = [(FCAssertPreparedFeedPersonalizer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, target);
  }

  return v7;
}

- (id)rankTagIDsDescending:(id)descending
{
  descendingCopy = descending;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v6 = [target rankTagIDsDescending:descendingCopy];

  return v6;
}

- (id)scoresForTagIDs:(id)ds
{
  dsCopy = ds;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v6 = [target scoresForTagIDs:dsCopy];

  return v6;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__FCAssertPreparedFeedPersonalizer_prepareForUseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C37BC0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [target prepareForUseWithCompletionHandler:v7];
}

uint64_t __71__FCAssertPreparedFeedPersonalizer_prepareForUseWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreparedForUse:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)limitItemsByMinimumItemQuality:(id)quality
{
  qualityCopy = quality;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v6 = [target limitItemsByMinimumItemQuality:qualityCopy];

  return v6;
}

- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count
{
  rateCopy = rate;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v10 = [target limitItemsByFlowRate:rateCopy timeInterval:count publisherCount:interval];

  return v10;
}

- (double)decayedPublisherDiversificationPenalty
{
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  [target decayedPublisherDiversificationPenalty];
  v4 = v3;

  return v4;
}

- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set
{
  itemsCopy = items;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v10 = [target sortItems:itemsCopy options:options configurationSet:set];

  return v10;
}

- (void)fetchAggregateMapForPersonalizingItem:(id)item completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  target = [(FCAssertPreparedFeedPersonalizer *)self target];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    target2 = [(FCAssertPreparedFeedPersonalizer *)self target];
    [target2 fetchAggregateMapForPersonalizingItem:itemCopy completion:completionCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    target2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
    v11 = 136315906;
    v12 = "[FCAssertPreparedFeedPersonalizer fetchAggregateMapForPersonalizingItem:completion:]";
    v13 = 2080;
    v14 = "FCAssertPreparedFeedPersonalizer.m";
    v15 = 1024;
    v16 = 104;
    v17 = 2114;
    v18 = target2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

LABEL_5:
}

@end