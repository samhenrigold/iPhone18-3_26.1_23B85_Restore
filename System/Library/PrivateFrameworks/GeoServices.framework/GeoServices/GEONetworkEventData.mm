@interface GEONetworkEventData
- (GEONetworkEventData)init;
- (void)_readAdditionalStates;
@end

@implementation GEONetworkEventData

- (GEONetworkEventData)init
{
  v6.receiver = self;
  v6.super_class = GEONetworkEventData;
  v2 = [(GEONetworkEventData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readAdditionalStates
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 157) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEONetworkEventDataReadSpecified(self, *(self + 8), &_readAdditionalStates_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

@end