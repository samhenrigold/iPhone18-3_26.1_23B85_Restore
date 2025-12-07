@interface GEOPDPlacecardLayoutData
- (GEOPDPlacecardLayoutData)init;
- (unint64_t)hash;
- (void)_readModuleConfigurations;
@end

@implementation GEOPDPlacecardLayoutData

- (GEOPDPlacecardLayoutData)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlacecardLayoutData;
  v2 = [(GEOPDPlacecardLayoutData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (unint64_t)hash
{
  [(GEOPDPlacecardLayoutData *)self readAll:?];
  v3 = [(NSMutableArray *)self->_moduleConfigurations hash];
  return [(GEOPDPlacecardLayoutConfiguration *)self->_layoutConfiguration hash]^ v3;
}

- (void)_readModuleConfigurations
{
  os_unfair_lock_lock((self + 48));
  if ((*(self + 52) & 4) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlacecardLayoutDataReadSpecified(self, *(self + 8), &_readModuleConfigurations_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 48));
}

@end