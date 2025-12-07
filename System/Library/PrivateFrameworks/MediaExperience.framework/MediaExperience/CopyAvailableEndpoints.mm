@interface CopyAvailableEndpoints
@end

@implementation CopyAvailableEndpoints

uint64_t __remoteXPCRouteDiscoverer_CopyAvailableEndpoints_block_invoke(void *a1)
{
  result = *(a1[8] + 24);
  if (result)
  {
    result = FigEndpointRPCCacheApplyObjectDeltas();
    *(*(a1[6] + 8) + 24) = result;
    if (!*(*(a1[6] + 8) + 24))
    {
      result = FigEndpointRPCCacheCopyAvailableObjects();
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

@end