@interface SCDynamicStoreCheckRetryAndHandleError
@end

@implementation SCDynamicStoreCheckRetryAndHandleError

uint64_t ____SCDynamicStoreCheckRetryAndHandleError_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    v2 = result;
    result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
    *(*(v2 + 32) + 40) = 0;
  }

  return result;
}

@end