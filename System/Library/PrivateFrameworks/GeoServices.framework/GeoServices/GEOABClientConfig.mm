@interface GEOABClientConfig
- (GEOABClientConfig)init;
- (NSMutableArray)configKeyValues;
- (void)_readConfigKeyValues;
@end

@implementation GEOABClientConfig

- (NSMutableArray)configKeyValues
{
  [(GEOABClientConfig *)self _readConfigKeyValues];
  configKeyValues = self->_configKeyValues;

  return configKeyValues;
}

- (void)_readConfigKeyValues
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOABClientConfigReadSpecified(self, *(self + 8), &_readConfigKeyValues_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOABClientConfig)init
{
  v6.receiver = self;
  v6.super_class = GEOABClientConfig;
  v2 = [(GEOABClientConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end