@interface GEOURLInfoSet
- (GEOURLInfo)abExperimentURL;
- (GEOURLInfo)addressCorrectionInitURL;
- (GEOURLInfo)addressCorrectionTaggedLocationURL;
- (GEOURLInfo)addressCorrectionUpdateURL;
- (GEOURLInfo)analyticsCohortSessionURL;
- (GEOURLInfo)analyticsLongSessionURL;
- (GEOURLInfo)analyticsSessionlessURL;
- (GEOURLInfo)analyticsShortSessionURL;
- (GEOURLInfo)announcementsURL;
- (GEOURLInfo)authProxyURL;
- (GEOURLInfo)authenticatedClientFeatureFlagURL;
- (GEOURLInfo)backgroundDispatcherURL;
- (GEOURLInfo)backgroundRevGeoURL;
- (GEOURLInfo)batchReverseGeocoderPlaceRequestURL;
- (GEOURLInfo)batchReverseGeocoderURL;
- (GEOURLInfo)batchTrafficProbeURL;
- (GEOURLInfo)bcxDispatcherURL;
- (GEOURLInfo)bluePOIDispatcherURL;
- (GEOURLInfo)businessPortalBaseURL;
- (GEOURLInfo)directionsURL;
- (GEOURLInfo)dispatcherURL;
- (GEOURLInfo)enrichmentSubmissionURL;
- (GEOURLInfo)etaURL;
- (GEOURLInfo)feedbackLookupURL;
- (GEOURLInfo)feedbackSubmissionURL;
- (GEOURLInfo)junctionImageServiceURL;
- (GEOURLInfo)logMessageUsageURL;
- (GEOURLInfo)logMessageUsageV3URL;
- (GEOURLInfo)mapsURLShortenerURL;
- (GEOURLInfo)muninBaseURL;
- (GEOURLInfo)networkSelectionHarvestURL;
- (GEOURLInfo)offlineDataBatchListURL;
- (GEOURLInfo)offlineDataDownloadBaseURL;
- (GEOURLInfo)offlineDataSizeURL;
- (GEOURLInfo)poiBusynessActivityCollectionURL;
- (GEOURLInfo)polyLocationShiftURL;
- (GEOURLInfo)pressureProbeDataURL;
- (GEOURLInfo)proactiveRoutingURL;
- (GEOURLInfo)problemCategoriesURL;
- (GEOURLInfo)problemOptInURL;
- (GEOURLInfo)problemStatusURL;
- (GEOURLInfo)problemSubmissionURL;
- (GEOURLInfo)rapWebBundleURL;
- (GEOURLInfo)realtimeTrafficProbeURL;
- (GEOURLInfo)resourcesURL;
- (GEOURLInfo)reverseGeocoderVersionsURL;
- (GEOURLInfo)searchAttributionManifestURL;
- (GEOURLInfo)simpleETAURL;
- (GEOURLInfo)spatialLookupURL;
- (GEOURLInfo)tokenAuthenticationURL;
- (GEOURLInfo)ugcLogDiscardURL;
- (GEOURLInfo)webModuleBaseURL;
- (GEOURLInfo)wifiConnectionQualityProbeURL;
- (GEOURLInfo)wifiQualityTileURL;
- (GEOURLInfo)wifiQualityURL;
- (GEOURLInfoSet)init;
- (NSArray)alternateResourcesNSURLs;
- (NSMutableArray)alternateResourcesURLs;
- (NSURL)resourcesProxyURL;
- (unint64_t)alternateResourcesURLsCount;
- (void)_readAbExperimentURL;
- (void)_readAddressCorrectionInitURL;
- (void)_readAddressCorrectionTaggedLocationURL;
- (void)_readAddressCorrectionUpdateURL;
- (void)_readAlternateResourcesURLs;
- (void)_readAnalyticsCohortSessionURL;
- (void)_readAnalyticsLongSessionURL;
- (void)_readAnalyticsSessionlessURL;
- (void)_readAnalyticsShortSessionURL;
- (void)_readAnnouncementsURL;
- (void)_readAuthProxyURL;
- (void)_readAuthenticatedClientFeatureFlagURL;
- (void)_readBackgroundDispatcherURL;
- (void)_readBackgroundRevGeoURL;
- (void)_readBatchReverseGeocoderPlaceRequestURL;
- (void)_readBatchReverseGeocoderURL;
- (void)_readBatchTrafficProbeURL;
- (void)_readBcxDispatcherURL;
- (void)_readBluePOIDispatcherURL;
- (void)_readBusinessPortalBaseURL;
- (void)_readDirectionsURL;
- (void)_readDispatcherURL;
- (void)_readEnrichmentSubmissionURL;
- (void)_readEtaURL;
- (void)_readFeedbackLookupURL;
- (void)_readFeedbackSubmissionURL;
- (void)_readJunctionImageServiceURL;
- (void)_readLogMessageUsageURL;
- (void)_readLogMessageUsageV3URL;
- (void)_readMapsURLShortenerURL;
- (void)_readMuninBaseURL;
- (void)_readNetworkSelectionHarvestURL;
- (void)_readOfflineDataBatchListURL;
- (void)_readOfflineDataDownloadBaseURL;
- (void)_readOfflineDataSizeURL;
- (void)_readPoiBusynessActivityCollectionURL;
- (void)_readPolyLocationShiftURL;
- (void)_readPressureProbeDataURL;
- (void)_readProactiveRoutingURL;
- (void)_readProblemCategoriesURL;
- (void)_readProblemOptInURL;
- (void)_readProblemStatusURL;
- (void)_readProblemSubmissionURL;
- (void)_readRapWebBundleURL;
- (void)_readRealtimeTrafficProbeURL;
- (void)_readResourcesURL;
- (void)_readReverseGeocoderVersionsURL;
- (void)_readSearchAttributionManifestURL;
- (void)_readSimpleETAURL;
- (void)_readSpatialLookupURL;
- (void)_readTokenAuthenticationURL;
- (void)_readUgcLogDiscardURL;
- (void)_readWebModuleBaseURL;
- (void)_readWifiConnectionQualityProbeURL;
- (void)_readWifiQualityTileURL;
- (void)_readWifiQualityURL;
@end

@implementation GEOURLInfoSet

- (void)_readResourcesURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readResourcesURL_tags_1511);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)resourcesURL
{
  [(GEOURLInfoSet *)self _readResourcesURL];
  resourcesURL = self->_resourcesURL;

  return resourcesURL;
}

- (NSArray)alternateResourcesNSURLs
{
  v3 = _getValue(64, &GeoServicesConfig_AlternateResourceURLs_Metadata, 1, 0, 0, 0);
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[GEOURLInfoSet alternateResourcesURLsCount](self, "alternateResourcesURLsCount")}];
  alternateResourcesURLs = [(GEOURLInfoSet *)self alternateResourcesURLs];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__GEOURLInfoSet_Extras__alternateResourcesNSURLs__block_invoke;
  v11[3] = &unk_1E705F060;
  v12 = v3;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  [alternateResourcesURLs enumerateObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (unint64_t)alternateResourcesURLsCount
{
  [(GEOURLInfoSet *)self _readAlternateResourcesURLs];
  alternateResourcesURLs = self->_alternateResourcesURLs;

  return [(NSMutableArray *)alternateResourcesURLs count];
}

- (void)_readAlternateResourcesURLs
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 496) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAlternateResourcesURLs_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (NSMutableArray)alternateResourcesURLs
{
  [(GEOURLInfoSet *)self _readAlternateResourcesURLs];
  alternateResourcesURLs = self->_alternateResourcesURLs;

  return alternateResourcesURLs;
}

void __49__GEOURLInfoSet_Extras__alternateResourcesNSURLs__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v9 = [v7 URLWithString:v8];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [v11 nsURL];
  if (v10)
  {
    v9 = v10;
LABEL_5:
    [*(a1 + 40) addObject:v9];

    goto LABEL_7;
  }

  [*(a1 + 40) removeAllObjects];
  *a4 = 1;
LABEL_7:
}

- (NSURL)resourcesProxyURL
{
  if (GEOAuthProxyEnabledForURLInfoSet(self) && (-[GEOURLInfoSet resourcesURL](self, "resourcesURL"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 useAuthProxy], v3, v4))
  {
    v5 = GEOGetURLIgnoringManifest(39);
    if (!v5)
    {
      v6 = MEMORY[0x1E695DFF8];
      authProxyURL = [(GEOURLInfoSet *)self authProxyURL];
      v8 = [authProxyURL url];
      v5 = [v6 URLWithString:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_readAuthProxyURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAuthProxyURL_tags_1540);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)polyLocationShiftURL
{
  [(GEOURLInfoSet *)self _readPolyLocationShiftURL];
  polyLocationShiftURL = self->_polyLocationShiftURL;

  return polyLocationShiftURL;
}

- (void)_readPolyLocationShiftURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readPolyLocationShiftURL_tags_1519);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfoSet)init
{
  v6.receiver = self;
  v6.super_class = GEOURLInfoSet;
  v2 = [(GEOURLInfoSet *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOURLInfo)analyticsCohortSessionURL
{
  [(GEOURLInfoSet *)self _readAnalyticsCohortSessionURL];
  analyticsCohortSessionURL = self->_analyticsCohortSessionURL;

  return analyticsCohortSessionURL;
}

- (void)_readAnalyticsCohortSessionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 496) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAnalyticsCohortSessionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)authProxyURL
{
  [(GEOURLInfoSet *)self _readAuthProxyURL];
  authProxyURL = self->_authProxyURL;

  return authProxyURL;
}

- (GEOURLInfo)dispatcherURL
{
  [(GEOURLInfoSet *)self _readDispatcherURL];
  dispatcherURL = self->_dispatcherURL;

  return dispatcherURL;
}

- (void)_readDispatcherURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readDispatcherURL_tags_1525);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)directionsURL
{
  [(GEOURLInfoSet *)self _readDirectionsURL];
  directionsURL = self->_directionsURL;

  return directionsURL;
}

- (void)_readDirectionsURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readDirectionsURL_tags_1513);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readEtaURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readEtaURL_tags_1514);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readProblemSubmissionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readProblemSubmissionURL_tags_1520);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readSimpleETAURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readSimpleETAURL_tags_1516);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)addressCorrectionUpdateURL
{
  [(GEOURLInfoSet *)self _readAddressCorrectionUpdateURL];
  addressCorrectionUpdateURL = self->_addressCorrectionUpdateURL;

  return addressCorrectionUpdateURL;
}

- (GEOURLInfo)addressCorrectionInitURL
{
  [(GEOURLInfoSet *)self _readAddressCorrectionInitURL];
  addressCorrectionInitURL = self->_addressCorrectionInitURL;

  return addressCorrectionInitURL;
}

- (void)_readAddressCorrectionInitURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 496) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAddressCorrectionInitURL_tags_1517);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)etaURL
{
  [(GEOURLInfoSet *)self _readEtaURL];
  etaURL = self->_etaURL;

  return etaURL;
}

- (GEOURLInfo)searchAttributionManifestURL
{
  [(GEOURLInfoSet *)self _readSearchAttributionManifestURL];
  searchAttributionManifestURL = self->_searchAttributionManifestURL;

  return searchAttributionManifestURL;
}

- (void)_readSearchAttributionManifestURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readSearchAttributionManifestURL_tags_1512);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)problemSubmissionURL
{
  [(GEOURLInfoSet *)self _readProblemSubmissionURL];
  problemSubmissionURL = self->_problemSubmissionURL;

  return problemSubmissionURL;
}

- (GEOURLInfo)problemStatusURL
{
  [(GEOURLInfoSet *)self _readProblemStatusURL];
  problemStatusURL = self->_problemStatusURL;

  return problemStatusURL;
}

- (void)_readProblemStatusURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readProblemStatusURL_tags_1521);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)problemCategoriesURL
{
  [(GEOURLInfoSet *)self _readProblemCategoriesURL];
  problemCategoriesURL = self->_problemCategoriesURL;

  return problemCategoriesURL;
}

- (void)_readProblemCategoriesURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readProblemCategoriesURL_tags_1523);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)batchReverseGeocoderURL
{
  [(GEOURLInfoSet *)self _readBatchReverseGeocoderURL];
  batchReverseGeocoderURL = self->_batchReverseGeocoderURL;

  return batchReverseGeocoderURL;
}

- (void)_readBatchReverseGeocoderURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBatchReverseGeocoderURL_tags_1515);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)simpleETAURL
{
  [(GEOURLInfoSet *)self _readSimpleETAURL];
  simpleETAURL = self->_simpleETAURL;

  return simpleETAURL;
}

- (void)_readAddressCorrectionUpdateURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 496) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAddressCorrectionUpdateURL_tags_1518);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)reverseGeocoderVersionsURL
{
  [(GEOURLInfoSet *)self _readReverseGeocoderVersionsURL];
  reverseGeocoderVersionsURL = self->_reverseGeocoderVersionsURL;

  return reverseGeocoderVersionsURL;
}

- (void)_readReverseGeocoderVersionsURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readReverseGeocoderVersionsURL_tags_1522);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)announcementsURL
{
  [(GEOURLInfoSet *)self _readAnnouncementsURL];
  announcementsURL = self->_announcementsURL;

  return announcementsURL;
}

- (void)_readAnnouncementsURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAnnouncementsURL_tags_1524);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)problemOptInURL
{
  [(GEOURLInfoSet *)self _readProblemOptInURL];
  problemOptInURL = self->_problemOptInURL;

  return problemOptInURL;
}

- (void)_readProblemOptInURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readProblemOptInURL_tags_1526);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)abExperimentURL
{
  [(GEOURLInfoSet *)self _readAbExperimentURL];
  abExperimentURL = self->_abExperimentURL;

  return abExperimentURL;
}

- (void)_readAbExperimentURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAbExperimentURL_tags_1527);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)businessPortalBaseURL
{
  [(GEOURLInfoSet *)self _readBusinessPortalBaseURL];
  businessPortalBaseURL = self->_businessPortalBaseURL;

  return businessPortalBaseURL;
}

- (void)_readBusinessPortalBaseURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBusinessPortalBaseURL_tags_1528);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)logMessageUsageURL
{
  [(GEOURLInfoSet *)self _readLogMessageUsageURL];
  logMessageUsageURL = self->_logMessageUsageURL;

  return logMessageUsageURL;
}

- (void)_readLogMessageUsageURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readLogMessageUsageURL_tags_1529);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)spatialLookupURL
{
  [(GEOURLInfoSet *)self _readSpatialLookupURL];
  spatialLookupURL = self->_spatialLookupURL;

  return spatialLookupURL;
}

- (void)_readSpatialLookupURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readSpatialLookupURL_tags_1530);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readRealtimeTrafficProbeURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readRealtimeTrafficProbeURL_tags_1531);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)batchTrafficProbeURL
{
  [(GEOURLInfoSet *)self _readBatchTrafficProbeURL];
  batchTrafficProbeURL = self->_batchTrafficProbeURL;

  return batchTrafficProbeURL;
}

- (void)_readBatchTrafficProbeURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBatchTrafficProbeURL_tags_1532);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)realtimeTrafficProbeURL
{
  [(GEOURLInfoSet *)self _readRealtimeTrafficProbeURL];
  realtimeTrafficProbeURL = self->_realtimeTrafficProbeURL;

  return realtimeTrafficProbeURL;
}

- (void)_readBackgroundDispatcherURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBackgroundDispatcherURL_tags_1535);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)bluePOIDispatcherURL
{
  [(GEOURLInfoSet *)self _readBluePOIDispatcherURL];
  bluePOIDispatcherURL = self->_bluePOIDispatcherURL;

  return bluePOIDispatcherURL;
}

- (void)_readBluePOIDispatcherURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBluePOIDispatcherURL_tags_1536);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)backgroundRevGeoURL
{
  [(GEOURLInfoSet *)self _readBackgroundRevGeoURL];
  backgroundRevGeoURL = self->_backgroundRevGeoURL;

  return backgroundRevGeoURL;
}

- (GEOURLInfo)junctionImageServiceURL
{
  [(GEOURLInfoSet *)self _readJunctionImageServiceURL];
  junctionImageServiceURL = self->_junctionImageServiceURL;

  return junctionImageServiceURL;
}

- (GEOURLInfo)wifiConnectionQualityProbeURL
{
  [(GEOURLInfoSet *)self _readWifiConnectionQualityProbeURL];
  wifiConnectionQualityProbeURL = self->_wifiConnectionQualityProbeURL;

  return wifiConnectionQualityProbeURL;
}

- (void)_readWifiConnectionQualityProbeURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 503) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readWifiConnectionQualityProbeURL_tags_1538);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)muninBaseURL
{
  [(GEOURLInfoSet *)self _readMuninBaseURL];
  muninBaseURL = self->_muninBaseURL;

  return muninBaseURL;
}

- (GEOURLInfo)feedbackLookupURL
{
  [(GEOURLInfoSet *)self _readFeedbackLookupURL];
  feedbackLookupURL = self->_feedbackLookupURL;

  return feedbackLookupURL;
}

- (void)_readFeedbackLookupURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readFeedbackLookupURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readAnalyticsShortSessionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAnalyticsShortSessionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)webModuleBaseURL
{
  [(GEOURLInfoSet *)self _readWebModuleBaseURL];
  webModuleBaseURL = self->_webModuleBaseURL;

  return webModuleBaseURL;
}

- (GEOURLInfo)wifiQualityTileURL
{
  [(GEOURLInfoSet *)self _readWifiQualityTileURL];
  wifiQualityTileURL = self->_wifiQualityTileURL;

  return wifiQualityTileURL;
}

- (GEOURLInfo)tokenAuthenticationURL
{
  [(GEOURLInfoSet *)self _readTokenAuthenticationURL];
  tokenAuthenticationURL = self->_tokenAuthenticationURL;

  return tokenAuthenticationURL;
}

- (void)_readTokenAuthenticationURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readTokenAuthenticationURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)authenticatedClientFeatureFlagURL
{
  [(GEOURLInfoSet *)self _readAuthenticatedClientFeatureFlagURL];
  authenticatedClientFeatureFlagURL = self->_authenticatedClientFeatureFlagURL;

  return authenticatedClientFeatureFlagURL;
}

- (GEOURLInfo)ugcLogDiscardURL
{
  [(GEOURLInfoSet *)self _readUgcLogDiscardURL];
  ugcLogDiscardURL = self->_ugcLogDiscardURL;

  return ugcLogDiscardURL;
}

- (void)_readUgcLogDiscardURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readUgcLogDiscardURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)pressureProbeDataURL
{
  [(GEOURLInfoSet *)self _readPressureProbeDataURL];
  pressureProbeDataURL = self->_pressureProbeDataURL;

  return pressureProbeDataURL;
}

- (GEOURLInfo)poiBusynessActivityCollectionURL
{
  [(GEOURLInfoSet *)self _readPoiBusynessActivityCollectionURL];
  poiBusynessActivityCollectionURL = self->_poiBusynessActivityCollectionURL;

  return poiBusynessActivityCollectionURL;
}

- (GEOURLInfo)rapWebBundleURL
{
  [(GEOURLInfoSet *)self _readRapWebBundleURL];
  rapWebBundleURL = self->_rapWebBundleURL;

  return rapWebBundleURL;
}

- (GEOURLInfo)networkSelectionHarvestURL
{
  [(GEOURLInfoSet *)self _readNetworkSelectionHarvestURL];
  networkSelectionHarvestURL = self->_networkSelectionHarvestURL;

  return networkSelectionHarvestURL;
}

- (void)_readNetworkSelectionHarvestURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readNetworkSelectionHarvestURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)offlineDataBatchListURL
{
  [(GEOURLInfoSet *)self _readOfflineDataBatchListURL];
  offlineDataBatchListURL = self->_offlineDataBatchListURL;

  return offlineDataBatchListURL;
}

- (GEOURLInfo)offlineDataDownloadBaseURL
{
  [(GEOURLInfoSet *)self _readOfflineDataDownloadBaseURL];
  offlineDataDownloadBaseURL = self->_offlineDataDownloadBaseURL;

  return offlineDataDownloadBaseURL;
}

- (void)_readBcxDispatcherURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBcxDispatcherURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readMapsURLShortenerURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readMapsURLShortenerURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)logMessageUsageV3URL
{
  [(GEOURLInfoSet *)self _readLogMessageUsageV3URL];
  logMessageUsageV3URL = self->_logMessageUsageV3URL;

  return logMessageUsageV3URL;
}

- (void)_readLogMessageUsageV3URL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readLogMessageUsageV3URL_tags_1534);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)proactiveRoutingURL
{
  [(GEOURLInfoSet *)self _readProactiveRoutingURL];
  proactiveRoutingURL = self->_proactiveRoutingURL;

  return proactiveRoutingURL;
}

- (void)_readProactiveRoutingURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readProactiveRoutingURL_tags_1533);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)backgroundDispatcherURL
{
  [(GEOURLInfoSet *)self _readBackgroundDispatcherURL];
  backgroundDispatcherURL = self->_backgroundDispatcherURL;

  return backgroundDispatcherURL;
}

- (void)_readBackgroundRevGeoURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBackgroundRevGeoURL_tags_1537);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readJunctionImageServiceURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readJunctionImageServiceURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readMuninBaseURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readMuninBaseURL_tags_1539);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)wifiQualityURL
{
  [(GEOURLInfoSet *)self _readWifiQualityURL];
  wifiQualityURL = self->_wifiQualityURL;

  return wifiQualityURL;
}

- (void)_readWifiQualityURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 503) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readWifiQualityURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)feedbackSubmissionURL
{
  [(GEOURLInfoSet *)self _readFeedbackSubmissionURL];
  feedbackSubmissionURL = self->_feedbackSubmissionURL;

  return feedbackSubmissionURL;
}

- (void)_readFeedbackSubmissionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readFeedbackSubmissionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)analyticsLongSessionURL
{
  [(GEOURLInfoSet *)self _readAnalyticsLongSessionURL];
  analyticsLongSessionURL = self->_analyticsLongSessionURL;

  return analyticsLongSessionURL;
}

- (void)_readAnalyticsLongSessionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAnalyticsLongSessionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)analyticsShortSessionURL
{
  [(GEOURLInfoSet *)self _readAnalyticsShortSessionURL];
  analyticsShortSessionURL = self->_analyticsShortSessionURL;

  return analyticsShortSessionURL;
}

- (GEOURLInfo)analyticsSessionlessURL
{
  [(GEOURLInfoSet *)self _readAnalyticsSessionlessURL];
  analyticsSessionlessURL = self->_analyticsSessionlessURL;

  return analyticsSessionlessURL;
}

- (void)_readAnalyticsSessionlessURL
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
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAnalyticsSessionlessURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readWebModuleBaseURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 502) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readWebModuleBaseURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readWifiQualityTileURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 503) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readWifiQualityTileURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readAuthenticatedClientFeatureFlagURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 497) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAuthenticatedClientFeatureFlagURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)addressCorrectionTaggedLocationURL
{
  [(GEOURLInfoSet *)self _readAddressCorrectionTaggedLocationURL];
  addressCorrectionTaggedLocationURL = self->_addressCorrectionTaggedLocationURL;

  return addressCorrectionTaggedLocationURL;
}

- (void)_readAddressCorrectionTaggedLocationURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 496) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readAddressCorrectionTaggedLocationURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)enrichmentSubmissionURL
{
  [(GEOURLInfoSet *)self _readEnrichmentSubmissionURL];
  enrichmentSubmissionURL = self->_enrichmentSubmissionURL;

  return enrichmentSubmissionURL;
}

- (void)_readEnrichmentSubmissionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 499) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readEnrichmentSubmissionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)batchReverseGeocoderPlaceRequestURL
{
  [(GEOURLInfoSet *)self _readBatchReverseGeocoderPlaceRequestURL];
  batchReverseGeocoderPlaceRequestURL = self->_batchReverseGeocoderPlaceRequestURL;

  return batchReverseGeocoderPlaceRequestURL;
}

- (void)_readBatchReverseGeocoderPlaceRequestURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 498) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readBatchReverseGeocoderPlaceRequestURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readPressureProbeDataURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readPressureProbeDataURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readPoiBusynessActivityCollectionURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readPoiBusynessActivityCollectionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readRapWebBundleURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 501) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readRapWebBundleURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readOfflineDataBatchListURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readOfflineDataBatchListURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)offlineDataSizeURL
{
  [(GEOURLInfoSet *)self _readOfflineDataSizeURL];
  offlineDataSizeURL = self->_offlineDataSizeURL;

  return offlineDataSizeURL;
}

- (void)_readOfflineDataSizeURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readOfflineDataSizeURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (void)_readOfflineDataDownloadBaseURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 488));
    if ((*(self + 500) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOURLInfoSetReadSpecified(self, *(self + 8), &_readOfflineDataDownloadBaseURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 488));
  }
}

- (GEOURLInfo)bcxDispatcherURL
{
  [(GEOURLInfoSet *)self _readBcxDispatcherURL];
  bcxDispatcherURL = self->_bcxDispatcherURL;

  return bcxDispatcherURL;
}

- (GEOURLInfo)mapsURLShortenerURL
{
  [(GEOURLInfoSet *)self _readMapsURLShortenerURL];
  mapsURLShortenerURL = self->_mapsURLShortenerURL;

  return mapsURLShortenerURL;
}

@end