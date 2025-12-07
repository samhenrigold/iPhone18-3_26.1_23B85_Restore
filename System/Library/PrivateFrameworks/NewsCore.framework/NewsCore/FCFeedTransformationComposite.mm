@interface FCFeedTransformationComposite
- (FCFeedTransformationComposite)init;
- (FCFeedTransformationComposite)initWithFeedTransformations:(id)transformations;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationComposite

- (FCFeedTransformationComposite)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedTransformationComposite init]";
    v10 = 2080;
    v11 = "FCFeedTransformationComposite.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedTransformationComposite init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedTransformationComposite)initWithFeedTransformations:(id)transformations
{
  v19 = *MEMORY[0x1E69E9840];
  transformationsCopy = transformations;
  if (!transformationsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedTransformations"];
    *buf = 136315906;
    v12 = "[FCFeedTransformationComposite initWithFeedTransformations:]";
    v13 = 2080;
    v14 = "FCFeedTransformationComposite.m";
    v15 = 1024;
    v16 = 30;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCFeedTransformationComposite;
  v5 = [(FCFeedTransformationComposite *)&v10 init];
  if (v5)
  {
    v6 = [transformationsCopy copy];
    feedTransformations = v5->_feedTransformations;
    v5->_feedTransformations = v6;
  }

  return v5;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  shouldLogTransformationResults = [(FCFeedTransformationComposite *)self shouldLogTransformationResults];
  feedTransformations = [(FCFeedTransformationComposite *)self feedTransformations];
  if (shouldLogTransformationResults)
  {
    FCApplyFeedTransformationsAndLog(itemsCopy, feedTransformations);
  }

  else
  {
    FCApplyFeedTransformations(itemsCopy, feedTransformations);
  }
  v7 = ;

  return v7;
}

@end