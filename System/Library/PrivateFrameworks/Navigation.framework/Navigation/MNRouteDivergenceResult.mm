@interface MNRouteDivergenceResult
- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate;
- (MNRouteDivergenceResult)init;
- (id)description;
@end

@implementation MNRouteDivergenceResult

- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  altitude = self->_locationCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = GEOPolylineCoordinateAsString();
  v5 = v4;
  resultType = self->_resultType;
  v7 = @"None";
  if (resultType == 1)
  {
    v7 = @"Divergence";
  }

  if (resultType == 2)
  {
    v8 = @"Convergence";
  }

  else
  {
    v8 = v7;
  }

  v9 = [v3 stringWithFormat:@"%@ (%f, %f) | %@ | %@", v4, *&self->_locationCoordinate.latitude, *&self->_locationCoordinate.longitude, self->_routeID, v8];

  return v9;
}

- (MNRouteDivergenceResult)init
{
  v3.receiver = self;
  v3.super_class = MNRouteDivergenceResult;
  result = [(MNRouteDivergenceResult *)&v3 init];
  if (result)
  {
    result->_routeCoordinate = *MEMORY[0x1E69A1918];
  }

  return result;
}

@end