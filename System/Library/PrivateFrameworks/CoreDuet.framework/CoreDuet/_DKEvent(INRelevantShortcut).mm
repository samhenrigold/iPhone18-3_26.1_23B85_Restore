@interface _DKEvent(INRelevantShortcut)
- (void)relevantShortcut;
@end

@implementation _DKEvent(INRelevantShortcut)

- (void)relevantShortcut
{
  v6 = *MEMORY[0x1E69E9840];
  stream = [self stream];
  name = [stream name];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failure to convert event of stream %@ to a relevant shortcut", v5, 0xCu);
}

@end