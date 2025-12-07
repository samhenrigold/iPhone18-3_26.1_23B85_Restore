@interface LSUnregisterAppWithBundleIDUsingContext
@end

@implementation LSUnregisterAppWithBundleIDUsingContext

void ___LSUnregisterAppWithBundleIDUsingContext_block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _LSInstallLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Failed to remove";
    v8 = *(a1 + 32);
    v9 = 136446978;
    if (a2)
    {
      v7 = "Removed";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s all handler prefs for bundle ID %@: %{BOOL}i %@", &v9, 0x26u);
  }
}

@end