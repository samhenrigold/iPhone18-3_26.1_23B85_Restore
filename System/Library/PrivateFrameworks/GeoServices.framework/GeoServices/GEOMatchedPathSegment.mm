@interface GEOMatchedPathSegment
- ($1AB5FA073B851C12C2339EC22442E995)startLocationCoordinate;
- (GEOPolylineCoordinateRange)range;
- (PolylineCoordinate)endRouteCoordinate;
- (PolylineCoordinate)startRouteCoordinate;
- (id).cxx_construct;
@end

@implementation GEOMatchedPathSegment

- (PolylineCoordinate)startRouteCoordinate
{
  begin = self->_coordinates.__begin_;
  if (self->_coordinates.__end_ == begin)
  {
    v3 = &GEOPolylineCoordinateInvalid;
  }

  else
  {
    v3 = begin + 3;
  }

  return *v3;
}

- (PolylineCoordinate)endRouteCoordinate
{
  end = self->_coordinates.__end_;
  if (end == self->_coordinates.__begin_)
  {
    v3 = &GEOPolylineCoordinateInvalid;
  }

  else
  {
    v3 = (end - 8);
  }

  return *v3;
}

- (GEOPolylineCoordinateRange)range
{
  startRouteCoordinate = [(GEOMatchedPathSegment *)self startRouteCoordinate];
  endRouteCoordinate = [(GEOMatchedPathSegment *)self endRouteCoordinate];
  v5 = startRouteCoordinate;
  result.end = endRouteCoordinate;
  result.start = v5;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0xBF80000000000000;
  *(self + 7) = 0xBF80000000000000;
  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)startLocationCoordinate
{
  [(GEOMatchedPathSegment *)self locationCoordinateAt:0];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end