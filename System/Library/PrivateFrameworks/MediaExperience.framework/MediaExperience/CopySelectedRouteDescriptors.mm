@interface CopySelectedRouteDescriptors
@end

@implementation CopySelectedRouteDescriptors

uint64_t __routingContextResilientRemote_CopySelectedRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a2, v3);
}

@end