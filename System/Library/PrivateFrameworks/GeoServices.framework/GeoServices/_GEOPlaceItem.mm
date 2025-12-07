@interface _GEOPlaceItem
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)_hasResultProviderID;
- (GEOMapRegion)displayMapRegion;
- (NSArray)areasOfInterest;
- (NSDictionary)addressDictionary;
- (NSTimeZone)timezone;
- (int)_placeType;
@end

@implementation _GEOPlaceItem

- (GEOMapRegion)displayMapRegion
{
  hasMapRegion = [(GEOPlace *)self->_place hasMapRegion];
  place = self->_place;
  if (hasMapRegion)
  {
    mapRegion = [(GEOPlace *)place mapRegion];
  }

  else
  {
    [(GEOPlace *)place coordinate];
    if (fabs(v7 + 180.0) >= 0.00000001 || fabs(v6 + 180.0) >= 0.00000001)
    {
      v8 = GEOMapRectMakeWithRadialDistance(v6, v7, 10000.0);
      mapRegion = [[GEOMapRegion alloc] initWithMapRect:v8, v9, v10, v11];
    }

    else
    {
      mapRegion = 0;
    }
  }

  return mapRegion;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(GEOPlace *)self->_place coordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NSDictionary)addressDictionary
{
  address = [(GEOPlace *)self->_place address];
  addressDictionary = [address addressDictionary];

  v5 = [addressDictionary objectForKey:@"Name"];
  if (![v5 length])
  {
    name = [(_GEOPlaceItem *)self name];
    if ([name length])
    {
      if (!addressDictionary)
      {
        addressDictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      [addressDictionary setObject:name forKey:@"Name"];
    }
  }

  return addressDictionary;
}

- (NSArray)areasOfInterest
{
  address = [(GEOPlace *)self->_place address];
  structuredAddress = [address structuredAddress];
  areaOfInterests = [structuredAddress areaOfInterests];

  return areaOfInterests;
}

- (NSTimeZone)timezone
{
  v3 = objc_alloc(MEMORY[0x1E695DFE8]);
  timezone = [(GEOPlace *)self->_place timezone];
  identifier = [(GEOTimezone *)timezone identifier];
  v6 = [v3 initWithName:identifier];

  return v6;
}

- (BOOL)_hasResultProviderID
{
  place = self->_place;
  if (place)
  {
    LOBYTE(place) = [(GEOPlace *)place hasLocalSearchProviderID];
  }

  return place;
}

- (int)_placeType
{
  type = [(GEOPlace *)self->_place type];

  return _MapItemPlaceTypeForPlaceType(type);
}

@end