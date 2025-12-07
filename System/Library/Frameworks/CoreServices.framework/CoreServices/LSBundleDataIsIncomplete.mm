@interface LSBundleDataIsIncomplete
@end

@implementation LSBundleDataIsIncomplete

void ___LSBundleDataIsIncomplete_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v7 = _LSGetPlugin(*(a1 + 32), a3);
  if (v7 && !*(v7 + 140))
  {
    if ((*(v7 + 164) & 1) != 0 && *(v7 + 12))
    {
      v8 = _LSDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [(_LSDatabase *)*(a1 + 32) store];
        v9 = _CSStringCopyCFString();
        v10 = 134218242;
        v11 = v5;
        v12 = 2114;
        v13 = v9;
        _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "First-party plugin %llx (%{public}@) is malformed. Skipping during incompleteness check.", &v10, 0x16u);
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

@end