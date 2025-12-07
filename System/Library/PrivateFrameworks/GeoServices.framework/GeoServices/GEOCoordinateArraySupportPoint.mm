@interface GEOCoordinateArraySupportPoint
- (GEOCoordinateArraySupportPoint)init;
@end

@implementation GEOCoordinateArraySupportPoint

- (GEOCoordinateArraySupportPoint)init
{
  v3.receiver = self;
  v3.super_class = GEOCoordinateArraySupportPoint;
  result = [(GEOCoordinateArraySupportPoint *)&v3 init];
  if (result)
  {
    result->_heading = -1.0;
    *&result->_legacyRoadClass = 9;
    result->_matchType = 0;
  }

  return result;
}

@end