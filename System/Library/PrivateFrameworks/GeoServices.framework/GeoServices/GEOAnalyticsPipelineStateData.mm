@interface GEOAnalyticsPipelineStateData
- (BOOL)mapUiShownAqiShown;
- (BOOL)mapUiShownWeatherShown;
- (BOOL)venueExperienceShown;
- (GEOAnalyticsPipelineStateData)init;
- (GEOCarInfo)carPlayInfo;
- (GEOLogMsgStatePlaceCard)placeCardState;
- (GEOMapRegion)mapViewMapRegion;
- (NSMutableArray)mapsServerMetadataSuggestionEntryDisplayeds;
- (NSMutableArray)suggestionsDisplayedResults;
- (NSString)deviceInputLocale;
- (NSString)deviceOutputLocale;
- (int)mapSettingsCyclingVoiceSettings;
- (int)mapSettingsDrivingVoiceSettings;
- (int)mapSettingsLocationPrecisionType;
- (int)mapSettingsTransportMode;
- (int)mapSettingsWalkingVoiceSettings;
- (int)mapUiLayoutInfo;
- (int)mapUiLayoutStyle;
- (int)mapUiShownActiveNavMode;
- (int)mapViewMapType;
- (int)mapViewViewMode;
- (int)windowSize;
- (void)_readCarPlayInfo;
- (void)_readDeviceInputLocale;
- (void)_readDeviceOutputLocale;
- (void)_readMapLaunchLaunchUri;
- (void)_readMapLaunchReferringWebsite;
- (void)_readMapLaunchSourceAppId;
- (void)_readMapLaunchSourceHandoffDevice;
- (void)_readMapViewMapRegion;
- (void)_readMapsServerMetadata;
- (void)_readMapsServerMetadataSuggestionEntryDisplayeds;
- (void)_readMapsServerMetadataSuggestionEntryTappedOn;
- (void)_readPlaceCardPlaceActionDetailsActionUrl;
- (void)_readPlaceCardPlaceActionDetailsDestinationApp;
- (void)_readPlaceCardPlaceActionDetailsPhotoId;
- (void)_readPlaceCardPlaceActionDetailsRichProviderId;
- (void)_readPlaceCardPlaceActionDetailsShowcaseId;
- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType;
- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection;
- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign;
- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName;
- (void)_readPlaceCardPlaceCardCategory;
- (void)_readPlaceCardPossibleActions;
- (void)_readPlaceCardState;
- (void)_readPlaceCardUnactionableUiElements;
- (void)_readRouteRouteDetails;
- (void)_readSuggestionsDisplayedResults;
- (void)_readSuggestionsSearchString;
@end

@implementation GEOAnalyticsPipelineStateData

- (GEOAnalyticsPipelineStateData)init
{
  v6.receiver = self;
  v6.super_class = GEOAnalyticsPipelineStateData;
  v2 = [(GEOAnalyticsPipelineStateData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readMapLaunchSourceAppId
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 750) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapLaunchSourceAppId_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readDeviceOutputLocale
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 750) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readDeviceOutputLocale_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readMapLaunchLaunchUri
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 750) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapLaunchLaunchUri_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readMapLaunchReferringWebsite
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 750) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapLaunchReferringWebsite_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readMapLaunchSourceHandoffDevice
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 750) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapLaunchSourceHandoffDevice_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (int)mapSettingsLocationPrecisionType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x40000000) != 0)
  {
    return self->_mapSettingsLocationPrecisionType;
  }

  else
  {
    return 0;
  }
}

- (BOOL)mapUiShownAqiShown
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_flags + 1);
  os_unfair_lock_unlock(&self->_readerLock);
  return (v3 & 0x2000000) != 0 && self->_mapUiShownAqiShown;
}

- (BOOL)mapUiShownWeatherShown
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_flags + 1);
  os_unfair_lock_unlock(&self->_readerLock);
  return (v3 & 0x4000000) != 0 && self->_mapUiShownWeatherShown;
}

- (int)mapViewMapType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x20000000000) != 0)
  {
    return self->_mapViewMapType;
  }

  else
  {
    return 0;
  }
}

- (GEOMapRegion)mapViewMapRegion
{
  [(GEOAnalyticsPipelineStateData *)self _readMapViewMapRegion];
  mapViewMapRegion = self->_mapViewMapRegion;

  return mapViewMapRegion;
}

- (void)_readMapViewMapRegion
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 750) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapViewMapRegion_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readCarPlayInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 749) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readCarPlayInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (GEOCarInfo)carPlayInfo
{
  [(GEOAnalyticsPipelineStateData *)self _readCarPlayInfo];
  carPlayInfo = self->_carPlayInfo;

  return carPlayInfo;
}

- (NSString)deviceInputLocale
{
  [(GEOAnalyticsPipelineStateData *)self _readDeviceInputLocale];
  deviceInputLocale = self->_deviceInputLocale;

  return deviceInputLocale;
}

- (void)_readDeviceInputLocale
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 749) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readDeviceInputLocale_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (NSString)deviceOutputLocale
{
  [(GEOAnalyticsPipelineStateData *)self _readDeviceOutputLocale];
  deviceOutputLocale = self->_deviceOutputLocale;

  return deviceOutputLocale;
}

- (BOOL)venueExperienceShown
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_flags + 1);
  os_unfair_lock_unlock(&self->_readerLock);
  return (v3 & 0x10000000000) != 0 && self->_venueExperienceShown;
}

- (void)_readPlaceCardPossibleActions
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 749) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPossibleActions_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardUnactionableUiElements
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 749) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardUnactionableUiElements_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsDestinationApp
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 744) & 0x8000000000000000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsDestinationApp_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsRichProviderId
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsRichProviderId_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readMapsServerMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 751) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapsServerMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readMapsServerMetadataSuggestionEntryTappedOn
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 751) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapsServerMetadataSuggestionEntryTappedOn_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (NSMutableArray)mapsServerMetadataSuggestionEntryDisplayeds
{
  [(GEOAnalyticsPipelineStateData *)self _readMapsServerMetadataSuggestionEntryDisplayeds];
  mapsServerMetadataSuggestionEntryDisplayeds = self->_mapsServerMetadataSuggestionEntryDisplayeds;

  return mapsServerMetadataSuggestionEntryDisplayeds;
}

- (void)_readMapsServerMetadataSuggestionEntryDisplayeds
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 751) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readMapsServerMetadataSuggestionEntryDisplayeds_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceCardCategory
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceCardCategory_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsActionUrl
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 751) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsActionUrl_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsPhotoId
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsPhotoId_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsShowcaseId
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsShowcaseId_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 752) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readPlaceCardState
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 753) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readPlaceCardState_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readRouteRouteDetails
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 753) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readRouteRouteDetails_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (void)_readSuggestionsSearchString
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 754) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readSuggestionsSearchString_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (NSMutableArray)suggestionsDisplayedResults
{
  [(GEOAnalyticsPipelineStateData *)self _readSuggestionsDisplayedResults];
  suggestionsDisplayedResults = self->_suggestionsDisplayedResults;

  return suggestionsDisplayedResults;
}

- (void)_readSuggestionsDisplayedResults
{
  if (self)
  {
    os_unfair_lock_lock((self + 520));
    if ((*(self + 753) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAnalyticsPipelineStateDataReadSpecified(self, *(self + 8), &_readSuggestionsDisplayedResults_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 520));
  }
}

- (int)mapUiLayoutInfo
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x1000000000) != 0)
  {
    return self->_mapUiLayoutInfo;
  }

  else
  {
    return 0;
  }
}

- (int)mapSettingsDrivingVoiceSettings
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x20000000) != 0)
  {
    return self->_mapSettingsDrivingVoiceSettings;
  }

  else
  {
    return 0;
  }
}

- (int)mapSettingsCyclingVoiceSettings
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x10000000) != 0)
  {
    return self->_mapSettingsCyclingVoiceSettings;
  }

  else
  {
    return 0;
  }
}

- (int)mapUiLayoutStyle
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x2000000000) != 0)
  {
    return self->_mapUiLayoutStyle;
  }

  else
  {
    return 0;
  }
}

- (int)windowSize
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x20000000000000) != 0)
  {
    return self->_windowSize;
  }

  else
  {
    return 0;
  }
}

- (int)mapSettingsTransportMode
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x100000000) != 0)
  {
    return self->_mapSettingsTransportMode;
  }

  else
  {
    return 0;
  }
}

- (int)mapSettingsWalkingVoiceSettings
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x400000000) != 0)
  {
    return self->_mapSettingsWalkingVoiceSettings;
  }

  else
  {
    return 0;
  }
}

- (int)mapUiShownActiveNavMode
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x10000000000) != 0)
  {
    return self->_mapUiShownActiveNavMode;
  }

  else
  {
    return 0;
  }
}

- (int)mapViewViewMode
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x40000000000) != 0)
  {
    return self->_mapViewViewMode;
  }

  else
  {
    return 0;
  }
}

- (GEOLogMsgStatePlaceCard)placeCardState
{
  [(GEOAnalyticsPipelineStateData *)self _readPlaceCardState];
  placeCardState = self->_placeCardState;

  return placeCardState;
}

@end