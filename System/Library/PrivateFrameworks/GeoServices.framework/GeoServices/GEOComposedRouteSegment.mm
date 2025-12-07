@interface GEOComposedRouteSegment
- (_NSRange)stepRange;
- (unint64_t)endStepIndex;
- (unsigned)endPointIndex;
@end

@implementation GEOComposedRouteSegment

- (unint64_t)endStepIndex
{
  length = self->_stepRange.length;
  v3 = length != 0;
  v4 = length - 1;
  if (!v3)
  {
    v4 = 0;
  }

  return self->_stepRange.location + v4;
}

- (_NSRange)stepRange
{
  length = self->_stepRange.length;
  location = self->_stepRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (unsigned)endPointIndex
{
  length = self->_pointRange.length;
  if (length)
  {
    return LODWORD(self->_pointRange.location) + length - 1;
  }

  else
  {
    return self->_pointRange.location;
  }
}

@end