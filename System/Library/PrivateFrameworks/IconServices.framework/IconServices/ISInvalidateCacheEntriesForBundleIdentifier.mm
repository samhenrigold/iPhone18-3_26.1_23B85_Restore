@interface ISInvalidateCacheEntriesForBundleIdentifier
@end

@implementation ISInvalidateCacheEntriesForBundleIdentifier

void ___ISInvalidateCacheEntriesForBundleIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ISDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ISInvalidateCacheEntriesForBundleIdentifier_block_invoke_cold_1();
  }
}

void ___ISInvalidateCacheEntriesForBundleIdentifier_block_invoke_1(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = _ISDefaultLog(v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A77B8000, v6, OS_LOG_TYPE_INFO, "Cache clear started.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    ___ISInvalidateCacheEntriesForBundleIdentifier_block_invoke_cold_1();
  }
}

@end