@interface GEOAvailableAnnouncements
- (NSMutableArray)announcements;
- (void)_readAnnouncements;
@end

@implementation GEOAvailableAnnouncements

- (NSMutableArray)announcements
{
  [(GEOAvailableAnnouncements *)self _readAnnouncements];
  announcements = self->_announcements;

  return announcements;
}

- (void)_readAnnouncements
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    if ((*(self + 44) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAvailableAnnouncementsReadSpecified(self, *(self + 8), &_readAnnouncements_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 40));
  }
}

@end