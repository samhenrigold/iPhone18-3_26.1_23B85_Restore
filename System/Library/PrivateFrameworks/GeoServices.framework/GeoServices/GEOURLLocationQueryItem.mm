@interface GEOURLLocationQueryItem
- (BOOL)isValid;
- (GEOURLLocationQueryItem)init;
- (NSString)resolvedLocation;
@end

@implementation GEOURLLocationQueryItem

- (GEOURLLocationQueryItem)init
{
  v3.receiver = self;
  v3.super_class = GEOURLLocationQueryItem;
  result = [(GEOURLLocationQueryItem *)&v3 init];
  if (result)
  {
    result->_coordinate = kGEOLocationCoordinate2DInvalid_169077;
  }

  return result;
}

- (NSString)resolvedLocation
{
  if (self->_isCurrentLocation)
  {
    v4 = @"my-location";

    return v4;
  }

  address = self->_address;
  if (address)
  {
    goto LABEL_6;
  }

  longitude = self->_coordinate.longitude;
  if (fabs(longitude) > 180.0 || (latitude = self->_coordinate.latitude, fabs(latitude) > 90.0))
  {
    address = self->_name;
    if (address)
    {
LABEL_6:
      v4 = address;
      goto LABEL_12;
    }

    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f, %f", *&latitude, *&longitude, v2];
  }

LABEL_12:

  return v4;
}

- (BOOL)isValid
{
  if ([(GEOURLLocationQueryItem *)self hasMapItemIdentifier])
  {
    return 1;
  }

  resolvedLocation = [(GEOURLLocationQueryItem *)self resolvedLocation];
  v3 = [resolvedLocation length] != 0;

  return v3;
}

@end