@interface GEOPDModuleLayoutEntry
- (GEOPDModuleLayoutEntry)init;
- (void)_readApplicationIds;
- (void)_readModules;
@end

@implementation GEOPDModuleLayoutEntry

- (GEOPDModuleLayoutEntry)init
{
  v6.receiver = self;
  v6.super_class = GEOPDModuleLayoutEntry;
  v2 = [(GEOPDModuleLayoutEntry *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readModules
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 68) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDModuleLayoutEntryReadSpecified(self, *(self + 8), &_readModules_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (void)_readApplicationIds
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 68) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDModuleLayoutEntryReadSpecified(self, *(self + 8), &_readApplicationIds_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

@end