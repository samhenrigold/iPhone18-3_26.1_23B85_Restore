@interface NavdOffRouteInfo
- (NavdOffRouteInfo)initWithCurrentDate:(id)date location:(id)location destination:(id)destination;
- (id)description;
- (void)updateWithCurrentDate:(id)date location:(id)location isMostRecentReroute:(BOOL)reroute throttledReroutesCount:(unint64_t)count;
@end

@implementation NavdOffRouteInfo

- (id)description
{
  v2 = [[NSMutableString alloc] initWithFormat:@"Date: %@\r\nLast Update: %@\r\nCoordinates: <%.6f, %.6f>\r\nDistance To Destination: %f\r\n DistancePenalty: %f, Throttled reroutes Penalty: %f\r\nPenalty: %f", self->_date, self->_lastUpdate, *&self->_destinationCoordinate.latitude, *&self->_destinationCoordinate.longitude, *&self->_originalDistanceFromDestination, *&self->_distancePenalty, *&self->_throttledReroutesPenalty, *&self->_penalty];

  return v2;
}

- (NavdOffRouteInfo)initWithCurrentDate:(id)date location:(id)location destination:(id)destination
{
  var1 = destination.var1;
  var0 = destination.var0;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = NavdOffRouteInfo;
  v10 = [(NavdOffRouteInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_date, date);
    v11->_destinationCoordinate.latitude = var0;
    v11->_destinationCoordinate.longitude = var1;
    GEOCalculateDistance();
    v11->_originalDistanceFromDestination = v12;
  }

  return v11;
}

- (void)updateWithCurrentDate:(id)date location:(id)location isMostRecentReroute:(BOOL)reroute throttledReroutesCount:(unint64_t)count
{
  rerouteCopy = reroute;
  dateCopy = date;
  objc_storeStrong(&self->_lastUpdate, date);
  if (rerouteCopy)
  {
    GEOCalculateDistance();
    v11 = v10;
    originalDistanceFromDestination = self->_originalDistanceFromDestination;
    self->_distancePenalty = 0.0;
    GEOConfigGetDouble();
    v13 = v11 - originalDistanceFromDestination;
    if (v13 > v14)
    {
      GEOConfigGetDouble();
      v16 = v15;
      GEOConfigGetDouble();
      self->_distancePenalty = v17 * (v13 - v16);
    }

    GEOConfigGetDouble();
    self->_throttledReroutesPenalty = v18 - pow((count + 1), -0.7) * v18;
  }

  [dateCopy timeIntervalSinceDate:self->_date];
  v20 = v19;
  GEOConfigGetDouble();
  v22 = v21;
  GEOConfigGetDouble();
  v24 = v23;
  GEOConfigGetDouble();
  v26 = v25;
  GEOConfigGetDouble();
  v27 = self->_distancePenalty + self->_throttledReroutesPenalty;
  v29 = fmin(fmax((v20 - v22) / (v24 - v26), 0.0), 1.0);
  self->_penalty = v27 + v28 - (v27 + v28) * v29;
}

@end