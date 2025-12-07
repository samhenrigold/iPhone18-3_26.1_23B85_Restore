@interface GEOPDAmenityValue
- (GEOPDAmenityValue)init;
- (void)_readNames;
@end

@implementation GEOPDAmenityValue

- (GEOPDAmenityValue)init
{
  v6.receiver = self;
  v6.super_class = GEOPDAmenityValue;
  v2 = [(GEOPDAmenityValue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    if ((*(self + 84) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDAmenityValueReadSpecified(self, *(self + 8), &_readNames_tags_69722);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 72));
  }
}

@end