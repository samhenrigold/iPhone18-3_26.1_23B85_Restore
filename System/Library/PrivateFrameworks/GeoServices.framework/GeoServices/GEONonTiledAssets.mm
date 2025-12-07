@interface GEONonTiledAssets
- (GEONonTiledAssets)init;
- (unint64_t)materialMapsCount;
- (unint64_t)materialsCount;
- (unint64_t)modelsCount;
- (void)_readMaterialMaps;
- (void)_readMaterials;
- (void)_readModels;
@end

@implementation GEONonTiledAssets

- (void)_readMaterialMaps
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEONonTiledAssetsReadSpecified(self, *(self + 8), &_readMaterialMaps_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEONonTiledAssets)init
{
  v6.receiver = self;
  v6.super_class = GEONonTiledAssets;
  v2 = [(GEONonTiledAssets *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readModels
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEONonTiledAssetsReadSpecified(self, *(self + 8), &_readModels_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (unint64_t)modelsCount
{
  [(GEONonTiledAssets *)self _readModels];
  models = self->_models;

  return [(NSMutableArray *)models count];
}

- (unint64_t)materialMapsCount
{
  [(GEONonTiledAssets *)self _readMaterialMaps];
  materialMaps = self->_materialMaps;

  return [(NSMutableArray *)materialMaps count];
}

- (unint64_t)materialsCount
{
  [(GEONonTiledAssets *)self _readMaterials];
  materials = self->_materials;

  return [(NSMutableArray *)materials count];
}

- (void)_readMaterials
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEONonTiledAssetsReadSpecified(self, *(self + 8), &_readMaterials_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end