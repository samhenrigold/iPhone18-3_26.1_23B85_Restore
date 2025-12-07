@interface CF
@end

@implementation CF

void __CF_RUNLOOP_ASSERTIONS_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _CFOSLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __CF_RUNLOOP_ASSERTIONS_block_invoke_cold_1(v2);
  }
}

void __CF_RUNLOOP_ASSERTIONS_block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Attempting to use the main runloop, but the main thread has exited. This message will only log once.", v1, 2u);
}

@end