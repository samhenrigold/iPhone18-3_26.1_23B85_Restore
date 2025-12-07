@interface BRCPackageItem(FPFSAdditions)
@end

@implementation BRCPackageItem(FPFSAdditions)

- (void)_initWithURL:()FPFSAdditions inPackage:forItem:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to get canonical path for pkg item in %@%@", &v3, 0x16u);
}

@end