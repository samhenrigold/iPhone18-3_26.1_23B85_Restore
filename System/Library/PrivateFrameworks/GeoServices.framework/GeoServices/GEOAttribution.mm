@interface GEOAttribution
- (GEOAttribution)init;
- (NSMutableArray)resources;
- (NSString)url;
- (void)_readRegions;
- (void)_readResources;
- (void)_readUrl;
@end

@implementation GEOAttribution

- (void)_readResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAttributionReadSpecified(self, *(self + 8), &_readResources_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (GEOAttribution)init
{
  v6.receiver = self;
  v6.super_class = GEOAttribution;
  v2 = [(GEOAttribution *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSMutableArray)resources
{
  [(GEOAttribution *)self _readResources];
  resources = self->_resources;

  return resources;
}

- (void)_readUrl
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x1000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAttributionReadSpecified(self, *(self + 8), &_readUrl_tags_30173);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (NSString)url
{
  [(GEOAttribution *)self _readUrl];
  url = self->_url;

  return url;
}

- (void)_readRegions
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAttributionReadSpecified(self, *(self + 8), &_readRegions_tags_30172);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

@end