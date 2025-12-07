@interface GEOAutomobileOptions
- (GEOAutomobileOptions)init;
- (GEOUserPreferences)userPreferences;
- (GEOVehicleSpecifications)vehicleSpecifications;
- (void)_readUserPreferences;
- (void)_readVehicleSpecifications;
@end

@implementation GEOAutomobileOptions

- (GEOAutomobileOptions)init
{
  v6.receiver = self;
  v6.super_class = GEOAutomobileOptions;
  v2 = [(GEOAutomobileOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readUserPreferences
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 60) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAutomobileOptionsReadSpecified(self, *(self + 8), &_readUserPreferences_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEOUserPreferences)userPreferences
{
  [(GEOAutomobileOptions *)self _readUserPreferences];
  userPreferences = self->_userPreferences;

  return userPreferences;
}

- (GEOVehicleSpecifications)vehicleSpecifications
{
  [(GEOAutomobileOptions *)self _readVehicleSpecifications];
  vehicleSpecifications = self->_vehicleSpecifications;

  return vehicleSpecifications;
}

- (void)_readVehicleSpecifications
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 60) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAutomobileOptionsReadSpecified(self, *(self + 8), &_readVehicleSpecifications_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end