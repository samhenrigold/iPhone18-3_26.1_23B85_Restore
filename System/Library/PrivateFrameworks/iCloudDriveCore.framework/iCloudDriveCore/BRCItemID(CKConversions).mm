@interface BRCItemID(CKConversions)
@end

@implementation BRCItemID(CKConversions)

- (void)structureRecordIDForItemType:()CKConversions zone:aliasTargetZoneIsShared:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end