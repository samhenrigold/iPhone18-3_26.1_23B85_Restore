@interface BRCDocumentItem(BRCFPFSAdditions)
@end

@implementation BRCDocumentItem(BRCFPFSAdditions)

- (void)_initFromPQLResultSet:()BRCFPFSAdditions session:db:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverItem%@", v5, v6, v7, v8);
  }
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverItem.isDocument%@", v5, v6, v7, v8);
  }
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isDocument%@", v5, v6, v7, v8);
  }
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.4()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isIdleOrRejected%@", v5, v6, v7, v8);
  }
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)cancelDownloadWithEtag:()BRCFPFSAdditions downloadKind:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: downloadKind == BRCDownloadKindLoser%@", v5, v6, v7, v8);
  }
}

@end