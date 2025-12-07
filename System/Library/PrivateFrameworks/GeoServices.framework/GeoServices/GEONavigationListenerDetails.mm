@interface GEONavigationListenerDetails
- (void)setLastRouteMatchedCoordinate:(id)coordinate;
@end

@implementation GEONavigationListenerDetails

- (void)setLastRouteMatchedCoordinate:(id)coordinate
{
  v5 = OBJC_IVAR____TtC11GeoServices28GEONavigationListenerDetails_lastRouteMatchedCoordinate;
  swift_beginAccess();
  *(&self->super.isa + v5) = coordinate;
}

@end