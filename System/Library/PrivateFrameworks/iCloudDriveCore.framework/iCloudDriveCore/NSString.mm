@interface NSString
@end

@implementation NSString

uint64_t __75__NSString_BRCPathAdditions__br_currentMobileDocumentsDirWithRefreshCache___block_invoke()
{
  br_currentMobileDocumentsDirWithRefreshCache__pathByPersonaID = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void __75__NSString_BRCPathAdditions__br_currentMobileDocumentsDirWithRefreshCache___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] fetchRootItemForProviderDomain failed with error: %@%@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = [v5 fileURL];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __75__NSString_BRCPathAdditions__br_currentMobileDocumentsDirWithRefreshCache___block_invoke_15_cold_1(v5, v7, v8);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __81__NSString_BRCPackageAdditions__brc_loadForcedPackageExtensionsForCurrentPersona__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _loadedPersonaIDs;
  _loadedPersonaIDs = v0;

  _unifiedForcedPackageExtensions = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void __75__NSString_BRCPathAdditions__br_currentMobileDocumentsDirWithRefreshCache___block_invoke_15_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 fileURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Root URL %@%@", &v6, 0x16u);
}

@end