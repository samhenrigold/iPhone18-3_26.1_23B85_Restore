@interface GEONavigationProxy
- (id)remoteObject;
- (void)_sendLocationAndCoordinate;
- (void)_sendPositionFromDestination;
- (void)_sendPositionFromManeuver;
@end

@implementation GEONavigationProxy

- (void)_sendPositionFromDestination
{
  remoteObject = [(GEONavigationProxy *)&self->super.isa remoteObject];
  [remoteObject setPositionFromDestination:{self->_positionFromDestination.remainingTime, self->_positionFromDestination.remainingDistance}];
}

- (id)remoteObject
{
  if (self)
  {
    self = [self[1] remoteObjectProxy];
    v1 = vars8;
  }

  return self;
}

- (void)_sendPositionFromManeuver
{
  remoteObject = [(GEONavigationProxy *)&self->super.isa remoteObject];
  [remoteObject setPositionFromManeuver:{self->_positionFromManeuver.remainingTime, self->_positionFromManeuver.remainingDistance}];
}

- (void)_sendLocationAndCoordinate
{
  remoteObject = [(GEONavigationProxy *)&self->super.isa remoteObject];
  [remoteObject setLocation:self->_lastLocation routeCoordinate:*&self->_matchedCoordinate];
}

@end