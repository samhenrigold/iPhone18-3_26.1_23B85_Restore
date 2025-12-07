@interface GEOTerritoryDataTerritoryInfo
- (GEOTerritoryDataTerritoryInfo)init;
- (void)_readPolygon;
- (void)_readTerritoryTypes;
- (void)dealloc;
@end

@implementation GEOTerritoryDataTerritoryInfo

- (GEOTerritoryDataTerritoryInfo)init
{
  v6.receiver = self;
  v6.super_class = GEOTerritoryDataTerritoryInfo;
  v2 = [(GEOTerritoryDataTerritoryInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readPolygon
{
  os_unfair_lock_lock((self + 104));
  if ((*(self + 112) & 0x40) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOTerritoryDataTerritoryInfoReadSpecified(self, *(self + 8), &_readPolygon_tags_82140);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 104));
}

- (void)_readTerritoryTypes
{
  os_unfair_lock_lock((self + 104));
  if ((*(self + 112) & 8) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOTerritoryDataTerritoryInfoReadSpecified(self, *(self + 8), &_readTerritoryTypes_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 104));
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOTerritoryDataTerritoryInfo;
  [(GEOTerritoryDataTerritoryInfo *)&v3 dealloc];
}

@end