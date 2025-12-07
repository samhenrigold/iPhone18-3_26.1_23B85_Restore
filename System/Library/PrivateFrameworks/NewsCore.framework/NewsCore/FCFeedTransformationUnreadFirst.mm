@interface FCFeedTransformationUnreadFirst
+ (id)transformationWithReadingHistory:(id)history;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationUnreadFirst

+ (id)transformationWithReadingHistory:(id)history
{
  historyCopy = history;
  v4 = objc_opt_new();
  [v4 setHistory:historyCopy];

  return v4;
}

- (id)transformFeedItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  history = [(FCFeedTransformationUnreadFirst *)self history];

  if (!history && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't sort unread articles to the front without history"];
    *buf = 136315906;
    v15 = "[FCFeedTransformationUnreadFirst transformFeedItems:]";
    v16 = 2080;
    v17 = "FCFeedTransformationUnreadFirst.m";
    v18 = 1024;
    v19 = 31;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  history2 = [(FCFeedTransformationUnreadFirst *)self history];
  allReadArticleIDs = [history2 allReadArticleIDs];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__FCFeedTransformationUnreadFirst_transformFeedItems___block_invoke;
  v12[3] = &unk_1E7C3B4F0;
  v13 = allReadArticleIDs;
  v8 = allReadArticleIDs;
  v9 = [itemsCopy sortedArrayWithOptions:16 usingComparator:v12];

  return v9;
}

uint64_t __54__FCFeedTransformationUnreadFirst_transformFeedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 articleID];
  v8 = [v5 containsObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 articleID];

  v11 = [v9 containsObject:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v14 = [v12 compare:v13];

  return v14;
}

@end