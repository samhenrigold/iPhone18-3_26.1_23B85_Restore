@interface BRCClientZone(BRCZoneReset)
@end

@implementation BRCClientZone(BRCZoneReset)

- (void)_reset:()BRCZoneReset completionHandler:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 mangledID];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[NOTIF] Can't reset %@ because its deactivated%@", v6, 0x16u);
}

- (void)_reset:()BRCZoneReset completionHandler:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: not implemented%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_deleteRelevantPackageItemsWithDB:()BRCZoneReset error:.cold.1(void *a1)
{
  v1 = [a1 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] failed pruning client_pkg_upload_items: %@%@", v4, v5, v6, v7);
}

- (void)_performHardResetOnClientItemsAndWantsUnlink:()BRCZoneReset db:error:.cold.1(void *a1)
{
  v1 = [a1 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] failed pruning client_items: %@%@", v4, v5, v6, v7);
}

- (void)_performAfterResetServerAndClientSharedTruthsAndUnlinkData:()BRCZoneReset .cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self.isSharedZone%@", &v2, 0xCu);
  }
}

@end