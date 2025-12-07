@interface GEOTileGroup
- (GEOTileGroup)init;
- (void)clearHybridUnavailableRegions;
- (void)clearRegionalResourceIndexs;
- (void)clearTileSets;
- (void)dealloc;
@end

@implementation GEOTileGroup

- (void)clearHybridUnavailableRegions
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x20u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x2000u;
  self->_hybridUnavailableRegionsSpace = 0;
  self->_hybridUnavailableRegionsCount = 0;
  free(self->_hybridUnavailableRegions);
  self->_hybridUnavailableRegions = 0;
}

- (void)clearRegionalResourceIndexs
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x80u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x2000u;
  self->_regionalResourceIndexsSpace = 0;
  self->_regionalResourceIndexsCount = 0;
  free(self->_regionalResourceIndexs);
  self->_regionalResourceIndexs = 0;
}

- (void)dealloc
{
  [(GEOTileGroup *)self clearTileSets];
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  [(GEOTileGroup *)self clearRegionalResourceIndexs];
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  [(GEOTileGroup *)self clearHybridUnavailableRegions];
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOTileGroup;
  [(GEOTileGroup *)&v3 dealloc];
}

- (void)clearTileSets
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x800u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x2000u;
  self->_tileSetsSpace = 0;
  self->_tileSetsCount = 0;
  free(self->_tileSets);
  self->_tileSets = 0;
}

- (GEOTileGroup)init
{
  v6.receiver = self;
  v6.super_class = GEOTileGroup;
  v2 = [(GEOTileGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end