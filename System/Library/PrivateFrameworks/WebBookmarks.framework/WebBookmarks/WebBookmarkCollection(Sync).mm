@interface WebBookmarkCollection(Sync)
- (void)_markSpecialBookmarks;
- (void)beginSyncTransaction;
@end

@implementation WebBookmarkCollection(Sync)

- (void)_markSpecialBookmarks
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)mergeWithBookmarksDictionary:()Sync clearHidden:clearSyncData:error:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)mergeWithBookmarksDictionary:()Sync clearHidden:clearSyncData:error:.cold.3()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_syncSetString:()Sync forKey:updatedExistingKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_272C20000, v0, v1, "Failed to set sync properties value for key %{private}@. Sqlite error: %d", v2);
}

- (void)setSyncData:()Sync forKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_272C20000, v0, v1, "Failed to set sync data for key %{public}@. Sqlite error: %d", v2);
}

- (void)beginSyncTransaction
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
}

@end