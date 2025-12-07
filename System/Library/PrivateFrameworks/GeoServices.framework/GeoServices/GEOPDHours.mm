@interface GEOPDHours
- (GEOPDHours)init;
- (void)_readDays;
- (void)_readTimeRanges;
- (void)clearTimeRanges;
- (void)dealloc;
@end

@implementation GEOPDHours

- (GEOPDHours)init
{
  v6.receiver = self;
  v6.super_class = GEOPDHours;
  v2 = [(GEOPDHours *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)clearTimeRanges
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 4u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x10u;
  self->_timeRangesSpace = 0;
  self->_timeRangesCount = 0;
  free(self->_timeRanges);
  self->_timeRanges = 0;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  [(GEOPDHours *)self clearTimeRanges];
  v3.receiver = self;
  v3.super_class = GEOPDHours;
  [(GEOPDHours *)&v3 dealloc];
}

- (void)_readDays
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 92) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDHoursReadSpecified(self, *(self + 8), &_readDays_tags_72596);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (void)_readTimeRanges
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 92) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDHoursReadSpecified(self, *(self + 8), &_readTimeRanges_tags_72595);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

@end