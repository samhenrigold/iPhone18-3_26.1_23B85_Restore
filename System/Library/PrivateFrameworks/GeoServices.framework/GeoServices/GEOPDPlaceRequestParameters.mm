@interface GEOPDPlaceRequestParameters
- (GEOPDPlaceRequestParameters)init;
- (id)autocompleteParameters;
- (id)batchReverseGeocodingParameters;
- (id)brandLookupParameters;
- (id)externalTransitLookupParameters;
- (id)groundViewLabelParameters;
- (id)merchantLookupParameters;
- (id)placeDescriptorResolutionParameters;
- (id)placeRefinementParameters;
- (id)reverseGeocodingParameters;
- (id)searchParameters;
- (id)transitNearbyPaymentMethodLookupParameters;
- (id)transitNearbyScheduleLookupParameters;
- (id)wifiFingerprintParameters;
- (unint64_t)hash;
- (void)_readAutocompleteParameters;
- (void)_readBatchReverseGeocodingParameters;
- (void)_readBrandLookupParameters;
- (void)_readExternalTransitLookupParameters;
- (void)_readGroundViewLabelParameters;
- (void)_readMapsIdentifierPlaceLookupParameters;
- (void)_readMerchantLookupParameters;
- (void)_readPlaceDescriptorResolutionParameters;
- (void)_readPlaceRefinementParameters;
- (void)_readReverseGeocodingParameters;
- (void)_readSearchParameters;
- (void)_readTransitNearbyPaymentMethodLookupParameters;
- (void)_readTransitNearbyScheduleLookupParameters;
- (void)_readWifiFingerprintParameters;
@end

@implementation GEOPDPlaceRequestParameters

- (id)reverseGeocodingParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readReverseGeocodingParameters];
    self = selfCopy[46];
    v1 = vars8;
  }

  return self;
}

- (void)_readReverseGeocodingParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readReverseGeocodingParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOPDPlaceRequestParameters)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlaceRequestParameters;
  v2 = [(GEOPDPlaceRequestParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)searchParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readSearchParameters];
    self = selfCopy[49];
    v1 = vars8;
  }

  return self;
}

- (void)_readSearchParameters
{
  os_unfair_lock_lock((self + 488));
  if ((*(self + 497) & 0x80) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readSearchParameters_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 488));
}

- (id)merchantLookupParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readMerchantLookupParameters];
    self = selfCopy[32];
    v1 = vars8;
  }

  return self;
}

- (void)_readMerchantLookupParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 495) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readMerchantLookupParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)autocompleteParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readAutocompleteParameters];
    self = selfCopy[8];
    v1 = vars8;
  }

  return self;
}

- (void)_readAutocompleteParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 492) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readAutocompleteParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)externalTransitLookupParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readExternalTransitLookupParameters];
    self = selfCopy[22];
    v1 = vars8;
  }

  return self;
}

- (void)_readExternalTransitLookupParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 494) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readExternalTransitLookupParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)batchReverseGeocodingParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readBatchReverseGeocodingParameters];
    self = selfCopy[12];
    v1 = vars8;
  }

  return self;
}

- (void)_readBatchReverseGeocodingParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 493) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readBatchReverseGeocodingParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)wifiFingerprintParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readWifiFingerprintParameters];
    self = selfCopy[59];
    v1 = vars8;
  }

  return self;
}

- (void)_readWifiFingerprintParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readWifiFingerprintParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)groundViewLabelParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readGroundViewLabelParameters];
    self = selfCopy[25];
    v1 = vars8;
  }

  return self;
}

- (void)_readGroundViewLabelParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 494) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readGroundViewLabelParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)transitNearbyScheduleLookupParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readTransitNearbyScheduleLookupParameters];
    self = selfCopy[55];
    v1 = vars8;
  }

  return self;
}

- (void)_readTransitNearbyScheduleLookupParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readTransitNearbyScheduleLookupParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)transitNearbyPaymentMethodLookupParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readTransitNearbyPaymentMethodLookupParameters];
    self = selfCopy[54];
    v1 = vars8;
  }

  return self;
}

- (void)_readTransitNearbyPaymentMethodLookupParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readTransitNearbyPaymentMethodLookupParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (id)placeDescriptorResolutionParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readPlaceDescriptorResolutionParameters];
    self = selfCopy[36];
    v1 = vars8;
  }

  return self;
}

- (void)_readPlaceDescriptorResolutionParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 496) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readPlaceDescriptorResolutionParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readMapsIdentifierPlaceLookupParameters
{
  os_unfair_lock_lock((self + 488));
  if ((*(self + 495) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readMapsIdentifierPlaceLookupParameters_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 488));
}

- (unint64_t)hash
{
  [(GEOPDPlaceRequestParameters *)self readAll:?];
  v3 = [(GEOPDSearchParameters *)self->_searchParameters hash];
  v4 = [(GEOPDGeocodingParameters *)self->_geocodingParameters hash]^ v3;
  v5 = [(GEOPDCanonicalLocationSearchParameters *)self->_canonicalLocationSearchParameters hash];
  v6 = v4 ^ v5 ^ [(GEOPDReverseGeocodingParameters *)self->_reverseGeocodingParameters hash];
  v7 = [(GEOPDPlaceLookupParameters *)self->_placeLookupParameters hash];
  v8 = v7 ^ [(GEOPDMerchantLookupParameters *)self->_merchantLookupParameters hash];
  v9 = v6 ^ v8 ^ [(GEOPDPlaceRefinementParameters *)self->_placeRefinementParameters hash];
  v10 = [(GEOPDSiriSearchParameters *)self->_siriSearchParameters hash];
  v11 = v10 ^ [(GEOPDLocationDirectedSearchParameters *)self->_locationDirectedSearchParameters hash];
  v12 = v11 ^ [(GEOPDAutocompleteParameters *)self->_autocompleteParameters hash];
  v13 = v9 ^ v12 ^ [(GEOPDSearchBrowseCategorySuggestionParameters *)self->_browseCategorySuggestionParameters hash];
  v14 = [(GEOPDCategorySearchParameters *)self->_categorySearchParameters hash];
  v15 = v14 ^ [(GEOPDPopularNearbySearchParameters *)self->_popularNearbySearchParameters hash];
  v16 = v15 ^ [(GEOPDSearchZeroKeywordCategorySuggestionParameters *)self->_searchZeroKeywordCategorySuggestionParameters hash];
  v17 = v16 ^ [(GEOPDSearchFieldPlaceholderParameters *)self->_searchFieldPlaceholderParameters hash];
  v18 = v13 ^ v17 ^ [(GEOPDBatchPopularNearbySearchParameters *)self->_batchPopularNearbySearchParameters hash];
  v19 = [(GEOPDVendorSpecificPlaceRefinementParameters *)self->_vendorSpecificPlaceRefinementParameters hash];
  v20 = v19 ^ [(GEOPDNearbySearchParameters *)self->_nearbySearchParameters hash];
  v21 = v20 ^ [(GEOPDAddressObjectGeocodingParameters *)self->_addressObjectGeocodingParameters hash];
  v22 = v21 ^ [(GEOPDSearchZeroKeywordWithSearchResultsSuggestionParameters *)self->_searchZeroKeywordWithSearchResultsSuggestionParameters hash];
  v23 = v22 ^ [(GEOPDExternalTransitLookupParameters *)self->_externalTransitLookupParameters hash];
  v24 = v18 ^ v23 ^ [(GEOPDFeatureIdGeocodingParameters *)self->_featureIdGeocodingParameters hash];
  v25 = [(GEOPDMapsIdentifierPlaceLookupParameters *)self->_mapsIdentifierPlaceLookupParameters hash];
  v26 = v25 ^ [(GEOPDBatchReverseGeocodingParameters *)self->_batchReverseGeocodingParameters hash];
  v27 = v26 ^ [(GEOPDBrandLookupParameters *)self->_brandLookupParameters hash];
  v28 = v27 ^ [(GEOPDWifiFingerprintParameters *)self->_wifiFingerprintParameters hash];
  v29 = v28 ^ [(GEOPDIpGeoLookupParameters *)self->_ipGeoLookupParameters hash];
  v30 = v29 ^ [(GEOPDGroundViewLabelParameters *)self->_groundViewLabelParameters hash];
  v31 = v24 ^ v30 ^ [(GEOPDBatchSpatialLookupParameters *)self->_batchSpatialLookupParameters hash];
  v32 = [(GEOPDTransitVehiclePositionParameters *)self->_transitVehiclePositionParameters hash];
  v33 = v32 ^ [(GEOPDPlaceCollectionLookupParameters *)self->_placeCollectionLookupParameter hash];
  v34 = v33 ^ [(GEOPBTransitScheduleLookupParameters *)self->_transitScheduleLookupParameter hash];
  v35 = v34 ^ [(GEOPDBatchCategoryLookupParameters *)self->_batchCategoryLookupParameters hash];
  v36 = v35 ^ [(GEOPDBatchMerchantLookupBrandParameters *)self->_batchMerchantLookupBrandParameters hash];
  v37 = v36 ^ [(GEOPDChildPlaceLookupByCategoryParameters *)self->_childPlaceLookupByCategoryParameters hash];
  v38 = v37 ^ [(GEOPDCollectionSuggestionParameters *)self->_collectionSuggestionParameters hash];
  v39 = v31 ^ v38 ^ [(GEOPDMapsSearchHomeParameters *)self->_mapsSearchHomeParameters hash];
  v40 = [(GEOPDPlaceQuestionnaireLookupParameters *)self->_placeQuestionnaireLookupParameters hash];
  v41 = v40 ^ [(GEOPDPublisherViewParameters *)self->_publisherViewParameters hash];
  v42 = v41 ^ [(GEOPDAllCollectionsViewParameters *)self->_allCollectionsViewParameters hash];
  v43 = v42 ^ [(GEOPDAirportEntityPlaceLookupParameters *)self->_airportEntityPlaceLookupParameters hash];
  v44 = v43 ^ [(GEOPDTerritoryLookupParameters *)self->_territoryLookupParameters hash];
  v45 = v44 ^ [(GEOPDTransitNearbyScheduleLookupParameters *)self->_transitNearbyScheduleLookupParameters hash];
  v46 = v45 ^ [(GEOPDMapsHomeParameters *)self->_mapsHomeParameters hash];
  v47 = v46 ^ [(GEOPDAllGuidesLocationsViewParameters *)self->_allGuidesLocationsViewParameters hash];
  v48 = v39 ^ v47 ^ [(GEOPDGuidesHomeParameters *)self->_guidesHomeParameters hash];
  v49 = [(GEOPDExtendedGeoLookupParameters *)self->_extendedGeoLookupParameters hash];
  v50 = v49 ^ [(GEOPDQueryUnderstandingParameters *)self->_queryUnderstandingParameters hash];
  v51 = v50 ^ [(GEOPDPoiAtAddressLookupParameters *)self->_poiAtAddressLookupParameters hash];
  v52 = v51 ^ [(GEOPDTransitNearbyPaymentMethodLookupParameters *)self->_transitNearbyPaymentMethodLookupParameters hash];
  v53 = v52 ^ [(GEOPDPlacecardEnrichmentParameters *)self->_placecardEnrichmentParameters hash];
  v54 = v53 ^ [(GEOPDOfflineRegionNameParameters *)self->_offlineRegionNameParameters hash];
  v55 = v54 ^ [(GEOPDSearchCapabilitiesParameters *)self->_searchCapabilitiesParameters hash];
  v56 = v55 ^ [(GEOPDRefreshIdLookUpParameters *)self->_refreshIdLookUpParameters hash];
  v57 = v56 ^ [(GEOPDAddressRecommendationParameters *)self->_addressRecommendationParameters hash];
  v58 = v48 ^ v57 ^ [(GEOPDPlaceDescriptorResolutionParameters *)self->_placeDescriptorResolutionParameters hash];
  return v58 ^ [(GEOPDExploreGuidesLookupParameters *)self->_exploreGuidesLookupParameters hash];
}

- (id)placeRefinementParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readPlaceRefinementParameters];
    self = selfCopy[39];
    v1 = vars8;
  }

  return self;
}

- (void)_readPlaceRefinementParameters
{
  os_unfair_lock_lock((self + 488));
  if ((*(self + 496) & 0x20) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readPlaceRefinementParameters_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 488));
}

- (void)_readBrandLookupParameters
{
  os_unfair_lock_lock((self + 488));
  if ((*(self + 493) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceRequestParametersReadSpecified(self, *(self + 8), &_readBrandLookupParameters_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 488));
}

- (id)brandLookupParameters
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceRequestParameters *)self _readBrandLookupParameters];
    self = selfCopy[14];
    v1 = vars8;
  }

  return self;
}

@end