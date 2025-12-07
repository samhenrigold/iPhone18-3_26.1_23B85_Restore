@interface BRCAccountSession(DatabaseAdditions)
@end

@implementation BRCAccountSession(DatabaseAdditions)

- (void)_getFPFSMigrationStatus:()DatabaseAdditions withError:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _clientState%@", &v2, 0xCu);
  }
}

- (void)enumerateSharedToMeItemsWithBlock:()DatabaseAdditions error:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_15(&dword_223E7A000, a2, a3, "[ERROR] Command is not supported for FPFS databases%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end