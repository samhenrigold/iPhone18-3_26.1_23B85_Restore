@interface GEOTraitsTransitScheduleFilter
- (GEOTraitsTransitScheduleFilter)init;
- (GEOTraitsTransitScheduleModeFilter)highFrequencyFilter;
- (GEOTraitsTransitScheduleModeFilter)lowFrequencyFilter;
- (GEOTraitsTransitScheduleTimeRange)operatingHoursRange;
- (void)_readHighFrequencyFilter;
- (void)_readLowFrequencyFilter;
- (void)_readOperatingHoursRange;
@end

@implementation GEOTraitsTransitScheduleFilter

- (GEOTraitsTransitScheduleFilter)init
{
  v6.receiver = self;
  v6.super_class = GEOTraitsTransitScheduleFilter;
  v2 = [(GEOTraitsTransitScheduleFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readHighFrequencyFilter
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
        GEOTraitsTransitScheduleFilterReadSpecified(self, *(self + 8), &_readHighFrequencyFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (void)_readLowFrequencyFilter
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOTraitsTransitScheduleFilterReadSpecified(self, *(self + 8), &_readLowFrequencyFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOTraitsTransitScheduleModeFilter)highFrequencyFilter
{
  [(GEOTraitsTransitScheduleFilter *)self _readHighFrequencyFilter];
  highFrequencyFilter = self->_highFrequencyFilter;

  return highFrequencyFilter;
}

- (GEOTraitsTransitScheduleModeFilter)lowFrequencyFilter
{
  [(GEOTraitsTransitScheduleFilter *)self _readLowFrequencyFilter];
  lowFrequencyFilter = self->_lowFrequencyFilter;

  return lowFrequencyFilter;
}

- (void)_readOperatingHoursRange
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
        GEOTraitsTransitScheduleFilterReadSpecified(self, *(self + 8), &_readOperatingHoursRange_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOTraitsTransitScheduleTimeRange)operatingHoursRange
{
  [(GEOTraitsTransitScheduleFilter *)self _readOperatingHoursRange];
  operatingHoursRange = self->_operatingHoursRange;

  return operatingHoursRange;
}

@end