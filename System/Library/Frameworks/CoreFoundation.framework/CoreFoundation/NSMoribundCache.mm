@interface NSMoribundCache
@end

@implementation NSMoribundCache

void __NSMoribundCache_invalidAccess_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _CFFoundationRuntimeIssuesLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __NSMoribundCache_invalidAccess_block_invoke_cold_1(v2);
  }
}

void __NSMoribundCache_invalidAccess_block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_fault_impl(&dword_1830E6000, log, OS_LOG_TYPE_FAULT, "Attempting to interact with NSCache instance that is being deallocated. Break on NSMoribundCache_invalidAccess to debug.", v1, 2u);
}

@end