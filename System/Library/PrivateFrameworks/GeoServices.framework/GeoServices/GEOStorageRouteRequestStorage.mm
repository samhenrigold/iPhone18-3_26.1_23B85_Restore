@interface GEOStorageRouteRequestStorage
- (GEOStorageRouteRequestStorage)init;
- (NSMutableArray)waypoints;
- (void)_readWaypoints;
@end

@implementation GEOStorageRouteRequestStorage

- (GEOStorageRouteRequestStorage)init
{
  v6.receiver = self;
  v6.super_class = GEOStorageRouteRequestStorage;
  v2 = [(GEOStorageRouteRequestStorage *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readWaypoints
{
  if (self)
  {
    os_unfair_lock_lock((self + 96));
    if ((*(self + 104) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStorageRouteRequestStorageReadSpecified(self, *(self + 8), &_readWaypoints_tags_51977);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 96));
  }
}

- (NSMutableArray)waypoints
{
  [(GEOStorageRouteRequestStorage *)self _readWaypoints];
  waypoints = self->_waypoints;

  return waypoints;
}

@end