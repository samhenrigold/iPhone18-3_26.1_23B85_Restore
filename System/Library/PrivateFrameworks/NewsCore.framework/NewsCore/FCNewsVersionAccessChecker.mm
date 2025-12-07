@interface FCNewsVersionAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (FCNewsVersionAccessChecker)init;
@end

@implementation FCNewsVersionAccessChecker

- (FCNewsVersionAccessChecker)init
{
  v3.receiver = self;
  v3.super_class = FCNewsVersionAccessChecker;
  return [(FCAccessChecker *)&v3 init];
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  v14 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v7 = "[FCNewsVersionAccessChecker canSynchronouslyCheckAccessToItem:]";
    v8 = 2080;
    v9 = "FCNewsVersionAccessChecker.m";
    v10 = 1024;
    v11 = 23;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return 1;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v16 = "[FCNewsVersionAccessChecker hasAccessToItem:blockedReason:error:]";
    v17 = 2080;
    v18 = "FCNewsVersionAccessChecker.m";
    v19 = 1024;
    v20 = 31;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = +[FCRestrictions sharedInstance];
  v8 = [v7 isNewsVersionAllowed:{objc_msgSend(itemCopy, "minimumNewsVersion")}];

  if (reason)
  {
    if ((v8 & 1) == 0)
    {
      *reason = 1;
      v9 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        identifier = [itemCopy identifier];
        minimumNewsVersion = [itemCopy minimumNewsVersion];
        *buf = 138543618;
        v16 = identifier;
        v17 = 2048;
        v18 = minimumNewsVersion;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not accessible because it requires minimum News version %llu", buf, 0x16u);
      }
    }
  }

  return v8;
}

@end