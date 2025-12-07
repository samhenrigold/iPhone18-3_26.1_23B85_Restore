@interface GEORouteMatch
- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate3D;
- ($F24F406B2B787EFB06265DBA3D28CBD5)locationCoordinate;
- (GEOComposedRouteLeg)leg;
- (GEOComposedRouteStep)step;
- (unint64_t)legIndex;
@end

@implementation GEORouteMatch

- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate3D
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  altitude = self->_locationCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (unint64_t)legIndex
{
  if (self->_stepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return [(GEOComposedRoute *)self->_route legIndexForStepIndex:?];
  }
}

- (GEOComposedRouteStep)step
{
  if (self->_stepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(GEOComposedRoute *)self->_route stepAtIndex:v2];
  }

  return v4;
}

- (GEOComposedRouteLeg)leg
{
  legIndex = [(GEORouteMatch *)self legIndex];
  legs = [(GEOComposedRoute *)self->_route legs];
  if (legIndex >= [legs count])
  {
    v6 = 0;
  }

  else
  {
    legs2 = [(GEOComposedRoute *)self->_route legs];
    v6 = [legs2 objectAtIndexedSubscript:legIndex];
  }

  return v6;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end