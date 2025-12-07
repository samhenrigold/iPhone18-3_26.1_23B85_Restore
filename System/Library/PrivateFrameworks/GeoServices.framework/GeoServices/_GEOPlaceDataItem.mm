@interface _GEOPlaceDataItem
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)_hasAreaHighlightId;
- (BOOL)_hasResolvablePartialInformation;
- (BOOL)_hasResultProviderID;
- (BOOL)_hasTelephone;
- (BOOL)_hasTransit;
- (BOOL)_hasVenueFeatureType;
- (BOOL)hasExpiredComponents;
- (BOOL)isValid;
- (GEOEnhancedPlacement)_enhancedPlacement;
- (GEOFeatureStyleAttributes)_styleAttributes;
- (GEOLabelGeometry)_labelGeometry;
- (GEOMessageLink)_messageLink;
- (NSArray)_allPhotoAttributions;
- (NSArray)_photos;
- (NSTimeZone)timezone;
- (id)_iso3166Value;
- (int)_resultProviderID;
- (int)_venueFeatureType;
- (unint64_t)_customIconID;
- (void)_placeDataStyleAttributes;
- (void)_refreshPhotoAttributions;
@end

@implementation _GEOPlaceDataItem

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  v3 = [GEOPDPlaceInfo placeInfoForPlaceData:self->_placeData];
  v4 = v3;
  if (v3)
  {
    [(GEOPDPlaceInfo *)v3 _readEnhancedCenter];
    if (*(v4 + 48))
    {
      enhancedCenter = [(GEOPDPlaceInfo *)v4 enhancedCenter];
LABEL_6:
      v6 = enhancedCenter;
      [enhancedCenter coordinate];
      v8 = v7;
      v10 = v9;
      goto LABEL_7;
    }

    [(GEOPDPlaceInfo *)v4 _readCenter];
    if (*(v4 + 40))
    {
      enhancedCenter = [(GEOPDPlaceInfo *)v4 center];
      goto LABEL_6;
    }
  }

  v13 = [GEOPDSpatialLookupResult spatialLookupResultForPlaceData:self->_placeData];
  v6 = v13;
  if (v13 && ([(GEOPDSpatialLookupResult *)v13 _readCenter], v6[7]))
  {
    center = [(GEOPDSpatialLookupResult *)v6 center];
    [center coordinate];
    v8 = v15;
    v10 = v16;
  }

  else
  {
    v17 = [GEOPDRoadAccessInfo roadAccessInfoForPlaceData:self->_placeData];
    center = v17;
    if (v17 && [*(v17 + 16) count] && (-[GEOPDRoadAccessInfo roadAccessPointAtIndex:](center), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      location = [v18 location];
      [location coordinate];
      v8 = v21;
      v10 = v22;
    }

    else
    {
      _iso3166Value = [(_GEOPlaceDataItem *)self _iso3166Value];
      v24 = _iso3166Value;
      v8 = 0xC066800000000000;
      if (_iso3166Value)
      {
        [(GEOPDISO3166Code *)_iso3166Value _readLocation];
        v10 = 0xC066800000000000;
        if (*(v24 + 32))
        {
          location2 = [(GEOPDISO3166Code *)v24 location];
          [location2 coordinate];
          v8 = v26;
          v10 = v27;
        }
      }

      else
      {
        v10 = 0xC066800000000000;
      }
    }
  }

LABEL_7:
  v11 = *&v8;
  v12 = *&v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (GEOFeatureStyleAttributes)_styleAttributes
{
  _placeDataStyleAttributes = [(_GEOPlaceDataItem *)self _placeDataStyleAttributes];
  if (_placeDataStyleAttributes)
  {
    v3 = [[GEOFeatureStyleAttributes alloc] initWithPlaceDataStyleAttributes:_placeDataStyleAttributes];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_placeDataStyleAttributes
{
  selfCopy = self;
  if (self)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__82964;
    v12 = __Block_byref_object_dispose__82965;
    v13 = 0;
    v2 = self[3];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46___GEOPlaceDataItem__placeDataStyleAttributes__block_invoke;
    v7[3] = &unk_1E705A158;
    v7[4] = &v8;
    [v2 enumerateValidComponentValuesOfType:16 usingBlock:v7];
    v3 = v9[5];
    if (!v3)
    {
      v4 = selfCopy[3];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46___GEOPlaceDataItem__placeDataStyleAttributes__block_invoke_2;
      v6[3] = &unk_1E705A158;
      v6[4] = &v8;
      [v4 enumerateValidComponentValuesOfType:1 usingBlock:v6];
      v3 = v9[5];
    }

    selfCopy = v3;
    _Block_object_dispose(&v8, 8);
  }

  return selfCopy;
}

- (NSArray)_photos
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _allPhotoAttributions = [(_GEOPlaceDataItem *)self _allPhotoAttributions];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [_allPhotoAttributions countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(_allPhotoAttributions);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        providerID = [v9 providerID];
        [v3 setObject:v9 forKey:providerID];
      }

      v6 = [_allPhotoAttributions countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v6);
  }

  v11 = [GEOPDAttribution componentLevelAttributionForPlaceDataPhotos:self->_placeData];
  v12 = [GEOPDCaptionedPhoto captionedPhotosForPlaceData:self->_placeData];
  if ([v12 count])
  {
    v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v14)
    {
      goto LABEL_35;
    }

    v15 = v14;
    v34 = v12;
    v35 = _allPhotoAttributions;
    v16 = *v42;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v41 + 1) + 8 * j);
        if (v11 && ([(GEOPDAttribution *)v11 _readVendorId], *(v11 + 56)))
        {
          vendorId = [(GEOPDAttribution *)v11 vendorId];
        }

        else
        {
          attribution = [(GEOPDCaptionedPhoto *)v18 attribution];
          vendorId = [(GEOPDAttribution *)attribution vendorId];
        }

        v21 = [_GEOPlaceDataPhoto alloc];
        v22 = [v3 objectForKeyedSubscript:vendorId];
        v23 = [(_GEOPlaceDataPhoto *)v21 initWithCaptionedPhoto:v18 attribution:v22];

        if (v23)
        {
          [v36 addObject:v23];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v15);
    goto LABEL_34;
  }

  v13 = [GEOPDPhoto photosForPlaceData:self->_placeData];
  if ([v13 count])
  {
    v34 = v12;
    v35 = _allPhotoAttributions;
    v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = v13;
    v24 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v13);
          }

          v28 = *(*(&v37 + 1) + 8 * k);
          v29 = [_GEOPlaceDataPhoto alloc];
          vendorId2 = [(GEOPDAttribution *)v11 vendorId];
          v31 = [v3 objectForKeyedSubscript:vendorId2];
          v32 = [(_GEOPlaceDataPhoto *)v29 initWithPhoto:v28 attribution:v31];

          if (v32)
          {
            [v36 addObject:v32];
          }
        }

        v25 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v25);
    }

LABEL_34:
    v12 = v34;
    _allPhotoAttributions = v35;
    goto LABEL_35;
  }

  v36 = 0;
LABEL_35:

  return v36;
}

- (NSArray)_allPhotoAttributions
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__82964;
  v8 = __Block_byref_object_dispose__82965;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)_refreshPhotoAttributions
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = _fetchPhotoRelatedDataAttributionsForPlaceData(self->_placeData);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        vendorId = [(GEOPDAttribution *)v11 vendorId];
        v13 = [v5 containsObject:{vendorId, v21}];

        if ((v13 & 1) == 0)
        {
          attributionMap = self->_attributionMap;
          vendorId2 = [(GEOPDAttribution *)v11 vendorId];
          v16 = [(NSMapTable *)attributionMap objectForKey:vendorId2];

          if (v16 && [v16 hasAttributionRequirement:3])
          {
            v17 = [GEOMapItemAttribution attributionWithDataAttribution:v11 searchInfo:v16 class:objc_opt_class()];
            [v4 addObject:v17];

            vendorId3 = [(GEOPDAttribution *)v11 vendorId];
            [v5 addObject:vendorId3];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v19 = [v4 copy];
  allPhotoAttributions = self->_allPhotoAttributions;
  self->_allPhotoAttributions = v19;
}

- (BOOL)_hasResolvablePartialInformation
{
  v2 = [GEOPDPlaceInfo placeInfoForPlaceData:self->_placeData];
  if (v2 && (*(v2 + 92) & 4) != 0)
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)hasExpiredComponents
{
  placeData = self->_placeData;
  Current = CFAbsoluteTimeGetCurrent();

  return [(GEOPDPlace *)placeData hasExpiredComponentsAsOf:Current];
}

- (unint64_t)_customIconID
{
  _placeDataStyleAttributes = [(_GEOPlaceDataItem *)self _placeDataStyleAttributes];
  v3 = _placeDataStyleAttributes;
  if (_placeDataStyleAttributes)
  {
    customIconId = [_placeDataStyleAttributes customIconId];
  }

  else
  {
    customIconId = 0;
  }

  return customIconId;
}

- (BOOL)_hasAreaHighlightId
{
  v2 = [GEOPDEntity entityForPlaceData:self->_placeData];
  hasAreaHighlightId = [v2 hasAreaHighlightId];

  return hasAreaHighlightId;
}

- (BOOL)_hasVenueFeatureType
{
  _venueInfo = [(_GEOPlaceDataItem *)self _venueInfo];
  v3 = _venueInfo != 0;

  return v3;
}

- (GEOLabelGeometry)_labelGeometry
{
  v2 = [GEOPDLabelGeometry labelGeometryWithPlaceData:self->_placeData];
  if (v2)
  {
    v3 = [[GEOLabelGeometry alloc] initWithGEOPDLabelGeometry:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (GEOEnhancedPlacement)_enhancedPlacement
{
  v2 = [GEOPDEnhancedPlacement enhancedPlacementWithPlaceData:self->_placeData];
  if (v2)
  {
    v3 = [[GEOEnhancedPlacement alloc] initWithGEOPDEnhancedPlacement:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_hasResultProviderID
{
  placeData = self->_placeData;
  if (placeData)
  {
    LOBYTE(placeData) = [(GEOPDPlace *)placeData hasResultProviderId];
  }

  return placeData;
}

- (NSTimeZone)timezone
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__82964;
  v8 = __Block_byref_object_dispose__82965;
  v9 = 0;
  geo_reentrant_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (BOOL)_hasTransit
{
  v3 = [GEOPDTransitInfo transitInfoForPlaceData:self->_placeData];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [GEOPDTransitInfoSnippet transitInfoSnippetForPlaceData:self->_placeData];
    v4 = v5 != 0;
  }

  return v4;
}

- (GEOMessageLink)_messageLink
{
  v2 = [GEOPDMessageLink messageLinkForPlaceData:self->_placeData];
  if (v2)
  {
    v3 = [[GEOMessageLink alloc] initWithMessageLink:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isValid
{
  placeData = self->_placeData;
  if (placeData)
  {
    LOBYTE(placeData) = [(GEOPDPlace *)placeData statusCodeIsValid];
  }

  return placeData;
}

- (BOOL)_hasTelephone
{
  phoneNumbers = [(GEOPDPlace *)self->_placeData phoneNumbers];
  v3 = [phoneNumbers count] != 0;

  return v3;
}

- (id)_iso3166Value
{
  if (self)
  {
    v1 = [*(self + 24) componentOfType:77 options:3];
    values = [(GEOPDComponent *)v1 values];
    firstObject = [values firstObject];
    iso3166Code = [(GEOPDComponentValue *)firstObject iso3166Code];
  }

  else
  {
    iso3166Code = 0;
  }

  return iso3166Code;
}

- (int)_venueFeatureType
{
  _venueInfo = [(_GEOPlaceDataItem *)self _venueInfo];

  if (!_venueInfo)
  {
    return 0;
  }

  _venueInfo2 = [(_GEOPlaceDataItem *)self _venueInfo];
  venueFeatureType = [_venueInfo2 venueFeatureType];

  return venueFeatureType;
}

- (int)_resultProviderID
{
  placeData = self->_placeData;
  if (!placeData || ![(GEOPDPlace *)placeData hasResultProviderId])
  {
    return 0;
  }

  v4 = self->_placeData;

  return [(GEOPDPlace *)v4 resultProviderId];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  v3 = [GEOPDPlaceInfo placeInfoForPlaceData:self->_placeData];
  v4 = v3;
  if (v3)
  {
    [(GEOPDPlaceInfo *)v3 _readEnhancedCenter];
    if (*(v4 + 48))
    {
      enhancedCenter = [(GEOPDPlaceInfo *)v4 enhancedCenter];
LABEL_6:
      v6 = enhancedCenter;
      [enhancedCenter coordinate];
      v8 = v7;
      v10 = v9;
      goto LABEL_7;
    }

    [(GEOPDPlaceInfo *)v4 _readCenter];
    if (*(v4 + 40))
    {
      enhancedCenter = [(GEOPDPlaceInfo *)v4 center];
      goto LABEL_6;
    }
  }

  v13 = [GEOPDSpatialLookupResult spatialLookupResultForPlaceData:self->_placeData];
  v6 = v13;
  v8 = 0xC066800000000000;
  if (v13 && ([(GEOPDSpatialLookupResult *)v13 _readCenter], v6[7]))
  {
    center = [(GEOPDSpatialLookupResult *)v6 center];
    [center coordinate];
    v8 = v15;
    v10 = v16;
  }

  else
  {
    v10 = 0xC066800000000000;
  }

LABEL_7:

  v11 = *&v8;
  v12 = *&v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

@end