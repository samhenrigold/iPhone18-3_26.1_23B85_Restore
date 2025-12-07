@interface GEOMapService
+ (id)sharedService;
- (GEOMapService)init;
- (char)handleCache;
- (id)_preferredLanguages;
- (id)defaultTraits;
- (id)serializedClientMetadataForParsec;
@end

@implementation GEOMapService

void __30__GEOMapService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(GEOMapService);
  v1 = sharedService_mapService;
  sharedService_mapService = v0;
}

+ (id)sharedService
{
  if (sharedService_once_60949[0] != -1)
  {
    dispatch_once(sharedService_once_60949, &__block_literal_global_60950);
  }

  v3 = sharedService_mapService;

  return v3;
}

- (GEOMapService)init
{
  v14.receiver = self;
  v14.super_class = GEOMapService;
  v2 = [(GEOMapService *)&v14 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__countryCodeChanged_ name:@"GEOCountryConfigurationCountryCodeDidChangeNotification" object:0];

    v2->_preferredLanguagesLock._os_unfair_lock_opaque = 0;
    v2->_overriddenResultProviderID = [(GEOMapService *)v2 _loadOverriddenResultProviderID];
    v2->_handleCacheLock._os_unfair_lock_opaque = 0;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __21__GEOMapService_init__block_invoke;
    handler[3] = &unk_1E70713A8;
    v5 = v2;
    v13 = v5;
    v6 = MEMORY[0x1E69E96A0];
    notify_register_dispatch("com.apple.GeoServices.additionalEnabledMarketsChanged", &v2->_additionalEnabledMarketsChangedToken, MEMORY[0x1E69E96A0], handler);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __21__GEOMapService_init__block_invoke_2;
    v10[3] = &unk_1E70713A8;
    v7 = v5;
    v11 = v7;
    notify_register_dispatch("com.apple.GeoServices.experimentsChanged", v5 + 8, v6, v10);

    v8 = v7;
  }

  return v2;
}

- (id)defaultTraits
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__GEOMapService_defaultTraits__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  if (defaultTraits_onceToken != -1)
  {
    dispatch_once(&defaultTraits_onceToken, block);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__60909;
  v27 = __Block_byref_object_dispose__60910;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  geo_isolate_sync_data();
  v2 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v2 isInternalInstall];

  if (isInternalInstall)
  {
    Integer = GEOConfigGetInteger(3, &GeoServicesConfig_EnableFullNavTraceLogMessages_Metadata);
    if (Integer != 2)
    {
      v5 = objc_alloc_init(GEOPrivacyMetadata);
      [v24[5] setPrivacyMetadata:v5];

      privacyMetadata = [v24[5] privacyMetadata];
      [privacyMetadata setIsOptedIntoFamiliarRoutePreservation:Integer == 1];
    }
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  [v24[5] setDisplayRegion:v8];

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v11 = v10;

  transitScheduleFilter = [v24[5] transitScheduleFilter];
  highFrequencyFilter = [transitScheduleFilter highFrequencyFilter];
  [highFrequencyFilter configureWithDefaultStartTime:4 duration:v11 numAdditionalDepartures:v20[3]];
  lowFrequencyFilter = [transitScheduleFilter lowFrequencyFilter];
  [lowFrequencyFilter configureWithDefaultStartTime:4 duration:v11 numAdditionalDepartures:v20[3]];
  timeRange = [lowFrequencyFilter timeRange];
  v16 = [timeRange copy];
  [transitScheduleFilter setOperatingHoursRange:v16];

  v17 = v24[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v17;
}

- (id)_preferredLanguages
{
  os_unfair_lock_lock(&self->_preferredLanguagesLock);
  preferredLanguages = self->_preferredLanguages;
  if (!preferredLanguages)
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v5 = [preferredLanguages copy];
    v6 = self->_preferredLanguages;
    self->_preferredLanguages = v5;

    preferredLanguages = self->_preferredLanguages;
  }

  v7 = preferredLanguages;
  os_unfair_lock_unlock(&self->_preferredLanguagesLock);

  return v7;
}

void __30__GEOMapService_defaultTraits__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = geo_isolater_create();
  v3 = traitsIsolater;
  traitsIsolater = v2;

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = defaultTraits_configListeners;
  defaultTraits_configListeners = v4;

  v6 = +[GEOPlatform sharedPlatform];
  [v6 deviceScreenScale];
  v8 = v7;

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v10 = objc_alloc_init(GEOTraitsPhotoSize);
  [(GEOTraitsPhotoSize *)v10 setWidth:600];
  [(GEOTraitsPhotoSize *)v10 setHeight:400];
  [v9 addObject:v10];
  v11 = objc_alloc_init(GEOTraitsPhotoSize);

  if (v8 == 1.0)
  {
    v12 = 100;
  }

  else
  {
    v12 = 248;
  }

  if (v8 == 1.0)
  {
    v13 = 100;
  }

  else
  {
    v13 = 186;
  }

  [(GEOTraitsPhotoSize *)v11 setWidth:v12];
  [(GEOTraitsPhotoSize *)v11 setHeight:v13];
  [v9 addObject:v11];
  if (v8 >= 3.0)
  {
    v14 = objc_alloc_init(GEOTraitsPhotoSize);

    [(GEOTraitsPhotoSize *)v14 setWidth:1200];
    [(GEOTraitsPhotoSize *)v14 setHeight:800];
    [v9 addObject:v14];
    v11 = v14;
  }

  v15 = [v9 copy];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];

  v17 = objc_alloc_init(GEOTraitsPhotoSize);
  if (v8 == 1.0)
  {
    v18 = 30;
  }

  else
  {
    v18 = 60;
  }

  [(GEOTraitsPhotoSize *)v17 setWidth:v18];
  [(GEOTraitsPhotoSize *)v17 setHeight:v18];
  [v16 addObject:v17];
  v19 = [v16 copy];

  v20 = objc_alloc_init(GEOMapServiceTraits);
  v21 = staticTraits;
  staticTraits = v20;

  v22 = GEOApplicationIdentifierOrProcessName();
  [staticTraits setAppIdentifier:v22];

  v54 = [MEMORY[0x1E696AAE8] mainBundle];
  v23 = [v54 infoDictionary];
  v24 = [v23 objectForKey:@"CFBundleShortVersionString"];
  [staticTraits setAppMajorVersion:v24];

  v25 = [v23 objectForKey:*MEMORY[0x1E695E500]];
  [staticTraits setAppMinorVersion:v25];

  v26 = [*(a1 + 32) _preferredLanguages];
  v27 = [v26 mutableCopy];
  [staticTraits setDeviceDisplayLanguages:v27];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v28 = v15;
  v29 = [v28 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v60;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v60 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v59 + 1) + 8 * i);
        v34 = [staticTraits photoSizes];
        v35 = [v34 containsObject:v33];

        if ((v35 & 1) == 0)
        {
          [staticTraits addPhotoSizes:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v30);
  }

  if (([staticTraits hasPhotosCount] & 1) == 0)
  {
    [staticTraits setPhotosCount:{GEOConfigGetUInteger(460, &GeoServicesConfig_DefaultNumberOfPhotosToRequest_Metadata)}];
  }

  if (([staticTraits hasRatingsCount] & 1) == 0)
  {
    [staticTraits setRatingsCount:4];
  }

  if (([staticTraits hasPhotoAlbumCount] & 1) == 0)
  {
    [staticTraits setPhotoAlbumCount:{GEOConfigGetUInteger(459, &GeoServicesConfig_DefaultNumberOfPhotoAlbumsToRequest_Metadata)}];
  }

  if (([staticTraits hasRelatedPlaceItemCount] & 1) == 0)
  {
    [staticTraits setRelatedPlaceItemCount:18];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v36 = v19;
  v37 = [v36 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v56;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v55 + 1) + 8 * j);
        v42 = [staticTraits reviewUserPhotoSizes];
        v43 = [v42 containsObject:v41];

        if ((v43 & 1) == 0)
        {
          [staticTraits addReviewUserPhotoSizes:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v38);
  }

  if (([staticTraits hasReviewUserPhotosCount] & 1) == 0)
  {
    [staticTraits setReviewUserPhotosCount:3];
  }

  if (([staticTraits hasTransitScheduleFilter] & 1) == 0)
  {
    v44 = objc_alloc_init(GEOTraitsTransitScheduleFilter);
    [staticTraits setTransitScheduleFilter:v44];
  }

  v45 = [staticTraits transitScheduleFilter];
  if (([v45 hasHighFrequencyFilter] & 1) == 0)
  {
    v46 = objc_alloc_init(GEOTraitsTransitScheduleModeFilter);
    [v45 setHighFrequencyFilter:v46];
  }

  if (([v45 hasLowFrequencyFilter] & 1) == 0)
  {
    v47 = objc_alloc_init(GEOTraitsTransitScheduleModeFilter);
    [v45 setLowFrequencyFilter:v47];
  }

  geo_isolate_sync();
  global_queue = geo_get_global_queue();
  v49 = _GEOConfigAddBlockListenerForKey(249, &GeoServicesConfig_DefaultTimeFilterDuration_Metadata, global_queue, &__block_literal_global_44);

  [defaultTraits_configListeners addObject:v49];
  geo_isolate_sync();
  v50 = geo_get_global_queue();
  v51 = _GEOConfigAddBlockListenerForKey(178, &GeoServicesConfig_DefaultRequestPriority_Metadata, v50, &__block_literal_global_48_60921);

  [defaultTraits_configListeners addObject:v51];
  geo_isolate_sync();
  v52 = geo_get_global_queue();
  v53 = _GEOConfigAddBlockListenerForKey(357, &GeoServicesConfig_DefaultBrandFallbackSupport_Metadata, v52, &__block_literal_global_52_60923);

  [defaultTraits_configListeners addObject:v53];
  [staticTraits addSupportedAutocompleteListType:1];
}

uint64_t __30__GEOMapService_defaultTraits__block_invoke_5()
{
  Uint64 = GEOConfigGetUint64(178, &GeoServicesConfig_DefaultRequestPriority_Metadata);
  v1 = staticTraits;

  return [v1 setHttpRequestPriority:Uint64];
}

uint64_t __30__GEOMapService_defaultTraits__block_invoke_7()
{
  BOOL = GEOConfigGetBOOL(357, &GeoServicesConfig_DefaultBrandFallbackSupport_Metadata);
  v1 = staticTraits;

  return [v1 setSupportsBrandFallback:BOOL];
}

double __30__GEOMapService_defaultTraits__block_invoke_55(uint64_t a1)
{
  v2 = [staticTraits copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = *&defaultTraits_defaultTimeFilterDuration;
  *(*(*(a1 + 40) + 8) + 24) = defaultTraits_defaultTimeFilterDuration;
  return result;
}

- (char)handleCache
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock_with_options();
    if (!*(selfCopy + 5))
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v4 = *(selfCopy + 5);
      *(selfCopy + 5) = v3;

      [*(selfCopy + 5) setCountLimit:{GEOConfigGetUInteger(366, &GeoServicesConfig_MapItemHandleCacheMaxItemCount_Metadata)}];
      [*(selfCopy + 5) setTotalCostLimit:{GEOConfigGetUInteger(367, &GeoServicesConfig_MapItemHandleCacheMaxItemCost_Metadata)}];
    }

    os_unfair_lock_unlock(selfCopy + 9);
    self = *(selfCopy + 5);
    v1 = vars8;
  }

  return self;
}

- (id)serializedClientMetadataForParsec
{
  v3 = [GEOPDClientMetadata alloc];
  defaultTraits = [(GEOMapService *)self defaultTraits];
  v5 = [(GEOPDClientMetadata *)v3 initWithTraits:defaultTraits];

  v6 = objc_alloc_init(GEOPDClientMetadata);
  additionalEnabledMarkets = [(GEOPDClientMetadata *)v5 additionalEnabledMarkets];
  [(GEOPDClientMetadata *)v6 setAdditionalEnabledMarkets:additionalEnabledMarkets];

  [(GEOPDClientMetadata *)v6 setRequiredVersion:[(GEOPDClientMetadata *)v5 requiredVersion]];
  [(GEOPDClientMetadata *)v6 setResultListAttributionSupport:[(GEOPDClientMetadata *)v5 resultListAttributionSupport]];
  v8 = +[GEOExperimentConfiguration sharedConfiguration];
  _parsecClientMetadata = [v8 _parsecClientMetadata];
  [(GEOPDClientMetadata *)v6 setAbClientMetadata:_parsecClientMetadata];

  [(GEOPDClientMetadata *)v6 setEnablePreflightVenues:[(GEOPDClientMetadata *)v5 enablePreflightVenues]];
  businessChatPreflightIdentifiers = [(GEOPDClientMetadata *)v5 businessChatPreflightIdentifiers];
  [(GEOPDClientMetadata *)v6 setBusinessChatPreflightIdentifiers:businessChatPreflightIdentifiers];

  data = [(GEOPDClientMetadata *)v6 data];

  return data;
}

@end