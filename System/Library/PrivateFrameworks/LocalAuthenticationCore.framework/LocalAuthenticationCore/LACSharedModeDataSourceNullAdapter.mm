@interface LACSharedModeDataSourceNullAdapter
- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion;
@end

@implementation LACSharedModeDataSourceNullAdapter

- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = LACLogSharedMode(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", &v9, 0xCu);
  }

  v7 = +[LACSharedMode defaultSharedMode];
  v8 = LACLogSharedMode(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy2 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ feature not supported in this platform %{public}@", &v9, 0x16u);
  }

  completionCopy[2](completionCopy, v7);
}

@end