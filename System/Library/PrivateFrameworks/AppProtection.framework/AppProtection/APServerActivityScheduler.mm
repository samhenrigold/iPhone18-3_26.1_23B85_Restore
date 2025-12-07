@interface APServerActivityScheduler
- (void)registerWeeklyActivityWithName:(id)name work:(id)work;
@end

@implementation APServerActivityScheduler

- (void)registerWeeklyActivityWithName:(id)name work:(id)work
{
  workCopy = work;
  nameCopy = name;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_int64(v7, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CF0]);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x1E69E9D88], 1);
  uTF8String = [nameCopy UTF8String];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke;
  handler[3] = &unk_1E6EE89C0;
  v11 = workCopy;
  v9 = workCopy;
  xpc_activity_register(uTF8String, v7, handler);
}

void __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = xpc_activity_set_state(v3, 4);
    if (v4)
    {
      v5 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_2;
      v7[3] = &unk_1E6EE8948;
      v8 = v3;
      (*(v5 + 16))(v5, v7);
      v6 = v8;
    }

    else
    {
      v6 = APDefaultFrameworkLog(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_cold_1(v6);
      }
    }
  }
}

void __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_2(uint64_t a1)
{
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  if (!v1)
  {
    v2 = APDefaultFrameworkLog(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_2_cold_1(v2);
    }
  }
}

@end