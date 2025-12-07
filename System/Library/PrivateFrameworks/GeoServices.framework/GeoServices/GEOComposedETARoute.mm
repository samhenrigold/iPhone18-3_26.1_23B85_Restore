@interface GEOComposedETARoute
- (id)geoTrafficBannerTexts;
@end

@implementation GEOComposedETARoute

- (id)geoTrafficBannerTexts
{
  geoETAWaypointRoute = self->_geoETAWaypointRoute;
  if (geoETAWaypointRoute)
  {
    geoETAWaypointRoute = [geoETAWaypointRoute trafficBannerTexts];
    v2 = vars8;
  }

  return geoETAWaypointRoute;
}

@end