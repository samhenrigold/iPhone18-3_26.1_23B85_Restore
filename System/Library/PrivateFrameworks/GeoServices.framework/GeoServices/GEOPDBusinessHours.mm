@interface GEOPDBusinessHours
- (GEOPDBusinessHours)init;
- (void)_readWeeklyHours;
@end

@implementation GEOPDBusinessHours

- (GEOPDBusinessHours)init
{
  v6.receiver = self;
  v6.super_class = GEOPDBusinessHours;
  v2 = [(GEOPDBusinessHours *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readWeeklyHours
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 88) & 0x80) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDBusinessHoursReadSpecified(self, *(self + 8), &_readWeeklyHours_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

@end