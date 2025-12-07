@interface GEOSpokenGuidance
- (GEOSpokenGuidance)init;
- (NSMutableArray)announcements;
- (void)_readAnnouncements;
@end

@implementation GEOSpokenGuidance

- (GEOSpokenGuidance)init
{
  v6.receiver = self;
  v6.super_class = GEOSpokenGuidance;
  v2 = [(GEOSpokenGuidance *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSMutableArray)announcements
{
  [(GEOSpokenGuidance *)self _readAnnouncements];
  announcements = self->_announcements;

  return announcements;
}

- (void)_readAnnouncements
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 84) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSpokenGuidanceReadSpecified(self, *(self + 8), &_readAnnouncements_tags_47915);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end