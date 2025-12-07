@interface GEOActiveTileGroup
- (BOOL)isMuninEnabled;
- (GEODataSetDescription)dataSet;
- (GEOOfflineMetadata)offlineMetadata;
- (GEOURLInfoSet)urlInfoSet;
- (GEOVersionManifest)versionManifest;
- (NSMutableArray)activeNames;
- (NSMutableArray)activeResources;
- (NSMutableArray)attributions;
- (NSMutableArray)explicitResources;
- (NSMutableArray)regionalResources;
- (NSMutableArray)tileSets;
- (NSMutableDictionary)regionalResourceCanonicalNameToFileName;
- (NSMutableDictionary)resourceCanonicalNameToFileName;
- (NSString)environment;
- (NSString)uniqueIdentifier;
- (unint64_t)attributionsCount;
- (unint64_t)muninBucketsCount;
- (unint64_t)regionalResourcesCount;
- (unint64_t)staleResourcesCount;
- (void)_readActiveNames;
- (void)_readActiveResources;
- (void)_readActiveScales;
- (void)_readActiveScenarios;
- (void)_readAttributions;
- (void)_readDataSet;
- (void)_readEnvironment;
- (void)_readExplicitResources;
- (void)_readMuninBuckets;
- (void)_readOfflineMetadata;
- (void)_readRegionalResourceCanonicalNameToFileName;
- (void)_readRegionalResources;
- (void)_readResourceCanonicalNameToFileName;
- (void)_readStaleResources;
- (void)_readTileSets;
- (void)_readUniqueIdentifier;
- (void)_readUrlInfoSet;
- (void)_readVersionManifest;
- (void)clearHybridUnavailableRegions;
- (void)dealloc;
@end

@implementation GEOActiveTileGroup

- (GEOURLInfoSet)urlInfoSet
{
  [(GEOActiveTileGroup *)self _readUrlInfoSet];
  urlInfoSet = self->_urlInfoSet;

  return urlInfoSet;
}

- (void)_readUrlInfoSet
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 648) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readUrlInfoSet_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSMutableArray)activeResources
{
  [(GEOActiveTileGroup *)self _readActiveResources];
  activeResources = self->_activeResources;

  return activeResources;
}

- (void)_readActiveResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 641) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readActiveResources_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (void)_readRegionalResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 646) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readRegionalResources_tags_44413);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSMutableArray)regionalResources
{
  [(GEOActiveTileGroup *)self _readRegionalResources];
  regionalResources = self->_regionalResources;

  return regionalResources;
}

- (NSMutableDictionary)regionalResourceCanonicalNameToFileName
{
  [(GEOActiveTileGroup *)self _readRegionalResourceCanonicalNameToFileName];
  regionalResourceCanonicalNameToFileName = self->_regionalResourceCanonicalNameToFileName;

  return regionalResourceCanonicalNameToFileName;
}

- (void)_readRegionalResourceCanonicalNameToFileName
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 645) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readRegionalResourceCanonicalNameToFileName_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSMutableDictionary)resourceCanonicalNameToFileName
{
  [(GEOActiveTileGroup *)self _readResourceCanonicalNameToFileName];
  resourceCanonicalNameToFileName = self->_resourceCanonicalNameToFileName;

  return resourceCanonicalNameToFileName;
}

- (void)_readResourceCanonicalNameToFileName
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 646) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readResourceCanonicalNameToFileName_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSMutableArray)attributions
{
  [(GEOActiveTileGroup *)self _readAttributions];
  attributions = self->_attributions;

  return attributions;
}

- (unint64_t)attributionsCount
{
  [(GEOActiveTileGroup *)self _readAttributions];
  attributions = self->_attributions;

  return [(NSMutableArray *)attributions count];
}

- (void)_readAttributions
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 641) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readAttributions_tags_44428);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (void)dealloc
{
  [(GEOActiveTileGroup *)self clearHybridUnavailableRegions];
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOActiveTileGroup;
  [(GEOActiveTileGroup *)&v3 dealloc];
}

- (void)clearHybridUnavailableRegions
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x20uLL;
  os_unfair_lock_unlock(&self->_readerLock);
  *(&self->_flags + 8) |= 0x80u;
  self->_hybridUnavailableRegionsSpace = 0;
  self->_hybridUnavailableRegionsCount = 0;
  free(self->_hybridUnavailableRegions);
  self->_hybridUnavailableRegions = 0;
}

- (NSMutableArray)tileSets
{
  [(GEOActiveTileGroup *)self _readTileSets];
  tileSets = self->_tileSets;

  return tileSets;
}

- (void)_readTileSets
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 648) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readTileSets_tags_44430);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (BOOL)isMuninEnabled
{
  muninBucketsCount = [(GEOActiveTileGroup *)self muninBucketsCount];
  v4 = [(GEOActiveTileGroup *)self activeTileSetForStyle:57];

  if (muninBucketsCount)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (unint64_t)muninBucketsCount
{
  [(GEOActiveTileGroup *)self _readMuninBuckets];
  muninBuckets = self->_muninBuckets;

  return [(NSMutableArray *)muninBuckets count];
}

- (void)_readMuninBuckets
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 644) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readMuninBuckets_tags_44411);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSMutableArray)explicitResources
{
  [(GEOActiveTileGroup *)self _readExplicitResources];
  explicitResources = self->_explicitResources;

  return explicitResources;
}

- (void)_readExplicitResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 643) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readExplicitResources_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSString)uniqueIdentifier
{
  [(GEOActiveTileGroup *)self _readUniqueIdentifier];
  uniqueIdentifier = self->_uniqueIdentifier;

  return uniqueIdentifier;
}

- (void)_readUniqueIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 648) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readUniqueIdentifier_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSString)environment
{
  [(GEOActiveTileGroup *)self _readEnvironment];
  environment = self->_environment;

  return environment;
}

- (void)_readEnvironment
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 643) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readEnvironment_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (GEOOfflineMetadata)offlineMetadata
{
  [(GEOActiveTileGroup *)self _readOfflineMetadata];
  offlineMetadata = self->_offlineMetadata;

  return offlineMetadata;
}

- (void)_readOfflineMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 644) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readOfflineMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (unint64_t)staleResourcesCount
{
  [(GEOActiveTileGroup *)self _readStaleResources];
  staleResources = self->_staleResources;

  return [(NSMutableArray *)staleResources count];
}

- (void)_readDataSet
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 642) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readDataSet_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (void)_readActiveNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 640) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readActiveNames_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (void)_readStaleResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 647) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readStaleResources_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (GEODataSetDescription)dataSet
{
  [(GEOActiveTileGroup *)self _readDataSet];
  dataSet = self->_dataSet;

  return dataSet;
}

- (void)_readActiveScales
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 640) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readActiveScales_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (void)_readActiveScenarios
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 640) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readActiveScenarios_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

- (NSMutableArray)activeNames
{
  [(GEOActiveTileGroup *)self _readActiveNames];
  activeNames = self->_activeNames;

  return activeNames;
}

- (unint64_t)regionalResourcesCount
{
  [(GEOActiveTileGroup *)self _readRegionalResources];
  regionalResources = self->_regionalResources;

  return [(NSMutableArray *)regionalResources count];
}

- (GEOVersionManifest)versionManifest
{
  [(GEOActiveTileGroup *)self _readVersionManifest];
  versionManifest = self->_versionManifest;

  return versionManifest;
}

- (void)_readVersionManifest
{
  if (self)
  {
    os_unfair_lock_lock((self + 624));
    if ((*(self + 648) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileGroupReadSpecified(self, *(self + 8), &_readVersionManifest_tags_44425);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 624));
  }
}

@end