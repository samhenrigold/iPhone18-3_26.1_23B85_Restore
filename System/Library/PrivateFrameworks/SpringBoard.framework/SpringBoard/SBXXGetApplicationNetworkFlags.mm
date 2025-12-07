@interface SBXXGetApplicationNetworkFlags
@end

@implementation SBXXGetApplicationNetworkFlags

void *___SBXXGetApplicationNetworkFlags_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dataUsage];
  **(a1 + 40) = result & 1;
  **(a1 + 48) = result & 2;
  return result;
}

@end