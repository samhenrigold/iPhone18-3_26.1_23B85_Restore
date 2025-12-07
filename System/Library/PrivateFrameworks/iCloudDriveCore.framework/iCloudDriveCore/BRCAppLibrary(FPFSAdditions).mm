@interface BRCAppLibrary(FPFSAdditions)
- (void)deleteAppLibrary;
- (void)documentsFolderFileObjectID;
- (void)recreateDocumentsFolderIfNeededInDB;
@end

@implementation BRCAppLibrary(FPFSAdditions)

- (void)documentsFolderFileObjectID
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: App library %@ doesn't have a documents folder%@", v1, 0x16u);
}

- (void)recreateDocumentsFolderIfNeededInDB
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(self + 48);
  v3 = 138412546;
  v4 = v1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_223E7A000, v2, 0x90u, "[ERROR] Failed to create documents folder for app library %@%@", &v3, 0x16u);
}

- (void)_recursivelyDeleteItemsUnderItemID:()FPFSAdditions filterPredicate:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to save to db without an error%@", v1, 0xCu);
}

- (void)deleteAppLibrary
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Deleting app library %@%@", v1, 0x16u);
}

@end