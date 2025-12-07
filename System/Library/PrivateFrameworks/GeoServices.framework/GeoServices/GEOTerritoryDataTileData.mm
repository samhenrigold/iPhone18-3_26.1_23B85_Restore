@interface GEOTerritoryDataTileData
- (void)_readTerritorys;
@end

@implementation GEOTerritoryDataTileData

- (void)_readTerritorys
{
  os_unfair_lock_lock((self + 40));
  if ((*(self + 44) & 2) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOTerritoryDataTileDataReadSpecified(self, *(self + 8), &_readTerritorys_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 40));
}

@end