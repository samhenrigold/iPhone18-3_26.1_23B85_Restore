@interface NSXPCConnection
@end

@implementation NSXPCConnection

void __69__NSXPCConnection_FPAdditions__fp_annotateInvocation_withLogSection___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = fpfs_adopt_log(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v5 = FPPopLogSectionForBlock(WeakRetained);

  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      *buf = 134218498;
      v11 = v5;
      v12 = 2112;
      v13 = @"(unavailable)";
      v14 = 2080;
      v15 = [v8 fileSystemRepresentation];
      _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s ", buf, 0x20u);
    }
  }

  v7 = _Block_copy(*(a1 + 40));
  [v3 setTarget:v7];

  [v3 invoke];
  objc_storeWeak((*(*(a1 + 48) + 8) + 40), 0);
  __fp_pop_log(&v9);
}

@end