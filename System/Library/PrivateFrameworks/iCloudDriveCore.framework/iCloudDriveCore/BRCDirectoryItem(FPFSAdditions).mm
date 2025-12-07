@interface BRCDirectoryItem(FPFSAdditions)
- (void)_insertZombieForCrossZoneMove;
- (void)handlePathMatchConflictForDirectoryCreationIfNecessary;
- (void)markDirectoryMergeOrCrossZonePropagationComplete;
@end

@implementation BRCDirectoryItem(FPFSAdditions)

- (void)_signalPropagationToChildrenForce:()FPFSAdditions .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = BRCItemFieldsPrettyPrint([a1 diffAgainstOriginalItem]);
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_fault_impl(&dword_223E7A000, a3, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We seem to be in a lost scan loop.  Breaking the chain (diffs %@)%@", v6, 0x16u);
}

- (void)markRemovedFromFilesystemRecursively:()FPFSAdditions .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 16) changeState];
  v6 = [v5 changeToken];
  v7 = [v6 descriptionWithContext:0];
  OUTLINED_FUNCTION_1_0();
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Setting deletion change token to %@ because item contains a dir faults%@", v8, 0x16u);
}

- (void)markDirectoryMergeOrCrossZonePropagationComplete
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: [zombieItem isLost]%@", v5, v6, v7, v8);
  }
}

- (void)handlePathMatchConflictForDirectoryCreationIfNecessary
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Bouncing existing item due to path-match conflict with Documents folder%@", &v2, 0xCu);
}

- (void)_insertZombieForCrossZoneMove
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

@end