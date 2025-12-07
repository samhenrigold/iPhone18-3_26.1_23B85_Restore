@interface NTPBBloomFilterInfo
@end

@implementation NTPBBloomFilterInfo

uint64_t __56__NTPBBloomFilterInfo_FCAdditions__fc_maybeContainsURL___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138477827;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "no domain for %{private}@", &v5, 0xCu);
  }

  return 0;
}

@end