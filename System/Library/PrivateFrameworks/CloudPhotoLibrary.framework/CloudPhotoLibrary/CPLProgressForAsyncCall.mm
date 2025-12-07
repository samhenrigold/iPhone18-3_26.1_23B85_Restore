@interface CPLProgressForAsyncCall
@end

@implementation CPLProgressForAsyncCall

void ___CPLProgressForAsyncCall_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = NSStringFromSelector(*(a1 + 40));
      v5 = 138412546;
      v6 = v3;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "[%@ %@] was cancelled by caller", &v5, 0x16u);
    }
  }
}

void ___CPLProgressForAsyncCall_block_invoke_0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_93(v3))
    {
      v4 = *(a1 + 32);
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_1DC05A000, v1, OS_LOG_TYPE_DEFAULT, "[%@ %@] was cancelled by caller", &v6, 0x16u);
    }
  }
}

@end