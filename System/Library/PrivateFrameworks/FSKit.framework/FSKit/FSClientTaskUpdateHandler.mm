@interface FSClientTaskUpdateHandler
- (void)taskStatusUpdate:(id)update;
@end

@implementation FSClientTaskUpdateHandler

- (void)taskStatusUpdate:(id)update
{
  updateCopy = update;
  v5 = fskit_std_log(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSClientTaskUpdateHandler taskStatusUpdate:updateCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = _Block_copy(selfCopy->_taskHandler);
  objc_sync_exit(selfCopy);

  if (v7)
  {
    v8 = v7[2](v7, updateCopy, 0);
  }

  v9 = fskit_std_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSClientTaskUpdateHandler taskStatusUpdate:updateCopy];
  }
}

- (void)taskStatusUpdate:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 taskID];
  [a1 taskState];
  v9 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_24A929000, v3, v4, "%s:start:taskID(%@):taskState(%d)", v5, v6, v7, v8, v9);
}

- (void)taskStatusUpdate:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 taskID];
  [a1 taskState];
  v9 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_24A929000, v3, v4, "%s:end:taskID(%@):taskState(%d)", v5, v6, v7, v8, v9);
}

@end