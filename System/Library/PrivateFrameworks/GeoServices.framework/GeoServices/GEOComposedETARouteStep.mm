@interface GEOComposedETARouteStep
- (GEOComposedETARouteStep)init;
- (GEOPolylineCoordinateRange)routeCoordinateRange;
@end

@implementation GEOComposedETARouteStep

- (GEOPolylineCoordinateRange)routeCoordinateRange
{
  end = self->_routeCoordinateRange.end;
  start = self->_routeCoordinateRange.start;
  result.end = end;
  result.start = start;
  return result;
}

- (GEOComposedETARouteStep)init
{
  v3.receiver = self;
  v3.super_class = GEOComposedETARouteStep;
  result = [(GEOComposedETARouteStep *)&v3 init];
  if (result)
  {
    result->_routeCoordinateRange = GEOPolylineCoordinateRangeInvalid;
  }

  return result;
}

@end