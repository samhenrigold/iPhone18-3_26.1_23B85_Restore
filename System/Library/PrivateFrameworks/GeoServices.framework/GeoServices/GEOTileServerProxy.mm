@interface GEOTileServerProxy
- (GEOTileServerProxyDelegate)delegate;
@end

@implementation GEOTileServerProxy

- (GEOTileServerProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end