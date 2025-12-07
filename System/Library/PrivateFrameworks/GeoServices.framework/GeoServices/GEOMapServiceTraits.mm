@interface GEOMapServiceTraits
- (GEOAddStopRouteInfo)addStopRouteInfo;
- (GEOAutomobileOptions)automobileOptions;
- (GEOCyclingOptions)cyclingOptions;
- (GEOLatLng)autocompleteOriginationPreviousLatlng;
- (GEOLatLng)searchOriginationPreviousLatlng;
- (GEOLocation)deviceLocation;
- (GEOMapRegion)mapRegion;
- (GEOMapServiceTraits)init;
- (GEOPDAutocompleteSessionData)recentAutocompleteSessionData;
- (GEOPDResultRefinementQuery)resultRefinementQuery;
- (GEOPDSSessionUserActionMetadata)userActionMetadata;
- (GEOPDVenueIdentifier)venueIdentifier;
- (GEOPDViewportInfo)previousSearchViewport;
- (GEOPrivacyMetadata)privacyMetadata;
- (GEOSearchImplicitFilterInfo)searchImplicitFilterInfo;
- (GEOTraitsTransitScheduleFilter)transitScheduleFilter;
- (GEOTraitsTransitScheduleFilter)transitTripStopTimeFilter;
- (GEOTransitOptions)transitOptions;
- (GEOWalkingOptions)walkingOptions;
- (NSMutableArray)deviceDisplayLanguages;
- (NSMutableArray)evChargingPorts;
- (NSMutableArray)historicalLocations;
- (NSMutableArray)photoSizes;
- (NSMutableArray)reviewUserPhotoSizes;
- (NSString)analyticsAppIdentifier;
- (NSString)appIdentifier;
- (NSString)appMajorVersion;
- (NSString)appMinorVersion;
- (NSString)carHeadunitManufacturer;
- (NSString)carHeadunitModel;
- (NSString)currentLocaleCurrencySymbol;
- (NSString)deviceKeyboardLocale;
- (NSString)deviceSpokenLocale;
- (NSString)displayRegion;
- (NSString)hardwareIdentifier;
- (NSString)providerID;
- (NSString)spotlightSearchPunchinEncodedString;
- (id)description;
- (int)devicePlatform;
- (int)mode;
- (int)requestMode;
- (int)requestPriority;
- (int)requestPurpose;
- (int)searchOriginationType;
- (unint64_t)deviceDisplayLanguagesCount;
- (void)_readAddStopRouteInfo;
- (void)_readAnalyticsAppIdentifier;
- (void)_readAppIdentifier;
- (void)_readAppMajorVersion;
- (void)_readAppMinorVersion;
- (void)_readAutocompleteOriginationPreviousLatlng;
- (void)_readAutomobileOptions;
- (void)_readCarHeadunitManufacturer;
- (void)_readCarHeadunitModel;
- (void)_readCurrentLocaleCurrencySymbol;
- (void)_readCyclingOptions;
- (void)_readDeviceDisplayLanguages;
- (void)_readDeviceKeyboardLocale;
- (void)_readDeviceLocation;
- (void)_readDeviceSpokenLocale;
- (void)_readDisplayRegion;
- (void)_readEngineTypes;
- (void)_readEvChargingPorts;
- (void)_readHardwareIdentifier;
- (void)_readHistoricalLocations;
- (void)_readKnownClientResolvedTypes;
- (void)_readMapRegion;
- (void)_readPhotoSizes;
- (void)_readPreferredBrands;
- (void)_readPreviousSearchViewport;
- (void)_readPrivacyMetadata;
- (void)_readProviderID;
- (void)_readRecentAutocompleteSessionData;
- (void)_readResultRefinementQuery;
- (void)_readReviewUserPhotoSizes;
- (void)_readSearchImplicitFilterInfo;
- (void)_readSearchOriginationPreviousLatlng;
- (void)_readSpotlightSearchPunchinEncodedString;
- (void)_readSupportedAutocompleteListTypes;
- (void)_readSupportedChildActions;
- (void)_readTransitOptions;
- (void)_readTransitScheduleFilter;
- (void)_readTransitTripStopTimeFilter;
- (void)_readTransportTypes;
- (void)_readUserActionMetadata;
- (void)_readVenueIdentifier;
- (void)_readWalkingOptions;
- (void)clearDeviceDisplayLanguages;
- (void)clearEngineTypes;
- (void)clearEvChargingPorts;
- (void)clearPreferredBrands;
- (void)dealloc;
@end

@implementation GEOMapServiceTraits

- (NSMutableArray)photoSizes
{
  [(GEOMapServiceTraits *)self _readPhotoSizes];
  photoSizes = self->_photoSizes;

  return photoSizes;
}

- (NSMutableArray)reviewUserPhotoSizes
{
  [(GEOMapServiceTraits *)self _readReviewUserPhotoSizes];
  reviewUserPhotoSizes = self->_reviewUserPhotoSizes;

  return reviewUserPhotoSizes;
}

- (void)_readReviewUserPhotoSizes
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readReviewUserPhotoSizes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readTransitScheduleFilter
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 769) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readTransitScheduleFilter_tags_111631);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOTraitsTransitScheduleFilter)transitScheduleFilter
{
  [(GEOMapServiceTraits *)self _readTransitScheduleFilter];
  transitScheduleFilter = self->_transitScheduleFilter;

  return transitScheduleFilter;
}

- (void)_readPhotoSizes
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readPhotoSizes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOMapServiceTraits)init
{
  v6.receiver = self;
  v6.super_class = GEOMapServiceTraits;
  v2 = [(GEOMapServiceTraits *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readDeviceDisplayLanguages
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readDeviceDisplayLanguages_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readSupportedAutocompleteListTypes
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 764) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readSupportedAutocompleteListTypes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (unint64_t)deviceDisplayLanguagesCount
{
  [(GEOMapServiceTraits *)self _readDeviceDisplayLanguages];
  deviceDisplayLanguages = self->_deviceDisplayLanguages;

  return [(NSMutableArray *)deviceDisplayLanguages count];
}

- (void)_readDeviceKeyboardLocale
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readDeviceKeyboardLocale_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readDisplayRegion
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readDisplayRegion_tags_111630);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (NSString)displayRegion
{
  [(GEOMapServiceTraits *)self _readDisplayRegion];
  displayRegion = self->_displayRegion;

  return displayRegion;
}

- (GEOLocation)deviceLocation
{
  [(GEOMapServiceTraits *)self _readDeviceLocation];
  deviceLocation = self->_deviceLocation;

  return deviceLocation;
}

- (NSMutableArray)deviceDisplayLanguages
{
  [(GEOMapServiceTraits *)self _readDeviceDisplayLanguages];
  deviceDisplayLanguages = self->_deviceDisplayLanguages;

  return deviceDisplayLanguages;
}

- (void)_readDeviceLocation
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readDeviceLocation_tags_110699);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readDeviceSpokenLocale
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readDeviceSpokenLocale_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readKnownClientResolvedTypes
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 764) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readKnownClientResolvedTypes_tags_111625);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readCurrentLocaleCurrencySymbol
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readCurrentLocaleCurrencySymbol_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readAppIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAppIdentifier_tags_111635);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readAppMinorVersion
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAppMinorVersion_tags_111633);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (NSString)appMinorVersion
{
  [(GEOMapServiceTraits *)self _readAppMinorVersion];
  appMinorVersion = self->_appMinorVersion;

  return appMinorVersion;
}

- (void)clearDeviceDisplayLanguages
{
  os_unfair_lock_lock_with_options();
  *(&self->_flags + 1) |= 0x200000uLL;
  os_unfair_lock_unlock(&self->_readerLock);
  *(&self->_flags + 1) |= 0x200000000000uLL;
  deviceDisplayLanguages = self->_deviceDisplayLanguages;

  [(NSMutableArray *)deviceDisplayLanguages removeAllObjects];
}

- (NSString)appIdentifier
{
  [(GEOMapServiceTraits *)self _readAppIdentifier];
  appIdentifier = self->_appIdentifier;

  return appIdentifier;
}

- (NSString)appMajorVersion
{
  [(GEOMapServiceTraits *)self _readAppMajorVersion];
  appMajorVersion = self->_appMajorVersion;

  return appMajorVersion;
}

- (void)_readAppMajorVersion
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAppMajorVersion_tags_111634);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readHardwareIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readHardwareIdentifier_tags_111612);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = GEOMapServiceTraits;
  [(GEOMapServiceTraits *)&v3 dealloc];
}

- (NSMutableArray)historicalLocations
{
  [(GEOMapServiceTraits *)self _readHistoricalLocations];
  historicalLocations = self->_historicalLocations;

  return historicalLocations;
}

- (void)_readHistoricalLocations
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readHistoricalLocations_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readSupportedChildActions
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 764) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readSupportedChildActions_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (int)requestPurpose
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x800000) != 0)
  {
    return self->_requestPurpose;
  }

  else
  {
    return 0;
  }
}

- (int)requestPriority
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x400000) != 0)
  {
    return self->_requestPriority;
  }

  else
  {
    return 0;
  }
}

- (int)requestMode
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x200000) != 0)
  {
    return self->_requestMode;
  }

  else
  {
    return 0;
  }
}

- (NSString)hardwareIdentifier
{
  [(GEOMapServiceTraits *)self _readHardwareIdentifier];
  hardwareIdentifier = self->_hardwareIdentifier;

  return hardwareIdentifier;
}

- (void)_readTransportTypes
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readTransportTypes_tags_111632);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)clearEvChargingPorts
{
  os_unfair_lock_lock_with_options();
  *(&self->_flags + 1) |= 0x2000000uLL;
  os_unfair_lock_unlock(&self->_readerLock);
  *(&self->_flags + 1) |= 0x200000000000uLL;
  evChargingPorts = self->_evChargingPorts;

  [(NSMutableArray *)evChargingPorts removeAllObjects];
}

- (void)clearPreferredBrands
{
  os_unfair_lock_lock_with_options();
  *(&self->_flags + 1) |= 4uLL;
  os_unfair_lock_unlock(&self->_readerLock);
  *(&self->_flags + 1) |= 0x200000000000uLL;

  PBRepeatedUInt64Clear();
}

- (int)searchOriginationType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x8000000) != 0)
  {
    return self->_searchOriginationType;
  }

  else
  {
    return 0;
  }
}

- (NSString)deviceKeyboardLocale
{
  [(GEOMapServiceTraits *)self _readDeviceKeyboardLocale];
  deviceKeyboardLocale = self->_deviceKeyboardLocale;

  return deviceKeyboardLocale;
}

- (NSString)deviceSpokenLocale
{
  [(GEOMapServiceTraits *)self _readDeviceSpokenLocale];
  deviceSpokenLocale = self->_deviceSpokenLocale;

  return deviceSpokenLocale;
}

- (NSString)currentLocaleCurrencySymbol
{
  [(GEOMapServiceTraits *)self _readCurrentLocaleCurrencySymbol];
  currentLocaleCurrencySymbol = self->_currentLocaleCurrencySymbol;

  return currentLocaleCurrencySymbol;
}

- (void)_readEngineTypes
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 756) & 0x8000000000000000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readEngineTypes_tags_111626);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (int)mode
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x4000) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (GEOMapRegion)mapRegion
{
  [(GEOMapServiceTraits *)self _readMapRegion];
  mapRegion = self->_mapRegion;

  return mapRegion;
}

- (void)_readMapRegion
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readMapRegion_tags_110698);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)clearEngineTypes
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x8000000000000000;
  os_unfair_lock_unlock(&self->_readerLock);
  *(&self->_flags + 1) |= 0x200000000000uLL;

  PBRepeatedInt32Clear();
}

- (void)_readEvChargingPorts
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readEvChargingPorts_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (void)_readPreferredBrands
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 764) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readPreferredBrands_tags_111616);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (int)devicePlatform
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x1000) != 0)
  {
    return self->_devicePlatform;
  }

  else
  {
    return 0;
  }
}

- (NSMutableArray)evChargingPorts
{
  [(GEOMapServiceTraits *)self _readEvChargingPorts];
  evChargingPorts = self->_evChargingPorts;

  return evChargingPorts;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = GEOMapServiceTraits;
  v4 = [(GEOMapServiceTraits *)&v8 description];
  dictionaryRepresentation = [(GEOMapServiceTraits *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)carHeadunitManufacturer
{
  [(GEOMapServiceTraits *)self _readCarHeadunitManufacturer];
  carHeadunitManufacturer = self->_carHeadunitManufacturer;

  return carHeadunitManufacturer;
}

- (void)_readCarHeadunitManufacturer
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readCarHeadunitManufacturer_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (NSString)carHeadunitModel
{
  [(GEOMapServiceTraits *)self _readCarHeadunitModel];
  carHeadunitModel = self->_carHeadunitModel;

  return carHeadunitModel;
}

- (void)_readCarHeadunitModel
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readCarHeadunitModel_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (NSString)providerID
{
  [(GEOMapServiceTraits *)self _readProviderID];
  providerID = self->_providerID;

  return providerID;
}

- (void)_readProviderID
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readProviderID_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOAutomobileOptions)automobileOptions
{
  [(GEOMapServiceTraits *)self _readAutomobileOptions];
  automobileOptions = self->_automobileOptions;

  return automobileOptions;
}

- (void)_readAutomobileOptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAutomobileOptions_tags_111629);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOTransitOptions)transitOptions
{
  [(GEOMapServiceTraits *)self _readTransitOptions];
  transitOptions = self->_transitOptions;

  return transitOptions;
}

- (void)_readTransitOptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readTransitOptions_tags_111628);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOWalkingOptions)walkingOptions
{
  [(GEOMapServiceTraits *)self _readWalkingOptions];
  walkingOptions = self->_walkingOptions;

  return walkingOptions;
}

- (void)_readWalkingOptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 769) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readWalkingOptions_tags_111627);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOPDVenueIdentifier)venueIdentifier
{
  [(GEOMapServiceTraits *)self _readVenueIdentifier];
  venueIdentifier = self->_venueIdentifier;

  return venueIdentifier;
}

- (void)_readVenueIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 769) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readVenueIdentifier_tags_111624);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (NSString)analyticsAppIdentifier
{
  [(GEOMapServiceTraits *)self _readAnalyticsAppIdentifier];
  analyticsAppIdentifier = self->_analyticsAppIdentifier;

  return analyticsAppIdentifier;
}

- (void)_readAnalyticsAppIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAnalyticsAppIdentifier_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOTraitsTransitScheduleFilter)transitTripStopTimeFilter
{
  [(GEOMapServiceTraits *)self _readTransitTripStopTimeFilter];
  transitTripStopTimeFilter = self->_transitTripStopTimeFilter;

  return transitTripStopTimeFilter;
}

- (void)_readTransitTripStopTimeFilter
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 769) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readTransitTripStopTimeFilter_tags_111623);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOCyclingOptions)cyclingOptions
{
  [(GEOMapServiceTraits *)self _readCyclingOptions];
  cyclingOptions = self->_cyclingOptions;

  return cyclingOptions;
}

- (void)_readCyclingOptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 766) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readCyclingOptions_tags_111621);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOPDViewportInfo)previousSearchViewport
{
  [(GEOMapServiceTraits *)self _readPreviousSearchViewport];
  previousSearchViewport = self->_previousSearchViewport;

  return previousSearchViewport;
}

- (void)_readPreviousSearchViewport
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readPreviousSearchViewport_tags_110697);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOPDResultRefinementQuery)resultRefinementQuery
{
  [(GEOMapServiceTraits *)self _readResultRefinementQuery];
  resultRefinementQuery = self->_resultRefinementQuery;

  return resultRefinementQuery;
}

- (void)_readResultRefinementQuery
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readResultRefinementQuery_tags_110696);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOLatLng)autocompleteOriginationPreviousLatlng
{
  [(GEOMapServiceTraits *)self _readAutocompleteOriginationPreviousLatlng];
  autocompleteOriginationPreviousLatlng = self->_autocompleteOriginationPreviousLatlng;

  return autocompleteOriginationPreviousLatlng;
}

- (void)_readAutocompleteOriginationPreviousLatlng
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAutocompleteOriginationPreviousLatlng_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOLatLng)searchOriginationPreviousLatlng
{
  [(GEOMapServiceTraits *)self _readSearchOriginationPreviousLatlng];
  searchOriginationPreviousLatlng = self->_searchOriginationPreviousLatlng;

  return searchOriginationPreviousLatlng;
}

- (void)_readSearchOriginationPreviousLatlng
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readSearchOriginationPreviousLatlng_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOAddStopRouteInfo)addStopRouteInfo
{
  [(GEOMapServiceTraits *)self _readAddStopRouteInfo];
  addStopRouteInfo = self->_addStopRouteInfo;

  return addStopRouteInfo;
}

- (void)_readAddStopRouteInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 765) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readAddStopRouteInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOPrivacyMetadata)privacyMetadata
{
  [(GEOMapServiceTraits *)self _readPrivacyMetadata];
  privacyMetadata = self->_privacyMetadata;

  return privacyMetadata;
}

- (void)_readPrivacyMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 767) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readPrivacyMetadata_tags_111617);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOSearchImplicitFilterInfo)searchImplicitFilterInfo
{
  [(GEOMapServiceTraits *)self _readSearchImplicitFilterInfo];
  searchImplicitFilterInfo = self->_searchImplicitFilterInfo;

  return searchImplicitFilterInfo;
}

- (void)_readSearchImplicitFilterInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readSearchImplicitFilterInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (NSString)spotlightSearchPunchinEncodedString
{
  [(GEOMapServiceTraits *)self _readSpotlightSearchPunchinEncodedString];
  spotlightSearchPunchinEncodedString = self->_spotlightSearchPunchinEncodedString;

  return spotlightSearchPunchinEncodedString;
}

- (void)_readSpotlightSearchPunchinEncodedString
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readSpotlightSearchPunchinEncodedString_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOPDAutocompleteSessionData)recentAutocompleteSessionData
{
  [(GEOMapServiceTraits *)self _readRecentAutocompleteSessionData];
  recentAutocompleteSessionData = self->_recentAutocompleteSessionData;

  return recentAutocompleteSessionData;
}

- (void)_readRecentAutocompleteSessionData
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 768) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readRecentAutocompleteSessionData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

- (GEOPDSSessionUserActionMetadata)userActionMetadata
{
  [(GEOMapServiceTraits *)self _readUserActionMetadata];
  userActionMetadata = self->_userActionMetadata;

  return userActionMetadata;
}

- (void)_readUserActionMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 616));
    if ((*(self + 769) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapServiceTraitsReadSpecified(self, *(self + 8), &_readUserActionMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 616));
  }
}

@end