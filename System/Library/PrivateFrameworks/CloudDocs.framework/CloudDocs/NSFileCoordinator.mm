@interface NSFileCoordinator
@end

@implementation NSFileCoordinator

void __56__NSFileCoordinator_BRAdditions__br_boostFilePresenter___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs("+[NSFileCoordinator(BRAdditions) br_boostFilePresenter:]_block_invoke", 21);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) presentedItemURL];
      v7 = [v6 path];
      v8 = [v7 fp_obfuscatedPath];
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed boosting file presenter at %@ - %@%@", &v9, 0x20u);
    }
  }
}

@end