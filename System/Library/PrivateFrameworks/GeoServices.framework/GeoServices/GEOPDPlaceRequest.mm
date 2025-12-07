@interface GEOPDPlaceRequest
- (BOOL)isBrandLookupRequest;
- (BOOL)isCanonicalLocationSearchRequest;
- (BOOL)isForwardGeocoderRequest;
- (BOOL)isMerchantRequest;
- (BOOL)isPlaceRefinementRequest;
- (BOOL)shouldConsiderCaching;
- (GEOPDAnalyticMetadata)analyticMetadata;
- (GEOPDClientMetadata)clientMetadata;
- (GEOPDPlaceRequestParameters)placeRequestParameters;
- (NSData)handleData;
- (NSMutableArray)displayLanguages;
- (NSMutableArray)requestedComponents;
- (double)localTimestamp;
- (id)cacheKey;
- (int)geoUserPreferredTransportType;
- (int)requestType;
- (unint64_t)hash;
- (void)_readAnalyticMetadata;
- (void)_readClientMetadata;
- (void)_readDisplayLanguages;
- (void)_readHandleData;
- (void)_readPlaceRequestParameters;
- (void)_readRequestedComponents;
- (void)_readSpokenLanguages;
@end

@implementation GEOPDPlaceRequest

- (void)_readRequestedComponents
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x2000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readRequestedComponents_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOPDPlaceRequestParameters)placeRequestParameters
{
  [(GEOPDPlaceRequest *)self _readPlaceRequestParameters];
  placeRequestParameters = self->_placeRequestParameters;

  return placeRequestParameters;
}

- (void)_readPlaceRequestParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readPlaceRequestParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (int)requestType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if (flags)
  {
    return self->_requestType;
  }

  else
  {
    return 0;
  }
}

- (void)_readClientMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readClientMetadata_tags_21259);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOPDClientMetadata)clientMetadata
{
  [(GEOPDPlaceRequest *)self _readClientMetadata];
  clientMetadata = self->_clientMetadata;

  return clientMetadata;
}

- (NSMutableArray)requestedComponents
{
  [(GEOPDPlaceRequest *)self _readRequestedComponents];
  requestedComponents = self->_requestedComponents;

  return requestedComponents;
}

- (NSData)handleData
{
  [(GEOPDPlaceRequest *)self _readHandleData];
  handleData = self->_handleData;

  return handleData;
}

- (void)_readHandleData
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readHandleData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (id)cacheKey
{
  requestType = [(GEOPDPlaceRequest *)self requestType];
  v4 = 0;
  if (requestType > 6)
  {
    if (requestType == 7)
    {
      placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
      placeRefinementParameters = [(GEOPDPlaceRequestParameters *)placeRequestParameters placeRefinementParameters];
      v7 = 5;
    }

    else
    {
      if (requestType != 30)
      {
        goto LABEL_13;
      }

      placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
      placeRefinementParameters = [(GEOPDPlaceRequestParameters *)placeRequestParameters brandLookupParameters];
      v7 = 4;
    }
  }

  else if (requestType == 2)
  {
    placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
    placeRefinementParameters = [(GEOPDPlaceRequestParameters *)placeRequestParameters geocodingParameters];
    v7 = 1;
  }

  else
  {
    if (requestType != 3)
    {
      goto LABEL_13;
    }

    placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
    placeRefinementParameters = [(GEOPDPlaceRequestParameters *)placeRequestParameters canonicalLocationSearchParameters];
    v7 = 2;
  }

  data = [placeRefinementParameters data];

  if (data)
  {
    displayLanguages = [(GEOPDPlaceRequest *)self displayLanguages];
    v10 = [displayLanguages componentsJoinedByString:&stru_1EF7F3698];

    v11 = [v10 dataUsingEncoding:4];
    v12 = [data mutableCopy];
    [v12 appendData:v11];
    v14 = 0;
    v15 = 0;
    _GEOMurmurHash3_128_realign([v12 bytes], objc_msgSend(v12, "length"), v7, &v14);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llx%llx", v14, v15];
  }

  else
  {
    v4 = 0;
  }

LABEL_13:

  return v4;
}

- (unint64_t)hash
{
  [(GEOPDPlaceRequest *)self readAll:1];
  v17 = [(GEOPDAnalyticMetadata *)self->_analyticMetadata hash];
  v16 = [(GEOPDClientMetadata *)self->_clientMetadata hash];
  v15 = [(NSMutableArray *)self->_displayLanguages hash];
  v14 = [(NSMutableArray *)self->_spokenLanguages hash];
  v3 = [(NSMutableArray *)self->_requestedComponents hash];
  flags = self->_flags;
  if ((flags & 4) != 0)
  {
    v5 = 2654435761 * self->_suppressResultsRequiringAttribution;
    if (flags)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (flags)
    {
LABEL_3:
      v6 = 2654435761 * self->_requestType;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = [(GEOPDPlaceRequestParameters *)self->_placeRequestParameters hash];
  v8 = [(NSString *)self->_displayRegion hash];
  v9 = [(NSMutableArray *)self->_auxiliaryTierRequestedComponents hash];
  v10 = [(GEOPrivacyMetadata *)self->_privacyMetadata hash];
  v11 = [(NSMutableArray *)self->_partiallyComposedSearchResultRequestedComponents hash];
  if ((*&self->_flags & 2) != 0)
  {
    v12 = 2654435761 * self->_needLatency;
  }

  else
  {
    v12 = 0;
  }

  return v16 ^ v17 ^ v15 ^ v14 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSData *)self->_handleData hash];
}

- (GEOPDAnalyticMetadata)analyticMetadata
{
  [(GEOPDPlaceRequest *)self _readAnalyticMetadata];
  analyticMetadata = self->_analyticMetadata;

  return analyticMetadata;
}

- (void)_readAnalyticMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readAnalyticMetadata_tags_21264);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (void)_readSpokenLanguages
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x4000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readSpokenLanguages_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (double)localTimestamp
{
  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:60 fromDate:date];

  v5 = [v2 dateFromComponents:v4];
  v6 = [v2 components:28 fromDate:v5];
  v7 = [v2 dateFromComponents:v6];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (NSMutableArray)displayLanguages
{
  [(GEOPDPlaceRequest *)self _readDisplayLanguages];
  displayLanguages = self->_displayLanguages;

  return displayLanguages;
}

- (void)_readDisplayLanguages
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestReadSpecified(self, *(self + 8), &_readDisplayLanguages_tags_21263);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (int)geoUserPreferredTransportType
{
  v2 = GEOGetUserTransportTypePreference();
  if (v2 < 5)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldConsiderCaching
{
  if ([(GEOPDPlaceRequest *)self isForwardGeocoderRequest]|| [(GEOPDPlaceRequest *)self isCanonicalLocationSearchRequest]|| [(GEOPDPlaceRequest *)self isMerchantRequest]|| [(GEOPDPlaceRequest *)self isPlaceRefinementRequest])
  {
    return 1;
  }

  return [(GEOPDPlaceRequest *)self isBrandLookupRequest];
}

- (BOOL)isForwardGeocoderRequest
{
  if ([(GEOPDPlaceRequest *)self requestType]!= 2 || ![(GEOPDPlaceRequest *)self hasPlaceRequestParameters])
  {
    return 0;
  }

  placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
  v4 = placeRequestParameters;
  if (placeRequestParameters)
  {
    [(GEOPDPlaceRequestParameters *)placeRequestParameters _readGeocodingParameters];
    v5 = v4[24] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCanonicalLocationSearchRequest
{
  if ([(GEOPDPlaceRequest *)self requestType]!= 3 || ![(GEOPDPlaceRequest *)self hasPlaceRequestParameters])
  {
    return 0;
  }

  placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
  v4 = placeRequestParameters;
  if (placeRequestParameters)
  {
    [(GEOPDPlaceRequestParameters *)placeRequestParameters _readCanonicalLocationSearchParameters];
    v5 = v4[16] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMerchantRequest
{
  if ([(GEOPDPlaceRequest *)self requestType]!= 6 || ![(GEOPDPlaceRequest *)self hasPlaceRequestParameters])
  {
    return 0;
  }

  placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
  v4 = placeRequestParameters;
  if (placeRequestParameters)
  {
    [(GEOPDPlaceRequestParameters *)placeRequestParameters _readMerchantLookupParameters];
    v5 = v4[32] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPlaceRefinementRequest
{
  if ([(GEOPDPlaceRequest *)self requestType]!= 7 || ![(GEOPDPlaceRequest *)self hasPlaceRequestParameters])
  {
    return 0;
  }

  placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
  v4 = placeRequestParameters;
  if (placeRequestParameters)
  {
    [(GEOPDPlaceRequestParameters *)placeRequestParameters _readPlaceRefinementParameters];
    v5 = v4[39] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBrandLookupRequest
{
  if ([(GEOPDPlaceRequest *)self requestType]!= 30 || ![(GEOPDPlaceRequest *)self hasPlaceRequestParameters])
  {
    return 0;
  }

  placeRequestParameters = [(GEOPDPlaceRequest *)self placeRequestParameters];
  v4 = placeRequestParameters;
  if (placeRequestParameters)
  {
    [(GEOPDPlaceRequestParameters *)placeRequestParameters _readBrandLookupParameters];
    v5 = v4[14] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end