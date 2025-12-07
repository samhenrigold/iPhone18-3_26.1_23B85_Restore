@interface BRCXPCRegularIPCsClient(FPFSAdditions)
@end

@implementation BRCXPCRegularIPCsClient(FPFSAdditions)

- (void)accessItemIdentifier:()FPFSAdditions dbAccessKind:synchronouslyIfPossible:LocalItemHandler:ServerItemHandler:.cold.1()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: (localItemHandler || serverItemHandler) && !(localItemHandler && serverItemHandler)%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

- (void)createItemBasedOnTemplate:()FPFSAdditions fields:contents:options:additionalItemAttributes:completionHandler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to parse bookmark data on %@%@", v1, 0x16u);
}

- (void)_createFileProvidingRequestOperationOfFileObject:()FPFSAdditions existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:.cold.4(void *a1)
{
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Priming MMCS cache before download for %@%@", v4, v5, v6, v7);
}

@end