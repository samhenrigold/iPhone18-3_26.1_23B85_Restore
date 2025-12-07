@interface CopySelectedBufferedEndpointForTesting
@end

@implementation CopySelectedBufferedEndpointForTesting

uint64_t __routingContextResilientRemote_CopySelectedBufferedEndpointForTesting_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

CFTypeRef __routingContext_CopySelectedBufferedEndpointForTesting_block_invoke(void *a1)
{
  result = FigRoutingManagerCopySelectedBufferedEndpointForTesting(*(a1[5] + 8), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end