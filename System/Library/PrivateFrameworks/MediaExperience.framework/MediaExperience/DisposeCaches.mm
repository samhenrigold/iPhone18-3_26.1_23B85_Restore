@interface DisposeCaches
@end

@implementation DisposeCaches

uint64_t __remoteXPCRouteDiscoverer_DisposeCaches_block_invoke(uint64_t a1)
{
  result = FigEndpointRPCCacheDispose();
  *(*(a1 + 32) + 24) = 0;
  return result;
}

@end