@interface GEOResources
- (BOOL)isValid;
- (GEOResources)init;
- (NSMutableArray)dataSets;
- (NSMutableArray)resources;
- (NSMutableArray)tileGroups;
- (NSMutableArray)tileSets;
- (NSMutableArray)urlInfoSets;
- (NSString)authToken;
- (id)preferredDataSetForMapsABClient;
- (unint64_t)tileGroupsCount;
- (void)_readAuthToken;
- (void)_readDataSets;
- (void)_readResources;
- (void)_readTileGroups;
- (void)_readTileSets;
- (void)_readUrlInfoSets;
@end

@implementation GEOResources

- (GEOResources)init
{
  v6.receiver = self;
  v6.super_class = GEOResources;
  v2 = [(GEOResources *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readAuthToken
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourcesReadSpecified(self, *(self + 8), &_readAuthToken_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (NSString)authToken
{
  [(GEOResources *)self _readAuthToken];
  authToken = self->_authToken;

  return authToken;
}

- (NSMutableArray)resources
{
  [(GEOResources *)self _readResources];
  resources = self->_resources;

  return resources;
}

- (void)_readResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourcesReadSpecified(self, *(self + 8), &_readResources_tags_750);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (unint64_t)tileGroupsCount
{
  [(GEOResources *)self _readTileGroups];
  tileGroups = self->_tileGroups;

  return [(NSMutableArray *)tileGroups count];
}

- (id)preferredDataSetForMapsABClient
{
  v3 = +[GEOExperimentConfiguration sharedConfiguration];
  _mapsAbClientMetadata = [v3 _mapsAbClientMetadata];
  clientDatasetMetadata = [_mapsAbClientMetadata clientDatasetMetadata];

  v6 = [(GEOResources *)self preferredDataSetForClientDatasetMetadata:clientDatasetMetadata];

  return v6;
}

- (void)_readDataSets
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourcesReadSpecified(self, *(self + 8), &_readDataSets_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (NSMutableArray)urlInfoSets
{
  [(GEOResources *)self _readUrlInfoSets];
  urlInfoSets = self->_urlInfoSets;

  return urlInfoSets;
}

- (NSMutableArray)tileSets
{
  [(GEOResources *)self _readTileSets];
  tileSets = self->_tileSets;

  return tileSets;
}

- (void)_readTileSets
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourcesReadSpecified(self, *(self + 8), &_readTileSets_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (NSMutableArray)dataSets
{
  [(GEOResources *)self _readDataSets];
  dataSets = self->_dataSets;

  return dataSets;
}

- (BOOL)isValid
{
  tileGroups = [(GEOResources *)self tileGroups];
  v4 = [tileGroups count];

  if (!v4)
  {
    return 0;
  }

  tileSets = [(GEOResources *)self tileSets];
  v6 = [tileSets count] != 0;

  return v6;
}

- (void)_readTileGroups
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourcesReadSpecified(self, *(self + 8), &_readTileGroups_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (NSMutableArray)tileGroups
{
  [(GEOResources *)self _readTileGroups];
  tileGroups = self->_tileGroups;

  return tileGroups;
}

- (void)_readUrlInfoSets
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourcesReadSpecified(self, *(self + 8), &_readUrlInfoSets_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

@end