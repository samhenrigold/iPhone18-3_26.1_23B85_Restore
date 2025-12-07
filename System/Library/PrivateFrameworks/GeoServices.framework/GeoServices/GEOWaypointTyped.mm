@interface GEOWaypointTyped
- (GEOWaypointPlace)waypointPlace;
- (GEOWaypointTyped)init;
- (void)_readWaypointPlace;
@end

@implementation GEOWaypointTyped

- (GEOWaypointTyped)init
{
  v6.receiver = self;
  v6.super_class = GEOWaypointTyped;
  v2 = [(GEOWaypointTyped *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readWaypointPlace
{
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    if ((*(self + 96) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointTypedReadSpecified(self, *(self + 8), &_readWaypointPlace_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 72));
  }
}

- (GEOWaypointPlace)waypointPlace
{
  [(GEOWaypointTyped *)self _readWaypointPlace];
  waypointPlace = self->_waypointPlace;

  return waypointPlace;
}

@end