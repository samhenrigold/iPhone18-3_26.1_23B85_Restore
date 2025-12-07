@interface FSModuleExtension(Project)
@end

@implementation FSModuleExtension(Project)

- (void)fskitdIsClient:()Project .cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendWipeResource:()Project replyHandler:.cold.3(void *a1)
{
  v1 = [a1 bundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)sendIsVolumeUsed:()Project bundle:replyHandler:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s:start:volumeID(%@):bundleID(%@)", v2);
}

- (void)sendIsVolumeUsed:()Project bundle:replyHandler:.cold.3(void *a1)
{
  v1 = [a1 bundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)sendConfigureUserClientWithReplyHandler:()Project .cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendConfigureUserClientWithReplyHandler:()Project .cold.3(void *a1)
{
  v1 = [a1 bundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end