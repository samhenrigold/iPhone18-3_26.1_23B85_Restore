@interface GEOAnnouncement
- (GEOAnnouncement)init;
- (GEOMapRegion)mapRegion;
- (void)_readMapRegion;
@end

@implementation GEOAnnouncement

- (GEOAnnouncement)init
{
  v6.receiver = self;
  v6.super_class = GEOAnnouncement;
  v2 = [(GEOAnnouncement *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readMapRegion
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 108) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnnouncementReadSpecified(self, *(self + 8), &_readMapRegion_tags_41476);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (GEOMapRegion)mapRegion
{
  [(GEOAnnouncement *)self _readMapRegion];
  mapRegion = self->_mapRegion;

  return mapRegion;
}

@end