@interface GEOMapItemStorage
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)_hasAreaHighlightId;
- (BOOL)_hasMUID;
- (BOOL)_hasResolvablePartialInformation;
- (BOOL)_hasResultProviderID;
- (BOOL)_hasTransit;
- (BOOL)_hasVenueFeatureType;
- (BOOL)contactIsMe;
- (BOOL)hasExpiredComponents;
- (GEOEnhancedPlacement)_enhancedPlacement;
- (GEOFeatureStyleAttributes)_styleAttributes;
- (GEOLabelGeometry)_labelGeometry;
- (GEOMapItemClientAttributes)clientAttributes;
- (GEOMapItemStorage)init;
- (GEOMapItemStorageUserValues)userValues;
- (GEOMapItemVenueInfo)_venueInfo;
- (GEOMapRegion)geoFenceMapRegion;
- (GEOPDPlace)_placeData;
- (GEOPDPlace)placeData;
- (GEOPDResultDetourInfo)internalDetourInfo;
- (GEOPlace)_place;
- (GEOPlace)place;
- (GEOPlaceResult)_placeResult;
- (NSArray)_photos;
- (NSArray)areasOfInterest;
- (NSDictionary)addressDictionary;
- (NSMutableArray)additionalPlaceDatas;
- (NSString)_poiCategory;
- (NSString)contactName;
- (NSString)name;
- (NSTimeZone)timezone;
- (id)_geoMapItemCreatingAndAssociatingIfNeeded;
- (id)addressObject;
- (id)shortAddress;
- (int)_placeDisplayType;
- (int)_placeType;
- (int)_resultProviderID;
- (int)_venueFeatureType;
- (int)contactAddressType;
- (unint64_t)_customIconID;
- (unint64_t)_muid;
- (unint64_t)hash;
- (void)_readAdditionalPlaceDatas;
- (void)_readClientAttributes;
- (void)_readInternalDetourInfo;
- (void)_readPlace;
- (void)_readPlaceData;
- (void)_readPlaceResult;
- (void)_readUserValues;
- (void)initAdditionalFields;
@end

@implementation GEOMapItemStorage

- (void)_readPlaceResult
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 0x80) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readPlaceResult_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (GEOPlace)place
{
  [(GEOMapItemStorage *)self _readPlace];
  place = self->_place;

  return place;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  clientAttributes = [(GEOMapItemStorage *)self clientAttributes];
  if (([clientAttributes hasCorrectedLocationAttributes] & 1) == 0)
  {

    goto LABEL_5;
  }

  clientAttributes2 = [(GEOMapItemStorage *)self clientAttributes];
  correctedLocationAttributes = [clientAttributes2 correctedLocationAttributes];
  hasCorrectedCoordinate = [correctedLocationAttributes hasCorrectedCoordinate];

  if (!hasCorrectedCoordinate)
  {
LABEL_5:
    _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
    [_geoMapItem coordinate];
    v11 = v14;
    v13 = v15;
    goto LABEL_6;
  }

  _geoMapItem = [(GEOMapItemStorage *)self clientAttributes];
  correctedLocationAttributes2 = [_geoMapItem correctedLocationAttributes];
  correctedCoordinate = [correctedLocationAttributes2 correctedCoordinate];
  [correctedCoordinate coordinate];
  v11 = v10;
  v13 = v12;

LABEL_6:
  v16 = v11;
  v17 = v13;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (id)_geoMapItemCreatingAndAssociatingIfNeeded
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__87047;
  v8 = __Block_byref_object_dispose__87048;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __74__GEOMapItemStorage_GEOMapItem___geoMapItemCreatingAndAssociatingIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    if ([v2 hasPlaceData])
    {
      v4 = [_GEOPlaceDataItem alloc];
      v5 = [*(a1 + 32) placeData];
      v6 = [*(a1 + 32) internalDetourInfo];
      v7 = [*(a1 + 32) additionalPlaceDatas];
      v8 = [(_GEOPlaceDataItem *)v4 initWithPlaceData:v5 detourInfo:v6 additionalPlaceDatas:v7];
      v9 = *(a1 + 32);
      v10 = *(v9 + 16);
      *(v9 + 16) = v8;

LABEL_10:
      goto LABEL_11;
    }

    v11 = [*(a1 + 32) hasPlaceResult];
    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = [v12 placeResult];
    }

    else
    {
      v14 = [v12 hasPlace];
      v15 = *(a1 + 32);
      if (!v14)
      {
        if (![v15 hasMapsURL])
        {
LABEL_11:
          if (*(*(a1 + 32) + 16))
          {
            v18 = [[_GEOMapItemStorageNotificationTrampoline alloc] initWithMapItem:*(*(a1 + 32) + 16) mapItemStorage:?];
            v19 = *(a1 + 32);
            v20 = *(v19 + 8);
            *(v19 + 8) = v18;

            v3 = *(*(a1 + 32) + 16);
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_14;
        }

        v22 = MEMORY[0x1E695DFF8];
        v23 = [*(a1 + 32) mapsURL];
        v5 = [v22 URLWithString:v23];

        v16 = [[GEOURLBackedMapItem alloc] initWithURL:v5];
        goto LABEL_9;
      }

      v13 = [v15 place];
    }

    v5 = v13;
    v16 = [v13 geoMapItem];
LABEL_9:
    v17 = *(a1 + 32);
    v6 = *(v17 + 16);
    *(v17 + 16) = v16;
    goto LABEL_10;
  }

LABEL_14:
  v21 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v21, v3);
}

- (void)_readPlaceData
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 0x40) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readPlaceData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (GEOMapItemClientAttributes)clientAttributes
{
  [(GEOMapItemStorage *)self _readClientAttributes];
  clientAttributes = self->_clientAttributes;

  return clientAttributes;
}

- (void)_readClientAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 4) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readClientAttributes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (GEOMapItemStorageUserValues)userValues
{
  [(GEOMapItemStorage *)self _readUserValues];
  userValues = self->_userValues;

  return userValues;
}

- (void)_readUserValues
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 0x200) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readUserValues_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (void)initAdditionalFields
{
  v3 = geo_isolater_create();
  geoMapItemIsolater = self->_geoMapItemIsolater;
  self->_geoMapItemIsolater = v3;
}

- (GEOMapItemStorage)init
{
  v6.receiver = self;
  v6.super_class = GEOMapItemStorage;
  v2 = [(GEOMapItemStorage *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    [(GEOMapItemStorage *)v2 initAdditionalFields];
    v4 = v3;
  }

  return v3;
}

- (GEOMapRegion)geoFenceMapRegion
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  geoFenceMapRegion = [_geoMapItem geoFenceMapRegion];

  return geoFenceMapRegion;
}

- (void)_readPlace
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 0x100) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readPlace_tags_109891);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (NSDictionary)addressDictionary
{
  clientAttributes = [(GEOMapItemStorage *)self clientAttributes];
  if ([clientAttributes hasCorrectedLocationAttributes])
  {
    clientAttributes2 = [(GEOMapItemStorage *)self clientAttributes];
    correctedLocationAttributes = [clientAttributes2 correctedLocationAttributes];
    hasCorrectedAddress = [correctedLocationAttributes hasCorrectedAddress];

    if (hasCorrectedAddress)
    {
      clientAttributes3 = [(GEOMapItemStorage *)self clientAttributes];
      correctedLocationAttributes2 = [clientAttributes3 correctedLocationAttributes];
      correctedAddress = [correctedLocationAttributes2 correctedAddress];
      addressDictionary = [correctedAddress addressDictionary];

      goto LABEL_6;
    }
  }

  else
  {
  }

  clientAttributes3 = [(GEOMapItemStorage *)self _geoMapItem];
  addressDictionary = [clientAttributes3 addressDictionary];
LABEL_6:

  return addressDictionary;
}

- (NSArray)areasOfInterest
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  areasOfInterest = [_geoMapItem areasOfInterest];

  return areasOfInterest;
}

- (NSTimeZone)timezone
{
  userValues = [(GEOMapItemStorage *)self userValues];
  hasTimeZoneName = [userValues hasTimeZoneName];

  if (hasTimeZoneName)
  {
    v5 = MEMORY[0x1E695DFE8];
    userValues2 = [(GEOMapItemStorage *)self userValues];
    timeZoneName = [userValues2 timeZoneName];
    userValues3 = [(GEOMapItemStorage *)self userValues];
    timeZoneData = [userValues3 timeZoneData];
    timezone = [v5 timeZoneWithName:timeZoneName data:timeZoneData];
  }

  else
  {
    userValues2 = [(GEOMapItemStorage *)self _geoMapItem];
    timezone = [userValues2 timezone];
  }

  return timezone;
}

- (NSString)_poiCategory
{
  _styleAttributes = [(GEOMapItemStorage *)self _styleAttributes];
  if (_styleAttributes)
  {
    v3 = +[GEOPOITypeMapping sharedMapping];
    v4 = [v3 categoryForPOIType:{objc_msgSend(_styleAttributes, "poiType")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GEOFeatureStyleAttributes)_styleAttributes
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _styleAttributes = [_geoMapItem _styleAttributes];

  return _styleAttributes;
}

- (unint64_t)_muid
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _muid = [_geoMapItem _muid];

  return _muid;
}

- (GEOPDPlace)_placeData
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _placeData = [_geoMapItem _placeData];

  return _placeData;
}

- (void)_readInternalDetourInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 8) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readInternalDetourInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (NSMutableArray)additionalPlaceDatas
{
  [(GEOMapItemStorage *)self _readAdditionalPlaceDatas];
  additionalPlaceDatas = self->_additionalPlaceDatas;

  return additionalPlaceDatas;
}

- (void)_readAdditionalPlaceDatas
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ((*(self + 132) & 2) == 0)
    {
      v2 = *(self + 32);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageReadSpecified(self, *(self + 32), &_readAdditionalPlaceDatas_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (GEOPDResultDetourInfo)internalDetourInfo
{
  [(GEOMapItemStorage *)self _readInternalDetourInfo];
  internalDetourInfo = self->_internalDetourInfo;

  return internalDetourInfo;
}

- (id)addressObject
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  addressObject = [_geoMapItem addressObject];

  return addressObject;
}

- (GEOPDPlace)placeData
{
  [(GEOMapItemStorage *)self _readPlaceData];
  placeData = self->_placeData;

  return placeData;
}

- (NSString)name
{
  userValues = [(GEOMapItemStorage *)self userValues];
  hasName = [userValues hasName];

  if (hasName)
  {
    [(GEOMapItemStorage *)self userValues];
  }

  else
  {
    [(GEOMapItemStorage *)self _geoMapItem];
  }
  v5 = ;
  name = [v5 name];

  return name;
}

- (unint64_t)hash
{
  [(GEOMapItemStorage *)self readAll:1];
  v3 = [(GEOPDPlace *)self->_placeData hash];
  v4 = [(GEOPlace *)self->_place hash]^ v3;
  v5 = [(GEOMapItemClientAttributes *)self->_clientAttributes hash];
  v6 = v4 ^ v5 ^ [(GEOPlaceResult *)self->_placeResult hash];
  v7 = [(GEOLatLng *)self->_originatingCoordinate hash];
  v8 = v7 ^ [(GEOPDResultDetourInfo *)self->_internalDetourInfo hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_mapsURL hash];
  v10 = [(GEOMapItemStorageUserValues *)self->_userValues hash];
  return v9 ^ v10 ^ [(NSMutableArray *)self->_additionalPlaceDatas hash];
}

- (GEOPlaceResult)_placeResult
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _placeResult = [_geoMapItem _placeResult];

  return _placeResult;
}

- (GEOPlace)_place
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _place = [_geoMapItem _place];

  return _place;
}

- (BOOL)_hasMUID
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _hasMUID = [_geoMapItem _hasMUID];

  return _hasMUID;
}

- (NSArray)_photos
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _photos = [_geoMapItem _photos];

  return _photos;
}

- (BOOL)_hasResolvablePartialInformation
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _hasResolvablePartialInformation = [_geoMapItem _hasResolvablePartialInformation];

  return _hasResolvablePartialInformation;
}

- (BOOL)hasExpiredComponents
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  hasExpiredComponents = [_geoMapItem hasExpiredComponents];

  return hasExpiredComponents;
}

- (unint64_t)_customIconID
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _customIconID = [_geoMapItem _customIconID];

  return _customIconID;
}

- (BOOL)_hasAreaHighlightId
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _hasAreaHighlightId = [_geoMapItem _hasAreaHighlightId];

  return _hasAreaHighlightId;
}

- (GEOMapItemVenueInfo)_venueInfo
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _venueInfo = [_geoMapItem _venueInfo];

  return _venueInfo;
}

- (BOOL)_hasVenueFeatureType
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _hasVenueFeatureType = [_geoMapItem _hasVenueFeatureType];

  return _hasVenueFeatureType;
}

- (GEOLabelGeometry)_labelGeometry
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _labelGeometry = [_geoMapItem _labelGeometry];

  return _labelGeometry;
}

- (GEOEnhancedPlacement)_enhancedPlacement
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _enhancedPlacement = [_geoMapItem _enhancedPlacement];

  return _enhancedPlacement;
}

- (int)_placeDisplayType
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _placeDisplayType = [_geoMapItem _placeDisplayType];

  return _placeDisplayType;
}

- (int)_placeType
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _placeType = [_geoMapItem _placeType];

  return _placeType;
}

- (BOOL)_hasResultProviderID
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _hasResultProviderID = [_geoMapItem _hasResultProviderID];

  return _hasResultProviderID;
}

- (NSString)contactName
{
  clientAttributes = [(GEOMapItemStorage *)self clientAttributes];
  addressBookAttributes = [clientAttributes addressBookAttributes];
  name = [addressBookAttributes name];

  return name;
}

- (int)contactAddressType
{
  clientAttributes = [(GEOMapItemStorage *)self clientAttributes];
  hasAddressBookAttributes = [clientAttributes hasAddressBookAttributes];

  clientAttributes2 = [(GEOMapItemStorage *)self clientAttributes];
  v6 = clientAttributes2;
  if (hasAddressBookAttributes)
  {
    addressBookAttributes = [clientAttributes2 addressBookAttributes];
    addressType = [addressBookAttributes addressType];

    return addressType;
  }

  else
  {
    hasRoutineAttributes = [clientAttributes2 hasRoutineAttributes];

    if (hasRoutineAttributes)
    {
      clientAttributes3 = [(GEOMapItemStorage *)self clientAttributes];
      routineAttributes = [clientAttributes3 routineAttributes];
      loiType = [routineAttributes loiType];

      if ((loiType - 1) >= 3)
      {
        return 0;
      }

      else
      {
        return loiType;
      }
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)_hasTransit
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _hasTransit = [_geoMapItem _hasTransit];

  return _hasTransit;
}

- (BOOL)contactIsMe
{
  clientAttributes = [(GEOMapItemStorage *)self clientAttributes];
  hasAddressBookAttributes = [clientAttributes hasAddressBookAttributes];

  clientAttributes2 = [(GEOMapItemStorage *)self clientAttributes];
  v6 = clientAttributes2;
  if (hasAddressBookAttributes)
  {
    addressBookAttributes = [clientAttributes2 addressBookAttributes];
    isMe = [addressBookAttributes isMe];

    return isMe;
  }

  else
  {
    hasRoutineAttributes = [clientAttributes2 hasRoutineAttributes];

    result = 0;
    if (hasRoutineAttributes)
    {
      clientAttributes3 = [(GEOMapItemStorage *)self clientAttributes];
      routineAttributes = [clientAttributes3 routineAttributes];
      loiType = [routineAttributes loiType];

      if ((loiType - 1) < 3)
      {
        return 1;
      }
    }
  }

  return result;
}

- (id)shortAddress
{
  if ([(GEOMapItemStorage *)self _venueFeatureType]== 4)
  {
    addressObject = [(GEOMapItemStorage *)self addressObject];
    venueShortAddress = [addressObject venueShortAddress];

    if ([venueShortAddress length])
    {
      goto LABEL_8;
    }
  }

  _clientAttributes = [(GEOMapItemStorage *)self _clientAttributes];
  hasCorrectedLocationAttributes = [_clientAttributes hasCorrectedLocationAttributes];

  if (hasCorrectedLocationAttributes)
  {
    _clientAttributes2 = [(GEOMapItemStorage *)self _clientAttributes];
    correctedLocationAttributes = [_clientAttributes2 correctedLocationAttributes];
    correctedAddress = [correctedLocationAttributes correctedAddress];
    formattedAddressLines = [correctedAddress formattedAddressLines];
    venueShortAddress = [formattedAddressLines firstObject];

    if ([venueShortAddress length])
    {
      goto LABEL_8;
    }
  }

  addressObject2 = [(GEOMapItemStorage *)self addressObject];
  venueShortAddress = [addressObject2 shortAddress];

LABEL_8:

  return venueShortAddress;
}

- (int)_venueFeatureType
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _venueFeatureType = [_geoMapItem _venueFeatureType];

  return _venueFeatureType;
}

- (int)_resultProviderID
{
  _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
  _resultProviderID = [_geoMapItem _resultProviderID];

  return _resultProviderID;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  clientAttributes = [(GEOMapItemStorage *)self clientAttributes];
  if (([clientAttributes hasCorrectedLocationAttributes] & 1) == 0)
  {

    goto LABEL_5;
  }

  clientAttributes2 = [(GEOMapItemStorage *)self clientAttributes];
  correctedLocationAttributes = [clientAttributes2 correctedLocationAttributes];
  hasCorrectedCoordinate = [correctedLocationAttributes hasCorrectedCoordinate];

  if (!hasCorrectedCoordinate)
  {
LABEL_5:
    _geoMapItem = [(GEOMapItemStorage *)self _geoMapItem];
    [_geoMapItem centerCoordinate];
    v11 = v14;
    v13 = v15;
    goto LABEL_6;
  }

  _geoMapItem = [(GEOMapItemStorage *)self clientAttributes];
  correctedLocationAttributes2 = [_geoMapItem correctedLocationAttributes];
  correctedCoordinate = [correctedLocationAttributes2 correctedCoordinate];
  [correctedCoordinate coordinate];
  v11 = v10;
  v13 = v12;

LABEL_6:
  v16 = v11;
  v17 = v13;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

@end