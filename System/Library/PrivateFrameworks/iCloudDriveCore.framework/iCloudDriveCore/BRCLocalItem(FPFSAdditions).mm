@interface BRCLocalItem(FPFSAdditions)
- (void)markFromInitialScan;
@end

@implementation BRCLocalItem(FPFSAdditions)

- (void)markFromInitialScan
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)_markBouncedToNextAvailableBounceNumber:()FPFSAdditions ignoreSelf:.cold.1(uint8_t *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: ![alreadyBouncedName isEqualToString:bouncedLogicalName]%@", a1, 0xCu);
  }
}

- (void)_updateAppLibraryFromParent:()FPFSAdditions .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _appLibrary%@", v5, v6, v7, v8);
  }
}

- (void)updateFromServerItem:()FPFSAdditions .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)updateToBeUntrashedWithParent:()FPFSAdditions .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: [_parentZoneRowID br_isEqualToNumber:newParentID.zoneRowID]%@", v5, v6, v7, v8);
  }
}

- (void)markImportedItemAsSharedWithImportBookmark:()FPFSAdditions parent:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _clientZone != nil%@", v5, v6, v7, v8);
  }
}

+ (void)computeItemScopeFromParentIsRoot:()FPFSAdditions parentIsDocuments:parentScope:logicalName:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: parentScope == BRC_ITEM_SCOPE_DOCUMENTS%@", v5, v6, v7, v8);
  }
}

@end