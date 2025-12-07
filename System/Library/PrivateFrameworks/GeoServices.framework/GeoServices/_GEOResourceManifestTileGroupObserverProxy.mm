@interface _GEOResourceManifestTileGroupObserverProxy
- (_GEOResourceManifestTileGroupObserverProxy)init;
@end

@implementation _GEOResourceManifestTileGroupObserverProxy

- (_GEOResourceManifestTileGroupObserverProxy)init
{
  v6.receiver = self;
  v6.super_class = _GEOResourceManifestTileGroupObserverProxy;
  v2 = [(_GEOResourceManifestTileGroupObserverProxy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_observersLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end