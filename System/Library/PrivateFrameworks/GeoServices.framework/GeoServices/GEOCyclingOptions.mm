@interface GEOCyclingOptions
- (GEOCyclingOptions)init;
- (GEOCyclingUserPreferences)cyclingUserPreferences;
- (GEOCyclingVehicleSpecifications)cyclingVehicleSpecifications;
- (void)_readCyclingUserPreferences;
- (void)_readCyclingVehicleSpecifications;
@end

@implementation GEOCyclingOptions

- (GEOCyclingOptions)init
{
  v6.receiver = self;
  v6.super_class = GEOCyclingOptions;
  v2 = [(GEOCyclingOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOCyclingUserPreferences)cyclingUserPreferences
{
  [(GEOCyclingOptions *)self _readCyclingUserPreferences];
  cyclingUserPreferences = self->_cyclingUserPreferences;

  return cyclingUserPreferences;
}

- (void)_readCyclingUserPreferences
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCyclingOptionsReadSpecified(self, *(self + 8), &_readCyclingUserPreferences_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEOCyclingVehicleSpecifications)cyclingVehicleSpecifications
{
  [(GEOCyclingOptions *)self _readCyclingVehicleSpecifications];
  cyclingVehicleSpecifications = self->_cyclingVehicleSpecifications;

  return cyclingVehicleSpecifications;
}

- (void)_readCyclingVehicleSpecifications
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCyclingOptionsReadSpecified(self, *(self + 8), &_readCyclingVehicleSpecifications_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end