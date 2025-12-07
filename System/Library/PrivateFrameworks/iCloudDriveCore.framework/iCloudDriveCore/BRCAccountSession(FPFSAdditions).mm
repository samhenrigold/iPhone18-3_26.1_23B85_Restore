@interface BRCAccountSession(FPFSAdditions)
- (void)invalidateExtensionXPCClient;
@end

@implementation BRCAccountSession(FPFSAdditions)

- (void)sendNonMigratedItemTelemetryWithfileIDs:()FPFSAdditions .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)invalidateExtensionXPCClient
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = self;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Invalidating %lu xpc clients%@", buf, 0x16u);
}

- (void)_sendFPFSImportFinishedTelemetryEvent:()FPFSAdditions .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_sendFPFSImportFinishedTelemetryEvent:()FPFSAdditions .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 investigation];
  v6 = [v5 fpfsMigrationInvestigation];
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished FPFS migration investigation info: %@%@", v7, 0x16u);
}

@end