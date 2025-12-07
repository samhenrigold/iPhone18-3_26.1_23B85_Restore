@interface GEOPDClientMetadata
- (BOOL)enablePreflightVenues;
- (GEOAdditionalEnabledMarkets)additionalEnabledMarkets;
- (GEOLocation)deviceExtendedLocation;
- (GEOPDClientMetadata)init;
- (NSMutableArray)businessChatPreflightIdentifiers;
- (NSMutableArray)deviceHistoricalLocations;
- (int)requiredVersion;
- (int)resultListAttributionSupport;
- (unint64_t)hash;
- (void)_readAdditionalEnabledMarkets;
- (void)_readBusinessChatPreflightIdentifiers;
- (void)_readClientRevisions;
- (void)_readDeviceExtendedLocation;
- (void)_readDeviceHistoricalLocations;
- (void)_readSupportedElevationModels;
- (void)_readSupportedMapsResultTypes;
- (void)dealloc;
@end

@implementation GEOPDClientMetadata

- (void)_readClientRevisions
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 321) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readClientRevisions_tags_97135);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readSupportedElevationModels
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 322) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readSupportedElevationModels_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDClientMetadata;
  [(GEOPDClientMetadata *)&v3 dealloc];
}

- (void)_readSupportedMapsResultTypes
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 322) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readSupportedMapsResultTypes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (GEOLocation)deviceExtendedLocation
{
  [(GEOPDClientMetadata *)self _readDeviceExtendedLocation];
  deviceExtendedLocation = self->_deviceExtendedLocation;

  return deviceExtendedLocation;
}

- (void)_readDeviceExtendedLocation
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 323) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readDeviceExtendedLocation_tags_96769);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (NSMutableArray)deviceHistoricalLocations
{
  [(GEOPDClientMetadata *)self _readDeviceHistoricalLocations];
  deviceHistoricalLocations = self->_deviceHistoricalLocations;

  return deviceHistoricalLocations;
}

- (void)_readDeviceHistoricalLocations
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 323) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readDeviceHistoricalLocations_tags_96768);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (GEOPDClientMetadata)init
{
  v6.receiver = self;
  v6.super_class = GEOPDClientMetadata;
  v2 = [(GEOPDClientMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (unint64_t)hash
{
  [(GEOPDClientMetadata *)self readAll:1];
  v39 = [(NSString *)self->_deviceCountryCode hash];
  v38 = [(NSString *)self->_deviceDisplayLanguage hash];
  v37 = [(NSString *)self->_deviceKeyboardLanguage hash];
  v36 = [(NSString *)self->_deviceSpokenLanguage hash];
  if ((*&self->_flags & 0x40) != 0)
  {
    v35 = 2654435761 * self->_timeSinceMapEnteredForeground;
  }

  else
  {
    v35 = 0;
  }

  v34 = [(GEOAdditionalEnabledMarkets *)self->_additionalEnabledMarkets hash];
  flags = self->_flags;
  if ((*&flags & 0x20) == 0)
  {
    v33 = 0;
    if ((*&flags & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v32 = 0;
    if ((*&flags & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v33 = 2654435761 * self->_resultListAttributionSupport;
  if ((*&flags & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v32 = 2654435761 * self->_hourOfDay;
  if ((*&flags & 2) != 0)
  {
LABEL_7:
    v31 = 2654435761 * self->_dayOfWeek;
    goto LABEL_11;
  }

LABEL_10:
  v31 = 0;
LABEL_11:
  v30 = [(GEOLocation *)self->_deviceExtendedLocation hash];
  v29 = [(NSMutableArray *)self->_deviceHistoricalLocations hash];
  if ((*&self->_flags & 0x10) != 0)
  {
    v28 = 2654435761 * self->_requiredVersion;
  }

  else
  {
    v28 = 0;
  }

  v27 = [(NSString *)self->_debugApiKey hash];
  v26 = PBRepeatedInt32Hash();
  if ((*&self->_flags & 0x80) != 0)
  {
    v25 = 2654435761 * self->_enablePreflightVenues;
  }

  else
  {
    v25 = 0;
  }

  v24 = PBRepeatedInt32Hash();
  v23 = [(NSMutableArray *)self->_businessChatPreflightIdentifiers hash];
  if (*&self->_flags)
  {
    v22 = 2654435761 * self->_clientRevision;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(GEOLocalizationCapabilities *)self->_localizationCapabilities hash];
  v20 = [(NSString *)self->_deviceSku hash];
  if (*(&self->_flags + 1))
  {
    v19 = 2654435761 * self->_siriUserConsentsForAnalysis;
  }

  else
  {
    v19 = 0;
  }

  v4 = PBRepeatedInt32Hash();
  v5 = [(GEOPDMapsSuggestionsTouristInfo *)self->_mapsSuggestionsTouristInfo hash];
  v6 = PBRepeatedInt32Hash();
  v7 = [(NSString *)self->_preferredDisplayCurrencySymbol hash];
  v8 = [(NSString *)self->_displayRegion hash];
  v9 = self->_flags;
  if ((*&v9 & 0x200) != 0)
  {
    v10 = 2654435761 * self->_supportEnrichment;
    if ((*&v9 & 8) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if ((*&v9 & 8) != 0)
    {
LABEL_25:
      v11 = 2654435761 * self->_preferredDistanceUnit;
      goto LABEL_28;
    }
  }

  v11 = 0;
LABEL_28:
  v12 = PBRepeatedInt32Hash();
  v13 = self->_flags;
  if ((*&v13 & 0x400) != 0)
  {
    v14 = 2654435761 * self->_supportExpertPartner;
    if ((*&v13 & 0x800) != 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  v14 = 0;
  if ((*&v13 & 0x800) == 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  v15 = 2654435761 * self->_supportHikeDisclaimer;
LABEL_33:
  v16 = v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14;
  v17 = v15 ^ [(GEOABSecondPartyPlaceRequestClientMetaData *)self->_abClientMetadata hash];
  return v16 ^ v17 ^ [(GEOABBranchInfo *)self->_abBranchInfo hash];
}

- (GEOAdditionalEnabledMarkets)additionalEnabledMarkets
{
  [(GEOPDClientMetadata *)self _readAdditionalEnabledMarkets];
  additionalEnabledMarkets = self->_additionalEnabledMarkets;

  return additionalEnabledMarkets;
}

- (void)_readAdditionalEnabledMarkets
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 322) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readAdditionalEnabledMarkets_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (int)requiredVersion
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x10) != 0)
  {
    return self->_requiredVersion;
  }

  else
  {
    return 1;
  }
}

- (int)resultListAttributionSupport
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x20) != 0)
  {
    return self->_resultListAttributionSupport;
  }

  else
  {
    return 0;
  }
}

- (BOOL)enablePreflightVenues
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  return (*&flags & 0x80) != 0 && self->_enablePreflightVenues;
}

- (NSMutableArray)businessChatPreflightIdentifiers
{
  [(GEOPDClientMetadata *)self _readBusinessChatPreflightIdentifiers];
  businessChatPreflightIdentifiers = self->_businessChatPreflightIdentifiers;

  return businessChatPreflightIdentifiers;
}

- (void)_readBusinessChatPreflightIdentifiers
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 322) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDClientMetadataReadSpecified(self, *(self + 8), &_readBusinessChatPreflightIdentifiers_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

@end