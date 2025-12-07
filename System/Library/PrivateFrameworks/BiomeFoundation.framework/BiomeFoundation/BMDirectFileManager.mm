@interface BMDirectFileManager
@end

@implementation BMDirectFileManager

BMFileHandle *__57___BMDirectFileManager__openTemporaryDirectoryWithError___block_invoke(uint64_t a1)
{
  v2 = bm_openat_dprotected(4294967293, *(a1 + 32), *(a1 + 48), *(a1 + 52));
  if ((v2 & 0x80000000) != 0 && (*__error() != 13 || (rmdir([*(a1 + 32) fileSystemRepresentation]), v2 = bm_openat_dprotected(4294967293, *(a1 + 32), *(a1 + 48), *(a1 + 52)), (v2 & 0x80000000) != 0)))
  {
    v4 = __biome_log_for_category(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57___BMDirectFileManager__openTemporaryDirectoryWithError___block_invoke_cold_1();
    }

    v3 = 0;
  }

  else
  {
    v3 = [[BMFileHandle alloc] initWithFileDescriptor:v2 attributes:*(a1 + 40)];
  }

  return v3;
}

void __57___BMDirectFileManager__openTemporaryDirectoryWithError___block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v0, v1, "Failed to open Biome temporary directory with error: %{darwin.errno}d", v2, v3, v4, v5);
}

@end