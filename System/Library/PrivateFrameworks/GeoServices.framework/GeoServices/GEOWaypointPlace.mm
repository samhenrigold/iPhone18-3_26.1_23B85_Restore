@interface GEOWaypointPlace
- (GEOLatLng)center;
- (GEOWaypointPlace)init;
- (void)_readCenter;
- (void)_readRoadAccessPoints;
@end

@implementation GEOWaypointPlace

- (GEOWaypointPlace)init
{
  v6.receiver = self;
  v6.super_class = GEOWaypointPlace;
  v2 = [(GEOWaypointPlace *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readRoadAccessPoints
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointPlaceReadSpecified(self, *(self + 8), &_readRoadAccessPoints_tags_3748);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (void)_readCenter
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointPlaceReadSpecified(self, *(self + 8), &_readCenter_tags_3747);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOLatLng)center
{
  [(GEOWaypointPlace *)self _readCenter];
  center = self->_center;

  return center;
}

@end