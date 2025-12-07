@interface GEOPlaceRequestMessage
- (BOOL)isValid;
@end

@implementation GEOPlaceRequestMessage

- (BOOL)isValid
{
  requestUUID = [(GEOPlaceRequestMessage *)self requestUUID];
  if (requestUUID)
  {
    request = [(GEOPlaceRequestMessage *)self request];
    v5 = request != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end