@interface GEONavigationListenerRemoteClient
- (void)setETAUpdate:(id)update;
- (void)setLocation:(id)location routeCoordinate:(id)coordinate;
- (void)setPositionFromDestination:(id)destination;
- (void)setPositionFromManeuver:(id)maneuver;
@end

@implementation GEONavigationListenerRemoteClient

- (void)setPositionFromManeuver:(id)maneuver
{
  var1 = maneuver.var1;
  var0 = maneuver.var0;
  selfCopy = self;
  GEONavigationListenerRemoteClient.setPositionFromManeuver(_:)(__PAIR128__(*&var1, *&var0));
}

- (void)setPositionFromDestination:(id)destination
{
  var1 = destination.var1;
  var0 = destination.var0;
  selfCopy = self;
  GEONavigationListenerRemoteClient.setPositionFromDestination(_:)(__PAIR128__(*&var1, *&var0));
}

- (void)setETAUpdate:(id)update
{
  updateCopy = update;
  v7._arrivalTimeInfo = self;
  arrivalTimeInfo = v7._arrivalTimeInfo;
  v7.super.isa = updateCopy;
  GEONavigationListenerRemoteClient.setETAUpdate(_:)(v7);
}

- (void)setLocation:(id)location routeCoordinate:(id)coordinate
{
  var0 = coordinate.var0;
  var1 = coordinate.var1;
  locationCopy = location;
  selfCopy = self;
  GEONavigationListenerRemoteClient.setLocation(_:routeCoordinate:)(locationCopy, var0, var1);
}

@end