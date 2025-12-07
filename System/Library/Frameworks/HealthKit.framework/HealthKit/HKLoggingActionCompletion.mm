@interface HKLoggingActionCompletion
@end

@implementation HKLoggingActionCompletion

void ___HKLoggingActionCompletion_block_invoke(void *a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v7 = a1[4];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = a1[7];
      v10 = 138543618;
      v11 = v8;
      v12 = 2082;
      v13 = v9;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s: Succeeded", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    ___HKLoggingActionCompletion_block_invoke_cold_1();
  }

  (*(a1[6] + 16))();
}

@end