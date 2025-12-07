@interface BRCPackageItem(DatabaseMethods)
@end

@implementation BRCPackageItem(DatabaseMethods)

- (void)saveToDBWithSession:()DatabaseMethods .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: should never attempt to save tombstones to db%@", &v2, 0xCu);
}

- (void)saveToDBWithSession:()DatabaseMethods .cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: doInsert != nil%@", &v2, 0xCu);
  }
}

- (void)saveToDBWithSession:()DatabaseMethods .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: saving package items should really always work%@", &v2, 0xCu);
}

@end