@interface GEOAlmanac
- (id)description;
@end

@implementation GEOAlmanac

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@: %p rise / transit / set> {\n", v5, self];

  [string appendFormat:@"\tlocation: %f, %f x %f\n", *&self->_location.latitude, *&self->_location.longitude, *&self->_altitude];
  previousSunrise = [(GEOAlmanac *)self previousSunrise];
  previousTransit = [(GEOAlmanac *)self previousTransit];
  previousSunset = [(GEOAlmanac *)self previousSunset];
  [string appendFormat:@"\tprevious: %@ / %@ / %@\n", previousSunrise, previousTransit, previousSunset];

  sunrise = [(GEOAlmanac *)self sunrise];
  transit = [(GEOAlmanac *)self transit];
  sunset = [(GEOAlmanac *)self sunset];
  [string appendFormat:@"\tcurrent:  %@ / %@ / %@\n", sunrise, transit, sunset];

  nextSunrise = [(GEOAlmanac *)self nextSunrise];
  nextTransit = [(GEOAlmanac *)self nextTransit];
  nextSunset = [(GEOAlmanac *)self nextSunset];
  [string appendFormat:@"\tnext:     %@ / %@ / %@\n", nextSunrise, nextTransit, nextSunset];

  [string appendFormat:@"\tprevious: %@\n", self->_previousRiseTransitSet];
  [string appendFormat:@"\tcurrent:  %@\n", self->_currentRiseTransitSet];
  [string appendFormat:@"\tnext:     %@\n", self->_nextRiseTransitSet];
  [string appendString:@"}"];

  return string;
}

@end