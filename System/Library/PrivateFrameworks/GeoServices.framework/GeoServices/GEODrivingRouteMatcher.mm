@interface GEODrivingRouteMatcher
- (BOOL)_supportsSnapping;
@end

@implementation GEODrivingRouteMatcher

- (BOOL)_supportsSnapping
{
  route = [(GEORouteMatcher *)self route];
  if ([route usesZilch])
  {
    usesRoutingPathPoints = 1;
  }

  else
  {
    route2 = [(GEORouteMatcher *)self route];
    usesRoutingPathPoints = [route2 usesRoutingPathPoints];
  }

  return usesRoutingPathPoints;
}

@end