@interface LSPlatformSupportsHaswell
@end

@implementation LSPlatformSupportsHaswell

void ___LSPlatformSupportsHaswell_block_invoke()
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("hw.optional.avx2_0", &v4, &v3, 0, 0))
  {
    v0 = __error();
    v1 = *v0;
    v2 = _LSDefaultLog(v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___LSPlatformSupportsHaswell_block_invoke_cold_1(v1, v2);
    }
  }

  else
  {
    _LSPlatformSupportsHaswell::canRun = v4 > 0;
  }
}

void ___LSPlatformSupportsHaswell_block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not check sysctl hw.optional.avx2_0: %d", v2, 8u);
}

@end