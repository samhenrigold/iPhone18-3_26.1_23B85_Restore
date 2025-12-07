@interface MNTrafficIncidentTriggerPoint
- (BOOL)shouldActivateForLocation:(id)location;
- (MNTrafficIncidentTriggerPoint)initWithCoder:(id)coder;
- (MNTrafficIncidentTriggerPoint)initWithReferenceCoordinate:(id)coordinate allowsShifting:(BOOL)shifting;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setReferenceCoordinate:(id)coordinate;
@end

@implementation MNTrafficIncidentTriggerPoint

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:&self->_referenceCoordinate length:8 forKey:@"_referenceCoordinate"];
  [coderCopy encodeBool:self->_allowsShifting forKey:@"_allowsShifting"];
}

- (MNTrafficIncidentTriggerPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MNTrafficIncidentTriggerPoint;
  v5 = [(MNTrafficIncidentTriggerPoint *)&v11 init];
  if (v5)
  {
    v10 = 0;
    v6 = [coderCopy decodeBytesForKey:@"_referenceCoordinate" returnedLength:&v10];
    if (v10 && v6)
    {
      if (v10 >= 8)
      {
        v7 = 8;
      }

      else
      {
        v7 = v10;
      }

      memcpy(&v5->_referenceCoordinate, v6, v7);
    }

    v5->_allowsShifting = [coderCopy decodeBoolForKey:@"_allowsShifting"];
    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = GEOPolylineCoordinateAsShortString();
  v5 = v4;
  if (self->_allowsShifting)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"coordinate: [%@] | allowsShifting: %@", v4, v6];

  return v7;
}

- (BOOL)shouldActivateForLocation:(id)location
{
  routeMatch = [location routeMatch];
  [routeMatch routeCoordinate];

  [(MNTrafficIncidentTriggerPoint *)self referenceCoordinate];

  return GEOPolylineCoordinateIsABeforeOrEqualToB();
}

- (void)setReferenceCoordinate:(id)coordinate
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_allowsShifting)
  {
    goto LABEL_2;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attemped to change referenceCoordinate of MNTrafficIncidentTriggerPoint when shifting is now allowed. Ignoring change."];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 136316162;
    v8 = "[MNTrafficIncidentTriggerPoint setReferenceCoordinate:]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTrafficIncidentTriggerPoint.m";
    v11 = 1024;
    v12 = 34;
    v13 = 2080;
    v14 = "_allowsShifting";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v7, 0x30u);
  }

  if (self->_allowsShifting)
  {
LABEL_2:
    self->_referenceCoordinate = coordinate;
  }
}

- (MNTrafficIncidentTriggerPoint)initWithReferenceCoordinate:(id)coordinate allowsShifting:(BOOL)shifting
{
  v10.receiver = self;
  v10.super_class = MNTrafficIncidentTriggerPoint;
  v6 = [(MNTrafficIncidentTriggerPoint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 12) = coordinate;
    v6[8] = shifting;
    v8 = v6;
  }

  return v7;
}

@end