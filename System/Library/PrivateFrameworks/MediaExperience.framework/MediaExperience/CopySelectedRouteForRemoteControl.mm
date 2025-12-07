@interface CopySelectedRouteForRemoteControl
@end

@implementation CopySelectedRouteForRemoteControl

uint64_t __routingContextResilientRemote_CopySelectedRouteForRemoteControl_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a2, v3);
}

uint64_t __routingContext_CopySelectedRouteForRemoteControl_block_invoke(void *a1)
{
  result = FigRoutingManagerCopyPickedEndpointForRemoteControl(*(a1[5] + 8), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end