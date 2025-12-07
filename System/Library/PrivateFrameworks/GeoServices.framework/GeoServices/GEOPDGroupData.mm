@interface GEOPDGroupData
- (GEOPDGroupData)init;
- (void)_readButtonItems;
@end

@implementation GEOPDGroupData

- (GEOPDGroupData)init
{
  v6.receiver = self;
  v6.super_class = GEOPDGroupData;
  v2 = [(GEOPDGroupData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readButtonItems
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDGroupDataReadSpecified(self, *(self + 8), &_readButtonItems_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

@end