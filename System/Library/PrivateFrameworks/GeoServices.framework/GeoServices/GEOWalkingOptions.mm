@interface GEOWalkingOptions
- (GEOWalkingOptions)init;
- (GEOWalkingUserPreferences)walkingUserPreferences;
- (void)_readWalkingUserPreferences;
- (void)dealloc;
@end

@implementation GEOWalkingOptions

- (GEOWalkingOptions)init
{
  v6.receiver = self;
  v6.super_class = GEOWalkingOptions;
  v2 = [(GEOWalkingOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOWalkingOptions;
  [(GEOWalkingOptions *)&v3 dealloc];
}

- (GEOWalkingUserPreferences)walkingUserPreferences
{
  [(GEOWalkingOptions *)self _readWalkingUserPreferences];
  walkingUserPreferences = self->_walkingUserPreferences;

  return walkingUserPreferences;
}

- (void)_readWalkingUserPreferences
{
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    if ((*(self + 76) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWalkingOptionsReadSpecified(self, *(self + 8), &_readWalkingUserPreferences_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 72));
  }
}

@end