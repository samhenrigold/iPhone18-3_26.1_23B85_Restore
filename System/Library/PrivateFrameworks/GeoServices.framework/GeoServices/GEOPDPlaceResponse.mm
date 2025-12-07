@interface GEOPDPlaceResponse
- (GEOPDDatasetABStatus)datasetAbStatus;
- (GEOPDPlaceGlobalResult)globalResult;
- (GEOPDPlaceResponse)init;
- (NSMutableArray)legacyPlaceResults;
- (NSMutableArray)mapsResults;
- (id)_disambiguationLabels;
- (int)status;
- (unint64_t)dotPlacesCount;
- (unint64_t)mapsResultsCount;
- (void)_readDatasetAbStatus;
- (void)_readDotPlaces;
- (void)_readGlobalResult;
- (void)_readLegacyPlaceResults;
- (void)_readMapsResults;
@end

@implementation GEOPDPlaceResponse

- (void)_readGlobalResult
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceResponseReadSpecified(self, *(self + 8), &_readGlobalResult_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (int)status
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 4) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)_readMapsResults
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x1000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceResponseReadSpecified(self, *(self + 8), &_readMapsResults_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (unint64_t)mapsResultsCount
{
  [(GEOPDPlaceResponse *)self _readMapsResults];
  mapsResults = self->_mapsResults;

  return [(NSMutableArray *)mapsResults count];
}

- (NSMutableArray)mapsResults
{
  [(GEOPDPlaceResponse *)self _readMapsResults];
  mapsResults = self->_mapsResults;

  return mapsResults;
}

- (id)_disambiguationLabels
{
  if (![(GEOPDPlaceResponse *)self hasGlobalResult])
  {
    v8 = 0;
    goto LABEL_16;
  }

  globalResult = [(GEOPDPlaceResponse *)self globalResult];
  v4 = globalResult;
  if (!globalResult)
  {
    goto LABEL_19;
  }

  [(GEOPDPlaceGlobalResult *)globalResult _readSearchResult];
  if (!*(v4 + 384))
  {
    [(GEOPDPlaceGlobalResult *)v4 _readGeocodingResult];
    if (*(v4 + 192))
    {
      geocodingResult = [(GEOPDPlaceGlobalResult *)v4 geocodingResult];
      if (geocodingResult)
      {
        v7 = &OBJC_IVAR___GEOPDGeocodingResult__disambiguationLabels;
        goto LABEL_13;
      }

LABEL_20:
      v8 = 0;
      goto LABEL_14;
    }

    [(GEOPDPlaceGlobalResult *)v4 _readLocationDirectedSearchResult];
    if (*(v4 + 224))
    {
      locationDirectedSearchResult = [(GEOPDPlaceGlobalResult *)v4 locationDirectedSearchResult];
      geocodingResult = locationDirectedSearchResult;
      if (locationDirectedSearchResult)
      {
        [(GEOPDLocationDirectedSearchResult *)locationDirectedSearchResult _readDisambiguationLabels];
        v7 = &OBJC_IVAR___GEOPDLocationDirectedSearchResult__disambiguationLabels;
        goto LABEL_13;
      }

      goto LABEL_20;
    }

LABEL_19:
    v8 = 0;
    goto LABEL_15;
  }

  searchResult = [(GEOPDPlaceGlobalResult *)v4 searchResult];
  geocodingResult = searchResult;
  if (!searchResult)
  {
    goto LABEL_20;
  }

  [(GEOPDSearchResult *)searchResult _readDisambiguationLabels];
  v7 = &OBJC_IVAR___GEOPDSearchResult__disambiguationLabels;
LABEL_13:
  v8 = *&geocodingResult[*v7];
LABEL_14:

LABEL_15:
LABEL_16:

  return v8;
}

- (void)_readDotPlaces
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x400) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceResponseReadSpecified(self, *(self + 8), &_readDotPlaces_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (unint64_t)dotPlacesCount
{
  [(GEOPDPlaceResponse *)self _readDotPlaces];
  dotPlaces = self->_dotPlaces;

  return [(NSMutableArray *)dotPlaces count];
}

- (GEOPDPlaceResponse)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlaceResponse;
  v2 = [(GEOPDPlaceResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOPDDatasetABStatus)datasetAbStatus
{
  [(GEOPDPlaceResponse *)self _readDatasetAbStatus];
  datasetAbStatus = self->_datasetAbStatus;

  return datasetAbStatus;
}

- (void)_readDatasetAbStatus
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceResponseReadSpecified(self, *(self + 8), &_readDatasetAbStatus_tags_21256);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (NSMutableArray)legacyPlaceResults
{
  [(GEOPDPlaceResponse *)self _readLegacyPlaceResults];
  legacyPlaceResults = self->_legacyPlaceResults;

  return legacyPlaceResults;
}

- (void)_readLegacyPlaceResults
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 140) & 0x2000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceResponseReadSpecified(self, *(self + 8), &_readLegacyPlaceResults_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (GEOPDPlaceGlobalResult)globalResult
{
  [(GEOPDPlaceResponse *)self _readGlobalResult];
  globalResult = self->_globalResult;

  return globalResult;
}

@end