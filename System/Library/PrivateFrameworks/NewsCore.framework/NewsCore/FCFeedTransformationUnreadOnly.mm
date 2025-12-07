@interface FCFeedTransformationUnreadOnly
+ (id)transformationWithReadingHistory:(id)history;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationUnreadOnly

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
  history = [(FCFeedTransformationUnreadOnly *)self history];

  if (!history && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't filter read articles without history"];
    *buf = 136315906;
    v15 = "[FCFeedTransformationUnreadOnly transformFeedItems:]";
    v16 = 2080;
    v17 = "FCFeedTransformationUnreadOnly.m";
    v18 = 1024;
    v19 = 31;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  history2 = [(FCFeedTransformationUnreadOnly *)self history];
  allReadArticleIDs = [history2 allReadArticleIDs];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__FCFeedTransformationUnreadOnly_transformFeedItems___block_invoke;
  v12[3] = &unk_1E7C37898;
  v13 = allReadArticleIDs;
  v8 = allReadArticleIDs;
  v9 = [itemsCopy fc_arrayOfObjectsPassingTest:v12];

  return v9;
}

uint64_t __53__FCFeedTransformationUnreadOnly_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 articleID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end