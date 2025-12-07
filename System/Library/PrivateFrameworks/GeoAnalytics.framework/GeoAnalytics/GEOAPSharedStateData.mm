@interface GEOAPSharedStateData
+ (id)sharedData;
- (BOOL)_hasActualFallbackData;
- (BOOL)_hasActualUserHomeCountry;
- (BOOL)_hasActualUserHomeMetro;
- (BOOL)_hasSuggestionsData;
- (BOOL)_isHandoff;
- (BOOL)_isHandoffFromDeviceType:(id)type;
- (BOOL)_isPunchInAppIdInList:(id)list;
- (BOOL)hasMapLaunchData;
- (BOOL)hasMapRestoreData;
- (BOOL)hasMapsServerData;
- (BOOL)hasPlaceCardStateData;
- (BOOL)hasPlaceCard_PlaceActionDetails;
- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard;
- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence;
- (BOOL)hasShowcase;
- (BOOL)is3rdPartyPunchIn;
- (BOOL)isFindMyPunchIn;
- (BOOL)isMacHandoff;
- (BOOL)isOther2ndPartyPunchIn;
- (BOOL)isSMSPunchIn;
- (BOOL)isSafariPunchIn;
- (BOOL)isSiriPunchIn;
- (BOOL)isSpotlightPunchIn;
- (BOOL)mapsInOfflineMode;
- (BOOL)shouldCountAsEnrichmentResult;
- (GEOAPSharedStateData)init;
- (id)_filteredHomeCountry:(id)country;
- (id)_metroForLatLng:(id)lng inCountry:(id)country filterWithAllowList:(BOOL)list;
- (id)bestCurrentMetro;
- (id)stateImpressionObject;
- (id)stateMapSettings;
- (id)stateMapSettingsShort;
- (id)stateMapUIShown;
- (id)stateMapsFeatures;
- (id)stateMapsUserSettings;
- (id)stateRoutingSettings;
- (id)stateSearchResults;
- (id)stateTapEvents;
- (id)suggestionsState;
- (int)_geoTransportModeForAPTransportMode:(int)mode;
- (int)_geoVoiceGuidanceLevelFromAPVoiceGuidanceLevel:(int)level;
- (int)activeNavModeAsGEOTransportType;
- (int)layoutInfoAsGEOLayoutInfo;
- (int)layoutStyleAsGEOLayoutStyle;
- (int)locationPrecisionTypeAsGEOSettingsLocationType;
- (int)moduleButtonLinkTypeAsGEOActionButtonLinkType:(int)type;
- (int)moduleButtonTypeAsGEOModuleButtonType:(int64_t)type;
- (int)navVoiceVolumeAsGEONavVoiceVolume;
- (int)transportModeAsGEOTransportMode;
- (void)_handleTaskTimer;
- (void)_performSyncStateUpdateWithIsolator:(id)isolator updateBlock:(id)block;
- (void)_performUserProfileStateOperation:(id)operation;
- (void)_populateWithGEOTransitDepartureSequenceUsage:(id)usage;
- (void)_populateWithGEOTransitPlaceCard:(id)card;
- (void)_resetTaskTimer;
- (void)addPlaceCardModulesForRevealAction:(id)action;
- (void)addSuggestionsDisplayedResults:(id)results;
- (void)bestUserHomeLocation:(id)location;
- (void)clearSuggestionsData;
- (void)clearSuggestionsDisplayedResults;
- (void)performMapFeaturesStateOperation:(id)operation;
- (void)performMapSettingsStateOperation:(id)operation;
- (void)performMapUIShownStateOperation:(id)operation;
- (void)performMapUserSettingsStateOperation:(id)operation;
- (void)performRoutingSettingsStateOperation:(id)operation;
- (void)periodicSettingsHandler;
- (void)populateActionButtonDetails:(id)details;
- (void)populateImpressionObjectId:(id)id;
- (void)populatePhotoSubmissionDetailsWithEntryPoint:(int)point numberOfPhotos:(unsigned int)photos numberOfARPSuggestedPhotos:(unsigned int)suggestedPhotos originTarget:(id)target;
- (void)populatePlaceIdsWithSpecifierBlock:(id)block;
- (void)populateRatingPhotoSubmissionDetailsWithEntryPoint:(int)point originTarget:(id)target;
- (void)populateRatingSubmissionDetailsWithEntryPoint:(int)point originTarget:(id)target specifierBlock:(id)block;
- (void)populateSearchResultsForQuery:(id)query searchResultSpecifierBlock:(id)block;
- (void)populateTapEventForPinType:(int)type tapEventSpecifierBlock:(id)block;
- (void)populateWithChildPlace:(id)place timestamp:(double)timestamp resultIndex:(int)index;
- (void)populateWithPlace:(id)place timestamp:(double)timestamp resultIndex:(int)index;
- (void)populateWithPlaceActionDetails:(id)details;
- (void)setCarPlayInfo:(id)info;
- (void)setCurrentMetro:(id)metro;
- (void)setHasMapSettingsAvoidBusyRoads:(BOOL)roads;
- (void)setHasMapSettingsAvoidHighways:(BOOL)highways;
- (void)setHasMapSettingsAvoidHills:(BOOL)hills;
- (void)setHasMapSettingsAvoidStairs:(BOOL)stairs;
- (void)setHasMapSettingsAvoidTolls:(BOOL)tolls;
- (void)setHasMapSettingsDirectionsWakeDevice:(BOOL)device;
- (void)setHasMapSettingsEBike:(BOOL)bike;
- (void)setHasMapSettingsFamiliarRoutes:(BOOL)routes;
- (void)setHasMapSettingsFindMyCarEnabled:(BOOL)enabled;
- (void)setHasMapSettingsHeadingEnabled:(BOOL)enabled;
- (void)setHasMapSettingsLabelEnabled:(BOOL)enabled;
- (void)setHasMapSettingsLocationPrecisionType:(BOOL)type;
- (void)setHasMapSettingsNavVolume:(BOOL)volume;
- (void)setHasMapSettingsPauseSpokenAudioEnabled:(BOOL)enabled;
- (void)setHasMapSettingsReportingIncidentsEnabled:(BOOL)enabled;
- (void)setHasMapSettingsSpeedLimitEnabled:(BOOL)enabled;
- (void)setHasMapSettingsTrafficEnabled:(BOOL)enabled;
- (void)setHasMapSettingsTransportMode:(BOOL)mode;
- (void)setHasMapSettingsVisitedPlaces:(BOOL)places;
- (void)setHasMapSettingsWalkingAvoidBusyRoads:(BOOL)roads;
- (void)setHasMapSettingsWalkingAvoidHills:(BOOL)hills;
- (void)setHasMapSettingsWalkingAvoidStairs:(BOOL)stairs;
- (void)setHasMapUiShownActiveNavMode:(BOOL)mode;
- (void)setHasMapUiShownAqiShown:(BOOL)shown;
- (void)setHasMapUiShownWeatherShown:(BOOL)shown;
- (void)setHasSuggestionsAcSequenceNumber:(BOOL)number;
- (void)setHasSuggestionsSearchFieldType:(BOOL)type;
- (void)setHasSuggestionsSelectedIndex:(BOOL)index;
- (void)setMapFeatureElectronicVehicleCount:(int)count;
- (void)setMapFeatureFavoritesCount:(int)count;
- (void)setMapFeatureLibraryFavoritesGuideSavedPlacesCount:(int)count;
- (void)setMapFeatureLibraryGuidesSavedPlacesCount:(int)count;
- (void)setMapFeatureLibraryPlacesWithNoteCount:(int)count;
- (void)setMapFeatureLibrarySavedPlacesCount:(int)count;
- (void)setMapFeatureLicensePlateCount:(int)count;
- (void)setMapFeaturePersonalCollectionsCount:(int)count;
- (void)setMapFeatureSavedCollectionsCount:(int)count;
- (void)setMapFeatureSubmittedPhotosCount:(int)count;
- (void)setMapFeatureSubmittedRatingsCount:(int)count;
- (void)setMapSettingsAvoidBusyRoads:(BOOL)roads;
- (void)setMapSettingsAvoidHighways:(BOOL)highways;
- (void)setMapSettingsAvoidHills:(BOOL)hills;
- (void)setMapSettingsAvoidStairs:(BOOL)stairs;
- (void)setMapSettingsAvoidTolls:(BOOL)tolls;
- (void)setMapSettingsDirectionsWakeDevice:(BOOL)device;
- (void)setMapSettingsEBike:(BOOL)bike;
- (void)setMapSettingsFamiliarRoutes:(BOOL)routes;
- (void)setMapSettingsFindMyCarEnabled:(BOOL)enabled;
- (void)setMapSettingsHeadingEnabled:(BOOL)enabled;
- (void)setMapSettingsLabelEnabled:(BOOL)enabled;
- (void)setMapSettingsLocationPrecisionType:(int)type;
- (void)setMapSettingsNavVolume:(int)volume;
- (void)setMapSettingsPauseSpokenAudioEnabled:(BOOL)enabled;
- (void)setMapSettingsReportingIncidentsEnabled:(BOOL)enabled;
- (void)setMapSettingsSpeedLimitEnabled:(BOOL)enabled;
- (void)setMapSettingsTrafficEnabled:(BOOL)enabled;
- (void)setMapSettingsTransportMode:(int)mode;
- (void)setMapSettingsVisitedPlaces:(int)places;
- (void)setMapSettingsWalkingAvoidBusyRoads:(BOOL)roads;
- (void)setMapSettingsWalkingAvoidHills:(BOOL)hills;
- (void)setMapSettingsWalkingAvoidStairs:(BOOL)stairs;
- (void)setMapUiShownActiveNavMode:(int)mode;
- (void)setMapUiShownAqiShown:(BOOL)shown;
- (void)setMapUiShownWeatherShown:(BOOL)shown;
- (void)setMapViewViewMode:(int)mode;
- (void)setMeCardHomeCountry:(id)country andHomeLocation:(id)location;
- (void)setNavVoiceGuidanceLevel:(int)level forTransportMode:(int)mode;
- (void)setSuggestionsAcSequenceNumber:(int)number;
- (void)setSuggestionsDisplayedResults:(id)results;
- (void)setSuggestionsSearchFieldType:(int)type;
- (void)setSuggestionsSearchString:(id)string;
- (void)setSuggestionsSelectedIndex:(int)index;
- (void)setUserProfileAvailableActions:(id)actions;
- (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)cloud;
@end

@implementation GEOAPSharedStateData

+ (id)sharedData
{
  if (sharedData_onceToken != -1)
  {
    dispatch_once(&sharedData_onceToken, &__block_literal_global_3199);
  }

  v3 = sharedData__sharedData;

  return v3;
}

- (GEOAPSharedStateData)init
{
  v52.receiver = self;
  v52.super_class = GEOAPSharedStateData;
  v2 = [(GEOAnalyticsPipelineStateData *)&v52 init];
  if (v2)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    *(v2 + 760) = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A1A78]];

    v5 = geo_reentrant_isolater_create_with_format();
    v6 = *(v2 + 96);
    *(v2 + 96) = v5;

    v7 = geo_isolater_create();
    v8 = *(v2 + 97);
    *(v2 + 97) = v7;

    v9 = geo_isolater_create();
    v10 = *(v2 + 98);
    *(v2 + 98) = v9;

    v11 = geo_isolater_create();
    v12 = *(v2 + 99);
    *(v2 + 99) = v11;

    v13 = geo_isolater_create();
    v14 = *(v2 + 100);
    *(v2 + 100) = v13;

    v15 = geo_isolater_create();
    v16 = *(v2 + 101);
    *(v2 + 101) = v15;

    v17 = geo_isolater_create();
    v18 = *(v2 + 102);
    *(v2 + 102) = v17;

    v19 = geo_isolater_create();
    v20 = *(v2 + 103);
    *(v2 + 103) = v19;

    v21 = geo_isolater_create();
    v22 = *(v2 + 104);
    *(v2 + 104) = v21;

    v23 = geo_isolater_create();
    v24 = *(v2 + 105);
    *(v2 + 105) = v23;

    v25 = geo_isolater_create();
    v26 = *(v2 + 106);
    *(v2 + 106) = v25;

    v27 = geo_isolater_create();
    v28 = *(v2 + 107);
    *(v2 + 107) = v27;

    v29 = geo_isolater_create();
    v30 = *(v2 + 108);
    *(v2 + 108) = v29;

    v31 = geo_isolater_create();
    v32 = *(v2 + 109);
    *(v2 + 109) = v31;

    v33 = geo_isolater_create();
    v34 = *(v2 + 110);
    *(v2 + 110) = v33;

    v35 = geo_isolater_create();
    v36 = *(v2 + 111);
    *(v2 + 111) = v35;

    v37 = geo_isolater_create();
    v38 = *(v2 + 112);
    *(v2 + 112) = v37;

    v39 = objc_alloc_init(MEMORY[0x1E69A2140]);
    v40 = *(v2 + 113);
    *(v2 + 113) = v39;

    global_queue = geo_get_global_queue();
    v42 = *(v2 + 114);
    *(v2 + 114) = global_queue;

    if (*(v2 + 760) == 1)
    {
      if (_GEOConfigHasValue())
      {
        GEOConfigGetDouble();
        [v2 setMapsUserStartDate:?];
      }

      else
      {
        mEMORY[0x1E69A2430] = [MEMORY[0x1E69A2430] sharedManager];
        bestReferenceDate = [mEMORY[0x1E69A2430] bestReferenceDate];

        [bestReferenceDate timeIntervalSinceReferenceDate];
        [v2 setMapsUserStartDate:?];
        [v2 mapsUserStartDate];
        GEOConfigSetDouble();
      }
    }

    v45 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 114));
    v46 = *(v2 + 115);
    *(v2 + 115) = v45;

    dispatch_source_set_timer(*(v2 + 115), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    objc_initWeak(&location, v2);
    v47 = *(v2 + 115);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __28__GEOAPSharedStateData_init__block_invoke;
    v49[3] = &unk_1E79593B0;
    objc_copyWeak(&v50, &location);
    dispatch_source_set_event_handler(v47, v49);
    dispatch_activate(*(v2 + 115));
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __34__GEOAPSharedStateData_sharedData__block_invoke()
{
  sharedData__sharedData = objc_alloc_init(GEOAPSharedStateData);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_hasActualUserHomeCountry
{
  if (_GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
    v3 = [&unk_1F2056A70 containsObject:v2] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)bestCurrentMetro
{
  if (_GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
  }

  else
  {
    v2 = @"UNKNOWN";
  }

  return v2;
}

- (void)_resetTaskTimer
{
  UInteger = GEOConfigGetUInteger();
  v4 = dispatch_time(0, 1000000000 * UInteger);
  periodicSettingsTimer = self->_periodicSettingsTimer;

  dispatch_source_set_timer(periodicSettingsTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (BOOL)mapsInOfflineMode
{
  v9 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] shared];
  v3 = mEMORY[0x1E69A22E8];
  if (!mEMORY[0x1E69A22E8])
  {
LABEL_6:
    LOBYTE(v6) = 0;
    goto LABEL_7;
  }

  state = [mEMORY[0x1E69A22E8] state];
  v5 = state;
  if (state >= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "no metro lat/lng provided", v8, 8u);
    }

    goto LABEL_6;
  }

  v6 = 4u >> (state & 7);
LABEL_7:

  return v6 & 1;
}

- (BOOL)is3rdPartyPunchIn
{
  hasMapLaunchSourceAppId = [(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId];
  if (hasMapLaunchSourceAppId)
  {
    if ([(GEOAPSharedStateData *)self isSiriPunchIn]|| [(GEOAPSharedStateData *)self isSafariPunchIn]|| [(GEOAPSharedStateData *)self isSpotlightPunchIn]|| [(GEOAPSharedStateData *)self isSMSPunchIn]|| [(GEOAPSharedStateData *)self isFindMyPunchIn])
    {
      LOBYTE(hasMapLaunchSourceAppId) = 0;
    }

    else
    {
      LOBYTE(hasMapLaunchSourceAppId) = ![(GEOAPSharedStateData *)self isOther2ndPartyPunchIn];
    }
  }

  return hasMapLaunchSourceAppId;
}

- (BOOL)isFindMyPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isOther2ndPartyPunchIn
{
  if (![(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId]|| [(GEOAPSharedStateData *)self isSiriPunchIn]|| [(GEOAPSharedStateData *)self isSafariPunchIn]|| [(GEOAPSharedStateData *)self isSpotlightPunchIn]|| [(GEOAPSharedStateData *)self isSMSPunchIn]|| [(GEOAPSharedStateData *)self isFindMyPunchIn])
  {
    return 0;
  }

  mapLaunchSourceAppId = [(GEOAnalyticsPipelineStateData *)self mapLaunchSourceAppId];
  lowercaseString = [mapLaunchSourceAppId lowercaseString];

  LOBYTE(mapLaunchSourceAppId) = [lowercaseString hasPrefix:@"com.apple"];
  return mapLaunchSourceAppId;
}

- (BOOL)isSafariPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isSiriPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isSMSPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isSpotlightPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)hasMapRestoreData
{
  if ([(GEOAnalyticsPipelineStateData *)self hasRestoreUiTarget]|| [(GEOAnalyticsPipelineStateData *)self hasRestoreLayoutInfo])
  {
    return 1;
  }

  return [(GEOAnalyticsPipelineStateData *)self hasRestoreLayoutStyle];
}

- (BOOL)hasMapLaunchData
{
  if ([(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId]|| [(GEOAnalyticsPipelineStateData *)self hasMapLaunchLaunchUri]|| [(GEOAnalyticsPipelineStateData *)self hasMapLaunchReferringWebsite]|| [(GEOAnalyticsPipelineStateData *)self hasMapLaunchIsHandoff])
  {
    return 1;
  }

  return [(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceHandoffDevice];
}

- (id)stateMapSettingsShort
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2098]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__GEOAPSharedStateData_stateMapSettingsShort__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __45__GEOAPSharedStateData_stateMapSettingsShort__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsNavVolume])
  {
    [*(a1 + 40) setNavVoiceVolume:{objc_msgSend(*(a1 + 32), "navVoiceVolumeAsGEONavVoiceVolume")}];
  }

  if ([*(a1 + 32) hasMapSettingsTransportMode])
  {
    [*(a1 + 40) setPreferredTransportMode:{objc_msgSend(*(a1 + 32), "transportModeAsGEOTransportMode")}];
  }

  if ([*(a1 + 32) hasMapSettingsHeadingEnabled])
  {
    [*(a1 + 40) setHeadingEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsHeadingEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsLabelEnabled])
  {
    [*(a1 + 40) setLabelEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsLabelEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled])
  {
    [*(a1 + 40) setPauseSpokenAudioEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsPauseSpokenAudioEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsSpeedLimitEnabled])
  {
    [*(a1 + 40) setSpeedLimitEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsSpeedLimitEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsTrafficEnabled])
  {
    [*(a1 + 40) setTrafficEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsTrafficEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsLocationPrecisionType])
  {
    [*(a1 + 40) setLocationType:{objc_msgSend(*(a1 + 32), "locationPrecisionTypeAsGEOSettingsLocationType")}];
  }

  if ([*(a1 + 32) hasMapSettingsDrivingVoiceSettings])
  {
    [*(a1 + 40) setDrivingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsDrivingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingVoiceSettings])
  {
    [*(a1 + 40) setWalkingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsCyclingVoiceSettings])
  {
    [*(a1 + 40) setCyclingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsCyclingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsIsHandsFreeProfileEnabled])
  {
    [*(a1 + 40) setHFPEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsIsHandsFreeProfileEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsDirectionsWakeDevice])
  {
    [*(a1 + 40) setDirectionsWakeDevice:{objc_msgSend(*(a1 + 32), "mapSettingsDirectionsWakeDevice")}];
  }

  return 0;
}

- (int)locationPrecisionTypeAsGEOSettingsLocationType
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapSettingsLocationPrecisionType];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapSettingsLocationPrecisionType];
    if ((result - 1) >= 3)
    {
      return 0;
    }
  }

  return result;
}

- (int)activeNavModeAsGEOTransportType
{
  if ([(GEOAnalyticsPipelineStateData *)self hasMapUiShownActiveNavMode]&& (v3 = [(GEOAnalyticsPipelineStateData *)self mapUiShownActiveNavMode]- 1, v3 <= 4))
  {
    return dword_1AB6C3514[v3];
  }

  else
  {
    return 4;
  }
}

- (BOOL)hasMapsServerData
{
  if ([(GEOAnalyticsPipelineStateData *)self hasMapsServerMetadata]|| [(GEOAnalyticsPipelineStateData *)self hasMapsServerMetadataSuggestionEntryTappedOn])
  {
    return 1;
  }

  mapsServerMetadataSuggestionEntryDisplayeds = [(GEOAnalyticsPipelineStateData *)self mapsServerMetadataSuggestionEntryDisplayeds];
  v3 = [mapsServerMetadataSuggestionEntryDisplayeds count] != 0;

  return v3;
}

- (BOOL)hasPlaceCardStateData
{
  if ([(GEOAnalyticsPipelineStateData *)self placeCardPossibleActionsCount]|| [(GEOAnalyticsPipelineStateData *)self placeCardUnactionableUiElementsCount]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceCardType]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceCardCategory]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardTransitAdvisoryBanner])
  {
    return 1;
  }

  return [(GEOAPSharedStateData *)self hasPlaceCard_PlaceActionDetails];
}

- (BOOL)hasPlaceCard_PlaceActionDetails
{
  if ([(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsActionUrl]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsAnimationId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsBusinessId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsDestinationApp]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsPhotoId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsPlaceId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsRichProviderId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTargetId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsLocalSearchProviderId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsResultIndex]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsShowcaseId])
  {
    return 1;
  }

  return [(GEOAPSharedStateData *)self hasPlaceCard_PlaceActionDetails_TransitPlaceCard];
}

- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard
{
  if ([(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory])
  {
    return 1;
  }

  return [(GEOAPSharedStateData *)self hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence];
}

- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence
{
  if ([(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId])
  {
    return 1;
  }

  return [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign];
}

- (BOOL)_hasActualUserHomeMetro
{
  if (_GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
    v3 = [&unk_1F2056A70 containsObject:v2] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int)transportModeAsGEOTransportMode
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapSettingsTransportMode];
  if (result)
  {
    mapSettingsTransportMode = [(GEOAnalyticsPipelineStateData *)self mapSettingsTransportMode];

    return [(GEOAPSharedStateData *)self _geoTransportModeForAPTransportMode:mapSettingsTransportMode];
  }

  return result;
}

- (int)layoutInfoAsGEOLayoutInfo
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapUiLayoutInfo];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapUiLayoutInfo];
    if ((result - 1) >= 3)
    {
      return 0;
    }
  }

  return result;
}

- (int)layoutStyleAsGEOLayoutStyle
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapUiLayoutStyle];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapUiLayoutStyle];
    if ((result - 1) >= 5)
    {
      return 0;
    }
  }

  return result;
}

- (void)populatePlaceIdsWithSpecifierBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A20C8]);
    v9 = 0;
    v7 = 0;
    v8 = 0;
    if (blockCopy[2](blockCopy, &v9 + 4, &v7, &v8, &v9))
    {
      do
      {
        v5 = objc_alloc_init(MEMORY[0x1E69A2380]);
        [v5 setResultIndex:HIDWORD(v9)];
        [v5 setBusinessId:v8];
        [v5 setBasemapId:v7];
        [v5 setLocalSearchProviderId:v9];
        [v4 addPlaceIdDetails:v5];

        v9 = 0;
        v7 = 0;
        v8 = 0;
      }

      while ((blockCopy[2](blockCopy, &v9 + 4, &v7, &v8, &v9) & 1) != 0);
    }

    v6 = v4;
    geo_isolate_sync();
  }
}

- (BOOL)_isPunchInAppIdInList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ([(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId])
  {
    mapLaunchSourceAppId = [(GEOAnalyticsPipelineStateData *)self mapLaunchSourceAppId];
    lowercaseString = [mapLaunchSourceAppId lowercaseString];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = listCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          lowercaseString2 = [*(*(&v14 + 1) + 8 * i) lowercaseString];
          v12 = [lowercaseString2 isEqualToString:lowercaseString];

          if (v12)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)shouldCountAsEnrichmentResult
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__GEOAPSharedStateData_shouldCountAsEnrichmentResult__block_invoke;
  v6[3] = &unk_1E7959590;
  v6[4] = &v7;
  [(GEOAPSharedStateData *)self bestUserHomeLocation:v6];
  searchResultsState = [(GEOAnalyticsPipelineStateData *)self searchResultsState];
  if ([searchResultsState includesEnrichedResult])
  {
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

void __53__GEOAPSharedStateData_shouldCountAsEnrichmentResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = GEOConfigGetArray();
  v4 = [v5 containsObject:v3];

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (BOOL)hasShowcase
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_reentrant_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __35__GEOAPSharedStateData_hasShowcase__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) placeCardState];
  v3 = [v2 modules];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 40)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setMapViewViewMode:(int)mode
{
  v3 = *&mode;
  mapViewViewMode = [(GEOAnalyticsPipelineStateData *)self mapViewViewMode];
  v9.receiver = self;
  v9.super_class = GEOAPSharedStateData;
  [(GEOAnalyticsPipelineStateData *)&v9 setMapViewViewMode:v3];
  if (mapViewViewMode != v3)
  {
    v6 = v3 - 1;
    if (v3 - 1) <= 7 && ((0x8Fu >> v6))
    {
      v7 = dword_1AB6C3528[v6];
      v8 = +[GEOAPServiceManager sharedManager];
      [v8 reportDailyUsageCountType:v7 usageString:0 usageBool:0 appId:0 completion:0];
    }
  }
}

- (BOOL)isMacHandoff
{
  _isHandoff = [(GEOAPSharedStateData *)self _isHandoff];
  if (_isHandoff)
  {
    if ([(GEOAPSharedStateData *)self isIPadHandoff]|| [(GEOAPSharedStateData *)self isIPadHandoff])
    {
      LOBYTE(_isHandoff) = 0;
    }

    else
    {
      LOBYTE(_isHandoff) = ![(GEOAPSharedStateData *)self isWatchHandoff];
    }
  }

  return _isHandoff;
}

- (BOOL)_isHandoffFromDeviceType:(id)type
{
  typeCopy = type;
  if ([(GEOAPSharedStateData *)self _isHandoff])
  {
    mapLaunchSourceHandoffDevice = [(GEOAnalyticsPipelineStateData *)self mapLaunchSourceHandoffDevice];
    v6 = [mapLaunchSourceHandoffDevice hasPrefix:typeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHandoff
{
  if (![(GEOAnalyticsPipelineStateData *)self hasMapLaunchIsHandoff]|| ![(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceHandoffDevice])
  {
    return 0;
  }

  return [(GEOAnalyticsPipelineStateData *)self mapLaunchIsHandoff];
}

- (void)setMeCardHomeCountry:(id)country andHomeLocation:(id)location
{
  v18 = *MEMORY[0x1E69E9840];
  countryCopy = country;
  locationCopy = location;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138478083;
    v15 = countryCopy;
    v16 = 2113;
    v17 = locationCopy;
    _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "setting meCard country with %{private}@, %{private}@", &v14, 0x16u);
  }

  if (countryCopy)
  {
    v9 = [(GEOAPSharedStateData *)self _filteredHomeCountry:countryCopy];
  }

  else
  {
    mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    countryCopy = [mEMORY[0x1E69A1CD8] countryCode];

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138477827;
      v15 = countryCopy;
      _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_DEBUG, "no countryCode provided; using countryCode %{private}@", &v14, 0xCu);
    }

    v9 = @"UNKNOWN";
  }

  v12 = [(GEOAPSharedStateData *)self _metroForLatLng:locationCopy inCountry:countryCopy filterWithAllowList:1];
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138477827;
    v15 = v12;
    _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "MeMetro is %{private}@", &v14, 0xCu);
  }

  GEOConfigSetString();
  GEOConfigSetString();
}

- (void)setCurrentMetro:(id)metro
{
  v18 = *MEMORY[0x1E69E9840];
  metroCopy = metro;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138477827;
    v15 = metroCopy;
    _os_log_impl(&dword_1AB634000, v5, OS_LOG_TYPE_DEBUG, "updating current metro at %{private}@", &v14, 0xCu);
  }

  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  countryCode = [mEMORY[0x1E69A1CD8] countryCode];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138477827;
    v15 = countryCode;
    _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "using countryCode %{private}@", &v14, 0xCu);
  }

  v9 = [(GEOAPSharedStateData *)self _metroForLatLng:metroCopy inCountry:countryCode filterWithAllowList:0];
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138477827;
    v15 = v9;
    _os_log_impl(&dword_1AB634000, v10, OS_LOG_TYPE_DEBUG, "current metro is %{private}@", &v14, 0xCu);
  }

  if (v9)
  {
    GEOConfigSetString();
  }

  else
  {
    _GEOConfigRemoveValue();
  }

  if ((GEOConfigGetBOOL() & 1) == 0 && [(GEOAPSharedStateData *)self _hasActualFallbackData])
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_DEBUG, "fallback metro is already set", &v14, 2u);
    }

    goto LABEL_22;
  }

  v11 = [(GEOAPSharedStateData *)self _metroForLatLng:metroCopy inCountry:countryCode filterWithAllowList:1];
  if (!v11)
  {
    _GEOConfigRemoveValue();
    if (countryCode)
    {
      goto LABEL_16;
    }

LABEL_18:
    _GEOConfigRemoveValue();
    goto LABEL_19;
  }

  GEOConfigSetString();
  if (!countryCode)
  {
    goto LABEL_18;
  }

LABEL_16:
  v12 = [(GEOAPSharedStateData *)self _filteredHomeCountry:countryCode];

  GEOConfigSetString();
  countryCode = v12;
LABEL_19:
  GEOConfigSetBOOL();
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138478083;
    v15 = v11;
    v16 = 2113;
    v17 = countryCode;
    _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "setting fallback metro to %{private}@, country to %{private}@", &v14, 0x16u);
  }

LABEL_22:
}

- (id)_filteredHomeCountry:(id)country
{
  v14 = *MEMORY[0x1E69E9840];
  countryCopy = country;
  v4 = +[GEOMetroRegionAssetProvider sharedProvider];
  homeCountryCodeAcceptList = [v4 homeCountryCodeAcceptList];

  if (homeCountryCodeAcceptList)
  {
    v6 = [homeCountryCodeAcceptList containsObject:countryCopy];
    v7 = GEOFindOrCreateLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        v12 = 138477827;
        v13 = countryCopy;
        _os_log_impl(&dword_1AB634000, v7, OS_LOG_TYPE_DEBUG, "MeCountry is %{private}@", &v12, 0xCu);
      }

      v9 = countryCopy;
    }

    else
    {
      if (v8)
      {
        v12 = 138477827;
        v13 = countryCopy;
        _os_log_impl(&dword_1AB634000, v7, OS_LOG_TYPE_DEBUG, "%{private}@ is not on the allow list", &v12, 0xCu);
      }

      v9 = @"OTHER";
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1AB634000, v10, OS_LOG_TYPE_DEBUG, "no home countryCode list is available", &v12, 2u);
    }

    v9 = @"MISSING_ALLOW_LIST";
  }

  return v9;
}

- (id)_metroForLatLng:(id)lng inCountry:(id)country filterWithAllowList:(BOOL)list
{
  listCopy = list;
  v26 = *MEMORY[0x1E69E9840];
  lngCopy = lng;
  countryCopy = country;
  v9 = +[GEOMetroRegionAssetProvider sharedProvider];
  v10 = v9;
  if (lngCopy)
  {
    v11 = [v9 urlForInstalledCountryCode:countryCopy];

    if (v11)
    {
      v12 = objc_alloc_init(GEOMetroRegionLookup);
      v13 = [(GEOMetroRegionLookup *)v12 lookupRegionWithLocation:lngCopy countryCodeHint:countryCopy];
      if (!v13)
      {
        v22 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v24 = 138477827;
          v25 = lngCopy;
          _os_log_impl(&dword_1AB634000, v22, OS_LOG_TYPE_DEBUG, "no metro region region at %{private}@", &v24, 0xCu);
        }

        v21 = @"OTHER";
        goto LABEL_31;
      }

      if (!listCopy)
      {
        goto LABEL_14;
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138477827;
        v25 = v13;
        _os_log_impl(&dword_1AB634000, v14, OS_LOG_TYPE_DEBUG, "will apply allow list filtering to %{private}@", &v24, 0xCu);
      }

      v15 = [v10 homeMetroAcceptListForCountryCode:countryCopy];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 containsObject:v13];
        v18 = GEOFindOrCreateLog();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          if (v19)
          {
            v24 = 138477827;
            v25 = v13;
            _os_log_impl(&dword_1AB634000, v18, OS_LOG_TYPE_DEBUG, "metros %{private}@ is allowed", &v24, 0xCu);
          }

          v20 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v24 = 138477827;
            v25 = v13;
            _os_log_impl(&dword_1AB634000, v20, OS_LOG_TYPE_DEBUG, "using metro %{private}@", &v24, 0xCu);
          }

LABEL_14:
          v21 = v13;
LABEL_31:

          goto LABEL_32;
        }

        if (v19)
        {
          v24 = 138477827;
          v25 = v13;
          _os_log_impl(&dword_1AB634000, v18, OS_LOG_TYPE_DEBUG, "metros %{private}@ is not allowed", &v24, 0xCu);
        }

        v21 = @"OTHER";
      }

      else
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v24 = 138477827;
          v25 = countryCopy;
          _os_log_impl(&dword_1AB634000, v18, OS_LOG_TYPE_DEBUG, "no metro allow list for %{private}@", &v24, 0xCu);
        }

        v21 = @"MISSING_ALLOW_LIST";
      }

      goto LABEL_31;
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138477827;
      v25 = countryCopy;
      _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "metro regions for %{private}@ are unavailable", &v24, 0xCu);
    }

    v21 = @"MISSING_REGIONS";
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "no metro lat/lng provided", &v24, 2u);
    }

    v21 = @"MISSING_LOCATION";
  }

LABEL_32:

  return v21;
}

- (void)bestUserHomeLocation:(id)location
{
  locationCopy = location;
  if ([(GEOAPSharedStateData *)self _hasActualUserHomeCountry]&& [(GEOAPSharedStateData *)self _hasActualUserHomeMetro]|| _GEOConfigHasValue() && (_GEOConfigHasValue() & 1) != 0 || _GEOConfigHasValue() && _GEOConfigHasValue())
  {
    v4 = GEOConfigGetString();
    v5 = GEOConfigGetString();
  }

  else
  {
    v4 = @"UNKNOWN";
    v5 = @"UNKNOWN";
  }

  locationCopy[2](locationCopy, v4, v5);
}

- (BOOL)_hasActualFallbackData
{
  if (_GEOConfigHasValue() && _GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
    if ([&unk_1F2056A70 containsObject:v2])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v4 = GEOConfigGetString();
      v3 = [&unk_1F2056A70 containsObject:v4] ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)stateTapEvents
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3158;
  v8 = __Block_byref_object_dispose__3159;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __38__GEOAPSharedStateData_stateTapEvents__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) tapEventState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stateImpressionObject
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3158;
  v8 = __Block_byref_object_dispose__3159;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __45__GEOAPSharedStateData_stateImpressionObject__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) impressionObjectState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stateSearchResults
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3158;
  v8 = __Block_byref_object_dispose__3159;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __42__GEOAPSharedStateData_stateSearchResults__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) searchResultsState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stateRoutingSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2128]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__GEOAPSharedStateData_stateRoutingSettings__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performRoutingSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __44__GEOAPSharedStateData_stateRoutingSettings__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69A2558]);
  if ([*(a1 + 32) hasMapFeatureElectronicVehicleCount])
  {
    [v2 setElectronicVehicleCount:{objc_msgSend(*(a1 + 32), "mapFeatureElectronicVehicleCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLicensePlateCount])
  {
    [v2 setLicensePlateCount:{objc_msgSend(*(a1 + 32), "mapFeatureLicensePlateCount")}];
  }

  if ([v2 electronicVehicleCount] || objc_msgSend(v2, "licensePlateCount"))
  {
    [*(a1 + 40) setVirtualGarageSettings:v2];
  }

  return 0;
}

- (id)stateMapsUserSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69A20D8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__GEOAPSharedStateData_stateMapsUserSettings__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapUserSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __45__GEOAPSharedStateData_stateMapsUserSettings__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasSuggestionsSiriEnabled])
  {
    [*(a1 + 40) setSiriSuggestionsEnabled:{objc_msgSend(*(a1 + 32), "suggestionsSiriEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsNotificationsEnabled])
  {
    [*(a1 + 40) setNotificationsEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsNotificationsEnabled")}];
  }

  [*(a1 + 40) setIsOptedInToVlCrowdsourcing:GEOConfigGetBOOL()];
  return 0;
}

- (id)stateMapsFeatures
{
  v3 = objc_alloc_init(MEMORY[0x1E69A20C0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__GEOAPSharedStateData_stateMapsFeatures__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __41__GEOAPSharedStateData_stateMapsFeatures__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapFeaturePersonalCollectionsCount])
  {
    [*(a1 + 40) setPersonalCollectionsCount:{objc_msgSend(*(a1 + 32), "mapFeaturePersonalCollectionsCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureSavedCollectionsCount])
  {
    [*(a1 + 40) setSavedCollectionsCount:{objc_msgSend(*(a1 + 32), "mapFeatureSavedCollectionsCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureSubmittedRatingsCount])
  {
    [*(a1 + 40) setSubmittedRatingsCount:{objc_msgSend(*(a1 + 32), "mapFeatureSubmittedRatingsCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureSubmittedPhotosCount])
  {
    [*(a1 + 40) setSubmittedPhotosCount:{objc_msgSend(*(a1 + 32), "mapFeatureSubmittedPhotosCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsHomeFavoriteSet])
  {
    [*(a1 + 40) setHomeFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsHomeFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsWorkFavoriteSet])
  {
    [*(a1 + 40) setWorkFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsWorkFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsSchoolFavoriteSet])
  {
    [*(a1 + 40) setSchoolFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsSchoolFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsTransitFavoriteSet])
  {
    [*(a1 + 40) setTransitFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsTransitFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureFavoritesCount])
  {
    [*(a1 + 40) setFavoritesCount:{objc_msgSend(*(a1 + 32), "mapFeatureFavoritesCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibrarySavedPlacesCount])
  {
    [*(a1 + 40) setLibrarySavedPlacesCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibrarySavedPlacesCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibraryPlacesWithNoteCount])
  {
    [*(a1 + 40) setLibraryPlacesWithNoteCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibraryPlacesWithNoteCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibraryGuidesSavedPlacesCount])
  {
    [*(a1 + 40) setLibraryGuidesSavedPlacesCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibraryGuidesSavedPlacesCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibraryFavoritesGuideSavedPlacesCount])
  {
    [*(a1 + 40) setLibraryFavoritesGuideSavedPlacesCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibraryFavoritesGuideSavedPlacesCount")}];
  }

  return 0;
}

- (id)stateMapUIShown
{
  v3 = objc_alloc_init(MEMORY[0x1E69A20A8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__GEOAPSharedStateData_stateMapUIShown__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __39__GEOAPSharedStateData_stateMapUIShown__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownAqiShown])
  {
    [*(a1 + 40) setIsAirQualityShown:{objc_msgSend(*(a1 + 32), "mapUiShownAqiShown")}];
  }

  if ([*(a1 + 32) hasMapUiShownWeatherShown])
  {
    [*(a1 + 40) setIsWeatherShown:{objc_msgSend(*(a1 + 32), "mapUiShownWeatherShown")}];
  }

  if ([*(a1 + 32) hasVenueExperienceShown])
  {
    [*(a1 + 40) setIsVenueExperienceShown:{objc_msgSend(*(a1 + 32), "venueExperienceShown")}];
  }

  if ([*(a1 + 32) hasMapUiShownActiveNavMode])
  {
    [*(a1 + 40) setActiveNavMode:{objc_msgSend(*(a1 + 32), "activeNavModeAsGEOTransportType")}];
  }

  if ([*(a1 + 32) hasLookAroundEntryIconShown])
  {
    [*(a1 + 40) setIsLookAroundEntryIconShown:{objc_msgSend(*(a1 + 32), "lookAroundEntryIconShown")}];
  }

  return 0;
}

- (id)stateMapSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2098]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__GEOAPSharedStateData_stateMapSettings__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __40__GEOAPSharedStateData_stateMapSettings__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsNavVolume])
  {
    [*(a1 + 40) setNavVoiceVolume:{objc_msgSend(*(a1 + 32), "navVoiceVolumeAsGEONavVoiceVolume")}];
  }

  if ([*(a1 + 32) hasMapSettingsTransportMode])
  {
    [*(a1 + 40) setPreferredTransportMode:{objc_msgSend(*(a1 + 32), "transportModeAsGEOTransportMode")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidHighways])
  {
    [*(a1 + 40) setAvoidHighways:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidHighways")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidTolls])
  {
    [*(a1 + 40) setAvoidTolls:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidTolls")}];
  }

  if ([*(a1 + 32) hasMapSettingsFindMyCarEnabled])
  {
    [*(a1 + 40) setFindMyCarEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsFindMyCarEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsHeadingEnabled])
  {
    [*(a1 + 40) setHeadingEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsHeadingEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsLabelEnabled])
  {
    [*(a1 + 40) setLabelEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsLabelEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled])
  {
    [*(a1 + 40) setPauseSpokenAudioEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsPauseSpokenAudioEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsSpeedLimitEnabled])
  {
    [*(a1 + 40) setSpeedLimitEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsSpeedLimitEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsTrafficEnabled])
  {
    [*(a1 + 40) setTrafficEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsTrafficEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidHills])
  {
    [*(a1 + 40) setBikingAvoidHills:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidHills")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidStairs])
  {
    [*(a1 + 40) setBikingAvoidStairs:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidStairs")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidBusyRoads])
  {
    [*(a1 + 40) setBikingAvoidBusyRoads:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidBusyRoads")}];
  }

  if ([*(a1 + 32) hasMapSettingsEBike])
  {
    [*(a1 + 40) setEBike:{objc_msgSend(*(a1 + 32), "mapSettingsEBike")}];
  }

  if ([*(a1 + 32) hasMapSettingsLocationPrecisionType])
  {
    [*(a1 + 40) setLocationType:{objc_msgSend(*(a1 + 32), "locationPrecisionTypeAsGEOSettingsLocationType")}];
  }

  if ([*(a1 + 32) hasMapSettingsDrivingVoiceSettings])
  {
    [*(a1 + 40) setDrivingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsDrivingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingVoiceSettings])
  {
    [*(a1 + 40) setWalkingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsCyclingVoiceSettings])
  {
    [*(a1 + 40) setCyclingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsCyclingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsIsHandsFreeProfileEnabled])
  {
    [*(a1 + 40) setHFPEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsIsHandsFreeProfileEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingAvoidHills])
  {
    [*(a1 + 40) setWalkingAvoidHills:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingAvoidHills")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingAvoidStairs])
  {
    [*(a1 + 40) setWalkingAvoidStairs:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingAvoidStairs")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingAvoidBusyRoads])
  {
    [*(a1 + 40) setWalkingAvoidBusyRoads:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingAvoidBusyRoads")}];
  }

  if ([*(a1 + 32) hasMapSettingsDirectionsWakeDevice])
  {
    [*(a1 + 40) setDirectionsWakeDevice:{objc_msgSend(*(a1 + 32), "mapSettingsDirectionsWakeDevice")}];
  }

  if ([*(a1 + 32) hasMapSettingsFamiliarRoutes])
  {
    [*(a1 + 40) setFamiliarRoutes:{objc_msgSend(*(a1 + 32), "mapSettingsFamiliarRoutes")}];
  }

  if ([*(a1 + 32) hasMapSettingsVisitedPlaces])
  {
    [*(a1 + 40) setVisitedPlaces:{objc_msgSend(*(a1 + 32), "mapSettingsVisitedPlaces")}];
  }

  if ([*(a1 + 32) hasMapSettingsReportingIncidentsEnabled])
  {
    [*(a1 + 40) setReportingIncidentsEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsReportingIncidentsEnabled")}];
  }

  return 0;
}

- (void)populateRatingPhotoSubmissionDetailsWithEntryPoint:(int)point originTarget:(id)target
{
  v5 = MEMORY[0x1E69A2008];
  targetCopy = target;
  v7 = objc_alloc_init(v5);
  [v7 setOriginTarget:targetCopy];

  switch(point)
  {
    case 2:
      [v7 setIsPlacecardInlineSubmission:1];
      break;
    case 1:
      [v7 setIsFromMapsSuggesions:1];
      break;
    case 0:
      [v7 setIsFromRecommendationCard:1];
      break;
  }

  v8 = v7;
  geo_isolate_sync();
}

- (void)populateRatingSubmissionDetailsWithEntryPoint:(int)point originTarget:(id)target specifierBlock:(id)block
{
  targetCopy = target;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x1E69A2010]);
  [v9 setOriginTarget:targetCopy];
  switch(point)
  {
    case 2:
      [v9 setIsPlacecardInlineSubmission:1];
      break;
    case 1:
      [v9 setIsFromMapsSuggesions:1];
      break;
    case 0:
      [v9 setIsFromRecommendationCard:1];
      break;
  }

  v10 = blockCopy[2];
  v16 = 0;
  v15 = 0;
  v11 = v10(blockCopy, &v15, &v16);
  v12 = v15;
  if (v11)
  {
    do
    {
      v13 = objc_alloc_init(MEMORY[0x1E69A1B18]);
      [v13 setRating:v16];
      [v13 setDisplayedText:v12];
      [v9 addRatings:v13];

      v16 = 0;
      v15 = 0;
      LOBYTE(v13) = (blockCopy[2])(blockCopy, &v15, &v16);
      v12 = v15;
    }

    while ((v13 & 1) != 0);
  }

  v14 = v9;
  geo_isolate_sync();
}

- (void)populatePhotoSubmissionDetailsWithEntryPoint:(int)point numberOfPhotos:(unsigned int)photos numberOfARPSuggestedPhotos:(unsigned int)suggestedPhotos originTarget:(id)target
{
  v6 = *&suggestedPhotos;
  v7 = *&photos;
  v9 = MEMORY[0x1E69A2000];
  targetCopy = target;
  v11 = objc_alloc_init(v9);
  [v11 setOriginTarget:targetCopy];

  switch(point)
  {
    case 2:
      [v11 setIsPlacecardInlineSubmission:1];
      break;
    case 1:
      [v11 setIsFromMapsSuggesions:1];
      break;
    case 0:
      [v11 setIsFromRecommendationCard:1];
      break;
  }

  [v11 setNumberOfPhotos:v7];
  [v11 setNumberOfAprSuggestedPhotos:v6];
  v12 = v11;
  geo_isolate_sync();
}

- (void)populateActionButtonDetails:(id)details
{
  detailsCopy = details;
  v4 = objc_alloc_init(MEMORY[0x1E69A2020]);
  while (1)
  {
    v17 = 0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v5 = detailsCopy[2](detailsCopy, &v15, &v14, &v17, &v16);
    v6 = v15;
    v7 = v14;
    v8 = v7;
    if (!v5)
    {
      break;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69A1B28]);
    v10 = [v6 copy];
    [v9 setCategory:v10];

    v11 = [v8 copy];
    [v9 setProviderId:v11];

    if (v17 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2 * (v17 == 2);
    }

    [v9 setLinkType:v12];
    [v9 setDropDown:v16];
    [v4 addActionButtonDetails:v9];
  }

  v13 = v4;
  geo_isolate_sync();
}

void __114__GEOAPSharedStateData_populateTapEventForResultIndex_resultType_businessId_localSearchProviderId_isEnrichedItem___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E69A2150]);
  v2 = objc_alloc_init(MEMORY[0x1E69A2578]);
  [v2 setResultIndex:*(a1 + 48)];
  [v2 setBusinessId:*(a1 + 40)];
  [v2 setLocalSearchProviderId:*(a1 + 52)];
  [v2 setIsEnrichedItem:*(a1 + 60)];
  v3 = *(a1 + 56);
  if (v3 - 1 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  [v2 setResultType:v4];
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v2];
  [v6 setSearchResults:v5];

  [*(a1 + 32) setTapEventState:v6];
}

- (void)populateTapEventForPinType:(int)type tapEventSpecifierBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A2150]);
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v7 = blockCopy[2];
    v11 = 0;
    if (v7(blockCopy, &v15, &v12, &v13, &v14, &v11))
    {
      do
      {
        v8 = objc_alloc_init(MEMORY[0x1E69A2578]);
        [v8 setResultIndex:v15];
        [v8 setBusinessId:v13];
        [v8 setLocalSearchProviderId:v14];
        [v8 setIsEnrichedItem:v11];
        if (v12 - 1 >= 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = v12;
        }

        [v8 setResultType:v9];
        [v6 addSearchResults:v8];

        v15 = 0;
        v14 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
      }

      while (((blockCopy[2])(blockCopy, &v15, &v12, &v13, &v14, &v11) & 1) != 0);
    }

    if ((type - 1) <= 3)
    {
      [v6 setPinType:?];
    }

    v10 = v6;
    geo_isolate_sync();
  }
}

- (void)populateImpressionObjectId:(id)id
{
  v10 = 0;
  v11 = 0;
  [id getUUIDBytes:&v10];
  v3 = objc_alloc_init(MEMORY[0x1E69A2078]);
  v4 = objc_alloc_init(MEMORY[0x1E69A1E10]);
  [v3 setImpressionObjectId:v4];

  v5 = v10;
  impressionObjectId = [v3 impressionObjectId];
  [impressionObjectId setHigh:v5];

  v7 = v11;
  impressionObjectId2 = [v3 impressionObjectId];
  [impressionObjectId2 setLow:v7];

  v9 = v3;
  geo_isolate_sync();
}

- (void)populateSearchResultsForQuery:(id)query searchResultSpecifierBlock:(id)block
{
  queryCopy = query;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A2138]);
    v8 = [queryCopy copy];
    [v7 setSearchQuery:v8];

    v17 = 0;
    v18 = 0;
    v9 = blockCopy[2];
    v16 = 0;
    LOBYTE(v10) = 0;
    if (v9(blockCopy, &v18 + 4, &v16, &v17, &v18))
    {
      v10 = 0;
      do
      {
        v11 = objc_alloc_init(MEMORY[0x1E69A2578]);
        [v11 setResultIndex:HIDWORD(v18)];
        [v11 setBusinessId:v17];
        [v11 setLocalSearchProviderId:v18];
        v12 = v16 - 2;
        if (v16 == 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v10;
        }

        if (v12 >= 2)
        {
          v14 = v16 == 1;
        }

        else
        {
          v14 = v16;
        }

        if (v12 >= 2)
        {
          v10 = v13;
        }

        [v11 setResultType:v14];
        [v7 addSearchResults:v11];

        v17 = 0;
        v18 = 0;
        v16 = 0;
      }

      while (((blockCopy[2])(blockCopy, &v18 + 4, &v16, &v17, &v18) & 1) != 0);
    }

    [v7 setIncludesEnrichedResult:v10 & 1];
    v15 = v7;
    geo_isolate_sync();
  }
}

- (void)periodicSettingsHandler
{
  v3 = objc_alloc_init(MEMORY[0x1E69A1F58]);
  stateMapSettings = [(GEOAPSharedStateData *)self stateMapSettings];
  [v3 setMapSettings:stateMapSettings];

  stateMapUIShown = [(GEOAPSharedStateData *)self stateMapUIShown];
  [v3 setMapUiShown:stateMapUIShown];

  stateMapsFeatures = [(GEOAPSharedStateData *)self stateMapsFeatures];
  [v3 setMapsFeatures:stateMapsFeatures];

  stateMapsUserSettings = [(GEOAPSharedStateData *)self stateMapsUserSettings];
  [v3 setMapsUserSettings:stateMapsUserSettings];

  stateRoutingSettings = [(GEOAPSharedStateData *)self stateRoutingSettings];
  [v3 setRoutingSettings:stateRoutingSettings];

  v9 = +[GEOAPStateFactory sharedFactory];
  v10 = [v9 stateForType:37];
  deviceSettings = [v10 deviceSettings];
  [v3 setDeviceSettings:deviceSettings];

  data = [v3 data];

  v14 = [objc_alloc(MEMORY[0x1E69A1F58]) initWithData:data];
  v13 = +[GEOAPServiceManager sharedManager];
  [v13 reportDailySettings:v14];
}

- (void)performRoutingSettingsStateOperation:(id)operation
{
  operationCopy = operation;
  routingSettingsIso = self->_routingSettingsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__GEOAPSharedStateData_performRoutingSettingsStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:routingSettingsIso updateBlock:v7];
}

void *__61__GEOAPSharedStateData_performRoutingSettingsStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)performMapUserSettingsStateOperation:(id)operation
{
  operationCopy = operation;
  mapUserSettingsIso = self->_mapUserSettingsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__GEOAPSharedStateData_performMapUserSettingsStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapUserSettingsIso updateBlock:v7];
}

void *__61__GEOAPSharedStateData_performMapUserSettingsStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)performMapFeaturesStateOperation:(id)operation
{
  operationCopy = operation;
  mapFeaturesIso = self->_mapFeaturesIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__GEOAPSharedStateData_performMapFeaturesStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapFeaturesIso updateBlock:v7];
}

void *__57__GEOAPSharedStateData_performMapFeaturesStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)setMapFeatureFavoritesCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapFeatureFavoritesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapFeatureFavoritesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureFavoritesCount_, v1);
  return 1;
}

- (void)setMapFeatureLibraryFavoritesGuideSavedPlacesCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__GEOAPSharedStateData_setMapFeatureLibraryFavoritesGuideSavedPlacesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __75__GEOAPSharedStateData_setMapFeatureLibraryFavoritesGuideSavedPlacesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibraryFavoritesGuideSavedPlacesCount_, v1);
  return 1;
}

- (void)setMapFeatureLibraryGuidesSavedPlacesCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__GEOAPSharedStateData_setMapFeatureLibraryGuidesSavedPlacesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __67__GEOAPSharedStateData_setMapFeatureLibraryGuidesSavedPlacesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibraryGuidesSavedPlacesCount_, v1);
  return 1;
}

- (void)setMapFeatureLibraryPlacesWithNoteCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__GEOAPSharedStateData_setMapFeatureLibraryPlacesWithNoteCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __64__GEOAPSharedStateData_setMapFeatureLibraryPlacesWithNoteCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibraryPlacesWithNoteCount_, v1);
  return 1;
}

- (void)setMapFeatureLibrarySavedPlacesCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__GEOAPSharedStateData_setMapFeatureLibrarySavedPlacesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __61__GEOAPSharedStateData_setMapFeatureLibrarySavedPlacesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibrarySavedPlacesCount_, v1);
  return 1;
}

- (void)setMapFeatureLicensePlateCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setMapFeatureLicensePlateCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __55__GEOAPSharedStateData_setMapFeatureLicensePlateCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLicensePlateCount_, v1);
  return 1;
}

- (void)setMapFeatureElectronicVehicleCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setMapFeatureElectronicVehicleCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __60__GEOAPSharedStateData_setMapFeatureElectronicVehicleCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureElectronicVehicleCount_, v1);
  return 1;
}

- (void)setMapFeatureSubmittedPhotosCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__GEOAPSharedStateData_setMapFeatureSubmittedPhotosCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __58__GEOAPSharedStateData_setMapFeatureSubmittedPhotosCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureSubmittedPhotosCount_, v1);
  return 1;
}

- (void)setMapFeatureSubmittedRatingsCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setMapFeatureSubmittedRatingsCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __59__GEOAPSharedStateData_setMapFeatureSubmittedRatingsCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureSubmittedRatingsCount_, v1);
  return 1;
}

- (void)setMapFeatureSavedCollectionsCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setMapFeatureSavedCollectionsCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __59__GEOAPSharedStateData_setMapFeatureSavedCollectionsCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureSavedCollectionsCount_, v1);
  return 1;
}

- (void)setMapFeaturePersonalCollectionsCount:(int)count
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__GEOAPSharedStateData_setMapFeaturePersonalCollectionsCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  countCopy = count;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __62__GEOAPSharedStateData_setMapFeaturePersonalCollectionsCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeaturePersonalCollectionsCount_, v1);
  return 1;
}

- (void)setHasMapSettingsVisitedPlaces:(BOOL)places
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setHasMapSettingsVisitedPlaces___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  placesCopy = places;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __55__GEOAPSharedStateData_setHasMapSettingsVisitedPlaces___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsVisitedPlaces];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsVisitedPlaces_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsVisitedPlaces:(int)places
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapSettingsVisitedPlaces___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  placesCopy = places;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapSettingsVisitedPlaces___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsVisitedPlaces])
  {
    v2 = [*(a1 + 32) mapSettingsVisitedPlaces];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsVisitedPlaces_, v3);
  return 1;
}

- (void)setHasMapSettingsFamiliarRoutes:(BOOL)routes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsFamiliarRoutes___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  routesCopy = routes;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsFamiliarRoutes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsFamiliarRoutes];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsFamiliarRoutes_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsFamiliarRoutes:(BOOL)routes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsFamiliarRoutes___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  routesCopy = routes;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsFamiliarRoutes___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsFamiliarRoutes])
  {
    v2 = [*(a1 + 32) mapSettingsFamiliarRoutes];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsFamiliarRoutes_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsDirectionsWakeDevice:(BOOL)device
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__GEOAPSharedStateData_setHasMapSettingsDirectionsWakeDevice___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  deviceCopy = device;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __62__GEOAPSharedStateData_setHasMapSettingsDirectionsWakeDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsDirectionsWakeDevice];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsDirectionsWakeDevice_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsDirectionsWakeDevice:(BOOL)device
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setMapSettingsDirectionsWakeDevice___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  deviceCopy = device;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __59__GEOAPSharedStateData_setMapSettingsDirectionsWakeDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsDirectionsWakeDevice])
  {
    v2 = [*(a1 + 32) mapSettingsDirectionsWakeDevice];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsDirectionsWakeDevice_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsWalkingAvoidBusyRoads:(BOOL)roads
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  roadsCopy = roads;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __63__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidBusyRoads___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsWalkingAvoidBusyRoads];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsWalkingAvoidBusyRoads_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsWalkingAvoidBusyRoads:(BOOL)roads
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setMapSettingsWalkingAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  roadsCopy = roads;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __60__GEOAPSharedStateData_setMapSettingsWalkingAvoidBusyRoads___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsWalkingAvoidBusyRoads])
  {
    v2 = [*(a1 + 32) mapSettingsWalkingAvoidBusyRoads];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsWalkingAvoidBusyRoads_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsWalkingAvoidStairs:(BOOL)stairs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  stairsCopy = stairs;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __60__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidStairs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsWalkingAvoidStairs];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsWalkingAvoidStairs_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsWalkingAvoidStairs:(BOOL)stairs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__GEOAPSharedStateData_setMapSettingsWalkingAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  stairsCopy = stairs;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __57__GEOAPSharedStateData_setMapSettingsWalkingAvoidStairs___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsWalkingAvoidStairs])
  {
    v2 = [*(a1 + 32) mapSettingsWalkingAvoidStairs];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsWalkingAvoidStairs_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsWalkingAvoidHills:(BOOL)hills
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  hillsCopy = hills;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __59__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidHills___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsWalkingAvoidHills];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsWalkingAvoidHills_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsWalkingAvoidHills:(BOOL)hills
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setMapSettingsWalkingAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  hillsCopy = hills;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __56__GEOAPSharedStateData_setMapSettingsWalkingAvoidHills___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsWalkingAvoidHills])
  {
    v2 = [*(a1 + 32) mapSettingsWalkingAvoidHills];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsWalkingAvoidHills_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsEBike:(BOOL)bike
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__GEOAPSharedStateData_setHasMapSettingsEBike___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  bikeCopy = bike;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __47__GEOAPSharedStateData_setHasMapSettingsEBike___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsEBike];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsEBike_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsEBike:(BOOL)bike
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__GEOAPSharedStateData_setMapSettingsEBike___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  bikeCopy = bike;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __44__GEOAPSharedStateData_setMapSettingsEBike___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsEBike])
  {
    v2 = [*(a1 + 32) mapSettingsEBike];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsEBike_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsLocationPrecisionType:(BOOL)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__GEOAPSharedStateData_setHasMapSettingsLocationPrecisionType___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  typeCopy = type;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __63__GEOAPSharedStateData_setHasMapSettingsLocationPrecisionType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsLocationPrecisionType];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsLocationPrecisionType_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsLocationPrecisionType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setMapSettingsLocationPrecisionType___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  typeCopy = type;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __60__GEOAPSharedStateData_setMapSettingsLocationPrecisionType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsLocationPrecisionType])
  {
    v2 = [*(a1 + 32) mapSettingsLocationPrecisionType];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsLocationPrecisionType_, v3);
  return 1;
}

- (void)setHasMapSettingsAvoidBusyRoads:(BOOL)roads
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  roadsCopy = roads;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsAvoidBusyRoads___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidBusyRoads];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidBusyRoads_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidBusyRoads:(BOOL)roads
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  roadsCopy = roads;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsAvoidBusyRoads___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidBusyRoads])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidBusyRoads];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidBusyRoads_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidStairs:(BOOL)stairs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setHasMapSettingsAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  stairsCopy = stairs;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __53__GEOAPSharedStateData_setHasMapSettingsAvoidStairs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidStairs];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidStairs_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidStairs:(BOOL)stairs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__GEOAPSharedStateData_setMapSettingsAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  stairsCopy = stairs;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __50__GEOAPSharedStateData_setMapSettingsAvoidStairs___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidStairs])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidStairs];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidStairs_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidHills:(BOOL)hills
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setHasMapSettingsAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  hillsCopy = hills;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __52__GEOAPSharedStateData_setHasMapSettingsAvoidHills___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidHills];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidHills_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidHills:(BOOL)hills
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__GEOAPSharedStateData_setMapSettingsAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  hillsCopy = hills;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __49__GEOAPSharedStateData_setMapSettingsAvoidHills___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidHills])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidHills];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidHills_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsTrafficEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsTrafficEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsTrafficEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsTrafficEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsTrafficEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsTrafficEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsTrafficEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsTrafficEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsTrafficEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsTrafficEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsTrafficEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsSpeedLimitEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setHasMapSettingsSpeedLimitEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __59__GEOAPSharedStateData_setHasMapSettingsSpeedLimitEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsSpeedLimitEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsSpeedLimitEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsSpeedLimitEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setMapSettingsSpeedLimitEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __56__GEOAPSharedStateData_setMapSettingsSpeedLimitEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsSpeedLimitEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsSpeedLimitEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsSpeedLimitEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsPauseSpokenAudioEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__GEOAPSharedStateData_setHasMapSettingsPauseSpokenAudioEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __65__GEOAPSharedStateData_setHasMapSettingsPauseSpokenAudioEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsPauseSpokenAudioEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsPauseSpokenAudioEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__GEOAPSharedStateData_setMapSettingsPauseSpokenAudioEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __62__GEOAPSharedStateData_setMapSettingsPauseSpokenAudioEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsPauseSpokenAudioEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsPauseSpokenAudioEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsLabelEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__GEOAPSharedStateData_setHasMapSettingsLabelEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __54__GEOAPSharedStateData_setHasMapSettingsLabelEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsLabelEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsLabelEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsLabelEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GEOAPSharedStateData_setMapSettingsLabelEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __51__GEOAPSharedStateData_setMapSettingsLabelEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsLabelEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsLabelEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsLabelEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsHeadingEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsHeadingEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsHeadingEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsHeadingEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsHeadingEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsHeadingEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsHeadingEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsHeadingEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsHeadingEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsHeadingEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsHeadingEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsFindMyCarEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__GEOAPSharedStateData_setHasMapSettingsFindMyCarEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __58__GEOAPSharedStateData_setHasMapSettingsFindMyCarEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsFindMyCarEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsFindMyCarEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsFindMyCarEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setMapSettingsFindMyCarEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __55__GEOAPSharedStateData_setMapSettingsFindMyCarEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsFindMyCarEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsFindMyCarEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsFindMyCarEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidTolls:(BOOL)tolls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setHasMapSettingsAvoidTolls___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  tollsCopy = tolls;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __52__GEOAPSharedStateData_setHasMapSettingsAvoidTolls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidTolls];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidTolls_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidTolls:(BOOL)tolls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__GEOAPSharedStateData_setMapSettingsAvoidTolls___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  tollsCopy = tolls;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __49__GEOAPSharedStateData_setMapSettingsAvoidTolls___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidTolls])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidTolls];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidTolls_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidHighways:(BOOL)highways
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setHasMapSettingsAvoidHighways___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  highwaysCopy = highways;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __55__GEOAPSharedStateData_setHasMapSettingsAvoidHighways___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidHighways];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidHighways_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidHighways:(BOOL)highways
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapSettingsAvoidHighways___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  highwaysCopy = highways;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapSettingsAvoidHighways___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidHighways])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidHighways];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidHighways_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsTransportMode:(BOOL)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setHasMapSettingsTransportMode___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  modeCopy = mode;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __55__GEOAPSharedStateData_setHasMapSettingsTransportMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsTransportMode];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsTransportMode_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsTransportMode:(int)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapSettingsTransportMode___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  modeCopy = mode;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapSettingsTransportMode___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsTransportMode])
  {
    v2 = [*(a1 + 32) mapSettingsTransportMode];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsTransportMode_, v3);
  return 1;
}

- (void)setHasMapSettingsNavVolume:(BOOL)volume
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GEOAPSharedStateData_setHasMapSettingsNavVolume___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  volumeCopy = volume;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __51__GEOAPSharedStateData_setHasMapSettingsNavVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsNavVolume];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsNavVolume_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsNavVolume:(int)volume
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__GEOAPSharedStateData_setMapSettingsNavVolume___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  volumeCopy = volume;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __48__GEOAPSharedStateData_setMapSettingsNavVolume___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsNavVolume])
  {
    v2 = [*(a1 + 32) mapSettingsNavVolume];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsNavVolume_, v3);
  return 1;
}

- (void)setNavVoiceGuidanceLevel:(int)level forTransportMode:(int)mode
{
  v4 = *&mode;
  v6 = [(GEOAPSharedStateData *)self _geoVoiceGuidanceLevelFromAPVoiceGuidanceLevel:*&level];
  v7 = [(GEOAPSharedStateData *)self _geoTransportModeForAPTransportMode:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__GEOAPSharedStateData_setNavVoiceGuidanceLevel_forTransportMode___block_invoke;
  v8[3] = &unk_1E7959518;
  v9 = v7;
  v10 = v6;
  v8[4] = self;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v8];
}

uint64_t __66__GEOAPSharedStateData_setNavVoiceGuidanceLevel_forTransportMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  switch(v1)
  {
    case 5:
      objc_msgSendSuper2(&v3, sel_setMapSettingsCyclingVoiceSettings_, *(a1 + 44), *(a1 + 32), GEOAPSharedStateData, v4.receiver, v4.super_class, v5.receiver, v5.super_class);
      break;
    case 2:
      objc_msgSendSuper2(&v4, sel_setMapSettingsWalkingVoiceSettings_, *(a1 + 44), v3.receiver, v3.super_class, *(a1 + 32), GEOAPSharedStateData, v5.receiver, v5.super_class);
      break;
    case 1:
      objc_msgSendSuper2(&v5, sel_setMapSettingsDrivingVoiceSettings_, *(a1 + 44), v3.receiver, v3.super_class, v4.receiver, v4.super_class, *(a1 + 32), GEOAPSharedStateData);
      break;
  }

  return 1;
}

- (void)setHasMapSettingsReportingIncidentsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__GEOAPSharedStateData_setHasMapSettingsReportingIncidentsEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __67__GEOAPSharedStateData_setHasMapSettingsReportingIncidentsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsReportingIncidentsEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsReportingIncidentsEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsReportingIncidentsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__GEOAPSharedStateData_setMapSettingsReportingIncidentsEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  enabledCopy = enabled;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __64__GEOAPSharedStateData_setMapSettingsReportingIncidentsEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsReportingIncidentsEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsReportingIncidentsEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsReportingIncidentsEnabled_, v3 & 1);
  return 1;
}

- (void)performMapSettingsStateOperation:(id)operation
{
  operationCopy = operation;
  mapSettingsIso = self->_mapSettingsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__GEOAPSharedStateData_performMapSettingsStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapSettingsIso updateBlock:v7];
}

void *__57__GEOAPSharedStateData_performMapSettingsStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)setHasMapUiShownActiveNavMode:(BOOL)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__GEOAPSharedStateData_setHasMapUiShownActiveNavMode___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  modeCopy = mode;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

BOOL __54__GEOAPSharedStateData_setHasMapUiShownActiveNavMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapUiShownActiveNavMode];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapUiShownActiveNavMode_, v3);
  }

  return v3 != v2;
}

- (void)setMapUiShownActiveNavMode:(int)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GEOAPSharedStateData_setMapUiShownActiveNavMode___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  modeCopy = mode;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

uint64_t __51__GEOAPSharedStateData_setMapUiShownActiveNavMode___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownActiveNavMode])
  {
    v2 = [*(a1 + 32) mapUiShownActiveNavMode];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapUiShownActiveNavMode_, v3);
  return 1;
}

- (void)setHasMapUiShownWeatherShown:(BOOL)shown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setHasMapUiShownWeatherShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  shownCopy = shown;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

BOOL __53__GEOAPSharedStateData_setHasMapUiShownWeatherShown___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapUiShownWeatherShown];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapUiShownWeatherShown_, v3);
  }

  return v3 != v2;
}

- (void)setMapUiShownWeatherShown:(BOOL)shown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__GEOAPSharedStateData_setMapUiShownWeatherShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  shownCopy = shown;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

uint64_t __50__GEOAPSharedStateData_setMapUiShownWeatherShown___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownWeatherShown])
  {
    v2 = [*(a1 + 32) mapUiShownWeatherShown];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapUiShownWeatherShown_, v3 & 1);
  return 1;
}

- (void)setHasMapUiShownAqiShown:(BOOL)shown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__GEOAPSharedStateData_setHasMapUiShownAqiShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  shownCopy = shown;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

BOOL __49__GEOAPSharedStateData_setHasMapUiShownAqiShown___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapUiShownAqiShown];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapUiShownAqiShown_, v3);
  }

  return v3 != v2;
}

- (void)setMapUiShownAqiShown:(BOOL)shown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__GEOAPSharedStateData_setMapUiShownAqiShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  shownCopy = shown;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

uint64_t __46__GEOAPSharedStateData_setMapUiShownAqiShown___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownAqiShown])
  {
    v2 = [*(a1 + 32) mapUiShownAqiShown];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapUiShownAqiShown_, v3 & 1);
  return 1;
}

- (void)performMapUIShownStateOperation:(id)operation
{
  operationCopy = operation;
  mapUIShownIso = self->_mapUIShownIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__GEOAPSharedStateData_performMapUIShownStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapUIShownIso updateBlock:v7];
}

void *__56__GEOAPSharedStateData_performMapUIShownStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)setUserProfileAvailableActions:(id)actions
{
  actionsCopy = actions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__GEOAPSharedStateData_setUserProfileAvailableActions___block_invoke;
  v6[3] = &unk_1E79594C8;
  v6[4] = self;
  v7 = actionsCopy;
  v5 = actionsCopy;
  [(GEOAPSharedStateData *)self _performUserProfileStateOperation:v6];
}

uint64_t __55__GEOAPSharedStateData_setUserProfileAvailableActions___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) hasAccount] & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69A2018]);
    [*(a1 + 32) setAccount:v2];
  }

  v3 = [*(a1 + 32) account];
  [v3 clearPossibleActions];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [*(a1 + 32) account];
        [v10 addPossibleAction:{objc_msgSend(v9, "intValue")}];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return 1;
}

- (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)cloud
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__GEOAPSharedStateData_setUserProfileUserIsLoggedIntoICloud___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  cloudCopy = cloud;
  [(GEOAPSharedStateData *)self _performUserProfileStateOperation:v3];
}

uint64_t __61__GEOAPSharedStateData_setUserProfileUserIsLoggedIntoICloud___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) hasAccount])
  {
    v2 = objc_alloc_init(MEMORY[0x1E69A2018]);
    [*(a1 + 32) setAccount:v2];
    goto LABEL_6;
  }

  v2 = [*(a1 + 32) account];
  if (![v2 hasSignedIntoIcloud])
  {
LABEL_6:

    goto LABEL_7;
  }

  v3 = [*(a1 + 32) account];
  v4 = [v3 signedIntoIcloud];
  v5 = *(a1 + 40);

  if (v5 == v4)
  {
    return 0;
  }

LABEL_7:
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) account];
  [v8 setSignedIntoIcloud:v7];

  return 1;
}

- (void)_performUserProfileStateOperation:(id)operation
{
  operationCopy = operation;
  userProfileIso = self->_userProfileIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__GEOAPSharedStateData__performUserProfileStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:userProfileIso updateBlock:v7];
}

void *__58__GEOAPSharedStateData__performUserProfileStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (int)_geoTransportModeForAPTransportMode:(int)mode
{
  if ((mode - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return mode;
  }
}

- (int)_geoVoiceGuidanceLevelFromAPVoiceGuidanceLevel:(int)level
{
  if ((level - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return level;
  }
}

- (int)navVoiceVolumeAsGEONavVoiceVolume
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapSettingsNavVolume];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapSettingsNavVolume];
    if ((result - 1) >= 4)
    {
      return 0;
    }
  }

  return result;
}

- (int)moduleButtonTypeAsGEOModuleButtonType:(int64_t)type
{
  if (type <= 8)
  {
    if (type == 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if (type == 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = v13;
    }

    if (type == 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = 0;
    }

    if (type == 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    if (type <= 6)
    {
      v5 = v15;
    }

    if (type == 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    if (type == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v16;
    }

    if (type == 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    if (type == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    if (type <= 2)
    {
      v9 = v18;
    }

    v12 = type <= 4;
  }

  else
  {
    if (type == 56)
    {
      v3 = 56;
    }

    else
    {
      v3 = 0;
    }

    if (type == 55)
    {
      v4 = 55;
    }

    else
    {
      v4 = v3;
    }

    if (type == 54)
    {
      v5 = 54;
    }

    else
    {
      v5 = v4;
    }

    if (type == 53)
    {
      v6 = 53;
    }

    else
    {
      v6 = 0;
    }

    if (type == 52)
    {
      v7 = 52;
    }

    else
    {
      v7 = v6;
    }

    if (type <= 53)
    {
      v5 = v7;
    }

    if (type == 51)
    {
      v8 = 51;
    }

    else
    {
      v8 = 0;
    }

    if (type == 50)
    {
      v9 = 50;
    }

    else
    {
      v9 = v8;
    }

    if (type == 10)
    {
      v10 = 10;
    }

    else
    {
      v10 = 0;
    }

    if (type == 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = v10;
    }

    if (type <= 49)
    {
      v9 = v11;
    }

    v12 = type <= 51;
  }

  if (v12)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

- (int)moduleButtonLinkTypeAsGEOActionButtonLinkType:(int)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (void)addPlaceCardModulesForRevealAction:(id)action
{
  actionCopy = action;
  v3 = actionCopy;
  geo_reentrant_isolate_sync();
}

void __59__GEOAPSharedStateData_addPlaceCardModulesForRevealAction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) placeCardRevealedPlaceCardModules];
  [v2 removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 32) placeCardRevealedPlaceCardModules];
        v10 = [v8 copy];
        [v9 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)clearSuggestionsDisplayedResults
{
  suggestionsIso = self->_suggestionsIso;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_clearSuggestionsDisplayedResults__block_invoke;
  v3[3] = &unk_1E7959610;
  v3[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v3];
}

uint64_t __56__GEOAPSharedStateData_clearSuggestionsDisplayedResults__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_clearSuggestionsDisplayedResults);
  return [*(*(a1 + 32) + 904) clearDisplayedResults];
}

- (void)setSuggestionsDisplayedResults:(id)results
{
  resultsCopy = results;
  suggestionsIso = self->_suggestionsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__GEOAPSharedStateData_setSuggestionsDisplayedResults___block_invoke;
  v7[3] = &unk_1E7959400;
  v8 = resultsCopy;
  selfCopy = self;
  v6 = resultsCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v7];
}

void __55__GEOAPSharedStateData_setSuggestionsDisplayedResults___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) copy];
  v7.receiver = v2;
  v7.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v7, sel_setSuggestionsDisplayedResults_, v3);

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 904);
  v6 = [v4 copy];
  [v5 setDisplayedResults:v6];
}

- (void)addSuggestionsDisplayedResults:(id)results
{
  resultsCopy = results;
  suggestionsIso = self->_suggestionsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__GEOAPSharedStateData_addSuggestionsDisplayedResults___block_invoke;
  v7[3] = &unk_1E7959400;
  v8 = resultsCopy;
  selfCopy = self;
  v6 = resultsCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v7];
}

uint64_t __55__GEOAPSharedStateData_addSuggestionsDisplayedResults___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_addSuggestionsDisplayedResults_, v2);
  return [*(*(a1 + 40) + 904) addDisplayedResult:*(a1 + 32)];
}

- (void)setHasSuggestionsAcSequenceNumber:(BOOL)number
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__GEOAPSharedStateData_setHasSuggestionsAcSequenceNumber___block_invoke;
  v4[3] = &unk_1E7959450;
  numberCopy = number;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __58__GEOAPSharedStateData_setHasSuggestionsAcSequenceNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsAcSequenceNumber_, v2);
  return [*(*(a1 + 32) + 904) setHasAcSequenceNumber:*(a1 + 40)];
}

- (void)setSuggestionsAcSequenceNumber:(int)number
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__GEOAPSharedStateData_setSuggestionsAcSequenceNumber___block_invoke;
  v4[3] = &unk_1E7959428;
  numberCopy = number;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __55__GEOAPSharedStateData_setSuggestionsAcSequenceNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsAcSequenceNumber_, v2);
  return [*(*(a1 + 32) + 904) setAcSequenceNumber:*(a1 + 40)];
}

- (void)setHasSuggestionsSearchFieldType:(BOOL)type
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__GEOAPSharedStateData_setHasSuggestionsSearchFieldType___block_invoke;
  v4[3] = &unk_1E7959450;
  typeCopy = type;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __57__GEOAPSharedStateData_setHasSuggestionsSearchFieldType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsSearchFieldType_, v2);
  return [*(*(a1 + 32) + 904) setHasSearchFieldType:*(a1 + 40)];
}

- (void)setSuggestionsSearchFieldType:(int)type
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__GEOAPSharedStateData_setSuggestionsSearchFieldType___block_invoke;
  v4[3] = &unk_1E7959428;
  typeCopy = type;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __54__GEOAPSharedStateData_setSuggestionsSearchFieldType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsSearchFieldType_, v2);
  return [*(*(a1 + 32) + 904) setSearchFieldType:*(a1 + 40)];
}

- (void)setHasSuggestionsSelectedIndex:(BOOL)index
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__GEOAPSharedStateData_setHasSuggestionsSelectedIndex___block_invoke;
  v4[3] = &unk_1E7959450;
  indexCopy = index;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __55__GEOAPSharedStateData_setHasSuggestionsSelectedIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsSelectedIndex_, v2);
  return [*(*(a1 + 32) + 904) setHasSelectedIndex:*(a1 + 40)];
}

- (void)setSuggestionsSelectedIndex:(int)index
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__GEOAPSharedStateData_setSuggestionsSelectedIndex___block_invoke;
  v4[3] = &unk_1E7959428;
  indexCopy = index;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __52__GEOAPSharedStateData_setSuggestionsSelectedIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsSelectedIndex_, v2);
  return [*(*(a1 + 32) + 904) setSelectedIndex:*(a1 + 40)];
}

- (void)setSuggestionsSearchString:(id)string
{
  stringCopy = string;
  suggestionsIso = self->_suggestionsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__GEOAPSharedStateData_setSuggestionsSearchString___block_invoke;
  v7[3] = &unk_1E7959400;
  v8 = stringCopy;
  selfCopy = self;
  v6 = stringCopy;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v7];
}

uint64_t __51__GEOAPSharedStateData_setSuggestionsSearchString___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsSearchString_, v2);
  return [*(*(a1 + 40) + 904) setSearchString:*(a1 + 32)];
}

- (void)clearSuggestionsData
{
  suggestionsIso = self->_suggestionsIso;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__GEOAPSharedStateData_clearSuggestionsData__block_invoke;
  v3[3] = &unk_1E7959610;
  v3[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v3];
}

uint64_t __44__GEOAPSharedStateData_clearSuggestionsData__block_invoke(uint64_t a1)
{
  v7.receiver = *(a1 + 32);
  v7.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v7, sel_setSuggestionsSearchString_, 0);
  v6.receiver = *(a1 + 32);
  v6.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v6, sel_setHasSuggestionsSelectedIndex_, 0);
  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setHasSuggestionsSearchFieldType_, 0);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsAcSequenceNumber_, 0);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_clearSuggestionsDisplayedResults);
  [*(*(a1 + 32) + 904) setSearchString:0];
  [*(*(a1 + 32) + 904) setHasSelectedIndex:0];
  [*(*(a1 + 32) + 904) setHasSearchFieldType:0];
  [*(*(a1 + 32) + 904) setHasAcSequenceNumber:0];
  return [*(*(a1 + 32) + 904) clearDisplayedResults];
}

- (id)suggestionsState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3158;
  v10 = __Block_byref_object_dispose__3159;
  v11 = 0;
  suggestionsIso = self->_suggestionsIso;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__GEOAPSharedStateData_suggestionsState__block_invoke;
  v5[3] = &unk_1E7959568;
  v5[4] = self;
  v5[5] = &v6;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__40__GEOAPSharedStateData_suggestionsState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hasSuggestionsData];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 904) copy];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (BOOL)_hasSuggestionsData
{
  geo_assert_isolated();
  v10.receiver = self;
  v10.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v10 hasSuggestionsSearchString])
  {
    return 1;
  }

  v9.receiver = self;
  v9.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v9 hasSuggestionsSelectedIndex])
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v8 hasSuggestionsSearchFieldType])
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v7 hasSuggestionsAcSequenceNumber])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = GEOAPSharedStateData;
  suggestionsDisplayedResults = [(GEOAnalyticsPipelineStateData *)&v6 suggestionsDisplayedResults];
  v3 = [suggestionsDisplayedResults count] != 0;

  return v3;
}

- (void)populateWithChildPlace:(id)place timestamp:(double)timestamp resultIndex:(int)index
{
  placeCopy = place;
  v5 = placeCopy;
  geo_reentrant_isolate_sync();
}

void __69__GEOAPSharedStateData_populateWithChildPlace_timestamp_resultIndex___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPlaceCardState:0];
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E69A2350] actionDetailsWithChildPlace:v2 timestamp:*(a1 + 56) resultIndex:*(a1 + 48)];
  [*(a1 + 40) populateWithPlaceActionDetails:v3];
}

- (void)populateWithPlace:(id)place timestamp:(double)timestamp resultIndex:(int)index
{
  placeCopy = place;
  v5 = placeCopy;
  geo_reentrant_isolate_sync();
}

void __64__GEOAPSharedStateData_populateWithPlace_timestamp_resultIndex___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPlaceCardState:0];
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E69A2350] actionDetailsWithMapItem:v2 timestamp:*(a1 + 56) resultIndex:*(a1 + 48)];
  [*(a1 + 40) populateWithPlaceActionDetails:v3];
}

- (void)_populateWithGEOTransitDepartureSequenceUsage:(id)usage
{
  usageCopy = usage;
  geo_assert_reentrant_isolated();
  if ([usageCopy hasLineId])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId:](self, "setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId:", [usageCopy lineId]);
  }

  if ([usageCopy hasHeadsign])
  {
    headsign = [usageCopy headsign];
    v5 = [headsign copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign:v5];
  }

  if ([usageCopy hasDirection])
  {
    direction = [usageCopy direction];
    v7 = [direction copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection:v7];
  }
}

- (void)_populateWithGEOTransitPlaceCard:(id)card
{
  cardCopy = card;
  geo_assert_reentrant_isolated();
  if ([cardCopy hasIncidentType])
  {
    incidentType = [cardCopy incidentType];
    v5 = [incidentType copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType:v5];
  }

  if ([cardCopy hasTransitCategory])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory:](self, "setPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory:", [cardCopy transitCategory]);
  }

  if ([cardCopy hasTransitSystemName])
  {
    transitSystemName = [cardCopy transitSystemName];
    v7 = [transitSystemName copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName:v7];
  }

  if ([cardCopy hasTransitDepartureSequenceUsage])
  {
    transitDepartureSequenceUsage = [cardCopy transitDepartureSequenceUsage];
    [(GEOAPSharedStateData *)self _populateWithGEOTransitDepartureSequenceUsage:transitDepartureSequenceUsage];
  }
}

- (void)populateWithPlaceActionDetails:(id)details
{
  detailsCopy = details;
  geo_assert_reentrant_isolated();
  if ([detailsCopy hasPhotoId])
  {
    photoId = [detailsCopy photoId];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsPhotoId:photoId];
  }

  if ([detailsCopy hasPlaceID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsPlaceId:](self, "setPlaceCardPlaceActionDetailsPlaceId:", [detailsCopy placeID]);
  }

  if ([detailsCopy hasTargetID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsTargetId:](self, "setPlaceCardPlaceActionDetailsTargetId:", [detailsCopy targetID]);
  }

  if ([detailsCopy hasActionUrl])
  {
    actionUrl = [detailsCopy actionUrl];
    v6 = [actionUrl copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsActionUrl:v6];
  }

  if ([detailsCopy hasBusinessID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsBusinessId:](self, "setPlaceCardPlaceActionDetailsBusinessId:", [detailsCopy businessID]);
  }

  if ([detailsCopy hasAnimationID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsAnimationId:](self, "setPlaceCardPlaceActionDetailsAnimationId:", [detailsCopy animationID]);
  }

  if ([detailsCopy hasResultIndex])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsResultIndex:](self, "setPlaceCardPlaceActionDetailsResultIndex:", [detailsCopy resultIndex]);
  }

  if ([detailsCopy hasDestinationApp])
  {
    destinationApp = [detailsCopy destinationApp];
    v8 = [destinationApp copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsDestinationApp:v8];
  }

  if ([detailsCopy hasRichProviderId])
  {
    richProviderId = [detailsCopy richProviderId];
    v10 = [richProviderId copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsRichProviderId:v10];
  }

  if ([detailsCopy hasSearchResponseRelativeTimestamp])
  {
    [detailsCopy searchResponseRelativeTimestamp];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp:?];
  }

  if ([detailsCopy hasLocalSearchProviderID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsLocalSearchProviderId:](self, "setPlaceCardPlaceActionDetailsLocalSearchProviderId:", [detailsCopy localSearchProviderID]);
  }

  if ([detailsCopy hasTransitPlaceCard])
  {
    transitPlaceCard = [detailsCopy transitPlaceCard];
    [(GEOAPSharedStateData *)self _populateWithGEOTransitPlaceCard:transitPlaceCard];
  }

  if ([detailsCopy hasShowcaseId])
  {
    showcaseId = [detailsCopy showcaseId];
    v13 = [showcaseId copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsShowcaseId:v13];
  }
}

uint64_t __47__GEOAPSharedStateData_clearPlaceCardStateData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaceCardState:0];
  [*(a1 + 32) clearPlaceCardPossibleActions];
  [*(a1 + 32) clearPlaceCardUnactionableUiElements];
  [*(a1 + 32) setHasPlaceCardPlaceCardType:0];
  [*(a1 + 32) setPlaceCardPlaceCardCategory:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsAnimationId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsBusinessId:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsDestinationApp:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsPhotoId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsPlaceId:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsRichProviderId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsTargetId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsLocalSearchProviderId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsResultIndex:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign:0];
  [*(a1 + 32) setPlaceCardIsPersonPlacecard:0];
  [*(a1 + 32) setPlaceCardIsPersonAddressAvailable:0];
  v2 = *(a1 + 32);

  return [v2 setPlaceCardIsPersonLocationShared:0];
}

- (void)_performSyncStateUpdateWithIsolator:(id)isolator updateBlock:(id)block
{
  blockCopy = block;
  isolatorCopy = isolator;
  geo_assert_not_isolated();
  geo_isolate_sync();
}

- (void)setCarPlayInfo:(id)info
{
  v13 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = infoCopy;
    _os_log_impl(&dword_1AB634000, v5, OS_LOG_TYPE_DEBUG, "setting carplay info : %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = GEOAPSharedStateData;
  [(GEOAnalyticsPipelineStateData *)&v10 setCarPlayInfo:infoCopy];
  if (self->_isMapsApp)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = infoCopy;
      _os_log_impl(&dword_1AB634000, v6, OS_LOG_TYPE_DEBUG, "Maps.app set carplay info : %@", buf, 0xCu);
    }

    v7 = +[GEOAPStateFactory sharedFactory];
    v8 = [v7 stateForType:5];

    v9 = +[GEOAPServiceManager sharedManager];
    [v9 updateSharedStateType:404 state:v8];
  }
}

- (void)_handleTaskTimer
{
  [(GEOAPSharedStateData *)self periodicSettingsHandler];

  [(GEOAPSharedStateData *)self _stopTaskTimer];
}

void __28__GEOAPSharedStateData_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTaskTimer];
}

@end