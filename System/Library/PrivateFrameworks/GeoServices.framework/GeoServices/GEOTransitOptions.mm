@interface GEOTransitOptions
- (GEOFareOptions)fareOptions;
- (GEOTransitOptions)init;
- (void)_readFareOptions;
- (void)dealloc;
@end

@implementation GEOTransitOptions

- (GEOTransitOptions)init
{
  v6.receiver = self;
  v6.super_class = GEOTransitOptions;
  v2 = [(GEOTransitOptions *)&v6 init];
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
  v3.super_class = GEOTransitOptions;
  [(GEOTransitOptions *)&v3 dealloc];
}

- (GEOFareOptions)fareOptions
{
  [(GEOTransitOptions *)self _readFareOptions];
  fareOptions = self->_fareOptions;

  return fareOptions;
}

- (void)_readFareOptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 80) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOTransitOptionsReadSpecified(self, *(self + 8), &_readFareOptions_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

@end