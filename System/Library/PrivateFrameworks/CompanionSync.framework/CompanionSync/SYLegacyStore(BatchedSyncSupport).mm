@interface SYLegacyStore(BatchedSyncSupport)
@end

@implementation SYLegacyStore(BatchedSyncSupport)

- (void)_sendBatchChunk:()BatchedSyncSupport withState:then:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  [OUTLINED_FUNCTION_14() count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)processBatchChunkAtIndex:()BatchedSyncSupport encodedObjects:error:.cold.2(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_14() count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)processBatchChunkAck:()BatchedSyncSupport .cold.4(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1DF835000, a2, OS_LOG_TYPE_ERROR, "Received unexpected batch sync chunk ACK: %u", v2, 8u);
}

@end