@interface GEOComposedRouteVisualInfo
- (GEOPolylineCoordinateRange)routeCoordinateRange;
@end

@implementation GEOComposedRouteVisualInfo

- (GEOPolylineCoordinateRange)routeCoordinateRange
{
  end = self->_routeCoordinateRange.end;
  start = self->_routeCoordinateRange.start;
  result.end = end;
  result.start = start;
  return result;
}

@end