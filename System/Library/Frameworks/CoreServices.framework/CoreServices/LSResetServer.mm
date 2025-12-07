@interface LSResetServer
@end

@implementation LSResetServer

void ___LSResetServer_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___LSResetServer_block_invoke_cold_1();
  }
}

void ___LSResetServer_block_invoke_127(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___LSResetServer_block_invoke_127_cold_1();
    }
  }
}

@end