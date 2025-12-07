@interface ATXRunningBoardAssertion
+ (void)performWorkWithFinishTaskAssertionName:(id)name block:(id)block;
@end

@implementation ATXRunningBoardAssertion

+ (void)performWorkWithFinishTaskAssertionName:(id)name block:(id)block
{
  v34[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v10 = [processName isEqualToString:@"duetexpertd"];

  if (v10)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    if (performWorkWithFinishTaskAssertionName_block__onceToken != -1)
    {
      +[ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:block:];
    }

    v11 = objc_alloc(MEMORY[0x1E69C7548]);
    v12 = performWorkWithFinishTaskAssertionName_block__target;
    v34[0] = performWorkWithFinishTaskAssertionName_block__attribute;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v14 = [v11 initWithExplanation:nameCopy target:v12 attributes:v13];

    v29 = 0;
    v15 = [v14 acquireWithError:&v29];
    v16 = v29;
    v17 = __atxlog_handle_default(v16);
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        *buf = 138543618;
        v31 = v19;
        v32 = 2048;
        selfCopy2 = self;
        v20 = v19;
        _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] Acquired Process assertion", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:self block:?];
    }

    blockCopy[2](blockCopy);
    v28 = 0;
    v21 = [v14 invalidateSyncWithError:&v28];
    v22 = v28;

    v24 = __atxlog_handle_default(v23);
    v25 = v24;
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138543618;
        v31 = v26;
        v32 = 2048;
        selfCopy2 = self;
        v27 = v26;
        _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] invalidated Process assertion", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:self block:?];
    }
  }
}

uint64_t __73__ATXRunningBoardAssertion_performWorkWithFinishTaskAssertionName_block___block_invoke()
{
  v0 = [MEMORY[0x1E69C7640] currentProcess];
  v1 = performWorkWithFinishTaskAssertionName_block__target;
  performWorkWithFinishTaskAssertionName_block__target = v0;

  v2 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskNow"];
  v3 = performWorkWithFinishTaskAssertionName_block__attribute;
  performWorkWithFinishTaskAssertionName_block__attribute = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (void)performWorkWithFinishTaskAssertionName:(uint64_t)a1 block:.cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_13(v1);
  OUTLINED_FUNCTION_1_1(&dword_1BF549000, v3, v4, "[%{public}@ %p] Failed to acquire Process assertion with error: %@", v5, v6, v7, v8);
}

+ (void)performWorkWithFinishTaskAssertionName:(uint64_t)a1 block:.cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_13(v1);
  OUTLINED_FUNCTION_1_1(&dword_1BF549000, v3, v4, "[%{public}@ %p] Failed to invalidate Process assertion with error: %@", v5, v6, v7, v8);
}

@end