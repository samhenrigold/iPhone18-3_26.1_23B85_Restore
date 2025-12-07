@interface SelectRouteDescriptorsWithCompletionCallback
@end

@implementation SelectRouteDescriptorsWithCompletionCallback

uint64_t __routingContextResilientRemote_SelectRouteDescriptorsWithCompletionCallback_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 224);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(a2, v3, v4, v5, v6);
}

@end