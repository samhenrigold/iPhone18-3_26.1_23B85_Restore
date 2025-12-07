@interface GEONetworkDefaultsRemoteProxy
@end

@implementation GEONetworkDefaultsRemoteProxy

void __38___GEONetworkDefaultsRemoteProxy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _networkDefaultsDidChange];
}

@end