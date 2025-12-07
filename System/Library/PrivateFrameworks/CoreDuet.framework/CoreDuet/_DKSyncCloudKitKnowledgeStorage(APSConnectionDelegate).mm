@interface _DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate)
@end

@implementation _DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate)

- (void)connection:()APSConnectionDelegate didReceivePublicToken:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)connection:()APSConnectionDelegate didReceiveIncomingMessage:.cold.1()
{
  OUTLINED_FUNCTION_16();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_16_0() topic];
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)connection:()APSConnectionDelegate didReceiveIncomingMessage:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)connection:()APSConnectionDelegate didReceiveIncomingMessage:.cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end