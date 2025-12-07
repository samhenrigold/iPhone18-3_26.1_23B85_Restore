@interface BRCLocalItem(BRCSharedToMeTopLevel)
- (void)sharedAliasItemID;
@end

@implementation BRCLocalItem(BRCSharedToMeTopLevel)

- (void)diffAgainstServerAliasItem:()BRCSharedToMeTopLevel .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)sharedAliasItemID
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)structureRecordIDInZone:()BRCSharedToMeTopLevel .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)structureRecordBeingDeadInServerTruth:()BRCSharedToMeTopLevel shouldPCSChainStatus:inZone:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)structureRecordBeingDeadInServerTruth:()BRCSharedToMeTopLevel shouldPCSChainStatus:inZone:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _serverZone.isSharedZone%@", v5, v6, v7, v8);
  }
}

- (void)structureRecordBeingDeadInServerTruth:()BRCSharedToMeTopLevel shouldPCSChainStatus:inZone:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: aliasZone.isPrivateZone%@", v5, v6, v7, v8);
  }
}

- (void)structureRecordBeingDeadInServerTruth:()BRCSharedToMeTopLevel shouldPCSChainStatus:inZone:.cold.4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] %@ has been CZM but we don't know it yet.  Not allowing alias sync%@", v1, 0x16u);
}

- (void)insertTombstoneAliasRecordInZone:()BRCSharedToMeTopLevel .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Strange... An alias exists which isn't dead. Converting it to be dead for %@%@", v1, 0x16u);
}

- (void)insertTombstoneAliasRecordInZone:()BRCSharedToMeTopLevel .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No need to insert a dead alias because there is no server item%@", &v2, 0xCu);
}

- (void)updateParentZoneRowID:()BRCSharedToMeTopLevel .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v5, v6, v7, v8);
  }
}

- (void)updateParentZoneRowID:()BRCSharedToMeTopLevel .cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: existingAlias.isDead%@", v5, v6, v7, v8);
  }
}

- (void)updateParentZoneRowID:()BRCSharedToMeTopLevel .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't update to nil zone row id%@", &v2, 0xCu);
}

@end