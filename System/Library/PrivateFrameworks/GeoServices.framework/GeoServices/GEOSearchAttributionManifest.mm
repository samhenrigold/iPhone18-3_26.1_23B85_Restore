@interface GEOSearchAttributionManifest
- (id)searchAttributionSources;
- (void)_readSearchAttributionSources;
@end

@implementation GEOSearchAttributionManifest

- (id)searchAttributionSources
{
  if (self)
  {
    selfCopy = self;
    [(GEOSearchAttributionManifest *)self _readSearchAttributionSources];
    self = selfCopy[4];
    v1 = vars8;
  }

  return self;
}

- (void)_readSearchAttributionSources
{
  os_unfair_lock_lock((self + 64));
  if ((*(self + 68) & 8) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOSearchAttributionManifestReadSpecified(self, *(self + 8), &_readSearchAttributionSources_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 64));
}

@end