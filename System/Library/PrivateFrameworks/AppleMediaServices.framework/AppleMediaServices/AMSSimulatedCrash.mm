@interface AMSSimulatedCrash
+ (void)throwSimulatedCrashWithFormat:(id)format;
@end

@implementation AMSSimulatedCrash

+ (void)throwSimulatedCrashWithFormat:(id)format
{
  formatCopy = format;
  if (os_variant_has_internal_content())
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v15];
    v5 = getpid();
    v6 = v4;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v7 = _MergedGlobals_147;
    v14 = _MergedGlobals_147;
    if (!_MergedGlobals_147)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getSimulateCrashSymbolLoc_block_invoke;
      v10[3] = &unk_1E73B3880;
      v10[4] = &v11;
      __getSimulateCrashSymbolLoc_block_invoke(v10);
      v7 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v7)
    {
      v8 = dlerror();
      v9 = abort_report_np("%s", v8);
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(v9);
    }

    v7(v5, 195939070, v6);
  }
}

@end