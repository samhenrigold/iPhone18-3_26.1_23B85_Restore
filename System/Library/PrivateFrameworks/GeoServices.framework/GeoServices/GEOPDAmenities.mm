@interface GEOPDAmenities
- (GEOPDAmenities)init;
- (void)_readAmenityV2s;
- (void)_readAmenitys;
@end

@implementation GEOPDAmenities

- (GEOPDAmenities)init
{
  v6.receiver = self;
  v6.super_class = GEOPDAmenities;
  v2 = [(GEOPDAmenities *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readAmenitys
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 56) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDAmenitiesReadSpecified(self, *(self + 8), &_readAmenitys_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (void)_readAmenityV2s
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 56) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDAmenitiesReadSpecified(self, *(self + 8), &_readAmenityV2s_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end