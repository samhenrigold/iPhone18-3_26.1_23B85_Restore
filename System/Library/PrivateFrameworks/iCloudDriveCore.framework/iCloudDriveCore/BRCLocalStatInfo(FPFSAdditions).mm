@interface BRCLocalStatInfo(FPFSAdditions)
@end

@implementation BRCLocalStatInfo(FPFSAdditions)

- (void)_updateStatAliasMeta:()FPFSAdditions .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: aliasItem.isBRAlias%@", v5, v6, v7, v8);
  }
}

- (void)initWithImportObject:()FPFSAdditions error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

+ (void)_finderTagsFromImportObject:()FPFSAdditions .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

+ (void)_finderTagsFromImportObject:()FPFSAdditions .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] read tags: [%@]%@", v6, 0x16u);
}

@end