@interface GEOCelestialRiseTransitSet
- (double)_oldestEventInJulianDay;
- (id).cxx_construct;
@end

@implementation GEOCelestialRiseTransitSet

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 3) = 0;
  *(self + 16) = 0;
  *(self + 5) = 0;
  *(self + 48) = 0;
  *(self + 7) = 0;
  return self;
}

- (double)_oldestEventInJulianDay
{
  if (self->_riseTransitSet.bRiseValid)
  {
    Rise = 1.79769313e308;
    if (self->_riseTransitSet.Rise < 1.79769313e308)
    {
      Rise = self->_riseTransitSet.Rise;
    }
  }

  else
  {
    Rise = 1.79769313e308;
  }

  if (self->_riseTransitSet.bTransitValid && self->_riseTransitSet.Transit < Rise)
  {
    Rise = self->_riseTransitSet.Transit;
  }

  if (self->_riseTransitSet.bSetValid && self->_riseTransitSet.Set < Rise)
  {
    Rise = self->_riseTransitSet.Set;
  }

  return self->_julianDay + Rise / 24.0;
}

@end