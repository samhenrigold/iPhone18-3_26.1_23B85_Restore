@interface GEORegionalResourceSet
- (GEORegionalResourceSet)init;
- (NSMutableArray)resources;
- (void)_readRegions;
- (void)_readResources;
@end

@implementation GEORegionalResourceSet

- (NSMutableArray)resources
{
  [(GEORegionalResourceSet *)self _readResources];
  resources = self->_resources;

  return resources;
}

- (void)_readResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORegionalResourceSetReadSpecified(self, *(self + 8), &_readResources_tags_1276);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (GEORegionalResourceSet)init
{
  v6.receiver = self;
  v6.super_class = GEORegionalResourceSet;
  v2 = [(GEORegionalResourceSet *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readRegions
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORegionalResourceSetReadSpecified(self, *(self + 8), &_readRegions_tags_43711);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

@end