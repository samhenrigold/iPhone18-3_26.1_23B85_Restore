@interface GEOResourceFilter
- (GEOResourceFilter)init;
- (void)_readScales;
- (void)_readScenarios;
- (void)dealloc;
@end

@implementation GEOResourceFilter

- (GEOResourceFilter)init
{
  v6.receiver = self;
  v6.super_class = GEOResourceFilter;
  v2 = [(GEOResourceFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readScales
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourceFilterReadSpecified(self, *(self + 8), &_readScales_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (void)_readScenarios
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourceFilterReadSpecified(self, *(self + 8), &_readScenarios_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOResourceFilter;
  [(GEOResourceFilter *)&v3 dealloc];
}

@end